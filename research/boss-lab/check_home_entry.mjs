// Verify the original Home event entrance, rather than spawning a boss entity.
import {writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
const env=new EngineEnvironment({stage:'13a',room:'d.4',targetNPC:{type:960,variant:4},frameRuntime:true,
  endOnClear:false,maxSteps:1500,setupTrace:true});
const report={entryVerified:false,scope:'native Home event entry diagnostic, no boss clear claimed',frames:[]};
try {
  const initial=await env.reset();report.initial=initial;
  await env.request('enable_frames');
  for(let tick=0;tick<600;tick++){
    const before=await env.peek();
    const tv=before.entities.find(e=>e.type===960&&e.variant===4);
    const action=tv&&Math.hypot(tv.position.x-before.player.position.x,tv.position.y-before.player.position.y)>40?
      {moveX:Math.sign(tv.position.x-before.player.position.x),moveY:Math.sign(tv.position.y-before.player.position.y),fire:'none'}:
      {move:'none',fire:'none'};
    const step=await env.step(action),observation=step.observation;
    report.frames.push({frame:observation.frame,state:observation.state,stage:observation.game.stage,
      health:observation.player.health,player:observation.player.position,roomIndex:observation.game.roomIndex,
      cleared:observation.cleared,entities:observation.entities.filter(e=>e.type>=900&&e.type<1000)});
    if(observation.entities.some(e=>e.type===950)){report.entryVerified=true;break;}
    if(step.terminated)break;
  }
  console.log(JSON.stringify({entryVerified:report.entryVerified,frames:report.frames.length,
    stage:report.initial.game.stage,stageType:report.initial.game.stageType,final:report.frames.at(-1)}));
}catch(error){report.error=error.stack??String(error);console.error(report.error);process.exitCode=1;}
finally{report.directory=env.runDirectory;writeFileSync(new URL('./results/home-entry.json',import.meta.url),JSON.stringify(report,null,2));await env.close();}
