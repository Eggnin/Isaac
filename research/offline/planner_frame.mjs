import { readFileSync } from 'node:fs';

const geometryData = JSON.parse(readFileSync(
  new URL('../../data/mechanisms/gamebot_monster_geometry.json', import.meta.url), 'utf8'));
const patternData = JSON.parse(readFileSync(
  new URL('../../data/mechanisms/gamebot_monster_geometry_patterns.json', import.meta.url), 'utf8'));

function identityParts(value) {
  return String(value ?? '0.0.0').split('.').map(Number);
}

function meanOf(value) {
  return value && Number.isFinite(value.mean) ? value.mean : 0;
}

function maximumOf(value) {
  return value && Number.isFinite(value.max) ? value.max : 0;
}

const geometryModelsByPatternKey = new Map();
for (const model of [...(geometryData.models ?? []), ...(geometryData.runtime_models ?? [])]) {
  const key = `${model.target_identity}|${model.kind}|${model.source_state}|${model.source_animation}`;
  const models = geometryModelsByPatternKey.get(key) ?? [];
  models.push(model);
  geometryModelsByPatternKey.set(key, models);
}

function geometryRefForRule(rule) {
  const key = `${rule.target_identity}|${rule.kind}|${rule.source_state}|${rule.source_animation}`;
  const base = (geometryModelsByPatternKey.get(key) ?? [])[0];
  const hazard = identityParts(rule.hazard_identity ?? base?.hazard_identity ?? '9.0.0');
  const baseRadius = base ? (
    Number.isFinite(base.contact_radius_bound) ? base.contact_radius_bound :
      Number.isFinite(base.radius_bound) ? base.radius_bound :
        base.static_contact?.radius ?? meanOf(base.radius)
  ) : 0;
  const baseDuration = base ? (
    Number.isFinite(base.duration_bound_frames) ? base.duration_bound_frames :
      maximumOf(base.timeout) || maximumOf(base.active_frames)
  ) : 0;
  return {
    source: 0,
    hazard_type: hazard[0],
    hazard_variant: hazard[1],
    hazard_subtype: hazard[2],
    source_state: rule.source_state,
    source_ai_i1: rule.source_ai_i1 ?? -1,
    source_ai_i2: rule.source_ai_i2 ?? -1,
    radius: rule.radius ?? baseRadius,
    duration: rule.duration_frames ?? baseDuration,
    trigger_animation_frame: rule.trigger_animation_frame ?? (base ? meanOf(base.trigger_animation_frame) : -1),
    trigger_animation_frame_min: rule.trigger_animation_frame_min ?? -1,
    trigger_animation_frame_max: rule.trigger_animation_frame_max ?? -1,
    speed: rule.speed ?? (base ? meanOf(base.speed) : 0),
    speed_min: rule.speed_min ?? 0,
    pattern_count: rule.count ?? 1,
    pattern_samples: rule.phase_samples ?? 1,
    pattern_phase_degrees: rule.phase_degrees ?? 0,
    pattern_phase_uncertainty_degrees: rule.phase_uncertainty_degrees ?? 0,
    pattern_spacing_degrees: rule.spacing_degrees ?? 0,
    pattern_offsets_degrees: rule.offset_degrees ?? [],
    geometry_verified: true,
    runtime_geometry_verified: true,
    planning_validated: base?.planning_validated === true,
    pre_spawn_verified: base?.pre_spawn_verified === true,
    kind: rule.kind,
    shape: base?.shape ?? 'disc',
    source_animation: rule.source_animation,
    pattern: rule.pattern,
    pattern_center: rule.center ?? 'source',
    pattern_direction: rule.direction ?? 'fixed',
    pattern_clock: rule.clock ?? 'animation',
    pattern_origin_offset: rule.origin_offset ?? {x:0,y:0},
    pattern_direction_step: rule.direction_step_degrees ?? 90,
    pattern_velocity_inherit: rule.velocity_inherit ?? 0,
    pattern_aim_lead: rule.aim_lead ?? 0,
    pattern_aim_lead_distance: rule.aim_lead_distance ?? 0,
    pattern_aim_distance: rule.aim_distance ?? 100000,
    pattern_clock_offset: rule.clock_offset ?? 0,
    pattern_target_radius: rule.target_radius ?? 0,
    pattern_source_lead: rule.source_lead ?? 0,
    pattern_origin_speed: rule.origin_speed ?? 0,
    pattern_period: rule.period_frames ?? 1,
    emitter_spawner_type: rule.emitter_spawner_type ?? 0,
    required_projectile_flags: rule.required_projectile_flags ?? 0,
    pattern_speed_mode: rule.speed_mode ?? 'constant',
    evidence_status: rule.evidence_status ?? base?.evidence_status ?? '',
    source_refs: rule.source_refs ?? '',
  };
}

export function buildPatternGeometryRefs() {
  const refsByTarget = new Map();
  for (const rule of patternData.rules ?? []) {
    const key = rule.emitter_identity ?? rule.target_identity;
    const refs = refsByTarget.get(key) ?? [];
    refs.push(geometryRefForRule(rule));
    refsByTarget.set(key, refs);
  }
  return refsByTarget;
}

const geometryRefs = buildPatternGeometryRefs();

function toPlannerMechanisms(frame) {
  const geometryModels = [];
  for (const entity of frame.entities) {
    const key = `${entity.type}.${entity.variant}.${entity.subtype}`;
    for (const ref of geometryRefs.get(key) ?? []) {
      if (!ref.emitter_spawner_type || ref.emitter_spawner_type === entity.spawner_type)
        geometryModels.push({ ...ref, source: entity.address });
    }
  }
  return {
    loaded: true,
    valid: frame.valid,
    semantics_available: true,
    pid: frame.pid ?? 0,
    room: frame.room,
    clock: frame.clock,
    geometry_models: geometryModels,
    warnings: [],
  };
}

// Layout adapter only. Decisions come from the unchanged cpp/src/planner.cpp.
export function toPlannerFrame(module, observation, attackEnabled = true) {
  if (!Number.isInteger(observation.room?.shape) || observation.room.shape < 1 || observation.room.shape > 12)
    throw new Error(`room shape unavailable: ${observation.room?.shape ?? 'missing'}`);
  const shape=observation.room.shape;
  const expectedWidth=shape<=5?15:28;
  const expectedHeight=(shape===4||shape===5||shape>=8)?16:9;
  if(observation.room.width!==expectedWidth||observation.room.height!==expectedHeight)
    throw new Error(`room shape ${shape} does not match dimensions ${observation.room.width}x${observation.room.height}`);
  const heap = module.HEAPU8, view = new DataView(heap.buffer);
  const u8 = p => view.getUint8(p), u16 = p => view.getUint16(p, true),i16 = p => view.getInt16(p, true),
    u32 = p => view.getUint32(p, true), i32 = p => view.getInt32(p, true);
  const u64 = p => Number(view.getBigUint64(p, true));
  const f32 = p => { const v = view.getFloat32(p, true); if (!Number.isFinite(v)) throw new Error(`nonfinite native field ${p.toString(16)}`); return v; };
  const optionalF32 = p => { const v = view.getFloat32(p, true); return Number.isFinite(v) ? v : undefined; };
  const clamp = (x, lo, hi) => Math.max(lo, Math.min(hi, x));
  const point = (p, offset) => ({ x: f32(p + offset), y: f32(p + offset + 4) });
  const animation = (address,offset=0x7c) => {
    const s = u32(address + offset);
    if (!s) return '';
    const length = u32(s + 16), capacity = u32(s + 20);
    if (length > capacity || length > 512) return '';
    return new TextDecoder().decode(heap.subarray(capacity < 16 ? s : u32(s), (capacity < 16 ? s : u32(s)) + length));
  };
  const animationTriggers = address => {
    if (!address) return [];
    const data=u32(address+0x28), count=u32(address+0x2c);
    return Array.from({length:count},(_,i)=>({id:u32(data+i*8),frame:i32(data+i*8+4)}));
  };
  const nativeString = s => {
    const length=u32(s+16), capacity=u32(s+20), data=capacity<16?s:u32(s);
    return new TextDecoder().decode(heap.subarray(data,data+length));
  };
  const entities = observation.entities.map(e => {
    const a = e.address;
    const result = { address:a, native_index:u32(a+0x20),seed:e.seed, type:e.type, variant:e.variant, subtype:e.subtype,
      spawner_type:e.spawnerType, pos:e.position,position_offset:point(a,0x34c), vel:e.velocity, radius:e.radius, hp:e.hp,
      damage:e.damage, collision:e.collision, exists:e.exists, active:e.active, dead:e.dead,
      angle:optionalF32(a+0x41c),
      flags_lo:e.flags.low, flags_hi:e.flags.high, friendly:!!(e.flags.low & ((1<<29)|(1<<8))),
      no_target:!!(e.flags.low & (1<<4)), invulnerable:!!u8(a+0x3b0),
      pending_damage:f32(a+0x14),pending_damage_flags:u64(a+0x18),
      damage_queue:f32(a+0x14)>0?Array.from({length:(u32(a+0xc)-u32(a+8))/0x38},(_,i)=>({amount:f32(u32(a+8)+i*0x38),flags:u64(u32(a+8)+i*0x38+8)})):[],
      parent:e.parent, child:u32(a+0x3c0), target:u32(a+0x3c4), spawner:u32(a+0x3c8),
      grid_collision:i32(a+0x184), birth:i32(a+0x328),birth_known:true,age:f32(a+0x3a4),friction:f32(a+0x36c),mass:f32(a+0x37c),mass_known:true,speed_multiplier:f32(a+0x39c),animation_update_delay:i32(a+0x3f0),
      target_pos:point(a,0x334), animation_frame:f32(a+0x88), animation:animation(a),
      animation_length:u32(a+0x7c)?i32(u32(a+0x7c)+0x30):0,animation_looping:u32(a+0x7c)?u8(u32(a+0x7c)+0x34)!==0:false,animation_speed:f32(a+0x14c),
      animation_state_known:true,animation_playing:u8(a+0x8c)!==0,overlay_animation_playing:u8(a+0xac)!==0,
      animation_events:u32(a+0x90),animation_event_history:u32(a+0x94),overlay_animation_events:u32(a+0xb0),overlay_animation_event_history:u32(a+0xb4),
      animation_event_names:Array.from({length:u32(a+0xd8)},(_,i)=>nativeString(u32(a+0xd4)+i*24)),
      animation_triggers:animationTriggers(u32(a+0x7c)),overlay_animation_triggers:animationTriggers(u32(a+0x9c)),
      overlay_animation_length:u32(a+0x9c)?i32(u32(a+0x9c)+0x30):0,overlay_animation_looping:u32(a+0x9c)?u8(u32(a+0x9c)+0x34)!==0:false,
      sprite_flip_x:u8(a+0x148)!==0,overlay_animation:animation(a,0x9c),overlay_animation_frame:f32(a+0xa8) };
    if (e.type === 1) {result.shot_speed_stat=f32(a+0x1464);result.held=u32(a+0x140c);
      result.player_action_bomb=u32(a+0x1410);result.player_action_state=i32(a+0x1f2c);result.damage_stat=f32(a+0x14f0);result.player_held_known=true;
      result.slow_factor=f32(a+0x3ac);result.slow_countdown=i32(a+0x220);}
    if (e.type >= 10 && e.type < 1000) Object.assign(result, {
      state:i32(a+0xb64), state_frame:i32(a+0x410), boss_target_mode:i32(a+0xf1c),
      max_hp:f32(a+0x384), speed_multiplier:f32(a+0x39c),
      projectile_cooldown:i32(a+0xba0), projectile_delay:i32(a+0xba4),
      ai_v1:{x:f32(a+0xbb0),y:f32(a+0xbb4)}, ai_v2:{x:f32(a+0xbb8),y:f32(a+0xbbc)},
      held:u32(a+0xbec), ai_i1:i32(a+0xbc0), ai_i2:i32(a+0xbc4),
      is_boss:u8(a+0xc3d)!==0, shield_strength:f32(a+0xc40),
      champion:i32(a+0xc64), boss_color:i32(a+0xc78), boss_status_cooldown:i32(a+0x238),
      delirium_boss_type:u32(a+0xbc8), delirium_boss_variant:u32(a+0xbcc),
      delirium_transformation_timer:u16(a+0xbd0), delirium_remaining_attacks:u8(a+0xbd2),
      delirium_state:u8(a+0xbd3), delirium_attack_id:u32(a+0xbd8),
      delirium_attack_id_low24:u32(a+0xbd8)&0xffffff,
      delirium_attack_angle:u8(a+0xbdc), delirium_cycle_id:u64(a+0xbe0),
      delirium_cycle_low7:u64(a+0xbe0)&0x7f,
      delirium_cycle_field_15_24:Math.floor(u64(a+0xbe0)/0x8000)&0x3ff,
      delirium_cycle_field_25_34:Math.floor(u64(a+0xbe0)/0x2000000)&0x3ff,
    });
    if (e.type === 3) result.owner=u32(a+0x410);
    if (e.type === 4) Object.assign(result, { bomb_hold_state:i32(a+0x3fc),bomb_countdown2:i32(a+0x414),bomb_attached:u32(a+0x450),bomb_tear_flags:Array.from({length:4},(_,i)=>u32(a+0x438+i*4)),timeout:i32(a+0x410), blast_radius:Math.max(e.variant===17?200:80,clamp(80*f32(a+0x434),80,800)) });
    if (e.type === 2 || e.type === 9) Object.assign(result, { height:f32(a+0x410), fall_speed:f32(a+0x414), fall_accel:f32(a+0x418) });
    if (e.type === 9) Object.assign(result, {
      projectile_flags_lo:u32(a+0x438), projectile_flags_hi:u32(a+0x43c),
      projectile_parent_velocity:{x:f32(a+0x468)*30,y:f32(a+0x46c)*30},
      projectile_change_flags_lo:u32(a+0x450),projectile_change_flags_hi:u32(a+0x454),
      projectile_change_velocity:f32(a+0x458),projectile_change_timeout:i32(a+0x45c),projectile_homing_strength:f32(a+0x424),
      projectile_age:f32(a+0x3a4), projectile_phase:i32(a+0x448),
      projectile_accel:f32(a+0x42c), projectile_curve:f32(a+0x428), projectile_orbit_distance:f32(a+0x430),
      speed_multiplier:f32(a+0x39c),
    });
    if(e.type===9&&((u32(a+0x43c)|u32(a+0x454))&0x400)) {
      const begin=u32(a+0x178),end=u32(a+0x17c);
      result.grid_contacts=Array.from({length:(end-begin)/8},(_,i)=>point(begin,i*8));
    }
    if (e.type === 7) {
      const circle=e.subtype>=1&&e.subtype<=3, radius=f32(a+0x4bc), endpoint=point(a,0x4d8);
      Object.assign(result, { timeout:i32(a+0x458), circle, laser_radius:radius,
        laser_origin:point(a,0x468),laser_native_end:point(a,0x470),laser_sample_count:i32(a+0x47c),laser_shape_kind:i32(a+0x4a4),
        laser_homing_radius:f32(a+0x478),
        laser_one_hit:u8(a+0x515)!==0,laser_link:u32(a+0x52c),
        laser_follow:u8(a+0x4e4)===0, radius:e.radius,
        laser_tear_flags:Array.from({length:4},(_,i)=>u32(a+0x428+i*4)),laser_offset:point(a,0x410),laser_rotating:u8(a+0x4c0)!==0,laser_rotation_delay:i32(a+0x4c4),
        laser_rotation_degrees:f32(a+0x4c8),laser_rotation_speed:f32(a+0x4cc),laser_max_distance:f32(a+0x4d0),laser_homing_type:i32(a+0x4d4),
        laser_shrink:u8(a+0x45e)!==0,laser_first_update:u8(a+0x45c)!==0,laser_sampled:u8(a+0x45d)!==0,
        laser_damage_disabled:u8(a+0x175)!==0,
        endpoint:circle?{x:e.position.x+radius,y:e.position.y}:endpoint,
        geometry_valid:circle?radius>0:Math.hypot(endpoint.x-e.position.x,endpoint.y-e.position.y)>1 });
      const animations=u32(a+0xbc),count=u32(a+0xc0);
      for(let i=0;i<count;i++) {
        const data=animations+i*0x13c;
        if(u32(data+0x10)===4&&u32(data)===0x65646146)result.laser_fade_length=i32(data+0x30);
      }
      const begin=u32(a+0x480), end=u32(a+0x484), capacity=u32(a+0x488);
      if(begin>0&&end>=begin&&capacity>=end&&end<=heap.length&&
         (end-begin)%8===0&&(end-begin)/8>=2&&(end-begin)/8<=2048)
        result.laser_points=Array.from({length:(end-begin)/8},(_,i)=>point(begin,i*8));
      const historyBegin=u32(a+0x498),historyEnd=u32(a+0x49c);
      if(historyEnd>=historyBegin&&(historyEnd-historyBegin)%8===0&&(historyEnd-historyBegin)/8<=2048)
        result.laser_history_points=Array.from({length:(historyEnd-historyBegin)/8},(_,i)=>point(historyBegin,i*8));
      const nodesBegin=u32(a+0x4ac),nodesEnd=u32(a+0x4b0);
      if(nodesEnd>=nodesBegin&&(nodesEnd-nodesBegin)%24===0&&(nodesEnd-nodesBegin)/24<=256)
        result.laser_nodes=Array.from({length:(nodesEnd-nodesBegin)/24},(_,i)=>({pos:point(nodesBegin,i*24),incoming:point(nodesBegin,i*24+8),outgoing:point(nodesBegin,i*24+16)}));
      const hitsBegin=u32(a+0x520),hitsEnd=u32(a+0x524);
      if(hitsEnd>=hitsBegin&&(hitsEnd-hitsBegin)%4===0&&(hitsEnd-hitsBegin)/4<=8192)
        result.laser_hit_list=Array.from({length:(hitsEnd-hitsBegin)/4},(_,i)=>u32(hitsBegin+i*4));
    }
    if(e.type===4) {
      const bombDamage=f32(a+0x418),radiusScale=f32(a+0x44c),bombFlags=u32(a+0x438+12),
        baseRadius=((bombFlags&0x00800000)!==0||[17,20].includes(e.variant))?130:bombDamage>=175?105:bombDamage>140?90:75;
      Object.assign(result,{bomb_explosion_damage:bombDamage,bomb_explosion_radius_scale:radiusScale,bomb_scale:f32(a+0x434),bomb_explosion_fields_known:true,
        blast_radius:baseRadius*radiusScale});
    }
    if(e.type===1000) Object.assign(result,{effect_state:i32(a+0x450),timeout:i32(a+0x45c),effect_lifespan:i32(a+0x460),sprite_scale:point(a,0xe4),sprite_scale_known:true,sprite_alpha:f32(a+0xfc),sprite_alpha_known:true});
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
  let inventoryOwner=a;
  for(let depth=0;depth<entities.length&&i32(inventoryOwner+0x2c)===1;depth++) {
    const parent=u32(inventoryOwner+0x3bc);
    const next=entities.find(e=>e.address===parent&&e.type===1)?.address??entities.find(e=>e.type===1)?.address;
    if(!next||next===inventoryOwner)break;
    inventoryOwner=next;
  }
  const mimicActive=u8(inventoryOwner+0x2ef0)!==0,mimicItem=i32(inventoryOwner+0x2ef4),mimicTrinket=u32(inventoryOwner+0x2ef8);
  const vectorEntry=(header,index,stride) => {
    const begin=u32(inventoryOwner+header),end=u32(inventoryOwner+header+4);
    return begin&&end>=begin&&(end-begin)%stride===0&&index<(end-begin)/stride?begin+index*stride:0;
  };
  const hasItem=id => {
    if(mimicActive&&mimicItem===id)return true;
    if(u8(inventoryOwner+0x202c)||u8(inventoryOwner+0x20a9))return false;
    if(i32(inventoryOwner+0x1fb8)===id)return true;
    const entry=vectorEntry(0x16c8,id,4),count=entry?i32(entry):0;
    return count>(!mimicActive&&mimicItem===id?1:0);
  };
  const trinketMultiplier=id => {
    if(u8(inventoryOwner+0x202c)||u8(inventoryOwner+0x20a9))return 0;
    let multiplier=0;
    const slots=hasItem(139)||hasItem(458)?2:1;
    for(let slot=0;slot<slots;slot++) {
      const item=u32(inventoryOwner+0x16c0+slot*4);
      if((item&0x7fff)===id)multiplier+=(item&0x8000)?2:1;
    }
    const smelted=vectorEntry(0x1748,id,4),temporary=vectorEntry(0x1fe0,id,1);
    if(smelted)multiplier+=i16(smelted)+2*i16(smelted+2);
    if(temporary)multiplier+=u8(temporary)!==0?1:0;
    const pocket=u32(inventoryOwner+0x17c4);
    if(pocket&&(mimicTrinket===0||mimicTrinket===id)&&i32(pocket)===2&&u32(pocket+4)===id)
      multiplier+=(u8(inventoryOwner+0x17cc)&2)?2:1;
    if((mimicTrinket&0x7fff)===id) {
      const adjustment=(mimicTrinket&0x8000)?2:1;
      multiplier=mimicActive?multiplier+adjustment:Math.max(0,multiplier-adjustment);
    }
    if(multiplier>0&&hasItem(439))multiplier++;
    return multiplier;
  };
  const callusMultiplier=trinketMultiplier(14),callus=(mimicActive&&mimicTrinket===14)||
    (mimicTrinket===14&&!mimicActive?callusMultiplier>1:callusMultiplier>0);
  let explosionReductionStacks=trinketMultiplier(63);
  const manager=observation.game?.managerPointer;
  if(manager) {
    const begin=u32(manager+0x2a410),end=u32(manager+0x2a414);
    if(begin&&end>=begin&&(end-begin)/4>63) {
      const config=u32(begin+63*4);
      if(config&&(u32(config+0xb8)&0x80000000)&&i32(inventoryOwner+0x1e6c)!==0)explosionReductionStacks*=2;
    }
  }
  const groundCreepImmune=callus||hasItem(571),creepEffectImmune=hasItem(632)&&i32(a+0x26d0)<30;
  const poisonEffectImmune=hasItem(594)||hasItem(140)||(!u8(a+0x202c)&&!u8(a+0x20a9)&&i32(a+0x17ec)>=3);
  for(let slot=0;slot<5;slot++) {
    const w=u32(a+0x13dc+slot*4); if(!w)continue;
    weapons.push({address:w,type:i32(w+0x30),shots_fired:i32(w+0xc),modifiers:u32(w+0x34),charge:f32(w+0x14),fire_delay:f32(w+0x10)});
  }
  let tearSpeed=300*clamp(f32(a+0x1464),.1,3), tearRange=clamp(f32(a+0x1480),40,1500);
  if([2,3].includes(weapons[0]?.type)){tearSpeed=12000;tearRange=p.character===7&&weapons[0].type===2?130:1300;}
  if(weapons[0]?.type===4)tearRange=clamp(tearRange*.6,60,650);
  if([10,13].includes(weapons[0]?.type)){tearSpeed=12000;tearRange=90;}
  const frame = { sequence:observation.frame,clock:observation.frame,room:observation.room.pointer,
    valid:observation.ready,paused:observation.state==='paused',transition:observation.state==='transition',
    clear_flags:observation.room.clearFlags??0,room_type:i32(observation.room.pointer+8),
    native_target_order_known:true,native_target_order:Array.from({length:u32(observation.room.pointer+0x1264)},(_,i)=>u32(u32(observation.room.pointer+0x125c)+i*4)),
    cleared:observation.cleared,pressure_plates_triggered:!!(observation.room.clearFlags&2),
    has_player:true,attack_enabled:attackEnabled,
    grid:{width:observation.room.width,height:observation.room.height,shape:observation.room.shape,valid:true,
      native_min:point(observation.room.pointer,0x14),native_max:point(observation.room.pointer,0x1c),
      cells:observation.grid.map(c=>({type:c.type??0,variant:c.variant??0,state:c.state??0,collision:c.collision,native_collision:c.collision,destructible:c.destructible,danger:c.danger}))},
    player:{body:entities.find(e=>e.address===a),controller:p.controller,character:p.character,health:p.health,fire_direction:i32(a+0x1628),explosion_reduction_stacks:explosionReductionStacks,
      max_speed:260*clamp(f32(a+0x1568),.1,2.5),tear_speed:tearSpeed,tear_range:tearRange,
      fire_delay:p.fireDelay,flying:!!u8(a+0x1570),can_shoot:!!u8(a+0x1825),controls:p.controls,
      native_grid_collision_known:true,ground_creep_immune:groundCreepImmune,creep_effect_immune:creepEffectImmune,poison_effect_immune:poisonEffectImmune,
      weapons,attack_supported:weapons.length>0&&weapons.every(w=>[1,2,3,4,7,9,10,13].includes(w.type))},entities };
  frame.mechanisms=toPlannerMechanisms(frame);
  return frame;
}
