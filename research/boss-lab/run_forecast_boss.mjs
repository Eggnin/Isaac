import {readFileSync,writeFileSync} from 'node:fs';
import {createHash} from 'node:crypto';
import {EngineEnvironment} from './offline/engine_environment.mjs';
import {analyzeNativeFailure} from './analyze_native_failure.mjs';
const option=(name,fallback)=>process.argv.find(a=>a.startsWith(`--${name}=`))?.slice(name.length+3)??fallback;
const seed=option('seed','3JY1 6FLR'),steps=Number(option('steps','18000'));
const output=option('output','delirium-native-forecast.json');
const parameters=JSON.parse(option('parameters','{"beam_width":24,"stages":6,"horizon":1.2,"navigation_beam_width":24,"navigation_stages":6,"navigation_horizon":1.2,"delirium_margin":48}'));
if(option('native-player-motion','false')==='true')parameters.native_player_motion=true;
if(option('native-attack-timing','false')==='true')parameters.native_attack_timing=true;
const hash=option('policy-sha',createHash('sha256').update(readFileSync(new URL('./offline/planner_policy.wasm',import.meta.url))).digest('hex'));
if(createHash('sha256').update(readFileSync(new URL(`./versions/${hash}/offline/planner_policy.wasm`,import.meta.url))).digest('hex')!==hash)
  throw new Error('archived policy hash mismatch');
const diagnoseHit=option('diagnose-hit','false')==='true';
const engineDirectory=option('engine','frame-runtime');
const damageCalibration=JSON.parse(readFileSync(new URL('./invulnerability-calibration.json',import.meta.url))).calibration;
process.env.BOSS_POLICY_MODULE=new URL(`./versions/${hash}/offline/planner_policy.mjs`,import.meta.url).href;
const env=new EngineEnvironment({seed,stage:12,room:'s.boss.1010',targetNPC:20,frameRuntime:true,frameRuntimeDirectory:engineDirectory,maxSteps:steps+1,damageCalibration});
const report={pass:false,boss:'Delirium',seed,parameters,policySha256:hash,damageCalibration,
  engine:JSON.parse(readFileSync(new URL(`./${engineDirectory}/manifest.json`,import.meta.url))),
  scope:'native-engine-assisted offline control; forecasts are hypothetical, only committed live steps count'};
try{
  await env.reset();
  for(const [room,target] of [['s.boss.1030',28],['s.boss.2010',67],['s.boss.2030',69],['s.boss.3300',68],['s.boss.4010',63],['s.boss.3414',412]])
    await env.request('travel',{room,target});
  const initial=await env.request('enable_frames');report.initial={frame:initial.frame,health:initial.player.health};
  const result=await env.request('frame_rollout',{steps,parameters,horizon:Number(option('forecast','12')),
    prefire:option('prefire','true')==='true',stopOnHit:option('stop-on-hit','true')==='true',
    alwaysSearch:option('always-search','false')==='true',verifyProposal:option('verify-proposal','false')==='true',disableSearch:option('no-search','false')==='true',
    searchClearance:Number(option('search-clearance','4')),commitFrames:Number(option('commit','1')),
    turnSearch:option('turn-search','false')==='true',recordMotion:option('record-motion','false')==='true',
    settleEntry:option('settle-entry',parameters.native_player_motion?'true':'false')==='true',retainAnchor:diagnoseHit,
    recordActions:option('record-actions',diagnoseHit?'true':'false')==='true'});
  Object.assign(report,result);
  if(diagnoseHit)report.failureAnalysis=await analyzeNativeFailure(env,report);
}catch(error){report.error=error.stack??error.message;process.exitCode=1;}
finally{
  report.runDirectory=env.runDirectory;
  writeFileSync(new URL(`./results/${output}`,import.meta.url),JSON.stringify(report,null,2));
  console.log(JSON.stringify(Object.fromEntries(Object.entries(report).filter(([k,v])=>!v||typeof v!=='object'))));
  await env.close();
}
