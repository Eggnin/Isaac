// Read the J460 inheritance sample; do not change player or tear parameters.
import {writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
const env=new EngineEnvironment({frameRuntime:true,maxSteps:1000,debugFlags:[3]});
const report={pass:false,scope:'native ordinary-tear velocity calibration, debug 3; not a combat result',samples:[]};
const axes={up:{x:0,y:-1},right:{x:1,y:0},down:{x:0,y:1},left:{x:-1,y:0}};
const predict=(frame,fire)=>{
  const axis=axes[fire],v=frame.player.tear_inheritance_sample;
  const inherited={x:v.x*36,y:v.y*36};
  const backwards=Math.min(0,inherited.x*axis.x+inherited.y*axis.y);
  return {x:300*axis.x+inherited.x-axis.x*backwards,y:300*axis.y+inherited.y-axis.y*backwards};
};
try{
  await env.reset();await env.request('enable_frames');
  const saved=await env.request('frame_snapshot');
  for(const [move,fire] of [['none','right'],['up','right'],['down','right'],['right','right'],['left','right'],
    ['right','up'],['right','down'],['left','up'],['left','down']]){
    await env.request('frame_restore',{id:saved.id});
    let before=await env.request('peek_frame');
    for(let tick=0;tick<50;tick++){
      await env.step({move,fire});
      const after=await env.request('peek_frame');
      const seen=new Set(before.entities.map(e=>`${e.address}:${e.seed}`));
      for(const tear of after.entities.filter(e=>e.type===2&&!seen.has(`${e.address}:${e.seed}`))){
        const expectedBefore=predict(before,fire),expectedAfter=predict(after,fire);
        report.samples.push({move,fire,tick,inFlight:!tear.dead,inheritanceSample:after.player.tear_inheritance_sample,
          actual:tear.vel,expectedBefore,expectedAfter,
          errorBefore:Math.hypot(tear.vel.x-expectedBefore.x,tear.vel.y-expectedBefore.y),
          errorAfter:Math.hypot(tear.vel.x-expectedAfter.x,tear.vel.y-expectedAfter.y)});
        if(report.samples.at(-1).errorAfter>.001)(report.outliers??=[]).push({before,after,tear});
      }
      before=after;
    }
  }
  const flight=report.samples.filter(s=>s.inFlight);
  report.flightSamples=flight.length;
  report.collisionTerminatedSamples=report.samples.length-flight.length;
  report.maxErrorBefore=Math.max(...flight.map(s=>s.errorBefore));
  report.maxErrorAfter=Math.max(...flight.map(s=>s.errorAfter));
  report.pass=flight.length>=25&&report.maxErrorAfter<.001;
  console.log(JSON.stringify({pass:report.pass,samples:report.samples.length,flightSamples:flight.length,
    collisionTerminatedSamples:report.collisionTerminatedSamples,maxErrorBefore:report.maxErrorBefore,maxErrorAfter:report.maxErrorAfter}));
}catch(error){report.error=error.stack??String(error);console.error(report.error);process.exitCode=1;}
finally{report.runDirectory=env.runDirectory;writeFileSync(new URL('./results/tear-inheritance.json',import.meta.url),JSON.stringify(report,null,2));await env.close();}
