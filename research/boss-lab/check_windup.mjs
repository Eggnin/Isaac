import assert from 'node:assert/strict';
import {readFileSync,writeFileSync} from 'node:fs';
import {createHash} from 'node:crypto';
import createOld from './versions/engage-v1/planner_policy.mjs';
import createNew from './offline/planner_policy.mjs';
const capture=JSON.parse(readFileSync(new URL('./results/delirium-native-hit-v1.json',import.meta.url)));
const frame=structuredClone(capture.damageEvents[0].beforeFrame);
const entity=frame.entities.find(e=>e.type===412);
entity.morph_type=entity.delirium.formType;entity.morph_variant=entity.delirium.formVariant;
function call(module,name,value){
  const bytes=new TextEncoder().encode(JSON.stringify(value)),p=module._malloc(bytes.length+1);
  try{module.HEAPU8.set(bytes,p);module.HEAPU8[p+bytes.length]=0;return JSON.parse(module.ccall(name,'string',['number'],[p]));}
  finally{module._free(p);}
}
const results=[];
for(const [version,create] of [['engage-v1',createOld],['current',createNew]]){
  const module=await create();call(module,'planner_configure',{dt:1/30,beam_width:12,stages:3,horizon:.8});
  // Same UInt64 reconstruction as the live bridge. The snapshot contains
  // split flags; the bridge rejoins them without JavaScript precision loss.
  const decision=call(module,'planner_decide',frame);
  if(decision.error)throw new Error(decision.error);
  results.push({version,frame:frame.clock,form:entity.delirium,move:decision.move,fire:decision.fire,
    safe:decision.safe,threats:decision.threat_kinds});
}
assert.ok(!results[0].threats.includes('laser-warning'));
assert.ok(results[1].threats.includes('laser-warning'));
writeFileSync(new URL('./results/windup-replay.json',import.meta.url),JSON.stringify({pass:true,
  policySha256:createHash('sha256').update(readFileSync(new URL('./offline/planner_policy.wasm',import.meta.url))).digest('hex'),
  scope:'same recorded pre-hit frame, rule activation only; not a live no-hit result',results},null,2));
console.log(JSON.stringify(results));
