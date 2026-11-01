import {readFileSync,writeFileSync} from 'node:fs';
import assert from 'node:assert/strict';
import createPolicy from './offline/planner_policy.mjs';
const native=JSON.parse(readFileSync(new URL('./results/projectile-modes.json',import.meta.url)));
const template=JSON.parse(readFileSync(new URL('./results/projectile-frame.json',import.meta.url)));
const module=await createPolicy();
const call=(name,value)=>{
  const bytes=new TextEncoder().encode(JSON.stringify(value)),p=module._malloc(bytes.length+1);
  try{module.HEAPU8.set(bytes,p);module.HEAPU8[p+bytes.length]=0;
    return JSON.parse(module.ccall(name,'string',['number'],[p]));}
  finally{module._free(p);}
};
const results=[];
for(const mode of native.reports){
  const errors=[],futureErrors=[];
  for(const [recordIndex,record] of mode.records.entries()){
    const frame=structuredClone(template),entity=structuredClone(record.before);
    frame.clock=record.frame;frame.entities=[entity];
    call('planner_configure',{dt:1/30,beam_width:1,stages:1,horizon:1});
    const decision=call('planner_decide',frame);
    if(decision.error)throw new Error(decision.error);
    const trace=JSON.parse(module.ccall('planner_trace','string',[],[]));
    const points=trace.find(t=>t.kind==='projectile'&&t.source===entity.address)?.points;
    const point=points?.[1];
    assert.ok(point,'missing projectile trajectory');
    errors.push({age:entity.native_age,error:Math.hypot(point.x-record.after.pos.x,point.y-record.after.pos.y)});
    for(let tick=1;tick<=Math.min(20,mode.records.length-recordIndex);tick++){
      const expected=mode.records[recordIndex+tick-1].after.pos,predicted=points[tick];
      futureErrors.push(Math.hypot(predicted.x-expected.x,predicted.y-expected.y));
    }
  }
  const meanError=errors.reduce((n,r)=>n+r.error,0)/errors.length,maxError=Math.max(...errors.map(r=>r.error));
  const maxFutureError=Math.max(...futureErrors);
  results.push({mode:mode.mode,samples:errors.length,meanError,maxError,maxFutureError,
    pass:errors.length>=20&&maxError<.0001&&maxFutureError<.002,errors});
}
const report={pass:results.length===native.reports.length&&results.length>=6&&results.every(r=>r.pass),
  scope:'C++ next-position predictions versus ordinary post-console native projectile ticks; no combat outcome claim',results};
writeFileSync(new URL('./results/projectile-modes-check.json',import.meta.url),JSON.stringify(report,null,2));
console.log(JSON.stringify({pass:report.pass,results:results.map(({errors,...r})=>r)}));
assert.ok(report.pass);
