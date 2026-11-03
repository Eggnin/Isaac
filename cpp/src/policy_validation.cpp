#include "gamebot/policy_validation.hpp"
#include "gamebot/safety.hpp"
#include <algorithm>
#include <chrono>
#include <cmath>
#include <limits>
#include <random>
#include <set>
#include <unordered_map>

namespace gamebot {
namespace {
using clock_type=std::chrono::steady_clock;
double elapsed_ms(clock_type::time_point start) {
    return std::chrono::duration<double,std::milli>(clock_type::now()-start).count();
}
int cell_index(const Grid& grid,Vec point) {
    if(!grid.valid||grid.width<=0||grid.height<=0)return -1;
    const int x=int(std::floor((point.x-40.0)/40.0));
    const int y=int(std::floor((point.y-120.0)/40.0));
    if(x<0||y<0||x>=grid.width||y>=grid.height)return -1;
    return y*grid.width+x;
}
Grid make_grid(int width=28,int height=16) {
    Grid grid;
    grid.width=width;grid.height=height;grid.valid=true;grid.shape=0;
    grid.native_min={60,140};
    grid.native_max={60.0+(width-2)*40.0,140.0+(height-2)*40.0};
    grid.cells.assign(size_t(width*height),Cell{});
    return grid;
}
void block_cell(Grid& grid,int x,int y) {
    if(x<0||y<0||x>=grid.width||y>=grid.height)return;
    grid.cells[size_t(y*grid.width+x)].collision=2;
}
Vec cell_center(const Grid& grid,int x,int y) {
    return grid.center(y*grid.width+x);
}
SimAttackScript attack_script(AttackPrimitive primitive,double period=90,
    double windup=20,double duration=16,double speed=220,double radius=6,
    double length=500,bool unknown=false) {
    SimAttackScript script;
    script.primitive=primitive;
    script.targeting=AttackTargeting::player_position;
    script.period_frames=period;
    script.windup_frames=windup;
    script.duration_frames=duration;
    script.speed=speed;
    script.radius=radius;
    script.length=length;
    script.damage=1;
    script.risk_weight=1;
    script.count=1;
    script.unknown=unknown;
    script.precise=!unknown;
    script.precision=unknown?Precision::unknown:Precision::exact;
    script.evidence=unknown?"synthetic unknown attack":"synthetic exact attack";
    return script;
}
SimEnemy make_enemy(uint32_t id,int type,Vec pos,bool contact,bool chase,
    double speed,SimAttackScript script,double hp=20,double radius=16) {
    SimEnemy enemy;
    enemy.id=id;enemy.seed=id;
    enemy.type=type;enemy.variant=0;enemy.subtype=0;
    enemy.pos=pos;enemy.vel={};
    enemy.radius=radius;enemy.hp=hp;enemy.max_hp=hp;enemy.damage=1;
    enemy.collision=contact?2:1;
    enemy.contact=contact;enemy.chase=chase;
    enemy.speed=speed;enemy.chase_speed=speed;
    enemy.speed_multiplier=1;enemy.friction=1;
    enemy.attack=script;
    enemy.cooldown=script.period_frames;
    enemy.windup=script.windup_frames;
    enemy.behavior_precision=script.unknown?Precision::unknown:Precision::exact;
    enemy.motion_fidelity=Fidelity::approximated;
    enemy.native.type=type;enemy.native.variant=0;enemy.native.subtype=0;
    enemy.native.address=id;enemy.native.seed=id;
    enemy.native.exists=true;enemy.native.active=true;enemy.native.dead=false;
    enemy.native.friendly=false;
    enemy.native.pos=pos;enemy.native.vel={};
    enemy.native.radius=radius;enemy.native.hp=hp;enemy.native.max_hp=hp;
    enemy.native.damage=1;enemy.native.collision=enemy.collision;
    enemy.native.geometry_valid=true;
    return enemy;
}
SimProjectile make_projectile(uint32_t id,Vec pos,Vec vel,double radius=5,
    double life=8) {
    SimProjectile projectile;
    projectile.id=id;projectile.source=0;
    projectile.type=9;projectile.variant=0;projectile.subtype=0;
    projectile.pos=pos;projectile.vel=vel;projectile.spawn_pos=pos;
    projectile.radius=radius;projectile.damage=1;projectile.speed=vel.norm();
    projectile.life=life;projectile.age=0;
    projectile.hostile=true;projectile.damageable=true;
    projectile.height=-20;projectile.height_known=false;
    projectile.fidelity=Fidelity::approximated;
    projectile.native.type=9;projectile.native.address=id;
    projectile.native.exists=true;projectile.native.active=true;
    projectile.native.pos=pos;projectile.native.vel=vel;
    projectile.native.radius=radius;projectile.native.collision=1;
    return projectile;
}
SimHazard make_hazard(uint32_t source,HazardKind kind,Vec pos,Vec end,
    double radius,double from,double until,Precision precision,
    DamageTiming timing=DamageTiming::window,double damage=1) {
    SimHazard hazard;
    hazard.spec.kind=kind;
    hazard.spec.pos=pos;hazard.spec.end=end;
    hazard.spec.radius=radius;
    hazard.spec.damage=damage;
    hazard.spec.damage_class=kind==HazardKind::laser?DamageClass::laser:
        DamageClass::contact;
    hazard.spec.damage_timing=timing;
    hazard.spec.shape=kind==HazardKind::laser?Shape::capsule:Shape::disc;
    hazard.spec.precision=precision;
    hazard.spec.source=source;
    hazard.spec.label="synthetic";
    hazard.spec.evidence="counterfactual validation";
    hazard.spec.risk_weight=1;
    hazard.spec.virtual_hazard=precision==Precision::unknown;
    hazard.active_from=from;
    hazard.active_until=until;
    hazard.next_tick=timing==DamageTiming::periodic?0.10:0.0;
    hazard.fidelity=precision==Precision::exact?Fidelity::approximated:
        Fidelity::unknown;
    return hazard;
}
Vec jitter(Vec position,std::mt19937& rng,double amount,const Grid& grid) {
    std::uniform_real_distribution<double> offset(-amount,amount);
    Vec result{position.x+offset(rng),position.y+offset(rng)};
    result.x=std::clamp(result.x,grid.native_min.x+40.0,
        grid.native_max.x-40.0);
    result.y=std::clamp(result.y,grid.native_min.y+40.0,
        grid.native_max.y-40.0);
    return result;
}
const char* scenario_name(int kind) {
    switch(kind) {
    case 0:return "single-chaser";
    case 1:return "multi-encirclement";
    case 2:return "dense-projectile-corridor";
    case 3:return "laser-warning";
    case 4:return "wall-corner";
    case 5:return "charging-chaser";
    case 6:return "unknown-attack";
    case 7:return "mixed-pressure";
    }
    return "unknown";
}
SimWorld build_scenario(int kind,int seed) {
    SimWorld world;
    world.room.grid=make_grid();
    world.room.room_type=1;world.room.doors=4;
    world.player.pos={600,420};
    world.player.vel={};
    world.player.radius=10;
    world.player.max_speed=260;
    world.player.tear_speed=360;
    world.player.tear_range=400;
    world.player.fire_delay=10;
    world.player.tear_damage=3.5;
    world.player.health=6;
    world.player.max_health=6;
    world.player.can_shoot=true;
    world.player.attack_supported=true;
    world.player.flying=false;
    world.player.native.max_speed=world.player.max_speed;
    world.player.native.tear_speed=world.player.tear_speed;
    world.player.native.tear_range=world.player.tear_range;
    world.player.native.fire_delay=world.player.fire_delay;
    world.player.native.health=world.player.health;
    world.player.native.can_shoot=true;
    world.player.native.controls=true;
    world.player.native.attack_supported=true;
    world.player.native.flying=false;
    world.player.native.body.type=1;
    world.player.native.body.address=0x20000;
    world.player.native.body.exists=true;
    world.player.native.body.active=true;
    world.player.native.body.pos=world.player.pos;
    world.player.native.body.vel={};
    world.player.native.body.radius=world.player.radius;
    world.player.native.body.hp=world.player.health;
    world.frame=0;world.time=0;
    std::mt19937 rng(uint32_t(seed*0x9E3779B9u+uint32_t(kind)*0x85EBCA6Bu+
        0xC2B2AE35u));
    auto add=[&](SimEnemy enemy) {world.enemies.push_back(std::move(enemy));};
    auto add_projectile=[&](SimProjectile projectile) {
        world.projectiles.push_back(std::move(projectile));
    };
    auto add_hazard=[&](SimHazard hazard) {
        world.hazards.push_back(std::move(hazard));
    };
    // 240 frames (4 s) matches the ForwardSimulator's restored-windup cap, so
    // the snapshot-driven aim and the closed-loop body agree on when the
    // chaser starts moving.
    const auto contact_script=attack_script(AttackPrimitive::unknown,1200,240,6,
        0,4,40,true);
    const auto laser_script=attack_script(AttackPrimitive::laser,110,30,24,
        0,7,420,false);
    const auto shot_script=attack_script(AttackPrimitive::aimed_projectile,80,18,
        12,220,5,0,false);
    const auto charge_script=attack_script(AttackPrimitive::charge,140,24,22,
        450,8,240,false);
    const auto unknown_script=attack_script(AttackPrimitive::unknown,120,30,18,
        0,12,120,true);
    const Vec center=world.player.pos;
    switch(kind) {
    case 0: {
        add(make_enemy(0x310001,10,jitter({center.x+150,center.y},rng,18,
            world.room.grid),true,true,95,contact_script));
        break;
    }
    case 1: {
        for(int i=0;i<8;++i) {
            const double angle=2.0*pi*double(i)/8.0;
            const Vec pos{center.x+std::cos(angle)*210.0,
                center.y+std::sin(angle)*170.0};
            add(make_enemy(uint32_t(0x320001+i*0x10),10,
                jitter(pos,rng,16,world.room.grid),true,true,88,
                contact_script,24));
        }
        break;
    }
    case 2: {
        for(int y=0;y<world.room.grid.height;++y)
            for(int x=0;x<world.room.grid.width;++x)
                block_cell(world.room.grid,x,y);
        for(int x=2;x<=25;++x)block_cell(world.room.grid,x,8);
        // block_cell writes collision=2; clear the corridor explicitly.
        for(int x=2;x<=25;++x)
            world.room.grid.cells[size_t(8*world.room.grid.width+x)]=Cell{};
        world.player.pos=cell_center(world.room.grid,7,8);
        add(make_enemy(0x330001,10,cell_center(world.room.grid,2,8),true,true,
            82,contact_script,30));
        add(make_enemy(0x330011,10,cell_center(world.room.grid,25,8),true,true,
            82,contact_script,30));
        for(int i=0;i<24;++i) {
            const bool left=i%2==0;
            const int x=left?2+(i/2)*2:25-(i/2)*2;
            const Vec pos=cell_center(world.room.grid,x,8);
            if(distance(pos,world.player.pos)<70.0)continue;
            const Vec velocity=left?Vec{150,0}:Vec{-150,0};
            add_projectile(make_projectile(uint32_t(0x530000+i*0x10),
                jitter(pos,rng,5,world.room.grid),velocity,5,10));
        }
        break;
    }
    case 3: {
        add(make_enemy(0x340001,10,jitter({center.x-220,center.y},rng,12,
            world.room.grid),true,true,72,laser_script,30));
        add(make_enemy(0x340011,10,jitter({center.x+220,center.y},rng,12,
            world.room.grid),true,true,72,laser_script,30));
        for(int i=0;i<5;++i) {
            const double from=0.6+double(i)*0.7;
            const Vec pos=center+Vec{0,double(i%2?1:-1)*0.0};
            add_hazard(make_hazard(uint32_t(0x710000+i*0x10),HazardKind::laser,
                pos,pos+Vec{0,300},8,from,from+0.22,Precision::exact,
                DamageTiming::window,1));
        }
        break;
    }
    case 4: {
        world.player.pos=cell_center(world.room.grid,2,2);
        block_cell(world.room.grid,3,2);
        block_cell(world.room.grid,2,3);
        block_cell(world.room.grid,4,2);
        block_cell(world.room.grid,2,4);
        const Vec corner=world.player.pos;
        add(make_enemy(0x350001,10,jitter({corner.x-30,corner.y-35},rng,8,
            world.room.grid),true,true,92,contact_script,26));
        add(make_enemy(0x350011,10,jitter({corner.x-20,corner.y+120},rng,8,
            world.room.grid),true,true,92,contact_script,26));
        add(make_enemy(0x350021,10,jitter({corner.x+120,corner.y+100},rng,8,
            world.room.grid),true,true,92,contact_script,26));
        add_hazard(make_hazard(0x3500ff,HazardKind::fire,corner,corner,36,
            0.5,1000.0,Precision::exact,DamageTiming::periodic,1));
        break;
    }
    case 5: {
        add(make_enemy(0x360001,10,jitter({center.x-230,center.y},rng,14,
            world.room.grid),true,true,170,charge_script,30));
        add(make_enemy(0x360011,10,jitter({center.x+230,center.y},rng,14,
            world.room.grid),true,true,170,charge_script,30));
        break;
    }
    case 6: {
        add(make_enemy(0x370001,999,jitter({center.x-200,center.y-100},rng,14,
            world.room.grid),false,false,0,unknown_script,20));
        add(make_enemy(0x370011,999,jitter({center.x+200,center.y+100},rng,14,
            world.room.grid),false,false,0,unknown_script,20));
        add_hazard(make_hazard(0x3700ff,HazardKind::unknown,center,center,40,
            0.5,1000.0,Precision::unknown,DamageTiming::periodic,1));
        for(int i=0;i<3;++i) {
            const double from=0.4+double(i)*0.9;
            add_hazard(make_hazard(uint32_t(0x720000+i*0x10),HazardKind::unknown,
                center+Vec{double(i-1)*90,0},center+Vec{double(i-1)*90,260},14,
                from,from+0.5,Precision::unknown,DamageTiming::window,1));
        }
        break;
    }
    case 7: {
        add(make_enemy(0x380001,10,jitter({center.x-240,center.y},rng,12,
            world.room.grid),true,true,95,contact_script,26));
        add(make_enemy(0x380011,10,jitter({center.x+240,center.y},rng,12,
            world.room.grid),true,true,95,contact_script,26));
        add(make_enemy(0x380021,10,jitter({center.x,center.y-190},rng,12,
            world.room.grid),true,true,82,laser_script,26));
        add(make_enemy(0x380031,10,jitter({center.x,center.y+190},rng,12,
            world.room.grid),true,true,82,charge_script,26));
        add(make_enemy(0x380041,999,jitter({center.x+120,center.y-120},rng,12,
            world.room.grid),false,false,0,unknown_script,20));
        for(int i=0;i<20;++i) {
            const double angle=2.0*pi*double(i)/20.0;
            const Vec pos{center.x+std::cos(angle)*300.0,
                center.y+std::sin(angle)*230.0};
            const Vec velocity=(center-pos).unit()*150.0;
            add_projectile(make_projectile(uint32_t(0x540000+i*0x10),
                jitter(pos,rng,8,world.room.grid),velocity,5,9));
        }
        for(int i=0;i<4;++i) {
            const double from=0.8+double(i)*0.9;
            add_hazard(make_hazard(uint32_t(0x730000+i*0x10),
                HazardKind::laser,center+Vec{double(i-1)*100,0},
                center+Vec{double(i-1)*100,280},8,from,from+0.2,
                Precision::exact,DamageTiming::window,1));
        }
        break;
    }
    }
    return world;
}
EnemyIntent intent_from_script(const SimEnemy& enemy) {
    EnemyIntent intent;
    intent.enemy_id=enemy.id;intent.seed=enemy.seed;
    intent.type=enemy.type;intent.variant=enemy.variant;
    intent.subtype=enemy.subtype;
    intent.state=enemy.state;intent.state_frame=enemy.state_frame;
    intent.position=enemy.pos;intent.velocity=enemy.vel;
    // `unknown` scripts are not selected by build_script(), so a synthetic
    // contact body would lose its windup when the snapshot is restored. The
    // hazard primitive has the same fire_attack() path, so use it to preserve
    // the real windup counter in the counterfactual replay.
    intent.primitive=enemy.attack.primitive==AttackPrimitive::unknown?
        AttackPrimitive::uncertain_area:enemy.attack.primitive;
    intent.targeting=enemy.attack.targeting;
    intent.direction=enemy.attack.direction;
    intent.target_position=enemy.attack.target_position;
    intent.trigger_time=std::max(0.0,enemy.windup/60.0);
    intent.duration=enemy.attack.duration_frames/60.0;
    intent.projectile_speed=enemy.attack.speed;
    intent.spread_angle=enemy.attack.spread_degrees;
    intent.collision_radius=enemy.attack.radius;
    intent.damage=enemy.attack.damage;
    intent.length=enemy.attack.length;
    intent.risk_weight=enemy.attack.risk_weight;
    intent.unknown=enemy.attack.unknown;
    intent.projectile_count=enemy.attack.count;
    intent.can_instantiate=true;
    intent.evidence=enemy.attack.precise?AttackEvidence::verified:
        (enemy.attack.unknown?AttackEvidence::candidate:
            AttackEvidence::inferred);
    intent.confidence=enemy.attack.precise?0.9:0.5;
    intent.projectile_delay=int(std::max(0.0,
        enemy.attack.period_frames/2.0));
    intent.prediction_source="counterfactual script";
    intent.evidence_status=enemy.attack.unknown?"unknown":"synthetic exact";
    return intent;
}
WorldStateSnapshot snapshot_from_world(const SimWorld& world,uint32_t room_id) {
    WorldStateSnapshot snapshot;
    snapshot.frame.valid=true;
    snapshot.frame.clock=uint32_t(std::max(0,world.frame));
    snapshot.frame.room=room_id;
    snapshot.frame.cleared=world.cleared;
    snapshot.room=world.room;
    const auto& player=world.player;
    auto& out=snapshot.player;
    out.body.type=1;out.body.address=0x20000;
    out.body.exists=true;out.body.active=true;out.body.dead=world.player_dead;
    out.body.pos=player.pos;out.body.vel=player.vel;
    out.body.radius=player.radius;
    out.body.hp=player.health;out.body.max_hp=player.max_health;
    out.body.collision=0;out.body.damage=0;
    out.max_speed=player.max_speed;out.tear_speed=player.tear_speed;
    out.tear_range=player.tear_range;out.fire_delay=player.fire_delay;
    out.health=player.health;
    out.fire_direction=int(player.facing);
    out.flying=player.flying;out.can_shoot=player.can_shoot;
    out.controls=true;out.attack_supported=player.attack_supported;
    out.dead=world.player_dead||player.health<=0;
    out.invulnerability_frames=player.invulnerable;
    out.shot_cooldown_frames=player.fire_cooldown;
    for(const auto& enemy:world.enemies) {
        if(enemy.dead)continue;
        EnemyState state;
        auto& entity=state.entity;
        entity.type=enemy.type;entity.variant=enemy.variant;
        entity.subtype=enemy.subtype;
        entity.address=enemy.id;entity.seed=enemy.seed;
        entity.exists=true;entity.active=true;entity.dead=false;
        entity.friendly=false;entity.no_target=false;
        entity.invulnerable=enemy.invulnerable;
        entity.is_boss=enemy.boss;
        entity.pos=enemy.pos;entity.vel=enemy.vel;
        entity.radius=enemy.radius;entity.hp=enemy.hp;
        entity.max_hp=enemy.max_hp;entity.damage=enemy.damage;
        entity.collision=enemy.collision;
        entity.state=enemy.state;entity.state_frame=enemy.state_frame;
        entity.speed_multiplier=enemy.speed_multiplier;
        entity.friction=enemy.friction;
        entity.projectile_cooldown=int(std::max(0.0,
            double(std::lround(enemy.cooldown/2.0))));
        entity.projectile_delay=int(std::max(0.0,
            double(std::lround(enemy.attack.period_frames/2.0))));
        entity.geometry_valid=true;
        state.has_precise_attack=enemy.attack.precise;
        state.unknown_mechanism=enemy.attack.unknown;
        state.boss_phase_known=enemy.boss;
        state.boss_phase=enemy.boss_phase;
        state.intents.push_back(intent_from_script(enemy));
        snapshot.enemies.push_back(std::move(state));
    }
    for(const auto& projectile:world.projectiles) {
        if(projectile.dead)continue;
        ProjectileState state;
        auto& entity=state.entity;
        entity.type=projectile.type;entity.variant=projectile.variant;
        entity.subtype=projectile.subtype;
        entity.address=projectile.id;entity.seed=projectile.id;
        entity.exists=true;entity.active=true;entity.dead=false;
        entity.friendly=false;entity.hostile_source=projectile.hostile;
        entity.pos=projectile.pos;entity.vel=projectile.vel;
        entity.radius=projectile.radius;entity.damage=projectile.damage;
        entity.height=projectile.height;
        entity.height_known=projectile.height_known;
        entity.projectile_flags=projectile.change_flags;
        entity.projectile_homing_strength=projectile.homing_strength;
        entity.projectile_accel=projectile.accel;
        entity.projectile_curve=projectile.curve;
        entity.projectile_orbit_distance=projectile.orbit_distance;
        entity.projectile_change_flags=projectile.change_flags;
        entity.projectile_change_timeout=projectile.change_timeout;
        entity.projectile_change_velocity=projectile.change_velocity;
        entity.projectile_age=projectile.age;
        entity.timeout=int(std::max(1.0,projectile.life*30.0));
        entity.birth_known=true;
        entity.collision=1;
        state.role=projectile.hostile?ProjectileRole::hostile:
            ProjectileRole::friendly;
        state.real=true;
        snapshot.projectiles.push_back(std::move(state));
    }
    for(const auto& hazard:world.hazards) {
        if(hazard.dead)continue;
        HazardState state=hazard.spec;
        state.start=hazard.active_from;
        state.until=hazard.active_until;
        snapshot.hazards.push_back(std::move(state));
    }
    return snapshot;
}
JointPlan synthetic_joint(const WorldStateSnapshot& snapshot) {
    JointPlan joint;
    joint.decision.valid=true;
    joint.decision.stop=false;
    joint.decision.move=Move::stay;
    joint.decision.fire=Fire::none;
    joint.decision.reason="counterfactual-root";
    joint.baseline=joint.decision;
    joint.snapshot=snapshot;
    joint.snapshot_valid=true;
    joint.reason="counterfactual-policy-validation";
    return joint;
}
double enemy_hp(const SimWorld& world) {
    double total=0;
    for(const auto& enemy:world.enemies)
        if(!enemy.dead&&enemy.hp>0)total+=enemy.hp;
    return total;
}
double nearest_enemy_clearance(const SimWorld& world) {
    double best=1e9;
    for(const auto& enemy:world.enemies) {
        if(enemy.dead||enemy.hp<=0)continue;
        best=std::min(best,distance(world.player.pos,enemy.pos)-
            world.player.radius-enemy.radius);
    }
    return best;
}
void add_trajectory_metrics(PolicyRunMetrics& out,const std::vector<Vec>& positions,
    const std::vector<int>& moves,const Grid& grid) {
    if(positions.size()<2)return;
    out.action_segments=moves.empty()?0:1;
    for(size_t i=1;i<moves.size();++i)
        if(moves[i]!=moves[i-1])++out.action_segments;
    int run=0,previous=-1;
    std::vector<int> move_frames(9,0);
    for(int move:moves) {
        const int index=std::clamp(move,0,8);
        ++move_frames[size_t(index)];
        if(index==previous)++run;
        else {previous=index;run=1;}
        out.max_same_move_run=std::max(out.max_same_move_run,run);
    }
    int dominant=0;
    for(int frames:move_frames)dominant=std::max(dominant,frames);
    out.dominant_move_share=moves.empty()?0.0:
        double(dominant)/double(moves.size());
    for(size_t i=1;i<positions.size();++i)
        out.trajectory_length+=distance(positions[i-1],positions[i]);
    out.net_displacement=distance(positions.front(),positions.back());
    out.net_displacement_ratio=out.trajectory_length>1e-9?
        out.net_displacement/out.trajectory_length:0.0;
    Vec previous_heading{};
    bool have_heading=false;
    double total_turn=0,accumulated=0;
    const double threshold=30.0*pi/180.0;
    for(size_t i=1;i<positions.size();++i) {
        const Vec delta=positions[i]-positions[i-1];
        if(delta.norm()<=0.5)continue;
        const Vec heading=delta.unit();
        if(have_heading) {
            const double angle=std::abs(std::atan2(
                previous_heading.x*heading.y-previous_heading.y*heading.x,
                previous_heading.x*heading.x+previous_heading.y*heading.y));
            total_turn+=angle;accumulated+=angle;
            if(accumulated>threshold) {
                ++out.heading_change_count;accumulated=0;
            }
        }
        previous_heading=heading;have_heading=true;
    }
    out.trajectory_curvature=out.trajectory_length>1e-9?
        total_turn/out.trajectory_length:0.0;
    std::unordered_map<int,int> visits;
    int last=-1;
    for(const Vec& position:positions) {
        const int cell=cell_index(grid,position);
        if(cell<0)continue;
        if(last>=0&&cell!=last&&visits[cell]>0)++out.repeat_visit_count;
        ++visits[cell];last=cell;
    }
}
PolicyRunMetrics run_policy(CounterfactualPolicy policy,const SimWorld& initial,
    uint32_t room_id,const PolicyValidationConfig& config) {
    PolicyRunMetrics out;
    out.policy=counterfactual_policy_name(policy);
    ForwardSimulator world(config.simulation);
    std::string error;
    if(!world.restore_world(initial,&error)) {
        out.player_dead=true;
        return out;
    }
    MpcCombatPlanner planner(config.mpc,config.lookahead);
    SafetyGate gate(config.mpc.safety);
    const double initial_health=world.world().player.health;
    out.initial_enemy_hp=enemy_hp(world.world());
    out.min_enemy_distance=nearest_enemy_clearance(world.world());
    const auto initial_safety=gate.assess(world.world());
    out.min_clearance=initial_safety.min_clearance;
    out.reachable_area_start=initial_safety.reachable_area;
    out.reachable_area_min=initial_safety.reachable_area;
    out.reachable_area_end=initial_safety.reachable_area;
    out.escape_directions_min=initial_safety.escape_directions;
    std::vector<Vec> positions{world.world().player.pos};
    std::vector<int> moves;
    int damage_events=0;
    int total_frames=0;
    int step=0;
    for(;step<config.max_steps&&!world.terminal();++step) {
        const auto snapshot=snapshot_from_world(world.world(),room_id);
        const auto joint=synthetic_joint(snapshot);
        const auto plan=planner.plan(joint,snapshot,config.attack_enabled);
        const double plan_ms=plan.stats.elapsed_ms;
        out.mpc_ms+=plan_ms;
        double temporal_ms=0;
        SimAction action=plan.first;
        if(policy!=CounterfactualPolicy::original_mpc) {
            ForwardSimulator planning(config.simulation);
            std::string planning_error;
            if(planning.restore(snapshot,&planning_error)) {
                const auto reachability=search_temporal_reachability(planning,
                    config.temporal);
                temporal_ms=reachability.elapsed_ms;
                out.peak_temporal_memory_bytes=std::max(
                    out.peak_temporal_memory_bytes,
                    reachability.estimated_memory_bytes);
                const auto selection=select_temporal_route(reachability,
                    policy==CounterfactualPolicy::temporal_safest?
                        TemporalRoutePolicy::safest:TemporalRoutePolicy::escape,
                    true);
                if(selection.found&&!selection.plan.empty()) {
                    action.move=selection.plan.front().action.move;
                    action.fire=plan.first.fire;
                    action.shoot=plan.first.shoot;
                    if(selection.safe)++out.temporal_routes_found;
                    else ++out.temporal_unsafe_routes;
                }else {
                    ++out.fallbacks;
                }
            }else ++out.fallbacks;
        }
        out.temporal_ms+=temporal_ms;
        out.total_planning_ms+=plan_ms+temporal_ms;
        out.max_planning_ms=std::max(out.max_planning_ms,plan_ms+temporal_ms);
        std::vector<SimEvent> segment_events;
        for(int frame=0;frame<config.step_frames&&!world.terminal();++frame) {
            world.step(action,1);
            for(const auto& event:world.get_events()) {
                segment_events.push_back(event);
                if(event.target==0&&(event.kind=="projectile-hit"||
                    event.kind=="contact-hit"||event.kind=="hazard-hit")) {
                    ++damage_events;
                }
            }
            const auto& state=world.world();
            positions.push_back(state.player.pos);
            moves.push_back(int(action.move));
            ++total_frames;
            out.min_enemy_distance=std::min(out.min_enemy_distance,
                nearest_enemy_clearance(state));
        }
        const auto& state=world.world();
        const double damage_taken=std::max(0.0,initial_health-state.player.health);
        const auto safety=gate.assess(state,segment_events,total_frames,
            damage_taken);
        out.min_clearance=std::min(out.min_clearance,safety.min_clearance);
        out.reachable_area_min=std::min(out.reachable_area_min,
            safety.reachable_area);
        out.reachable_area_end=safety.reachable_area;
        out.escape_directions_min=std::min(out.escape_directions_min,
            safety.escape_directions);
        out.encirclement_risk_max=std::max(out.encirclement_risk_max,
            safety.encirclement_risk);
        if(safety.dead_end_risk>0.5)++out.dead_end_steps;
        if(safety.encirclement_risk>0.5)++out.encirclement_steps;
        if(world.terminal())break;
    }
    const auto& final=world.world();
    out.steps=step;
    out.ticks=step;
    out.frames=total_frames;
    out.player_dead=final.player_dead||final.player.health<=0;
    out.cleared=final.cleared;
    out.damage_events=damage_events;
    out.damage_taken=std::max(0.0,initial_health-final.player.health);
    out.hp_lost=int(std::lround(out.damage_taken));
    out.damage_dealt=int(std::lround(final.player.damage_dealt));
    out.kills=final.player.kills;
    out.shots=final.player.shots;
    out.hits=final.player.hits;
    out.final_enemy_hp=enemy_hp(final);
    out.enemy_hp_drop=std::max(0.0,out.initial_enemy_hp-out.final_enemy_hp);
    out.dps=total_frames>0?
        final.player.damage_dealt/(double(total_frames)/60.0):0.0;
    out.mean_planning_ms=out.steps>0?out.total_planning_ms/double(out.steps):0.0;
    add_trajectory_metrics(out,positions,moves,final.room.grid);
    return out;
}
void add_aggregate(PolicyAggregate& aggregate,const PolicyRunMetrics& metrics) {
    ++aggregate.runs;
    aggregate.steps+=metrics.steps;
    aggregate.frames+=metrics.frames;
    if(metrics.player_dead)++aggregate.deaths;
    if(metrics.cleared)++aggregate.cleared;
    aggregate.damage_events+=metrics.damage_events;
    aggregate.damage_dealt+=metrics.damage_dealt;
    aggregate.kills+=metrics.kills;
    aggregate.shots+=metrics.shots;
    aggregate.hits+=metrics.hits;
    aggregate.fallbacks+=metrics.fallbacks;
    aggregate.temporal_unsafe_routes+=metrics.temporal_unsafe_routes;
    aggregate.damage_taken+=metrics.damage_taken;
    aggregate.dps+=metrics.dps;
    aggregate.trajectory_length+=metrics.trajectory_length;
    aggregate.net_displacement_ratio+=metrics.net_displacement_ratio;
    aggregate.trajectory_curvature+=metrics.trajectory_curvature;
    aggregate.repeat_visits+=metrics.repeat_visit_count;
    aggregate.min_clearance=std::min(aggregate.min_clearance,
        metrics.min_clearance);
    aggregate.min_enemy_distance=std::min(aggregate.min_enemy_distance,
        metrics.min_enemy_distance);
    aggregate.reachable_area_min=std::min(aggregate.reachable_area_min,
        metrics.reachable_area_min);
    aggregate.escape_directions_min=std::min(aggregate.escape_directions_min,
        metrics.escape_directions_min);
    aggregate.total_planning_ms+=metrics.total_planning_ms;
    aggregate.max_planning_ms=std::max(aggregate.max_planning_ms,
        metrics.max_planning_ms);
    aggregate.peak_temporal_memory_bytes=std::max(
        aggregate.peak_temporal_memory_bytes,
        metrics.peak_temporal_memory_bytes);
}
} // namespace

const char* counterfactual_policy_name(CounterfactualPolicy value) {
    switch(value) {
    case CounterfactualPolicy::original_mpc:return "original-mpc";
    case CounterfactualPolicy::temporal_safest:return "temporal-safest";
    case CounterfactualPolicy::temporal_escape:return "temporal-escape";
    }
    return "unknown";
}
PolicyValidationConfig::PolicyValidationConfig() {
    simulation.horizon_frames=36;
    simulation.early_terminate=false;
    simulation.danger_map=false;
    simulation.player_shoots=true;
    simulation.tear_damage=3.5;
    simulation.invulnerability_frames=60;
    mpc.horizon_frames=24;
    mpc.min_horizon_frames=12;
    mpc.segment_frames=6;
    mpc.beam_width=3;
    mpc.min_beam_width=2;
    mpc.max_beam_width=4;
    mpc.root_candidates=12;
    mpc.full_root_actions=false;
    mpc.adaptive_beam=false;
    mpc.time_budget_ms=0;
    mpc.max_total_ms=0;
    mpc.max_simulations=512;
    mpc.reuse_previous=true;
    lookahead=default_mpc_lookahead();
    temporal.horizon_frames=24;
    temporal.step_frames=6;
    temporal.max_layers=4;
    temporal.max_states_per_layer=10;
    temporal.max_total_states=256;
    temporal.max_seconds=0;
    temporal.max_memory_bytes=8u*1024u*1024u;
    temporal.max_representative_paths=2;
    temporal.danger.max_slices=8;
}
json PolicyRunMetrics::to_json() const {
    return {{"policy",policy},{"steps",steps},{"frames",frames},{"ticks",ticks},
        {"player_dead",player_dead},{"cleared",cleared},
        {"hp_lost",hp_lost},{"damage_events",damage_events},
        {"damage_taken",damage_taken},{"damage_dealt",damage_dealt},
        {"kills",kills},{"shots",shots},{"hits",hits},{"dps",dps},
        {"initial_enemy_hp",initial_enemy_hp},{"final_enemy_hp",final_enemy_hp},
        {"enemy_hp_drop",enemy_hp_drop},
        {"trajectory_length",trajectory_length},
        {"net_displacement",net_displacement},
        {"net_displacement_ratio",net_displacement_ratio},
        {"heading_change_count",heading_change_count},
        {"repeat_visit_count",repeat_visit_count},
        {"trajectory_curvature",trajectory_curvature},
        {"action_segments",action_segments},
        {"max_same_move_run",max_same_move_run},
        {"dominant_move_share",dominant_move_share},
        {"min_enemy_distance",min_enemy_distance},
        {"min_clearance",min_clearance},
        {"reachable_area_start",reachable_area_start},
        {"reachable_area_min",reachable_area_min},
        {"reachable_area_end",reachable_area_end},
        {"escape_directions_min",escape_directions_min},
        {"dead_end_steps",dead_end_steps},
        {"encirclement_steps",encirclement_steps},
        {"encirclement_risk_max",encirclement_risk_max},
        {"total_planning_ms",total_planning_ms},{"mpc_ms",mpc_ms},
        {"temporal_ms",temporal_ms},{"mean_planning_ms",mean_planning_ms},
        {"max_planning_ms",max_planning_ms},
        {"peak_temporal_memory_bytes",peak_temporal_memory_bytes},
        {"temporal_routes_found",temporal_routes_found},
        {"temporal_unsafe_routes",temporal_unsafe_routes},
        {"fallbacks",fallbacks}};
}
json PolicyComparison::to_json() const {
    return {{"scenario",scenario},{"scenario_kind",scenario_kind},
        {"seed",seed},{"synthetic",synthetic},
        {"initial_signature",initial_signature},
        {"initial_signature_consistent",initial_signature_consistent},
        {"original_mpc",original_mpc.to_json()},
        {"temporal_safest",temporal_safest.to_json()},
        {"temporal_escape",temporal_escape.to_json()}};
}
json PolicyAggregate::to_json() const {
    const double mean_dps=runs>0?dps/double(runs):0.0;
    const double mean_net_ratio=runs>0?net_displacement_ratio/double(runs):0.0;
    const double mean_curvature=runs>0?trajectory_curvature/double(runs):0.0;
    const double mean_length=runs>0?trajectory_length/double(runs):0.0;
    return {{"policy",policy},{"runs",runs},{"steps",steps},{"frames",frames},
        {"deaths",deaths},{"cleared",cleared},
        {"damage_events",damage_events},
        {"damage_taken",damage_taken},
        {"mean_damage_taken",runs>0?damage_taken/double(runs):0.0},
        {"damage_dealt",damage_dealt},
        {"mean_damage_dealt",runs>0?double(damage_dealt)/double(runs):0.0},
        {"kills",kills},{"shots",shots},{"hits",hits},
        {"fallbacks",fallbacks},
        {"temporal_unsafe_routes",temporal_unsafe_routes},{"dps",mean_dps},
        {"trajectory_length",trajectory_length},
        {"mean_trajectory_length",mean_length},
        {"net_displacement_ratio",mean_net_ratio},
        {"trajectory_curvature",mean_curvature},
        {"repeat_visits",repeat_visits},
        {"min_clearance",min_clearance},
        {"min_enemy_distance",min_enemy_distance},
        {"reachable_area_min",reachable_area_min},
        {"escape_directions_min",escape_directions_min},
        {"total_planning_ms",total_planning_ms},
        {"mean_planning_ms",steps>0?total_planning_ms/double(steps):0.0},
        {"max_planning_ms",max_planning_ms},
        {"peak_temporal_memory_bytes",peak_temporal_memory_bytes}};
}
json PolicyValidationReport::to_json() const {
    json rows=json::array();
    for(const auto& comparison:comparisons)rows.push_back(comparison.to_json());
    json aggregate=json::array();
    for(const auto& item:aggregates)aggregate.push_back(item.to_json());
    return {{"valid",valid},{"synthetic",synthetic},
        {"evidence_scope",evidence_scope},{"scenario_count",scenario_count},
        {"seed_count",seed_count},{"runs",runs},{"elapsed_ms",elapsed_ms},
        {"aggregates",aggregate},{"comparisons",rows}};
}
PolicyValidationReport run_counterfactual_policy_validation(
    const PolicyValidationConfig& input) {
    const auto started=clock_type::now();
    PolicyValidationReport report;
    report.synthetic=true;
    report.evidence_scope="Synthetic deterministic ForwardSimulator worlds. "
        "Closed-loop per-frame damage/death/combat metrics; not a live game "
        "or no-damage certificate.";
    PolicyValidationConfig config=input;
    config.seeds=std::clamp(config.seeds,1,16);
    config.max_steps=std::clamp(config.max_steps,1,2000);
    config.step_frames=std::clamp(config.step_frames,1,30);
    config.scenario_limit=config.scenario_limit<=0?8:
        std::clamp(config.scenario_limit,1,8);
    config.simulation.early_terminate=false;
    config.simulation.horizon_frames=std::max(24,config.simulation.horizon_frames);
    config.mpc.horizon_frames=std::max(6,config.mpc.horizon_frames);
    config.mpc.segment_frames=config.step_frames;
    config.mpc.max_total_ms=0;
    config.mpc.time_budget_ms=0;
    config.temporal.horizon_frames=std::max(6,config.temporal.horizon_frames);
    config.temporal.step_frames=config.step_frames;
    config.temporal.max_layers=std::max(1,config.temporal.max_layers);
    config.temporal.max_seconds=0;
    report.scenario_count=config.scenario_limit;
    report.seed_count=config.seeds;
    PolicyAggregate original;
    PolicyAggregate safest;
    PolicyAggregate escape;
    original.policy=counterfactual_policy_name(
        CounterfactualPolicy::original_mpc);
    safest.policy=counterfactual_policy_name(
        CounterfactualPolicy::temporal_safest);
    escape.policy=counterfactual_policy_name(
        CounterfactualPolicy::temporal_escape);
    for(int kind=0;kind<report.scenario_count;++kind) {
        for(int seed=1;seed<=report.seed_count;++seed) {
            const uint32_t room_id=uint32_t(0x50000+kind*0x100+seed);
            const SimWorld initial=build_scenario(kind,seed);
            PolicyComparison comparison;
            comparison.scenario=scenario_name(kind);
            comparison.scenario_kind=scenario_name(kind);
            comparison.seed=seed;
            comparison.original_mpc=run_policy(
                CounterfactualPolicy::original_mpc,initial,room_id,config);
            comparison.temporal_safest=run_policy(
                CounterfactualPolicy::temporal_safest,initial,room_id,config);
            comparison.temporal_escape=run_policy(
                CounterfactualPolicy::temporal_escape,initial,room_id,config);
            ForwardSimulator probe(config.simulation);
            std::string error;
            if(probe.restore_world(initial,&error)) {
                comparison.initial_signature=temporal_world_signature(
                    probe.world());
            }
            // Every branch starts from the same SimWorld. The signature is
            // compared by restoring a fresh probe for each policy because the
            // actual run deliberately mutates its own independent world.
            ForwardSimulator mpc_probe(config.simulation);
            ForwardSimulator safest_probe(config.simulation);
            ForwardSimulator escape_probe(config.simulation);
            const bool restored=mpc_probe.restore_world(initial,&error)&&
                safest_probe.restore_world(initial,&error)&&
                escape_probe.restore_world(initial,&error);
            comparison.initial_signature_consistent=restored&&
                temporal_world_signature(mpc_probe.world())==
                    comparison.initial_signature&&
                temporal_world_signature(safest_probe.world())==
                    comparison.initial_signature&&
                temporal_world_signature(escape_probe.world())==
                    comparison.initial_signature;
            add_aggregate(original,comparison.original_mpc);
            add_aggregate(safest,comparison.temporal_safest);
            add_aggregate(escape,comparison.temporal_escape);
            report.comparisons.push_back(std::move(comparison));
            report.runs+=3;
        }
    }
    report.aggregates={std::move(original),std::move(safest),std::move(escape)};
    report.valid=!report.comparisons.empty()&&report.runs>0;
    report.elapsed_ms=elapsed_ms(started);
    return report;
}
} // namespace gamebot
