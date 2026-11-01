import { writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';
const option=(name,fallback)=>process.argv.slice(2).find(value=>value.startsWith(`--${name}=`))?.slice(name.length+3)??fallback;
const steps=Number(option('steps','1800'));
const output=option('output','../native-policy-check.json');
const parameters=JSON.parse(option('parameters','{}'));
const seed=option('seed','3JY1 6FLR');
const room=option('room','s.boss.1010');
const targetNPC=Number(option('target','20'));
if(!Number.isInteger(steps)||steps<1||steps>120000)throw new Error('steps must be an integer in [1,120000]');
if(!Number.isInteger(targetNPC)||targetNPC<0)throw new Error('target must be a non-negative integer');
const env=new EngineEnvironment({maxSteps:steps,seed,room,targetNPC});
try {
  const initial=await env.reset();
  const result=await env.rollout({steps,parameters});
  const report={native:true,runDirectory:env.runDirectory,seed,room,targetNPC,initialFrame:initial.frame,
    finalFrame:result.observation.frame,...result.summary};
  report.pass=report.cleared===true && report.damageTaken===0 && report.dead===false;
  writeFileSync(new URL(output,import.meta.url),JSON.stringify(report,null,2));
  const summary={...report};delete summary.lastDecision;
  console.log(JSON.stringify(summary));
  if(!report.pass)process.exitCode=1;
} finally {await env.close();}
