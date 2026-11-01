import {readFileSync,writeFileSync} from 'node:fs';
import assert from 'node:assert/strict';
import createPolicy from './offline/planner_policy.mjs';
const samples=JSON.parse(readFileSync(new URL('./results/projectile-calibration.json',import.meta.url)));
const template=JSON.parse(readFileSync(new URL('./results/projectile-frame.json',import.meta.url)));
const module=await createPolicy();
const call=(name,value)=>{
  const bytes=new TextEncoder().encode(JSON.stringify(value)),p=module._malloc(bytes.length+1);
  try{module.HEAPU8.set(bytes,p);module.HEAPU8[p+bytes.length]=0;
    return JSON.parse(module.ccall(name,'string',['number'],[p]));}
  finally{module._free(p);}
};
const errors=[];
for(const record of samples.records){
  const frame=structuredClone(template),entity=structuredClone(record.before);
  entity.projectile_age=entity.native_age;
  frame.clock=record.frame;frame.entities=[entity];
  call('planner_configure',{dt:1/30,beam_width:1,stages:1,horizon:1});
  const decision=call('planner_decide',frame);
  if(decision.error)throw new Error(decision.error);
  const trace=JSON.parse(module.ccall('planner_trace','string',[],[]));
  const point=trace.find(t=>t.kind==='projectile'&&t.source===entity.address)?.points[1];
  assert.ok(point,'missing projectile trajectory');
  errors.push(Math.hypot(point.x-record.after.pos.x,point.y-record.after.pos.y));
}
assert.ok(errors.length>=10);
const report={pass:Math.max(...errors)<0.0001,samples:errors.length,
  meanError:errors.reduce((a,b)=>a+b,0)/errors.length,maxError:Math.max(...errors),
  scope:'C++ predicted next sine-projectile position versus original engine positions; constant velocity probe, not combat outcome'};
writeFileSync(new URL('./results/projectile-cpp-check.json',import.meta.url),JSON.stringify(report,null,2));
console.log(JSON.stringify(report));assert.ok(report.pass);
