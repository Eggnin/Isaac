import {readFileSync,writeFileSync} from 'node:fs';
import {createHash} from 'node:crypto';
import {EngineEnvironment} from './offline/engine_environment.mjs';
import {analyzeNativeFailure} from './analyze_native_failure.mjs';
const hash=createHash('sha256').update(readFileSync(new URL('./offline/planner_policy.wasm',import.meta.url))).digest('hex');
process.env.BOSS_POLICY_MODULE=new URL(`./versions/${hash}/offline/planner_policy.mjs`,import.meta.url).href;
const damageCalibration=JSON.parse(readFileSync(new URL('./invulnerability-calibration.json',import.meta.url))).calibration;
const oracle=process.argv.includes('--oracle');
const attackOracle=process.argv.includes('--attack-oracle');
const spawnTrace=process.argv.includes('--spawn-trace');
const damageTrace=process.argv.includes('--damage-trace');
const output=process.argv.find(a=>a.startsWith('--output='))?.slice(9)??`home-battle-${spawnTrace?'spawn-trace':oracle?'oracle':'diagnostic'}.json`;
const forecastHorizon=Number(process.argv.find(a=>a.startsWith('--forecast='))?.slice(11)??0);
const commitFrames=Number(process.argv.find(a=>a.startsWith('--commit='))?.slice(9)??3);
const combatSteps=Number(process.argv.find(a=>a.startsWith('--steps='))?.slice(8)??6000);
const failureLead=Number(process.argv.find(a=>a.startsWith('--lead='))?.slice(7)??60);
const candidateOption=process.argv.find(a=>a.startsWith('--candidate-index='))?.slice(18);
const experimentalAura=process.argv.includes('--aura');
const nativeConsecration=process.argv.includes('--consecration');
const godMode=process.argv.includes('--godmode');
const continueAfterHit=process.argv.includes('--continue-on-hit');
const extraParameters=JSON.parse(process.argv.find(a=>a.startsWith('--parameters='))?.slice(13)??'{}');
const damageObserver='lua BossLabHomeOracle=RegisterMod("BossLabHomeOracle",1) BossLabHomeOracle:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG,function(_,e,a,f,s,c) if e.Type==1 then local x=s and s.Entity Isaac.DebugString(string.format("[home-hit] frame=%d amount=%s flags=%s source=%s.%s.%s size=%s",Game():GetFrameCount(),tostring(a),tostring(f),tostring(x and x.Type),tostring(x and x.Variant),tostring(x and x.SubType),tostring(x and x.Size))) end end) Isaac.DebugString("[home-oracle-ready]")';
const attackObserver='lua BossLabAimOracle=RegisterMod("BossLabAimOracle",1) BossLabAimOracle:AddCallback(ModCallbacks.MC_PRE_TEAR_COLLISION,function(_,t,c,l) if c.Type==950 then Isaac.DebugString(string.format("[home-tear-collision] frame=%d tear=%d variant=%d hp=%s",Game():GetFrameCount(),t.InitSeed,c.Variant,tostring(c.HitPoints))) end end) Isaac.DebugString("[home-aim-oracle-ready]")';
const env=new EngineEnvironment({stage:'13a',room:'d.4',targetNPC:{type:960,variant:4},frameRuntime:true,
  frameRuntimeDirectory:damageTrace?'frame-runtime-damage-trace':spawnTrace?'frame-runtime-spawn-trace':'frame-runtime-heap400',endOnClear:false,eventBossTypes:[950,951],maxSteps:Math.max(8000,combatSteps+600),damageCalibration,
  debugFlags:godMode?[3]:[],preRoomCommands:[...(oracle?[damageObserver]:[]),...(attackOracle?[attackObserver]:[])]});
const report={pass:false,acceptancePending:true,scope:'native Home battle diagnostic; complete Dogma/horsemen/Beast acceptance pending',
  mode:godMode?'debug-3-diagnostic':'normal',continueAfterHit,seed:env.options.seed,policySha256:hash,experimentalAura,oracle,spawnTrace,damageTrace,attackOracle};
try{
  report.initial=await env.reset();await env.request('enable_frames');
  report.entryFrames=[];
  for(let tick=0;tick<600;tick++){
    const observation=await env.peek(),tv=observation.entities.find(e=>e.type===960&&e.variant===4);
    if(observation.entities.some(e=>e.type===950)){report.entryFrame=observation.frame;break;}
    const near=tv&&Math.hypot(tv.position.x-observation.player.position.x,tv.position.y-observation.player.position.y)>40;
    const step=await env.step(near?{moveX:Math.sign(tv.position.x-observation.player.position.x),moveY:Math.sign(tv.position.y-observation.player.position.y),fire:'none'}:{move:'none',fire:'none'});
    report.entryFrames.push({frame:step.observation.frame,health:step.observation.player.health});
  }
  if(report.entryFrame===undefined)throw new Error('native TV event did not start Dogma');
  report.combat=await env.request('frame_rollout',{steps:combatSteps,disableSearch:forecastHorizon===0,
    horizon:forecastHorizon||12,verifyProposal:forecastHorizon>0,turnSearch:forecastHorizon>0,commitFrames,
    diagnostic:true,stopOnHit:!continueAfterHit,recordActions:true,trackEventPhases:true,endOnBeastRemoved:true,
    prefire:true,bossTypes:[950,951],retainAnchor:true,anchorInterval:120,
    parameters:{dt:1/30,beam_width:24,stages:6,horizon:1.2,native_player_motion:true,experimental_aura:experimentalAura,
      native_consecration:nativeConsecration,...extraParameters}});
  report.final=await env.request('peek_frame');
  if(attackOracle) {
    const log=readFileSync(new URL(`file:///${env.runDirectory.replaceAll('\\','/')}/engine.log`),'utf8');
    report.nativeTearCollisions=log.split(/\r?\n/).filter(line=>/\[home-tear-collision\] frame=\d/.test(line));
  }
  if(oracle){
    const log=readFileSync(new URL(`file:///${env.runDirectory.replaceAll('\\','/')}/engine.log`),'utf8');
    report.nativeDamageEvents=log.split(/\r?\n/).filter(line=>/\[home-hit\] frame=\d/.test(line));
    if(spawnTrace)report.nativeSpawnEvents=log.split(/\r?\n/).filter(line=>line.startsWith('[boss-spawn19'));
    if(damageTrace)report.nativeDamageSites=log.split(/\r?\n/).filter(line=>line.startsWith('[boss-damage-'));
    if(report.combat.hitCount>0&&!report.nativeDamageEvents.length)throw new Error('health hit observed but native damage oracle produced no event');
  }
  if(!oracle&&!continueAfterHit)report.failureAnalysis=await analyzeNativeFailure(env,report.combat,{lead:failureLead,recordExposure:true,
    candidateIndex:candidateOption===undefined?null:Number(candidateOption)});
  console.log(JSON.stringify({pass:false,entryFrame:report.entryFrame,frames:report.combat.frames,
    hits:report.combat.hitCount,health:report.combat.health,fireFrames:report.combat.fireFrames,
    remaining:report.combat.remainingBosses}));
}catch(error){report.error=error.stack??String(error);console.error(report.error);process.exitCode=1;}
finally{report.runDirectory=env.runDirectory;writeFileSync(new URL(`./results/${output}`,import.meta.url),JSON.stringify(report,null,2));await env.close();}
