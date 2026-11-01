import { writeFileSync, mkdirSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';

const candidates=[
  {name:'default',parameters:{}},
  {name:'margin-4',parameters:{margin:4}},
  {name:'margin-12',parameters:{margin:12}},
  {name:'horizon-0.6',parameters:{horizon:0.6}},
  {name:'response-0.08',parameters:{response:0.08}},
  {name:'response-0.14',parameters:{response:0.14}},
];
const workers=Math.max(1,Number(process.argv[2]??2));
const results=[];let next=0;
const start=performance.now();
await Promise.all(Array.from({length:workers},async()=>{
  const env=new EngineEnvironment({maxSteps:1800});
  try{
    while(next<candidates.length){
      const candidate=candidates[next++];
      await env.reset();
      const result=await env.rollout({steps:1800,parameters:candidate.parameters});
      const summary={...result.summary};delete summary.lastDecision;
      const row={...candidate,runDirectory:env.runDirectory,...summary};
      row.score=(row.cleared?1000000:0)-row.damageTaken*10000-(row.dead?100000:0)-row.frames;
      results.push(row);
      console.log(JSON.stringify(row));
    }
  }finally{await env.close();}
}));
results.sort((a,b)=>b.score-a.score);
const validation=new EngineEnvironment({seed:'7W3L P1Z9',maxSteps:1800});
let heldout;
try{
  await validation.reset();
  const result=await validation.rollout({steps:1800,parameters:results[0].parameters});
  const summary={...result.summary};delete summary.lastDecision;
  heldout={seed:'7W3L P1Z9',runDirectory:validation.runDirectory,...summary};
}finally{await validation.close();}
const report={native:true,method:'deterministic parameter search using the unchanged C++ planner',
  trainSeed:'3JY1 6FLR',workers,wallMs:performance.now()-start,results,best:results[0],heldout};
mkdirSync(new URL('../training-results/',import.meta.url),{recursive:true});
writeFileSync(new URL('../training-results/parameter-search.json',import.meta.url),JSON.stringify(report,null,2));
writeFileSync(new URL('../training-results/best-parameters.json',import.meta.url),JSON.stringify(results[0].parameters,null,2));
console.log(JSON.stringify({best:results[0].name,heldoutCleared:heldout.cleared,heldoutDamage:heldout.damageTaken,wallMs:report.wallMs}));
