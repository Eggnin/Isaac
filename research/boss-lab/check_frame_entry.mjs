import {writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
const env=new EngineEnvironment({frameRuntime:true,maxSteps:1000});
const report={pass:false,frames:[]};
try{
  const initial=await env.reset();report.initial=initial.frame;
  let observation=await env.request('enable_frames');report.entered=observation.frame;
  for(let i=0;i<120;i++){
    const before=observation.frame;
    const result=await env.step({move:i%60<30?'right':'left',fire:'up'});
    observation=result.observation;
    report.frames.push({before,after:observation.frame,health:observation.player.health,position:observation.player.position});
    if(result.terminated)break;
  }
  report.pass=report.frames.length===120&&report.frames.every(f=>f.after===f.before+1);
  report.directory=env.runDirectory;
  writeFileSync(new URL('./results/frame-entry.json',import.meta.url),JSON.stringify(report,null,2));
  console.log(JSON.stringify({pass:report.pass,initial:report.initial,entered:report.entered,steps:report.frames.length}));
  if(!report.pass)process.exitCode=1;
}catch(error){report.error=error.stack??error.message;report.directory=env.runDirectory;
  writeFileSync(new URL('./results/frame-entry.json',import.meta.url),JSON.stringify(report,null,2));throw error;
}finally{await env.close();}
