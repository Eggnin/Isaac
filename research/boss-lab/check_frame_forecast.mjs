import {createHash} from 'node:crypto';
import {writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
const env=new EngineEnvironment({frameRuntime:true,maxSteps:1000});
const report={pass:false};
const turns=process.argv.includes('--turns');
const actionAt=(candidate,tick)=>!candidate.plan?candidate:tick<8?candidate.plan[0].action:candidate.plan[1].action;
const hash=value=>createHash('sha256').update(JSON.stringify(value)).digest('hex');
try{
  await env.reset();await env.request('enable_frames');
  for(let i=0;i<30;i++)await env.step({move:'none',fire:'up'});
  const before=await env.peek();
  const candidates=turns?['right','left'].map(move=>({plan:[{frames:8,action:{move,fire:'up'}},
    {frames:7,action:{move:move==='right'?'left':'right',fire:'up'}}]})):[
    {move:'right',fire:'up'},{move:'left',fire:'up'},{move:'none',fire:'up'}];
  const forecast=await env.request('frame_evaluate',{horizon:15,recordHashes:true,candidates});
  report.forecast=forecast;
  if(hash(before)!==hash(await env.peek()))throw new Error('forecast changed the live state');
  const actual=[];
  for(let i=0;i<15;i++){const result=await env.step(actionAt(forecast.selected.action,i));actual.push(hash(result.observation));if(result.terminated)break;}
  report.pass=JSON.stringify(actual)===JSON.stringify(forecast.selected.hashes);
  report.actual=actual;
  if(!report.pass)throw new Error('selected forecast differs from actual native execution');
  console.log(JSON.stringify({pass:report.pass,frames:actual.length,searchMs:forecast.elapsedMs,selected:forecast.selected.action}));
}catch(error){report.error=error.stack??error.message;console.error(report.error);process.exitCode=1;}
finally{report.directory=env.runDirectory;writeFileSync(new URL(`./results/frame-forecast${turns?'-turns':''}.json`,import.meta.url),JSON.stringify(report,null,2));await env.close();}
