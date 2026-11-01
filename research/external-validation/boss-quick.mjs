// One bounded original-engine episode per exact category=boss identity.
// The native C++ quick policy uses production Planner defaults, without tuning.
import {spawn} from 'node:child_process';
import {createInterface} from 'node:readline';
import {readFileSync,writeFileSync,appendFileSync,mkdirSync,existsSync,copyFileSync} from 'node:fs';
import {resolve,join,dirname} from 'node:path';
import {createHash} from 'node:crypto';
import {EngineEnvironment} from '../offline/engine_environment.mjs';
import {NPC_CONFIGS} from '../offline/npc_catalog.mjs';
import {isCooldownHit} from '../offline/damage_tracking.mjs';

const option=(k,d)=>process.argv.find(a=>a.startsWith(`--${k}=`))?.slice(k.length+3)??d;
const out=resolve(option('output',`validation/boss-quick-60s-${Date.now()}`));
const workers=Number(option('workers','3')),seconds=Number(option('seconds','60')),steps=seconds*30,seed=option('seed','3JY1 6FLR');
if(!Number.isInteger(seconds)||seconds<1||seconds>60)throw Error('--seconds must be an integer from 1 to 60');
const diagnostics=option('diagnostics','false')==='true';
const windowsAll=option('windows-all','false')==='true';
const category=option('category','boss');
const forceArena=option('arena','false')==='true';
const noFire=option('no-fire','false')==='true';
const selected=new Set(option('ids','').split(',').filter(Boolean));
const entries=NPC_CONFIGS.filter(e=>e.category===category&&(!selected.size||selected.has(e.key)));
const hash=p=>createHash('sha256').update(readFileSync(p)).digest('hex');
const sourceExe='D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe';
const rooms=JSON.parse(readFileSync('research/boss-lab/data/room-sources.json','utf8'));
const bossKeys=new Set(NPC_CONFIGS.filter(e=>e.category==='boss').map(e=>e.key));
const key=e=>`${e.type}.${e.variant}.${e.subtype}`;
const alive=e=>e.exists!==false&&!e.dead&&e.active!==false;
const parent={'79.10.0':'79.0.0','79.11.0':'79.1.0','79.12.0':'79.2.0','83.0.0':'82.0.0','98.0.0':'97.0.0'};
function scenario(entry) {
  const wanted=parent[entry.key]??entry.key;
  const candidates=rooms.find(s=>s.stage==='special').rooms.filter(r=>[5,6].includes(r.type)&&r.spawns.some(s=>s.entities.some(e=>key(e)===wanted)));
  const rank=r=>r.spawns.flatMap(s=>s.entities).reduce((n,e)=>n+(bossKeys.has(key(e))&&key(e)!==wanted?10:key(e)===wanted?1:0),0);
  candidates.sort((a,b)=>rank(a)-rank(b)||a.variant-b.variant);
  let stage=({45:6,78:8,84:10,273:11,274:11,275:11,407:9,412:12,867:'4c',907:'4c',912:'8c',950:'13a',951:'13a'})[entry.type]??1;
  if(entry.type===102)stage=entry.variant===0?'10a':'11a';
  if(forceArena)stage=1;
  if(candidates.length&&!forceArena) {
    const room=candidates[0];
    return {kind:'original_room',stage,room:`s.${room.type===5?'boss':'miniboss'}.${room.variant}`,room_name:room.name,
      commands:[`seed ${seed}`,`stage ${stage}`,`goto s.${room.type===5?'boss':'miniboss'}.${room.variant}`]};
  }
  // These are native entity probes in an original wide room; retain this scope
  // explicitly rather than claiming to reproduce an event-driven boss encounter.
  const spawnKey=parent[entry.key]??entry.key;
  return {kind:'arena_spawn',stage,room:'s.boss.3700',room_name:'Original wide room, native entity spawn',
    commands:[`seed ${seed}`,`stage ${stage}`,
      `lua BQ=RegisterMod("private_boss_quick",1) BQ:AddCallback(ModCallbacks.MC_POST_NEW_ROOM,function() for _,e in ipairs(Isaac.GetRoomEntities()) do if e:ToNPC() then e:Remove() end end Isaac.Spawn(${spawnKey.replaceAll('.',',')},Vector(560,240),Vector.Zero,nil) end)`,
      'goto s.boss.3700']};
}
if(existsSync(out))throw Error('Use a new evidence directory');
mkdirSync(out,{recursive:true});
copyFileSync(option('reader','research/external-validation/ExternalReader.exe'),join(out,'ExternalReader.exe'));
copyFileSync(option('semantics','data/mechanisms/gamebot_runtime_semantics.json'),join(out,'runtime-semantics.json'));
const geometrySource=resolve(option('geometry-dir','data/mechanisms'));
for(const name of ['gamebot_monster_geometry.json','gamebot_monster_geometry_patterns.json'])
  copyFileSync(join(geometrySource,name),join(out,name));
const readerSourceReport=join(dirname(resolve(option('reader','research/external-validation/ExternalReader.exe'))),'report.json');
const report={format:'j460-boss-quick-v2',started_at:new Date().toISOString(),status:'running',seed,seconds_per_case:seconds,logic_frames_per_second:30,
  requested:entries.length,workers,policy:'Current production C++ Planner defaults; automatic attack on; no parameter changes',
  character:'Default Isaac, starting 6 half-hearts, base weapon; no debug, invulnerability, health refill or stat changes',
  stop_condition:`${steps} logic frames, player death, or room clear with no living hostile NPC; setup damage is not included in scored combat`,
  provenance:{reader_sha256:hash(join(out,'ExternalReader.exe')),semantics_sha256:hash(join(out,'runtime-semantics.json')),
    engine_sha256:hash('research/external-validation/damage-oracle/boot.wasm'),source_exe_sha256:hash(sourceExe),
    sources:Object.fromEntries(['cpp/src/planner.cpp','cpp/src/model.cpp','cpp/src/reader.cpp','cpp/src/semantics.cpp','cpp/src/weapons.cpp','cpp/include/gamebot/model.hpp','cpp/include/gamebot/planner.hpp'].map(p=>[p,hash(p)]))},
  limits:['One seed and one episode per exact identity. Boss parts and separate phases are not independent full boss fights.',
    'arena_spawn rows measure native entities in an original room, not the full scripted boss event.',
    'Setup or context failures are not counted as zero-damage results. Death and clear shorten exposure.'],cases:[]};
report.provenance.geometry_files=Object.fromEntries(['gamebot_monster_geometry.json','gamebot_monster_geometry_patterns.json'].map(p=>[p,hash(join(out,p))]));
if(option('reader','')&&existsSync(readerSourceReport)) {
  report.provenance.sources=JSON.parse(readFileSync(readerSourceReport,'utf8')).provenance.sources;
  report.provenance.reader_source_report=readerSourceReport;
}
const moves=[[0,0],[0,-1],[1,-1],[1,0],[1,1],[0,1],[-1,1],[-1,0],[-1,-1]],fires=['none','up','right','down','left'];
class Reader {
  constructor(label) {
    this.child=spawn(join(out,'ExternalReader.exe'),[join(out,'runtime-semantics.json')],{windowsHide:true,stdio:['pipe','pipe','pipe']});
    createInterface({input:this.child.stdout}).on('line',line=>{const p=this.pending;if(!p)return;this.pending=null;clearTimeout(p.timer);try{p.resolve(JSON.parse(line));}catch(e){p.reject(e);}});
    this.child.stderr.on('data',b=>appendFileSync(join(out,`${label}-reader.log`),b));
    const fail=e=>{if(this.pending){clearTimeout(this.pending.timer);this.pending.reject(e);this.pending=null;}};
    this.child.on('error',fail);this.child.on('exit',c=>fail(Error(`Reader exited ${c}`)));
  }
  capture(address){return new Promise((resolve,reject)=>{const timer=setTimeout(()=>{this.pending=null;this.child.kill();reject(Error('Reader timeout'));},30000);this.pending={resolve,reject,timer};this.child.stdin.write(JSON.stringify({pid:address.pid,host_base:address.host_base,length:address.length,source_exe:sourceExe,policy:'quick',diagnostics})+'\n');});}
  async close(){if(this.child.exitCode!==null)return;await new Promise(r=>{this.child.once('exit',r);this.child.stdin.end();});}
}
function summarize() {
  const valid=report.cases.filter(c=>c.status==='executed'),failed=report.cases.filter(c=>c.status==='error');
  const played=valid.reduce((n,c)=>n+c.frames,0)/30;
  report.summary={completed:report.cases.filter(c=>c.status!=='running').length,measured:valid.length,errors:failed.length,
    unhurt:valid.filter(c=>c.damage_half_hearts===0).length,hurt:valid.filter(c=>c.damage_half_hearts>0).length,
    deaths:valid.filter(c=>c.dead).length,clears:valid.filter(c=>c.cleared).length,full_minute:valid.filter(c=>c.frames===1800).length,
    full_duration:valid.filter(c=>c.frames===steps).length,
    hurt_events:valid.reduce((n,c)=>n+c.hurt_events,0),damage_half_hearts:valid.reduce((n,c)=>n+c.damage_half_hearts,0),
    exposure_seconds:played,damage_hearts_per_observed_minute:played?valid.reduce((n,c)=>n+c.damage_half_hearts/2,0)/(played/60):null,
    original_room:valid.filter(c=>c.scenario.kind==='original_room').length,arena_spawn:valid.filter(c=>c.scenario.kind==='arena_spawn').length};
  writeFileSync(join(out,'report.json'),JSON.stringify(report,null,2)+'\n');
}
let next=0;
async function run(entry) {
  const sc=scenario(entry),row={identity:entry.key,name:entry.name,config_name:entry.configName,scenario:sc,status:'running',frames:0,
    damage_half_hearts:0,hurt_events:0,cooldown_hits:0,dead:false,cleared:false,fire_frames:0,invalid_decisions:0,
    target_hp_drop:0,attack_entities_seen:0,peak_projectiles:0,peak_lasers:0,damage_events:[],native_damage_events:[]};
  report.cases.push(row);summarize();const start=performance.now();
  const env=new EngineEnvironment({seed,room:sc.room,targetNPC:entry,startupCommands:sc.commands,catalogMode:true,contextMode:true,contextActivateFrame:60,
    noRender:true,externalValidation:true,engineDriver:resolve('research/external-validation/damage-oracle/boot_integration.mjs'),
    maxSteps:steps+10,ignoreRoomClear:true,setupTimeoutMs:45000});
  const reader=new Reader(entry.key);let observation,truth,lastHealth,lastCooldown,previousEnemies=new Map(),address,initialClock;
  const seenAttacks=new Set(),states=new Set();
  const diagnosticRing=[];let lastDiagnosticClock=-1,postHitUntil=-1;
  function consume(t) {
    if(!t.oracle_available)throw Error('Native damage oracle unavailable');
    for(const e of t.native_damage)if(e.target_type===1&&e.health_before>e.health_after)row.native_damage_events.push(e);
  }
  try {
    observation=await env.reset();row.run_directory=env.runDirectory;
    truth=await env.request('externalTruth');address=truth;
    const initial=await reader.capture(address);initialClock=initial.clock;
    if(!initial.valid||initial.pid!==env.child.pid||initial.reader_pid===initial.pid)throw Error(`Invalid initial Reader: ${initial.error}`);
    const targets=initial.enemies.filter(e=>key(e)===entry.key&&alive(e));
    if(!targets.length)throw Error('Exact target identity not present in the loaded scene');
    if(initial.health!==6)throw Error(`Starting health ${initial.health}; expected untouched default 6`);
    row.initial={clock:initial.clock,health:initial.health,width:initial.width,height:initial.height,shape:initial.shape,
      target:targets,enemies:initial.enemies};
    lastHealth=observation.player.health;lastCooldown=observation.player.damageCooldown;
    for(let tick=0;tick<steps;tick++) {
      if(performance.now()-start>180000)throw Error('Per-case wall time limit exceeded');
      if(tick&&tick%30===0){truth=await env.request('externalTruth');consume(truth);address=truth;}
      const f=tick?await reader.capture(address):initial;
      if(!f.valid||f.clock!==observation.frame||!f.rpm_calls)throw Error(`Invalid or mismatched external frame ${f.error??''}`);
      for(const e of f.enemies) {
        const id=`${e.address}:${e.seed}`,old=previousEnemies.get(id);
        if(key(e)===entry.key){states.add(e.state);if(old)row.target_hp_drop+=Math.max(0,old.hp-Math.max(0,e.hp));}
      }
      previousEnemies=new Map(f.enemies.map(e=>[`${e.address}:${e.seed}`,e]));
      for(const e of observation.entities)if((e.type===7||e.type===9)&&alive(e))seenAttacks.add(`${e.address}:${e.seed}`);
      row.peak_projectiles=Math.max(row.peak_projectiles,f.projectiles);row.peak_lasers=Math.max(row.peak_lasers,f.lasers);
      const d=f.decision,move=moves[d.valid&&!d.stop?d.move:0],fire=noFire?'none':(d.valid&&!d.stop?fires[d.fire]:'none');
      if(diagnostics&&windowsAll)appendFileSync(join(out,entry.key+'-windows.jsonl'),JSON.stringify(f)+'\n');
      if(diagnostics&&!windowsAll){diagnosticRing.push(f);if(diagnosticRing.length>32)diagnosticRing.shift();}
      row.fire_frames+=fire!=='none';row.invalid_decisions+=!d.valid||d.stop;
      const step=await env.step({moveX:move[0],moveY:move[1],fire});observation=step.observation;row.frames++;
      const hp=observation.player?.health??lastHealth,loss=Math.max(0,lastHealth-hp),cooldown=observation.player?.damageCooldown;
      row.damage_half_hearts+=loss;row.hurt_events+=loss>0;row.cooldown_hits+=isCooldownHit(lastCooldown,cooldown);
      if(diagnostics&&!windowsAll&&(loss||tick<4||observation.frame<=postHitUntil)) {
        if(loss)postHitUntil=observation.frame+10;
        for(const item of diagnosticRing)if(item.clock>lastDiagnosticClock) {
          appendFileSync(join(out,entry.key+'-windows.jsonl'),JSON.stringify(item)+'\n');lastDiagnosticClock=item.clock;
        }
      }
      if(loss)row.damage_events.push({tick:row.frames,clock:observation.frame,seconds:row.frames/30,before:lastHealth,after:hp,loss});
      lastHealth=hp;lastCooldown=cooldown;
      row.dead=!!observation.dead||hp<=0;
      row.cleared=!!observation.cleared&&!observation.entities.some(e=>e.type>=10&&e.type<1000&&!e.friendly&&alive(e)&&e.hp>0);
      if(tick%30===0||loss||row.dead||row.cleared)appendFileSync(join(out,entry.key+'.jsonl'),JSON.stringify({tick:row.frames,clock:observation.frame,
        health:hp,loss,move:d.move,fire:d.fire,target:d.target,threats:d.threats,reason:d.reason,projectiles:f.projectiles,lasers:f.lasers,
        target_hp:f.enemies.filter(e=>key(e)===entry.key).map(e=>e.hp)})+'\n');
      if(row.dead||row.cleared)break;
    }
    truth=await env.request('externalTruth');consume(truth);
    row.final={clock:truth.frame.clock,health:lastHealth,dead:row.dead,cleared:row.cleared};
    row.native_damage_half_hearts=row.native_damage_events.reduce((n,e)=>n+e.health_before-e.health_after,0);
    row.native_hurt_events=row.native_damage_events.length;
    if(row.native_damage_half_hearts!==row.damage_half_hearts)throw Error(`Damage counters disagree: native ${row.native_damage_half_hearts}, health ${row.damage_half_hearts}`);
    row.status='executed';row.end_reason=row.dead?'death':row.cleared?'clear':`${seconds}_second_limit`;
    row.seconds=row.frames/30;row.target_states=[...states].sort((a,b)=>a-b);row.attack_entities_seen=seenAttacks.size;
    row.damage_hearts=row.damage_half_hearts/2;row.initial_clock=initialClock;
  }catch(e){row.status='error';row.error=e.stack??String(e);}
  finally{await reader.close();await env.close();row.wall_seconds=(performance.now()-start)/1000;summarize();}
  console.log(JSON.stringify({identity:entry.key,name:entry.name,status:row.status,seconds:row.seconds,hits:row.hurt_events,damage:row.damage_half_hearts,dead:row.dead,cleared:row.cleared,error:row.error?.split('\n')[0]}));
}
await Promise.all(Array.from({length:workers},async()=>{for(;;){const i=next++;if(i>=entries.length)return;await run(entries[i]);}}));
report.status='complete';report.finished_at=new Date().toISOString();summarize();
const columns=['identity','name','status','seconds','hurt_events','damage_half_hearts','damage_hearts','dead','cleared','end_reason','target_hp_drop','attack_entities_seen','fire_frames'];
writeFileSync(join(out,'results.csv'),'\uFEFF'+columns.join(',')+'\r\n'+report.cases.map(r=>columns.map(k=>JSON.stringify(r[k]??'')).join(',')).join('\r\n')+'\r\n');
console.log(JSON.stringify({output:out,summary:report.summary}));
