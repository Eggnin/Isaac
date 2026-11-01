// Reproduce the matched no-search failure, then compare original native futures.
import {readFileSync,writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
const option=(name,fallback)=>process.argv.find(a=>a.startsWith(`--${name}=`))?.slice(name.length+3)??fallback;
const referenceName=option('reference','delirium-native-no-search.json');
const reference=JSON.parse(readFileSync(new URL(`./results/${referenceName}`,import.meta.url)));
process.env.BOSS_POLICY_MODULE=new URL(`./versions/${reference.policySha256}/offline/planner_policy.mjs`,import.meta.url).href;
const event=reference.damageEvents[0];
const lead=Number(process.argv.find(a=>a.startsWith('--lead='))?.slice(7)??30);
const env=new EngineEnvironment({seed:reference.seed,stage:12,room:'s.boss.1010',targetNPC:20,frameRuntime:true,maxSteps:event.frame+1000});
const report={pass:false,scope:'native counterfactual escape at a reproduced failure; not a completed boss fight',referenceName,referenceFrame:event.frame,lead};
try {
  await env.reset();
  for(const [room,target] of [['s.boss.1030',28],['s.boss.2010',67],['s.boss.2030',69],['s.boss.3300',68],['s.boss.4010',63],['s.boss.3414',412]])
    await env.request('travel',{room,target});
  await env.request('enable_frames');
  report.prefix=await env.request('frame_rollout',{steps:event.frame-lead,parameters:reference.parameters,disableSearch:true,prefire:true});
  if(report.prefix.hitCount!==0)throw new Error('prefix differs: hit before expected failure');
  report.before=await env.request('peek_frame');
  const snapshot=await env.request('frame_snapshot');
  report.baseline=await env.request('frame_rollout',{steps:lead,parameters:reference.parameters,disableSearch:true,prefire:true,continuePolicy:true});
  if(report.baseline.damageEvents[0]?.frame!==event.frame)throw new Error('original policy failed to reproduce reference hit');
  await env.request('frame_restore',{id:snapshot.id});
  const dirs=[[0,0],[0,-1],[1,-1],[1,0],[1,1],[0,1],[-1,1],[-1,0],[-1,-1]];
  const candidates=[event.selected,...dirs.map(([moveX,moveY])=>({moveX,moveY,fire:event.selected.fire}))];
  report.forecast=await env.request('frame_evaluate',{horizon:lead+30,candidates,recordHashes:false});
  report.escapeFound=report.forecast.selected.damage===0;
  report.actual=[];
  for(let i=0;i<lead+30;i++){
    const step=await env.step(report.forecast.selected.action);
    report.actual.push({frame:step.observation.frame,health:step.observation.player.health});
    if(step.terminated)break;
  }
  const loss=report.before.player.health-report.actual.at(-1).health;
  if(loss!==report.forecast.selected.damage)throw new Error('actual escape damage differs from native prediction');
  report.pass=true;
  console.log(JSON.stringify({pass:report.pass,escapeFound:report.escapeFound,frame:event.frame,lead,selected:report.forecast.selected.action,
    originalHit:report.baseline.damageEvents[0].frame,observedFrames:report.actual.length}));
}catch(error){report.pass=false;report.error=error.stack??String(error);console.error(report.error);process.exitCode=1;}
finally{
  report.runDirectory=env.runDirectory;
  writeFileSync(new URL(`./results/${option('output',`delirium-native-escape-lead${lead}.json`)}`,import.meta.url),JSON.stringify(report,null,2));
  await env.close();
}
