// Paired movement experiments in the private lifted original engine.
// Every pair restores identical game memory; only ordinary shoot input differs.
import {mkdirSync,writeFileSync,readFileSync} from 'node:fs';
import {resolve} from 'node:path';
import {createHash} from 'node:crypto';
import {EngineEnvironment} from '../boss-lab/offline/engine_environment.mjs';
const arg=(key,fallback)=>process.argv.find(v=>v.startsWith(`--${key}=`))?.slice(key.length+3)??fallback;
const selected=arg('only','').split(',').filter(Boolean),frames=Number(arg('frames','20'));
const out=resolve(arg('output','research/weapon-lab/results/weapon-movement-paired.json'));
mkdirSync(resolve(out,'..'),{recursive:true});
const cases=[
  {name:'tears',items:[],type:1},
  {name:'brimstone',items:[118],type:2,charged:true},
  {name:'knife',items:[114],type:4,charged:true},
  {name:'monstros-lung',items:[229],type:7,charged:true},
  {name:'tech-x',items:[395],type:9,charged:true},
  {name:'chocolate-milk',items:[69],type:1,charged:true},
  {name:'cursed-eye',items:[316],type:1,charged:true},
  {name:'c-section',items:[678],type:14},
  {name:'technology',items:[68],type:3},
  {name:'spirit-sword',items:[579],type:13,charged:true},
  {name:'dr-fetus',items:[52],type:5},
  {name:'epic-fetus',items:[168],type:6},
  {name:'ludovico',items:[329],type:8},
  {name:'bone-club',items:[],type:10,character:16,charged:true},
  {name:'umbilical-whip',items:[],type:15,character:32},
  {name:'notched-axe',items:[147],type:11,activate:147},
  {name:'urn-of-souls',items:[640],type:12,activate:640,earnSouls:true,settle:90,prehold:6},
];
const neutral={moveX:0,moveY:0,fire:'none'};
const report={created_utc:new Date().toISOString(),scope:'Paired native player movement in a private original-engine instance; no live-game process or installation writes',
  logic_fps:30,render_fps:60,frames_per_branch:frames,room:'s.boss.1010',seed:'3JY1 6FLR',cases:[],errors:[]};
const near=(a,b)=>Math.hypot(a.x-b.x,a.y-b.y);
function sample(f) {
  const p=f.player;
  return {clock:f.clock,pos:p.body.pos,vel:p.body.vel,max_speed:p.max_speed,health:p.health,
    weapons:p.weapons.map(w=>({type:w.type,charge:w.charge,cooldown:w.cooldown,num_fired:w.num_fired,modifiers:w.modifiers})),
    attacks:f.entities.filter(e=>([2,4,7,8].includes(e.type)||(e.type===1000&&e.damage>0))&&e.exists!==false&&!e.dead).map(e=>({type:e.type,variant:e.variant,birth:e.birth,timeout:e.timeout,pos:e.pos,vel:e.vel,radius:e.radius,damage:e.damage,knife_distance:e.knife_distance,laser_shrinking:e.laser_shrinking})),
    player_radius:p.body.radius,enemy_count:f.entities.filter(e=>e.type>=10&&e.type<1000&&e.exists!==false&&!e.dead).length};
}
function floorClearance(f) {
  const p=f.player.body.pos,r=f.player.body.radius,g=f.grid;
  let clearance=Math.min(p.x-60,p.y-140,60+(g.width-2)*40-p.x,140+(g.height-2)*40-p.y)-r;
  for(let i=0;i<g.cells.length;i++) {
    const c=g.cells[i];if(!c.danger&&c.collision<2&&!(c.collision===1&&!f.player.flying))continue;
    const cx=40+(i%g.width)*40,cy=120+Math.floor(i/g.width)*40;
    clearance=Math.min(clearance,Math.hypot(Math.max(0,Math.abs(p.x-cx)-20),Math.max(0,Math.abs(p.y-cy)-20))-r);
  }
  return clearance;
}
async function branch(env,snapshot,anchorInput,move,fire) {
  // Synchronize the host's ordinary input before restoring guest memory. The
  // synchronization step lies outside the recorded paired trajectories.
  await env.step(anchorInput);await env.request('frame_restore',{id:snapshot.id});
  let f=await env.request('peek_frame');const samples=[sample(f)];let clearance=floorClearance(f);
  for(let i=0;i<frames;i++) {
    await env.step({...move,fire});f=await env.request('peek_frame');
    samples.push(sample(f));clearance=Math.min(clearance,floorClearance(f));
  }
  return {samples,min_terrain_clearance:clearance};
}
function compare(reference,attack,move) {
  if(JSON.stringify(reference.samples[0])!==JSON.stringify(attack.samples[0]))throw Error('Paired initial states differ');
  const unit={x:move.moveX/Math.hypot(move.moveX,move.moveY),y:move.moveY/Math.hypot(move.moveX,move.moveY)};
  const displacement=s=>(s.at(-1).pos.x-s[0].pos.x)*unit.x+(s.at(-1).pos.y-s[0].pos.y)*unit.y;
  const a=reference.samples,b=attack.samples,valid=Math.min(reference.min_terrain_clearance,attack.min_terrain_clearance)>2&&
    [...a,...b].every(s=>s.enemy_count===0&&s.health===a[0].health);
  const maxPosition=Math.max(...a.map((s,i)=>near(s.pos,b[i].pos))),maxVelocity=Math.max(...a.map((s,i)=>near(s.vel,b[i].vel)));
  return {valid,identical_movement:maxPosition<1e-5&&maxVelocity<1e-5,max_position_delta:maxPosition,max_velocity_delta:maxVelocity,
    displacement_reference:displacement(a),displacement_attack:displacement(b),displacement_ratio:displacement(b)/displacement(a),
    max_speed_stat_delta:Math.max(...a.map((s,i)=>Math.abs(s.max_speed-b[i].max_speed))),
    reference_peak_speed:Math.max(...a.map(s=>Math.hypot(s.vel.x,s.vel.y))),attack_peak_speed:Math.max(...b.map(s=>Math.hypot(s.vel.x,s.vel.y))),
    minimum_terrain_clearance:Math.min(reference.min_terrain_clearance,attack.min_terrain_clearance)};
}
const start=performance.now();
for(const spec of cases.filter(c=>!selected.length||selected.includes(c.name))) {
  const clearNPCs=spec.earnSouls?
    'for _,e in ipairs(Isaac.GetRoomEntities()) do if e:ToNPC() then e:Kill() end end for n=1,12 do local e=Isaac.Spawn(10,0,0,Vector(320,280),Vector.Zero,nil) e:Kill() end':
    'for _,e in ipairs(Isaac.GetRoomEntities()) do if e:ToNPC() then e:Remove() end end';
  const cleanup=spec.earnSouls?' if pending and Game():GetRoom():GetFrameCount()>=50 then for _,e in ipairs(Isaac.GetRoomEntities()) do if e:ToNPC() then e:Remove() end end end':'';
  const activate=spec.activate?` m:AddCallback(ModCallbacks.MC_POST_UPDATE,function()${cleanup} if pending and Game():GetRoom():GetFrameCount()>${spec.earnSouls?70:1} then pending=false Isaac.GetPlayer(0):UseActiveItem(${spec.activate},UseFlag.USE_NOANIM) end end)`:'';
  const setupLua=`lua local pending=false local m=RegisterMod("private_weapon_movement",1) m:AddCallback(ModCallbacks.MC_POST_NEW_ROOM,function() ${clearNPCs} pending=true end)${activate}`;
  const setupCommands=spec.earnSouls?[
    `lua WM=RegisterMod("private_weapon_movement",1) WP=false WM:AddCallback(ModCallbacks.MC_POST_NEW_ROOM,function() ${clearNPCs} WP=true end)`,
    `lua WM:AddCallback(ModCallbacks.MC_POST_UPDATE,function()${cleanup.replaceAll('pending','WP')} if WP and Game():GetRoom():GetFrameCount()>70 then WP=false Isaac.GetPlayer(0):UseActiveItem(640,UseFlag.USE_NOANIM) end end)`
  ]:spec.name==='dr-fetus'?[
    setupLua.replace('local m=','WM=').replace(' m:AddCallback',' WM:AddCallback'),
    'lua if ModCallbacks.MC_PRE_BOMB_COLLISION then WM:AddCallback(ModCallbacks.MC_PRE_BOMB_COLLISION,function(_,b,e) if e.Type==1 then Isaac.DebugString("WM_BOMB_PLAYER "..Game():GetFrameCount()) end end) end'
  ]:[setupLua];
  const env=new EngineEnvironment({frameRuntime:true,noRender:true,endOnClear:false,catalogMode:true,maxSteps:10000,sharedResources:true,setupTimeoutMs:30000,
    seed:report.seed,room:report.room,targetNPC:20,
    preRoomCommands:[...(spec.character!==undefined?[`restart ${spec.character}`,`seed ${report.seed}`]:[]),...spec.items.map(id=>`giveitem c${id}`),
      ...setupCommands]});
  const result={...spec,pairs:[]};report.cases.push(result);
  try {
    await env.reset();await env.request('enable_frames');await env.step(neutral);
    for(let i=0;i<(spec.settle??(spec.activate?4:0));i++)await env.step(neutral);
    const initial=await env.request('peek_frame');result.initial=sample(initial);result.run_directory=env.runDirectory;
    if(!initial.player.weapons.some(w=>w.type===spec.type))throw Error(`Expected weapon ${spec.type}; observed ${JSON.stringify(initial.player.weapons)}`);
    if(result.initial.enemy_count)throw Error(`Room is not empty: ${JSON.stringify(initial.entities.filter(e=>e.type>=10&&e.type<1000&&!e.dead).map(e=>({type:e.type,variant:e.variant,hp:e.hp,active:e.active,exists:e.exists,collision:e.collision})))}`);
    const initialSnapshot=await env.request('frame_snapshot');
    console.log(JSON.stringify({case:spec.name,event:'ready',weapon:initial.player.weapons,player:initial.player.body.pos}));
    const moves=[{moveX:1,moveY:0},{moveX:1,moveY:initial.player.body.pos.y<260?1:-1}];
    for(const fire of ['left','right']) {
      for(const move of moves) {
        const reference=await branch(env,initialSnapshot,neutral,move,'none');
        const attack=await branch(env,initialSnapshot,neutral,move,fire);
        result.pairs.push({phase:'start-shooting-or-charging',fire,move,...compare(reference,attack,move),reference,attack});
      }
      await env.step(neutral);await env.request('frame_restore',{id:initialSnapshot.id});
      for(let i=0;i<(spec.prehold??(spec.character===16?90:60));i++)await env.step({...neutral,fire});
      const held=await env.request('peek_frame'),heldSnapshot=await env.request('frame_snapshot');
      for(const move of moves) {
        const reference=await branch(env,heldSnapshot,{...neutral,fire},move,fire);
        const attack=await branch(env,heldSnapshot,{...neutral,fire},move,'none');
        result.pairs.push({phase:spec.charged?'release-vs-held-charge':'stop-vs-continued-fire',fire,move,
          held_charge:held.player.weapons.map(w=>w.charge),...compare(reference,attack,move),reference,attack});
      }
      await env.request('frame_drop',{id:heldSnapshot.id});
    }
    result.valid=result.pairs.every(p=>p.valid);result.identical_movement=result.valid&&result.pairs.every(p=>p.identical_movement);
    result.summary={pairs:result.pairs.length,recorded_branch_frames:result.pairs.length*frames*2,
      max_position_delta:Math.max(...result.pairs.map(p=>p.max_position_delta)),max_velocity_delta:Math.max(...result.pairs.map(p=>p.max_velocity_delta)),
      min_displacement_ratio:Math.min(...result.pairs.map(p=>p.displacement_ratio)),max_displacement_ratio:Math.max(...result.pairs.map(p=>p.displacement_ratio)),
      max_observed_charge:Math.max(...result.pairs.flatMap(p=>p.attack.samples.flatMap(s=>s.weapons.map(w=>w.charge)))),
      observed_attack_types:[...new Set(result.pairs.flatMap(p=>p.attack.samples.flatMap(s=>s.attacks.map(e=>e.type))))]};
    console.log(JSON.stringify({case:spec.name,event:'completed',valid:result.valid,identical_movement:result.identical_movement,...result.summary}));
  }catch(error) {result.error=error.stack??String(error);report.errors.push({case:spec.name,error:result.error});console.error(JSON.stringify({case:spec.name,event:'failed',error:result.error}));}
  finally {await env.close();report.elapsed_ms=performance.now()-start;writeFileSync(out,JSON.stringify(report,null,2)+'\n');}
}
report.completed=report.errors.length===0&&report.cases.every(c=>c.valid);report.elapsed_ms=performance.now()-start;
report.worker_sha256=createHash('sha256').update(readFileSync('research/boss-lab/offline/engine_worker.mjs')).digest('hex');
report.engine_wasm_sha256=createHash('sha256').update(readFileSync('research/boss-lab/frame-runtime/boot.wasm')).digest('hex');
writeFileSync(out,JSON.stringify(report,null,2)+'\n');
console.log(JSON.stringify({completed:report.completed,cases:report.cases.map(({name,valid,identical_movement,summary,error})=>({name,valid,identical_movement,summary,error})),elapsed_ms:report.elapsed_ms,output:out}));
if(!report.completed)process.exitCode=1;
