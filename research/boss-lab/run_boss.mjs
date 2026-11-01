import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
import {createHash} from 'node:crypto';
import {join} from 'node:path';
import {EngineEnvironment} from './offline/engine_environment.mjs';
const option=(name,fallback)=>process.argv.find(a=>a.startsWith(`--${name}=`))?.slice(name.length+3)??fallback;
const boss=option('boss','Delirium');
const seed=option('seed','3JY1 6FLR');
const room=option('room','s.boss.3414');
const targetNPC=Number(option('target','412'));
const steps=Number(option('steps','18000'));
const debug=option('debug','false')==='true';
const stopOnHit=option('stop-on-hit','false')==='true';
const output=option('output','delirium-baseline.json');
const parameters=JSON.parse(option('parameters','{}'));
const policySha256=createHash('sha256').update(readFileSync(new URL('./offline/planner_policy.wasm',import.meta.url))).digest('hex');
// Build snapshots keep concurrent experiments bound to their original policy.
const snapshotModule=new URL(`./versions/${policySha256}/offline/planner_policy.mjs`,import.meta.url);
readFileSync(snapshotModule); // A missing build snapshot is an explicit setup error.
process.env.BOSS_POLICY_MODULE=snapshotModule.href;
const history=option('history','false')==='true';
const stage=Number(option('stage','12'));
// Read-only native callback: returning nil preserves the original damage.
const preRoomCommands=["lua BossLabObserver=RegisterMod('BossLabObserver',1) BossLabObserver:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG,function(_,e,a,f,s,c) if e.Type==1 then local x=s.Entity Isaac.DebugString('[boss-hit] frame='..Game():GetFrameCount()..' amount='..a..' flags='..f..' source='..(x and (x.Type..'.'..x.Variant..'.'..x.SubType) or 'nil')..' player='..e.Position.X..','..e.Position.Y..' sourcepos='..(x and (x.Position.X..','..x.Position.Y) or 'nil')) end end)"];
const env=new EngineEnvironment({seed,stage,room:history?'s.boss.1010':room,targetNPC:history?20:targetNPC,maxSteps:steps,debugFlags:debug?[3]:[],preRoomCommands,setupTrace:true});
const started=performance.now();
let report={boss,seed,stage,room,targetNPC,steps,parameters,history,stopOnHit,debugInvulnerable:debug,pass:false};
report.policySha256=policySha256;report.policyModule=snapshotModule.href;
report.inputHashes=Object.fromEntries(['cpp/src/planner.cpp','cpp/include/gamebot/model.hpp',
  'offline/planner_policy.wasm','offline/engine_worker.mjs','offline/planner_frame.mjs','runtime/boot.wasm']
  .map(path=>[path,createHash('sha256').update(readFileSync(new URL(path,import.meta.url))).digest('hex')]));
try{
  let initial=await env.reset();
  report.encounterHistory=[];
  if(history) {
    report.encounterHistory.push({target:20,frame:initial.frame});
    for(const [room,target] of [['s.boss.1030',28],['s.boss.2010',67],['s.boss.2030',69],['s.boss.3300',68],['s.boss.4010',63]]) {
      initial=await env.request('travel',{room,target});
      report.encounterHistory.push({target,frame:initial.frame});
    }
    initial=await env.request('travel',{room,target:targetNPC});
  }
  report.initial={frame:initial.frame,room:initial.room,game:initial.game,player:initial.player,
    entities:initial.entities.filter(e=>e.type>=10&&e.type<1000)};
  const result=await env.rollout({steps,parameters,stopOnHit,recordEntityTimeline:[targetNPC,7,9,1000]});
  const summary={...result.summary};delete summary.lastDecision;
  report={...report,...summary,truncated:result.truncated,
    pass:summary.cleared===true&&summary.dead===false&&summary.hitCount===0&&summary.damageTaken===0&&!result.truncated};
}catch(error){report.error=error.stack??error.message;process.exitCode=1;}
finally{
  report.runDirectory=env.runDirectory;report.wallMs=performance.now()-started;
  if(env.runDirectory){
    const log=readFileSync(join(env.runDirectory,'engine.log'),'utf8');
    report.nativeDamageEvents=log.split(/\r?\n/).filter(line=>/\[boss-hit\] frame=\d/.test(line));
    report.observedDeliriumForms=[...new Set([...log.matchAll(/Changed Delirium form to (\d+:\d+)/g)].map(m=>m[1]))];
    if(report.nativeDamageEvents.length)report.pass=false;
  }
  mkdirSync(new URL('./results/',import.meta.url),{recursive:true});
  writeFileSync(new URL(`./results/${output}`,import.meta.url),JSON.stringify(report,null,2));
  console.log(JSON.stringify(Object.fromEntries(Object.entries(report).filter(([k,v])=>!v||typeof v!=='object'))));
  await env.close();
}
