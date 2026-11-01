// Native J460 weapon observations in an owned, isolated research instance.
// No real-game process, game installation, or user save is opened for writing.
import {mkdirSync,writeFileSync} from 'node:fs';
import {resolve} from 'node:path';
import {EngineEnvironment} from '../boss-lab/offline/engine_environment.mjs';
const option=(name,fallback)=>process.argv.find(a=>a.startsWith(`--${name}=`))?.slice(name.length+3)??fallback;
const label=option('weapon','brimstone'),items=option('items','118').split(',').filter(Boolean).map(Number);
const expectedType=Number(option('type',label==='brimstone'?'2':label==='knife'?'4':'0'));
const output=resolve(option('output',`research/weapon-lab/results/${label}-cycle.json`));
mkdirSync(resolve(output,'..'),{recursive:true});
const seed='3JY1 6FLR';
const env=new EngineEnvironment({frameRuntime:true,noRender:true,endOnClear:false,maxSteps:3000,
    seed,room:'s.boss.1010',targetNPC:20,
    preRoomCommands:items.map(id=>`giveitem c${id}`)});
const report={pass:false,scope:'Native weapon charge/release/attack-entity and movement observations in an isolated engine; not a live boss result',label,items,runs:[]};
function row(frame) {
    const p=frame.player,owner=p.body.address;
    return {clock:frame.clock,player:{pos:p.body.pos,vel:p.body.vel,max_speed:p.max_speed,health:p.health,can_shoot:p.can_shoot,weapons:p.weapons},
        attacks:frame.entities.filter(e=>[2,4,7,8,1000].includes(e.type)&&
            (e.parent===owner||e.spawner===owner||e.owner===owner||e.friendly))
            .map(e=>({address:e.address,seed:e.seed,type:e.type,variant:e.variant,subtype:e.subtype,
                parent:e.parent,spawner:e.spawner,pos:e.pos,vel:e.vel,timeout:e.timeout,birth:e.birth,exists:e.exists,dead:e.dead,
                radius:e.radius,collision:e.collision,damage:e.damage,animation:e.animation,animation_frame:e.animation_frame,
                laser_shrinking:e.laser_shrinking,knife_distance:e.knife_distance,knife_velocity:e.knife_velocity,knife_swinging:e.knife_swinging})),
        enemies:frame.entities.filter(e=>e.type>=10&&e.type<1000&&!e.friendly).map(e=>({address:e.address,type:e.type,hp:e.hp,pos:e.pos}))};
}
async function run(name,snapshot,plan) {
    await env.request('frame_restore',{id:snapshot.id});
    const samples=[row(await env.request('peek_frame'))];
    for(const part of plan)for(let i=0;i<part.frames;i++) {
        const action={moveX:0,moveY:0,fire:'none',...part.action};
        await env.step(action);samples.push({...row(await env.request('peek_frame')),action});
    }
    const result={name,plan,samples};report.runs.push(result);
    console.log(JSON.stringify({name,frames:samples.length-1,initialWeapon:samples[0].player.weapons,
        chargeMax:Math.max(...samples.flatMap(s=>s.player.weapons.map(w=>w.charge))),
        laserFrames:samples.filter(s=>s.attacks.some(e=>e.type===7&&!e.dead)).length,
        attackEntities:new Set(samples.flatMap(s=>s.attacks.map(e=>e.address+':'+e.seed))).size}));
    return result;
}
try {
    await env.reset();await env.request('enable_frames');
    const initialFrame=await env.request('peek_frame');report.initial=row(initialFrame);
    if(expectedType&&!report.initial.player.weapons.some(w=>w.type===expectedType))throw new Error(`Expected weapon ${expectedType}; observed ${JSON.stringify(report.initial.player.weapons)}`);
    console.log(JSON.stringify({ready:true,weapon:label,initial:report.initial.player.weapons,player:report.initial.player.pos}));
    const initial=await env.request('frame_snapshot');
    await run('hold-60-release-45',initial,[{frames:60,action:{fire:'right'}},{frames:45}]);
    await run('hold-60-release-1-repress-44',initial,[{frames:60,action:{fire:'right'}},{frames:1},{frames:44,action:{fire:'right'}}]);
    await run('hold-60-release-2-repress-43',initial,[{frames:60,action:{fire:'right'}},{frames:2},{frames:43,action:{fire:'right'}}]);
    await run('hold-120',initial,[{frames:120,action:{fire:'right'}}]);
    await run('move-baseline-20',initial,[{frames:20,action:{moveX:1}}]);
    await run('move-charge-20',initial,[{frames:20,action:{moveX:1,fire:'right'}}]);
    await env.request('frame_restore',{id:initial.id});
    for(let i=0;i<60;i++)await env.step({fire:'right'});
    const charged=await env.request('frame_snapshot');
    await run('move-fully-charged-20',charged,[{frames:20,action:{moveX:1,fire:'right'}}]);
    await run('move-release-20',charged,[{frames:20,action:{moveX:1}}]);
    const base=report.runs.find(r=>r.name==='move-baseline-20').samples;
    const displacement=s=>Math.hypot(s.at(-1).player.pos.x-s[0].player.pos.x,s.at(-1).player.pos.y-s[0].player.pos.y);
    const chargedMove=report.runs.find(r=>r.name==='move-fully-charged-20').samples;
    report.movement=report.runs.filter(r=>r.name.startsWith('move-')).map(r=>({name:r.name,
        displacement:displacement(r.samples),relative_to_baseline:displacement(r.samples)/displacement(base),
        paired_reference:r.name==='move-release-20'?'move-fully-charged-20':'move-baseline-20',
        relative_to_paired_reference:displacement(r.samples)/displacement(r.name==='move-release-20'?chargedMove:base),
        max_observed_speed:Math.max(...r.samples.map(s=>Math.hypot(s.player.vel.x,s.player.vel.y)))}));
    report.pass=report.initial.player.weapons.length>0&&report.runs.every(r=>r.samples.length>1);
}catch(error){report.error=error.stack??String(error);console.error(report.error);process.exitCode=1;}
finally {report.run_directory=env.runDirectory;writeFileSync(output,JSON.stringify(report,null,2)+'\n');await env.close();
    console.log(JSON.stringify({pass:report.pass,label,movement:report.movement,error:report.error,output}));}
