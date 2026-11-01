import {readFileSync,writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
import {stateHash} from './offline/canonical_state.mjs';
const episode=JSON.parse(readFileSync(new URL('./results/home-shield-aim-cpp.json',import.meta.url)));
const records=readFileSync(episode.combat.actionJournal,'utf8').trim().split(/\r?\n/).map(JSON.parse);
const env=new EngineEnvironment({stage:'13a',room:'d.4',targetNPC:{type:960,variant:4},frameRuntime:true,
 frameRuntimeDirectory:'frame-runtime-heap400',endOnClear:false,eventBossTypes:[950,951],maxSteps:records.length+700});
const report={pass:false,scope:'native Tech Dot timing and geometry calibration after an already injured episode; not a combat pass',samples:[]};
try {
 await env.reset();await env.request('enable_frames');
 for(let i=0;i<600;i++) {
  const o=await env.peek(),tv=o.entities.find(e=>e.type===960&&e.variant===4);
  if(o.entities.some(e=>e.type===950))break;
  const near=tv&&Math.hypot(tv.position.x-o.player.position.x,tv.position.y-o.player.position.y)>40;
  await env.step(near?{moveX:Math.sign(tv.position.x-o.player.position.x),moveY:Math.sign(tv.position.y-o.player.position.y),fire:'none'}:{move:'none',fire:'none'});
 }
 for(const r of records){const step=await env.step(r.action);if(stateHash(step.observation)!==r.canonicalHash)throw new Error(`prefix replay diverged at ${r.frame}`);}
 const start=await env.request('peek_frame');
 const dots=start.entities.filter(e=>e.type===1000&&e.variant===126&&e.subtype===1&&e.effect_state===0&&e.spawner_type===950);
 report.initialHealth=start.player.health;report.prefixFrames=records.length;
 const seen=new Set(start.entities.filter(e=>e.type===7).map(e=>e.address));
 for(let i=0;i<60;i++) {
  await env.step({move:'none',fire:'none'});const f=await env.request('peek_frame');
  for(const laser of f.entities.filter(e=>e.type===7&&!seen.has(e.address))) {
   seen.add(laser.address);
   const dot=dots.find(d=>Math.hypot(d.pos.x-laser.pos.x,d.pos.y-laser.pos.y)<.01);
   if(!dot)continue;
   const angle=Math.atan2(dot.target_pos.y,dot.target_pos.x)*180/Math.PI;
   const angleError=Math.abs(((laser.angle-angle+540)%360)-180);
   report.samples.push({dot:dot.address,observedFrame:laser.birth,predictedFrame:start.clock+dot.timeout+1,
    angleError,radius:laser.radius,length:Math.hypot(laser.endpoint.x-laser.pos.x,laser.endpoint.y-laser.pos.y),dot});
  }
 }
 report.expectedDots=dots.length;
 report.pass=dots.length>0&&report.samples.length===dots.length&&report.samples.every(s=>s.observedFrame===s.predictedFrame&&s.angleError<.001&&s.radius===5&&Math.abs(s.length-1200)<.01);
 if(!report.pass)throw new Error('native Tech Dot timing or geometry differs from the proposed rule');
}catch(error){report.error=error.stack??String(error);process.exitCode=1;}
finally{report.runDirectory=env.runDirectory;writeFileSync(new URL('./results/tech-dot-timing.json',import.meta.url),JSON.stringify(report,null,2));
 console.log(JSON.stringify({pass:report.pass,expectedDots:report.expectedDots,samples:report.samples.length,error:report.error}));await env.close();}
