import { writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';
const env=new EngineEnvironment({maxSteps:1800});
const runs=[];
try{
  for(const noRender of [false,true]){
    const initial=await env.reset({noRender});
    const result=await env.rollout({steps:1800,recordHashes:true});
    const summary={...result.summary};delete summary.lastDecision;
    runs.push({noRender,initialFrame:initial.frame,directory:env.runDirectory,hashes:result.hashes,summary});
  }
  const pass=runs.every(r=>r.summary.cleared)&&JSON.stringify(runs[0].hashes)===JSON.stringify(runs[1].hashes);
  const report={native:true,pass,scope:'complete fixed-seed Monstro policy rollout, exact observed-state hashes excluding allocation pointers',runs};
  writeFileSync(new URL('../native-render-parity.json',import.meta.url),JSON.stringify(report,null,2));
  console.log(JSON.stringify({pass,runs:runs.map(r=>({noRender:r.noRender,...r.summary}))}));
  if(!pass)process.exitCode=1;
}finally{await env.close();}
