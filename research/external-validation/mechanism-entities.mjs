import {existsSync,mkdirSync,writeFileSync} from 'node:fs';
import {dirname,resolve} from 'node:path';
import {fileURLToPath} from 'node:url';
import {EngineEnvironment} from '../offline/engine_environment.mjs';

const here=dirname(fileURLToPath(import.meta.url));
const option=(name,fallback)=>process.argv.find(arg=>arg.startsWith(`--${name}=`))?.slice(name.length+3)??fallback;
const output=resolve(option('output',`validation/mechanism-entities-${Date.now()}`));
const seed=option('seed','3JY1 6FLR');
const stage=option('stage','10');
const observeFrames=Number(option('observe','180'));
const debugFlag=option('debug','3');
const rooms=option('rooms','d.118,d.121,d.122,d.199,d.212,d.315,d.316,d.317,d.318,d.381,d.406,d.582,d.588').split(',');
if(existsSync(output))throw new Error(`Use a new evidence directory: ${output}`);
mkdirSync(output,{recursive:true});

const identity=entity=>`${entity.type}.${entity.variant}.${entity.subtype}`;
const entityObservation=entity=>({
  address:entity.address,seed:entity.seed,identity:identity(entity),name:entity.animation,
  active:entity.active,exists:entity.exists,dead:entity.dead,hp:entity.hp,
  damage:entity.damage,collision:entity.collision,invulnerable:entity.invulnerable,
  state:entity.state,position:entity.position,
});

async function inspectRoom(room){
  const env=new EngineEnvironment({
    seed,room,targetNPC:{type:-1,variant:-1,subtype:-1},catalogMode:true,noRender:true,
    setupTimeoutMs:30000,startupCommands:['seed '+seed,'stage '+stage,'goto '+room,...(debugFlag?['debug '+debugFlag]:[])],
  });
  try {
    let observation=await env.reset();
    const uniqueNpcs=new Map();
    for(const entity of observation.entities)if(entity.type>=10&&entity.type<1000)
      uniqueNpcs.set(entity.address,entity);
    const tracks=new Map([...uniqueNpcs.values()].map(entity=>[entity.address,{
      identity:identity(entity),initial:entityObservation(entity),
      invulnerableValues:new Set(),hpValues:new Set(),observedFrames:0,
    }]));
    let terminated=false;
    for(let tick=0;tick<observeFrames&&!terminated;tick++){
      for(const entity of observation.entities)if(entity.type>=10&&entity.type<1000){
        let track=tracks.get(entity.address);
        if(!track){track={identity:identity(entity),initial:entityObservation(entity),
          invulnerableValues:new Set(),hpValues:new Set(),observedFrames:0};tracks.set(entity.address,track);}
        track.invulnerableValues.add(entity.invulnerable);
        track.hpValues.add(entity.hp);
        ++track.observedFrames;
      }
      const next=await env.step({moveX:0,moveY:0,fire:'none'});
      observation=next.observation;terminated=next.terminated;
    }
    const tracked=[...tracks.values()].map(track=>({
      identity:track.identity,initial:track.initial,observed_frames:track.observedFrames,
      invulnerable_values:[...track.invulnerableValues],hp_values:[...track.hpValues],
      ever_invulnerable:track.invulnerableValues.has(true),
      always_invulnerable:track.invulnerableValues.size>0&&!track.invulnerableValues.has(false),
    }));
    return {
      room,status:'observed',run_directory:env.runDirectory,
      actual_room:`${observation.room.type}.${observation.room.variant}`,
      frame:observation.frame,clear_flags:observation.room.clearFlags,terminated,
      plates:observation.grid.filter(cell=>cell.type===20&&cell.variant===0)
        .map(cell=>({x:cell.x,y:cell.y,state:cell.state})),
      entities:tracked,
    };
  }catch(error){
    return {room,status:'error',error:error.stack??error.message};
  }finally{
    await env.close();
  }
}

const queue=[...rooms],results=[];
await Promise.all(Array.from({length:3},async()=>{
  while(queue.length)results.push(await inspectRoom(queue.shift()));
}));
results.sort((a,b)=>rooms.indexOf(a.room)-rooms.indexOf(b.room));

const observed={};
for(const row of results)for(const entity of row.entities??[]){
  if(!entity.ever_invulnerable)continue;
  observed[entity.identity]??={identity:entity.identity,rooms:new Set(),alwaysRooms:new Set(),samples:[]};
  observed[entity.identity].rooms.add(row.room);
  if(entity.always_invulnerable)observed[entity.identity].alwaysRooms.add(row.room);
  observed[entity.identity].samples.push({room:row.room,...entity});
}
const aggregates=Object.values(observed).map(row=>({
  identity:row.identity,rooms:[...row.rooms],alwaysInvulnerableRooms:[...row.alwaysRooms],samples:row.samples,
}));

const report={
  format:'isaac-runtime-mechanism-entity-survey-v1',
  scope:'Original-engine room snapshots. An invulnerable field observation is state-specific and does not by itself establish permanent immunity.',
  seed,stage,observeFrames,debugFlag,rooms,results,aggregates,
};
writeFileSync(resolve(output,'report.json'),JSON.stringify(report,null,2)+'\n');
console.log(JSON.stringify({
  output,
  observedRooms:results.filter(row=>row.status==='observed').length,
  errors:results.filter(row=>row.status==='error').map(row=>({room:row.room,error:row.error})),
  invulnerableIdentities:aggregates.map(row=>({
    identity:row.identity,rooms:row.rooms,alwaysInvulnerableRooms:row.alwaysInvulnerableRooms,
  })),
},null,2));
