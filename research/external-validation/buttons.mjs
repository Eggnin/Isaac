// Two native button mechanism checks, using the production C++ Reader/Planner.
// Setup commands affect only an isolated research instance and its private saves.
import {spawn} from 'node:child_process';
import {createInterface} from 'node:readline';
import {mkdirSync,writeFileSync,appendFileSync,existsSync} from 'node:fs';
import {resolve,join} from 'node:path';
import {EngineEnvironment} from '../offline/engine_environment.mjs';
const output=resolve(process.argv[2]??'validation/buttons-silver-red-20261030');
if(existsSync(output))throw Error('Use a new evidence directory');
mkdirSync(output,{recursive:true});
const directions=[[0,0],[0,-1],[1,-1],[1,0],[1,1],[0,1],[-1,1],[-1,0],[-1,-1]];
const fires=['none','up','right','down','left'];
const child=spawn(resolve('research/external-validation/ExternalReader.exe'),[],{windowsHide:true,stdio:['pipe','pipe','pipe']});
let pending;
createInterface({input:child.stdout}).on('line',line=>{if(pending){const p=pending;pending=null;try{p.resolve(JSON.parse(line));}catch(e){p.reject(e);}}});
child.stderr.on('data',x=>appendFileSync(join(output,'reader.log'),x));
const capture=truth=>new Promise((resolve,reject)=>{pending={resolve,reject};child.stdin.write(JSON.stringify({...truth,source_exe:'D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe',policy:'phase4'})+'\n');});
const plates=f=>f.grid.cells.map((c,i)=>({...c,index:i})).filter(c=>c.type===20);
const living=e=>e.exists!==false&&!e.dead&&e.active!==false;
const npcs=f=>f.entities.filter(e=>e.type>=10&&e.type<1000&&living(e)&&e.hp>0&&!e.invulnerable);
const bullets=f=>f.entities.filter(e=>e.type===9&&living(e)&&!e.friendly);
const report={scope:'One silver-button room and one red-button scenario in the original offline engine. Debug 3 is diagnostic protection, not no-hit evidence.',cases:[]};
const kinds=process.argv.includes('--only-kill')?['kill']:['silver','kill'];
try {
 for(const kind of kinds) {
  const commands=kind==='silver'?['seed 3JY1 6FLR','stage 10','goto d.315','debug 3']:[
   'seed 3JY1 6FLR','debug 3',
   'lua RB=RegisterMod("private_buttons",1) RB:AddCallback(ModCallbacks.MC_POST_NEW_ROOM,function() Game():GetRoom():SpawnGridEntity(116,20,9,123,0) end)',
   'lua RB:AddCallback(ModCallbacks.MC_POST_NEW_ROOM,function() for _,e in ipairs(Isaac.GetRoomEntities()) do if e:ToNPC() then e:Remove() end end Isaac.Spawn(16,0,0,Vector(140,280),Vector.Zero,nil) Isaac.Spawn(25,0,0,Vector(140,200),Vector.Zero,nil) Isaac.Spawn(25,1,0,Vector(240,200),Vector.Zero,nil) end)',
   'lua RB:AddCallback(ModCallbacks.MC_POST_NEW_ROOM,function() RP=Isaac.Spawn(9,0,0,Vector(100,400),Vector.Zero,nil):ToProjectile() end)',
   'lua RB:AddCallback(ModCallbacks.MC_POST_UPDATE,function() if RP and RP:Exists() then RP.Height=-40 RP.FallingSpeed=0 RP.FallingAccel=0 end end)',
   'goto s.boss.1010'
  ];
  const env=new EngineEnvironment({seed:'3JY1 6FLR',room:kind==='silver'?'d.315':'s.boss.1010',targetNPC:-1,
    catalogMode:true,noRender:true,ignoreRoomClear:true,maxSteps:1500,startupCommands:commands,externalValidation:true});
  const row={kind,passed:false,trace:[],assertions:{}};report.cases.push(row);
  let triggered=null,lastBefore=null,initial=null,postFrames=0;
  try {
   await env.reset();row.run_directory=env.runDirectory;
   for(let i=0;i<1400;i++) {
    const f=await capture(await env.request('externalTruth'));
    if(!f.valid)throw Error(f.error??'Invalid C++ capture');
    const ps=plates(f),relevant=ps.filter(p=>p.variant===(kind==='silver'?0:9));
    if(!initial){initial=f;row.initial={plates:ps,npc_types:npcs(f).map(e=>e.type),npc_keys:npcs(f).map(e=>`${e.type}.${e.variant}.${e.subtype}`),projectiles:bullets(f).length,clear_flags:f.clear_flags};}
    const done=relevant.length>0&&relevant.every(p=>p.state===3)&&(kind==='kill'||f.pressure_plates_triggered);
    if(done&&triggered===null){triggered=f.clock;row.trigger={clock:f.clock,plates:ps,clear_flags:f.clear_flags};row.before_trigger=lastBefore;}
    const state={clock:f.clock,plates:ps,clear_flags:f.clear_flags,cleared:f.cleared,npcs:npcs(f).length,projectiles:bullets(f).length,
      hostile_death_explosions:f.entities.filter(e=>e.type===1000&&e.variant===1&&living(e)).length,
      decision:f.decision,threats:f.threats};
    appendFileSync(join(output,kind+'.jsonl'),JSON.stringify(state)+'\n');
    if(i%30===0||triggered!==null)row.trace.push(state);
    if(!done)lastBefore={clock:f.clock,plates:ps,npcs:npcs(f).length,projectiles:bullets(f).length};
    if(triggered!==null&&++postFrames>=30) {
     row.final=state;
     row.assertions={plate_type_observed:relevant.length>0,all_pressed:done,
      navigation_used:row.trace.some(t=>t.decision.button_kind===kind&&t.decision.pressure_plate_mode),
      observed_room_clear:f.cleared,
      silver_flag:kind==='silver'?f.pressure_plates_triggered:true};
     if(kind==='kill')Object.assign(row.assertions,{death_spawner_and_death_projectile_host_present:row.initial.npc_keys.includes('16.0.0')&&row.initial.npc_keys.includes('25.1.0'),
      enemy_projectile_present_before:row.before_trigger.projectiles>0,
      enemies_removed:npcs(f).length===0,enemy_projectiles_removed:bullets(f).length===0,
      no_death_spawn_or_projectiles:row.trace.filter(t=>t.clock>=triggered).every(t=>t.npcs===0&&t.projectiles===0),
      actual_boom_fly_explosion_still_avoided:row.trace.some(t=>t.clock>=triggered&&t.hostile_death_explosions>0&&t.threats.some(h=>h.kind==='explosion'||h.kind==='death-blast'))});
     else Object.assign(row.assertions,{silver_present_initial:row.initial.plates.filter(p=>p.variant===0).length===4,
      deactivated_heads_not_threats:!f.threats.some(t=>t.type===203),all_silver_counted:row.initial.plates.filter(p=>p.variant===0).length===relevant.length});
     row.passed=Object.values(row.assertions).every(Boolean);break;
    }
    const d=f.decision,move=directions[d.valid&&!d.stop?d.move:0];
    await env.step({moveX:move[0],moveY:move[1],fire:d.valid&&!d.stop?fires[d.fire]:'none'});
   }
   if(!row.final)throw Error('Button objective did not finish before limit');
  }catch(e){row.error=e.stack??String(e);}
  finally{await env.close();writeFileSync(join(output,'report.json'),JSON.stringify(report,null,2)+'\n');}
  console.log(JSON.stringify({kind,passed:row.passed,trigger:row.trigger,assertions:row.assertions,error:row.error}));
 }
}finally{child.stdin.end();await new Promise(resolve=>child.once('exit',resolve));}
report.passed=report.cases.length===kinds.length&&report.cases.every(c=>c.passed);
writeFileSync(join(output,'report.json'),JSON.stringify(report,null,2)+'\n');
if(!report.passed)process.exitCode=1;
