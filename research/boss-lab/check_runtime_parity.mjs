import {writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
import {canonicalState,stateHash} from './offline/canonical_state.mjs';
const report={pass:false,scope:'same native game and fixed inputs across JSPI and frame-return entry; debug 3',runs:[]};
const engineOption=process.argv.find(a=>a.startsWith('--engine='))?.slice(9);
report.engine=engineOption??'frame-runtime';
const warmup=Number(process.argv.find(a=>a.startsWith('--warmup='))?.slice(9)??1);
report.warmup=warmup;
try{
  for(const frameRuntime of [false,true]){
    const frameRuntimeDirectory=process.argv.find(a=>a.startsWith('--engine='))?.slice(9)??'frame-runtime';
    const env=new EngineEnvironment({frameRuntime,frameRuntimeDirectory,maxSteps:1000,debugFlags:[3]});
    const run={frameRuntime,frames:[]};report.runs.push(run);
    try{
      let observation=await env.reset();
      if(frameRuntime)observation=await env.request('enable_frames');
      run.initial=canonicalState(observation);
      for(let i=0;i<warmup;i++)observation=(await env.step({move:'none',fire:'none'})).observation;
      run.afterWarmup=canonicalState(observation);
      for(let tick=0;tick<120;tick++){
        const move=['right','none','left','none','up','down'][Math.floor(tick/20)];
        const result=await env.step({move,fire:'up'});
        run.frames.push({tick,hash:stateHash(result.observation),observation:canonicalState(result.observation)});
        if(result.terminated)break;
      }
      run.directory=env.runDirectory;
    }finally{await env.close();}
  }
  const [a,b]=report.runs;
  report.firstMismatch=a.frames.findIndex((r,i)=>r.hash!==b.frames[i]?.hash);
  report.pass=a.frames.length===120&&b.frames.length===120&&report.firstMismatch===-1;
  console.log(JSON.stringify({pass:report.pass,frames:a.frames.length,firstMismatch:report.firstMismatch,
    firstPositions:report.runs.map(r=>r.frames[0]?.observation.player.position)}));
}catch(error){report.error=error.stack??String(error);console.error(report.error);process.exitCode=1;}
finally{writeFileSync(new URL(`./results/runtime-parity${engineOption?'-heap400':''}.json`,import.meta.url),JSON.stringify(report,null,2));}
