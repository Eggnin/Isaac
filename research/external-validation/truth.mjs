import { createRequire } from 'node:module';
import { toPlannerFrame } from '../offline/planner_frame.mjs';
const bridge=createRequire(import.meta.url)('./memory_address.node');
// Runs inside the existing engine at its existing stopped logic boundary.
// Uses internal DataView/observer only; never invokes or consumes Reader output.
export function captureTruth(module, observation) {
  const frame=toPlannerFrame(module,observation,false);
  const view=new DataView(module.HEAPU8.buffer);
  for(const e of frame.entities) {
    const a=e.address;
    e.flags=view.getBigUint64(a+0x168,true).toString();
    // Player observer hp is character hearts, Entity::hp is the base float.
    e.hp=view.getFloat32(a+0x380,true);
    e.max_hp=view.getFloat32(a+0x384,true);
    e.speed_multiplier=view.getFloat32(a+0x39c,true);
    e.boss_status_cooldown=view.getInt32(a+0x238,true);
    if(e.type>=10&&e.type<1000)e.shield_history_capacity=view.getInt32(a+0xc44,true);
    if(e.type===9)e.projectile_flags=view.getBigUint64(a+0x438,true).toString();
    if(e.type===412)e.delirium_cycle_id=view.getBigUint64(a+0xbe0,true).toString();
  }
  const player=observation.player?.address;
  const vtable=player?view.getUint32(player,true):0;
  const player_vtable=vtable?{address:vtable,entries:Array.from({length:16},(_,i)=>view.getUint32(vtable+4*i,true))}:null;
  const native_damage=[];
  const oracle_available=typeof module._phase4_damage_count==='function';
  if(oracle_available) {
    const total=module._phase4_damage_count(),begin=module.phase4DamageCursor??0;
    if(total-begin>4096)throw Error('native damage oracle ring overflow');
    for(let i=begin;i<total;i++) {
      const p=module._phase4_damage_record(i);
      const u=n=>view.getUint32(p+4*n,true),f=n=>view.getFloat32(p+4*n,true);
      if(u(0)!==i)throw Error('native damage oracle sequence mismatch');
      native_damage.push({ordinal:i,frame:u(1),player:u(2),caller:u(3),amount:f(4),
        flags_lo:u(5),flags_hi:u(6),source_ref:u(7),source:u(8),countdown:u(9),
        target_type:u(28),target_seed:u(29),health_before:u(28)===1?u(10):f(10),cooldown_before:u(11),source_type:u(12),source_variant:u(13),source_subtype:u(14),source_seed:u(15),
        player_pos:{x:f(16),y:f(17)},player_radius:f(18),source_pos:{x:f(19),y:f(20)},source_radius:f(21),
        reference_type:u(22),reference_variant:u(23),returned:(u(24)&255)!==0,health_after:u(28)===1?u(25):f(25),cooldown_after:u(26),laser:u(27),
        source_parent:u(30),source_spawner:u(31),source_parent_type:u(32),source_spawner_type:u(33),target_seed_after:u(34),reference_spawner_type:u(35),native_entry:u(38)});
    }
    module.phase4DamageCursor=total;
  }
  const native_laser=[];
  if(typeof module._phase4_laser_count==='function') {
    const total=module._phase4_laser_count(),begin=module.phase4LaserCursor??0;
    if(total-begin>4096)throw Error('native laser oracle ring overflow');
    for(let i=begin;i<total;i++) {
      const p=module._phase4_laser_record(i),u=n=>view.getUint32(p+4*n,true),f=n=>view.getFloat32(p+4*n,true);
      if(u(0)!==i)throw Error('native laser oracle sequence mismatch');
      native_laser.push({ordinal:i,frame:u(1),kind:u(2)===1?'eligibility':'collision-apply',laser:u(3),seed:u(4),player:u(5),result:u(6)!==0,caller:u(7),
        pos:{x:f(8),y:f(9)},collision_radius:f(10),endpoint:{x:f(11),y:f(12)},timeout:u(13),field_4bc:f(14),render_scale:f(15),field_460:f(16),
        player_pos:{x:f(17),y:f(18)},player_radius:f(19),variant:u(20),subtype:u(21)});
    }
    module.phase4LaserCursor=total;
  }
  const npc_damage_vtables=frame.entities.filter(e=>e.type>=10&&e.type<1000).slice(0,32).map(e=>({type:e.type,variant:e.variant,address:e.address,take_damage:view.getUint32(view.getUint32(e.address,true)+32,true)}));
  return {npc_damage_vtables,native_laser,oracle_available,native_damage,player_vtable,pid:process.pid,host_base:bridge.address(module.HEAPU8.buffer),length:module.HEAPU8.byteLength,frame};
}
