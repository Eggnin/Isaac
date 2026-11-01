import {spawn} from 'node:child_process';
import {createInterface} from 'node:readline';
import {appendFileSync,existsSync,mkdirSync,writeFileSync} from 'node:fs';
import {dirname,join,resolve} from 'node:path';
import {fileURLToPath} from 'node:url';
import {EngineEnvironment} from '../offline/engine_environment.mjs';
import {isCooldownHit} from '../offline/damage_tracking.mjs';

const here=dirname(fileURLToPath(import.meta.url));
const option=(name,fallback)=>process.argv.find(arg=>arg.startsWith(`--${name}=`))?.slice(name.length+3)??fallback;
const output=resolve(option('output',`validation/pressure-plates-${Date.now()}`));
const steps=Number(option('steps','1200'));
const seed=option('seed','3JY1 6FLR');
const room=option('room','d.315');
const debugFlag=option('debug','3');
if(existsSync(output))throw new Error(`Use a new evidence directory: ${output}`);
mkdirSync(output,{recursive:true});

const moves=[[0,0],[0,-1],[1,-1],[1,0],[1,1],[0,1],[-1,1],[-1,0],[-1,-1]];
const fires=['none','up','right','down','left'];
class Reader {
  constructor(){
    this.child=spawn(join(here,'ExternalReader.exe'),[],{windowsHide:true,stdio:['pipe','pipe','pipe']});
    createInterface({input:this.child.stdout}).on('line',line=>{
      const pending=this.pending;if(!pending)return;
      this.pending=null;clearTimeout(pending.timer);
      try{pending.resolve(JSON.parse(line));}catch(error){pending.reject(error);}
    });
    this.child.stderr.on('data',chunk=>appendFileSync(join(output,'reader.stderr.log'),chunk));
    this.child.on('error',error=>this.#reject(error));
    this.child.on('exit',code=>this.#reject(new Error(`ExternalReader exited ${code}`)));
  }
  #reject(error){if(!this.pending)return;clearTimeout(this.pending.timer);this.pending.reject(error);this.pending=null;}
  capture(truth){
    return new Promise((resolvePromise,reject)=>{
      const timer=setTimeout(()=>{this.pending=null;this.child.kill();reject(new Error('ExternalReader timeout'));},30000);
      this.pending={resolve:resolvePromise,reject,timer};
      this.child.stdin.write(JSON.stringify({
        pid:truth.pid,host_base:truth.host_base,length:truth.length,
        source_exe:'D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe',
        policy:'phase4',
      })+'\n');
    });
  }
  async close(){
    if(this.child.exitCode!==null)return;
    await new Promise(resolvePromise=>{this.child.once('exit',resolvePromise);this.child.stdin.end();});
  }
}

const initialPlateStates=observation=>observation.grid
  .filter(cell=>cell.type===20&&cell.variant===0)
  .map(cell=>({x:cell.x,y:cell.y,state:cell.state}));
const mechanismObservation=observation=>observation.entities
  .filter(entity=>entity.type>=10&&entity.type<1000&&entity.invulnerable)
  .map(entity=>({
    type:entity.type,variant:entity.variant,subtype:entity.subtype,seed:entity.seed,
    active:entity.active,exists:entity.exists,dead:entity.dead,
    state:entity.state,collision:entity.collision,invulnerable:entity.invulnerable,hp:entity.hp,
  }));

const report={
  format:'isaac-pressure-plate-mechanism-v1',steps,seed,room,status:'running',
  scope:debugFlag
    ?`Original-engine mechanism routing on ${room}. Startup debug ${debugFlag} keeps the probe alive; health and hit counts are not no-damage evidence.`
    :`Original-engine pressure-plate routing on ${room} without debug protection.`,
  assertions:{
    ordinaryPlatesPresent:false,allPlatesReachedState3:false,
    clearFlag:false,pressureFlag:false,roomCleared:false,
    invulnerableMechanismsNeverTargeted:false,invulnerableMechanismHpUnchanged:false,
    postPressureNoMechanismThreat:false,
    noHealthDamage:null,noHitEvents:null,
  },
  counters:{invulnerableMechanismTargetFrames:0,invulnerableMechanismHpDamage:0,
    postPressureMechanismThreatFrames:0,
    planningFrames:0,healthDamage:0,hitEvents:0},
  plateTransitions:[],trace:[],final:null,
};
const save=()=>writeFileSync(join(output,'report.json'),JSON.stringify(report,null,2)+'\n');
const tracePath=join(output,'trace.jsonl');
const reader=new Reader();
const env=new EngineEnvironment({
  seed,room,targetNPC:{type:-1,variant:-1,subtype:-1},catalogMode:true,noRender:true,setupTimeoutMs:90000,
  startupCommands:['seed '+seed,'stage 10','goto '+room,...(debugFlag?['debug '+debugFlag]:[])],
  maxSteps:steps+20,externalValidation:true,
});
let observation,terminated=false,previousMechanismHp=new Map(),previousCooldown=null;
try {
  observation=await env.reset();
  previousCooldown=observation.player.damageCooldown;
  report.run_directory=env.runDirectory;
  report.initial={
    frame:observation.frame,plates:initialPlateStates(observation),
    clear_flags:observation.room.clearFlags,cleared:observation.cleared,
    mechanisms:mechanismObservation(observation),
  };
  for(const mechanism of observation.entities)if(mechanism.invulnerable)
    previousMechanismHp.set(`${mechanism.address}:${mechanism.seed}`,mechanism.hp);
  report.assertions.ordinaryPlatesPresent=report.initial.plates.length>0;
  for(let tick=0;tick<steps;tick++){
    const truth=await env.request('externalTruth');
    const external=await reader.capture(truth);
    if(!external.valid||external.error)throw new Error(`invalid external frame: ${external.error??''}`);
    const decision=external.decision;
    const target=external.entities.find(entity=>entity.address===decision.target);
    if(target?.invulnerable)++report.counters.invulnerableMechanismTargetFrames;
    for(const mechanism of observation.entities)if(mechanism.invulnerable){
      const key=`${mechanism.address}:${mechanism.seed}`;
      const previous=previousMechanismHp.get(key)??mechanism.hp;
      report.counters.invulnerableMechanismHpDamage+=Math.max(0,previous-mechanism.hp);
      previousMechanismHp.set(key,mechanism.hp);
    }
    if(external.pressure_plates_triggered){
      const invulnerableSources=new Set(external.entities.filter(entity=>entity.invulnerable)
        .map(entity=>entity.address));
      report.counters.postPressureMechanismThreatFrames+=
        external.threats.some(threat=>invulnerableSources.has(threat.source))?1:0;
    }
    const action={
      moveX:moves[decision.move][0],
      moveY:moves[decision.move][1],
      fire:fires[decision.fire],
    };
    if(!decision.valid||decision.stop){action.moveX=0;action.moveY=0;action.fire='none';}
    const next=await env.step(action);
    const nextCooldown=next.observation.player?.damageCooldown;
    report.counters.healthDamage+=Math.max(0,observation.player.health-(next.observation.player?.health??observation.player.health));
    if(isCooldownHit(previousCooldown,nextCooldown))++report.counters.hitEvents;
    previousCooldown=nextCooldown;
    const beforePlates=initialPlateStates(observation);
    observation=next.observation;
    const afterPlates=initialPlateStates(observation);
    for(let index=0;index<afterPlates.length;index++){
      if(beforePlates[index]?.state!==afterPlates[index]?.state){
        report.plateTransitions.push({
          frame:observation.frame,plate:afterPlates[index],
          from:beforePlates[index]?.state,to:afterPlates[index]?.state,
        });
      }
    }
    const frame={tick,frame:observation.frame,player:observation.player.position,health:observation.player.health,
      clear_flags:external.clear_flags,cleared:external.cleared,pressure_plates_triggered:external.pressure_plates_triggered,
      decision:{move:decision.move,fire:decision.fire,target:decision.target,reason:decision.reason,
        pressure_plate_mode:decision.pressure_plate_mode,pressure_plates_complete:decision.pressure_plates_complete,
        pressure_plates_remaining:decision.pressure_plates_remaining,pressure_plate_goal:decision.pressure_plate_goal,
        cause:decision.analysis?.cause,valid_final:decision.analysis?.valid_final,
        zero_hit_final:decision.analysis?.zero_hit_final,terrain_rejected:decision.analysis?.terrain_rejected,
        pruned_zero_hit:decision.analysis?.pruned_zero_hit},
      threats:external.threats.map(threat=>({source:threat.source,type:threat.type,variant:threat.variant,
        kind:threat.kind,shape:threat.shape,pos:threat.pos,end:threat.end,radius:threat.radius,
        start:threat.start,until:threat.until})),
      mechanism_warnings:external.mechanisms.warnings.map(warning=>({
        source:warning.source,rule_id:warning.rule_id,kind:warning.kind,shape:warning.shape,
        pos:warning.pos,end:warning.end,radius:warning.radius,start:warning.start,until:warning.until,
        planning_validated:warning.planning_validated,timing_verified:warning.timing_verified,
      })),
      mechanisms:external.entities.filter(entity=>entity.type>=10&&entity.type<1000&&entity.invulnerable)
        .map(mechanism=>({
        address:mechanism.address,type:mechanism.type,variant:mechanism.variant,subtype:mechanism.subtype,
        seed:mechanism.seed,pos:mechanism.pos,state:mechanism.state,state_frame:mechanism.state_frame,
        animation:mechanism.animation,animation_frame:mechanism.animation_frame,
      })),
      attacks:external.entities.filter(entity=>entity.type===7||entity.type===9).map(attack=>({
        seed:attack.seed,type:attack.type,variant:attack.variant,subtype:attack.subtype,
        pos:attack.pos,vel:attack.vel,endpoint:attack.endpoint,geometry_valid:attack.geometry_valid,
        radius:attack.radius,laser_radius:attack.laser_radius,timeout:attack.timeout,spawner:attack.spawner,
      })),
      plates:afterPlates};
    appendFileSync(tracePath,JSON.stringify(frame)+'\n');
    if(tick%20===0||external.pressure_plates_triggered||next.terminated)report.trace.push(frame);
    ++report.counters.planningFrames;
    terminated=next.terminated;
    if(terminated)break;
  }
}catch(error){
  report.status='error';report.error=error.stack??error.message;
}finally{
  if(observation){
    report.final={
      frame:observation.frame,dead:observation.dead,cleared:observation.cleared,
      clear_flags:observation.room.clearFlags,health:observation.player.health,
      plates:initialPlateStates(observation),mechanisms:mechanismObservation(observation),
    };
    report.assertions.allPlatesReachedState3=
      report.final.plates.length>0&&report.final.plates.every(plate=>plate.state===3);
    report.assertions.clearFlag=(report.final.clear_flags&1)!==0;
    report.assertions.pressureFlag=(report.final.clear_flags&2)!==0;
    report.assertions.roomCleared=report.final.cleared===true&&terminated;
    report.assertions.invulnerableMechanismsNeverTargeted=
      report.counters.invulnerableMechanismTargetFrames===0;
    report.assertions.invulnerableMechanismHpUnchanged=
      report.counters.invulnerableMechanismHpDamage===0;
    report.assertions.postPressureNoMechanismThreat=
      report.counters.postPressureMechanismThreatFrames===0;
    if(!debugFlag){
      report.assertions.noHealthDamage=report.counters.healthDamage===0;
      report.assertions.noHitEvents=report.counters.hitEvents===0;
    }
  }
  const mechanismKeys=['ordinaryPlatesPresent','allPlatesReachedState3','clearFlag','pressureFlag',
    'roomCleared','invulnerableMechanismsNeverTargeted','invulnerableMechanismHpUnchanged',
    'postPressureNoMechanismThreat'];
  report.mechanism_pass=mechanismKeys.every(key=>report.assertions[key]===true);
  report.combat_pass=debugFlag?null:
    report.assertions.noHealthDamage===true&&report.assertions.noHitEvents===true;
  report.status=report.status==='error'?'error':
    report.mechanism_pass&&(report.combat_pass!==false)?'pass':'fail';
  report.pass=report.status==='pass';
  save();
  await reader.close();
  await env.close();
}
console.log(JSON.stringify({status:report.status,pass:report.pass,output,run:report.run_directory,assertions:report.assertions,counters:report.counters,final:report.final},null,2));
if(!report.pass)process.exitCode=1;
