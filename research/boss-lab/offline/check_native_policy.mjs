import { writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';
const env=new EngineEnvironment({maxSteps:1800});
try {
  const initial=await env.reset();
  const result=await env.rollout({steps:1800});
  const report={native:true,runDirectory:env.runDirectory,initialFrame:initial.frame,
    finalFrame:result.observation.frame,...result.summary};
  report.pass=report.cleared===true && report.damageTaken===0 && report.dead===false;
  writeFileSync(new URL('../native-policy-check.json',import.meta.url),JSON.stringify(report,null,2));
  const summary={...report};delete summary.lastDecision;
  console.log(JSON.stringify(summary));
  if(!report.pass)process.exitCode=1;
} finally {await env.close();}
