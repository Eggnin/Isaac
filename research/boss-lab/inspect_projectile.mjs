import {writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
const env=new EngineEnvironment({stage:12,room:'s.boss.3414',targetNPC:412,maxSteps:1000});
try{
  await env.reset();
  await env.rollout({steps:500,parameters:{beam_width:12,stages:3,horizon:.8,navigation_beam_width:12,navigation_stages:3,navigation_horizon:.8}});
  const frame=await env.request('peek_frame');
  writeFileSync(new URL('./results/projectile-frame.json',import.meta.url),JSON.stringify(frame,null,2));
  console.log(JSON.stringify({directory:env.runDirectory,projectiles:frame.entities.filter(e=>e.type===9).map(e=>({update:e.native_update,flags:e.projectile_flags_lo})).slice(0,4)}));
}finally{await env.close();}
