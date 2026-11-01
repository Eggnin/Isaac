import { spawn } from 'node:child_process';
import { createInterface } from 'node:readline';
import { mkdirSync,readFileSync,writeFileSync,appendFileSync,existsSync } from 'node:fs';
import { dirname,join,resolve } from 'node:path';
import { fileURLToPath } from 'node:url';
import { createHash } from 'node:crypto';
import { EngineEnvironment } from '../offline/engine_environment.mjs';
const here=dirname(fileURLToPath(import.meta.url)),root=resolve(here,'../..');
const option=(key,fallback)=>process.argv.find(a=>a.startsWith(`--${key}=`))?.slice(key.length+3)??fallback;
const steps=Number(option('steps','180'));
if(!Number.isInteger(steps)||steps<1)throw Error('steps must be a positive integer');
const sourceExe=option('source-exe','D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe');
const out=resolve(option('output',join(here,'runs',new Date().toISOString().replace(/[:.]/g,'-'))));
if(existsSync(out))throw Error(`Output already exists; use a fresh evidence directory: ${out}`);
mkdirSync(out,{recursive:true});
const audit=JSON.parse(readFileSync(join(root,'research/ai-recovery/RUNTIME-FIELD-COVERAGE-20261029.json')));
const raw=audit.fields.filter(f=>f.offset!=='derived'&&f.reader_implemented);
const aliases={position:'pos',velocity:'vel',health:'hp',max_health:'max_hp',collision_damage:'damage',invincible:'invulnerable'};
const npc=new Set(['state','state_frame','projectile_cooldown','projectile_delay','ai_v1_x','ai_v1_y','ai_v2_x','ai_v2_y','ai_i1','ai_i2','is_boss','shield_strength','shield_history_capacity','champion','boss_color']);
function applicable(key,e) {
  if(key.startsWith('delirium_'))return e.type===412;
  if(key==='owner')return e.type===3;
  return !npc.has(key)||(e.type>=10&&e.type<1000);
}
function value(e,key) {
  if(/^ai_v[12]_[xy]$/.test(key))return e[key.slice(0,-2)]?.[key.at(-1)];
  return e[aliases[key]??key];
}
function equal(a,b) {
  if(a===undefined||b===undefined)return false;
  if(typeof a==='number'&&typeof b==='number')return Number.isFinite(a)&&Number.isFinite(b)&&a===b;
  return JSON.stringify(a)===JSON.stringify(b);
}
class ExternalReader {
  constructor() {
    this.child=spawn(join(here,'ExternalReader.exe'),[],{windowsHide:true,stdio:['pipe','pipe','pipe']});
    this.pending=null;
    createInterface({input:this.child.stdout}).on('line',line=>{const p=this.pending;if(!p)return;this.pending=null;clearTimeout(p.timer);try{p.resolve(JSON.parse(line));}catch(e){p.reject(e);}});
    this.child.stderr.on('data',b=>appendFileSync(join(out,'reader.stderr.log'),b));
    const fail=e=>{if(this.pending){clearTimeout(this.pending.timer);this.pending.reject(e);this.pending=null;}};
    this.child.on('error',fail);this.child.on('exit',code=>fail(Error(`Reader exited ${code}`)));
  }
  capture(truth,extra={}) {
    if(this.pending)throw Error('Reader request already active');
    return new Promise((resolve,reject)=>{
      const timer=setTimeout(()=>{this.pending=null;reject(Error('Reader capture timeout'));this.child.kill();},30000);
      this.pending={resolve,reject,timer};
      this.child.stdin.write(JSON.stringify({pid:truth.pid,host_base:truth.host_base,length:truth.length,source_exe:sourceExe,...extra})+'\n');
    });
  }
  async close(){if(this.child.exitCode!==null)return;await new Promise(r=>{this.child.once('exit',r);this.child.stdin.end();});}
}
const fields=Object.fromEntries(raw.map(f=>[f.key,{key:f.key,offset:f.offset,type:f.type,semantics_complete:f.semantics_complete,planner_consumed:f.planner_consumed,samples:0,matches:0,missing:0,changes:0,detected_changes:0,identities:[],distinct_values:[],status:'已实现但未测试'}]));
const identities=new Map(),states=new Set(),failures=[],cases=[];
const hash=p=>createHash('sha256').update(readFileSync(p)).digest('hex');
const provenance={source_exe:sourceExe,source_exe_sha256:hash(sourceExe),reader_sha256:hash(join(here,'ExternalReader.exe')),wasm_sha256:hash(join(root,'research/the-browsing-of-isaac/output/recomp/lift/boot-training-fast/boot.wasm')),engine_host:process.execPath,command:[process.execPath,...process.argv.slice(1)],sources:Object.fromEntries(['cpp/src/reader.cpp','cpp/include/gamebot/model.hpp','research/external-validation/truth.mjs','research/external-validation/run.mjs','research/offline/engine_worker.mjs'].map(p=>[p,hash(join(root,p))]))};
function save() {
  for(const f of Object.values(fields)) {
    f.status=f.missing||f.matches<f.samples?'读取失败':!f.samples?'已实现但未测试':f.semantics_complete?'外部读取通过':'值匹配但语义未确认';
    f.external_read_pass=f.samples>0&&f.matches===f.samples&&f.missing===0;
    f.semantic_evidence='existing static/semantic matrix; this run confirms values only';
  }
  const rows=Object.values(fields),samples=rows.reduce((n,f)=>n+f.samples,0),matches=rows.reduce((n,f)=>n+f.matches,0),changes=rows.reduce((n,f)=>n+f.changes,0),detected=rows.reduce((n,f)=>n+f.detected_changes,0);
  const links=cases.reduce((n,c)=>n+(c.pointer_checks??0),0),linkMatches=cases.reduce((n,c)=>n+(c.pointer_matches??0),0);
  const report={format:'isaac-external-engine-validation-v1',provenance,steps,transport:'ReadProcessMemory into original-J460 lifted Wasm live backing allocation',truth_source:'independent in-engine JS observer/DataView at stopped logic boundary; shares recovered offsets, not an independent semantic oracle',cases,fields:rows,identities:[...identities.values()],failures,
    metrics:{implemented_fields:raw.length,external_read_pass_fields:rows.filter(f=>f.external_read_pass).length,value_samples:samples,value_matches:matches,value_match_rate:samples?matches/samples:null,changes,detected_changes:detected,change_detection_rate:changes?detected/changes:null,pointer_checks:links,pointer_matches:linkMatches,pointer_match_rate:links?linkMatches/links:null,verified_identities:[...identities.values()].filter(i=>!i.mismatches).length,verified_ai_states:states.size,verified_attack_mechanisms:0,verified_attack_warnings:0,verified_boss_phases:0,verified_planner_mechanisms:0},
    limitations:['Native PE attach/module discovery not tested by mapped-Wasm transport.','Matching internal layout reads confirms transport/decoding, not independent offset semantics.','Zero/constant fields do not confirm active behavior. Change coverage is reported separately.','Despawn does not prove memory deallocation. Invalid-pointer lifetime checks remain separate.','No engine damage callback oracle or attack/warning/phase assertion yet; mechanism counters stay zero.']};
  writeFileSync(join(out,'report.json'),JSON.stringify(report,null,2)+'\n');
  writeFileSync(join(out,'fields.tsv'),['key\toffset\tstatus\tsamples\tmatches\tmissing\tchanges\tdetected_changes\texternal_read_pass\tsemantics_complete\tplanner_consumed',...rows.map(f=>[f.key,f.offset,f.status,f.samples,f.matches,f.missing,f.changes,f.detected_changes,f.external_read_pass,f.semantics_complete,f.planner_consumed].join('\t'))].join('\n')+'\n');
  writeFileSync(join(out,'identities.tsv'),['identity\tsamples\tmismatches\tstates',...[...identities.values()].map(i=>[i.identity,i.samples,i.mismatches,i.states.join(',')].join('\t'))].join('\n')+'\n');
  writeFileSync(join(out,'report.md'),`# 原版引擎外部读取验证\n\n${report.transport}\n\n已实现字段 ${raw.length}；值对照通过 ${report.metrics.external_read_pass_fields}；值匹配 ${matches}/${samples}；变化检测 ${detected}/${changes}；指针快照关系 ${linkMatches}/${links}。\n\n身份 ${report.metrics.verified_identities}；AI 状态 ${states.size}；攻击机制、前摇预警、Boss 阶段及已验证 Planner 机制均为 0。\n\n|场景|结果|已对照帧|错误|\n|---|---|---:|---|\n${cases.map(c=>`|${c.id}|${c.status}|${c.frames}|${c.error??''}|`).join('\n')}\n\n${report.limitations.map(s=>'- '+s).join('\n')}\n\n详细数据见 fields.tsv、identities.tsv、samples-*.jsonl、events-*.jsonl 及 report.json。\n`);
  return report;
}
const specs=option('cases','20.0.0,413.0.0,886.1.0,406.0.0,411.0.0,412.0.0,60.0.0,68.1.0').split(',');
for(const [index,spec] of specs.entries()) {
  const [identity,room='s.boss.3702']=spec.split('@'),[type,variant,subtype]=identity.split('.').map(Number);
  if(![type,variant,subtype].every(Number.isInteger))throw Error(`Invalid identity ${identity}`);
  const c={id:`E${String(index+1).padStart(3,'0')}-${identity}`,identity,room,frames:0,status:'engine-error',pointer_checks:0,pointer_matches:0,seed:'3JY1 6FLR'};cases.push(c);save();
  console.log(`START ${c.id}`);
  const env=new EngineEnvironment({room,targetNPC:{type,variant,subtype},spawnNPCs:[{type,variant,subtype},...(option('familiar','false')==='true'?[{type:3,variant:1,subtype:0}]:[])],debugFlags:[3],maxSteps:steps+3000,noRender:true,externalValidation:true,externalBoundaryLog:option('transition','false')==='true'});
  let reader,lastTruth,previous=new Map(),previousEntities=new Map();
  try {
    await env.reset();c.run_directory=env.runDirectory;reader=new ExternalReader();
    for(let tick=0;tick<=steps;tick++) {
      if(tick===steps&&index===0&&option('transition','false')==='true') {
        const boundaryStart=readFileSync(join(env.runDirectory,'validation-boundaries.jsonl'),'utf8').trim().split('\n').length;
        c.transition_probe=await env.probe({entries:[{type:10,variant:0,subtype:0}],setupCommands:['goto s.boss.1010'],observeFrames:2,attack:false});
        c.transition_sampling='External capture before and after existing probe goto/reset; intervening frames not externally sampled';
        const boundaries=readFileSync(join(env.runDirectory,'validation-boundaries.jsonl'),'utf8').trim().split('\n').slice(boundaryStart).map(s=>JSON.parse(s));
        c.observed_rooms=[...new Set(boundaries.map(b=>b.room?`${b.room.type}.${b.room.variant}:${b.room.width}x${b.room.height}`:'none'))];
        c.room_transition_observed=c.observed_rooms.filter(r=>r!=='none').length>1;
        c.transition_probe_success=c.transition_probe.results.every(r=>r.status==='observed');
        previous.clear();previousEntities.clear();
      }
      const truth=await env.request('externalTruth'),external=await reader.capture(truth);
      lastTruth=truth;
      if(truth.pid!==env.child.pid||external.reader_pid!==reader.child.pid||external.reader_pid===truth.pid||external.pid!==truth.pid||!external.valid||external.clock!==truth.frame.clock||external.room!==truth.frame.room||!external.rpm_calls)throw Error(`External capture invalid: ${external.error??JSON.stringify({clock:external.clock,expected:truth.frame.clock,pid:external.pid})}`);
      c.pid=truth.pid;c.reader_pid=external.reader_pid;c.rpm_calls=(c.rpm_calls??0)+external.rpm_calls;c.rpm_bytes=(c.rpm_bytes??0)+external.rpm_bytes;
      const common={test:c.id,tick,pid:truth.pid,reader_pid:external.reader_pid,frame:truth.frame.clock,room:truth.frame.room};
      appendFileSync(join(out,`samples-${c.id}.jsonl`),JSON.stringify({...common,truth,external})+'\n');
      if(tick===0) {
        const invalid=await reader.capture(truth,{host_base:'1'});c.bad_mapping_rejected=!invalid.valid;
        c.invalid_range_rejected=external.invalid_range_rejected;
        // Comparator must reject a deliberately incorrect external value.
        c.comparator_fault_rejected=!equal(truth.frame.entities[0].type,truth.frame.entities[0].type+1);
        if(!c.bad_mapping_rejected||!c.invalid_range_rejected||!c.comparator_fault_rejected)throw Error('negative control failed');
      }
      const actual=new Map(external.entities.map(e=>[e.address,e])),members=new Set(truth.frame.entities.map(e=>e.address)),current=new Map();
      if(actual.size!==members.size||[...actual.keys()].some(a=>!members.has(a)))throw Error('Entity membership differs');
      for(const e of truth.frame.entities) {
        const a=actual.get(e.address),key=`${e.type}.${e.variant}.${e.subtype}`,entityKey=`${e.address}:${e.seed}:${key}`;current.set(entityKey,e);
        if(!previousEntities.has(entityKey))appendFileSync(join(out,`events-${c.id}.jsonl`),JSON.stringify({...common,event:'spawn-observed',entity:entityKey,animation:e.animation,state:e.state})+'\n');
        if(e.type>=10&&e.type<1000&&!identities.has(key))identities.set(key,{identity:key,samples:0,mismatches:0,states:[]});
        const id=identities.get(key);if(id){id.samples++;if(e.state!==undefined){if(!id.states.includes(e.state))id.states.push(e.state);states.add(`${key}:${e.state}`);}}
        for(const f of raw) {
          if(!applicable(f.key,e))continue;
          const row=fields[f.key],want=value(e,f.key),got=a?value(a,f.key):undefined;
          row.samples++;if(want===undefined)row.missing++;
          const pass=equal(want,got);if(pass)row.matches++;else{if(id)id.mismatches++;const failure={...common,entity:entityKey,field:f.key,want,got};failures.push(failure);appendFileSync(join(out,'failures.jsonl'),JSON.stringify(failure)+'\n');}
          if(!row.identities.includes(key))row.identities.push(key);
          const encoded=JSON.stringify(want);if(row.distinct_values.length<12&&!row.distinct_values.includes(encoded))row.distinct_values.push(encoded);
          const historyKey=`${entityKey}:${f.key}`,prior=previous.get(historyKey);
          if(prior&&!equal(prior.want,want)){row.changes++;if(pass&&!equal(prior.got,got))row.detected_changes++;appendFileSync(join(out,`events-${c.id}.jsonl`),JSON.stringify({...common,event:'field-change',entity:entityKey,field:f.key,from:prior.want,to:want,external:got})+'\n');}
          previous.set(historyKey,{want,got});
        }
        for(const link of ['parent','child','target','spawner','owner']) {
          const want=!!e[link]&&members.has(e[link]);c.pointer_checks++;if(a?.[`${link}_in_snapshot`]===want)c.pointer_matches++;else failures.push({...common,entity:entityKey,field:`${link}_in_snapshot`,want,got:a?.[`${link}_in_snapshot`]});
        }
      }
      for(const key of previousEntities.keys())if(!current.has(key))appendFileSync(join(out,`events-${c.id}.jsonl`),JSON.stringify({...common,event:'despawn-observed',entity:key})+'\n');
      previousEntities=current;c.frames++;
      if(tick<steps)await env.step({move:'none',fire:'none'});
    }
    c.status=failures.some(f=>f.test===c.id)?'value-mismatch':'external-read-pass';
  }catch(e){c.error=e.stack??e.message;c.status='engine-or-reader-error';console.log(`FAIL ${c.id}: ${e.message}`);}
  finally{
    c.run_directory=env.runDirectory;await env.close();
    if(reader&&lastTruth)try{const exited=await reader.capture(lastTruth);c.exited_process_rejected=!exited.valid;c.exited_process_result=exited;if(!c.exited_process_rejected)c.status='lifecycle-check-failed';}catch(e){c.exited_process_error=e.message;c.status='lifecycle-check-failed';}
    await reader?.close();save();
  }
  console.log(`END ${c.id}: ${c.status}, frames=${c.frames}`);
}
const report=save();console.log(JSON.stringify({output:out,metrics:report.metrics,cases:cases.map(c=>({id:c.id,status:c.status,frames:c.frames}))},null,2));
if(cases.some(c=>c.status!=='external-read-pass'))process.exitCode=1;
