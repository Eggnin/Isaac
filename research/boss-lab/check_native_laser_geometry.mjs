import {readFileSync,writeFileSync} from 'node:fs';
import createPolicy from './offline/planner_policy.mjs';
const load=name=>JSON.parse(readFileSync(new URL(`./results/${name}.json`,import.meta.url)));
const source=load('home-tech-dot-warning-cpp'),replay=load('home-tech-dot-warning-cpp-input-replay');
if(!replay.pass)throw new Error('native prefix replay did not pass');
const fixture=replay.nativeBeforeFinalStep;
for(const e of fixture.entities.filter(e=>e.type===7)) {
 const raw=source.combat.damageEvents[0].before.entities.find(x=>x.type===7&&x.seed===e.seed);
 if(!raw)throw new Error('native size evidence is absent');e.radius=raw.radius;
}
const module=await createPolicy();
const call=(name,input)=>{
 if(input===undefined)return JSON.parse(module.ccall(name,'string',[],[]));
 const bytes=new TextEncoder().encode(JSON.stringify(input)),p=module._malloc(bytes.length+1);
 try{module.HEAPU8.set(bytes,p);module.HEAPU8[p+bytes.length]=0;return JSON.parse(module.ccall(name,'string',['number'],[p]));}
 finally{module._free(p);}
};
const rows=[];
for(const native_laser_geometry of [false,true]) {
 call('planner_configure',{...source.combat.parameters,native_laser_geometry});
 const decision=call('planner_decide',fixture),trace=call('planner_trace').filter(t=>t.kind==='laser'||t.kind==='laser-curve');
 rows.push({native_laser_geometry,safe:decision.safe,clearance:decision.clearance,collisionCost:decision.collision_cost,
  beams:trace.map(t=>({kind:t.kind,radius:t.radius,shape:t.shape,samples:t.geometry.length}))});
}
const report={pass:rows[0].safe&&!rows[1].safe&&rows[1].beams.some(b=>b.kind==='laser-curve'&&b.radius===16&&b.samples===20),
 scope:'one native missed-hit frame now detected using native sampled curve and entity size; future curve evolution remains approximate',
 sourceFrame:fixture.clock,actualHitFrame:source.combat.damageEvents[0].frame,rows};
writeFileSync(new URL('./results/native-laser-geometry.json',import.meta.url),JSON.stringify(report,null,2));
console.log(JSON.stringify(report));if(!report.pass)process.exitCode=1;
