import {createHash} from 'node:crypto';
import {writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
const delirium=process.argv.includes('--delirium');
const env=new EngineEnvironment({frameRuntime:true,maxSteps:1000,
  ...(delirium?{stage:12,debugFlags:[3]}:{})});
const report={pass:false,runs:[]};
const hash=value=>createHash('sha256').update(JSON.stringify(value)).digest('hex');
try{
  await env.reset();
  if(delirium)for(const [room,target] of [['s.boss.1030',28],['s.boss.2010',67],['s.boss.2030',69],['s.boss.3300',68],['s.boss.4010',63],['s.boss.3414',412]])
    await env.request('travel',{room,target});
  await env.request('enable_frames');
  const warmup=delirium?200:30,length=delirium?240:120;
  for(let i=0;i<warmup;i++)await env.step({move:'none',fire:'up'});
  const before=await env.peek();
  const snapshot=await env.request('frame_snapshot');report.snapshot=snapshot;
  for(let repeat=0;repeat<2;repeat++) {
    const restored=await env.request('frame_restore',{id:snapshot.id});
    if(hash(restored)!==hash(before))throw new Error('restored observation differs before stepping');
    const run={hashes:[],frames:0};report.runs.push(run);
    for(let i=0;i<length;i++) {
      const result=await env.step({move:i%60<30?'right':'left',fire:'up'});
      run.hashes.push(hash(result.observation));run.frames++;
      if(result.terminated)break;
    }
  }
  report.pass=report.runs[0].frames===length&&JSON.stringify(report.runs[0].hashes)===JSON.stringify(report.runs[1].hashes);
  if(!report.pass)throw new Error('restored native trajectories differ');
  console.log(JSON.stringify({pass:report.pass,frames:length,memoryBytes:snapshot.bytes,streams:snapshot.streams.length}));
}catch(error){report.error=error.stack??error.message;console.error(report.error);process.exitCode=1;}
finally{
  report.directory=env.runDirectory;
  report.scope=delirium?'Delirium multi-form replay with debug 3, not a combat success':'Monstro native-state replay';
  writeFileSync(new URL(`./results/frame-snapshot${delirium?'-delirium':''}.json`,import.meta.url),JSON.stringify(report,null,2));
  await env.close();
}
