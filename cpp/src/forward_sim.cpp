#include "gamebot/forward_sim.hpp"
#include "gamebot/planner.hpp"
#include "gamebot/projectile_motion.hpp"
#include <algorithm>
#include <chrono>
#include <cmath>
#include <fstream>
#include <iterator>
#include <queue>
#include <sstream>

namespace gamebot {
namespace {
constexpr double infinite_time=1e9;
bool live(const SimEnemy& enemy) { return !enemy.dead&&enemy.hp>0; }
bool live(const SimProjectile& projectile) { return !projectile.dead; }
bool active(const SimHazard& hazard,double now) {
    return !hazard.dead&&now>=hazard.active_from&&now<=hazard.active_until;
}
Vec unit_safe(Vec value,Vec fallback={1,0}) {
    const double length=value.norm();
    return length>1e-9?value/length:fallback;
}
// Native entity updates run at 30 Hz. The simulator advances at 60 Hz, so the
// damping tick is applied on every second frame and the frame in between moves
// with the post-tick velocity. This keeps speed in px/s and keeps the native
// friction formula exact at its own update rate.
void advance_entity_frame(Entity& native,Vec& pos,Vec& vel,int parity,double dt) {
    if((parity&1)==0) {
        native.pos=pos;native.vel=vel;
        advance_native_entity_motion(native,pos,vel);
    }else {
        pos=pos+vel*dt;
    }
}
bool grid_ready(const Grid& grid) {
    return grid.valid&&grid.width>0&&grid.height>0&&
        grid.cells.size()==size_t(grid.width)*size_t(grid.height);
}
bool grid_bounds_ready(const Grid& grid) {
    return grid.native_max.x>grid.native_min.x&&grid.native_max.y>grid.native_min.y;
}
int cell_index(const Grid& grid,Vec point) {
    int x=int(std::floor((point.x-40.0)/40.0));
    int y=int(std::floor((point.y-120.0)/40.0));
    x=std::clamp(x,0,grid.width-1);y=std::clamp(y,0,grid.height-1);
    return y*grid.width+x;
}
const Entity* find_projectile_entity(const void* user,uint32_t address) {
    const auto* world=static_cast<const SimWorld*>(user);
    if(!world||!address)return nullptr;
    if(world->player.native.body.address==address)return &world->player.native.body;
    for(const auto& enemy:world->enemies)
        if(enemy.native.address==address)return &enemy.native;
    for(const auto& projectile:world->projectiles)
        if(projectile.native.address==address)return &projectile.native;
    return nullptr;
}
void sync_native_views(SimWorld& world) {
    world.player.native.body.pos=world.player.pos;
    world.player.native.body.vel=world.player.vel;
    for(auto& enemy:world.enemies) {
        enemy.native.pos=enemy.pos;
        enemy.native.vel=enemy.vel;
    }
    for(auto& projectile:world.projectiles) {
        projectile.native.pos=projectile.pos;
        projectile.native.vel=projectile.vel;
    }
}
double hazard_clearance(const SimHazard& hazard,Vec a,Vec b,double player_radius) {
    const double radius=player_radius+hazard.spec.radius;
    auto segment=[&](Vec first,Vec last) {
        return moving_clearance(a,b,first,last,radius);
    };
    double best=std::numeric_limits<double>::infinity();
    if(hazard.spec.nodes.size()>=2) {
        for(size_t i=0;i+1<hazard.spec.nodes.size();++i)
            best=std::min(best,segment(hazard.spec.nodes[i].pos,hazard.spec.nodes[i+1].pos));
        return best;
    }
    if(hazard.spec.path.size()>=2) {
        for(size_t i=0;i+1<hazard.spec.path.size();++i)
            best=std::min(best,segment(hazard.spec.path[i],hazard.spec.path[i+1]));
        return best;
    }
    if(hazard.spec.shape==Shape::capsule||hazard.spec.shape==Shape::polyline)
        return segment(hazard.spec.pos,hazard.spec.end);
    return segment(hazard.spec.pos,hazard.spec.pos);
}
void push_event(SimWorld& world,std::string kind,uint32_t source,uint32_t target,
                double amount,Vec pos,std::string detail={}) {
    SimEvent event;
    event.frame=world.frame;event.time=world.time;event.kind=std::move(kind);
    event.source=source;event.target=target;event.amount=amount;event.pos=pos;
    event.detail=std::move(detail);
    world.events.push_back(std::move(event));
}
void damage_player(SimWorld& world,double amount,uint32_t source,const std::string& kind,
                   Vec pos,int invulnerability_frames,bool ignores_invulnerability=false) {
    auto& player=world.player;
    if(player.dead||player.health<=0)return;
    if(!ignores_invulnerability&&player.invulnerable>0)return;
    const int damage=std::max(1,int(std::lround(amount)));
    player.health=std::max(0,player.health-damage);
    player.invulnerable=invulnerability_frames;
    push_event(world,kind,source,0,double(damage),pos);
    if(player.health<=0) {
        player.dead=true;world.player_dead=true;
        push_event(world,"player-death",source,0,double(damage),pos);
    }
}
void damage_enemy(SimWorld& world,SimEnemy& enemy,double amount,uint32_t source,
                  Vec pos,bool& died,std::vector<SimEvent>& death_events) {
    if(!live(enemy)||enemy.invulnerable)return;
    const double applied=std::min(amount,enemy.hp);
    enemy.hp-=applied;
    world.player.damage_dealt+=applied;
    push_event(world,"enemy-hit",source,enemy.id,applied,pos);
    if(enemy.hp<=0) {
        enemy.hp=0;enemy.dead=true;died=true;
        ++world.player.kills;
        death_events.push_back(SimEvent{world.frame,world.time,"enemy-death",source,enemy.id,
            applied,pos,std::to_string(enemy.type)});
    }else if(enemy.boss&&enemy.max_hp>0) {
        const double fraction=enemy.hp/enemy.max_hp;
        const int phase=fraction<=0.25?3:fraction<=0.5?2:1;
        if(phase>enemy.boss_phase) {
            enemy.boss_phase=phase;
            enemy.attack.count=std::min(24,enemy.attack.count+1);
            enemy.attack.period_frames=std::max(30.0,enemy.attack.period_frames*0.85);
            enemy.cooldown=std::min(enemy.cooldown,30.0);
            push_event(world,"enemy-phase",source,enemy.id,double(phase),pos,
                "boss phase "+std::to_string(phase));
        }
    }
}
SimAttackScript build_script(const EnemyState& state,const ForwardSimConfig& config) {
    SimAttackScript script;
    const Entity& entity=state.entity;
    const EnemyIntent* best=nullptr;
    int best_rank=-1;
    for(const auto& intent:state.intents) {
        if(intent.primitive==AttackPrimitive::unknown)continue;
        const int rank=int(intent.evidence)*10+(intent.can_instantiate?5:0)+
            (intent.confidence>=0.5?2:0)+(intent.can_instantiate?1:0);
        if(rank>best_rank) {best_rank=rank;best=&intent;}
    }
    if(!best||(best->evidence==AttackEvidence::candidate&&!config.use_mechanism_intents)) {
        script.primitive=AttackPrimitive::uncertain_area;
        script.targeting=AttackTargeting::player_position;
        script.period_frames=150;
        script.windup_frames=30;
        script.duration_frames=12;
        script.radius=std::max(24.0,entity.radius*1.6);
        script.damage=entity.damage>0?entity.damage:1;
        script.risk_weight=1.5;
        script.precise=false;
        script.unknown=true;
        script.precision=Precision::unknown;
        script.evidence="no mechanism model; conservative generic hypothesis";
        return script;
    }
    script.primitive=best->primitive;
    script.targeting=best->targeting;
    script.direction=best->direction;
    script.target_position=best->target_position;
    script.speed=best->projectile_speed>0?best->projectile_speed:180;
    script.damage=best->damage>0?best->damage:(entity.damage>0?entity.damage:1);
    script.spread_degrees=std::max(0.0,best->spread_angle);
    script.count=std::max(1,best->projectile_count);
    script.radius=best->collision_radius>0?best->collision_radius:
        std::max(4.0,entity.radius*0.4);
    script.length=best->length>0?best->length:600;
    script.duration_frames=std::max(6.0,std::max(0.05,best->duration)*60.0);
    script.windup_frames=best->trigger_time>=0?std::clamp(best->trigger_time*60.0,0.0,240.0):18;
    script.period_frames=best->projectile_delay>0?double(best->projectile_delay)*2.0:
        std::max(30.0,script.windup_frames*2+60.0);
    script.precise=state.has_precise_attack&&best->evidence==AttackEvidence::verified;
    script.precision=best->evidence==AttackEvidence::verified?Precision::exact:
        best->evidence==AttackEvidence::inferred?Precision::estimated:Precision::estimated;
    script.unknown=best->unknown||best->evidence==AttackEvidence::candidate;
    script.risk_weight=std::max(1.0,best->risk_weight);
    script.evidence=best->prediction_source;
    if(!best->evidence_status.empty())script.evidence+=" ("+best->evidence_status+")";
    return script;
}
void spawn_projectile(SimWorld& world,const SimEnemy& enemy,Vec direction,const SimAttackScript& script,
                      const ForwardSimConfig& config) {
    if(int(world.projectiles.size())>=std::max(1,config.max_projectiles))return;
    SimProjectile projectile;
    projectile.id=uint32_t(0x90000000u+world.projectiles.size()+world.frame*131u);
    projectile.source=enemy.id;
    projectile.type=9;projectile.variant=0;projectile.subtype=0;
    projectile.pos=enemy.pos;
    projectile.spawn_pos=enemy.pos;
    projectile.vel=direction*script.speed;
    projectile.speed=script.speed;
    projectile.radius=std::max(3.0,script.radius);
    projectile.damage=std::max(0.5,script.damage);
    projectile.hostile=true;
    projectile.height=-20;
    projectile.height_known=false;
    projectile.life=5;
    projectile.fidelity=std::min(Fidelity::approximated,
        script.precision==Precision::exact?Fidelity::approximated:Fidelity::approximated);
    projectile.native.type=9;
    projectile.native.address=projectile.id;
    projectile.native.friction=1;
    projectile.native.speed_multiplier=1;
    world.projectiles.push_back(std::move(projectile));
    push_event(world,"projectile-spawn",enemy.id,projectile.id,script.damage,projectile.pos,
        "attack="+std::string(attack_primitive_name(script.primitive)));
}
void spawn_hazard(SimWorld& world,const SimEnemy& enemy,const SimAttackScript& script,
                  const ForwardSimConfig& config) {
    if(int(world.hazards.size())>=std::max(1,config.max_hazards))return;
    SimHazard hazard;
    hazard.spec.source=enemy.id;
    hazard.spec.risk_weight=std::max(1.0,script.risk_weight);
    hazard.spec.damage=std::max(0.5,script.damage);
    hazard.spec.virtual_hazard=true;
    hazard.spec.precision=script.precision;
    hazard.spec.evidence=script.evidence;
    hazard.spec.label=attack_primitive_name(script.primitive);
    switch(script.primitive) {
    case AttackPrimitive::laser:
        hazard.spec.kind=HazardKind::laser;
        hazard.spec.damage_class=DamageClass::laser;
        hazard.spec.damage_timing=DamageTiming::window;
        hazard.spec.shape=Shape::capsule;
        hazard.spec.pos=enemy.pos;
        hazard.spec.radius=std::max(2.0,script.radius);
        hazard.spec.end=enemy.pos+unit_safe(script.direction)*std::max(60.0,script.length);
        break;
    case AttackPrimitive::jump_landing:
        hazard.spec.kind=HazardKind::explosion;
        hazard.spec.damage_class=DamageClass::jump;
        hazard.spec.damage_timing=DamageTiming::instant;
        hazard.spec.shape=Shape::disc;
        hazard.spec.pos=script.target_position.finite()&&script.target_position.norm()>1?
            script.target_position:enemy.pos;
        hazard.spec.radius=std::max(18.0,script.radius*3);
        hazard.active_from=world.time+0.18;
        break;
    case AttackPrimitive::self_explosion:
    case AttackPrimitive::area_explosion:
        hazard.spec.kind=HazardKind::explosion;
        hazard.spec.damage_class=DamageClass::explosion;
        hazard.spec.damage_timing=DamageTiming::instant;
        hazard.spec.shape=Shape::disc;
        hazard.spec.pos=script.target_position.finite()&&script.target_position.norm()>1?
            script.target_position:enemy.pos;
        hazard.spec.radius=std::max(20.0,script.radius*2);
        break;
    case AttackPrimitive::summon:
        hazard.spec.kind=HazardKind::unknown;
        hazard.spec.damage_class=DamageClass::unknown;
        hazard.spec.damage_timing=DamageTiming::window;
        hazard.spec.shape=Shape::disc;
        hazard.spec.pos=enemy.pos;
        hazard.spec.radius=60;
        hazard.spec.precision=Precision::unknown;
        hazard.spec.evidence="summon primitive without a spawn model";
        break;
    case AttackPrimitive::uncertain_corridor:
        hazard.spec.kind=HazardKind::warning;
        hazard.spec.damage_class=DamageClass::unknown;
        hazard.spec.damage_timing=DamageTiming::window;
        hazard.spec.shape=Shape::capsule;
        hazard.spec.pos=enemy.pos;
        hazard.spec.radius=std::max(8.0,script.radius);
        hazard.spec.end=enemy.pos+unit_safe(script.direction)*std::max(80.0,script.length);
        hazard.spec.precision=Precision::unknown;
        break;
    case AttackPrimitive::uncertain_area:
        hazard.spec.kind=HazardKind::warning;
        hazard.spec.damage_class=DamageClass::unknown;
        hazard.spec.damage_timing=DamageTiming::window;
        hazard.spec.shape=Shape::disc;
        hazard.spec.pos=script.target_position.finite()&&script.target_position.norm()>1?
            script.target_position:enemy.pos;
        hazard.spec.radius=std::max(12.0,script.radius);
        hazard.spec.precision=Precision::unknown;
        break;
    default:return;
    }
    if(hazard.active_from<=0)hazard.active_from=world.time;
    if((script.unknown||script.precision==Precision::unknown)&&
       config.unknown_radius_scale>1.0) {
        const double scale=config.unknown_radius_scale;
        const Vec center=hazard.spec.pos;
        hazard.spec.radius*=scale;
        hazard.spec.end=center+(hazard.spec.end-center)*scale;
        for(auto& node:hazard.spec.nodes)node.pos=center+(node.pos-center)*scale;
        for(auto& point:hazard.spec.path)point=center+(point-center)*scale;
    }
    const double duration=std::max(1.0,script.duration_frames)*config.dt;
    hazard.active_until=std::max(hazard.active_from,world.time)+duration;
    if(hazard.spec.until>0&&hazard.spec.until<hazard.active_until)
        hazard.active_until=std::max(hazard.active_from,world.time)+hazard.spec.until;
    hazard.fidelity=script.precise?Fidelity::approximated:Fidelity::unknown;
    world.hazards.push_back(std::move(hazard));
    push_event(world,"hazard-spawn",enemy.id,0,script.damage,enemy.pos,
        std::string(attack_primitive_name(script.primitive)));
}
Vec attack_aim(const SimWorld& world,const SimEnemy& enemy,const SimAttackScript& script) {
    switch(script.targeting) {
    case AttackTargeting::player_position:return world.player.pos;
    case AttackTargeting::player_velocity_lead:return world.player.pos+world.player.vel*0.18;
    case AttackTargeting::source_target:
        return script.target_position.finite()&&script.target_position.norm()>1?
            script.target_position:enemy.pos;
    case AttackTargeting::fixed_direction:
        return enemy.pos+unit_safe(script.direction)*std::max(1.0,script.length);
    case AttackTargeting::self:return enemy.pos;
    case AttackTargeting::area:
        return script.target_position.finite()&&script.target_position.norm()>1?
            script.target_position:enemy.pos;
    case AttackTargeting::unknown:
    default:return world.player.pos;
    }
}
void fire_attack(SimWorld& world,SimEnemy& enemy,const ForwardSimConfig& config,
                 std::vector<SimEvent>& deferred) {
    const SimAttackScript& script=enemy.attack;
    if(script.primitive==AttackPrimitive::charge) {
        enemy.charging=true;
        enemy.charge_direction=unit_safe(attack_aim(world,enemy,script)-enemy.pos);
        enemy.charge_remaining=std::max(8.0,script.duration_frames);
        push_event(world,"attack-start",enemy.id,0,0,enemy.pos,"charge");
        return;
    }
    if(script.primitive==AttackPrimitive::aimed_projectile||
       script.primitive==AttackPrimitive::radial_projectile||
       script.primitive==AttackPrimitive::spread_projectile) {
        const Vec aim=attack_aim(world,enemy,script);
        Vec direction=unit_safe(aim-enemy.pos);
        if(direction.norm()<1e-9)direction={1,0};
        if(script.primitive==AttackPrimitive::radial_projectile) {
            const int count=std::clamp(script.count,1,24);
            for(int i=0;i<count;++i) {
                const double angle=2*pi*double(i)/double(count);
                spawn_projectile(world,enemy,rotated({1,0},angle),script,config);
            }
        }else {
            const int count=std::clamp(script.count,1,24);
            const double spread=script.spread_degrees>0?
                script.spread_degrees:double(count>1?10:0);
            for(int i=0;i<count;++i) {
                const double offset=count>1?spread*(double(i)/double(count-1)-.5):0;
                spawn_projectile(world,enemy,rotated(direction,offset*pi/180),script,config);
            }
        }
        push_event(world,"attack-fire",enemy.id,0,script.damage,enemy.pos,"projectile");
        return;
    }
    const Vec aim=attack_aim(world,enemy,script);
    SimAttackScript aimed=script;
    aimed.target_position=aim;
    aimed.direction=unit_safe(aim-enemy.pos,script.direction);
    spawn_hazard(world,enemy,aimed,config);
    push_event(world,"attack-fire",enemy.id,0,script.damage,enemy.pos,
        attack_primitive_name(script.primitive));
    (void)deferred;
}
void create_friendly_tear(SimWorld& world,Vec position,Vec velocity,const ForwardSimConfig& config) {
    if(int(world.projectiles.size())>=std::max(1,config.max_projectiles))return;
    SimProjectile projectile;
    projectile.id=uint32_t(0xA0000000u+world.projectiles.size()+world.frame*131u);
    projectile.source=world.player.native.body.address;
    projectile.type=9;projectile.pos=position;projectile.vel=velocity;
    projectile.spawn_pos=position;projectile.radius=std::max(2.0,config.tear_radius);
    projectile.damage=std::max(0.5,world.player.tear_damage);
    projectile.hostile=false;
    // Range is a travelled distance in the native game. Using the actual
    // launch speed keeps the range limit correct when the tear inherits the
    // player's velocity (moving forward must not extend the shot).
    const double launch_speed=velocity.norm();
    projectile.life=std::max(0.1,world.player.tear_range/
        std::max(1.0,launch_speed>1.0?launch_speed:world.player.tear_speed));
    projectile.fidelity=Fidelity::exact_native;
    projectile.native.type=9;projectile.native.address=projectile.id;
    projectile.native.friction=1;projectile.native.speed_multiplier=1;
    world.projectiles.push_back(std::move(projectile));
    push_event(world,"tear-spawn",projectile.source,projectile.id,projectile.damage,position);
}
void move_player(SimWorld& world,Move move,const ForwardSimConfig& config) {
    auto& player=world.player;
    player.native.body.pos=player.pos;
    player.native.body.vel=player.vel;
    Vec position=player.pos,velocity=player.vel;
    advance_native_player_motion(player.native,position,velocity,move,config.dt);
    const double radius=player.radius;
    auto clear=[&](Vec point) {return !grid_ready(world.room.grid)||
        world.room.grid.clearance(point,radius,player.flying)>=0;};
    auto sweep=[&](Vec from,Vec to) {return !grid_ready(world.room.grid)||
        world.room.grid.sweep_clear(from,to,radius,player.flying);};
    if(!sweep(player.pos,position)) {
        const Vec horizontal{position.x,player.pos.y};
        const Vec vertical{player.pos.x,position.y};
        const bool along_x=sweep(player.pos,horizontal);
        const bool along_y=sweep(player.pos,vertical);
        if(along_x&&(!along_y||clear(horizontal)||!clear(vertical))) {
            position=horizontal;velocity.y=0;
        }else if(along_y) {
            position=vertical;velocity.x=0;
        }else {
            position=player.pos;velocity={};
        }
    }
    if(grid_ready(world.room.grid)&&grid_bounds_ready(world.room.grid))
        position=world.room.grid.clamped_position(position,radius*0.25);
    player.pos=position;
    player.vel=velocity;
    player.native.body.pos=position;
    player.native.body.vel=velocity;
}
void update_projectiles(SimWorld& world,const ForwardSimConfig& config,const Vec& previous_player,
                        int parity,std::vector<SimEvent>& deaths) {
    auto& player=world.player;
    sync_native_views(world);
    ProjectileMotionContext motion_context;
    motion_context.grid=&world.room.grid;
    motion_context.room_type=world.room.room_type;
    motion_context.clock=uint32_t(world.frame);
    motion_context.player_pos=player.pos;
    motion_context.player_vel=player.vel;
    motion_context.player=&player.native.body;
    motion_context.lookup_user=&world;
    motion_context.lookup=find_projectile_entity;
    ProjectileMotionConfig motion_config;
    motion_config.simulate_height=config.simulate_projectile_height;
    motion_config.height_damage_floor=config.projectile_height_damage_floor;
    for(size_t index=0;index<world.projectiles.size();++index) {
        auto& projectile=world.projectiles[index];
        if(!live(projectile))continue;
        const Vec previous=projectile.pos;
        if(projectile.native_special&&config.native_projectile_motion) {
            // The Planner's recovered 30 Hz motion model. Even frames advance
            // one native tick; the odd frame interpolates with the new
            // velocity, matching the rest of the hybrid simulator.
            if((parity&1)==0) {
                ProjectileMotionState state;
                state.entity=projectile.native;
                state.pos=projectile.pos;
                state.vel=projectile.vel;
                state.height=projectile.height;
                state.falling=projectile.height_velocity;
                const bool active=advance_projectile(state,motion_context,
                    ++projectile.motion_tick,0,motion_config);
                projectile.native=state.entity;
                projectile.pos=state.pos;
                projectile.vel=state.vel;
                projectile.height=state.height;
                projectile.height_velocity=state.falling;
                projectile.damageable=state.damageable;
                if(!active) {projectile.dead=true;continue;}
            }else {
                projectile.pos=projectile.pos+projectile.vel*config.dt;
            }
        }else if(projectile.fidelity==Fidelity::exact_native) {
            projectile.pos=projectile.pos+projectile.vel*config.dt;
        }else {
            advance_entity_frame(projectile.native,projectile.pos,projectile.vel,parity,config.dt);
            if(projectile.homing&&projectile.hostile&&!player.dead) {
                const Vec desired=unit_safe(player.pos+player.vel*0.12-projectile.pos);
                const double strength=std::clamp(projectile.homing_strength,0.01,1.0);
                projectile.vel=(projectile.vel*(1-strength*.2)+desired*projectile.speed*strength*.2);
                if(projectile.vel.norm()>1e-9)projectile.vel=unit_safe(projectile.vel)*projectile.speed;
            }
            if(projectile.accelerating&&projectile.accel>0)
                projectile.vel=projectile.vel*std::pow(projectile.accel,config.dt*30.0);
        }
        if(projectile.maneuver_uncertain) {
            // Only mechanisms whose motion is not covered by the shared model
            // keep a bounded footprint. Modelled curve/orbit/change flags do
            // not get an extra unknown envelope.
            const double speed=projectile.vel.norm();
            projectile.maneuver_uncertainty=std::min(48.0,
                projectile.maneuver_uncertainty+speed*config.dt*0.35);
        }
        projectile.age+=config.dt;
        projectile.life-=config.dt;
        if(projectile.life<=0) {projectile.dead=true;continue;}
        if(grid_ready(world.room.grid)) {
            if(!world.room.grid.walkable(projectile.pos,std::max(1.0,projectile.radius*0.25),true))
                {projectile.dead=true;continue;}
            if(!projectile.hostile&&!world.room.grid.shot_clear(previous,projectile.pos))
                {projectile.dead=true;continue;}
        }
        if(!projectile.hostile) {
            bool consumed=false;
            for(auto& enemy:world.enemies) {
                if(!live(enemy))continue;
                if(moving_clearance(previous,projectile.pos,enemy.pos,enemy.pos,
                       projectile.radius+enemy.radius)<=0) {
                    bool died=false;
                    damage_enemy(world,enemy,projectile.damage,projectile.source,projectile.pos,
                        died,deaths);
                    consumed=true;
                    break;
                }
            }
            if(consumed) {projectile.dead=true;++player.hits;continue;}
        }else if(projectile.damageable&&!player.dead&&player.invulnerable<=0&&
                 moving_clearance(previous_player,player.pos,previous,projectile.pos,
                     player.radius+projectile.radius)<=0) {
            damage_player(world,projectile.damage,projectile.source,"projectile-hit",projectile.pos,
                config.invulnerability_frames);
            projectile.dead=true;
            continue;
        }
    }
    world.projectiles.erase(std::remove_if(world.projectiles.begin(),world.projectiles.end(),
        [](const SimProjectile& projectile){return projectile.dead;}),world.projectiles.end());
}
void update_enemies(SimWorld& world,const ForwardSimConfig& config,int parity,
                     std::vector<SimEvent>& deaths) {
    auto& player=world.player;
    for(auto& enemy:world.enemies) {
        if(!live(enemy))continue;
        if(enemy.contact_cooldown>0)--enemy.contact_cooldown;
        if(enemy.charging) {
            enemy.vel=enemy.charge_direction*450;
            advance_entity_frame(enemy.native,enemy.pos,enemy.vel,parity,config.dt);
            enemy.charge_remaining-=1;
            if(enemy.charge_remaining<=0)enemy.charging=false;
        }else if(enemy.windup>0) {
            enemy.windup-=1;
            enemy.vel=enemy.vel*0.85;
            if(enemy.windup<=0) {
                fire_attack(world,enemy,config,deaths);
                enemy.windup=0;
                enemy.cooldown=enemy.attack.period_frames;
            }
        }else {
            if(enemy.cooldown>0)enemy.cooldown-=1;
            if(enemy.cooldown<=0) {
                if(enemy.attack.windup_frames>0) {
                    enemy.windup=enemy.attack.windup_frames;
                }else {
                    fire_attack(world,enemy,config,deaths);
                    enemy.cooldown=std::max(1.0,enemy.attack.period_frames);
                }
            }
            if(enemy.windup<=0&&enemy.chase&&!player.dead&&enemy.speed_multiplier>0) {
                const Vec direction=unit_safe(player.pos-enemy.pos);
                const double speed=std::clamp(
                    (enemy.chase_speed>1?enemy.chase_speed:(enemy.speed>1?enemy.speed:70.0))*
                    enemy.speed_multiplier,15.0,420.0);
                enemy.vel=direction*speed;
                advance_entity_frame(enemy.native,enemy.pos,enemy.vel,parity,config.dt);
            }else {
                enemy.vel=enemy.vel*0.9;
            }
        }
        if(grid_ready(world.room.grid)&&grid_bounds_ready(world.room.grid))
            enemy.pos=world.room.grid.clamped_position(enemy.pos,enemy.radius*0.5);
        enemy.native.pos=enemy.pos;enemy.native.vel=enemy.vel;
        if(enemy.contact&&enemy.contact_cooldown<=0&&!player.dead&&player.invulnerable<=0&&
           distance(enemy.pos,player.pos)<=enemy.radius+player.radius) {
            damage_player(world,enemy.damage>0?enemy.damage:1,enemy.id,"contact-hit",enemy.pos,
                config.invulnerability_frames);
            enemy.contact_cooldown=15;
        }
    }
    // Remove dead enemies only after their death effects were scheduled. A
    // death blast is created only when the mechanism data names one.
    for(auto& enemy:world.enemies) {
        if(!live(enemy)&&enemy.death_blast) {
            if(int(world.hazards.size())<std::max(1,config.max_hazards)) {
                SimHazard hazard;
                hazard.spec.kind=HazardKind::explosion;
                hazard.spec.damage_class=DamageClass::explosion;
                hazard.spec.damage_timing=DamageTiming::instant;
                hazard.spec.shape=Shape::disc;
                hazard.spec.pos=enemy.pos;
                hazard.spec.radius=enemy.death_blast_radius;
                hazard.spec.damage=1;
                hazard.spec.source=enemy.id;
                hazard.spec.precision=Precision::estimated;
                hazard.spec.evidence="mechanism death behaviour";
                hazard.active_from=world.time;
                hazard.active_until=world.time+0.2;
                world.hazards.push_back(std::move(hazard));
            }
            enemy.death_blast=false;
        }
    }
    for(const auto& event:deaths)world.events.push_back(event);
    world.enemies.erase(std::remove_if(world.enemies.begin(),world.enemies.end(),
        [](const SimEnemy& enemy){return enemy.dead;}),world.enemies.end());
}
void update_hazards(SimWorld& world,const ForwardSimConfig& config,const Vec& previous_player) {
    auto& player=world.player;
    for(auto& hazard:world.hazards) {
        if(hazard.dead)continue;
        if(world.time>hazard.active_until) {hazard.dead=true;continue;}
        if(world.time<hazard.active_from)continue;
        if(hazard.spec.vel.norm()>1e-9)
            hazard.spec.pos=hazard.spec.pos+hazard.spec.vel*config.dt;
        if(player.dead)continue;
        const bool periodic=hazard.spec.damage_timing==DamageTiming::periodic;
        if(periodic) {
            if(world.time<hazard.next_tick)continue;
            hazard.next_tick=world.time+0.25;
        }else if(hazard.hit) {
            continue;
        }
        if(hazard_clearance(hazard,previous_player,player.pos,player.radius)<=0) {
            if(player.invulnerable>0)continue;
            damage_player(world,hazard.spec.damage>0?hazard.spec.damage:1,hazard.spec.source,
                "hazard-hit",hazard.spec.pos,config.invulnerability_frames);
            if(!periodic)hazard.hit=true;
        }
    }
    world.hazards.erase(std::remove_if(world.hazards.begin(),world.hazards.end(),
        [](const SimHazard& hazard){return hazard.dead;}),world.hazards.end());
}
void compute_danger_map(const SimWorld& world,const ForwardSimConfig& config,SimulationScore& score) {
    const auto& grid=world.room.grid;
    score.danger_area=0;
    score.escape_space=1;
    if(!config.danger_map||!grid_ready(grid))return;
    const size_t cells=grid.cells.size();
    std::vector<char> blocked(cells,0),danger(cells,0),reached(cells,0);
    int walkable=0,dangerous=0;
    for(size_t index=0;index<cells;++index) {
        const Vec point=grid.center(int(index));
        blocked[index]=!grid.walkable(point,4,false);
        if(!blocked[index])++walkable;
    }
    if(!walkable) {score.escape_space=0;return;}
    auto mark=[&](Vec point,double radius) {
        const double threshold=radius+28;
        for(size_t index=0;index<cells;++index) {
            if(blocked[index]||danger[index])continue;
            if(distance(grid.center(int(index)),point)<=threshold) {
                danger[index]=1;++dangerous;
            }
        }
    };
    const double horizon=config.dt*double(config.horizon_frames);
    for(const auto& hazard:world.hazards) {
        if(hazard.dead)continue;
        if(hazard.active_until<world.time)continue;
        if(hazard.active_from>world.time+horizon)continue;
        mark(hazard.spec.pos,hazard.spec.radius+config.danger_margin*0.5);
        if(hazard.spec.nodes.size()>=2)for(size_t i=0;i+1<hazard.spec.nodes.size();++i) {
            const Vec a=hazard.spec.nodes[i].pos,b=hazard.spec.nodes[i+1].pos;
            const int steps=std::max(1,int(std::ceil(distance(a,b)/20)));
            for(int step=0;step<=steps;++step)mark(a+(b-a)*(double(step)/steps),
                hazard.spec.radius+config.danger_margin*0.5);
        }
        if(hazard.spec.path.size()>=2)for(size_t i=0;i+1<hazard.spec.path.size();++i) {
            const Vec a=hazard.spec.path[i],b=hazard.spec.path[i+1];
            const int steps=std::max(1,int(std::ceil(distance(a,b)/20)));
            for(int step=0;step<=steps;++step)mark(a+(b-a)*(double(step)/steps),
                hazard.spec.radius+config.danger_margin*0.5);
        }
        if(hazard.spec.shape==Shape::capsule||hazard.spec.shape==Shape::polyline) {
            const Vec a=hazard.spec.pos,b=hazard.spec.end;
            const int steps=std::max(1,int(std::ceil(distance(a,b)/20)));
            for(int step=0;step<=steps;++step)mark(a+(b-a)*(double(step)/steps),
                hazard.spec.radius+config.danger_margin*0.5);
        }
    }
    for(const auto& projectile:world.projectiles) {
        if(!live(projectile)||!projectile.hostile)continue;
        const double extra=projectile.maneuver_uncertain?
            std::min(config.danger_margin*3.0,projectile.maneuver_uncertainty):0.0;
        for(int step=0;step<=4;++step) {
            const double time=horizon*double(step)/4.0;
            mark(projectile.pos+projectile.vel*time,
                projectile.radius+config.danger_margin*0.5+extra);
        }
    }
    score.danger_area=double(dangerous)/double(walkable);
    int start=cell_index(grid,world.player.pos);
    if(start<0||start>=int(cells)) {score.escape_space=0;return;}
    if(blocked[size_t(start)]) {
        // The player can stand flush against a wall while their nominal cell is
        // blocked. Measure escape area from the nearest free cell instead of
        // reporting zero space for a legal wall-hug position.
        int best=-1;double best_distance=1e9;
        for(size_t index=0;index<cells;++index) {
            if(blocked[index])continue;
            const double gap=distance(grid.center(int(index)),world.player.pos);
            if(gap<best_distance) {best_distance=gap;best=int(index);}
        }
        if(best<0) {score.escape_space=0;return;}
        start=best;
    }
    if(danger[size_t(start)]) {score.escape_space=0;return;}
    std::queue<int> open;
    open.push(start);reached[size_t(start)]=1;int reachable=0;
    while(!open.empty()) {
        const int current=open.front();open.pop();++reachable;
        const int x=current%grid.width;
        const int neighbors[4]={current-1,current+1,current-grid.width,current+grid.width};
        for(int index=0;index<4;++index) {
            const int next=neighbors[index];
            if(index==0&&x==0)continue;
            if(index==1&&x==grid.width-1)continue;
            if(next<0||next>=int(cells)||reached[size_t(next)]||blocked[size_t(next)]||
               danger[size_t(next)])continue;
            reached[size_t(next)]=1;open.push(next);
        }
    }
    score.escape_space=std::min(1.0,double(reachable)/double(walkable));
}
SimulationScore score_world(const SimWorld& world,const ForwardSimConfig& config) {
    SimulationScore score;
    score.frames=int(std::lround(world.time/config.dt));
    score.survival_time=world.time;
    score.damage_taken=std::max(0,world.player.max_health-world.player.health);
    score.damage_dealt=world.player.damage_dealt;
    score.kills=double(world.player.kills);
    score.enemy_hp_remaining=0;
    score.enemy_count=0;
    for(const auto& enemy:world.enemies) {
        if(!live(enemy))continue;
        ++score.enemy_count;
        score.enemy_hp_remaining+=std::max(0.0,enemy.hp);
    }
    score.player_dead=world.player_dead;
    const double health_fraction=world.player.max_health>0?
        double(world.player.health)/double(world.player.max_health):0;
    score.death_risk=world.player_dead?1.0:std::clamp((1.0-health_fraction)*0.5,0.0,0.5);
    score.time_to_clear=world.cleared?world.time:-1;
    score.clearance=10000;
    for(const auto& hazard:world.hazards)
        if(active(hazard,world.time))
            score.clearance=std::min(score.clearance,
                hazard_clearance(hazard,world.player.pos,world.player.pos,world.player.radius));
    for(const auto& projectile:world.projectiles) {
        if(!live(projectile)||!projectile.hostile)continue;
        score.clearance=std::min(score.clearance,
            distance(projectile.pos,world.player.pos)-projectile.radius-world.player.radius);
    }
    double uncertainty=0;
    for(const auto& hazard:world.hazards) {
        if(hazard.dead||hazard.spec.precision!=Precision::unknown)continue;
        const double remaining=std::max(0.0,hazard.active_until-world.time);
        uncertainty+=std::max(1.0,hazard.spec.risk_weight)*
            std::min(1.0,remaining/std::max(0.05,config.dt*config.horizon_frames));
    }
    for(const auto& enemy:world.enemies)
        if(live(enemy)&&enemy.behavior_precision==Precision::unknown)uncertainty+=0.25;
    for(const auto& projectile:world.projectiles) {
        if(!live(projectile)||!projectile.hostile)continue;
        if(!projectile.maneuver_kind.empty())++score.special_projectiles;
        if(projectile.maneuver_uncertain) {
            ++score.uncertain_maneuvers;
            // A turning/curved projectile keeps an explicit unknown component.
            // This uses the existing unknown-weight path, not a new reward.
            uncertainty+=0.25;
        }
    }
    score.unknown_uncertainty=uncertainty*std::max(0.0,config.unknown_scale);
    compute_danger_map(world,config,score);
    score.score=-100.0*score.damage_taken-1000.0*(score.player_dead?1.0:0.0)
        -200.0*score.death_risk-5.0*score.unknown_uncertainty
        +1.0*score.damage_dealt+25.0*score.kills+40.0*score.escape_space
        -30.0*score.danger_area
        +(score.time_to_clear>=0?10.0/(1.0+score.time_to_clear):0.0);
    if(!std::isfinite(score.score))score.score=-1e9;
    return score;
}
std::unique_ptr<SimulationBackend> make_backend(SimBackendKind kind,const ForwardSimConfig& config) {
    if(kind==SimBackendKind::wasm_native)
        return std::make_unique<WasmSimulationBackend>(probe_wasm_backend(),config);
    return std::make_unique<HybridSimulationBackend>(config);
}
std::string read_text(const std::filesystem::path& path) {
    std::ifstream in{path,std::ios::binary};
    if(!in)return {};
    std::ostringstream out;out<<in.rdbuf();
    return out.str();
}
bool contains(const std::string& text,const char* needle) {
    return text.find(needle)!=std::string::npos;
}
uint8_t confidence_from_precision(Precision value) {
    return uint8_t(int(value)+1);
}
uint8_t confidence_from_fidelity(Fidelity value) {
    return uint8_t(int(value)+1);
}
void raise_confidence(uint8_t& target,uint8_t value) {
    if(value>target)target=value;
}
void mark_cell(DangerSlice& slice,size_t index,uint8_t confidence,bool warning,
               uint8_t source) {
    if(warning) {
        if(index<slice.cell_warning_category.size())
            slice.cell_warning_category[index]|=source;
        slice.cell_warning[index]=1;
    }else {
        if(index<slice.cell_category.size())slice.cell_category[index]|=source;
        slice.cell_danger[index]=1;
        raise_confidence(slice.cell_confidence[index],confidence);
    }
}
void mark_disc_mask(DangerSlice& slice,int width,int height,Vec center,double radius,
                    uint8_t confidence,bool warning,uint8_t source) {
    if(width<=0||height<=0||!center.finite()||radius<0)return;
    const double reach=std::max(0.0,radius);
    const int x0=std::clamp(int(std::floor((center.x-reach-40.0)/40.0)),0,width-1);
    const int x1=std::clamp(int(std::floor((center.x+reach-40.0)/40.0)),0,width-1);
    const int y0=std::clamp(int(std::floor((center.y-reach-120.0)/40.0)),0,height-1);
    const int y1=std::clamp(int(std::floor((center.y+reach-120.0)/40.0)),0,height-1);
    const double rr=reach*reach;
    for(int y=y0;y<=y1;++y)for(int x=x0;x<=x1;++x) {
        const Vec delta{40.0+x*40.0-center.x,120.0+y*40.0-center.y};
        if(delta.dot(delta)>rr+1e-9)continue;
        mark_cell(slice,size_t(y*width+x),confidence,warning,source);
    }
}
void mark_segment_mask(DangerSlice& slice,int width,int height,Vec from,Vec to,
                       double radius,uint8_t confidence,bool warning,uint8_t source) {
    if(width<=0||height<=0||!from.finite()||!to.finite()||radius<0)return;
    const Vec lo{std::min(from.x,to.x)-radius,std::min(from.y,to.y)-radius};
    const Vec hi{std::max(from.x,to.x)+radius,std::max(from.y,to.y)+radius};
    const int x0=std::clamp(int(std::floor((lo.x-40.0)/40.0)),0,width-1);
    const int x1=std::clamp(int(std::floor((hi.x-40.0)/40.0)),0,width-1);
    const int y0=std::clamp(int(std::floor((lo.y-120.0)/40.0)),0,height-1);
    const int y1=std::clamp(int(std::floor((hi.y-120.0)/40.0)),0,height-1);
    for(int y=y0;y<=y1;++y)for(int x=x0;x<=x1;++x) {
        const Vec point{40.0+x*40.0,120.0+y*40.0};
        if(segment_distance(point,from,to)<=radius+1e-9)
            mark_cell(slice,size_t(y*width+x),confidence,warning,source);
    }
}
}
const char* danger_confidence_name(uint8_t value) {
    switch(value) {
    case danger_confidence_exact:return "exact";
    case danger_confidence_estimated:return "estimated";
    case danger_confidence_unknown:return "unknown";
    default:return "none";
    }
}
const char* fidelity_name(Fidelity value) {
    switch(value) {
    case Fidelity::exact_native:return "exact-native";
    case Fidelity::approximated:return "approximated";
    case Fidelity::unknown:return "unknown";
    }
    return "unknown";
}
const char* sim_backend_name(SimBackendKind value) {
    return value==SimBackendKind::wasm_native?"wasm-native":"hybrid-cpp";
}
TemporalDangerBuilder::TemporalDangerBuilder(TemporalDangerConfig config)
    :config_(std::move(config)) {
    reset();
}
void TemporalDangerBuilder::reset() {
    config_.slice_frames=std::max(1,config_.slice_frames);
    config_.max_slices=std::max(1,config_.max_slices);
    config_.dt=config_.dt>0?config_.dt:1.0/60;
    config_.danger_margin=std::max(0.0,config_.danger_margin);
    config_.player_radius=std::max(0.0,config_.player_radius);
    config_.static_radius=std::max(0.0,config_.static_radius);
    result_=TemporalDanger{};
    result_.slice_frames=config_.slice_frames;
    result_.dt=config_.dt;
    result_.player_radius=config_.player_radius;
    result_.source="explicit-sim-world-sequence";
    initialized_=false;
    previous_projectiles_.clear();
    previous_enemies_.clear();
    previous_hazards_.clear();
}
bool TemporalDangerBuilder::observe(const SimWorld& world) {
    const auto& grid=world.room.grid;
    if(!grid_ready(grid))return false;
    if(!initialized_) {
        result_.width=grid.width;
        result_.height=grid.height;
        result_.origin={40,120};
        result_.cell_size=40;
        result_.static_grid=grid;
        result_.player_flying=world.player.flying;
        const double static_radius=std::max(config_.static_radius,config_.player_radius);
        result_.static_blocked.assign(size_t(result_.cell_count()),0);
        for(int index=0;index<result_.cell_count();++index)
            result_.static_blocked[size_t(index)]=grid.walkable(
                grid.center(index),static_radius,world.player.flying)?0:1;
        result_.root_signature=temporal_world_signature(world);
        result_.time_origin=world.time;
        result_.valid=true;
        initialized_=true;
    }else if(result_.width!=grid.width||result_.height!=grid.height||
             size_t(result_.cell_count())!=grid.cells.size()) {
        return false;
    }
    const int frame=result_.frame_count;
    const int slice_index=frame/result_.slice_frames;
    if(slice_index>=config_.max_slices) {
        result_.truncated=true;
        return false;
    }
    while(int(result_.slices.size())<=slice_index) {
        DangerSlice slice;
        slice.frame_offset=int(result_.slices.size())*result_.slice_frames;
        slice.cell_danger.assign(size_t(result_.cell_count()),0);
        slice.cell_warning.assign(size_t(result_.cell_count()),0);
        slice.cell_confidence.assign(size_t(result_.cell_count()),0);
        slice.cell_category.assign(size_t(result_.cell_count()),0);
        slice.cell_warning_category.assign(size_t(result_.cell_count()),0);
        result_.slices.push_back(std::move(slice));
    }
    DangerSlice& slice=result_.slices[size_t(slice_index)];
    ++result_.frame_count;

    // Projectiles are swept from their actual previous simulator frame to the
    // current one. This preserves native curve/acceleration/homing motion that a
    // pos+vel*t sample would miss.
    std::unordered_map<uint32_t,Track> next_projectiles;
    next_projectiles.reserve(world.projectiles.size());
    for(const auto& projectile:world.projectiles) {
        if(!live(projectile)||!projectile.hostile||!projectile.damageable)continue;
        const double extra=projectile.maneuver_uncertain?
            std::clamp(projectile.maneuver_uncertainty,0.0,48.0):0.0;
        const double radius=std::max(0.0,projectile.radius)+
            config_.danger_margin+config_.player_radius+extra;
        uint8_t confidence=confidence_from_fidelity(projectile.fidelity);
        if(projectile.maneuver_uncertain)
            confidence=std::min<uint8_t>(confidence,danger_confidence_unknown);
        uint8_t source=danger_source_projectile;
        if(confidence==danger_confidence_unknown)source|=danger_source_unknown;
        mark_disc_mask(slice,result_.width,result_.height,projectile.pos,
            radius,confidence,false,source);
        const auto previous=previous_projectiles_.find(projectile.id);
        if(previous!=previous_projectiles_.end())
            mark_segment_mask(slice,result_.width,result_.height,
                previous->second.pos,projectile.pos,radius,confidence,false,source);
        if(projectile.id)next_projectiles[projectile.id]={projectile.pos,radius,false};
    }
    previous_projectiles_=std::move(next_projectiles);

    if(config_.include_enemies) {
        std::unordered_map<uint32_t,Track> next_enemies;
        next_enemies.reserve(world.enemies.size());
        for(const auto& enemy:world.enemies) {
            if(!live(enemy))continue;
            const bool charging=enemy.charging;
            if(!(enemy.contact||enemy.chase||charging))continue;
            const double radius=std::max(0.0,enemy.radius)+config_.danger_margin+
                config_.player_radius;
            uint8_t confidence=confidence_from_precision(enemy.behavior_precision);
            confidence=std::min<uint8_t>(confidence,
                confidence_from_fidelity(enemy.motion_fidelity));
            uint8_t source=danger_source_enemy;
            if(confidence==danger_confidence_unknown)source|=danger_source_unknown;
            mark_disc_mask(slice,result_.width,result_.height,enemy.pos,
                radius,confidence,false,source);
            const auto previous=previous_enemies_.find(enemy.id);
            if(previous!=previous_enemies_.end())
                mark_segment_mask(slice,result_.width,result_.height,
                    previous->second.pos,enemy.pos,radius,confidence,false,source);
            if(enemy.id)next_enemies[enemy.id]={enemy.pos,radius,charging};
        }
        previous_enemies_=std::move(next_enemies);
    }

    // Hazards carry their own active window. Before active_from they are a
    // warning, inside the window they are danger, after active_until they are
    // absent. Moving hazards are swept from their previous observed position.
    std::unordered_map<std::string,std::vector<Vec>> next_hazards;
    auto remaining_hazards=previous_hazards_;
    next_hazards.reserve(world.hazards.size());
    for(const auto& hazard:world.hazards) {
        if(hazard.dead||world.time>hazard.active_until+1e-9)continue;
        const bool active=world.time+1e-9>=hazard.active_from&&
            world.time<=hazard.active_until+1e-9;
        const bool future=world.time+1e-9<hazard.active_from;
        if(!active&&!future)continue;
        const bool warning=!active;
        const uint8_t confidence=confidence_from_precision(hazard.spec.precision);
        uint8_t source=danger_source_hazard;
        if(confidence==danger_confidence_unknown)source|=danger_source_unknown;
        const double radius=std::max(0.0,hazard.spec.radius)+config_.danger_margin+
            config_.player_radius;
        const std::string key=std::to_string(hazard.spec.source)+":"+
            std::to_string(int(hazard.spec.kind))+":"+hazard.spec.label+":"+
            std::to_string(int(std::lround(hazard.active_from*60.0)));
        const auto candidates=remaining_hazards.find(key);
        if(candidates!=remaining_hazards.end()&&!candidates->second.empty()) {
            size_t nearest=0;
            double nearest_distance=distance(hazard.spec.pos,candidates->second[0]);
            for(size_t i=1;i<candidates->second.size();++i) {
                const double gap=distance(hazard.spec.pos,candidates->second[i]);
                if(gap<nearest_distance) {nearest=i;nearest_distance=gap;}
            }
            mark_segment_mask(slice,result_.width,result_.height,
                candidates->second[nearest],hazard.spec.pos,
                radius,confidence,warning,source);
            candidates->second.erase(candidates->second.begin()+long(nearest));
        }
        mark_disc_mask(slice,result_.width,result_.height,hazard.spec.pos,
            radius,confidence,warning,source);
        for(size_t i=0;i+1<hazard.spec.nodes.size();++i)
            mark_segment_mask(slice,result_.width,result_.height,
                hazard.spec.nodes[i].pos,hazard.spec.nodes[i+1].pos,
                radius,confidence,warning,source);
        for(size_t i=0;i+1<hazard.spec.path.size();++i)
            mark_segment_mask(slice,result_.width,result_.height,
                hazard.spec.path[i],hazard.spec.path[i+1],
                radius,confidence,warning,source);
        if(hazard.spec.shape==Shape::capsule||hazard.spec.shape==Shape::polyline)
            mark_segment_mask(slice,result_.width,result_.height,
                hazard.spec.pos,hazard.spec.end,radius,confidence,warning,source);
        next_hazards[key].push_back(hazard.spec.pos);
    }
    previous_hazards_=std::move(next_hazards);
    return true;
}
TemporalDanger TemporalDangerBuilder::finish() const {
    TemporalDanger out=result_;
    out.valid=initialized_&&!out.slices.empty()&&out.width>0&&out.height>0;
    return out;
}
TemporalDanger build_temporal_danger(const std::vector<SimWorld>& frames,
                                     TemporalDangerConfig config) {
    TemporalDangerBuilder builder(std::move(config));
    for(const auto& frame:frames)
        if(!builder.observe(frame))break;
    return builder.finish();
}
int TemporalDanger::cell_at(Vec point) const {
    if(width<=0||height<=0||cell_size<=0||!point.finite())return -1;
    const int x=int(std::floor((point.x-origin.x)/cell_size));
    const int y=int(std::floor((point.y-origin.y)/cell_size));
    if(x<0||y<0||x>=width||y>=height)return -1;
    return y*width+x;
}
int TemporalDanger::slice_at_frame(int frame) const {
    if(frame<0||frame>=frame_count||slice_frames<=0)return -1;
    const int slice=frame/slice_frames;
    return slice>=0&&slice<int(slices.size())?slice:-1;
}
int TemporalDanger::slice_at_time(double time) const {
    if(dt<=0||!std::isfinite(time))return -1;
    const double relative=time-time_origin;
    if(relative<0)return -1;
    return slice_at_frame(int(std::floor(relative/dt+1e-9)));
}
bool TemporalDanger::covered(int frame) const {
    return slice_at_frame(frame)>=0;
}
bool TemporalDanger::static_blocked_at(int cell) const {
    return cell>=0&&cell<int(static_blocked.size())&&static_blocked[size_t(cell)]!=0;
}
bool TemporalDanger::danger_at_cell(int cell,int frame) const {
    const int slice=slice_at_frame(frame);
    if(cell<0||cell>=cell_count()||slice<0)return false;
    const auto& mask=slices[size_t(slice)].cell_danger;
    return cell<int(mask.size())&&mask[size_t(cell)]!=0;
}
bool TemporalDanger::danger_at(int cell,double time) const {
    const int slice=slice_at_time(time);
    if(cell<0||cell>=cell_count()||slice<0)return false;
    const auto& mask=slices[size_t(slice)].cell_danger;
    return cell<int(mask.size())&&mask[size_t(cell)]!=0;
}
bool TemporalDanger::warning_at_cell(int cell,int frame) const {
    const int slice=slice_at_frame(frame);
    if(cell<0||cell>=cell_count()||slice<0)return false;
    const auto& mask=slices[size_t(slice)].cell_warning;
    return cell<int(mask.size())&&mask[size_t(cell)]!=0;
}
bool TemporalDanger::warning_at(int cell,double time) const {
    const int slice=slice_at_time(time);
    if(cell<0||cell>=cell_count()||slice<0)return false;
    const auto& mask=slices[size_t(slice)].cell_warning;
    return cell<int(mask.size())&&mask[size_t(cell)]!=0;
}
uint8_t TemporalDanger::confidence_at_cell(int cell,int frame) const {
    const int slice=slice_at_frame(frame);
    if(cell<0||cell>=cell_count()||slice<0)return danger_confidence_none;
    const auto& mask=slices[size_t(slice)].cell_danger;
    if(cell>=int(mask.size())||!mask[size_t(cell)])return danger_confidence_none;
    const auto& confidence=slices[size_t(slice)].cell_confidence;
    return cell<int(confidence.size())?confidence[size_t(cell)]:
        uint8_t(danger_confidence_none);
}
uint8_t TemporalDanger::confidence_at(int cell,double time) const {
    const int slice=slice_at_time(time);
    if(cell<0||cell>=cell_count()||slice<0)return danger_confidence_none;
    const auto& mask=slices[size_t(slice)].cell_danger;
    if(cell>=int(mask.size())||!mask[size_t(cell)])return danger_confidence_none;
    const auto& confidence=slices[size_t(slice)].cell_confidence;
    return cell<int(confidence.size())?confidence[size_t(cell)]:
        uint8_t(danger_confidence_none);
}
namespace {
uint8_t category_of(const TemporalDanger& danger,int cell,int slice) {
    if(cell<0||cell>=danger.cell_count()||slice<0||
       slice>=int(danger.slices.size()))return danger_source_none;
    const auto& mask=danger.slices[size_t(slice)].cell_category;
    return cell<int(mask.size())?mask[size_t(cell)]:uint8_t(danger_source_none);
}
uint8_t warning_category_of(const TemporalDanger& danger,int cell,int slice) {
    if(cell<0||cell>=danger.cell_count()||slice<0||
       slice>=int(danger.slices.size()))return danger_source_none;
    const auto& mask=danger.slices[size_t(slice)].cell_warning_category;
    return cell<int(mask.size())?mask[size_t(cell)]:uint8_t(danger_source_none);
}
}
uint8_t TemporalDanger::category_at_cell(int cell,int frame) const {
    return category_of(*this,cell,slice_at_frame(frame));
}
uint8_t TemporalDanger::category_at(int cell,double time) const {
    return category_of(*this,cell,slice_at_time(time));
}
uint8_t TemporalDanger::warning_category_at_cell(int cell,int frame) const {
    return warning_category_of(*this,cell,slice_at_frame(frame));
}
uint8_t TemporalDanger::warning_category_at(int cell,double time) const {
    return warning_category_of(*this,cell,slice_at_time(time));
}
const char* danger_source_name(uint8_t value) {
    switch(value&(danger_source_enemy|danger_source_projectile|
                  danger_source_hazard)) {
    case danger_source_enemy:return "enemy";
    case danger_source_projectile:return "projectile";
    case danger_source_hazard:return "hazard";
    case danger_source_enemy|danger_source_projectile:return "enemy+projectile";
    case danger_source_enemy|danger_source_hazard:return "enemy+hazard";
    case danger_source_projectile|danger_source_hazard:return "projectile+hazard";
    case danger_source_enemy|danger_source_projectile|danger_source_hazard:
        return "mixed";
    }
    return (value&danger_source_unknown)?"unknown":"none";
}
json TemporalDanger::to_json() const {
    json rows=json::array();
    int blocked=0;
    for(uint8_t value:static_blocked)if(value)++blocked;
    for(const auto& slice:slices) {
        int dangerous=0,warning=0,max_confidence=int(danger_confidence_none);
        int enemy=0,projectile=0,hazard=0,unknown=0;
        int warning_enemy=0,warning_projectile=0,warning_hazard=0,
            warning_unknown=0;
        for(size_t i=0;i<slice.cell_danger.size();++i) {
            if(slice.cell_danger[i])++dangerous;
            if(i<slice.cell_warning.size()&&slice.cell_warning[i])++warning;
            if(i<slice.cell_confidence.size())
                max_confidence=std::max(max_confidence,int(slice.cell_confidence[i]));
            if(i<slice.cell_category.size()) {
                const uint8_t category=slice.cell_category[i];
                if(category&danger_source_enemy)++enemy;
                if(category&danger_source_projectile)++projectile;
                if(category&danger_source_hazard)++hazard;
                if(category&danger_source_unknown)++unknown;
            }
            if(i<slice.cell_warning_category.size()) {
                const uint8_t category=slice.cell_warning_category[i];
                if(category&danger_source_enemy)++warning_enemy;
                if(category&danger_source_projectile)++warning_projectile;
                if(category&danger_source_hazard)++warning_hazard;
                if(category&danger_source_unknown)++warning_unknown;
            }
        }
        rows.push_back({{"frame_offset",slice.frame_offset},
            {"danger_cells",dangerous},{"warning_cells",warning},
            {"enemy_cells",enemy},{"projectile_cells",projectile},
            {"hazard_cells",hazard},{"unknown_source_cells",unknown},
            {"warning_enemy_cells",warning_enemy},
            {"warning_projectile_cells",warning_projectile},
            {"warning_hazard_cells",warning_hazard},
            {"warning_unknown_source_cells",warning_unknown},
            {"max_confidence",max_confidence},
            {"max_confidence_name",danger_confidence_name(uint8_t(max_confidence))}});
    }
    return {{"valid",valid},{"truncated",truncated},{"source",source},
        {"slice_frames",slice_frames},{"slice_count",int(slices.size())},
        {"frame_count",frame_count},{"dt",dt},{"time_origin",time_origin},
        {"player_radius",player_radius},{"player_flying",player_flying},
        {"width",width},{"height",height},
        {"root_signature",root_signature},
        {"branch_signature",branch_signature},
        {"static_grid_valid",static_grid.valid},
        {"static_blocked_cells",blocked},{"slices",rows}};
}
const char* temporal_path_status_name(TemporalPathStatus value) {
    switch(value) {
    case TemporalPathStatus::safe:return "safe";
    case TemporalPathStatus::warning:return "warning";
    case TemporalPathStatus::static_blocked:return "static-blocked";
    case TemporalPathStatus::danger:return "danger";
    case TemporalPathStatus::unknown:return "unknown";
    }
    return "unknown";
}
json TemporalPathAssessment::to_json() const {
    return {{"evaluated",evaluated},{"truncated",truncated},
        {"status",temporal_path_status_name(status)},
        {"total_frames",total_frames},{"covered_frames",covered_frames},
        {"unknown_frames",unknown_frames},
        {"temporal_danger_frames",temporal_danger_frames},
        {"temporal_warning_frames",temporal_warning_frames},
        {"temporal_first_risk_frame",temporal_first_risk_frame},
        {"static_blocked_frames",static_blocked_frames},
        {"danger_enemy_frames",danger_enemy_frames},
        {"danger_projectile_frames",danger_projectile_frames},
        {"danger_hazard_frames",danger_hazard_frames},
        {"danger_unknown_frames",danger_unknown_frames},
        {"warning_enemy_frames",warning_enemy_frames},
        {"warning_projectile_frames",warning_projectile_frames},
        {"warning_hazard_frames",warning_hazard_frames},
        {"warning_unknown_frames",warning_unknown_frames},
        {"danger_sources",int(danger_sources)},
        {"warning_sources",int(warning_sources)},
        {"temporal_path_risk",temporal_path_risk},
        {"temporal_coverage",temporal_coverage},{"reason",reason}};
}
TemporalPathAssessment assess_temporal_path(const TemporalDanger& danger,
    const std::vector<TemporalTrajectorySample>& samples,
    TemporalPathAssessmentConfig config) {
    TemporalPathAssessment out;
    out.total_frames=int(samples.size());
    out.truncated=danger.truncated;
    if(!danger.valid||samples.empty()) {
        out.reason=!danger.valid?"invalid-danger-map":"empty-trajectory";
        return out;
    }
    out.evaluated=true;
    const double step=std::max(1.0,config.sweep_step);
    const double warning_weight=std::clamp(config.warning_risk_weight,0.0,1.0);
    int first_risk=-1;
    for(size_t index=0;index<samples.size();++index) {
        const auto& sample=samples[size_t(index)];
        bool covered=true;
        if(sample.radius>danger.player_radius+1e-6)covered=false;
        bool danger_hit=false,warning_hit=false,static_hit=false;
        uint8_t danger_source=danger_source_none;
        uint8_t warning_source=danger_source_none;
        auto inspect=[&](Vec point,double time) {
            if(danger.slice_at_time(time)<0)covered=false;
            const int cell=danger.cell_at(point);
            if(cell<0) {covered=false;return;}
            if(danger.static_grid.valid) {
                if(!danger.static_grid.walkable(point,sample.radius,
                        danger.player_flying))static_hit=true;
            }else if(danger.static_blocked_at(cell)) {
                static_hit=true;
            }
            const uint8_t category=danger.category_at_cell(cell,time);
            if(danger.danger_at(cell,time)) {
                danger_hit=true;
                danger_source|=category;
            }
            if(config.include_warning&&danger.warning_at(cell,time)) {
                warning_hit=true;
                warning_source|=danger.warning_category_at_cell(cell,time);
            }
        };
        if(index==0) {
            inspect(sample.position,sample.time);
        }else {
            const auto& previous=samples[index-1];
            if(danger.static_grid.valid&&
               !danger.static_grid.sweep_clear(previous.position,sample.position,
                   sample.radius,danger.player_flying))
                static_hit=true;
            const double length=distance(previous.position,sample.position);
            const int steps=std::max(1,int(std::ceil(length/step)));
            for(int part=0;part<=steps;++part) {
                const double fraction=double(part)/double(steps);
                const Vec point=previous.position+
                    (sample.position-previous.position)*fraction;
                const double time=previous.time+
                    (sample.time-previous.time)*fraction;
                inspect(point,time);
            }
        }
        if(covered)++out.covered_frames;
        else ++out.unknown_frames;
        if(danger_hit) {
            ++out.temporal_danger_frames;
            out.danger_sources|=danger_source;
            if(danger_source&danger_source_enemy)++out.danger_enemy_frames;
            if(danger_source&danger_source_projectile)++out.danger_projectile_frames;
            if(danger_source&danger_source_hazard)++out.danger_hazard_frames;
            if(danger_source&danger_source_unknown)++out.danger_unknown_frames;
            if(first_risk<0)first_risk=int(index);
        }else if(warning_hit) {
            ++out.temporal_warning_frames;
            out.warning_sources|=warning_source;
            if(warning_source&danger_source_enemy)++out.warning_enemy_frames;
            if(warning_source&danger_source_projectile)++out.warning_projectile_frames;
            if(warning_source&danger_source_hazard)++out.warning_hazard_frames;
            if(warning_source&danger_source_unknown)++out.warning_unknown_frames;
            if(first_risk<0)first_risk=int(index);
        }
        if(static_hit)++out.static_blocked_frames;
    }
    out.temporal_first_risk_frame=first_risk;
    out.temporal_coverage=out.total_frames>0?
        double(out.covered_frames)/double(out.total_frames):0.0;
    out.temporal_path_risk=std::clamp(
        (double(out.temporal_danger_frames)+
         warning_weight*double(out.temporal_warning_frames))/
        double(std::max(1,out.total_frames)),0.0,1.0);
    if(out.temporal_danger_frames>0) {
        out.status=TemporalPathStatus::danger;
        out.reason="active-danger-on-path";
    }else if(out.temporal_coverage<1.0-1e-9) {
        out.status=TemporalPathStatus::unknown;
        out.reason="outside-coverage";
    }else if(out.truncated) {
        out.status=TemporalPathStatus::unknown;
        out.reason="truncated-danger-map";
    }else if(out.static_blocked_frames>0) {
        out.status=TemporalPathStatus::static_blocked;
        out.reason="static-collision-on-path";
    }else if(out.temporal_warning_frames>0) {
        out.status=TemporalPathStatus::warning;
        out.reason="warning-on-path";
    }else {
        out.status=TemporalPathStatus::safe;
        out.reason="safe";
    }
    return out;
}
TemporalPathAssessment assess_temporal_trajectory(const TemporalTrajectory& trajectory,
    TemporalPathAssessmentConfig config) {
    TemporalPathAssessment out;
    if(!trajectory.valid) {
        out.reason="invalid-trajectory";
        return out;
    }
    if(trajectory.branch_signature&&trajectory.danger.branch_signature) {
        if(trajectory.branch_signature!=trajectory.danger.branch_signature) {
            out.reason="branch-signature-mismatch";
            return out;
        }
    }else if(trajectory.root_signature&&trajectory.danger.root_signature&&
             trajectory.root_signature!=trajectory.danger.root_signature) {
        out.reason="branch-signature-mismatch";
        return out;
    }
    out=assess_temporal_path(trajectory.danger,trajectory.samples,config);
    out.truncated=out.truncated||trajectory.truncated;
    if(out.status!=TemporalPathStatus::danger&&out.truncated) {
        out.status=TemporalPathStatus::unknown;
        out.reason="truncated-trajectory";
    }
    return out;
}
HybridSimulationBackend::HybridSimulationBackend(ForwardSimConfig config):config_(config) {}
SimBackendCapabilities HybridSimulationBackend::capabilities() const {
    SimBackendCapabilities capabilities;
    capabilities.restore=true;
    capabilities.fork=true;
    capabilities.deterministic=true;
    capabilities.full_internal_state=false;
    capabilities.restore_live_capture=false;
    capabilities.rng_state=false;
    capabilities.exact_player_motion=true;
    capabilities.exact_entity_physics=false;
    capabilities.mechanism_behavior=true;
    capabilities.unknown_threat_fallback=true;
    capabilities.restore_scope="Reader-visible fields, recovered mechanism primitives, "
        "native player and projectile integration formulas";
    capabilities.missing="RNG state, spawn queues, unread AI memory, native collision and "
        "knockback pipeline, full enemy state-machine internals";
    return capabilities;
}
bool HybridSimulationBackend::restore(const WorldStateSnapshot& snapshot,std::string* error) {
    world_=SimWorld{};
    physics_parity_=0;
    world_.frame=int(snapshot.frame.clock);
    world_.time=0;
    world_.backend=name();
    world_.room=snapshot.room;
    auto& player=world_.player;
    const auto& source=snapshot.player;
    player.native.body=source.body;
    player.native.max_speed=source.max_speed;
    player.native.tear_speed=source.tear_speed;
    player.native.tear_range=source.tear_range;
    player.native.fire_delay=source.fire_delay;
    player.native.flying=source.flying;
    player.native.can_shoot=source.can_shoot;
    player.native.controls=source.controls;
    player.native.attack_supported=source.attack_supported;
    player.native.weapons=source.weapons;
    player.pos=source.body.pos.finite()?source.body.pos:Vec{320,280};
    player.vel=source.body.vel.finite()?source.body.vel:Vec{};
    player.radius=source.body.radius>1?source.body.radius:10;
    player.max_speed=source.max_speed>0?source.max_speed:260;
    player.tear_speed=source.tear_speed>0?source.tear_speed:300;
    player.tear_range=source.tear_range>0?source.tear_range:260;
    player.fire_delay=source.fire_delay>0?source.fire_delay:10;
    player.speed_multiplier=source.body.speed_multiplier>0?source.body.speed_multiplier:1;
    player.slow_factor=source.body.slow_factor>0?source.body.slow_factor:1;
    player.tear_damage=config_.tear_damage;
    player.health=source.health>0?source.health:
        (source.body.hp>0?int(std::lround(source.body.hp)):6);
    // `health` is the Reader's own player-health field. The entity `max_hp`
    // slot is not the same quantity, so the baseline for "damage taken" is the
    // health observed in this snapshot.
    player.max_health=player.health;
    player.flying=source.flying;
    player.can_shoot=source.can_shoot&&source.attack_supported;
    player.attack_supported=source.attack_supported;
    player.dead=source.dead||player.health<=0;
    player.facing=Fire::none;
    player.fire_cooldown=source.shot_cooldown_frames.value_or(0);
    player.invulnerable=source.invulnerability_frames.value_or(0);
    world_.player_dead=player.dead;
    for(const auto& enemy:snapshot.enemies) {
        const Entity& entity=enemy.entity;
        if(!entity.enemy()||entity.friendly||!entity.alive())continue;
        if(!entity.pos.finite())continue;
        SimEnemy sim;
        sim.native=entity;
        sim.id=entity.address;sim.seed=entity.seed;
        sim.type=entity.type;sim.variant=entity.variant;sim.subtype=entity.subtype;
        sim.pos=entity.pos;sim.vel=entity.vel;
        sim.radius=entity.radius>2?entity.radius:16;
        sim.hp=entity.hp>0?entity.hp:(entity.max_hp>0?entity.max_hp:1);
        sim.max_hp=std::max(sim.hp,entity.max_hp>0?entity.max_hp:sim.hp);
        sim.damage=entity.damage>0?entity.damage:1;
        sim.speed_multiplier=entity.speed_multiplier>0?entity.speed_multiplier:1;
        sim.friction=entity.friction>0?entity.friction:1;
        sim.state=entity.state;sim.state_frame=entity.state_frame;
        sim.collision=entity.collision;
        sim.boss=entity.is_boss||enemy.boss_phase_known;
        sim.boss_phase=enemy.boss_phase_known&&enemy.boss_phase>=1?enemy.boss_phase:1;
        sim.invulnerable=entity.invulnerable||entity.no_target;
        sim.contact=entity.contact()&&entity.collision!=0;
        sim.chase=sim.contact;
        sim.speed=entity.vel.norm()>10?entity.vel.norm():(sim.contact?70.0:0.0);
        sim.chase_speed=sim.speed>1?sim.speed:70.0;
        sim.attack=build_script(enemy,config_);
        sim.cooldown=sim.attack.period_frames;
        sim.windup=0;
        bool timed=false;
        for(const auto& intent:enemy.intents)
            if(intent.trigger_time>=0&&intent.can_instantiate) {timed=true;break;}
        if(timed&&sim.attack.windup_frames>0) {
            sim.windup=sim.attack.windup_frames;
            sim.cooldown=0;
            sim.windup=std::min(sim.attack.windup_frames,240.0);
        }else if(entity.projectile_cooldown>0) {
            sim.cooldown=double(entity.projectile_cooldown)*2.0;
        }
        if(entity.projectile_delay>0)sim.cooldown=std::min(sim.cooldown,double(entity.projectile_delay)*2.0);
        sim.behavior_precision=sim.attack.precise?Precision::estimated:sim.attack.precision;
        if(sim.attack.unknown)sim.behavior_precision=Precision::unknown;
        sim.behavior_source=sim.attack.evidence;
        sim.motion_fidelity=Fidelity::approximated;
        // A death blast is created only when the mechanism behaviour model
        // explicitly names one. A default 80 px blast radius is not evidence.
        if(enemy.mechanism.behavior_model.is_object()) {
            const auto& model=enemy.mechanism.behavior_model;
            if(model.value("on_death","" )=="explode"||model.value("death_explosion",false)) {
                sim.death_blast=true;
                sim.death_blast_radius=std::max(20.0,model.value("death_radius",40.0));
            }
            const std::string movement=model.value("movement",std::string{});
            if(movement=="chase"||movement=="pursue"||model.value("chase",false)) {
                sim.chase=true;
                if(model.contains("chase_speed"))
                    sim.chase_speed=std::max(15.0,model.value("chase_speed",sim.chase_speed));
            }
        }
        world_.enemies.push_back(std::move(sim));
    }
    for(const auto& projectile:snapshot.projectiles) {
        const Entity& entity=projectile.entity;
        if(!entity.alive())continue;
        if(!entity.pos.finite()||!entity.vel.finite())continue;
        SimProjectile sim;
        sim.native=entity;
        sim.id=entity.address;
        sim.source=entity.spawner?entity.spawner:entity.parent;
        sim.type=entity.type;sim.variant=entity.variant;sim.subtype=entity.subtype;
        sim.pos=entity.pos;sim.vel=entity.vel;sim.spawn_pos=entity.pos;
        sim.radius=entity.radius>1?entity.radius:6;
        sim.damage=entity.damage>0?entity.damage:1;
        sim.speed=entity.vel.norm();
        sim.hostile=projectile.role==ProjectileRole::hostile||
            (projectile.role==ProjectileRole::neutral&&entity.hostile_source);
        sim.height=entity.height;
        sim.height_known=entity.height_known;
        sim.homing=(entity.projectile_flags&(projectile_flag::smart|projectile_flag::smart_perfect))!=0||
            entity.projectile_homing_strength>0;
        sim.homing_strength=std::clamp(entity.projectile_homing_strength,0.0,1.0);
        sim.accelerating=(entity.projectile_flags&(projectile_flag::accelerate|
            projectile_flag::decelerate|projectile_flag::accelerate_ex))!=0;
        sim.accel=entity.projectile_accel>0?entity.projectile_accel:1;
        sim.change_flags=entity.projectile_change_flags;
        sim.change_timeout=entity.projectile_change_timeout;
        sim.change_velocity=entity.projectile_change_velocity;
        sim.curve=entity.projectile_curve;
        sim.orbit_distance=entity.projectile_orbit_distance;
        // The recovered motion model covers the flags below. Unmodelled
        // motion-like flags keep a bounded uncertainty envelope instead of
        // being silently treated as straight lines.
        const uint64_t modelled_motion =
            projectile_flag::smart|projectile_flag::wiggle|
            projectile_flag::orbit_cw|projectile_flag::orbit_ccw|
            projectile_flag::curve_left|projectile_flag::curve_right|
            projectile_flag::turn_horizontal|projectile_flag::sine_velocity|
            projectile_flag::mega_wiggle|projectile_flag::sawtooth_wiggle|
            projectile_flag::move_to_parent|projectile_flag::accelerate|
            projectile_flag::decelerate|projectile_flag::continuum|
            projectile_flag::change_flags_after_timeout|
            projectile_flag::change_velocity_after_timeout|
            projectile_flag::stasis|projectile_flag::accelerate_ex|
            projectile_flag::anti_gravity|projectile_flag::bounce|
            projectile_flag::bounce_floor|projectile_flag::smart_perfect|
            projectile_flag::accelerate_to_position|projectile_flag::orbit_parent;
        const uint64_t unmodelled_motion =
            (1ULL<<6)|   // BOOMERANG: return flight is not modelled
            (1ULL<<24)|  // SLOWED: speed multiplier stage is not modelled
            (1ULL<<25);  // TRIANGLE: triangle path is not modelled
        sim.native_special=(entity.projectile_flags&modelled_motion)!=0||
            entity.projectile_change_timeout>0||entity.projectile_change_flags!=0;
        sim.maneuver_uncertain=(entity.projectile_flags&unmodelled_motion)!=0;
        auto append_kind=[&](const char* kind) {
            if(!sim.maneuver_kind.empty())sim.maneuver_kind+="+";
            sim.maneuver_kind+=kind;
        };
        if(sim.homing)append_kind("homing");
        if(entity.projectile_flags&(projectile_flag::accelerate|
            projectile_flag::decelerate|projectile_flag::accelerate_ex))
            append_kind("speed-change");
        if(entity.projectile_flags&(projectile_flag::curve_left|
            projectile_flag::curve_right|projectile_flag::sine_velocity|
            projectile_flag::wiggle|projectile_flag::mega_wiggle|
            projectile_flag::sawtooth_wiggle|projectile_flag::turn_horizontal))
            append_kind("curved");
        if(entity.projectile_flags&(projectile_flag::orbit_cw|
            projectile_flag::orbit_ccw|projectile_flag::orbit_parent))
            append_kind("orbiting");
        if(entity.projectile_flags&(projectile_flag::change_flags_after_timeout|
            projectile_flag::change_velocity_after_timeout)||
            entity.projectile_change_timeout>0)
            append_kind("multi-stage");
        if(entity.projectile_flags&projectile_flag::stasis)append_kind("stasis");
        if(sim.maneuver_uncertain&&sim.maneuver_kind.empty())
            append_kind("unmodelled");
        sim.damageable=projectile_can_damage(entity,entity.height,world_.room.room_type);
        sim.life=entity.timeout>0?double(entity.timeout)/30.0:
            (entity.birth_known?6.0:4.0);
        sim.fidelity=(sim.native_special||sim.homing||sim.accelerating)?
            Fidelity::approximated:Fidelity::exact_native;
        if(!sim.hostile)sim.fidelity=Fidelity::exact_native;
        world_.projectiles.push_back(std::move(sim));
    }
    for(const auto& hazard:snapshot.hazards) {
        SimHazard sim;
        sim.spec=hazard;
        sim.active_from=std::max(0.0,hazard.start);
        sim.active_until=hazard.until>0?std::min(hazard.until,infinite_time):infinite_time;
        sim.fidelity=sim.spec.precision==Precision::exact?Fidelity::approximated:Fidelity::unknown;
        if(!sim.spec.pos.finite())continue;
        if(config_.unknown_radius_scale>1.0&&
           (sim.spec.precision==Precision::unknown||sim.spec.virtual_hazard)) {
            const double scale=config_.unknown_radius_scale;
            const Vec center=sim.spec.pos;
            sim.spec.radius*=scale;
            sim.spec.end=center+(sim.spec.end-center)*scale;
            for(auto& node:sim.spec.nodes)node.pos=center+(node.pos-center)*scale;
            for(auto& point:sim.spec.path)point=center+(point-center)*scale;
        }
        world_.hazards.push_back(std::move(sim));
    }
    if(error)error->clear();
    return true;
}
bool HybridSimulationBackend::restore_world(const SimWorld& world,std::string* error) {
    if(!world.room.grid.valid||world.room.grid.width<=0||world.room.grid.height<=0||
       int(world.room.grid.cells.size())!=world.room.grid.width*world.room.grid.height) {
        if(error)*error="invalid SimWorld grid";
        return false;
    }
    world_=world;
    physics_parity_=0;
    world_.events.clear();
    world_.terminated=world_.player_dead;
    world_.backend=name();
    if(error)error->clear();
    return true;
}
std::unique_ptr<SimulationBackend> HybridSimulationBackend::fork() const {
    auto copy=std::make_unique<HybridSimulationBackend>(config_);
    copy->world_=world_;
    copy->physics_parity_=physics_parity_;
    return copy;
}
void HybridSimulationBackend::step(const SimAction& action,int frames) {
    for(int frame=0;frame<frames&&!terminated();++frame)advance(action);
}
void HybridSimulationBackend::advance(const SimAction& action) {
    if(terminated())return;
    const Vec previous_player=world_.player.pos;
    if(world_.player.health>0&&!world_.player.dead) {
        if(world_.player.invulnerable>0)--world_.player.invulnerable;
        if(world_.player.fire_cooldown>0)--world_.player.fire_cooldown;
        if(action.move!=Move::stay)world_.player.facing=Fire::none;
        move_player(world_,action.move,config_);
        if(action.fire!=Fire::none)world_.player.facing=action.fire;
        const bool wants_shot=config_.player_shoots&&action.shoot&&action.fire!=Fire::none&&
            world_.player.can_shoot&&world_.player.attack_supported;
        if(wants_shot&&world_.player.fire_cooldown<=0) {
            const Vec direction=gamebot::direction(action.fire);
            const Vec velocity=native_tear_velocity(action.fire,
                world_.player.tear_speed,world_.player.vel,config_.tear_inheritance);
            create_friendly_tear(world_,world_.player.pos+
                direction*config_.tear_spawn_offset,velocity,config_);
            world_.player.fire_cooldown=std::max(1,int(std::lround(world_.player.fire_delay*2.0)));
            ++world_.player.shots;
        }
    }
    std::vector<SimEvent> deaths;
    update_projectiles(world_,config_,previous_player,physics_parity_,deaths);
    update_enemies(world_,config_,physics_parity_,deaths);
    update_hazards(world_,config_,previous_player);
    bool damageable_enemy=false;
    for(const auto& enemy:world_.enemies)
        if(live(enemy)&&!enemy.invulnerable) {damageable_enemy=true;break;}
    if(!world_.cleared&&!damageable_enemy&&!world_.player_dead) {
        world_.cleared=true;
        push_event(world_,"room-cleared",0,0,0,world_.player.pos);
    }
    world_.frame+=1;
    world_.time+=config_.dt;
    ++physics_parity_;
    if(world_.player_dead)world_.terminated=true;
    if(config_.early_terminate&&!world_.player_dead&&
       world_.player.max_health-world_.player.health>=config_.early_terminate_damage) {
        world_.terminated=true;
        push_event(world_,"branch-terminated",0,0,
            double(world_.player.max_health-world_.player.health),world_.player.pos,
            "damage dominance threshold");
    }
}
std::vector<SimEvent> HybridSimulationBackend::take_events() {
    auto events=std::move(world_.events);
    world_.events.clear();
    return events;
}
void HybridSimulationBackend::score(SimulationScore& out) const {
    out=score_world(world_,config_);
}
SimBackendCapabilities WasmSimulationBackend::capabilities() const {
    SimBackendCapabilities capabilities;
    // The engine can snapshot/restore its own memory image, but this backend
    // has no way to build that image from a live Reader snapshot. Reporting
    // `restore` as available would be a false claim.
    capabilities.restore=report_.live_capture_restore;
    capabilities.fork=report_.live_capture_restore;
    capabilities.deterministic=report_.deterministic;
    capabilities.full_internal_state=false;
    capabilities.restore_live_capture=report_.live_capture_restore;
    capabilities.rng_state=false;
    capabilities.exact_player_motion=true;
    capabilities.exact_entity_physics=true;
    capabilities.mechanism_behavior=false;
    capabilities.unknown_threat_fallback=false;
    capabilities.restore_scope=report_.memory_snapshot_restore?
        "engine-owned quiescent frame memory image inside one WASM instance":"unavailable";
    capabilities.missing=report_.live_capture_restore?std::string{}:
        "no path maps a live Reader frame into the engine's native entity/RNG/room memory";
    return capabilities;
}
bool WasmSimulationBackend::restore(const WorldStateSnapshot& snapshot,std::string* error) {
    (void)snapshot;
    if(error)*error=report_.live_capture_restore?std::string{}:
        "WASM backend can restore only engine-owned memory snapshots; "
        "live-capture state injection is not implemented";
    return false;
}
std::unique_ptr<SimulationBackend> WasmSimulationBackend::fork() const {
    auto copy=std::make_unique<WasmSimulationBackend>(report_,config_);
    copy->world_=world_;
    return copy;
}
void WasmSimulationBackend::step(const SimAction& action,int frames) {
    (void)action;(void)frames;
}
WasmBackendReport probe_wasm_backend(const std::filesystem::path& search_root) {
    WasmBackendReport report;
    std::vector<std::filesystem::path> roots;
    if(!search_root.empty())roots.push_back(search_root);
    roots.push_back(std::filesystem::current_path());
    std::error_code ignored;
    for(auto root:roots) {
        for(int depth=0;depth<4&&root.has_parent_path();++depth,root=root.parent_path()) {
            const auto engine=root/"research/boss-lab/runtime/boot.wasm";
            const auto boot=root/"research/boss-lab/runtime/boot.mjs";
            const auto worker=root/"research/boss-lab/offline/engine_worker.mjs";
            if(!std::filesystem::exists(engine,ignored))continue;
            report.engine_present=true;
            report.engine_path=engine.string();
            report.worker_path=worker.string();
            const std::string worker_text=read_text(worker);
            report.frame_mode=contains(worker_text,"frameMode")&&
                contains(worker_text,"saveFrameSnapshot");
            report.memory_snapshot_restore=report.frame_mode&&
                contains(worker_text,"HEAPU8.set(snapshot.memory)")&&
                contains(worker_text,"restoreFrameSnapshot");
            report.external_state_injection=contains(worker_text,"writeFrameState")||
                contains(worker_text,"applyFrameState")||contains(worker_text,"injectState");
            report.full_internal_state_restore=report.memory_snapshot_restore&&
                report.external_state_injection;
            report.live_capture_restore=report.full_internal_state_restore;
            report.deterministic=std::filesystem::exists(
                root/"research/boss-lab/offline/check_native_determinism.mjs",ignored);
            if(std::filesystem::exists(engine,ignored))
                report.verified.push_back("native engine artifact: "+engine.string());
            if(std::filesystem::exists(boot,ignored))
                report.verified.push_back("Emscripten host: "+boot.string());
            if(report.frame_mode)
                report.verified.push_back("quiescent frame mode with save/restore hooks");
            if(report.memory_snapshot_restore)
                report.verified.push_back("snapshot/restore copies the full HEAPU8 image "
                    "plus frame, step and event counters");
            if(report.deterministic)
                report.verified.push_back("native determinism check script is present");
            const auto fork_smoke=root/"validation/gaper-engine-fork-smoke-20261101.json";
            if(std::filesystem::exists(fork_smoke,ignored))
                report.verified.push_back("engine-owned snapshot-restore fork is verified by "+
                    fork_smoke.string());
            const auto frame_snapshot=root/"research/boss-lab/results/frame-snapshot-delirium.json";
            if(std::filesystem::exists(frame_snapshot,ignored))
                report.verified.push_back("a saved Delirium frame snapshot restores the same "
                    "native state for later comparison: "+frame_snapshot.string());
            report.missing.push_back("Reader capture is not mapped into native entity, room "
                "or RNG memory; the engine only reads state it created itself");
            report.missing.push_back("memory snapshots are same-instance heap images: allocator "
                "addresses must match the live module");
            report.missing.push_back("the engine is a JS/WASM host process, not a library "
                "linked into the C++ bot");
            report.missing.push_back("RNG state is not captured by the Reader, so even a full "
                "injection could not reproduce the next random decision");
            report.missing.push_back("engine-owned reset/fork works, but that path starts from a "
                "state the engine itself created; it does not accept a live Reader snapshot");
            report.conclusion=report.full_internal_state_restore?
                "full internal restore is available":"full internal restore is NOT available; "
                "fork/restore of engine-owned runs works, live-capture restore does not";
            return report;
        }
    }
    report.conclusion="WASM engine artifacts were not found; WASM backend unavailable";
    report.missing.push_back("research/boss-lab/runtime/boot.wasm was not located");
    return report;
}
uint64_t sim_world_signature(const SimWorld& world) {
    uint64_t hash=1469598103934665603ull;
    auto bytes=[&](const void* data,size_t count) {
        const auto* raw=static_cast<const unsigned char*>(data);
        for(size_t i=0;i<count;++i) {hash^=raw[i];hash*=1099511628211ull;}
    };
    auto integer=[&](int64_t value) {bytes(&value,sizeof value);};
    auto real=[&](double value) {
        if(!std::isfinite(value))value=0;
        integer(int64_t(std::llround(value*64.0)));
    };
    integer(world.frame);
    real(world.time);
    real(world.player.pos.x);real(world.player.pos.y);
    real(world.player.vel.x);real(world.player.vel.y);
    integer(world.player.health);integer(world.player.invulnerable);
    integer(world.player.fire_cooldown);integer(world.player.dead?1:0);
    for(const auto& enemy:world.enemies) {
        integer(enemy.id);real(enemy.pos.x);real(enemy.pos.y);
        real(enemy.vel.x);real(enemy.vel.y);real(enemy.hp);
        real(enemy.cooldown);real(enemy.windup);integer(enemy.boss_phase);
        integer(enemy.dead?1:0);integer(enemy.state);
    }
    for(const auto& projectile:world.projectiles) {
        integer(projectile.id);real(projectile.pos.x);real(projectile.pos.y);
        real(projectile.vel.x);real(projectile.vel.y);real(projectile.life);
        real(projectile.age);real(projectile.height);
    }
    for(const auto& hazard:world.hazards) {
        real(hazard.active_from);real(hazard.active_until);
        real(hazard.spec.pos.x);real(hazard.spec.pos.y);
        real(hazard.spec.radius);real(hazard.spec.end.x);real(hazard.spec.end.y);
        real(hazard.spec.damage);integer(hazard.spec.source);
        integer(int(hazard.spec.kind));integer(int(hazard.spec.shape));
        integer(int(hazard.spec.damage_class));
        integer(hazard.hit?1:0);integer(hazard.dead?1:0);
    }
    return hash;
}
uint64_t temporal_world_signature(const SimWorld& world) {
    uint64_t hash=1469598103934665603ull;
    auto bytes=[&](const void* data,size_t count) {
        const auto* raw=static_cast<const unsigned char*>(data);
        for(size_t i=0;i<count;++i) {hash^=raw[i];hash*=1099511628211ull;}
    };
    auto integer=[&](int64_t value) {bytes(&value,sizeof value);};
    auto real=[&](double value) {
        if(!std::isfinite(value))value=0;
        integer(int64_t(std::llround(value*64.0)));
    };
    auto text=[&](const std::string& value) {
        integer(int64_t(value.size()));
        bytes(value.data(),value.size());
    };
    integer(world.frame);
    real(world.time);
    real(world.player.pos.x);real(world.player.pos.y);
    real(world.player.vel.x);real(world.player.vel.y);
    integer(world.player.health);integer(world.player.invulnerable);
    integer(world.player.fire_cooldown);integer(world.player.dead?1:0);
    real(world.player.speed_multiplier);real(world.player.slow_factor);
    integer(world.player.flying?1:0);integer(world.player.can_shoot?1:0);
    integer(world.player.attack_supported?1:0);
    integer(int(world.player.facing));integer(world.cleared?1:0);
    integer(world.player_dead?1:0);integer(world.terminated?1:0);
    text(world.backend);
    for(const auto& enemy:world.enemies) {
        integer(enemy.id);integer(enemy.seed);integer(enemy.type);
        integer(enemy.variant);integer(enemy.subtype);
        real(enemy.pos.x);real(enemy.pos.y);
        real(enemy.vel.x);real(enemy.vel.y);
        real(enemy.hp);real(enemy.max_hp);real(enemy.damage);
        real(enemy.speed);real(enemy.speed_multiplier);real(enemy.friction);
        real(enemy.cooldown);real(enemy.windup);real(enemy.active);
        integer(enemy.boss_phase);integer(enemy.contact_cooldown);
        integer(enemy.dead?1:0);integer(enemy.state);integer(enemy.state_frame);
        integer(enemy.contact?1:0);integer(enemy.flying?1:0);
        integer(enemy.chase?1:0);real(enemy.chase_speed);
        integer(enemy.charging?1:0);
        real(enemy.charge_direction.x);real(enemy.charge_direction.y);
        real(enemy.charge_remaining);
        integer(enemy.boss?1:0);integer(enemy.invulnerable?1:0);
        integer(enemy.death_blast?1:0);real(enemy.death_blast_radius);
        integer(int(enemy.motion_fidelity));
        integer(int(enemy.behavior_precision));
    }
    for(const auto& projectile:world.projectiles) {
        integer(projectile.id);integer(projectile.source);
        integer(projectile.type);integer(projectile.variant);
        integer(projectile.subtype);
        real(projectile.pos.x);real(projectile.pos.y);
        real(projectile.vel.x);real(projectile.vel.y);
        real(projectile.spawn_pos.x);real(projectile.spawn_pos.y);
        real(projectile.radius);real(projectile.damage);real(projectile.speed);
        real(projectile.life);real(projectile.age);
        real(projectile.height);real(projectile.height_velocity);
        integer(projectile.height_known?1:0);
        integer(projectile.hostile?1:0);integer(projectile.dead?1:0);
        integer(projectile.damageable?1:0);
        integer(projectile.homing?1:0);integer(projectile.accelerating?1:0);
        real(projectile.homing_strength);real(projectile.accel);
        integer(static_cast<int64_t>(projectile.change_flags));
        integer(projectile.change_timeout);real(projectile.change_velocity);
        real(projectile.curve);real(projectile.orbit_distance);
        integer(projectile.maneuver_uncertain?1:0);
        real(projectile.maneuver_uncertainty);
        integer(projectile.change_applied?1:0);
        integer(projectile.native_special?1:0);integer(projectile.motion_tick);
        text(projectile.maneuver_kind);integer(int(projectile.fidelity));
    }
    for(const auto& hazard:world.hazards) {
        real(hazard.active_from);real(hazard.active_until);
        real(hazard.spec.pos.x);real(hazard.spec.pos.y);
        real(hazard.spec.end.x);real(hazard.spec.end.y);
        real(hazard.spec.vel.x);real(hazard.spec.vel.y);
        real(hazard.spec.radius);real(hazard.spec.start);real(hazard.spec.until);
        real(hazard.spec.damage);real(hazard.spec.risk_weight);
        integer(hazard.spec.source);
        integer(int(hazard.spec.kind));integer(int(hazard.spec.shape));
        integer(int(hazard.spec.damage_class));
        integer(int(hazard.spec.damage_timing));
        integer(int(hazard.spec.precision));
        integer(hazard.spec.lethal?1:0);
        integer(hazard.spec.virtual_hazard?1:0);
        text(hazard.spec.label);text(hazard.spec.evidence);
        integer(int64_t(hazard.spec.path.size()));
        for(const auto& point:hazard.spec.path) {real(point.x);real(point.y);}
        integer(int64_t(hazard.spec.nodes.size()));
        for(const auto& node:hazard.spec.nodes) {
            real(node.pos.x);real(node.pos.y);
            real(node.incoming.x);real(node.incoming.y);
            real(node.outgoing.x);real(node.outgoing.y);
        }
        real(hazard.velocity.x);real(hazard.velocity.y);
        integer(hazard.hit?1:0);integer(hazard.dead?1:0);
        real(hazard.next_tick);integer(int(hazard.fidelity));
    }
    return hash;
}
uint64_t sim_cache_key(uint64_t state_signature,const std::vector<SimActionSegment>& plan) {
    uint64_t hash=state_signature^0x9E3779B97F4A7C15ull;
    auto bytes=[&](const void* data,size_t count) {
        const auto* raw=static_cast<const unsigned char*>(data);
        for(size_t i=0;i<count;++i) {hash^=raw[i];hash*=1099511628211ull;}
    };
    for(const auto& segment:plan) {
        const int move=int(segment.action.move);
        const int fire=int(segment.action.fire);
        const int shoot=segment.action.shoot?1:0;
        bytes(&move,sizeof move);bytes(&fire,sizeof fire);
        bytes(&shoot,sizeof shoot);bytes(&segment.frames,sizeof segment.frames);
    }
    return hash;
}
bool SimulationCache::get(uint64_t key,SimulationScore& out) {
    const auto found=entries_.find(key);
    if(found==entries_.end()) {++misses_;return false;}
    out=found->second.score;
    order_.erase(found->second.position);
    order_.push_back(key);
    found->second.position=std::prev(order_.end());
    ++hits_;
    return true;
}
void SimulationCache::put(uint64_t key,const SimulationScore& score) {
    const auto found=entries_.find(key);
    if(found!=entries_.end()) {
        found->second.score=score;
        order_.erase(found->second.position);
        order_.push_back(key);
        found->second.position=std::prev(order_.end());
        return;
    }
    if(int(entries_.size())>=capacity_&&!order_.empty()) {
        const uint64_t victim=order_.front();
        order_.pop_front();
        entries_.erase(victim);
        ++evictions_;
    }
    order_.push_back(key);
    entries_[key]=Entry{score,std::prev(order_.end())};
}
void SimulationCache::clear() {
    entries_.clear();order_.clear();hits_=misses_=evictions_=0;
}
json SimulationBatch::to_json() const {
    json rows=json::array();
    for(const auto& candidate:candidates) {
        json plan=json::array();
        for(const auto& segment:candidate.plan)
            plan.push_back({{"move",int(segment.action.move)},
                {"fire",int(segment.action.fire)},{"frames",segment.frames}});
        rows.push_back({{"index",candidate.index},{"move",int(candidate.first.move)},
            {"fire",int(candidate.first.fire)},{"score",candidate.score.to_json()},
            {"terminal",candidate.terminal},{"cached",candidate.cached},
            {"pruned",candidate.pruned},{"note",candidate.note},{"plan",plan}});
    }
    return {{"available",available},{"best",best},{"branches",branches},{"frames",frames},
        {"elapsed_ms",elapsed_ms},{"early_terminations",early_terminations},
        {"pruned",pruned},{"rejected",rejected},{"cache_hits",cache_hits},
        {"cache_misses",cache_misses},{"backend",sim_backend_name(backend)},
        {"capabilities",capabilities.to_json()},{"reason",reason},{"candidates",rows}};
}
SimulationPlanner::SimulationPlanner(ForwardSimConfig config,SimBackendKind backend)
    :config_(config),backend_kind_(backend),cache_(config.cache_entries) {
    if(backend==SimBackendKind::wasm_native)wasm_=probe_wasm_backend();
}
void SimulationPlanner::reset() {cache_.clear();}
SimulationBatch SimulationPlanner::evaluate(const WorldStateSnapshot& root,
    const std::vector<std::vector<SimActionSegment>>& plans) {
    const auto started=std::chrono::steady_clock::now();
    SimulationBatch batch;
    batch.backend=backend_kind_;
    batch.frames=config_.horizon_frames;
    auto backend=make_backend(backend_kind_,config_);
    batch.capabilities=backend->capabilities();
    std::string error;
    if(!backend->restore(root,&error)) {
        batch.available=false;
        batch.reason="restore failed: "+(error.empty()?std::string{"unknown"}:error);
        batch.elapsed_ms=std::chrono::duration<double,std::milli>(
            std::chrono::steady_clock::now()-started).count();
        return batch;
    }
    batch.available=true;
    const int limit=std::max(1,config_.max_branches);
    batch.branches=std::min(limit,int(plans.size()));
    batch.rejected=std::max(0,int(plans.size())-limit);
    const uint64_t hits_before=cache_.hits();
    const uint64_t misses_before=cache_.misses();
    SimulationScore best_score;
    bool have_best=false;
    for(int index=0;index<batch.branches;++index) {
        const auto& plan=plans[size_t(index)];
        SimulatedCandidate candidate;
        candidate.index=index;
        candidate.plan=plan;
        candidate.first=plan.empty()?SimAction{}:plan.front().action;
        auto branch=backend->fork();
        const uint64_t key=sim_cache_key(sim_world_signature(branch->state()),plan);
        if(cache_.get(key,candidate.score)) {
            candidate.cached=true;
            ++batch.cache_hits;
        }else {
            ++batch.cache_misses;
            int used=0;
            for(const auto& segment:plan) {
                if(used>=config_.horizon_frames)break;
                const int frames=std::min(segment.frames>0?segment.frames:config_.horizon_frames,
                    config_.horizon_frames-used);
                if(frames<=0)break;
                branch->step(segment.action,frames);
                used+=frames;
                if(branch->terminated())break;
                if(have_best&&config_.early_terminate) {
                    const SimulationScore partial=score_world(branch->state(),config_);
                    if(partial.damage_taken>best_score.damage_taken+1.0) {
                        branch->terminate();
                        candidate.pruned=true;
                        candidate.note="damage already exceeds best branch";
                        ++batch.pruned;
                        break;
                    }
                }
            }
            candidate.score=score_world(branch->state(),config_);
            cache_.put(key,candidate.score);
        }
        candidate.terminal=branch->terminated();
        if(candidate.terminal)++batch.early_terminations;
        if(candidate.pruned||!have_best||candidate.score.score>best_score.score) {
            if(!candidate.pruned) {
                best_score=candidate.score;
                have_best=true;
                batch.best=index;
            }
        }
        batch.candidates.push_back(std::move(candidate));
    }
    batch.cache_hits=cache_.hits()-hits_before;
    batch.cache_misses=cache_.misses()-misses_before;
    batch.elapsed_ms=std::chrono::duration<double,std::milli>(
        std::chrono::steady_clock::now()-started).count();
    batch.reason=batch.candidates.empty()?"no candidate plans":
        "branches restored once, forked per plan, scored from their own final state";
    return batch;
}
SimulationBatch SimulationPlanner::evaluate_actions(const WorldStateSnapshot& root,
    const std::vector<SimAction>& actions,int frames) {
    std::vector<std::vector<SimActionSegment>> plans;
    plans.reserve(actions.size());
    for(const auto& action:actions)
        plans.push_back({SimActionSegment{action,frames>0?frames:config_.horizon_frames}});
    return evaluate(root,plans);
}
ForwardSimulator::ForwardSimulator(ForwardSimConfig config,SimBackendKind backend)
    :config_(config),backend_(make_backend(backend,config)) {}
ForwardSimulator::ForwardSimulator(const ForwardSimulator& other)
    :config_(other.config_),backend_(other.backend_->fork()) {}
ForwardSimulator& ForwardSimulator::operator=(const ForwardSimulator& other) {
    if(this==&other)return *this;
    config_=other.config_;
    backend_=other.backend_->fork();
    return *this;
}
ForwardSimulator::~ForwardSimulator()=default;
bool ForwardSimulator::restore(const WorldStateSnapshot& snapshot,std::string* error) {
    return backend_->restore(snapshot,error);
}
bool ForwardSimulator::restore_world(const SimWorld& world,std::string* error) {
    return backend_->restore_world(world,error);
}
std::unique_ptr<ForwardSimulator> ForwardSimulator::fork() const {
    auto simulation=std::make_unique<ForwardSimulator>();
    simulation->config_=config_;
    simulation->backend_=backend_->fork();
    return simulation;
}
void ForwardSimulator::step(const SimAction& action,int frames) {backend_->step(action,frames);}
void ForwardSimulator::step_segments(const std::vector<SimActionSegment>& plan,int horizon_frames) {
    int used=0;
    const int horizon=horizon_frames>0?horizon_frames:config_.horizon_frames;
    for(const auto& segment:plan) {
        if(used>=horizon||terminal())break;
        const int frames=std::min(segment.frames>0?segment.frames:horizon,horizon-used);
        if(frames<=0)break;
        backend_->step(segment.action,frames);
        used+=frames;
    }
}
SimulationScore ForwardSimulator::score() const {
    return score_world(backend_->state(),config_);
}
WasmBackendReport ForwardSimulator::wasm_report(const std::filesystem::path& root) {
    return probe_wasm_backend(root);
}
TemporalTrajectory capture_temporal_trajectory(const ForwardSimulator& root,
    const std::vector<SimActionSegment>& plan,TemporalDangerConfig config) {
    TemporalTrajectory trajectory;
    const uint64_t root_signature=temporal_world_signature(root.world());
    const uint64_t branch_signature=sim_cache_key(root_signature,plan);
    config.player_radius=std::max(config.player_radius,root.world().player.radius);
    TemporalDangerBuilder builder(std::move(config));
    auto simulator=root.fork();
    auto record=[&](int frame) {
        const auto& world=simulator->world();
        trajectory.samples.push_back(TemporalTrajectorySample{
            frame,world.time,world.player.pos,world.player.radius});
    };
    if(!builder.observe(simulator->world())) {
        trajectory.danger=builder.finish();
        trajectory.root_signature=root_signature;
        trajectory.branch_signature=branch_signature;
        trajectory.danger.branch_signature=branch_signature;
        trajectory.source="branch-trajectory";
        return trajectory;
    }
    record(0);
    int frame=0;
    for(const auto& segment:plan) {
        const int frames=std::max(0,segment.frames);
        for(int part=0;part<frames;++part) {
            simulator->step(segment.action,1);
            ++frame;
            auto events=simulator->get_events();
            trajectory.events.insert(trajectory.events.end(),
                std::make_move_iterator(events.begin()),
                std::make_move_iterator(events.end()));
            if(!builder.observe(simulator->world())) {
                trajectory.truncated=true;
                break;
            }
            record(frame);
            if(simulator->terminal())break;
        }
        if(trajectory.truncated||simulator->terminal())break;
    }
    trajectory.danger=builder.finish();
    trajectory.truncated=trajectory.truncated||trajectory.danger.truncated;
    trajectory.valid=trajectory.danger.valid&&!trajectory.samples.empty();
    trajectory.root_signature=root_signature;
    trajectory.branch_signature=branch_signature;
    trajectory.danger.branch_signature=branch_signature;
    trajectory.source="branch-trajectory";
    return trajectory;
}
TemporalDanger capture_temporal_danger(const ForwardSimulator& root,
    const std::vector<SimActionSegment>& plan,TemporalDangerConfig config) {
    TemporalDanger result=capture_temporal_trajectory(root,plan,std::move(config)).danger;
    result.source="branch-simulation";
    return result;
}
} // namespace gamebot
