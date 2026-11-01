// Native movement samples, with no edits to speed, player state or room entities.
import {writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
const env=new EngineEnvironment({frameRuntime:true,maxSteps:1000,debugFlags:[3]});
const wall=process.argv.includes('--wall');
const report={scope:'native free-space movement and release samples; debug 3, not a combat result',runs:[]};
try {
  await env.reset();await env.request('enable_frames');
  await env.step({move:'none',fire:'none'});
  const snapshot=await env.request('frame_snapshot');
  const cases=wall?[['right',1,0],['left',-1,0]]:[['right',1,0],['left',-1,0],['up-right',1,-1],['up-left',-1,-1]];
  for(const [move,x,y] of cases) {
    await env.request('frame_restore',{id:snapshot.id});
    const samples=[];
    let before=await env.request('peek_frame');
    const press=wall?45:20,reverse=wall?10:0;
    for(let tick=0;tick<press+reverse+15;tick++){
      const factor=tick<press?1:tick<press+reverse?-1:0;
      const action=factor===1?move:factor===-1?(move==='right'?'left':'right'):'none';
      await env.step({moveX:factor*x,moveY:factor*y,fire:'none'});
      const after=await env.request('peek_frame');
      samples.push({tick,action,before:before.player.body,after:after.player.body,
        collectedMaxSpeed:after.player.max_speed,nearestNPC:Math.min(...after.entities.filter(e=>e.type>=10&&e.type<1000)
          .map(e=>Math.hypot(e.pos.x-after.player.body.pos.x,e.pos.y-after.player.body.pos.y)-e.radius-after.player.body.radius))});
      before=after;
    }
    report.runs.push({move,samples});
  }
  console.log(JSON.stringify({runs:report.runs.length,samples:report.runs.reduce((n,r)=>n+r.samples.length,0)}));
}catch(error){report.error=error.stack??String(error);console.error(report.error);process.exitCode=1;}
finally{report.runDirectory=env.runDirectory;writeFileSync(new URL(`./results/player-motion${wall?'-wall':''}.json`,import.meta.url),JSON.stringify(report,null,2));await env.close();}
