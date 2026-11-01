import {readFileSync,writeFileSync} from 'node:fs';
import {EngineEnvironment} from './offline/engine_environment.mjs';
import {stateHash} from './offline/canonical_state.mjs';
import {join} from 'node:path';
const source=process.argv[2];
const inspectNative=process.argv.includes('--inspect-native');
const inspectNext=process.argv.includes('--inspect-next-step');
const engineDirectory=process.argv.find(a=>a.startsWith('--engine='))?.slice(9)??'frame-runtime-heap400';
const probeFire=process.argv.find(a=>a.startsWith('--probe-fire='))?.slice(13)??'none';
if(!source)throw new Error('Usage: node replay_forecast_actions.mjs path/to/battle-report.json');
const battle=JSON.parse(readFileSync(source,'utf8'));
const home=battle.entryFrame!==undefined;
const partial=home&&!battle.combat;
const rollout=home?(battle.combat??JSON.parse(readFileSync(join(battle.runDirectory,'native-rollout-partial.json'),'utf8'))):battle;
if((!home&&battle.boss!=='Delirium')||!rollout.actionJournal)throw new Error('Requires a Home or Delirium report with a committed action journal');
const records=readFileSync(rollout.actionJournal,'utf8').trim().split(/\r?\n/).filter(Boolean).map(JSON.parse);
if(records.some(record=>!record.canonicalHash))throw new Error('Journal predates cross-process canonical hashes; retain it for same-process diagnostics');
const env=new EngineEnvironment({seed:battle.seed??'3JY1 6FLR',
  debugFlags:battle.mode==='debug-3-diagnostic'?[3]:[],
  ...(home?{stage:'13a',room:'d.4',targetNPC:{type:960,variant:4},endOnClear:false,eventBossTypes:[950,951]}:
    {stage:12,room:'s.boss.1010',targetNPC:20}),
  frameRuntime:true,frameRuntimeDirectory:engineDirectory,maxSteps:records.length+600,
  damageCalibration:rollout.damageCalibration});
const report={pass:false,scope:'native committed-input replay and optional post-prefix probe; not a new battle pass',source,partial,engineDirectory,frames:0};
try {
  await env.reset();
  if(!home)for(const [room,target] of [['s.boss.1030',28],['s.boss.2010',67],['s.boss.2030',69],['s.boss.3300',68],['s.boss.4010',63],['s.boss.3414',412]])
    await env.request('travel',{room,target});
  const initial=await env.request('enable_frames');
  if(home) {
    for(let tick=0;tick<600;tick++) {
      const observation=await env.peek(),tv=observation.entities.find(e=>e.type===960&&e.variant===4);
      if(observation.entities.some(e=>e.type===950))break;
      const near=tv&&Math.hypot(tv.position.x-observation.player.position.x,tv.position.y-observation.player.position.y)>40;
      await env.step(near?{moveX:Math.sign(tv.position.x-observation.player.position.x),moveY:Math.sign(tv.position.y-observation.player.position.y),fire:'none'}:{move:'none',fire:'none'});
    }
    if((await env.peek()).frame!==battle.entryFrame)throw new Error('Home native TV event entry mismatch');
  }else if(initial.frame!==battle.initial.frame||initial.player.health!==battle.initial.health)throw new Error('Replay entry mismatch');
  for(const [index,record] of records.entries()) {
    if(inspectNative&&index===records.length-1)report.nativeBeforeFinalStep=await env.request('peek_frame');
    const step=await env.step(record.action);
    if(record.frame!==step.observation.frame||record.canonicalHash!==stateHash(step.observation))throw new Error(`Replay diverged at frame ${record.frame}`);
    report.frames++;
  }
  if(report.frames!==rollout.frames)throw new Error('Journal does not cover the entire reported battle');
  if(inspectNative)report.nativeAfterFinalStep=await env.request('peek_frame');
  report.pass=true;
  if(inspectNext) {
    report.probeAction={move:'none',fire:probeFire};
    try{report.nextStep=await env.step(report.probeAction);}
    catch(error){report.nextStepError=error.stack??String(error);}
    try{report.nativeObservationAfterNextAttempt=await env.peek();}
    catch(error){report.nativeObservationInspectionError=error.stack??String(error);}
    try{report.nativeAfterNextAttempt=await env.request('peek_frame');}
    catch(error){report.nativeInspectionError=error.stack??String(error);}
  }
} catch(error){report.error=error.stack??String(error);process.exitCode=1;}
finally {
  report.runDirectory=env.runDirectory;
  writeFileSync(source.replace(/\.json$/,'-input-replay.json'),JSON.stringify(report,null,2));
  console.log(JSON.stringify(Object.fromEntries(Object.entries(report).filter(([key])=>!key.startsWith('native')))));await env.close();
}
