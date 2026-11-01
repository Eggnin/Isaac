import {readFileSync,writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
import {stateHash} from './offline/canonical_state.mjs';
import {createHash} from 'node:crypto';
const episode=JSON.parse(readFileSync(new URL('./results/home-shield-aim-cpp.json',import.meta.url)));
const records=readFileSync(episode.combat.actionJournal,'utf8').trim().split(/\r?\n/).map(JSON.parse);
const env=new EngineEnvironment({stage:'13a',room:'d.4',targetNPC:{type:960,variant:4},frameRuntime:true,
 frameRuntimeDirectory:'frame-runtime-heap400',endOnClear:false,eventBossTypes:[950,951],maxSteps:records.length+700,
 damageCalibration:episode.combat.damageCalibration});
const report={pass:false,scope:'native candidate damage scoring calibration after an injured prefix; not a combat pass'};
try {
 await env.reset();await env.request('enable_frames');
 for(let i=0;i<600;i++) {
  const o=await env.peek(),tv=o.entities.find(e=>e.type===960&&e.variant===4);
  if(o.entities.some(e=>e.type===950))break;
  const near=tv&&Math.hypot(tv.position.x-o.player.position.x,tv.position.y-o.player.position.y)>40;
  await env.step(near?{moveX:Math.sign(tv.position.x-o.player.position.x),moveY:Math.sign(tv.position.y-o.player.position.y),fire:'none'}:{move:'none',fire:'none'});
 }
 for(const r of records){const step=await env.step(r.action);if(stateHash(step.observation)!==r.canonicalHash)throw new Error('prefix replay mismatch');}
 const before=await env.peek(),tv=before.entities.find(e=>e.type===950&&e.variant===1),ghost=before.entities.find(e=>e.type===950&&e.variant===0);
 const forecast=await env.request('frame_evaluate',{horizon:40,target:tv.address,bossTypes:[950,951],recordHashes:true,
  candidates:[{move:'none',fire:'left'}]});
 if(stateHash(await env.peek())!==stateHash(before))throw new Error('forecast mutated committed state');
 for(const [i,hash] of forecast.selected.hashes.entries()) {
  const step=await env.step(forecast.selected.action);
  if(createHash('sha256').update(JSON.stringify(step.observation)).digest('hex')!==hash)throw new Error(`forecast differs from execution at ${i}`);
 }
 const after=await env.peek();
 report.predictedDamage=forecast.selected.bossDamage;
 report.actualTelevisionDamage=tv.hp-after.entities.find(e=>e.address===tv.address).hp;
 report.actualGhostDamage=ghost.hp-after.entities.find(e=>e.address===ghost.address).hp;
 report.pass=report.predictedDamage===report.actualTelevisionDamage&&report.predictedDamage>0&&report.actualGhostDamage===0;
 if(!report.pass)throw new Error('candidate damage did not track the actual TV target');
}catch(error){report.error=error.stack??String(error);process.exitCode=1;}
finally{report.runDirectory=env.runDirectory;writeFileSync(new URL('./results/home-forecast-target-damage.json',import.meta.url),JSON.stringify(report,null,2));console.log(JSON.stringify(report));await env.close();}
