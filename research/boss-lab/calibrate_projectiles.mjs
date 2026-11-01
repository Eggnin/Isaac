import {writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
const env=new EngineEnvironment({stage:12,room:'s.boss.3414',targetNPC:412,maxSteps:4000,debugFlags:[3]});
const records=[];
try{
  await env.reset();
  // Observation-only invulnerable calibration, never a combat success.
  await env.request('travel',{target:412,commands:["lua local p=Isaac.Spawn(9,0,0,Vector(500,400),Vector(1,0),nil):ToProjectile() p.ProjectileFlags=ProjectileFlags.SINE_VELOCITY"]});
  let before=await env.request('peek_frame');
  for(let i=0;i<120;i++){
    await env.step({move:'none',fire:'none'});
    const after=await env.request('peek_frame');
    const lookup=new Map(after.entities.map(e=>[`${e.address}:${e.seed}`,e]));
    for(const a of before.entities.filter(e=>e.type===9)){
      const b=lookup.get(`${a.address}:${a.seed}`);if(!b)continue;
      const flags=a.projectile_flags_lo;
      if(!(flags&(1<<21)))continue;
      const measured={x:b.pos.x-a.pos.x,y:b.pos.y-a.pos.y};
      const predict=age=>{
        const factor=1+Math.sin(age*2*Math.PI/30);
        return {x:a.vel.x/30*factor,y:a.vel.y/30*factor};
      };
      const p0=predict(a.native_age),p1=predict(b.native_age);
      records.push({frame:before.clock,before:a,after:b,measured,predictBefore:p0,predictAfter:p1,
        errorBefore:Math.hypot(measured.x-p0.x,measured.y-p0.y),
        errorAfter:Math.hypot(measured.x-p1.x,measured.y-p1.y),
        linearError:Math.hypot(measured.x-a.vel.x/30,measured.y-a.vel.y/30)});
    }
    before=after;
  }
  const avg=key=>records.reduce((n,r)=>n+r[key],0)/records.length;
  const summary={count:records.length,linearMeanError:avg('linearError'),beforeAgeMeanError:avg('errorBefore'),afterAgeMeanError:avg('errorAfter')};
  writeFileSync(new URL('./results/projectile-calibration.json',import.meta.url),JSON.stringify({scope:'debug-3 trajectory calibration only',directory:env.runDirectory,summary,records},null,2));
  console.log(JSON.stringify(summary));
  if(records.length<10)throw new Error('insufficient sine-projectile trajectory samples');
}finally{await env.close();}
