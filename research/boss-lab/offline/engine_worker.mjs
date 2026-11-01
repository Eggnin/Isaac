import { writeFileSync, appendFileSync } from 'node:fs';
import {createHash} from 'node:crypto';
import { join } from 'node:path';
import { fileURLToPath, pathToFileURL } from 'node:url';
import { readObservation, actionToKeyDeltas } from './training_observer.mjs';
import { createCorePolicy } from './core_policy.mjs';
import { stateHash } from './canonical_state.mjs';
import { toPlannerFrame } from './planner_frame.mjs';
import { isCooldownHit } from './damage_tracking.mjs';

const config = JSON.parse(process.env.ISAAC_TRAINING_CONFIG);
const episodeEnded=observation=>observation.dead===true||(config.endOnClear!==false&&observation.cleared===true);
const driver = join(config.research, config.frameRuntime?`${config.frameRuntimeDirectory??'frame-runtime'}/boot_integration.mjs`:'runtime/boot_integration.mjs');
const { KEYS, makeConsole } = await import(pathToFileURL(join(config.research, 'runtime/explore.mjs')).href);
let module, active = false, resume = null, pendingStep = null, previousAction = null;
let frame = null, steps = 0, terminal = false;
let rollout = null;
let travel = null;
let frameMode=false,frameRequest=null;
const frameSnapshots=new Map();let nextFrameSnapshot=1;
let searchSnapshotId=null;
let traceSnapshotId=null;

function saveFrameSnapshot(reuseId=null) {
  if(!frameMode)throw new Error('snapshot requires quiescent frame mode');
  const streams=module.FS.streams.filter(Boolean).map(stream=>({stream,fd:stream.fd,path:stream.path,
    position:stream.position,flags:stream.flags}));
  let memory=frameSnapshots.get(reuseId)?.memory;
  if(!memory||memory.length!==module.HEAPU8.length)memory=new Uint8Array(module.HEAPU8.length);
  memory.set(module.HEAPU8);
  const snapshot={memory,frame,steps,terminal,
    previousAction:structuredClone(previousAction),events:structuredClone(events),streams};
  const id=reuseId??nextFrameSnapshot++;frameSnapshots.set(id,snapshot);
  return {id,bytes:snapshot.memory.length,frame,streams:streams.map(({stream,...s})=>s)};
}

function candidateActionAt(candidate,tick) {
  if(!candidate.plan)return candidate;
  let boundary=0;
  for(const part of candidate.plan) {
    boundary+=part.frames;
    if(tick<boundary)return part.action;
  }
  return candidate.plan.at(-1).action;
}

function evaluateFrameCandidates(options) {
  if(!frameMode)throw new Error('candidate evaluation requires native frame mode');
  const started=performance.now(),before=readObservation(module);
  const horizon=options.horizon??12;
  const snapshot=saveFrameSnapshot(searchSnapshotId);searchSnapshotId=snapshot.id;
  const bossTypes=options.bossTypes??config.eventBossTypes??[412];
  const initialBoss=before.entities.find(e=>bossTypes.includes(e.type)&&isAlive(e)&&e.address===options.target)??
    before.entities.find(e=>bossTypes.includes(e.type)&&isAlive(e));
  const rows=[];
  try {
    for(const [index,action] of options.candidates.entries()) {
      restoreFrameSnapshot(snapshot.id);
      let observation=before,damage=0,hitCount=0,firstHit=null,lastHealth=before.player.health,lastCooldown=before.player.damageCooldown;
      const hashes=[];
      const previewHashes=[];
      let firstHash=null;
      for(let tick=1;tick<=horizon;tick++) {
        const result=advanceNativeFrame(candidateActionAt(action,tick-1));observation=result.observation;
        const health=observation.player?.health??lastHealth,cooldown=observation.player?.damageCooldown??lastCooldown;
        const loss=Math.max(0,lastHealth-health);damage+=loss;
        const hit=loss>0||isCooldownHit(lastCooldown,cooldown,config.damageCalibration);
        hitCount+=Number(hit);
        if(tick===1)firstHash=createHash('sha256').update(JSON.stringify(observation)).digest('hex');
        if(tick<=6)previewHashes.push(createHash('sha256').update(JSON.stringify(observation)).digest('hex'));
        if(hit&&firstHit===null)firstHit=tick;
        lastHealth=health;lastCooldown=cooldown;
        if(options.recordHashes)hashes.push(createHash('sha256').update(JSON.stringify(observation)).digest('hex'));
        if(result.terminated||result.truncated)break;
      }
      const p=observation.player?.position??before.player.position;
      const target=observation.entities.find(e=>e.address===options.target&&isAlive(e))??observation.entities.find(e=>bossTypes.includes(e.type)&&isAlive(e));
      let alignCost=0;
      if(target) {
        const dx=target.position.x-p.x,dy=target.position.y-p.y;
        const finalAction=candidateActionAt(action,horizon-1);
        const vertical=finalAction.fire==='up'||finalAction.fire==='down';
        const miss=Math.abs(vertical?dx:dy),forward=vertical?Math.abs(dy):Math.abs(dx);
        alignCost=miss*.10+Math.max(0,forward-210)*.025;
      }
      const nativeFrame=toPlannerFrame(module,observation,false);
      let separation=100;
      for(const entity of nativeFrame.entities) {
        if(!isAlive(entity)||entity.friendly||!entity.collision||entity.damage<=0)continue;
        if(entity.type===1||entity.type===5||entity.type===1000)continue;
        separation=Math.min(separation,Math.hypot(entity.pos.x-p.x,entity.pos.y-p.y)-entity.radius-nativeFrame.player.body.radius);
      }
      const room=observation.room??before.room;
      const wall=Math.min(p.x-70,p.y-150,50+(room.width-2)*40-p.x,130+(room.height-2)*40-p.y);
      const remainingBoss=initialBoss?observation.entities.find(e=>e.address===initialBoss.address):null;
      const bossDamage=initialBoss?Math.max(0,initialBoss.hp-(remainingBoss?.hp??0)):0;
      const score=(hitCount===0?1e9:0)+(firstHit??(horizon+1))*1e6+(!config.eventBossTypes?.length&&observation.cleared?1e8:0)+bossDamage*100+
        Math.min(60,separation)*.08+Math.min(60,wall)*.025-alignCost;
      rows.push({index,action,damage,hitCount,firstHit,cleared:observation.cleared,dead:observation.dead,
        bossDamage,separation,wall,alignCost,score,endFrame:observation.frame,firstHash,previewHashes,hashes});
    }
  }finally{restoreFrameSnapshot(snapshot.id);}
  rows.sort((a,b)=>b.score-a.score);
  return {frame:before.frame,horizon,selected:rows[0],candidates:rows,elapsedMs:performance.now()-started};
}

function rolloutNativePolicy(options) {
  if(!frameMode)throw new Error('native rollout requires quiescent frame mode');
  const parameters={dt:1/30,contact_margin:8,...(options.parameters??{})};
  if(options.continuePolicy!==true)policy.configure(parameters);
  const limit=options.steps??18000,horizon=options.horizon??12;
  const bossTypes=options.bossTypes??config.eventBossTypes??[412];
  const started=performance.now();
  let observation=readObservation(module),lastHealth=observation.player.health,lastCooldown=observation.player.damageCooldown;
  const report={frames:0,logicFrames:0,pausedPolls:0,damageTaken:0,hitCount:0,fireFrames:0,searchCount:0,searchMs:0,overrides:0,committedForecastFrames:0,turnSearchCount:0,
    proposalChecks:0,proposalRejections:0,
    damageEvents:[],searchSamples:[],motionSamples:[],parameters,bossTypes,damageCalibration:config.damageCalibration,frameMode:true,forecastHorizon:horizon,
    controlOptions:{prefire:options.prefire!==false,disableSearch:options.disableSearch===true,
      alwaysSearch:options.alwaysSearch===true,verifyProposal:options.verifyProposal===true,searchClearance:options.searchClearance??4,
      commitFrames:options.commitFrames??1,turnSearch:options.turnSearch===true,settleEntry:options.settleEntry===true}};
  const dirs=[[0,0],[0,-1],[1,-1],[1,0],[1,1],[0,1],[-1,1],[-1,0],[-1,-1]];
  const actionJournal=options.recordActions===true?join(config.run,`committed-actions-${steps}.jsonl`):null;
  let journalLines=[];
  if(actionJournal)report.actionJournal=actionJournal;
  let phaseKey=null,seenActiveBeast=false;
  const recordPhase=()=>{
    if(options.trackEventPhases!==true)return;
    const bosses=observation.entities.filter(e=>e.type===950||e.type===951).map(e=>({
      type:e.type,variant:e.variant,subtype:e.subtype,seed:e.seed,hp:e.hp,exists:e.exists,dead:e.dead,
      collision:e.collision,phaseI1:module.HEAP32[(e.address+0xb74)>>>2]}));
    const key=JSON.stringify(bosses.map(e=>[e.type,e.variant,e.subtype,e.seed,e.exists,e.dead,e.hp>0,e.collision,e.phaseI1]));
    if(key!==phaseKey) {
      phaseKey=key;const event={frame:observation.frame,step:report.frames,health:observation.player?.health??null,hasPlayer:!!observation.player,bosses};
      (report.phaseEvents??=[]).push(event);
      appendFileSync(join(config.run,'boss-phase-events.jsonl'),JSON.stringify(event)+'\n');
    }
    if(bosses.some(e=>e.type===951&&e.variant===0&&e.exists&&!e.dead&&e.hp>0&&e.collision>0))seenActiveBeast=true;
    if(options.endOnBeastRemoved===true&&seenActiveBeast&&!bosses.some(e=>e.type===951&&e.variant===0&&e.exists&&!e.dead&&e.hp>0))
      report.endReason='previously-active-beast-no-longer-alive-or-present';
  };
  recordPhase();
  let ended=false;
  try {
  while(report.frames<limit&&!ended) {
    const computed=policy.decide(module,observation,true,config.eventBossTypes??[]),decision=computed.decision;
    const settling=options.settleEntry===true&&report.frames===0;
    const action=settling||decision.stop?{moveX:0,moveY:0,fire:'none'}:{...computed.action};
    const normalTears=computed.frame.player.weapons.every(w=>w.type===1);
    if(!settling&&!decision.stop&&normalTears&&options.prefire!==false&&decision.aim_fire>0)
      action.fire=['none','up','right','down','left'][decision.aim_fire];
    let needsSearch=!settling&&!decision.stop&&options.disableSearch!==true&&(options.alwaysSearch===true||!decision.safe||decision.clearance<(options.searchClearance??4));
    let forecast=null,selected=action;
    // The analytic planner can miss native attacks. Validate its proposed input
    // even when its approximate geometry reports a safe path.
    if(!settling&&!decision.stop&&options.disableSearch!==true&&options.verifyProposal===true&&!needsSearch) {
      forecast=evaluateFrameCandidates({horizon,candidates:[action],target:decision.target,bossTypes});
      report.searchCount++;report.searchMs+=forecast.elapsedMs;
      needsSearch=forecast.selected.hitCount>0;
      report.proposalChecks++;report.proposalRejections+=Number(needsSearch);
    }
    if(needsSearch) {
      const candidates=dirs.map(([moveX,moveY])=>({moveX,moveY,fire:action.fire}));
      if(action.fire!==computed.action.fire)candidates.push(computed.action);
      forecast=evaluateFrameCandidates({horizon,candidates,target:decision.target,bossTypes});
      report.searchCount++;report.searchMs+=forecast.elapsedMs;
      // Constant-direction rollouts can reject a corridor that requires a turn.
      // Try two action segments while there is still time to change course.
      if(options.turnSearch===true&&forecast.selected.hitCount>0&&forecast.selected.firstHit>1) {
        const split=Math.min(6,Math.max(1,Math.floor(horizon/2)));
        const turns=dirs.flatMap(([x,y])=>dirs.filter(([u,v])=>u!==x||v!==y).map(([u,v])=>({plan:[
          {frames:split,action:{moveX:x,moveY:y,fire:action.fire}},
          {frames:horizon-split,action:{moveX:u,moveY:v,fire:action.fire}}]})));
        const refined=evaluateFrameCandidates({horizon,candidates:turns,target:decision.target,bossTypes});
        report.searchCount++;report.turnSearchCount++;report.searchMs+=refined.elapsedMs;
        if(refined.selected.score>forecast.selected.score)forecast=refined;
      }
      if(forecast.selected.hitCount>0)appendFileSync(join(config.run,'native-risk.jsonl'),JSON.stringify({
        frame:observation.frame,horizon,firstHit:forecast.selected.firstHit,player:observation.player.position,
        candidates:forecast.candidates.map(({action,firstHit,damage,hitCount})=>({action,firstHit,damage,hitCount}))})+'\n');
      selected=candidateActionAt(forecast.selected.action,0);
      if(selected.moveX!==computed.action.moveX||selected.moveY!==computed.action.moveY||selected.fire!==computed.action.fire)report.overrides++;
      if(report.searchSamples.length<32)report.searchSamples.push({frame:observation.frame,decision:decisionSummary(decision),...forecast});
    }
    const commit=forecast?.selected.hitCount===0?Math.min(options.commitFrames??1,6,horizon,limit-report.frames,
      forecast.selected.action.plan?.[0].frames??6):1;
    for(let commitIndex=0;commitIndex<commit;commitIndex++) {
    if(options.retainAnchor===true&&report.frames%(options.anchorInterval??300)===0) {
      const saved=saveFrameSnapshot(traceSnapshotId);traceSnapshotId=saved.id;
      report.anchor={snapshotId:saved.id,frame:saved.frame,step:report.frames,actions:[]};
    }
    const before=observation;
    const result=advanceNativeFrame(selected);observation=result.observation;
    const observationHash=(forecast||report.anchor||actionJournal)?createHash('sha256').update(JSON.stringify(observation)).digest('hex'):null;
    if(actionJournal) {
      journalLines.push(JSON.stringify({frame:observation.frame,action:selected,hash:observationHash,canonicalHash:stateHash(observation)}));
      if(journalLines.length>=300){appendFileSync(actionJournal,journalLines.join('\n')+'\n');journalLines=[];}
    }
    if(result.logicAdvanced===false)report.pausedPolls++;else report.logicFrames++;
    if(report.anchor)report.anchor.actions.push({action:structuredClone(selected),frame:observation.frame,
      hash:observationHash});
    if(options.recordMotion===true&&commitIndex===0&&report.motionSamples.length<256) {
      const boss=computed.frame.entities.find(e=>e.type===412&&e.morph_type===63&&e.native_motion_scale>1);
      const after=boss&&observation.entities.find(e=>e.address===boss.address);
      if(after)report.motionSamples.push({frame:observation.frame,before:boss,after,
        afterForm:module.HEAP32[(boss.address+0xbc8)>>>2]});
    }
    if(forecast&&observationHash!==forecast.selected.previewHashes[commitIndex])
      throw new Error('native selected-action forecast did not match live execution');
    if(forecast)report.committedForecastFrames++;
    const health=observation.player?.health??lastHealth,cooldown=observation.player?.damageCooldown??lastCooldown;
    const loss=Math.max(0,lastHealth-health);
    const hit=loss>0||isCooldownHit(lastCooldown,cooldown,config.damageCalibration);
    report.frames++;report.damageTaken+=loss;report.hitCount+=Number(hit);
    if(selected.fire!=='none')report.fireFrames++;
    if(hit)report.damageEvents.push({frame:observation.frame,loss,decision:decisionSummary(decision),
      selected,forecast,commitIndex,plannerFrame:computed.frame,before,after:observation});
    lastHealth=health;lastCooldown=cooldown;
    recordPhase();
    if(report.frames%300===0)appendFileSync(join(config.run,'native-progress.jsonl'),JSON.stringify({
      frame:observation.frame,steps:report.frames,health:lastHealth,hits:report.hitCount,state:observation.state,playerPresent:!!observation.player,
      boss:observation.entities.filter(e=>bossTypes.includes(e.type)).map(e=>({type:e.type,variant:e.variant,hp:e.hp,position:e.position})),
      searches:report.searchCount,elapsedMs:performance.now()-started})+'\n');
    if(result.terminated||result.truncated||report.endReason||(hit&&options.stopOnHit!==false)){ended=true;break;}
    }
  }
  }catch(error) {
    report.error=error.stack??String(error);report.pass=false;report.finalFrame=observation.frame;report.health=observation.player?.health??null;
    writeFileSync(join(config.run,'native-rollout-partial.json'),JSON.stringify(report,null,2));throw error;
  }finally{if(journalLines.length)appendFileSync(actionJournal,journalLines.join('\n')+'\n');}
  report.elapsedMs=performance.now()-started;report.health=observation.player?.health??null;report.lastObservedHealth=lastHealth;
  report.cleared=observation.cleared;report.dead=observation.dead;report.finalFrame=observation.frame;
  report.remainingBosses=observation.entities.filter(e=>bossTypes.includes(e.type)&&e.exists!==false&&!e.dead&&e.hp>0).map(e=>({type:e.type,variant:e.variant,hp:e.hp}));
  report.acceptancePending=!!config.eventBossTypes?.length||options.diagnostic===true;
  report.pass=!report.acceptancePending&&report.cleared===true&&!report.dead&&report.hitCount===0&&report.remainingBosses.length===0;
  writeFileSync(join(config.run,'native-rollout.json'),JSON.stringify(report,null,2));
  return report;
}
function restoreFrameSnapshot(id) {
  if(!frameMode)throw new Error('restore requires quiescent frame mode');
  const snapshot=frameSnapshots.get(id);if(!snapshot)throw new Error('unknown frame snapshot');
  for(const saved of snapshot.streams) {
    if(module.FS.getStream(saved.fd)!==saved.stream)
      throw new Error(`snapshot stream lifetime changed: ${saved.fd} ${saved.path}`);
  }
  const savedFDs=new Set(snapshot.streams.map(s=>s.fd));
  for(const stream of module.FS.streams.filter(Boolean))if(!savedFDs.has(stream.fd))module.FS.close(stream);
  for(const saved of snapshot.streams)saved.stream.position=saved.position;
  if(module.HEAPU8.length<snapshot.memory.length)throw new Error('snapshot memory is larger than current heap');
  module.HEAPU8.set(snapshot.memory);
  if(module.HEAPU8.length>snapshot.memory.length)module.HEAPU8.fill(0,snapshot.memory.length);
  frame=snapshot.frame;steps=snapshot.steps;terminal=snapshot.terminal;
  previousAction=structuredClone(snapshot.previousAction);events.splice(0,events.length,...structuredClone(snapshot.events));
  return readObservation(module);
}

function advanceNativeFrame(action) {
  if(!frameMode)throw new Error('native frame mode is not enabled');
  if(terminal||steps>=config.maxSteps)throw new Error('episode ended');
  queueAction(action);
  let observation;
  for(let present=0;present<200;present++) {
    if(module._boss_frame_step()!==1)throw new Error('native main loop did not yield');
    observation=readObservation(module);
    if(observation.frame===frame+1)break;
    if(observation.frame!==frame)throw new Error(`native frame jumped ${frame} -> ${observation.frame}`);
  }
  if(observation.frame!==frame+1) {
    if(config.endOnClear===false&&observation.frame===frame&&(observation.game?.paused||observation.game?.transition||observation.state==='cutscene')) {
      steps++;terminal=episodeEnded(observation);
      return {observation,terminated:terminal,truncated:steps>=config.maxSteps,steps,logicAdvanced:false};
    }
    throw new Error(`native frame did not advance: frame=${frame}, observed=${observation.frame}, state=${observation.state}, paused=${observation.game?.paused}`);
  }
  frame=observation.frame;steps++;
  terminal=episodeEnded(observation);
  return {observation,terminated:terminal,truncated:steps>=config.maxSteps,steps,logicAdvanced:true};
}
let setupConsole = null, setupConsoleTick = 0, setupTargetSeen = false, setupObservation = null, setupStartedFrame = -1;
let setupIsolationPasses = 0;
let lastSetupTraceFrame = -1000;
let probe = null;
const policy = await createCorePolicy();
const events = [];
const send = message => { if (process.connected) process.send(message); };

const isAlive = e => e.exists!==false && e.dead!==true && e.active!==false;
const isEnemy = e => e.type>=10 && e.type<1000;
const targetSpec = () => typeof config.targetNPC==='object'?config.targetNPC:{type:config.targetNPC};
const targetSpecs = () => Array.isArray(config.targetNPCs)?config.targetNPCs:[targetSpec()];
const hasSpawnRequest = () => config.spawnNPCs?.length>0||config.spawnNPC!==undefined;
function isTarget(entity,target=targetSpec()) {
  return isAlive(entity)&&entity.type===target.type&&
    (target.variant===undefined||entity.variant===target.variant)&&
    (target.subtype===undefined||entity.subtype===target.subtype||
      config.allowVariantFallback===true);
}

function allTargetsSeen(observation) {
  return targetSpecs().every(target => observation.entities.some(entity => isTarget(entity,target)));
}

function consoleMemory() {
  return {
    ok: address => Number.isInteger(address)&&address>=0&&address+4<=module.HEAPU8.byteLength,
    u32: address => new DataView(module.HEAPU8.buffer).getUint32(address,true),
    u8: address => module.HEAPU8[address],
    f32: address => new DataView(module.HEAPU8.buffer).getFloat32(address,true),
  };
}

function explosiveNpc(e) {
  return ((e.type===25||e.type===250||e.type===292||e.type===295)&&e.variant===0) ||
    (e.type===55&&(e.variant===1||e.variant===2)) ||
    (e.type===16&&e.variant===2) || e.champion===5;
}

function entityHazards(e) {
  if (!isAlive(e) || e.friendly) return [];
  const kinds = [];
  const projectileFlags = (BigInt(e.projectile_flags_hi ?? 0)<<32n) | BigInt(e.projectile_flags_lo ?? 0);
  if (e.type===9 && !(projectileFlags & (1n<<31n))) kinds.push('projectile');
  if (e.type===2 && (e.hostile_source || (e.spawner_type>=10 && e.spawner_type<1000))) kinds.push('hostile-tear');
  if (e.type===7) kinds.push('laser');
  if (e.type===4) kinds.push('bomb');
  if (isEnemy(e) && e.collision!==0 && e.damage>0) kinds.push('contact');
  if (isEnemy(e) && explosiveNpc(e)) kinds.push('explosive-npc');
  if (e.type===1000 && ((e.variant>=22 && e.variant<=26) || e.variant===56)) kinds.push('creep');
  if (e.type===1000 && (e.variant===4 || e.variant===62)) kinds.push('cage-rock-wave');
  if (e.type===1000 && (e.variant===31 || e.variant===19)) kinds.push('falling-impact');
  if (e.type===20 && e.variant===0 && e.collision===0 &&
      (e.animation==='walk' || e.animation==='jumpdown')) kinds.push('monstro-landing');
  return kinds;
}

function hazardSnapshot(plannerFrame) {
  const player = plannerFrame.player.body;
  const hazards = [];
  for (const e of plannerFrame.entities) {
    const kinds = entityHazards(e);
    if (!kinds.length) continue;
    const d = Math.hypot(e.pos.x-player.pos.x, e.pos.y-player.pos.y);
    if (d>320) continue;
    const item = {
      kinds, address:e.address, type:e.type, variant:e.variant, subtype:e.subtype,
      position:e.pos, velocity:e.vel, target_pos:e.target_pos, radius:e.radius, damage:e.damage,
      collision:e.collision, state:e.state, state_frame:e.state_frame,
      animation:e.animation, animation_frame:e.animation_frame, angle:e.angle,
      spawner:e.spawner, parent:e.parent, distance:d,
    };
    if (e.type===9) {
      const flags=(BigInt(e.projectile_flags_hi ?? 0)<<32n) | BigInt(e.projectile_flags_lo ?? 0);
      item.projectile_flags=flags.toString(16).padStart(16,'0');
    }
    if (e.type===7) Object.assign(item, {
      endpoint:e.endpoint, laser_radius:e.laser_radius, laser_follow:e.laser_follow,
      circle:e.circle, geometry_valid:e.geometry_valid, timeout:e.timeout,
    });
    if (e.blast_radius) item.blast_radius=e.blast_radius;
    hazards.push(item);
  }
  hazards.sort((a,b)=>a.distance-b.distance);
  return hazards.slice(0,16);
}

function trackFrame(plannerFrame) {
  if (!rollout || !plannerFrame) return;
  for (const e of plannerFrame.entities) {
    if (!isAlive(e)) continue;
    if (isEnemy(e)) {
      const identity = `${e.type}.${e.variant}.${e.subtype}`;
      const prior = rollout.enemyTypes.get(identity);
      if (prior) {
        prior.lastFrame = plannerFrame.clock;
        if (Number.isFinite(e.hp)) prior.minHp = Math.min(prior.minHp, e.hp);
      } else {
        rollout.enemyTypes.set(identity, {
          type:e.type, variant:e.variant, subtype:e.subtype,
          firstFrame:plannerFrame.clock, lastFrame:plannerFrame.clock,
          minHp:Number.isFinite(e.hp)?e.hp:null,
        });
      }
    }
    if (rollout.recordEntityTypes.has(e.type)) {
      const signature=`${e.type}|${e.variant}|${e.state}|${e.animation}`;
      const priorTransition=rollout.lastEntityTransition.get(e.address);
      if(priorTransition!==signature) {
        rollout.lastEntityTransition.set(e.address,signature);
        const transition = {
          frame:plannerFrame.clock,address:e.address,type:e.type,variant:e.variant,subtype:e.subtype,
          position:e.pos,velocity:e.vel,target_pos:e.target_pos,radius:e.radius,collision:e.collision,damage:e.damage,
          state:e.state,state_frame:e.state_frame,animation:e.animation,animation_frame:e.animation_frame,
          parent:e.parent,spawner:e.spawner,
        };
        if (e.type===7) Object.assign(transition, {
          endpoint:e.endpoint, laser_radius:e.laser_radius, laser_follow:e.laser_follow,
          circle:e.circle, geometry_valid:e.geometry_valid, timeout:e.timeout, angle:e.angle,
        });
        rollout.entityTransitions.push(transition);
      }
    }
    const kinds = entityHazards(e);
    for (const kind of kinds) {
      const seen = rollout.dangerFrameKinds.get(plannerFrame.clock);
      if (seen?.has(kind)) continue;
      const bucket = seen ?? new Set();
      bucket.add(kind);
      rollout.dangerFrameKinds.set(plannerFrame.clock, bucket);
      rollout.dangerFrameCounts.set(kind, (rollout.dangerFrameCounts.get(kind) ?? 0) + 1);
    }
  }
  rollout.lastFrameHazards=hazardSnapshot(plannerFrame);
}

function decisionSummary(decision) {
  if (!decision) return null;
  return {
    move:decision.move, fire:decision.fire, target:decision.target,
    valid:decision.valid, safe:decision.safe, stop:decision.stop,
    navigation_boost:decision.navigation_boost,
    clearance:decision.clearance, end_clearance:decision.end_clearance,
    collision_cost:decision.collision_cost,
    planning_ms:decision.planning_ms, threats:decision.threats,
    threat_kinds:decision.threat_kinds, reason:decision.reason, analysis:decision.analysis,
  };
}

function damageDetails(observation, amount, priorHealth, extra = {}) {
  const beforeHazards=rollout?.lastFrameHazards ?? [];
  const plannerFrame = toPlannerFrame(module, observation, false);
  const player = plannerFrame.player.body;
  const hazards=hazardSnapshot(plannerFrame);
  trackFrame(plannerFrame);
  return {
    frame:observation.frame,
    amount,
    priorHealth,
    health:observation.player?.health,
    player:{position:player.pos, velocity:player.vel, radius:player.radius},
    lastDecision:decisionSummary(rollout?.lastDecision),
    beforeHazards,
    hazards,
    hazardCount:hazards.length,
    beforeFrame:rollout?.lastFullFrame,
    afterFrame:plannerFrame,
    decisionHistory:rollout?.recordDecisionHistory ? rollout.decisionHistory.slice(-20) : [],
    ...extra,
  };
}

function localGrid(frame) {
  const p=frame.player.body.pos, w=frame.grid.width, h=frame.grid.height;
  const cx=Math.round((p.x-40)/40), cy=Math.round((p.y-120)/40), cells=[];
  for(let y=Math.max(0,cy-2);y<=Math.min(h-1,cy+2);y++)for(let x=Math.max(0,cx-2);x<=Math.min(w-1,cx+2);x++) {
    const c=frame.grid.cells[y*w+x];
    if(c.collision||c.danger)cells.push({x,y,type:c.type,variant:c.variant,state:c.state,collision:c.collision,danger:c.danger});
  }
  return cells;
}

function sameIdentity(entity,target) {
  return entity.type===target.type&&entity.variant===target.variant&&entity.subtype===target.subtype;
}

function spawnIdentityCommand(entry) {
  if(entry.spawnCommand)return entry.spawnCommand;
  const suffix=entry.champion===undefined?'':`.${entry.champion}`;
  return `spawn ${entry.type}.${entry.variant}.${entry.subtype}${suffix}`;
}

function identityCounts(observation) {
  const counts=new Map();
  for(const entity of observation.entities) {
    const key=`${entity.type}.${entity.variant}.${entity.subtype}`;
    counts.set(key,(counts.get(key)??0)+1);
  }
  return counts;
}

function probeTargetCount(observation) {
  const target=probe?.entry;
  if(!target)return 0;
  return observation.entities.filter(entity=>sameIdentity(entity,target)).length;
}

function probeVariantCount(observation) {
  const target=probe?.entry;
  if(!target)return 0;
  return observation.entities.filter(entity=>
    entity.type===target.type&&entity.variant===target.variant).length;
}

function captureProbeTarget(observation, source, allowVariantFallback=false) {
  if(!probe)return;
  const exactMatch=entity=>sameIdentity(entity,probe.entry);
  const match=allowVariantFallback
    ? entity=>entity.type===probe.entry.type&&entity.variant===probe.entry.variant
    : exactMatch;
  const target=observation.entities.find(entity=>match(entity)&&isAlive(entity)) ??
    observation.entities.find(match);
  if(!target)return;
  probe.targetSeen=true;
  probe.entry.observedIdentity=`${target.type}.${target.variant}.${target.subtype}`;
  if(exactMatch(target))probe.entry.identityObserved=true;
  else probe.entry.normalizedIdentityObserved=true;
  probe.entry.firstFrame??=observation.frame;
  probe.entry.lastFrame=observation.frame;
  probe.entry.firstTarget??=target;
  probe.entry.lastTarget=target;
  probe.entry.observedFrames=Math.max(probe.entry.observedFrames??0,1);
  if(Number.isFinite(target.hp)) {
    probe.entry.minHp=Math.min(probe.entry.minHp??target.hp,target.hp);
    probe.entry.maxHp=Math.max(probe.entry.maxHp??target.hp,target.hp);
  }
  try {
    const plannerFrame=toPlannerFrame(module,observation,false);
    const plannerTarget=plannerFrame.entities.find(entity=>entity.address===target.address);
    if(plannerTarget) {
      probe.entry.animations??=[];
      if(plannerTarget.animation&&!probe.entry.animations.includes(plannerTarget.animation))
        probe.entry.animations.push(plannerTarget.animation);
      probe.entry.hazardKinds??=[];
      for(const kind of entityHazards(plannerTarget))
        if(!probe.entry.hazardKinds.includes(kind))probe.entry.hazardKinds.push(kind);
      probe.entry.lastState=plannerTarget.state??null;
      probe.entry.lastAnimation=plannerTarget.animation||null;
    }
  } catch(error) {
    probe.entry.evidenceError??=error.message;
  }
  if(source)probe.entry.firstEvidenceSource??=source;
}

function captureProbeNewIdentities(observation) {
  if(!probe)return;
  probe.entry.newIdentities??=[];
  for(const entity of observation.entities) {
    const key=`${entity.type}.${entity.variant}.${entity.subtype}`;
    if((probe.baseline.get(key)??0)>0||probe.entry.newIdentities.some(row=>row.key===key))continue;
    const observedIdentity={
      key,type:entity.type,variant:entity.variant,subtype:entity.subtype,
      parent:entity.parent,active:entity.active,exists:entity.exists,dead:entity.dead,
      hp:entity.hp,damage:entity.damage,collision:entity.collision,
    };
    probe.entry.newIdentities.push(observedIdentity);
    appendFileSync(join(config.run,'probe-identities.jsonl'),JSON.stringify({
      frame:observation.frame,parentEntry:probe.entry.key,observed:observedIdentity,
    })+'\n');
  }
}

function probeStartConsole(command,phase) {
  events.length=0;
  probe.console=makeConsole(consoleMemory(), {
    commands:Array.isArray(command)?command:[command],
    mode:'type',
    ready:()=>true,
    log:line=>console.log(line),
  });
  probe.consoleTick=0;
  probe.phase=phase;
  probe.startedFrame=frame;
}

function startSetupConsole(commands,phase) {
  setupConsole=makeConsole(consoleMemory(), {
    commands,
    mode:'type',
    ready:()=>true,
    log:line=>console.log(line),
  });
  setupConsoleTick=0;
  setupTargetSeen=false;
  setupObservation=null;
  setupStartedFrame=frame;
  setupConsole.phase=phase;
}

function probeStartReset() {
  queueAction({moveX:0,moveY:0,fire:'none'});
  probe.phase='release-reset';
}

function probeCompleteEntry(status,error=null) {
  const entry=probe.entry;
  entry.status=status;
  entry.error=error;
  entry.completedAtFrame=frame;
  entry.targetCountGain=(entry.targetCountGain??probe.maxTargetCount)-
    (probe.baseline.get(`${entry.type}.${entry.variant}.${entry.subtype}`)??0);
  probe.results.push(entry);
  appendFileSync(join(config.run,'probe-results.jsonl'),JSON.stringify(entry)+'\n');
  send({event:'probeResult',result:entry});
  probe.index++;
  if(probe.index>=probe.entries.length) {
    const result={results:probe.results,observed:probe.results.filter(row=>row.identityObserved).length};
    send({id:probe.id,result});
    probe=null;
    return;
  }
  const next=probe.entries[probe.index];
  probe.entry={...next,index:probe.index};
  const current=readObservation(module);
  probe.baseline=identityCounts(current);
  probe.baselineVariant=current.entities.filter(entity=>
    entity.type===probe.entry.type&&entity.variant===probe.entry.variant).length;
  probe.targetSeen=false;
  probe.maxTargetCount=0;
  probe.observedFrames=0;
  probe.entry.observedFrames=0;
  probe.phase='release';
  queueAction({moveX:0,moveY:0,fire:'none'});
}

function startProbe(message) {
  module.isaacTrainingNoRender=false;
  policy.configure({dt:1/30,contact_margin:8,...(message.action?.parameters??{})});
  probe={
    id:message.id,
    entries:message.action?.entries??[],
    observeFrames:Math.max(1,message.action?.observeFrames??30),
    attack:message.action?.attack ?? true,
    setupCommands:message.action?.setupCommands??[],
    parameters:{dt:1/30,contact_margin:8,...(message.action?.parameters??{})},
    index:0,
    results:[],
    phase:'release',
    console:null,
    entry:null,
    baseline:null,
    targetSeen:false,
    maxTargetCount:0,
    observedFrames:0,
    startedFrame:frame,
    lastFrame:-1,
  };
  if(!probe.entries.length) {
    send({id:probe.id,result:{results:[],observed:0}});
    probe=null;
    return;
  }
  probe.entry={...probe.entries[0],index:0,observedFrames:0};
  const current=readObservation(module);
  probe.baseline=identityCounts(current);
  probe.baselineVariant=current.entities.filter(entity=>
    entity.type===probe.entry.type&&entity.variant===probe.entry.variant).length;
  probe.entry.startedAtFrame=frame;
  queueAction({moveX:0,moveY:0,fire:'none'});
}

function probePolicyAction(observation) {
  if(!probe)return;
  try {
    const result=policy.decide(module,observation,probe.attack);
    probe.entry.lastDecision=decisionSummary(result.decision);
    probe.entry.policyThreatKinds??=[];
    for(const kind of result.decision.threat_kinds??[])
      if(!probe.entry.policyThreatKinds.includes(kind))probe.entry.policyThreatKinds.push(kind);
    queueAction(result.action);
  } catch(error) {
    probe.entry.policyError=error.message;
  }
}

function handleProbe(observation,roomReady,consoleState) {
  if(!probe)return false;
  if(probe.lastFrame===observation.frame)return true;
  probe.lastFrame=observation.frame;
  frame=observation.frame;
  const count=probeTargetCount(observation);
  const variantCount=probeVariantCount(observation);
  probe.maxTargetCount=Math.max(probe.maxTargetCount??0,count);
  const delta=count-(probe.baseline.get(`${probe.entry.type}.${probe.entry.variant}.${probe.entry.subtype}`)??0);
  if(delta>0)probe.entry.targetCountGain=Math.max(probe.entry.targetCountGain??0,delta);
  if(probe.phase==='release') {
    if(events.length)return true;
    probeStartConsole([
      ...probe.setupCommands,
      spawnIdentityCommand(probe.entry),
    ],'spawning');
    return true;
  }
  if(probe.phase==='spawning') {
    if(delta>0) {
      captureProbeTarget(observation,'spawn',false);
    } else if(!probe.entry.exactOnly&&variantCount>probe.baselineVariant) {
      captureProbeTarget(observation,'spawn',true);
    }
    if(probe.targetSeen&&consoleState===0) {
      probe.console=null;
      probe.phase='observing';
      probe.observedFrames=0;
      probe.entry.observeStartedFrame=observation.frame;
      probe.lastDamageCooldown=observation.player?.damageCooldown;
      probePolicyAction(observation);
    } else if((!probe.targetSeen&&probe.console?.done()&&observation.frame-probe.startedFrame>180)||
              observation.frame-probe.startedFrame>2400) {
      probe.entry.error='spawned identity was not observed';
      probe.console=null;
      probeStartReset();
    }
    return true;
  }
  if(probe.phase==='observing') {
    const hp=observation.player?.health;
    const cooldown=observation.player?.damageCooldown;
    if(isCooldownHit(probe.lastDamageCooldown,cooldown,config.damageCalibration)) {
      probe.entry.hitCount=(probe.entry.hitCount??0)+1;
      probe.entry.hitFrames??=[];
      probe.entry.hitFrames.push(observation.frame);
    }
    probe.lastDamageCooldown=cooldown;
    if(Number.isFinite(hp)) {
      probe.entry.damageTaken=(probe.entry.damageTaken??0)+
        Math.max(0,(probe.entry.lastHealth??hp)-hp);
      probe.entry.lastHealth=hp;
    }
    const live=observation.entities.filter(entity=>sameIdentity(entity,probe.entry)&&isAlive(entity));
    if(live.length)captureProbeTarget(observation,'observation');
    captureProbeNewIdentities(observation);
    probe.observedFrames++;
    probe.entry.observedFrames=probe.observedFrames;
    if(probe.observedFrames>=probe.observeFrames||!live.length) {
      probe.entry.targetAliveAtEnd=live.length>0;
      probe.console=null;
      probeStartReset();
    } else {
      probePolicyAction(observation);
    }
    return true;
  }
  if(probe.phase==='release-reset') {
    if(events.length)return true;
    probeStartConsole(`goto ${config.room}`,'resetting');
    return true;
  }
  if(probe.phase==='resetting') {
    if(probe.console?.done()&&roomReady) {
      probe.console=null;
      const status=probe.entry.identityObserved?'observed':
        probe.entry.normalizedIdentityObserved?'observed-normalized':'spawn-failed';
      probeCompleteEntry(status);
    } else if(observation.frame-probe.startedFrame>2400) {
      probeCompleteEntry('reset-timeout','room did not become ready after goto');
    }
    return true;
  }
  return true;
}

function queueAction(action) {
  const delta = actionToKeyDeltas(action, previousAction);
  if (previousAction === null) {
    const seen = new Set();
    for (const [vk, scan, extended] of Object.values(KEYS)) {
      if (seen.has(vk)) continue;
      seen.add(vk); events.push([1, vk, scan | (extended << 8), 0]);
    }
  }
  events.push(...delta);
  previousAction = action;
}

function policyAction(observation) {
  if(rollout.actions) {queueAction(rollout.actions[rollout.frames]);return;}
  let result;
  try { result = policy.decide(module, observation, rollout.attack); }
  catch(error) {
    writeFileSync(join(config.run,'policy-failure-observation.json'),JSON.stringify(observation));
    send({event:'fatal',error:`policy failed at logic frame ${observation.frame}: ${error.stack??error.message}`});
    throw error;
  }
  rollout.lastDecision = result.decision;
  rollout.lastFullFrame = result.frame;
  if(result.decision.fire>0)rollout.fireFrames++;
  const aimed=result.frame.entities.find(e=>e.address===result.decision.target);
  if(aimed){const key=`${aimed.type}.${aimed.variant}`;rollout.targetFrames.set(key,(rollout.targetFrames.get(key)??0)+1);}
  if (rollout.recordDecisionHistory) {
    rollout.decisionHistory.push({
      frame:result.frame.clock,
      player:result.frame.player.body.pos,
      velocity:result.frame.player.body.vel,
      decision:decisionSummary(result.decision),
      hazards:rollout.lastFrameHazards,
    });
    if (rollout.decisionHistory.length>120) rollout.decisionHistory.shift();
  }
  if (!!result.decision.navigation_boost !== rollout.lastNavigationBoost) {
    const target = result.frame.entities.find(entity => entity.address === result.decision.target);
    rollout.lastNavigationBoost = !!result.decision.navigation_boost;
    rollout.decisionTransitions.push({
      frame:result.frame.clock,
      navigation_boost:rollout.lastNavigationBoost,
      target:result.decision.target,
      targetHp:target?.hp ?? null,
      targetType:target?.type ?? null,
      reason:result.decision.reason,
    });
  }
  trackFrame(result.frame);
  for (const kind of result.decision.threat_kinds ?? []) {
    rollout.decisionThreatCounts.set(kind,(rollout.decisionThreatCounts.get(kind)??0)+1);
  }
  if ((result.decision.stop || !result.decision.valid) &&
      (rollout.stopEvents.length===0 || result.frame.clock-rollout.lastStopFrame>=300)) {
    rollout.lastStopFrame=result.frame.clock;
    rollout.stopEvents.push({
      frame:result.frame.clock,
      player:result.frame.player.body.pos,
      velocity:result.frame.player.body.vel,
      decision:decisionSummary(result.decision),
      localGrid:localGrid(result.frame),
    });
  }
  if (!result.decision.safe) {
    rollout.unsafeFrames++;
    if (rollout.unsafeEvents.length<64 &&
        result.frame.clock-rollout.lastUnsafeFrame>=15) {
      rollout.lastUnsafeFrame=result.frame.clock;
      rollout.unsafeEvents.push({
        frame:result.frame.clock,
        player:result.frame.player.body.pos,
        velocity:result.frame.player.body.vel,
        decision:decisionSummary(result.decision),
        path:result.decision.path.slice(0,20),
        hazards:rollout.lastFrameHazards,
        localGrid:localGrid(result.frame),
      });
    }
  }
  queueAction(result.action);
}

export function attachEngine(value) {
  module = value;
  const setupPoll = module.isaacInputPoll ?? (() => 0);
  module.isaacInputPoll = (presented, out) => {
    if (probe?.console) return probe.console.poll(presented, out, module.HEAP32);
    if (setupConsole) return setupConsole.poll(presented, out, module.HEAP32);
    if (!active) return setupPoll(presented, out);
    const event = events.shift();
    if (!event) return 0;
    module.HEAP32.set(event, out >> 2);
    return 1;
  };
  module.isaacTrainingBoundary = () => {
    const observation = readObservation(module);
    const game = observation.game?.pointer;
    const heap = module.HEAPU8;
    const consoleState = game ? new DataView(heap.buffer).getUint32(game + 0x68d78, true) : null;
    if(travel) {
      frame=observation.frame;
      if(setupConsole && (!setupConsole.done() || consoleState!==0))return;
      setupConsole=null;
      const wanted=travel.target;
      if(!observation.ready||consoleState!==0||!observation.player?.controls||
         !observation.entities.some(e=>e.type===wanted&&isAlive(e)))return;
      steps=0;terminal=false;previousAction=null;
      send({id:travel.id,result:observation});travel=null;
      return new Promise(resolve=>{resume=resolve;});
    }
    const targetSeen = allTargetsSeen(observation);
    const roomReady = observation.ready && observation.player?.controls &&
      (config.endOnClear===false || !observation.cleared || hasSpawnRequest()) &&
      consoleState === 0 && observation.game.roomIndex < 0;
    if (!active && config.setupTrace && observation.frame - lastSetupTraceFrame >= 60) {
      lastSetupTraceFrame = observation.frame;
      const targetType = targetSpec().type;
      const targetState = observation.entities
        .filter(entity => entity.type === targetType)
        .map(entity => `${entity.type}.${entity.variant}.${entity.subtype}:active=${entity.active},exists=${entity.exists},dead=${entity.dead}`)
        .join(',');
      console.log(`[training] setup frame=${observation.frame} state=${observation.state} roomIndex=${observation.game.roomIndex} controls=${observation.player?.controls} cleared=${observation.cleared} console=${consoleState} targetSeen=${targetSeen} target=${targetState} identities=${observation.entities.filter(isEnemy).map(entity => `${entity.type}.${entity.variant}.${entity.subtype}`).join(',')}`);
    }
    if (!setupConsole && !hasSpawnRequest() && targetSeen) {
      setupTargetSeen = true;
      setupObservation ??= observation;
    }
    if (setupConsole) frame = observation.frame;
    if (handleProbe(observation,roomReady,consoleState)) return;
    if (setupConsole) {
      if (consoleState !== 0) return;
      if (!setupConsole.done()) return;
      if (targetSeen) {
        setupTargetSeen = true;
        setupObservation ??= observation;
      }
      const allowedTypes=new Set(config.isolationTypes??[]);
      const unexpected=observation.entities.filter(entity=>
        isAlive(entity)&&isEnemy(entity)&&!allowedTypes.has(entity.type)
      );
      const isolationCommand=config.isolationCleanupCommand;
      if(setupTargetSeen&&unexpected.length&&isolationCommand&&
         setupIsolationPasses<(config.isolationCleanupPasses??3)) {
        setupIsolationPasses++;
        frame=observation.frame;
        startSetupConsole([isolationCommand],'isolation');
        return;
      }
      if (setupTargetSeen && consoleState === 0) {
        const setup = {
          ...setupConsole.report(),
          target: setupObservation?.entities.find(entity =>
            targetSpecs().some(target => isTarget(entity,target))
          ) ?? null,
        };
        setupConsole = null;
        active = true;
        module.isaacTrainingNoRender = config.noRender === true;
        frame = observation.frame;
        send({ event: 'ready', observation, setup });
      } else if ((setupConsole.done() &&
                  observation.frame - setupStartedFrame > (config.postSpawnWaitFrames ?? 180)) ||
                 observation.frame - setupStartedFrame > (config.setupMaxFrames ?? 2400)) {
        const setup = setupConsole.report();
        const error = `spawn ${JSON.stringify(config.spawnNPCs ?? config.spawnNPC)} did not appear after ${observation.frame-setupStartedFrame} frames; setup=${JSON.stringify(setup)}`;
        send({ event: 'fatal', error });
        throw new Error(error);
      }
      return;
    }
    if (!active) {
      if (!roomReady) return;
      if (config.catalogMode) {
        active = true;
        module.isaacTrainingNoRender = config.noRender === true;
        frame = observation.frame;
        send({ event: 'ready', observation, setup: null });
        return new Promise(resolve => { resume = resolve; });
      }
      if (hasSpawnRequest() && setupStartedFrame < 0) {
        frame = observation.frame;
        const requestedSpawns = config.spawnNPCs?.length>0?config.spawnNPCs:[config.spawnNPC];
        const spawns = requestedSpawns.map(spawn =>
          typeof spawn === 'string' ? spawn : spawnIdentityCommand(spawn)
        );
        setupIsolationPasses = 0;
        startSetupConsole([
          ...(config.preSpawnCommands ?? []),
          ...spawns,
        ], 'spawn');
        return;
      }
      if (!setupTargetSeen) return;
      active = true;
      module.isaacTrainingNoRender = config.noRender === true;
      frame = observation.frame;
      send({ event: 'ready', observation, setup: null });
    } else {
      if (observation.frame === frame) return;
      if (observation.frame !== frame + 1) {
        send({ event: 'fatal', error: `logic frame jumped ${frame} -> ${observation.frame}` });
        throw new Error('logic frame boundary skipped');
      }
      frame = observation.frame;
      steps++;
      terminal = episodeEnded(observation);
      if (pendingStep) {
        send({ id: pendingStep.id, result: { observation, terminated: terminal, truncated: steps >= config.maxSteps, steps } });
        pendingStep = null;
      }
      if (rollout) {
        const hp = observation.player?.health;
        const cooldown = observation.player?.damageCooldown;
        const cooldownHit = isCooldownHit(rollout.lastDamageCooldown,cooldown,config.damageCalibration);
        rollout.frames++;
        if(rollout.frames%900===0) {
          appendFileSync(join(config.run,'progress.jsonl'),JSON.stringify({frame:observation.frame,
            steps:rollout.frames,health:hp,damageTaken:rollout.damageTaken,
            bosses:observation.entities.filter(e=>e.type===412).map(e=>({hp:e.hp,position:e.position})),
            elapsedMs:performance.now()-rollout.started})+'\n');
        }
        if(rollout.hashes)rollout.hashes.push(stateHash(observation));
        const damage = Number.isFinite(hp) ? Math.max(0, rollout.lastHealth - hp) : 0;
        const hit = damage>0 || cooldownHit;
        let hitDetails = null;
        if (hit || (damage>0 && rollout.damageEvents.length<64)) {
          rollout.hitCount++;
          if (rollout.hitEvents.length<64 || (damage>0 && rollout.damageEvents.length<64)) {
            try {
              hitDetails = damageDetails(observation, damage, rollout.lastHealth, {
                healthDamage:damage,
                healthUnchanged:damage===0,
              });
            } catch (error) {
              hitDetails = {frame:observation.frame,amount:damage,
                priorHealth:rollout.lastHealth,health:hp,error:error.stack??error.message};
            }
          }
          if (rollout.hitEvents.length<64) rollout.hitEvents.push(hitDetails);
        }
        if (damage>0) {
          rollout.damageTaken += damage;
          if (rollout.damageEvents.length<64) rollout.damageEvents.push(hitDetails);
        }
        if (Number.isFinite(hp)) rollout.lastHealth = hp;
        rollout.lastDamageCooldown = cooldown;
        rollout.peakProjectiles = Math.max(rollout.peakProjectiles, observation.entities.filter(e => e.type===9 && e.dead===false).length);
        rollout.peakTears = Math.max(rollout.peakTears, observation.entities.filter(e => e.type===2 && e.dead===false).length);
        if (terminal || rollout.frames >= rollout.limit || steps >= config.maxSteps || (rollout.stopOnHit&&hit)) {
          const summary = { frames:rollout.frames, damageTaken:rollout.damageTaken, health:hp,
            cleared:observation.cleared, dead:observation.dead, peakTears:rollout.peakTears,
            stopReason:terminal?(observation.dead?'death':'clear'):(rollout.stopOnHit&&hit?'first-hit':'step-limit'),
            peakProjectiles:rollout.peakProjectiles, elapsedMs:performance.now()-rollout.started,
            parameters:rollout.parameters, lastDecision:rollout.lastDecision, maxPolicyInputBytes:policy.maxInputBytes,
            hitCount:rollout.hitCount, hitEvents:rollout.hitEvents, damageEvents:rollout.damageEvents,
            unsafeFrames:rollout.unsafeFrames, unsafeEvents:rollout.unsafeEvents,
            stopEvents:rollout.stopEvents,
            fireFrames:rollout.fireFrames,fireFraction:rollout.fireFrames/Math.max(1,rollout.frames),
            targetFrames:Object.fromEntries(rollout.targetFrames),
            decisionTransitions:rollout.decisionTransitions,
            decisionHistory:rollout.recordDecisionHistory ? rollout.decisionHistory.slice(-90) : [],
            entityTransitions:rollout.entityTransitions,
            enemyTypes:[...rollout.enemyTypes.values()].sort((a,b)=>a.firstFrame-b.firstFrame || a.type-b.type),
            decisionThreatCounts:Object.fromEntries([...rollout.decisionThreatCounts].sort(([a],[b])=>a.localeCompare(b))),
            dangerFrameCounts:Object.fromEntries([...rollout.dangerFrameCounts].sort(([a],[b])=>a.localeCompare(b))) };
          summary.logicFramesPerSecond = summary.frames / (summary.elapsedMs / 1000);
          writeFileSync(join(config.run, 'rollout.json'), JSON.stringify(summary,null,2));
          send({ id:rollout.id, result:{observation,summary,hashes:rollout.hashes,terminated:terminal,truncated:!terminal} });
          rollout=null;
        } else { policyAction(observation); return; }
      }
    }
    return new Promise(resolve => { resume = resolve; });
  };
}

process.on('message', message => {
  try {
    if(message.command==='frame_rollout') {
      send({id:message.id,result:rolloutNativePolicy(message.action)});
    } else if(message.command==='frame_evaluate') {
      send({id:message.id,result:evaluateFrameCandidates(message.action)});
    } else if(message.command==='frame_snapshot') {
      send({id:message.id,result:saveFrameSnapshot(message.action?.reuseId)});
    } else if(message.command==='frame_restore') {
      send({id:message.id,result:restoreFrameSnapshot(message.action.id)});
    } else if(message.command==='frame_drop') {
      send({id:message.id,result:frameSnapshots.delete(message.action.id)});
    } else if(message.command==='enable_frames') {
      if(!config.frameRuntime||!active||!resume||rollout||frameMode)throw new Error('cannot enter native frame mode');
      queueAction({move:'none',fire:'none'});
      frameRequest=message;
      module._boss_frame_enable(1);
      const go=resume;resume=null;go();
    } else if(message.command==='step'&&frameMode) {
      send({id:message.id,result:advanceNativeFrame(message.action)});
    } else if (message.command === 'peek_frame') {
      if(!active||(!resume&&!frameMode))throw new Error('engine is not waiting at a frame boundary');
      send({id:message.id,result:toPlannerFrame(module,readObservation(module),false)});
    } else if (message.command === 'travel') {
      if(!active||!resume||pendingStep||rollout||travel)throw new Error('engine is not waiting for travel');
      const options=message.action;
      events.length=0;queueAction({moveX:0,moveY:0,fire:'none'});
      travel={id:message.id,target:options.target};
      setupConsole=makeConsole(consoleMemory(),{commands:options.commands??[`goto ${options.room}`],mode:'type',ready:()=>true,log:line=>console.log(line)});
      const go=resume;resume=null;go();
    } else if (message.command === 'peek') {
      if (!active || (!resume&&!frameMode)) throw new Error('engine is not waiting at a logic boundary');
      send({ id: message.id, result: readObservation(module) });
    } else if (message.command === 'step') {
      if (!active || !resume || pendingStep) throw new Error('one step is already running');
      if (terminal || steps >= config.maxSteps) throw new Error('episode ended; reset before stepping');
      queueAction(message.action);
      pendingStep = message;
      const go = resume; resume = null; go();
    } else if(message.command === 'rollout') {
      if(!active||!resume||pendingStep||rollout)throw new Error('engine is not waiting for a rollout');
      if(terminal||steps>=config.maxSteps)throw new Error('episode ended; reset first');
      const options=message.action??{}, observation=readObservation(module);
      const parameters={dt:1/30,contact_margin:8,...(options.parameters??{})};
      policy.configure(parameters);
      rollout={id:message.id,limit:Math.min(options.actions?.length??options.steps??1500,config.maxSteps-steps),frames:0,
        started:performance.now(),lastHealth:observation.player.health,
        lastDamageCooldown:observation.player.damageCooldown,damageTaken:0,hitCount:0,hitEvents:[],
        peakProjectiles:0,peakTears:0,parameters,attack:options.attack!==false,actions:options.actions,
        hashes:options.recordHashes?[stateHash(observation)]:null,damageEvents:[],stopEvents:[],lastStopFrame:-300,
        unsafeEvents:[],unsafeFrames:0,lastUnsafeFrame:-100,
        enemyTypes:new Map(),dangerFrameKinds:new Map(),dangerFrameCounts:new Map(),
        decisionThreatCounts:new Map(),
        decisionTransitions:[],lastNavigationBoost:null,
        recordDecisionHistory:options.recordDecisionHistory===true,decisionHistory:[],
        stopOnHit:options.stopOnHit===true,
        fireFrames:0,targetFrames:new Map(),
        recordEntityTypes:new Set(options.recordEntityTimeline??[]),entityTransitions:[],
        lastEntityTransition:new Map(),lastFrameHazards:[]};
      policyAction(observation);
      const go=resume;resume=null;go();
    } else if(message.command === 'probe') {
      if(!active||!resume||rollout||setupConsole)throw new Error('engine is not waiting for a catalog probe');
      startProbe(message);
      const go=resume;resume=null;go();
    } else throw new Error(`unknown command ${message.command}`);
  } catch (error) { send({ id: message.id, error: error.message }); }
});

process.env.ISAAC_INSTANCE_DIR = config.instance;
process.env.ISAAC_SAVE_DIR = join(config.run, 'saves');
process.env.ISAAC_EPOCH = '1793118193';
process.env.ISAAC_MAX_FRAMES = '2000000';
process.env.ISAAC_DRIVE = 'explore';
const startupCommands=[];
startupCommands.push(`seed ${config.seed}`);
if(config.stage!==undefined)startupCommands.push(`stage ${config.stage}`);
for(const flag of config.debugFlags??[])startupCommands.push(`debug ${flag}`);
for(const command of config.preRoomCommands??[])startupCommands.push(command);
startupCommands.push(`goto ${config.room}`);
process.env.ISAAC_CONSOLE = startupCommands.join(';');
process.env.ISAAC_CONSOLE_MODE = 'typed';
process.env.ISAAC_CONSOLE_DELAY = '90';
process.env.ISAAC_OBSERVER_MODULE = fileURLToPath(import.meta.url);
process.env.ISAAC_V8_FLAGS = '';
process.env.ISAAC_V8_FLAGS_APPLIED = '1';
process.env.ISAAC_YIELD = '0';
process.argv = [process.execPath, driver, join(config.research, 'runtime/isaac.segs.bin'), 'main'];
writeFileSync(join(config.run, 'configuration.json'), JSON.stringify(config, null, 2));
import(pathToFileURL(driver).href).then(() => {
  if(frameRequest&&module._boss_frame_ready?.()) {
    frameMode=true;const observation=readObservation(module);frame=observation.frame;steps=0;
    terminal=episodeEnded(observation);
    send({id:frameRequest.id,result:observation});frameRequest=null;
    return;
  }
  send({ event: 'fatal', error: 'engine returned before the training session closed' });
}).catch(error => {
  send({ event: 'fatal', error: error.stack ?? error.message });
});
