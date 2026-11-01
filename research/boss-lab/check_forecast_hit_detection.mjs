import {readFileSync,writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
import {isCooldownHit} from './offline/damage_tracking.mjs';
const calibration=JSON.parse(readFileSync(new URL('./invulnerability-calibration.json',import.meta.url))).calibration;
const report={pass:false,scope:'normal versus debug-3 native Monstro hit detection and forecast; not a boss clear',calibration,runs:[]};
try {
  for(const god of [false,true]){
    const env=new EngineEnvironment({frameRuntime:true,maxSteps:1000,damageCalibration:calibration,debugFlags:god?[3]:[]});
    const run={god};report.runs.push(run);
    try{
      await env.reset();await env.request('enable_frames');
      let previous=await env.peek(),anchor;
      for(let tick=0;tick<720;tick++){
        if(tick%30===0)anchor=await env.request('frame_snapshot',{reuseId:anchor?.id});
        const step=await env.step({move:'none',fire:'none'}),current=step.observation;
        const loss=previous.player.health-current.player.health;
        const hit=loss>0||isCooldownHit(previous.player.damageCooldown,current.player.damageCooldown,calibration);
        if(hit){
          run.hit={frame:current.frame,loss,previousCooldown:previous.player.damageCooldown,cooldown:current.player.damageCooldown};
          await env.request('frame_restore',{id:anchor.id});
          run.forecast=await env.request('frame_evaluate',{horizon:current.frame-anchor.frame+2,candidates:[{move:'none',fire:'none'}]});
          run.predictedFrame=anchor.frame+run.forecast.selected.firstHit;
          break;
        }
        previous=current;
        if(step.terminated)break;
      }
      run.directory=env.runDirectory;
    }finally{await env.close();}
  }
  const [normal,god]=report.runs;
  report.pass=normal.hit?.loss>0&&god.hit?.loss===0&&normal.hit.frame===god.hit.frame&&
    report.runs.every(r=>r.predictedFrame===r.hit.frame&&r.forecast.selected.hitCount>0)&&god.forecast.selected.damage===0;
  console.log(JSON.stringify({pass:report.pass,runs:report.runs.map(r=>({god:r.god,hit:r.hit,predictedFrame:r.predictedFrame,
    forecastHits:r.forecast?.selected.hitCount,forecastDamage:r.forecast?.selected.damage}))}));
  if(!report.pass)process.exitCode=1;
}catch(error){report.error=error.stack??String(error);console.error(report.error);process.exitCode=1;}
finally{writeFileSync(new URL('./results/forecast-hit-detection.json',import.meta.url),JSON.stringify(report,null,2));}
