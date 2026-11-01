import {readFileSync,writeFileSync} from 'node:fs';
import createPolicy from './offline/planner_policy.mjs';
const episode=JSON.parse(readFileSync(new URL('./results/home-animation-finish.json',import.meta.url)));
const frame=episode.combat.damageEvents[0].plannerFrame,module=await createPolicy();
const call=(name,input)=>{
 if(input===undefined)return JSON.parse(module.ccall(name,'string',[],[]));
 const bytes=new TextEncoder().encode(JSON.stringify(input)),p=module._malloc(bytes.length+1);
 try{module.HEAPU8.set(bytes,p);module.HEAPU8[p+bytes.length]=0;return JSON.parse(module.ccall(name,'string',['number'],[p]));}
 finally{module._free(p);}
};
const waves=new Map();
for(const e of frame.entities.filter(e=>e.type===9&&(e.projectile_flags_hi&0x8000))) {
 if(!waves.has(e.birth))waves.set(e.birth,[]);waves.get(e.birth).push(e);
}
const samples=[];
for(const step of episode.failureAnalysis.factual) {
 if(step.boss?.state!==11||!['GodheadStart','GodheadShoot'].includes(step.boss.animation))continue;
 const f=structuredClone(frame);f.clock=step.frame-1;f.entities=[step.boss];f.player.body=step.player;
 call('planner_configure',{native_consecration:true,horizon:1.2,dt:1/30,stages:2,beam_width:4});
 call('planner_decide',f);
 const trace=call('planner_trace').filter(t=>t.kind==='dogma-godhead-windup');
 for(const [birth,projectiles] of waves) {
  if(birth<=f.clock||birth>f.clock+36)continue;
  const warning=trace.filter(t=>Math.abs(f.clock+t.start*30-birth)<.01);
  if(warning.length!==8)throw new Error(`Missing eight-spoke warning at ${f.clock} for ${birth}`);
  const errors=projectiles.map(e=>Math.min(...warning.map(t=>{
   const v={x:(t.points[30].x-t.points[0].x),y:(t.points[30].y-t.points[0].y)};
   return Math.hypot(v.x-e.vel.x,v.y-e.vel.y);
  })));
  samples.push({frame:f.clock,birth,warningCount:warning.length,maxVelocityError:Math.max(...errors)});
 }
}
const report={pass:samples.length>0&&samples.every(s=>s.maxVelocityError<.001),
 scope:'native two recorded volleys: firing frames and eight projectile velocities; future source position remains approximate',samples};
writeFileSync(new URL('./results/godhead-windup.json',import.meta.url),JSON.stringify(report,null,2));
console.log(JSON.stringify({pass:report.pass,samples:samples.length,maxVelocityError:Math.max(...samples.map(s=>s.maxVelocityError))}));
if(!report.pass)process.exitCode=1;
