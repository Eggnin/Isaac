import {createHash} from 'node:crypto';
import {isCooldownHit} from './offline/damage_tracking.mjs';
const hash=value=>createHash('sha256').update(JSON.stringify(value)).digest('hex');
export async function analyzeNativeFailure(env,battle,{lead=30,recordExposure=false,candidateIndex=null}={}) {
  const result={pass:false,scope:'same-process native checkpoint replay and counterfactual escape; not a completed boss fight',lead};
  const anchor=battle.anchor;
  const bossTypes=battle.bossTypes??[412];
  if(!anchor){result.reason='no retained checkpoint';return result;}
  result.anchorFrame=anchor.frame;result.hitFrame=battle.damageEvents[0]?.frame;
  const original=await env.peek();
  const restored=await env.request('frame_restore',{id:anchor.snapshotId});
  let previousCooldown=restored.player.damageCooldown;
  result.factual=[];
  const forkIndex=Math.max(0,anchor.actions.length-lead);
  for(let index=0;index<anchor.actions.length;index++) {
    if(index===forkIndex&&battle.damageEvents.length)result.fork=await env.request('frame_snapshot');
    const before=await env.request('peek_frame');
    const step=await env.step(anchor.actions[index].action);
    if(hash(step.observation)!==anchor.actions[index].hash)throw new Error(`checkpoint replay diverged at ${step.observation.frame}`);
    const boss=before.entities.find(e=>bossTypes.includes(e.type));
    const after=step.observation.entities.find(e=>e.address===boss?.address);
    result.factual.push({frame:step.observation.frame,action:anchor.actions[index].action,
      health:step.observation.player.health,player:before.player.body,boss,after,
      cooldownBefore:previousCooldown,cooldownAfter:step.observation.player.damageCooldown,
      hazards:before.entities.filter(e=>e.type===7||e.aura_radius>0)});
    previousCooldown=step.observation.player.damageCooldown;
  }
  if(hash(await env.peek())!==hash(original))throw new Error('checkpoint replay did not reproduce final native state');
  result.reproducedFrames=anchor.actions.length;
  result.exactReplay=true;
  if(!battle.damageEvents.length){result.pass=true;result.reason='no hit; checkpoint replay only';return result;}
  await env.request('frame_restore',{id:result.fork.id});
  const before=await env.peek();result.before=await env.request('peek_frame');
  result.actualLead=result.hitFrame-before.frame;
  const fire=anchor.actions[forkIndex].action.fire;
  const dirs=[[0,0],[0,-1],[1,-1],[1,0],[1,1],[0,1],[-1,1],[-1,0],[-1,-1]];
  result.forecast=await env.request('frame_evaluate',{horizon:lead+30,recordHashes:true,
    candidates:dirs.map(([moveX,moveY])=>({moveX,moveY,fire}))});
  const candidate=candidateIndex===null?result.forecast.selected:result.forecast.candidates.find(row=>row.index===candidateIndex);
  if(!candidate)throw new Error('requested diagnostic candidate is absent');
  result.executedCandidate=candidate.index;
  result.actual=[];
  let lastHealth=before.player.health,lastCooldown=before.player.damageCooldown;
  for(let tick=0;tick<candidate.hashes.length;tick++){
    const step=await env.step(candidate.action);
    if(hash(step.observation)!==candidate.hashes[tick])throw new Error('counterfactual prediction diverged from execution');
    const player=step.observation.player;
    const hit=player.health<lastHealth||isCooldownHit(lastCooldown,player.damageCooldown,battle.damageCalibration);
    const exposure=recordExposure?(await env.request('peek_frame')).player.body:null;
    result.actual.push({frame:step.observation.frame,health:player.health,hit,
      ...(exposure?{consecrationCounter:exposure.consecration_counter,pendingDamageFlags:exposure.pending_damage_flags}: {})});
    lastHealth=player.health;lastCooldown=player.damageCooldown;
    if(step.terminated)break;
  }
  result.escapeFound=result.actual.length===lead+30&&result.actual.every(r=>!r.hit);
  result.pass=true;
  return result;
}
