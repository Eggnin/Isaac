#include "gamebot/benchmark.hpp"
#include <algorithm>
#include <chrono>
#include <cmath>
#include <random>

namespace gamebot {
namespace {
constexpr double benchmark_dt=1.0/30;
MpcConfig pressure_mpc_config() {
    MpcConfig config;
    // Offline determinism: no wall-clock deadline. The fixed simulation cap
    // keeps baseline/MPC runs reproducible from the same scenario seed.
    config.horizon_frames=24;
    config.min_horizon_frames=12;
    config.segment_frames=6;
    config.beam_width=3;
    config.min_beam_width=2;
    config.max_beam_width=4;
    config.root_candidates=12;
    config.full_root_actions=false;
    config.adaptive_beam=false;
    config.time_budget_ms=0;
    config.max_total_ms=0;
    config.max_simulations=512;
    config.reuse_previous=true;
    return config;
}
Entity make_gaper(uint32_t address,uint32_t seed,Vec position) {
    Entity enemy;
    enemy.type=10;enemy.variant=0;enemy.subtype=0;
    enemy.address=address;enemy.seed=seed;
    enemy.pos=position;enemy.radius=16;enemy.hp=enemy.max_hp=40;enemy.damage=1;
    enemy.collision=2;enemy.friction=1;enemy.speed_multiplier=1;
    return enemy;
}
Entity make_bullet(uint32_t address,uint32_t seed,Vec position,Vec velocity,int clock) {
    Entity bullet;
    bullet.type=9;bullet.address=address;bullet.seed=seed;bullet.pos=position;bullet.vel=velocity;
    bullet.radius=6;bullet.damage=1;bullet.collision=1;bullet.birth=clock;bullet.hostile_source=true;
    return bullet;
}
struct Tear {
    Entity entity;
    Vec origin;
};
struct Volley {
    int tick;
    Entity bullet;
};
Frame make_frame(const BenchmarkScenario& scenario) {
    Frame frame;
    frame.valid=frame.has_player=frame.grid.valid=true;
    frame.clock=1000;frame.room=0x90001;frame.pid=4242;
    frame.grid.width=15;frame.grid.height=9;frame.grid.shape=0;
    frame.grid.cells.assign(size_t(frame.grid.width*frame.grid.height),Cell{});
    frame.player.body.type=1;frame.player.body.address=0x20000;frame.player.body.seed=1;
    frame.player.body.pos={320,280};frame.player.body.radius=10;
    frame.player.body.hp=scenario.player_health;frame.player.health=scenario.player_health;
    frame.player.body.friction=1;frame.player.body.speed_multiplier=1;
    frame.player.max_speed=260;frame.player.tear_speed=360;frame.player.tear_range=340;
    frame.player.fire_delay=10;frame.player.can_shoot=true;frame.player.attack_supported=true;
    frame.player.controls=true;
    return frame;
}
std::vector<Volley> build_volleys(const BenchmarkScenario& scenario) {
    std::vector<Volley> volleys;
    if(!scenario.include_volleys||scenario.volley_period<=0)return volleys;
    std::mt19937 rng(scenario.seed^0x5eed1234u);
    std::uniform_real_distribution<double> jitter(-55.0,55.0);
    std::uniform_real_distribution<double> edge(0.0,1.0);
    std::uniform_real_distribution<double> wiggle(-0.18,0.18);
    uint32_t index=0;
    for(int tick=scenario.volley_period;tick<scenario.ticks;tick+=scenario.volley_period) {
        Vec position,aim{320+jitter(rng),280+jitter(rng)};
        switch(int(edge(rng)*4)) {
        case 0:position={70,160+240*edge(rng)};break;
        case 1:position={560,160+240*edge(rng)};break;
        case 2:position={80+480*edge(rng),155};break;
        default:position={80+480*edge(rng),410};break;
        }
        Vec velocity=(aim-position).unit()*165;
        velocity=rotated(velocity,wiggle(rng));
        volleys.push_back({tick,make_bullet(0x50000+index*16,scenario.seed+index+1,position,velocity,1000+tick)});
        ++index;
    }
    return volleys;
}
void apply_player_move(Frame& frame,const Decision& decision) {
    Vec next=frame.player.body.pos,velocity=frame.player.body.vel;
    advance_native_player_motion(frame.player,next,velocity,decision.move,benchmark_dt);
    const double radius=frame.player.body.radius;
    auto clear=[&](Vec point){return frame.grid.clearance(point,radius,frame.player.flying)>=0;};
    if(!frame.grid.sweep_clear(frame.player.body.pos,next,radius,frame.player.flying)) {
        const Vec horizontal{next.x,frame.player.body.pos.y},vertical{frame.player.body.pos.x,next.y};
        const bool along_x=frame.grid.sweep_clear(frame.player.body.pos,horizontal,radius,frame.player.flying);
        const bool along_y=frame.grid.sweep_clear(frame.player.body.pos,vertical,radius,frame.player.flying);
        if(along_x&&(!along_y||clear(horizontal)||!clear(vertical))) { next=horizontal;velocity.y=0; }
        else if(along_y) { next=vertical;velocity.x=0; }
        else { next=frame.player.body.pos;velocity={}; }
    }
    frame.player.body.pos=next;
    frame.player.body.vel=velocity;
}
void move_enemies(Frame& frame,std::vector<Entity>& enemies,double speed,
                  const std::vector<int>* charge_ticks=nullptr,
                  const std::vector<Vec>* charge_directions=nullptr) {
    const Vec player=frame.player.body.pos;
    for(size_t index=0;index<enemies.size();++index) {
        auto& enemy=enemies[index];
        const Vec delta=player-enemy.pos;
        if(charge_ticks&&charge_directions&&(*charge_ticks)[index]>0)
            enemy.vel=(*charge_directions)[index]*450;
        else if(delta.norm()>1e-6)enemy.vel=delta.unit()*speed;
        Vec next=enemy.pos,velocity=enemy.vel;
        advance_native_entity_motion(enemy,next,velocity);
        next.x=std::clamp(next.x,76.0,564.0);next.y=std::clamp(next.y,156.0,404.0);
        enemy.pos=next;enemy.vel=velocity;
    }
}
PolicyMetrics run(const BenchmarkScenario& scenario,BenchmarkPolicy policy) {
    const bool joint_policy=policy==BenchmarkPolicy::topk_joint;
    const bool mpc_policy=policy==BenchmarkPolicy::mpc;
    Frame frame=make_frame(scenario);
    std::mt19937 rng(scenario.seed^0x13572468u);
    std::uniform_real_distribution<double> x(110.0,530.0),y(180.0,380.0);
    std::vector<Entity> enemies;
    for(int index=0;index<scenario.gapers;++index) {
        Vec position;
        for(int attempt=0;attempt<20;++attempt) {
            position={x(rng),y(rng)};
            if(distance(position,frame.player.body.pos)>140)break;
        }
        enemies.push_back(make_gaper(0x30000+uint32_t(index)*0x100,scenario.seed+uint32_t(index)+1,position));
    }
    const auto volleys=build_volleys(scenario);
    size_t next_volley=0;
    std::vector<Entity> bullets;
    std::vector<Tear> tears;
    std::vector<int> charge_ticks(enemies.size(),0);
    std::vector<Vec> charge_directions(enemies.size());
    if(scenario.unknown_charge||scenario.unknown_blast)for(auto& enemy:enemies)enemy.type=999;
    uint32_t next_address=0x70000;
    int fire_cooldown=0;
    int invulnerable=0;
    int enemies_killed=0,shots=0,shot_hits=0;double damage_dealt=0;
    uint32_t next_enemy_bullet=0x80000;
    Planner baseline;
    TopKJointPlanner joint;
    MpcCombatPlanner mpc(pressure_mpc_config(),default_mpc_lookahead());
    PolicyMetrics metrics;
    metrics.policy=mpc_policy?"mpc":joint_policy?"topk-joint":"baseline";
    auto start_clock=frame.clock;
    for(int tick=0;tick<scenario.ticks;++tick) {
        frame.clock=start_clock+uint32_t(tick);
        const int fire_period=scenario.enemy_fire_period;
        const int fire_trigger=fire_period>0?std::max(1,fire_period-10):0;
        const int phase=fire_period>0?tick%fire_period:0;
        if(fire_period>0)for(auto& enemy:enemies) {
            enemy.state=4;enemy.state_frame=0;
            enemy.animation_length=fire_period;enemy.animation_looping=true;
            enemy.animation_playing=true;enemy.animation_speed=1;
            enemy.animation_frame=double(phase);
            enemy.animation=phase>=fire_trigger-10&&phase<=fire_trigger?"Shoot":"WalkHori";
        }
        const int charge_period=scenario.unknown_charge?std::max(20,scenario.unknown_charge_period):0;
        const int charge_phase=charge_period>0?tick%charge_period:0;
        const int charge_trigger=charge_period>0?charge_period-10:0;
        if(charge_period>0)for(size_t index=0;index<enemies.size();++index) {
            auto& enemy=enemies[index];
            enemy.state=8;enemy.state_frame=charge_phase;
            enemy.animation_length=charge_period;enemy.animation_looping=true;
            enemy.animation_playing=true;enemy.animation_speed=1;
            enemy.animation_frame=double(charge_phase);
            const bool windup=charge_phase>=charge_trigger-10&&charge_phase<charge_trigger;
            enemy.animation=windup?"Attack":"WalkHori";
            if(windup)enemy.vel={};
            if(charge_phase==charge_trigger) {
                charge_ticks[index]=8;
                charge_directions[index]=(frame.player.body.pos-enemy.pos).unit();
            }
        }
        const int blast_period=scenario.unknown_blast?std::max(20,scenario.unknown_blast_period):0;
        const int blast_phase=blast_period>0?tick%blast_period:0;
        const int blast_trigger=blast_period>0?blast_period-10:0;
        if(blast_period>0)for(auto& enemy:enemies) {
            enemy.state=8;enemy.state_frame=blast_phase;
            enemy.animation_length=blast_period;enemy.animation_looping=true;
            enemy.animation_playing=true;enemy.animation_speed=1;
            enemy.animation_frame=double(blast_phase);
            const bool windup=blast_phase>=blast_trigger-10&&blast_phase<blast_trigger;
            enemy.animation=windup?"Explode":"WalkHori";
            if(blast_phase==blast_trigger&&invulnerable<=0&&
               distance(enemy.pos,frame.player.body.pos)<=100+frame.player.body.radius) {
                ++metrics.hp_lost;invulnerable=30;
            }
        }
        MechanismFrame mechanisms;
        const MechanismFrame* mechanism_ptr=nullptr;
        if(fire_period>0) {
            mechanisms.loaded=mechanisms.valid=true;
            mechanisms.room=frame.room;mechanisms.pid=frame.pid;mechanisms.clock=frame.clock;
            for(const auto& enemy:enemies) {
                MechanismObservation observation;
                observation.address=enemy.address;observation.seed=enemy.seed;
                observation.type=enemy.type;observation.variant=enemy.variant;
                observation.subtype=enemy.subtype;observation.state=enemy.state;
                observation.state_frame=enemy.state_frame;observation.health=enemy.hp;
                observation.max_health=enemy.max_hp;observation.confidence=.9;
                if(phase>=fire_trigger-10&&phase<=fire_trigger) {
                    observation.attack_type="ProjectileAttack";
                    observation.attack_type_evidence="benchmark geometry timing";
                    observation.attack_timing_verified=true;
                    observation.predicted_trigger_frame=frame.clock+(fire_trigger-phase);
                    observation.attack_target_semantics="player lock";
                    observation.predicted_action_end_frame=frame.clock+10+9;
                }else observation.attack_type="Unknown";
                mechanisms.enemies.push_back(std::move(observation));
                MonsterGeometryRef model;
                model.source=enemy.address;model.kind="projectile";
                model.source_state=4;model.source_animation="Shoot";
                model.trigger_animation_frame=fire_trigger;
                model.trigger_animation_frame_min=fire_trigger;
                model.trigger_animation_frame_max=fire_trigger;
                model.pattern="stream";model.pattern_direction="aimed";
                model.pattern_center="source";model.speed=scenario.enemy_projectile_speed;model.radius=5;
                model.duration=30;model.pattern_count=1;
                model.planning_validated=true;model.pre_spawn_verified=true;
                model.geometry_verified=true;
                model.evidence_status="deterministic benchmark enemy intent";
                model.source_refs="cpp/src/benchmark.cpp";
                model.id="benchmark.aimed-projectile";
                mechanisms.geometry_models.push_back(std::move(model));
            }
            mechanism_ptr=&mechanisms;
        }else if(!scenario.unknown_charge&&!scenario.unknown_blast) {
            // Known body identities without a precise attack model. This tests
            // the normal case: unknown-body tracking must not duplicate every
            // ordinary Gaper as an unknown attack.
            mechanisms.loaded=mechanisms.valid=true;
            mechanisms.room=frame.room;mechanisms.pid=frame.pid;mechanisms.clock=frame.clock;
            for(const auto& enemy:enemies) {
                MechanismObservation observation;
                observation.address=enemy.address;observation.seed=enemy.seed;
                observation.type=enemy.type;observation.variant=enemy.variant;
                observation.subtype=enemy.subtype;observation.state=enemy.state;
                observation.state_frame=enemy.state_frame;observation.health=enemy.hp;
                observation.max_health=enemy.max_hp;observation.confidence=.8;
                observation.unknown_state=false;observation.attack_type="Unknown";
                observation.state_semantics="known body; no precise attack model";
                mechanisms.enemies.push_back(std::move(observation));
            }
            mechanism_ptr=&mechanisms;
        }
        frame.player.health=std::max(0,scenario.player_health-metrics.hp_lost);
        frame.entities.clear();
        frame.entities.insert(frame.entities.end(),enemies.begin(),enemies.end());
        frame.entities.insert(frame.entities.end(),bullets.begin(),bullets.end());
        for(const auto& tear:tears)frame.entities.push_back(tear.entity);
        const auto decision_begin=std::chrono::steady_clock::now();
        Decision decision;
        if(mpc_policy) {
            const auto plan=mpc.decide(frame,true,mechanism_ptr);
            decision=plan.decision;
            metrics.mpc_available=metrics.mpc_available||plan.available;
            metrics.mpc_fallbacks+=plan.used_fallback?1:0;
            metrics.mpc_reused+=plan.reused?1:0;
            metrics.mpc_emergency_frames+=plan.emergency?1:0;
            metrics.mpc_depth+=plan.stats.depth;
            metrics.mpc_nodes+=plan.stats.nodes;
            metrics.mpc_simulations+=plan.stats.simulations;
        }else if(joint_policy) {
            const auto plan=joint.decide(frame,true,mechanism_ptr);
            decision=plan.decision;
            metrics.move_overrides+=plan.move_overridden?1:0;
            metrics.fire_overrides+=plan.fire_overridden?1:0;
            metrics.intents_observed+=int(plan.intents.size());
            metrics.virtual_threats_created+=plan.virtual_threats;
            metrics.unknown_entities+=plan.unknown.unknown_entities;
            metrics.uncertain_attacks+=plan.unknown.uncertain_attacks;
            metrics.unknown_tracking_threats+=plan.unknown_tracking_threats;
            metrics.unknown_attack_intents+=plan.unknown_attack_intents;
            metrics.unknown_emergency_frames+=plan.unknown_emergency?1:0;
        }else decision=baseline.decide(frame,true,mechanism_ptr);
        const double elapsed=std::chrono::duration<double,std::milli>(
            std::chrono::steady_clock::now()-decision_begin).count();
        metrics.total_planning_ms+=elapsed;
        metrics.max_planning_ms=std::max(metrics.max_planning_ms,elapsed);
        const Vec previous_player=frame.player.body.pos;
        apply_player_move(frame,decision);
        const Vec current_player=frame.player.body.pos;
        if(fire_cooldown>0)--fire_cooldown;
        if(decision.fire!=Fire::none&&fire_cooldown==0&&frame.player.can_shoot&&frame.player.attack_supported) {
            Tear tear;
            tear.origin=current_player;
            tear.entity.type=9;tear.entity.address=next_address++;tear.entity.seed=uint32_t(tick)+7;
            tear.entity.pos=current_player+
                direction(decision.fire)*native_tear_spawn_offset;
            tear.entity.vel=native_tear_velocity(decision.fire,
                frame.player.tear_speed,frame.player.body.vel);
            tear.entity.radius=6;tear.entity.damage=3.5;tear.entity.collision=1;tear.entity.friendly=true;
            tears.push_back(std::move(tear));
            fire_cooldown=std::max(1,int(std::lround(frame.player.fire_delay)));
            ++shots;
        }
        // Hostile projectiles are scheduled independently of the policy so
        // both variants face the same seeded attack pattern.
        while(next_volley<volleys.size()&&volleys[next_volley].tick<=tick) {
            bullets.push_back(volleys[next_volley].bullet);
            ++next_volley;
        }
        // The intent-aware scenario spawns the same aimed shot the forecast
        // described, six frames after the windup warning becomes visible.
        if(fire_period>0&&phase==fire_trigger)for(const auto& enemy:enemies) {
            Vec direction=(frame.player.body.pos-enemy.pos).unit();
            auto bullet=make_bullet(next_enemy_bullet++,enemy.seed+uint32_t(tick),
                enemy.pos,direction*scenario.enemy_projectile_speed,frame.clock);
            bullet.spawner=enemy.address;
            bullets.push_back(std::move(bullet));
        }
        for(size_t index=0;index<bullets.size();) {
            auto& bullet=bullets[index];
            const Vec old=bullet.pos;
            bullet.pos=bullet.pos+bullet.vel*benchmark_dt;
            bool remove=bullet.pos.x<40||bullet.pos.x>600||bullet.pos.y<120||bullet.pos.y>440;
            if(!remove&&invulnerable<=0&&
               moving_clearance(previous_player,current_player,old,bullet.pos,
                   frame.player.body.radius+bullet.radius)<=0) {
                ++metrics.hp_lost;
                invulnerable=30;
                remove=true;
            }
            if(remove)bullets.erase(bullets.begin()+std::ptrdiff_t(index));
            else ++index;
        }
        move_enemies(frame,enemies,scenario.enemy_speed,&charge_ticks,&charge_directions);
        for(auto& ticks:charge_ticks)if(ticks>0)--ticks;
        if(invulnerable<=0)for(const auto& enemy:enemies)
            if(distance(enemy.pos,current_player)<=enemy.radius+frame.player.body.radius) {
                ++metrics.hp_lost;invulnerable=30;break;
            }
        for(size_t index=0;index<tears.size();) {
            auto& tear=tears[index];
            const Vec old=tear.entity.pos;
            tear.entity.pos=tear.entity.pos+tear.entity.vel*benchmark_dt;
            bool remove=distance(tear.origin,tear.entity.pos)>frame.player.tear_range;
            for(auto& enemy:enemies) {
                if(moving_clearance(old,tear.entity.pos,enemy.pos,enemy.pos,enemy.radius+tear.entity.radius)<=0) {
                    const double applied=std::min(tear.entity.damage,enemy.hp);
                    enemy.hp-=applied;damage_dealt+=applied;
                    ++shot_hits;remove=true;break;
                }
            }
            if(remove)tears.erase(tears.begin()+std::ptrdiff_t(index));
            else ++index;
        }
        const auto dead=std::remove_if(enemies.begin(),enemies.end(),[](const Entity& enemy){return enemy.hp<=0;});
        for(auto it=dead;it!=enemies.end();++it)++enemies_killed;
        enemies.erase(dead,enemies.end());
        if(invulnerable>0)--invulnerable;
        metrics.ticks=tick+1;
        if(metrics.hp_lost>=scenario.player_health) {
            metrics.deaths=1;
            break;
        }
    }
    metrics.damage_dealt=int(std::lround(damage_dealt));
    metrics.enemies_killed=enemies_killed;
    metrics.shots=shots;metrics.shot_hits=shot_hits;
    metrics.cleared=enemies.empty();
    metrics.mean_planning_ms=metrics.ticks?metrics.total_planning_ms/metrics.ticks:0;
    return metrics;
}
bool same_outcome(const PolicyMetrics& a,const PolicyMetrics& b) {
    return a.ticks==b.ticks&&a.hp_lost==b.hp_lost&&a.deaths==b.deaths&&
        a.damage_dealt==b.damage_dealt&&a.enemies_killed==b.enemies_killed&&
        a.shots==b.shots&&a.shot_hits==b.shot_hits&&a.cleared==b.cleared&&
        a.intents_observed==b.intents_observed&&
        a.virtual_threats_created==b.virtual_threats_created&&
        a.unknown_entities==b.unknown_entities&&
        a.uncertain_attacks==b.uncertain_attacks&&
        a.unknown_tracking_threats==b.unknown_tracking_threats&&
        a.unknown_attack_intents==b.unknown_attack_intents&&
        a.unknown_emergency_frames==b.unknown_emergency_frames&&
        a.mpc_available==b.mpc_available&&
        a.mpc_fallbacks==b.mpc_fallbacks&&a.mpc_reused==b.mpc_reused&&
        a.mpc_emergency_frames==b.mpc_emergency_frames&&
        a.mpc_depth==b.mpc_depth&&a.mpc_nodes==b.mpc_nodes&&
        a.mpc_simulations==b.mpc_simulations;
}
json metrics_json(const PolicyMetrics& metrics) {
    return json{{"policy",metrics.policy},{"ticks",metrics.ticks},{"hp_lost",metrics.hp_lost},
        {"deaths",metrics.deaths},{"damage_dealt",metrics.damage_dealt},
        {"enemies_killed",metrics.enemies_killed},{"shots",metrics.shots},
        {"shot_hits",metrics.shot_hits},{"move_overrides",metrics.move_overrides},
        {"fire_overrides",metrics.fire_overrides},{"intents_observed",metrics.intents_observed},
        {"virtual_threats_created",metrics.virtual_threats_created},
        {"unknown_entities",metrics.unknown_entities},
        {"uncertain_attacks",metrics.uncertain_attacks},
        {"unknown_tracking_threats",metrics.unknown_tracking_threats},
        {"unknown_attack_intents",metrics.unknown_attack_intents},
        {"unknown_emergency_frames",metrics.unknown_emergency_frames},
        {"mpc_available",metrics.mpc_available},
        {"mpc_fallbacks",metrics.mpc_fallbacks},
        {"mpc_reused",metrics.mpc_reused},
        {"mpc_emergency_frames",metrics.mpc_emergency_frames},
        {"mpc_depth",metrics.mpc_depth},
        {"mpc_nodes",metrics.mpc_nodes},
        {"mpc_simulations",metrics.mpc_simulations},
        {"cleared",metrics.cleared},
        {"total_planning_ms",metrics.total_planning_ms},
        {"mean_planning_ms",metrics.mean_planning_ms},{"max_planning_ms",metrics.max_planning_ms}};
}
}
PolicyMetrics run_policy_scenario(const BenchmarkScenario& scenario,bool joint) {
    return run(scenario,joint?BenchmarkPolicy::topk_joint:BenchmarkPolicy::baseline);
}
PolicyMetrics run_policy_scenario(const BenchmarkScenario& scenario,
                                  BenchmarkPolicy policy) {
    return run(scenario,policy);
}
BenchmarkReport run_lookahead_benchmark() {
    BenchmarkReport report;
    report.evidence_scope="Deterministic synthetic closed loop. It measures the two policies' "
        "interaction with the same seeded hazards, not real-game no-damage evidence. "
        "Intent scenarios use a synthetic geometry model to exercise the forecast pipeline; "
        "they are not evidence that the corresponding live enemy mechanism is validated.";
    const std::vector<BenchmarkScenario> scenarios{
        {"gaper-duo-1",1,450,6,2,0,false},
        {"gaper-duo-2",2,450,6,2,0,false},
        {"gaper-crossfire-1",1,450,6,1,35,true},
        {"gaper-crossfire-2",2,450,6,1,35,true},
        {"gaper-swarm-1",1,600,6,4,25,true,0},
        {"gaper-swarm-2",2,600,6,4,25,true,0},
        {"gaper-intent-1",1,600,6,1,0,false,70,25,1500},
        {"gaper-intent-2",2,600,6,1,0,false,70,25,1500},
        {"unknown-blast-1",1,600,6,1,0,false,0,30,180,false,90,true,90},
        {"unknown-blast-2",2,600,6,1,0,false,0,30,180,false,90,true,90},
    };
    for(const auto& scenario:scenarios) {
        ScenarioComparison comparison;
        comparison.scenario=scenario;
        comparison.baseline=run(scenario,BenchmarkPolicy::baseline);
        comparison.joint=run(scenario,BenchmarkPolicy::topk_joint);
        BenchmarkScenario probe=scenario;
        probe.ticks=std::min(scenario.ticks,120);
        const auto baseline_first=run(probe,BenchmarkPolicy::baseline),
            baseline_second=run(probe,BenchmarkPolicy::baseline);
        const auto joint_first=run(probe,BenchmarkPolicy::topk_joint),
            joint_second=run(probe,BenchmarkPolicy::topk_joint);
        comparison.deterministic=same_outcome(baseline_first,baseline_second)&&
            same_outcome(joint_first,joint_second);
        comparison.determinism_checked=true;
        report.total_ticks+=comparison.baseline.ticks+comparison.joint.ticks;
        report.scenarios.push_back(std::move(comparison));
    }
    report.seed_count=2;
    return report;
}
BenchmarkReport run_mpc_pressure_benchmark(int ticks_override,
    int scenario_limit) {
    BenchmarkReport report;
    report.evidence_scope="Short deterministic synthetic high-pressure closed loop. "
        "The original Planner and MpcCombatPlanner face the same seeded enemies, "
        "projectiles and unknown-blast schedule. This is not a live-game "
        "no-damage result and does not validate any enemy mechanism.";
    // Deliberately short and dense: 4-6 chasers, frequent seeded volleys,
    // intent-driven shots and unknown blasts. Two seeds test whether the
    // direction of the result is stable.
    std::vector<BenchmarkScenario> scenarios{
        {"mpc-pressure-swarm-1",11,200,6,6,18,true,45,42,185},
        {"mpc-pressure-swarm-2",12,200,6,6,18,true,45,42,185},
        {"mpc-pressure-crossfire-1",13,200,6,4,13,true,35,40,200},
        {"mpc-pressure-unknown-1",14,200,6,5,20,true,0,38,190,false,0,true,55},
    };
    if(scenario_limit>0&&size_t(scenario_limit)<scenarios.size())
        scenarios.resize(size_t(scenario_limit));
    if(ticks_override>0)for(auto& scenario:scenarios)
        scenario.ticks=std::max(1,ticks_override);
    for(const auto& scenario:scenarios) {
        ScenarioComparison comparison;
        comparison.scenario=scenario;
        comparison.baseline=run(scenario,BenchmarkPolicy::baseline);
        comparison.mpc=run(scenario,BenchmarkPolicy::mpc);
        BenchmarkScenario probe=scenario;
        probe.ticks=std::min(scenario.ticks,90);
        const auto baseline_first=run(probe,BenchmarkPolicy::baseline),
            baseline_second=run(probe,BenchmarkPolicy::baseline);
        const auto mpc_first=run(probe,BenchmarkPolicy::mpc),
            mpc_second=run(probe,BenchmarkPolicy::mpc);
        comparison.deterministic=same_outcome(baseline_first,baseline_second)&&
            same_outcome(mpc_first,mpc_second);
        comparison.determinism_checked=true;
        report.total_ticks+=comparison.baseline.ticks+comparison.mpc.ticks;
        report.scenarios.push_back(std::move(comparison));
    }
    report.seed_count=int(report.scenarios.size());
    return report;
}
json comparison_json(const BenchmarkReport& report) {
    json scenarios=json::array();
    int baseline_hp=0,joint_hp=0,baseline_deaths=0,joint_deaths=0;
    int baseline_damage=0,joint_damage=0;
    int move_overrides=0,fire_overrides=0,damage_better=0,hp_better=0,deaths_better=0;
    int intents_observed=0,virtual_threats=0;
    int unknown_entities=0,uncertain_attacks=0,unknown_tracking=0,unknown_intents=0,emergency_frames=0;
    double baseline_ms=0,joint_ms=0;
    for(const auto& comparison:report.scenarios) {
        baseline_hp+=comparison.baseline.hp_lost;joint_hp+=comparison.joint.hp_lost;
        baseline_deaths+=comparison.baseline.deaths;joint_deaths+=comparison.joint.deaths;
        baseline_damage+=comparison.baseline.damage_dealt;joint_damage+=comparison.joint.damage_dealt;
        baseline_ms+=comparison.baseline.total_planning_ms;joint_ms+=comparison.joint.total_planning_ms;
        move_overrides+=comparison.joint.move_overrides;fire_overrides+=comparison.joint.fire_overrides;
        intents_observed+=comparison.joint.intents_observed;
        virtual_threats+=comparison.joint.virtual_threats_created;
        unknown_entities+=comparison.joint.unknown_entities;
        uncertain_attacks+=comparison.joint.uncertain_attacks;
        unknown_tracking+=comparison.joint.unknown_tracking_threats;
        unknown_intents+=comparison.joint.unknown_attack_intents;
        emergency_frames+=comparison.joint.unknown_emergency_frames;
        if(comparison.joint.damage_dealt>comparison.baseline.damage_dealt)++damage_better;
        if(comparison.joint.hp_lost<comparison.baseline.hp_lost)++hp_better;
        if(comparison.joint.deaths<comparison.baseline.deaths)++deaths_better;
        scenarios.push_back(json{{"scenario",comparison.scenario.name},
            {"seed",comparison.scenario.seed},{"ticks",comparison.scenario.ticks},
            {"gapers",comparison.scenario.gapers},{"volley_period",comparison.scenario.volley_period},
            {"enemy_fire_period",comparison.scenario.enemy_fire_period},
            {"unknown_charge",comparison.scenario.unknown_charge},
            {"unknown_blast",comparison.scenario.unknown_blast},
            {"baseline",metrics_json(comparison.baseline)},
            {"topk_joint",metrics_json(comparison.joint)},
            {"delta_hp_lost",comparison.joint.hp_lost-comparison.baseline.hp_lost},
            {"delta_deaths",comparison.joint.deaths-comparison.baseline.deaths},
            {"delta_damage_dealt",comparison.joint.damage_dealt-comparison.baseline.damage_dealt},
            {"delta_mean_planning_ms",comparison.joint.mean_planning_ms-comparison.baseline.mean_planning_ms},
            {"deterministic",comparison.deterministic},
            {"determinism_checked",comparison.determinism_checked}});
    }
    return json{{"synthetic",report.synthetic},{"evidence_scope",report.evidence_scope},
        {"lookahead_config",{{"top_k",LookaheadConfig{}.top_k},
            {"seed_candidates",LookaheadConfig{}.seed_candidates},
            {"epochs",LookaheadConfig{}.epochs},
            {"epoch_frames",LookaheadConfig{}.epoch_frames},
            {"preview_fire_interval",LookaheadConfig{}.preview_fire_interval},
            {"damage_weight",LookaheadConfig{}.damage_weight},
            {"exposure_weight",LookaheadConfig{}.exposure_weight},
            {"attack_weight",LookaheadConfig{}.attack_weight},
            {"tear_damage",LookaheadConfig{}.tear_damage},
            {"fire_cooldown_frames",LookaheadConfig{}.fire_cooldown_frames},
            {"enemy_intent_prediction",LookaheadConfig{}.enemy_intent_prediction},
            {"intent_horizon",LookaheadConfig{}.intent_horizon},
            {"intent_min_confidence",LookaheadConfig{}.intent_min_confidence},
            {"intent_include_inferred",LookaheadConfig{}.intent_include_inferred},
            {"intent_include_candidate",LookaheadConfig{}.intent_include_candidate},
            {"virtual_threat_limit",LookaheadConfig{}.virtual_threat_limit}}},
        {"seed_count",report.seed_count},{"total_ticks",report.total_ticks},
        {"scenario_count",report.scenarios.size()},
        {"totals",{{"baseline_hp_lost",baseline_hp},{"topk_hp_lost",joint_hp},
            {"baseline_deaths",baseline_deaths},{"topk_deaths",joint_deaths},
            {"baseline_damage_dealt",baseline_damage},{"topk_damage_dealt",joint_damage},
            {"baseline_planning_ms",baseline_ms},{"topk_planning_ms",joint_ms},
            {"topk_move_overrides",move_overrides},{"topk_fire_overrides",fire_overrides},
            {"topk_intents_observed",intents_observed},
            {"topk_virtual_threats_created",virtual_threats},
            {"topk_unknown_entities",unknown_entities},
            {"topk_uncertain_attacks",uncertain_attacks},
            {"topk_unknown_tracking_threats",unknown_tracking},
            {"topk_unknown_attack_intents",unknown_intents},
            {"topk_unknown_emergency_frames",emergency_frames},
            {"scenarios_with_more_damage",damage_better},
            {"scenarios_with_less_hp_loss",hp_better},
            {"scenarios_with_fewer_deaths",deaths_better},
            {"delta_hp_lost",joint_hp-baseline_hp},
            {"delta_deaths",joint_deaths-baseline_deaths},
            {"delta_damage_dealt",joint_damage-baseline_damage},
            {"planning_ms_ratio",baseline_ms>0?joint_ms/baseline_ms:0}}},
        {"scenarios",scenarios}};
}
json mpc_pressure_json(const BenchmarkReport& report) {
    json rows=json::array();
    int baseline_hp=0,mpc_hp=0,baseline_deaths=0,mpc_deaths=0;
    int baseline_damage=0,mpc_damage=0,baseline_kills=0,mpc_kills=0;
    int baseline_shots=0,mpc_shots=0,baseline_hits=0,mpc_hits=0;
    int baseline_cleared=0,mpc_cleared=0,mpc_fallbacks=0,mpc_reused=0;
    double baseline_ms=0,mpc_ms=0;
    int hp_better=0,deaths_better=0,damage_better=0;
    for(const auto& comparison:report.scenarios) {
        const auto& baseline=comparison.baseline;
        const auto& mpc=comparison.mpc;
        baseline_hp+=baseline.hp_lost;mpc_hp+=mpc.hp_lost;
        baseline_deaths+=baseline.deaths;mpc_deaths+=mpc.deaths;
        baseline_damage+=baseline.damage_dealt;mpc_damage+=mpc.damage_dealt;
        baseline_kills+=baseline.enemies_killed;mpc_kills+=mpc.enemies_killed;
        baseline_shots+=baseline.shots;mpc_shots+=mpc.shots;
        baseline_hits+=baseline.shot_hits;mpc_hits+=mpc.shot_hits;
        baseline_cleared+=baseline.cleared?1:0;mpc_cleared+=mpc.cleared?1:0;
        baseline_ms+=baseline.total_planning_ms;mpc_ms+=mpc.total_planning_ms;
        mpc_fallbacks+=mpc.mpc_fallbacks;mpc_reused+=mpc.mpc_reused;
        if(mpc.hp_lost<baseline.hp_lost)++hp_better;
        if(mpc.deaths<baseline.deaths)++deaths_better;
        if(mpc.damage_dealt>baseline.damage_dealt)++damage_better;
        rows.push_back(json{{"scenario",comparison.scenario.name},
            {"seed",comparison.scenario.seed},
            {"ticks",comparison.scenario.ticks},
            {"gapers",comparison.scenario.gapers},
            {"volley_period",comparison.scenario.volley_period},
            {"enemy_fire_period",comparison.scenario.enemy_fire_period},
            {"unknown_blast",comparison.scenario.unknown_blast},
            {"baseline",metrics_json(baseline)},
            {"mpc",metrics_json(mpc)},
            {"delta_hp_lost",mpc.hp_lost-baseline.hp_lost},
            {"delta_deaths",mpc.deaths-baseline.deaths},
            {"delta_damage_dealt",mpc.damage_dealt-baseline.damage_dealt},
            {"delta_enemies_killed",mpc.enemies_killed-baseline.enemies_killed},
            {"delta_mean_planning_ms",mpc.mean_planning_ms-baseline.mean_planning_ms},
            {"deterministic",comparison.deterministic},
            {"determinism_checked",comparison.determinism_checked}});
    }
    const MpcConfig config=pressure_mpc_config();
    return json{{"synthetic",true},{"evidence_scope",report.evidence_scope},
        {"mpc_config",{{"horizon_frames",config.horizon_frames},
            {"segment_frames",config.segment_frames},
            {"beam_width",config.beam_width},
            {"root_candidates",config.root_candidates},
            {"max_simulations",config.max_simulations},
            {"time_budget_ms",config.time_budget_ms},
            {"max_total_ms",config.max_total_ms},
            {"reuse_previous",config.reuse_previous}}},
        {"seed_count",report.seed_count},
        {"scenario_count",report.scenarios.size()},
        {"total_ticks",report.total_ticks},
        {"totals",{{"baseline_hp_lost",baseline_hp},{"mpc_hp_lost",mpc_hp},
            {"baseline_deaths",baseline_deaths},{"mpc_deaths",mpc_deaths},
            {"baseline_damage_dealt",baseline_damage},{"mpc_damage_dealt",mpc_damage},
            {"baseline_enemies_killed",baseline_kills},{"mpc_enemies_killed",mpc_kills},
            {"baseline_shots",baseline_shots},{"mpc_shots",mpc_shots},
            {"baseline_hits",baseline_hits},{"mpc_hits",mpc_hits},
            {"baseline_cleared",baseline_cleared},{"mpc_cleared",mpc_cleared},
            {"baseline_planning_ms",baseline_ms},{"mpc_planning_ms",mpc_ms},
            {"mpc_fallbacks",mpc_fallbacks},{"mpc_reused",mpc_reused},
            {"scenarios_with_less_hp_loss",hp_better},
            {"scenarios_with_fewer_deaths",deaths_better},
            {"scenarios_with_more_damage",damage_better},
            {"delta_hp_lost",mpc_hp-baseline_hp},
            {"delta_deaths",mpc_deaths-baseline_deaths},
            {"delta_damage_dealt",mpc_damage-baseline_damage},
            {"planning_ms_ratio",baseline_ms>0?mpc_ms/baseline_ms:0}}},
        {"scenarios",rows}};
}
}
