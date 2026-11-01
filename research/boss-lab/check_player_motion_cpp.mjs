import {readFileSync,writeFileSync} from 'node:fs';
import assert from 'node:assert/strict';
import createPolicy from './offline/planner_policy.mjs';
const capture=JSON.parse(readFileSync(new URL('./results/player-motion.json',import.meta.url)));
const module=await createPolicy(),moves={none:0,right:3,left:7,'up-right':2,'up-left':8};
const results=[];
for(const run of capture.runs){
  const first=run.samples[0];
  const input={player:{max_speed:first.collectedMaxSpeed},position:first.before.pos,velocity:first.before.vel,
    moves:run.samples.map(s=>moves[s.action]),dt:1/30};
  const bytes=new TextEncoder().encode(JSON.stringify(input)),pointer=module._malloc(bytes.length+1);
  let trace;
  try{module.HEAPU8.set(bytes,pointer);module.HEAPU8[pointer+bytes.length]=0;
    trace=JSON.parse(module.ccall('planner_move_trace','string',['number'],[pointer]));}
  finally{module._free(pointer);}
  assert.ok(!trace.error,trace.error);
  const errors=trace.map((s,i)=>({frame:i,position:Math.hypot(s.position.x-run.samples[i].after.pos.x,s.position.y-run.samples[i].after.pos.y),
    velocity:Math.hypot(s.velocity.x-run.samples[i].after.vel.x,s.velocity.y-run.samples[i].after.vel.y)}));
  results.push({move:run.move,frames:errors.length,maxPositionError:Math.max(...errors.map(r=>r.position)),
    maxVelocityError:Math.max(...errors.map(r=>r.velocity)),errors});
}
const report={pass:results.length===4&&results.every(r=>r.frames===35&&r.maxPositionError<.002&&r.maxVelocityError<.002),
  scope:'C++ recursively predicts native ordinary-floor acceleration and release for 35 frames; no collision or special-item guarantee',results};
writeFileSync(new URL('./results/player-motion-cpp.json',import.meta.url),JSON.stringify(report,null,2));
console.log(JSON.stringify({pass:report.pass,results:results.map(({errors,...r})=>r)}));assert.ok(report.pass);
