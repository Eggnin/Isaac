import {readFileSync,writeFileSync} from 'node:fs';
import assert from 'node:assert/strict';
import createPolicy from './offline/planner_policy.mjs';
const capture=JSON.parse(readFileSync(new URL('./results/tear-inheritance.json',import.meta.url)));
const module=await createPolicy(),fires=['none','up','right','down','left'];
const errors=[];
for(const sample of capture.samples.filter(s=>s.inFlight)){
  const input={player:{tear_inheritance_sample:sample.inheritanceSample,tear_speed:300},fire:fires.indexOf(sample.fire)};
  const bytes=new TextEncoder().encode(JSON.stringify(input)),p=module._malloc(bytes.length+1);
  let actual;
  try{
    module.HEAPU8.set(bytes,p);module.HEAPU8[p+bytes.length]=0;
    actual=JSON.parse(module.ccall('planner_shot_velocity','string',['number'],[p]));
  }finally{module._free(p);}
  assert.ok(!actual.error,actual.error);
  errors.push(Math.hypot(actual.x-sample.actual.x,actual.y-sample.actual.y));
}
const report={pass:errors.length>=25&&Math.max(...errors)<.001,samples:errors.length,maxError:Math.max(...errors),
  scope:'C++ ordinary-tear initial flight velocity versus native measurements; does not prove boss clear or future player motion'};
writeFileSync(new URL('./results/tear-inheritance-cpp.json',import.meta.url),JSON.stringify(report,null,2));
console.log(JSON.stringify(report));assert.ok(report.pass);
