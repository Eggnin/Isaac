import {writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
const modes=[['WIGGLE',1<<5],['MEGA_WIGGLE',1<<22],['CURVE_LEFT',1<<18],['CURVE_RIGHT',1<<19],
  ['MEGA_WIGGLE | ProjectileFlags.CURVE_RIGHT',(1<<22)|(1<<19)],['SAWTOOTH_WIGGLE',1<<23],
  ['ORBIT_CW',1<<11],['ORBIT_CCW',1<<12]];
const env=new EngineEnvironment({room:'s.boss.1010',targetNPC:20,maxSteps:4000,debugFlags:[3]});
const reports=[];
try{
  await env.reset();
  for(const [mode,flags] of modes){
    await env.request('travel',{target:20,commands:[`lua Isaac.DebugString('probe-start') local p=Isaac.Spawn(9,0,0,Vector(100,200),Vector(3,0),nil):ToProjectile() p.ProjectileFlags=ProjectileFlags.${mode} p.WiggleFrameOffset=7 p.CurvingStrength=0.02 p.FallingAccel=0 p.FallingSpeed=0 p.Height=-20 Isaac.DebugString('probe-ready')`]});
    let before=await env.request('peek_frame');
    const probe=before.entities.find(e=>e.type===9&&e.projectile_flags_lo===flags&&e.native_phase===7);
    if(!probe){
      writeFileSync(new URL('./results/projectile-mode-setup.json',import.meta.url),JSON.stringify(before,null,2));
      console.log(JSON.stringify(before.entities.filter(e=>e.type===9).map(e=>({flags:e.projectile_flags_lo,phase:e.native_phase,age:e.native_age}))));
      throw new Error(`probe was not emitted: ${mode}`);
    }
    // The first observation after closing the console can contain the spawn
    // interpolation. Keep the setup capture separate and measure complete
    // ordinary logic ticks after one explicit settling step.
    await env.step({move:'none',fire:'none'});
    before=await env.request('peek_frame');
    const records=[];
    for(let i=0;i<50;i++){
      const result=await env.step({move:'none',fire:'none'});
      const after=await env.request('peek_frame');
      const a=before.entities.find(e=>e.address===probe.address&&e.seed===probe.seed);
      const b=after.entities.find(e=>e.address===probe.address&&e.seed===probe.seed);
      if(a&&b)records.push({frame:before.clock,before:a,after:b});
      before=after;
      if(result.terminated)break;
    }
    reports.push({mode,flags,records});
    console.log(JSON.stringify({mode,samples:records.length}));
    if(records.length<20)throw new Error(`insufficient native samples: ${mode}`);
  }
}finally{
  writeFileSync(new URL('./results/projectile-modes.json',import.meta.url),JSON.stringify({
    scope:'native trajectory probes with debug 3; projectile parameters specified, no character-stat changes and no combat claim',
    directory:env.runDirectory,reports},null,2));
  await env.close();
}
