import {readFileSync,writeFileSync} from 'node:fs';
import createPolicy from './offline/planner_policy.mjs';
const load=name=>JSON.parse(readFileSync(new URL(`./results/${name}.json`,import.meta.url)));
const episode=load('home-consecration-diagnostic'),exit=load('home-consecration-exit-up');
const rows=episode.failureAnalysis.factual,samples=[];
for(let i=0;i<rows.length;i++) {
  const before=rows[i].player,after=rows[i+1]?.player??episode.final.player.body;
  samples.push({frame:rows[i].frame,counter:before.consecration_counter,queued:!!(before.pending_damage_flags&0x8000),expected:after.consecration_counter});
}
let before=exit.failureAnalysis.before.player.body;
for(const step of exit.failureAnalysis.actual) {
  samples.push({frame:step.frame,counter:before.consecration_counter,queued:!!(before.pending_damage_flags&0x8000),expected:step.consecrationCounter});
  before={consecration_counter:step.consecrationCounter,pending_damage_flags:step.pendingDamageFlags};
}
const module=await createPolicy(),bytes=new TextEncoder().encode(JSON.stringify({samples})),ptr=module._malloc(bytes.length+1);
let actual;
try{module.HEAPU8.set(bytes,ptr);module.HEAPU8[ptr+bytes.length]=0;
  actual=JSON.parse(module.ccall('planner_consecration_trace','string',['number'],[ptr]));
}finally{module._free(ptr);}
if(actual.error)throw new Error(actual.error);
const mismatches=samples.flatMap((s,i)=>s.expected===actual[i].counter?[]:[{sample:s,actual:actual[i]}]);
const report={pass:mismatches.length===0,scope:'C++ counter transition against recorded native Home exposure and exit states; not complete future projectile geometry',
 samples:samples.length,mismatches,predictedHolyHits:samples.filter((s,i)=>actual[i].hit).map(s=>s.frame)};
writeFileSync(new URL('./results/consecration-cpp.json',import.meta.url),JSON.stringify(report,null,2));
console.log(JSON.stringify(report));if(!report.pass)process.exitCode=1;
