import { writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';
import { stateHash } from './canonical_state.mjs';
const actions=Array.from({length:180},(_,i)=>({moveX:i%60<30?1:-1,fire:'up'}));
const env=new EngineEnvironment();
try{
  let observation=await env.reset();
  const slow={directory:env.runDirectory,hashes:[stateHash(observation)]};
  const started=performance.now();
  for(const action of actions){const result=await env.step(action);observation=result.observation;slow.hashes.push(stateHash(observation));if(result.terminated)break;}
  slow.elapsedMs=performance.now()-started;
  await env.reset();
  const fast=await env.rollout({actions,recordHashes:true});
  const pass=JSON.stringify(slow.hashes)===JSON.stringify(fast.hashes);
  const report={native:true,pass,scope:'all observed fields except allocation pointers; exact, no tolerance',
    slow,fast:{directory:env.runDirectory,hashes:fast.hashes,summary:fast.summary}};
  writeFileSync(new URL('../native-batch-parity.json',import.meta.url),JSON.stringify(report,null,2));
  console.log(JSON.stringify({pass,frames:fast.summary.frames,stepMs:slow.elapsedMs,batchMs:fast.summary.elapsedMs}));
  if(!pass)process.exitCode=1;
}finally{await env.close();}
