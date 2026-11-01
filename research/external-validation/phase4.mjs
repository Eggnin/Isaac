import {spawn} from 'node:child_process';
import {createInterface} from 'node:readline';
import {mkdirSync,writeFileSync,appendFileSync,existsSync,readFileSync} from 'node:fs';
import {resolve,join,dirname} from 'node:path';
import {fileURLToPath} from 'node:url';
import {createHash} from 'node:crypto';
import {EngineEnvironment} from '../offline/engine_environment.mjs';
import {isCooldownHit} from '../offline/damage_tracking.mjs';
import {stateHash} from '../offline/canonical_state.mjs';
const here=dirname(fileURLToPath(import.meta.url)),root=resolve(here,'../..');
const option=(k,d)=>process.argv.find(a=>a.startsWith(`--${k}=`))?.slice(k.length+3)??d;
const steps=Number(option('steps','1200')),seeds=option('seeds','3JY1 6FLR,SWGF G7WV').split(',');
const out=resolve(option('output',`validation/phase4-${Date.now()}`));
if(existsSync(out))throw Error('Use a new evidence directory');
mkdirSync(out,{recursive:true});
const sourceExe=option('source-exe','D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe');
const identities={'Eye':['60.0.0'],'Bloat':['68.1.0'],'Pressure':[],'Matriarch':['413.0.0'],'Mixed':['60.0.0','68.1.0']};
const moves=[[0,0],[0,-1],[1,-1],[1,0],[1,1],[0,1],[-1,1],[-1,0],[-1,-1]];
const fires=['none','up','right','down','left'];
class Reader {
  constructor(){
    this.child=spawn(join(here,'ExternalReader.exe'),[],{windowsHide:true,stdio:['pipe','pipe','pipe']});
    createInterface({input:this.child.stdout}).on('line',line=>{const p=this.pending;if(!p)return;this.pending=null;clearTimeout(p.timer);try{p.resolve(JSON.parse(line));}catch(e){p.reject(e);}});
    this.child.stderr.on('data',b=>appendFileSync(join(out,'reader.stderr.log'),b));
    const fail=e=>{if(this.pending){clearTimeout(this.pending.timer);this.pending.reject(e);this.pending=null;}};
    this.child.on('error',fail);this.child.on('exit',c=>fail(Error(`Reader exit ${c}`)));
  }
  capture(truth,policy){return new Promise((resolve,reject)=>{
    const timer=setTimeout(()=>{this.pending=null;this.child.kill();reject(Error('Reader timeout'));},30000);
    this.pending={resolve,reject,timer};
    this.child.stdin.write(JSON.stringify({pid:truth.pid,host_base:truth.host_base,length:truth.length,source_exe:sourceExe,policy})+'\n');
  });}
  async close(){if(this.child.exitCode!==null)return;await new Promise(r=>{this.child.once('exit',r);this.child.stdin.end();});}
}
const truthFrameAfter=o=>o.frame;
const key=e=>`${e.address}:${e.seed}:${e.type}.${e.variant}.${e.subtype}`;
const enemy=e=>e.type>=10&&e.type<1000&&e.exists&&!e.dead&&!e.friendly;
const hash=p=>createHash('sha256').update(readFileSync(p)).digest('hex');
function consumeNative(c,truth,player) {
  const events=truth.native_damage??[],incoming=events.filter(e=>e.target_type===1);
  c.native_damage_attempts=(c.native_damage_attempts??0)+events.length;
  c.native_damage_accepted=(c.native_damage_accepted??0)+incoming.filter(e=>e.returned).length;
  c.native_health_damage=(c.native_health_damage??0)+incoming.reduce((n,e)=>n+Math.max(0,e.health_before-e.health_after),0);
  const own=events.filter(e=>e.native_entry===0x6d60a0&&e.target_type>=10&&e.target_type<1000&&e.target_seed===e.target_seed_after&&
    (e.source===player||e.source_parent===player||e.source_spawner===player));
  c.native_player_damage_dealt=(c.native_player_damage_dealt??0)+own.reduce((n,e)=>n+Math.max(0,e.health_before-Math.max(0,e.health_after)),0);
  c.native_player_effective_frames=(c.native_player_effective_frames??0)+(own.some(e=>e.health_before>e.health_after)?1:0);
}
const report={format:'isaac-phase4-external-loop-v1',steps,seeds,cases:[],baseline:'existing fallback without MechanismFrame and with legacy laser width enabled; same Reader, dt=1/30, seed, scene and character',
  provenance:{command:process.argv,reader_sha256:hash(join(here,'ExternalReader.exe')),wasm_sha256:hash(option('oracle','false')==='true'?join(here,'damage-oracle/boot.wasm'):join(root,'research/the-browsing-of-isaac/output/recomp/lift/boot-training-fast/boot.wasm')),
    source_exe_sha256:hash(sourceExe),sources:Object.fromEntries(['cpp/src/planner.cpp','cpp/src/semantics.cpp','cpp/include/gamebot/model.hpp','research/external-validation/phase4.mjs'].map(p=>[p,hash(join(root,p))]))},
  definitions:{attack_oracle:'new live type 7/9 entity in independent internal observer; ownership requires current source pointer',
    effective_attack:'frame with independently observed enemy HP decrease, not just held fire',
    geometry:'sampled beam segment centerline containment; not an independent engine collision oracle',
    dodge:'With native oracle: episode indicator (at least one attack observed and zero native incoming health damage); not a per-projectile counterfactual success rate',
    null:'no denominator or independent evidence; never treated as success'},
  optimization:{allowed:false,reason:'not started: exact timing, geometry, independently attributed dodge outcome and complete Matriarch Rage coverage required first'}};
function save(){writeFileSync(join(out,'report.json'),JSON.stringify(report,null,2)+'\n');}
for(const name of option('cases','Eye,Bloat,Pressure,Matriarch,Mixed').split(','))for(const seed of seeds)for(const policy of option('policies','baseline,phase4').split(',')){
  if(!identities[name])throw Error(`Unknown scenario ${name}`);
  const npcs=identities[name].map(s=>{const [type,variant,subtype]=s.split('.').map(Number);return {type,variant,subtype};});
  const pressureMode=name==='Pressure';
  const c={name,seed,policy,status:'running',frames:0,damage:0,hits:0,deaths:0,fire_frames:0,effective_attack_frames:0,enemy_damage_observed:0,target_damage_observed:0,
    switches:0,unknown:0,enemy_observations:0,attacks:0,recognized:0,recognition_predictions:0,warned:0,false_alarms:0,censored_warnings:0,lead_frames:[],prediction_errors:[],
    geometry_samples:0,geometry_contained:0,dodge_trials:0,dodges:0,states:[],rage_animations:[],initial:null};
  if(pressureMode)Object.assign(c,{pressure_flag_frame:null,brimstone_target_frames:0,
    post_pressure_head_threat_frames:0,pressure_assertions:null});
  report.cases.push(c);save();console.log(`START ${name} ${seed} ${policy}`);
  const isolate=option('isolate','false')==='true'&&!pressureMode;
  const cleanup='lua for _,e in ipairs(Isaac.GetRoom():GetEntities()) do if (e.Type>=10 and e.Type<1000) or e.Type==9 or e.Type==4 then e:Remove() end end';
  c.isolation_requested=isolate;
  const oracle=option('oracle','false')==='true';
  const env=new EngineEnvironment({engineDriver:oracle?join(here,'damage-oracle/boot_integration.mjs'):undefined,seed,
    room:pressureMode?'d.315':option('room','s.boss.3702'),preSpawnCommands:isolate?[cleanup]:[],
    targetNPC:pressureMode?203:npcs[0],spawnNPCs:pressureMode?[]:npcs,
    startupCommands:pressureMode?['seed '+seed,'stage 10','goto d.315']:undefined,
    debugFlags:[],maxSteps:steps+10,noRender:true,externalValidation:true});
  let reader,previous=null,lastAction=null,previousHealth=null,previousCooldown=null,live=new Map(),warnings=new Map();
  try{
    let observation=await env.reset();c.run_directory=env.runDirectory;reader=new Reader();
    c.isolation_effective=isolate?!observation.entities.some(e=>e.type>=10&&e.type<1000&&!npcs.some(n=>n.type===e.type&&n.variant===e.variant&&n.subtype===e.subtype)):null;
    c.initial={player:{position:observation.player.position,velocity:observation.player.velocity,health:observation.player.health,character:observation.player.character,fireDelay:observation.player.fireDelay,seed:observation.player.seed},entities:observation.entities.map(e=>({seed:e.seed,type:e.type,variant:e.variant,subtype:e.subtype,pos:e.position,hp:e.hp})).sort((a,b)=>a.seed-b.seed),frame:observation.frame};
    if(pressureMode)c.initial.pressure={clearFlags:observation.room.clearFlags,plates:observation.grid.filter(cell=>cell.type===20&&cell.variant===0).map(cell=>({x:cell.x,y:cell.y,state:cell.state}))};
    for(let tick=0;tick<steps;tick++){
      const truth=await env.request('externalTruth'),external=await reader.capture(truth,policy);
      if(tick===0){truth.setup_native_damage=truth.native_damage;truth.setup_native_laser=truth.native_laser;truth.native_damage=[];truth.native_laser=[];}
      if(!external.valid||external.pid!==env.child.pid||external.reader_pid!==reader.child.pid||external.pid===external.reader_pid||external.clock!==truth.frame.clock||!external.rpm_calls)throw Error(`invalid external frame ${external.error??''}`);
      if(option('hashes','false')==='true'){c.state_hashes??=[];c.state_hashes.push(stateHash(observation));}
      const now=truth.frame.clock,current=new Map(truth.frame.entities.map(e=>[key(e),e]));
      const hp=observation.player?.health,cooldown=observation.player?.damageCooldown;
      const loss=previousHealth===null?0:Math.max(0,previousHealth-hp),hit=previousCooldown!==null&&isCooldownHit(previousCooldown,cooldown);
      c.damage+=loss;c.hits+=hit?1:0;
      if(loss||hit)for(const trial of live.values())trial.hit=true;
      previousHealth=hp;previousCooldown=cooldown;
      let damage=0;
      if(previous)for(const [id,e] of current){const old=previous.get(id);if(old&&enemy(e)){const drop=Math.max(0,old.hp-e.hp);damage+=drop;if(npcs.some(n=>e.type===n.type&&e.variant===n.variant&&e.subtype===n.subtype))c.target_damage_observed+=drop;}}
      c.enemy_damage_observed+=damage;if(damage>0)c.effective_attack_frames++;
      if(oracle&&!truth.oracle_available)throw Error('native damage oracle export missing');
      consumeNative(c,truth,external.player.body.address);
      const attackEvents=[];c.recognition_predictions+=external.mechanisms.events.filter(e=>e.event==='AttackStart').length;
      for(const [id,e] of current)if((e.type===7||e.type===9)&&e.exists&&!e.dead&&!e.friendly&&(!previous||!previous.has(id))){
        const source=e.spawner||e.parent;const earlier=warnings.get(source);
        const event={entity:id,frame:now,source,type:e.type,warning:earlier??null};attackEvents.push(event);c.attacks++;
        const match=external.mechanisms.events.some(x=>x.event==='AttackStart'&&x.parameters.entity===e.address&&x.seed===e.seed);
        if(match)c.recognized++;
        const warned=!!earlier&&earlier.frame<now&&now-earlier.frame<=120;
        if(warned){c.warned++;earlier.matched=true;c.lead_frames.push(now-earlier.frame);if(earlier.predicted>=0)c.prediction_errors.push(now-earlier.predicted);}
        live.set(id,{hit:false,warned});
        // The warning envelope is a conservative proposal, not native collision geometry.
        if(e.type===7&&warned&&e.geometry_valid){
          const w=earlier.geometry,dx=w.end.x-w.pos.x,dy=w.end.y-w.pos.y,len=dx*dx+dy*dy;
          for(let i=0;i<=10;i++){const x=e.pos.x+(e.endpoint.x-e.pos.x)*i/10,y=e.pos.y+(e.endpoint.y-e.pos.y)*i/10;
            const t=len?Math.max(0,Math.min(1,((x-w.pos.x)*dx+(y-w.pos.y)*dy)/len)):0;
            c.geometry_samples++;if(Math.hypot(x-w.pos.x-t*dx,y-w.pos.y-t*dy)<=w.radius+w.uncertainty)c.geometry_contained++;
          }
        }
      }
      for(const [id,trial] of live)if(!current.has(id)){if(trial.warned){c.dodge_trials++;if(!trial.hit)c.dodges++;}live.delete(id);}
      for(const event of external.mechanisms.events)if(event.event==='Telegraph'){
        const geometry=external.mechanisms.warnings.find(w=>w.source===event.source);
        if(geometry){const old=warnings.get(event.source);if(old&&!old.matched)c.false_alarms++;warnings.set(event.source,{frame:now,predicted:event.predicted_frame,geometry,matched:false});}
      }
      for(const e of external.mechanisms.enemies){c.enemy_observations++;if(e.unknown_state)c.unknown++;const s=`${e.identity_key}:${e.state}`;if(!c.states.includes(s))c.states.push(s);if(e.identity_key==='413.0.0'&&e.current_action.startsWith('Rage')&&!c.rage_animations.includes(e.current_action))c.rage_animations.push(e.current_action);}
      const d=external.decision,action={moveX:moves[d.move][0],moveY:moves[d.move][1],fire:fires[d.fire]};
      if(pressureMode){
        const target=external.entities.find(e=>e.address===d.target);
        if(target?.type===203)++c.brimstone_target_frames;
        if(external.pressure_plates_triggered)c.pressure_flag_frame??=now;
        if(external.pressure_plates_triggered&&external.threats.some(threat=>threat.type===203))
          ++c.post_pressure_head_threat_frames;
      }
      if(!d.valid||d.stop){action.moveX=0;action.moveY=0;action.fire='none';}
      if(policy==='probe-right'){action.moveX=tick<5?1:0;action.moveY=0;action.fire='none';c.action_mode='five ordinary right-move frames then hold; collision calibration';}
      if(policy==='probe-align'){const source=external.entities.find(e=>e.type===npcs[0].type&&e.variant===npcs[0].variant&&e.subtype===npcs[0].subtype);if(source){const x=source.pos.x+(option('probe-side','right')==='left'?-100:100),y=source.pos.y,p=external.player.body.pos;action.moveX=Math.abs(x-p.x)>3?Math.sign(x-p.x):0;action.moveY=Math.abs(y-p.y)>3?Math.sign(y-p.y):0;}action.fire='none';c.action_mode='external-position guided alignment for collision calibration';}
      if(policy==='stationary'){action.moveX=0;action.moveY=0;action.fire='none';c.action_mode='stationary control for native damage-oracle calibration';}
      const encoded=JSON.stringify(action);if(lastAction!==null&&lastAction!==encoded)c.switches++;lastAction=encoded;
      if(action.fire!=='none')c.fire_frames++;
      appendFileSync(join(out,`${name}-${seed.replaceAll(' ','')}-${policy}.jsonl`),JSON.stringify({tick,truth,external,attackEvents,damage:{loss,hit,enemy_hp_drop:damage},executed_action:action})+'\n');
      previous=current;c.frames++;
      const next=await env.step(action);observation=next.observation;
      if(next.terminated){c.deaths=observation.dead?1:0;c.cleared=!!observation.cleared;break;}
    }
    // Drain native callbacks from the final executed action too.
    if(oracle){const finalTruth=await env.request('externalTruth');consumeNative(c,finalTruth,finalTruth.frame.player.body.address);
      writeFileSync(join(out,`${name}-${seed.replaceAll(' ','')}-${policy}-terminal.json`),JSON.stringify({truth:finalTruth,observation})+'\n');}
    // Include damage caused by the last executed action.
    c.damage+=Math.max(0,previousHealth-(observation.player?.health??previousHealth));
    if(isCooldownHit(previousCooldown,observation.player?.damageCooldown))c.hits++;
    for(const w of warnings.values())if(!w.matched){if(truthFrameAfter(observation)-w.frame>120)c.false_alarms++;else c.censored_warnings++;}
    c.status='executed';c.truncated=!c.cleared&&!c.deaths;
    c.metrics={recognition_recall:c.attacks?c.recognized/c.attacks:null,recognition_precision:c.recognition_predictions?c.recognized/c.recognition_predictions:null,early_warning_rate:c.attacks?c.warned/c.attacks:null,
      lead_frames:c.lead_frames,prediction_error_frames:c.prediction_errors,geometry_centerline_containment:c.geometry_samples?c.geometry_contained/c.geometry_samples:null,
      dodge_success_rate:oracle&&c.attacks>0?Number(c.native_health_damage===0):null,warned_entity_lifetime_without_hit_rate:c.dodge_trials?c.dodges/c.dodge_trials:null,damage_per_1000_frames:1000*c.damage/c.frames,
      effective_attack_time:oracle?c.native_player_effective_frames/c.frames:c.effective_attack_frames/c.frames,fire_time:c.fire_frames/c.frames,damage_dealt_lower_bound:oracle?c.native_player_damage_dealt:c.enemy_damage_observed,target_damage_lower_bound:c.target_damage_observed,
      action_switches_per_1000_frames:1000*c.switches/c.frames,unknown_state_ratio:c.enemy_observations?c.unknown/c.enemy_observations:null};
    c.uncovered=pressureMode?[]:name==='Matriarch'?['RageBegin','RageLoop','RageEnd'].filter(a=>!c.rage_animations.includes(a)):c.attacks?[]:['no attack entity observed'];
    if(pressureMode){
      const finalPlates=observation.grid.filter(cell=>cell.type===20&&cell.variant===0);
      c.final_pressure={clearFlags:observation.room.clearFlags,cleared:observation.cleared,
        plates:finalPlates.map(cell=>({x:cell.x,y:cell.y,state:cell.state})),
        heads:observation.entities.filter(entity=>entity.type===203).map(entity=>({
          seed:entity.seed,active:entity.active,exists:entity.exists,dead:entity.dead,
          state:entity.state,collision:entity.collision,invulnerable:entity.invulnerable,hp:entity.hp,
        }))};
      c.pressure_assertions={
        fourPlates:c.initial.pressure?.plates.length===4,
        allPlatesTriggered:finalPlates.length===4&&finalPlates.every(cell=>cell.state===3),
        pressureFlag:(observation.room.clearFlags&2)!==0,
        clearFlag:(observation.room.clearFlags&1)!==0&&observation.cleared===true,
        brimstoneNeverTargeted:c.brimstone_target_frames===0,
        noHeadThreatAfterFlag:c.post_pressure_head_threat_frames===0,
        noHealthDamage:c.damage===0&&c.hits===0,
      };
      c.mechanism_gate=Object.values(c.pressure_assertions).every(Boolean);
    }else{
      c.mechanism_gate=c.attacks>0&&c.warned>0&&c.geometry_samples>0&&c.enemy_damage_observed>0&&c.dodge_trials>0&&c.uncovered.length===0&&c.prediction_errors.length>0&&c.prediction_errors.every(e=>e===0)&&c.geometry_contained===c.geometry_samples&&c.metrics.dodge_success_rate!==null;
    }
  }catch(e){c.status='error';c.error=e.stack??e.message;console.log(`FAIL ${c.error}`);}
  finally{await reader?.close();await env.close();save();}
  console.log(`END ${name} ${policy}: ${c.status}, frames=${c.frames} attacks=${c.attacks} damage=${c.damage} output=${c.enemy_damage_observed}`);
}
report.comparisons=report.cases.filter(c=>c.policy!=='baseline').map(c=>{const b=report.cases.find(b=>b.policy==='baseline'&&b.name===c.name&&b.seed===c.seed);return {name:c.name,seed:c.seed,policy:c.policy,initial_equal:b?JSON.stringify(b.initial)===JSON.stringify(c.initial):null,damage_delta:c.damage-(b?.damage??0),damage_dealt_delta:c.enemy_damage_observed-(b?.enemy_damage_observed??0),cleared:c.cleared??false,mechanism_gate:c.mechanism_gate};});
save();console.log(`REPORT ${out}`);
if(report.cases.some(c=>c.status==='error')||report.comparisons.some(c=>c.initial_equal===false))process.exitCode=1;
