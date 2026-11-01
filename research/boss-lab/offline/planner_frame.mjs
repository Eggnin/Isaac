import {deliriumLoopRates} from './delirium_dynamics.mjs';
// Native layout adapter and original-loop rates; decisions are in the C++ planner.
export function toPlannerFrame(module, observation, attackEnabled = true) {
  if(!observation.player)return {sequence:observation.frame??0,clock:observation.frame??0,
    room:observation.room?.pointer??0,valid:false,has_player:false,attack_enabled:false,
    paused:observation.game?.paused??false,transition:observation.game?.transition??false,
    cleared:observation.cleared??false,error:observation.error??observation.state,
    grid:{width:0,height:0,valid:false,cells:[]},player:{body:{type:1,exists:false,active:false},controls:false},entities:[]};
  const heap = module.HEAPU8, view = new DataView(heap.buffer);
  const u8 = p => view.getUint8(p), u32 = p => view.getUint32(p, true), i32 = p => view.getInt32(p, true);
  const f32 = p => { const v = view.getFloat32(p, true); if (!Number.isFinite(v)) throw new Error(`nonfinite native field ${p.toString(16)}`); return v; };
  const optionalF32 = p => { const v = view.getFloat32(p, true); return Number.isFinite(v) ? v : undefined; };
  const clamp = (x, lo, hi) => Math.max(lo, Math.min(hi, x));
  const point = (p, offset) => ({ x: f32(p + offset), y: f32(p + offset + 4) });
  const animation = address => {
    const s = u32(address + 0x7c);
    if (!s) return '';
    const length = u32(s + 16), capacity = u32(s + 20);
    if (length > capacity || length > 512) return '';
    return new TextDecoder().decode(heap.subarray(capacity < 16 ? s : u32(s), (capacity < 16 ? s : u32(s)) + length));
  };
  const entities = observation.entities.map(e => {
    const a = e.address;
    const result = { address:a, seed:e.seed, type:e.type, variant:e.variant, subtype:e.subtype,
      native_update:u32(u32(a)+12),
      spawner_type:e.spawnerType, pos:e.position, vel:e.velocity, radius:e.radius, hp:e.hp,
      damage:e.damage, collision:e.collision, exists:e.exists, active:e.active, dead:e.dead,
      angle:optionalF32(a+0x41c),
      flags_lo:e.flags.low, flags_hi:e.flags.high, friendly:!!(e.flags.low & ((1<<29)|(1<<8))),
      no_target:!!(e.flags.low & (1<<4)), invulnerable:!!u8(a+0x3b0),
      parent:e.parent, spawner:u32(a+0x3c8), grid_collision:i32(a+0x184), birth:i32(a+0x328),
      target_pos:point(a,0x334), animation_frame:f32(a+0x88), animation:animation(a),animation_finished:!u8(a+0x8c) };
    if (e.type >= 10 && e.type < 1000) Object.assign(result, { state:i32(a+0xb64), state_frame:i32(a+0x410), champion:i32(a+0xc64) });
    if(e.type===1)Object.assign(result,{consecration_counter:i32(a+0x1ea8),pending_damage_flags:u32(a+0x18)});
    if(e.type===412)Object.assign(result,{morph_type:u32(a+0xbc8),morph_variant:u32(a+0xbcc)});
    if(e.type===412)result.delirium={formType:u32(a+0xbc8),formVariant:u32(a+0xbcc),
      rawTimer:view.getUint16(a+0xbd0,true),rawState:u8(a+0xbd3),
      maxHP:f32(a+0x384),speedControlLo:u32(a+0xbe0),speedControlHi:u32(a+0xbe4)};
    if(e.type===412)result.delirium.extraAnimationEnabled=!!u8(a+0x151);
    if(e.type===412)result.native_animation_rate=deliriumLoopRates(result).animationRate;
    if(e.type===412&&result.morph_type===63) {
      const {maxHP,speedControlLo:lo,speedControlHi:hi}=result.delirium;
      const timer=(lo>>>7)&255,counter=((lo>>>25)|(hi<<7))&1023;
      const aggression=maxHP>0?Math.trunc(3*(1-clamp(e.hp/maxHP,0,1))):0;
      const count=timer?3:aggression;
      result.native_motion_scale=counter>4*count?1+.5*count*count:1;
    }
    if (e.type === 3) result.owner=u32(a+0x410);
    if (e.type === 4) Object.assign(result, { timeout:i32(a+0x410), blast_radius:clamp(80*f32(a+0x434),80,800) });
    if (e.type === 2 || e.type === 9) Object.assign(result, { height:f32(a+0x410), fall_speed:f32(a+0x414), fall_accel:f32(a+0x418) });
    if (e.type === 9) Object.assign(result, { projectile_flags_lo:u32(a+0x438), projectile_flags_hi:u32(a+0x43c),
      native_age:f32(a+0x3a4),projectile_age:f32(a+0x3a4),native_phase:i32(a+0x448),
      projectile_phase:i32(a+0x448),projectile_curve:f32(a+0x428),speed_multiplier:f32(a+0x39c),
      projectile_orbit_distance:f32(a+0x430) });
    if(e.type===8)Object.assign(result,{knife_distance:f32(a+0x444),knife_velocity:f32(a+0x448),knife_swinging:!!u8(a+0x465)});
    if (e.type === 7) {
      const circle=e.subtype>=1&&e.subtype<=3, radius=f32(a+0x4bc), endpoint=point(a,0x4d8);
      Object.assign(result, { timeout:i32(a+0x458), laser_shrinking:!!u8(a+0x45e), circle, laser_radius:radius,
        laser_follow:u8(a+0x4e4)===0, radius:e.radius>0?e.radius:clamp(5*Math.abs(f32(a+0x4e0)),3,60),
        endpoint:circle?{x:e.position.x+radius,y:e.position.y}:endpoint,
        geometry_valid:circle?radius>0:Math.hypot(endpoint.x-e.position.x,endpoint.y-e.position.y)>1 });
      result.position_offset=point(a,0x34c);
      result.homing_type=u32(a+0x4d4);
      const begin=u32(a+0x480),end=u32(a+0x484),capacity=u32(a+0x488);
      result.laser_sample_layout={begin,end,capacity};
      if(begin>0&&end>=begin&&capacity>=end&&capacity<=heap.length&&(end-begin)%8===0&&(end-begin)/8<=2048)
        result.laser_points=Array.from({length:(end-begin)/8},(_,i)=>point(begin,i*8));
    }
    if(e.type===1000) {
      result.timeout=i32(a+0x45c);
      result.effect_state=i32(a+0x450);
      result.position_offset=point(a,0x34c);
      // Effect 123 subtypes 4/7 query players at 40 * Sprite.Scale.X.
      // Native getter 0x417200 returns Sprite+0x9c; Sprite is Entity+0x48.
      if(e.variant===123&&(e.subtype===4||e.subtype===7))result.aura_radius=40*f32(a+0xe4);
    }
    return result;
  });
  for(let iteration=0;iteration<8;iteration++) {
    let changed=false;
    for(const e of entities) for(const source of entities) {
      const linked=e.parent===source.address||e.spawner===source.address||e.owner===source.address;
      if(linked&&!e.friendly&&(source.type===1||source.friendly)){e.friendly=true;changed=true;}
      if(linked&&!e.hostile_source&&((source.type>=10&&source.type<1000&&!source.friendly)||source.hostile_source)){e.hostile_source=true;changed=true;}
    }
    if(!changed) break;
  }
  const p=observation.player, a=p.address, weapons=[];
  for(let slot=0;slot<5;slot++) {
    const w=u32(a+0x13dc+slot*4); if(!w)continue;
    weapons.push({address:w,type:i32(w+0x30),modifiers:u32(w+0x34),charge:f32(w+0x14),fire_delay:f32(w+0x10),
      cooldown:f32(w+0xc),main_entity:u32(w+0x8),num_fired:i32(w+0x38),direction:point(w,0x20),vtable:u32(w)});
  }
  let tearSpeed=300*clamp(f32(a+0x1464),.1,3), tearRange=clamp(f32(a+0x1480),40,1500);
  if([2,3].includes(weapons[0]?.type)){tearSpeed=12000;tearRange=p.character===7&&weapons[0].type===2?130:1300;}
  if(weapons[0]?.type===4)tearRange=clamp(tearRange*.6,60,650);
  if([10,13].includes(weapons[0]?.type)){tearSpeed=12000;tearRange=90;}
  return { sequence:observation.frame,clock:observation.frame,room:observation.room.pointer,
    valid:observation.ready,paused:observation.state==='paused',transition:observation.state==='transition',
    cleared:observation.cleared,has_player:true,attack_enabled:attackEnabled,
    grid:{width:observation.room.width,height:observation.room.height,valid:true,
      cells:observation.grid.map(c=>({type:c.type??0,variant:c.variant??0,state:c.state??0,collision:c.collision,destructible:c.destructible,danger:c.danger}))},
    player:{body:entities.find(e=>e.address===a),controller:p.controller,character:p.character,health:p.health,
      max_speed:260*clamp(f32(a+0x1568),.1,2.5),tear_speed:tearSpeed,tear_range:tearRange,
      tear_inheritance_sample:point(a,0x1660),
      fire_delay:p.fireDelay,flying:!!u8(a+0x1570),can_shoot:!!u8(a+0x1825),controls:p.controls,
      weapons,attack_supported:weapons.length>0&&weapons.every(w=>[1,2,3,4,7,9,10,13].includes(w.type))},entities };
}
