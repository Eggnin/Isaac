import {readFileSync,writeFileSync} from 'node:fs';
import createPolicy from './offline/planner_policy.mjs';
const native=JSON.parse(readFileSync(new URL('./results/tech-dot-timing.json',import.meta.url)));
const episode=JSON.parse(readFileSync(new URL('./results/home-shield-aim-cpp.json',import.meta.url)));
const module=await createPolicy();
const call=(name,input)=>{
 if(input===undefined)return JSON.parse(module.ccall(name,'string',[],[]));
 const bytes=new TextEncoder().encode(JSON.stringify(input)),p=module._malloc(bytes.length+1);
 try{module.HEAPU8.set(bytes,p);module.HEAPU8[p+bytes.length]=0;return JSON.parse(module.ccall(name,'string',['number'],[p]));}
 finally{module._free(p);}
};
const rows=[];
for(const sample of native.samples) {
 const f=structuredClone(episode.final);f.entities=[sample.dot];f.attack_enabled=false;
 call('planner_configure',{dogma_tech_dot_warning:true,horizon:3,dt:1/30,beam_width:4,stages:2});
 const decision=call('planner_decide',f);if(decision.error)throw new Error(decision.error);
 const t=call('planner_trace').filter(t=>t.kind==='dogma-tech-dot-laser');
 if(t.length!==1)throw new Error('C++ did not expose the pending Tech Dot beam');
 const warning=t[0],v=sample.dot.target_pos,scale=1200/Math.hypot(v.x,v.y);
 const endpointError=Math.hypot(warning.end.x-warning.points[0].x-v.x*scale,warning.end.y-warning.points[0].y-v.y*scale);
 rows.push({predictedFrame:f.clock+warning.start*30,nativeFrame:sample.observedFrame,radius:warning.radius,
  duration:warning.until-warning.start,endpointError});
}
const report={pass:rows.length===9&&rows.every(r=>Math.abs(r.predictedFrame-r.nativeFrame)<1e-6&&r.radius===5&&Math.abs(r.duration-10/30)<1e-6&&r.endpointError<1e-6),
 scope:'C++ warning output against the nine calibrated native Tech Dot profiles',rows};
writeFileSync(new URL('./results/tech-dot-cpp.json',import.meta.url),JSON.stringify(report,null,2));
console.log(JSON.stringify({pass:report.pass,samples:rows.length}));if(!report.pass)process.exitCode=1;
