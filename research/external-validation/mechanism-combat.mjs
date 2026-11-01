import {spawn} from 'node:child_process';
import {createInterface} from 'node:readline';
import {appendFileSync,existsSync,mkdirSync,writeFileSync} from 'node:fs';
import {dirname,join,resolve} from 'node:path';
import {fileURLToPath} from 'node:url';
import {EngineEnvironment} from '../offline/engine_environment.mjs';
import {isCooldownHit} from '../offline/damage_tracking.mjs';

const here=dirname(fileURLToPath(import.meta.url));
const option=(name,fallback)=>process.argv.find(arg=>arg.startsWith(`--${name}=`))?.slice(name.length+3)??fallback;
const output=resolve(option('output',`validation/mechanism-combat-${Date.now()}`));
const room=option('room','d.582');
const steps=Number(option('steps','1800'));
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
      this.pending=null;clearTimeout(pending.timer);pending.resolve(JSON.parse(line));
    });
    this.child.stderr.on('data',chunk=>appendFileSync(join(output,'reader.stderr.log'),chunk));
  }
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
  async close(){if(this.child.exitCode!==null)return;await new Promise(r=>{this.child.once('exit',r);this.child.stdin.end();});}
}

const identity=entity=>`${entity.type}.${entity.variant}.${entity.subtype}`;
const report={
  format:'isaac-mechanism-combat-v1',scope:'Original engine; debug keeps the probe alive, so health is not no-damage evidence.',
  room,steps,debugFlag,status:'running',
  counters:{invulnerableTargetFrames:0,invulnerableHpDamage:0,healthDamage:0,hitEvents:0},
  initial:null,final:null,trace:[],
};
const save=()=>writeFileSync(join(output,'report.json'),JSON.stringify(report,null,2)+'\n');
const env=new EngineEnvironment({
  seed:'3JY1 6FLR',room,targetNPC:{type:-1,variant:-1,subtype:-1},catalogMode:true,noRender:true,
  setupTimeoutMs:90000,startupCommands:['seed 3JY1 6FLR','stage 10','goto '+room,...(debugFlag?['debug '+debugFlag]:[])],
  maxSteps:steps+20,externalValidation:true,
});
const reader=new Reader();
let observation,terminated=false,previousCooldown=null;
const previousHp=new Map();
try{
  observation=await env.reset();previousCooldown=observation.player.damageCooldown;
  report.run_directory=env.runDirectory;
  const invulnerable=observation.entities.filter(entity=>entity.type>=10&&entity.type<1000&&entity.invulnerable);
  report.initial={frame:observation.frame,invulnerable:invulnerable.map(entity=>({
    address:entity.address,seed:entity.seed,identity:identity(entity),hp:entity.hp,
  }))};
  for(const entity of invulnerable)previousHp.set(`${entity.address}:${entity.seed}`,entity.hp);
  for(let tick=0;tick<steps;tick++){
    const truth=await env.request('externalTruth'),external=await reader.capture(truth);
    if(!external.valid||external.error)throw new Error(`invalid external frame: ${external.error??''}`);
    const decision=external.decision,target=external.entities.find(entity=>entity.address===decision.target);
    if(target?.invulnerable)++report.counters.invulnerableTargetFrames;
    for(const entity of observation.entities)if(entity.invulnerable){
      const key=`${entity.address}:${entity.seed}`,prior=previousHp.get(key)??entity.hp;
      report.counters.invulnerableHpDamage+=Math.max(0,prior-entity.hp);
      previousHp.set(key,entity.hp);
    }
    const action={moveX:moves[decision.move][0],moveY:moves[decision.move][1],fire:fires[decision.fire]};
    if(!decision.valid||decision.stop){action.moveX=0;action.moveY=0;action.fire='none';}
    const next=await env.step(action);
    const nextCooldown=next.observation.player?.damageCooldown;
    report.counters.healthDamage+=Math.max(0,observation.player.health-(next.observation.player?.health??observation.player.health));
    if(isCooldownHit(previousCooldown,nextCooldown))++report.counters.hitEvents;
    previousCooldown=nextCooldown;observation=next.observation;terminated=next.terminated;
    const frame={tick,frame:observation.frame,health:observation.player.health,cleared:observation.cleared,
      target:decision.target,target_identity:target?identity(target):null,target_invulnerable:!!target?.invulnerable,
      fire:decision.fire,reason:decision.reason};
    appendFileSync(join(output,'trace.jsonl'),JSON.stringify(frame)+'\n');
    if(tick%20===0||terminated)report.trace.push(frame);
    if(terminated)break;
  }
}catch(error){report.status='error';report.error=error.stack??error.message;}
finally{
  if(observation)report.final={
    frame:observation.frame,dead:observation.dead,cleared:observation.cleared,terminated,
    health:observation.player.health,
    invulnerable:observation.entities.filter(entity=>entity.type>=10&&entity.type<1000&&entity.invulnerable)
      .map(entity=>({address:entity.address,seed:entity.seed,identity:identity(entity),hp:entity.hp})),
    damageable:observation.entities.filter(entity=>entity.type>=10&&entity.type<1000&&!entity.invulnerable&&entity.exists&&!entity.dead)
      .map(entity=>identity(entity)),
  };
  const pass=report.counters.invulnerableTargetFrames===0&&report.counters.invulnerableHpDamage===0;
  report.assertions={invulnerableNeverTargeted:report.counters.invulnerableTargetFrames===0,
    invulnerableHpUnchanged:report.counters.invulnerableHpDamage===0};
  report.status=report.status==='error'?'error':pass?'pass':'fail';report.pass=pass;save();
  await reader.close();await env.close();
}
console.log(JSON.stringify({status:report.status,pass:report.pass,output,run:report.run_directory,
  counters:report.counters,final:report.final},null,2));
if(!report.pass)process.exitCode=1;
