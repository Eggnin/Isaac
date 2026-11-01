import {readFileSync,writeFileSync} from 'node:fs';
import assert from 'node:assert/strict';
import createPolicy from './offline/planner_policy.mjs';
import {deliriumLoopRates} from './offline/delirium_dynamics.mjs';
const capture=JSON.parse(readFileSync(new URL('./results/delirium-native-checkpoint-v1.json',import.meta.url)));
const rows=capture.failureAnalysis.factual,template=capture.failureAnalysis.before;
const module=await createPolicy();
const call=(name,value)=>{
  const bytes=new TextEncoder().encode(JSON.stringify(value)),p=module._malloc(bytes.length+1);
  try{module.HEAPU8.set(bytes,p);module.HEAPU8[p+bytes.length]=0;
    return JSON.parse(module.ccall(name,'string',['number'],[p]));}
  finally{module._free(p);}
};
const events=[];
for(let end=0;end<rows.length;end++){
  const impact=rows[end],boss=impact.boss;
  if(boss?.morph_type!==20||boss.collision!==0||impact.after?.collision!==4||!['Walk','JumpDown'].includes(boss.animation))continue;
  let start=end;
  while(start>0){
    const previous=rows[start-1].boss,next=rows[start].boss;
    if(previous?.morph_type!==20||previous.animation!==boss.animation||previous.collision!==0||previous.animation_frame>next.animation_frame)break;
    start--;
  }
  const samples=[];
  for(let index=start;index<=end;index++){
    const row=rows[index],frame=structuredClone(template),entity=structuredClone(row.boss);
    frame.clock=row.frame-1;frame.sequence=frame.clock;frame.player.body=row.player;
    entity.native_animation_rate=deliriumLoopRates(entity).animationRate;frame.entities=[entity];
    const predictions=[];
    for(const enabled of [false,true]){
      call('planner_configure',{dt:1/30,beam_width:1,stages:1,horizon:1.2,native_attack_timing:enabled});
      const decision=call('planner_decide',{...frame,attack_enabled:false});assert.ok(!decision.error,decision.error);
      const trace=JSON.parse(module.ccall('planner_trace','string',[],[]));
      const threat=trace.find(t=>t.kind==='monstro-landing');assert.ok(threat,'missing Monstro landing warning');
      predictions.push(threat.start);
    }
    const actual=(impact.frame-frame.clock)/30;
    samples.push({frame:frame.clock,animationFrame:entity.animation_frame,rate:entity.native_animation_rate,actual,
      old:predictions[0],corrected:predictions[1],oldError:Math.abs(predictions[0]-actual),correctedError:Math.abs(predictions[1]-actual)});
  }
  events.push({impactFrame:impact.frame,animation:boss.animation,samples});
}
const samples=events.flatMap(e=>e.samples),mean=key=>samples.reduce((n,s)=>n+s[key],0)/samples.length;
const report={pass:false,scope:'C++ warning onset versus three recorded native Monstro-form landing collision activations; not a boss clear',
  eventCount:events.length,samples:samples.length,oldMeanError:mean('oldError'),correctedMeanError:mean('correctedError'),
  maxCorrectedError:Math.max(...samples.map(s=>s.correctedError)),events};
report.pass=events.length===3&&samples.length>=12&&report.correctedMeanError<report.oldMeanError&&
  samples.every(s=>s.corrected<=s.actual+1e-6)&&report.maxCorrectedError<=2/30+1e-6;
writeFileSync(new URL('./results/delirium-landing-timing.json',import.meta.url),JSON.stringify(report,null,2));
console.log(JSON.stringify(Object.fromEntries(Object.entries(report).filter(([k])=>k!=='events'))));assert.ok(report.pass);
