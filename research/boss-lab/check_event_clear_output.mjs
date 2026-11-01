import {readFileSync,writeFileSync} from 'node:fs';
import {createHash} from 'node:crypto';
const episode=JSON.parse(readFileSync(new URL('./results/home-consecration-diagnostic.json',import.meta.url)));
const current=createHash('sha256').update(readFileSync(new URL('./offline/planner_policy.wasm',import.meta.url))).digest('hex');
const fixture=episode.combat.damageEvents[0].plannerFrame;
const report={pass:false,scope:'output gating regression on a recorded Home frame with controlled clear/encounter flags; not a combat result',
  sourcePolicy:episode.policySha256,currentPolicy:current,sourceFrame:fixture.clock,sourceCleared:fixture.cleared,rows:[]};
for(const policySha of [episode.policySha256,current]) {
  const {default:factory}=await import(new URL(`./versions/${policySha}/offline/planner_policy.mjs`,import.meta.url));
  const module=await factory();
  const call=(name,input)=>{
    const bytes=new TextEncoder().encode(JSON.stringify(input)),pointer=module._malloc(bytes.length+1);
    try{module.HEAPU8.set(bytes,pointer);module.HEAPU8[pointer+bytes.length]=0;
      const result=JSON.parse(module.ccall(name,'string',['number'],[pointer]));
      if(result.error)throw new Error(result.error);return result;
    }finally{module._free(pointer);}
  };
  for(const [name,cleared,encounter_active] of [['active',false,true],['event-clear',true,true],['ordinary-clear',true,false]]) {
    call('planner_configure',episode.combat.parameters);
    const result=call('planner_decide',{...structuredClone(fixture),cleared,encounter_active});
    report.rows.push({policySha,name,fire:result.fire,target:result.target,aimFire:result.aim_fire});
  }
}
const old=report.rows.filter(r=>r.policySha===episode.policySha256),now=report.rows.filter(r=>r.policySha===current);
if(old[1].fire!==0||old[1].target!==0||now[0].fire===0||now[1].fire!==now[0].fire||now[1].target!==now[0].target||now[2].fire!==0||now[2].target!==0)
  throw new Error('event/ordinary room-clear output contract failed');
report.pass=true;
writeFileSync(new URL('./results/event-clear-output.json',import.meta.url),JSON.stringify(report,null,2));
console.log(JSON.stringify(report));
