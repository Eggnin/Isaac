#include "gamebot/planner.hpp"
#include <array>
#include <chrono>
#include <numeric>
#include <optional>
#include <queue>
#include <tuple>
#include <unordered_set>

namespace gamebot {
namespace {
uint64_t identity(const Entity& e) { return (uint64_t(e.address)<<32)|e.seed; }
double normalized_angle(double a) { return std::remainder(a,2*pi); }
bool sliding_charge(const Entity& e) {
    return e.type==261&&(e.state==4||e.state==11)&&
        (e.animation=="BeforeSlide"||e.animation=="Slide");
}
bool squirt_charge(const Entity& e) {
    return e.type==220&&((e.state==8&&e.animation=="Attack01")||(e.state==4&&e.animation=="Slide"));
}
bool fly_chaser(const Entity& e) {
    return (e.type==18||e.type==61)&&e.variant==0&&e.state==3&&e.parent==0;
}
bool modeled_contact(const Entity& e) {
    return sliding_charge(e)||squirt_charge(e)||fly_chaser(e);
}
std::vector<Vec> sample_path(const std::vector<Vec>& path,size_t limit=10) {
    if(path.size()<=limit)return path;
    std::vector<Vec> out;out.reserve(limit);
    for(size_t i=0;i<limit;++i)out.push_back(path[i*(path.size()-1)/(limit-1)]);
    return out;
}
struct Node {
    Vec pos,vel;Move first{},last{};
    double time{},hits{},clips{},first_wall{10000},wall_margin{10000},exposure{},margin{10000},end_clearance{10000},score{};
    double slow_factor{1},slow_until{};
    double escape_directions{},escape_area{},edge_clearance{},first_hit{10000};
    std::vector<Vec> chase_pos;
    std::vector<Vec> path;
};
RouteRank rank_values(const Node& node) {
    return {node.hits,node.clips,node.first_wall,node.wall_margin,node.exposure,node.escape_directions,node.escape_area,
        node.edge_clearance,node.end_clearance,node.score,node.first_hit,node.margin};
}
bool route_safety_no_worse(const RouteRank& candidate,const RouteRank& best,bool escape_priority,bool wide_escape,bool wall_escape) {
    RouteRank candidate_safety=candidate,best_safety=best;
    candidate_safety.score=best_safety.score=0;
    return !route_rank_less(best_safety,candidate_safety,false,escape_priority,wide_escape,wall_escape);
}
}
bool route_rank_less(const RouteRank& a,const RouteRank& b,bool goal_priority,bool escape_priority,bool wide_escape,bool wall_escape) {
    if((a.hits==0)!=(b.hits==0))return a.hits==0;
    if(a.hits>0&&b.hits>0&&a.first_hit!=b.first_hit)return a.first_hit>b.first_hit;
    if(a.hits<b.hits)return true;
    if(b.hits<a.hits)return false;
    if(a.clips<b.clips)return true;
    if(b.clips<a.clips)return false;
    if(wall_escape) {
        const double a_first=std::min(48.0,a.first_wall),b_first=std::min(48.0,b.first_wall);
        if(a_first>b_first)return true;
        if(b_first>a_first)return false;
        const double a_wall=std::min(48.0,a.wall_margin),b_wall=std::min(48.0,b.wall_margin);
        if(a_wall>b_wall)return true;
        if(b_wall>a_wall)return false;
    }
    if(wide_escape) {
        // Avoid choosing a roomy route that runs straight into a chaser.
        if(a.exposure<b.exposure)return true;
        if(b.exposure<a.exposure)return false;
    }
    auto escape_order=[&]() -> std::optional<bool> {
        if(!escape_priority)return std::nullopt;
        const double exit_cap=wide_escape?9.0:3.0;
        const double a_exits=std::min(exit_cap,a.escape_directions),b_exits=std::min(exit_cap,b.escape_directions);
        if(a_exits>b_exits)return true;
        if(b_exits>a_exits)return false;
        const double a_area=std::min(9.0,a.escape_area),b_area=std::min(9.0,b.escape_area);
        if(a_area>b_area)return true;
        if(b_area>a_area)return false;
        const double a_edge=std::min(24.0,a.edge_clearance),b_edge=std::min(24.0,b.edge_clearance);
        if(a_edge>b_edge)return true;
        if(b_edge>a_edge)return false;
        return std::nullopt;
    };
    if(auto escape=escape_order())return *escape;
    if(!wide_escape) {
        if(a.exposure<b.exposure)return true;
        if(b.exposure<a.exposure)return false;
    }
    if(!escape_priority) {
        const double exit_cap=wide_escape?9.0:3.0;
        const double a_exits=std::min(exit_cap,a.escape_directions),b_exits=std::min(exit_cap,b.escape_directions);
        if(a_exits>b_exits)return true;
        if(b_exits>a_exits)return false;
        const double a_area=std::min(9.0,a.escape_area),b_area=std::min(9.0,b.escape_area);
        if(a_area>b_area)return true;
        if(b_area>a_area)return false;
        const double a_edge=std::min(24.0,a.edge_clearance),b_edge=std::min(24.0,b.edge_clearance);
        if(a_edge>b_edge)return true;
        if(b_edge>a_edge)return false;
    }
    const double a_margin=std::min(24.0,a.margin),b_margin=std::min(24.0,b.margin);
    const double a_clearance=std::min(24.0,a.end_clearance),b_clearance=std::min(24.0,b.end_clearance);
    if(escape_priority) {
        if(!goal_priority&&a_margin>b_margin)return true;
        if(!goal_priority&&b_margin>a_margin)return false;
        if(!goal_priority&&a_clearance>b_clearance)return true;
        if(!goal_priority&&b_clearance>a_clearance)return false;
    }else {
        if(!goal_priority&&a_clearance>b_clearance)return true;
        if(!goal_priority&&b_clearance>a_clearance)return false;
        if(!goal_priority&&a_margin>b_margin)return true;
        if(!goal_priority&&b_margin>a_margin)return false;
    }
    // Among routes that are equal on safety, prefer the one that never gets
    // closer than the other: threading past a threat is worse than keeping a
    // steady margin even when the end point is equally clear.
    return a.score>b.score;
}
double blast_radius(const Entity& e) {
    if((e.type==25&&e.variant==0)||(e.type==250&&e.variant==0)||
       (e.type==292&&e.variant==0)||(e.type==55&&(e.variant==1||e.variant==2))||
       (e.type==16&&e.variant==2)||(e.type==295&&e.variant==0)||e.champion==5)return 80;
    return 0;
}
void Planner::reset() { room_=clock_=release_until_=hold_until_=0;charged_seen_=false;target_=0;last_move_=Move::stay;last_emission_clock_=0;emissions_.clear();emission_seen_.clear();observed_patterns_.clear();emission_diagnostics_={};tracks_.clear();reserves_.clear();threats_.clear();detonated_.clear();eye_locks_.clear();projectile_bursts_.clear();navigation_progress_clock_=0;navigation_enemy_hp_.clear();navigation_boost_=false;navigation_goal_={};navigation_goal_until_=0;navigation_goal_target_=0;navigation_waypoint_={};navigation_waypoint_until_=0;navigation_waypoint_target_=0;escaping_=false;escape_goal_until_=escape_started_=0;escape_goal_={};navigation_motion_target_=0;navigation_target_dynamic_=false;known_hazard_cells_.clear();kill_button_done_.clear(); }
Aim Planner::aim_at(const Frame& f,Vec origin,uint32_t requested_target,double time_offset) const {
    Aim best;double best_score=-1e30;
    if(f.cleared||!f.has_player||!f.player.can_shoot||!f.player.attack_supported)return best;
    for(const auto& e:f.entities) {
        if(requested_target&&e.address!=requested_target)continue;
        if(!e.targetable())continue;
        if(blast_radius(e)>0&&distance(origin,e.pos)<blast_radius(e)+f.player.body.radius+12)continue;
        Vec target_pos=e.pos+e.vel*time_offset,target_velocity=e.vel;
        if(time_offset>0)for(const auto& threat:threats_)
            if(threat.source==e.address&&!threat.motion_path.empty()) {
                target_pos=threat.at(time_offset);
                target_velocity=(threat.at(time_offset+1.0/30)-target_pos)*30;
                break;
            }
        for(int i=1;i<=4;++i) {
            auto fire=static_cast<Fire>(i);Vec axis=direction(fire),rel=target_pos-origin;
            double forward=rel.dot(axis),closing=f.player.tear_speed-target_velocity.dot(axis);
            if(forward<=0||closing<=1)continue;
            double t=forward/closing;Vec point=target_pos+target_velocity*t;
            double reach=f.player.tear_speed*t;
            double miss=std::abs((point-origin).x*axis.y-(point-origin).y*axis.x);
            bool clear=f.grid.shot_clear(origin,origin+axis*reach);
            bool can=miss<=e.radius+config_.tear_radius&&reach<=f.player.tear_range&&clear;
            if(blast_radius(e)>0&&distance(origin,point)<blast_radius(e)+f.player.body.radius+12)can=false;
            double score=(can?600:0)+(clear?30:0)-miss*2-reach*.04+(target_==identity(e)?28:0)+30/(1+e.hp/3.5);
            // Prioritise the emitter of a live non-contact threat: removing the
            // source deletes future hazards, so it can outrank the sticky
            // target. Contact is skipped because every enemy produces it.
            double source_priority=0;
            for(const auto& threat:threats_)if(threat.source==e.address&&!threat.soft&&
                threat.damage_class!=DamageClass::contact) {
                source_priority+=threat.lethal?60.0:(threat.damage>0?threat.damage*15.0:6.0);
                if(threat.predictive)source_priority+=4.0;
            }
            score+=std::min(60.0,source_priority);
            if(score>best_score) { best_score=score;best={e.address,fire,point,t,miss,can}; }
        }
    }
    // Ordinary tears can open their current firing lane by destroying the first
    // poop/normal-fire obstacle. Solid rocks and TNT are never treated as tear
    // targets, and an obstacle behind another blocker is never selected.
    bool normal_tears=f.player.weapons.empty()||f.player.weapons.front().type==1;
    if(best.target&&!best.can_fire&&normal_tears&&best.fire!=Fire::none) {
        const Entity* selected=nullptr;for(const auto& e:f.entities)if(e.address==best.target)selected=&e;
        if(selected&&best.miss<=selected->radius+config_.tear_radius) {
            Vec axis=direction(best.fire);double reach=(best.point-origin).dot(axis);
            for(double travel=4;travel<reach;travel+=4) {
                Vec pos=origin+axis*travel;int x=int(std::floor((pos.x-20)/40)),y=int(std::floor((pos.y-100)/40));
                if(x<0||x>=f.grid.width||y<0||y>=f.grid.height)break;
                int index=y*f.grid.width+x;const auto& cell=f.grid.cells[index];
                if(cell.collision<2)continue;
                Vec center=f.grid.center(index);double forward=(center-origin).dot(axis);
                if(cell.destructible&&cell.type!=12&&forward>0&&forward<=f.player.tear_range)
                    return {0xf0000000u+uint32_t(index),best.fire,center,forward/f.player.tear_speed,0,true};
                break;
            }
        }
    }
    return best;
}
Aim Planner::aim(const Frame& f,Vec origin) const { return aim_at(f,origin,0); }
void Planner::build_threats(const Frame& f,double horizon,const MechanismFrame* mechanisms,Fire intended_fire) {
    threats_.clear();
    Fire player_fire=intended_fire;
    if(player_fire==Fire::none)switch(f.player.fire_direction) {
        case 0:player_fire=Fire::left;break;case 1:player_fire=Fire::up;break;
        case 2:player_fire=Fire::right;break;case 3:player_fire=Fire::down;break;
    }
    // A database load is not mechanism coverage. Replace only this source's matching rule.
    auto supplied=[&](const Entity& e,const char* rule) {
        if(!mechanisms||!mechanisms->loaded||!mechanisms->valid||mechanisms->pid!=f.pid||
           mechanisms->room!=f.room||mechanisms->clock!=f.clock)return false;
        return std::any_of(mechanisms->warnings.begin(),mechanisms->warnings.end(),[&](const auto& w){return w.source==e.address&&w.rule_id==rule&&(w.planning_validated||config_.evaluate_candidate_warnings);});
    };
    auto supplied_contact=[&](const Entity& e) {
        if(!mechanisms||!mechanisms->loaded||!mechanisms->valid||mechanisms->pid!=f.pid||
           mechanisms->room!=f.room||mechanisms->clock!=f.clock)return false;
        return std::any_of(mechanisms->warnings.begin(),mechanisms->warnings.end(),[&](const auto& w){
            return w.source==e.address&&w.kind=="contact"&&w.planning_validated;
        });
    };
    auto geometry_model=[&](const Entity& e,const char* kind)->const MonsterGeometryRef* {
        if(!mechanisms||!mechanisms->loaded||!mechanisms->valid||mechanisms->pid!=f.pid||
           mechanisms->room!=f.room||mechanisms->clock!=f.clock)return nullptr;
        const uint32_t source=e.spawner_in_snapshot?e.spawner:
            e.parent_in_snapshot?e.parent:e.owner_in_snapshot?e.owner:0;
        if(!source)return nullptr;
        for(const auto& model:mechanisms->geometry_models) {
            if(model.source==source&&model.hazard_type==e.type&&
               model.hazard_variant==e.variant&&model.hazard_subtype==e.subtype&&
               model.kind==kind)return &model;
        }
        return nullptr;
    };
    auto emission_key=[&](const Entity& source) {
        const uint64_t base=(uint64_t(uint32_t(source.type))<<32)|
            (uint64_t(uint32_t(source.variant)&0xffff)<<16)|uint32_t(source.subtype&0xffff);
        uint64_t key=base^(uint64_t(uint32_t(source.state))*0x9E3779B97F4A7C15ull);
        // One state can play several attack animations with different
        // directions. Mixing them would widen the spread until the guard
        // disables an emitter that is actually consistent per animation.
        for(unsigned char character:source.animation) {
            key^=uint64_t(character);key*=1099511628211ull;
        }
        return key;
    };
    auto emission_stat=[&](const Entity& source)->const EmissionStat* {
        auto found=emissions_.find(emission_key(source));
        if(found==emissions_.end()||found->second.samples<config_.observed_emission_min_samples)return nullptr;
        return &found->second;
    };
    if(config_.observed_emission_envelopes) {
        if(f.clock<last_emission_clock_)emission_seen_.clear();
        last_emission_clock_=f.clock;
        if(emission_seen_.size()>8192)emission_seen_.clear();
        for(const auto& projectile:f.entities) {
            if(projectile.type!=9||!projectile.alive()||projectile.friendly)continue;
            if(projectile.birth!=int(f.clock)||projectile.vel.norm()<1)continue;
            ++emission_diagnostics_.births;
            const Entity* source=nullptr;
            for(const auto& candidate:f.entities)
                if(candidate.address==projectile.spawner&&candidate.alive()){source=&candidate;break;}
            if(!source){++emission_diagnostics_.unattributed;continue;}
            if(!emission_seen_.insert((uint64_t(projectile.address)<<32)|uint32_t(projectile.birth)).second)continue;
            const Vec aim=f.player.body.pos-projectile.pos;
            if(aim.norm()<1e-6)continue;
            emissions_[emission_key(*source)].observe(
                normalized_angle(std::atan2(projectile.vel.y,projectile.vel.x)-std::atan2(aim.y,aim.x)),
                projectile.vel.norm());
            ++emission_diagnostics_.samples;
        }
    }
    auto projectile_patterns=[&](const Entity& e) {
        std::vector<const MonsterGeometryRef*> matches;
        if(!mechanisms||!mechanisms->loaded||!mechanisms->valid||mechanisms->pid!=f.pid||
           mechanisms->room!=f.room||mechanisms->clock!=f.clock)return matches;
        std::vector<const MonsterGeometryRef*> envelope_candidates;
        for(const auto& model:mechanisms->geometry_models) {
            const auto& name=model.source_animation;
            const auto& observed=model.pattern_clock=="overlay"?e.overlay_animation:e.animation;
            bool animation=name=="*"||name==observed||
                (!name.empty()&&name.back()=='*'&&observed.starts_with(name.substr(0,name.size()-1)));
            if(model.source!=e.address||model.kind!="projectile")continue;
            if(!(model.source_state<0||model.source_state==e.state)||!animation||
               !(model.source_ai_i1<0||model.source_ai_i1==e.ai_i1)||
               !(model.source_ai_i2<0||model.source_ai_i2==e.ai_i2)||
               (e.projectile_flags&model.required_projectile_flags)!=model.required_projectile_flags)continue;
            if(!model.pattern.empty()){matches.push_back(&model);continue;}
            if(config_.observed_emission_envelopes&&model.pre_spawn_verified&&
               model.trigger_animation_frame>=0)envelope_candidates.push_back(&model);
        }
        if(envelope_candidates.empty())return matches;
        ++emission_diagnostics_.candidate_frames;
        const auto* statistic=emission_stat(e);
        if(!statistic){++emission_diagnostics_.no_samples;return matches;}
        const double spread=statistic->spread_degrees();
        const double speed_ratio=statistic->speed_min>0?statistic->speed_max/statistic->speed_min:10;
        if(spread>config_.observed_emission_max_spread_degrees){
            ++emission_diagnostics_.spread_rejected;return matches;
        }
        if(speed_ratio>config_.observed_emission_speed_ratio){
            ++emission_diagnostics_.speed_rejected;return matches;
        }
        observed_patterns_.clear();observed_patterns_.reserve(envelope_candidates.size());
        for(const auto* model:envelope_candidates) {
            MonsterGeometryRef reference=*model;
            reference.pattern="stream";reference.pattern_center="source";
            reference.pattern_direction="aimed";reference.pattern_clock="animation";
            reference.pattern_count=1;reference.pattern_samples=1;
            // Two standard deviations bound the measured angular spread; the
            // floor keeps a single angle from collapsing into a hairline.
            reference.pattern_phase_uncertainty_degrees=std::clamp(spread*2.0,3.0,25.0);
            reference.pattern_speed_mode="constant";
            reference.speed=statistic->mean_speed();reference.speed_min=statistic->speed_min;
            reference.evidence_status="observed emission envelope; native trigger window, measured direction spread "+
                std::to_string(int(std::lround(spread)))+" deg";
            reference.source_refs="runtime emission observation ("+std::to_string(statistic->samples)+" samples)";
            observed_patterns_.push_back(std::move(reference));
        }
        for(const auto& reference:observed_patterns_)matches.push_back(&reference);
        emission_diagnostics_.envelopes+=observed_patterns_.size();
        return matches;
    };

    if(room_!=f.room||f.clock<clock_) {
        tracks_.clear();reserves_.clear();detonated_.clear();eye_locks_.clear();projectile_bursts_.clear();target_=0;release_until_=0;charged_seen_=false;last_move_=Move::stay;hold_until_=0;
        emission_seen_.clear();observed_patterns_.clear();
        navigation_progress_clock_=f.clock;navigation_enemy_hp_.clear();navigation_boost_=false;
        navigation_goal_={};navigation_goal_until_=0;navigation_goal_target_=0;
        navigation_waypoint_={};navigation_waypoint_until_=0;navigation_waypoint_target_=0;
        escaping_=false;escape_goal_until_=escape_started_=0;escape_goal_={};
        navigation_motion_target_=0;navigation_target_dynamic_=false;
        
        known_hazard_cells_.clear();
        kill_button_done_.clear();
    }
    room_=f.room;
    bool silver_present=std::any_of(f.grid.cells.begin(),f.grid.cells.end(),[](const Cell& c){return c.type==20&&c.variant==0;});
    bool silver_disarmed=silver_present&&f.pressure_plates_triggered;
    for(int i=0;i<int(f.grid.cells.size());++i) {
        const auto& c=f.grid.cells[i];
        if(c.type==20&&c.variant==9&&c.state==3)kill_button_done_.insert(i);
    }
    std::unordered_set<uint64_t> seen;
    auto add=[&](const Entity& e,std::string kind,double radius,double start=0,double until=-1) -> Threat& {
        Threat t;t.source=e.address;t.pos=e.pos;t.vel=e.vel;t.radius=radius;t.start=start;
        t.until=until<0?horizon:until;t.kind=std::move(kind);
        t.damage_class=damage_class_of(t.kind);
        t.damage_timing=damage_timing_of(t.damage_class,t.kind);
        if(t.damage_class==DamageClass::contact||t.damage_class==DamageClass::hazard||
           t.damage_class==DamageClass::jump||t.damage_class==DamageClass::charge||
           t.damage_class==DamageClass::explosion)t.damage=e.damage;
        t.lethal=t.kind=="pitfall"||e.type==291;
        t.body_radius=e.radius;t.seed=e.seed;t.type=e.type;t.variant=e.variant;t.subtype=e.subtype;
        t.initiator=e.spawner_in_snapshot?e.spawner:e.parent_in_snapshot?e.parent:0;
        t.confidence=.5;t.data_source="external-memory + existing mechanism geometry";
        if(t.kind=="projectile"||t.kind=="laser") {
            t.evidence_status="observed-hazard";t.confidence=.9;
            t.geometry_verified=t.kind=="projectile"||e.geometry_valid;
            t.end_condition="despawn or next observation; trajectory extrapolation";
        }
        t.start_frame=int64_t(f.clock)+int64_t(std::ceil(t.start*30));threats_.push_back(t);return threats_.back();
    };
    auto damped_motion=[&](Threat& threat,double friction) {
        Vec point=threat.pos,velocity=threat.vel;
        threat.motion_path.push_back(point);
        for(int tick=0;tick<int(std::ceil(horizon*30))+1;++tick) {
            velocity=velocity*friction;
            point=point+velocity/30.0;
            threat.motion_path.push_back(point);
        }
    };
    if(config_.projectile_burst_prediction) {
        for(const auto& projectile:f.entities) {
            if(projectile.type!=9||projectile.birth!=int(f.clock)||projectile.dead)continue;
            uint32_t source_address=projectile.spawner?projectile.spawner:projectile.parent;
            const Entity* source=nullptr;
            for(const auto&candidate:f.entities)if(candidate.address==source_address)source=&candidate;
            if(!source||source->type!=302||source->variant!=10)continue;
            auto&burst=projectile_bursts_[source_address];
            if(burst.last_fire==f.clock)continue;
            if(burst.last_fire&&f.clock>burst.last_fire)
                burst.period_frames=std::clamp(double(f.clock-burst.last_fire),10.0,60.0);
            burst.last_fire=f.clock;
            burst.next_fire=f.clock+uint32_t(std::max(1.0,std::round(burst.period_frames)));
            if(config_.projectile_burst_alternating)
                burst.next_diagonal=!(std::abs(projectile.vel.x)>1&&std::abs(projectile.vel.y)>1);
        }
    }
    auto projectile_speed_factor=[](const Entity& e,double age) {
        auto native_factor=[&](double value) {
            const double scale=e.speed_multiplier;
            return scale==1?value:value/(value+scale-value*scale);
        };
        double factor=1;
        if(e.projectile_flags&(1ULL<<27))factor*=native_factor(e.projectile_accel);
        if(e.projectile_flags&(1ULL<<28))factor*=native_factor(1/e.projectile_accel);
        if(e.projectile_flags&(1ULL<<37))factor*=native_factor(1+(e.projectile_accel-1)*std::min(1.0,age/20));
        return factor;
    };
    auto apply_projectile_clock=[](Entity& predicted,Vec& velocity,double previous_age,double age) {
        const int period=predicted.projectile_change_timeout;
        const bool change=period<=0||int(age/period)!=int(previous_age/period);
        if(!change||age<=0)return;
        if(predicted.projectile_flags&(1ULL<<33)) {
            velocity=velocity.unit()*(predicted.projectile_change_velocity*30);
            if(((predicted.projectile_change_flags>>32)&3)!=3)predicted.projectile_flags&=~(1ULL<<33);
        }
        if(predicted.projectile_flags&(1ULL<<32))
            std::swap(predicted.projectile_flags,predicted.projectile_change_flags);
    };
    auto bounce_from_grid=[&](const Entity& e,Vec& point,Vec& velocity,double height) {
        if(!(e.projectile_flags&(1ULL<<42)))return;
        Vec normal{};const int threshold=height<-50?4:2;
        for(const Vec sample:e.grid_contacts)
            if(f.grid.native_collision_at(point+sample)>=threshold)normal=normal+sample;
        normal=normal.unit();
        const double outward=normal.dot(velocity);
        if(outward>0) {
            velocity=velocity-normal*(2*outward);
            point=point+velocity/30;
        }
    };
    auto bounce_from_floor=[&](const Entity& e,Vec point,double& height,double& falling) {
        if(!(e.projectile_flags&(1ULL<<43)))return;
        const double plane=f.grid.native_collision_at(point)>=2?-50:-5;
        if(height>plane&&falling>2){height=plane;falling=falling*-2;}
    };
    auto steer_projectile=[&](const Entity& e,Vec point,Vec& velocity,double time) {
        if(!(e.projectile_flags&(1|(1ULL<<48))))return;
        Vec target=f.player.body.pos+f.player.body.vel*time,target_velocity=f.player.body.vel/60;
        for(const auto& entity:f.entities)if(entity.address==e.target) {
            target=entity.pos+entity.vel*time;target_velocity=entity.vel/(entity.type==1?60:30);break;
        }
        if(e.projectile_flags&(1ULL<<48)) {
            const double speed=std::max(.03,velocity.norm());
            velocity=(velocity+(target-point)*3).unit()*speed;
            return;
        }
        if(distance(target+target_velocity*.5,point)>=100)return;
        const double strength=e.projectile_homing_strength;
        velocity=velocity+(target-point).unit()*(42*strength*e.speed_multiplier);
        const double damping=1-.08*strength,scale=e.speed_multiplier;
        velocity=velocity*(scale==1?damping:damping/(damping+scale-damping*scale));
    };
    auto orbit_projectile=[&](Entity& e,Vec point,Vec& velocity,double time) {
        if(!(e.projectile_flags&((1ULL<<11)|(1ULL<<12))))return false;
        const Entity* parent=nullptr;
        if(e.projectile_flags&(1ULL<<56))for(const auto& candidate:f.entities)
            if(candidate.address==e.parent){parent=&candidate;break;}
        Vec center=e.target_pos;
        if(parent){velocity=velocity-e.projectile_parent_velocity;center=parent->pos+parent->vel*time;}
        const Vec radial=point-center;
        Vec tangent{-radial.y,radial.x};
        if(e.projectile_flags&(1ULL<<12))tangent=tangent*-1;
        const double correction=e.projectile_orbit_distance>0?
            .5*std::clamp(1-radial.norm()/e.projectile_orbit_distance,-1.0,1.0):.5;
        velocity=(radial*correction+tangent).unit()*velocity.norm();
        if(parent) {
            // Native orbit velocity is relative to the previous parent velocity.
            // Player Entity::Velocity uses half the Reader's 60 Hz conversion.
            e.projectile_parent_velocity=parent->vel*(parent->type==1?.5:1);
            velocity=velocity+e.projectile_parent_velocity;e.target_pos=center;
        }
        return true;
    };
    auto direct_projectile=[&](const Entity& e,Vec point,Vec& velocity,double& height,double& falling,double time,double age) {
        if(e.projectile_flags&(1ULL<<26))for(const auto& parent:f.entities)if(parent.address==e.parent) {
            const Vec delta=parent.pos+parent.vel*time-point;
            const double speed=velocity.norm();velocity=delta.unit()*speed;
            if(delta.norm()<speed/30)return false;
            break;
        }
        if(e.projectile_flags&(1ULL<<52)) {
            const Vec delta=e.target_pos-point;
            if(delta.norm()<10)return false;
            velocity=velocity+delta.unit()*(30*e.projectile_homing_strength*e.speed_multiplier);
            if(age<150){falling=0;height=-15;}
        }
        return true;
    };
    auto advance_projectile=[&](Entity& e,Vec& point,Vec& velocity,double& height,double& falling,int tick,double turn=0,bool* jumped=nullptr) {
        const double previous_age=e.projectile_age,age=previous_age+e.speed_multiplier,time=tick/30.0;
        e.projectile_age=age;
        advance_native_entity_motion(e,point,velocity);
        if(e.projectile_flags&(1ULL<<34)) {
            const int period=e.projectile_change_timeout;
            const bool release=!e.parent||((e.projectile_flags&(1ULL<<32))&&
                f.clock+tick>uint32_t(e.birth)&&(period<=0||int(age/period)!=int(previous_age/period)));
            if(release) {
                const double angle=e.projectile_curve*pi/180;
                velocity=Vec{std::cos(angle),std::sin(angle)}*(30*e.projectile_change_velocity);
                e.projectile_curve=.015;
            }else for(const auto& parent:f.entities)if(parent.address==e.parent) {
                const Vec previous_parent=parent.pos+parent.vel*(time-1.0/30);
                const Vec radial=point+velocity/30-previous_parent;
                const double radius=radial.norm();
                if(radius>0) {
                    e.projectile_curve=std::atan2(radial.y,radial.x)*180/pi;
                    const Vec relative=velocity-e.target_pos*30;
                    const Vec correction=radial.unit()*((50-radius)*3);
                    const Vec parent_velocity=parent.vel*(parent.type==1?.5:1);
                    velocity=relative+(correction-relative)*.3+parent_velocity;
                    e.target_pos=parent_velocity/30;
                }
                height+=(-23-height)*.4;
                // Held STASIS returns before ordinary homing, orbit, gravity
                // and timed-flag finalization; only the release continues.
                return true;
            }
        }
        if(e.projectile_flags&(1ULL<<30)) {
            const Vec wrapped=f.grid.wrapped_position(point,-100);
            if(jumped)*jumped=wrapped.x!=point.x||wrapped.y!=point.y;
            point=wrapped;
        }
        steer_projectile(e,point,velocity,time);
        const bool orbit=orbit_projectile(e,point,velocity,time);
        if(e.projectile_flags&((1ULL<<18)|(1ULL<<19))) {
            double step=(velocity.norm()/30)*e.projectile_curve*e.speed_multiplier;
            if(e.projectile_flags&(1ULL<<18))step=-step;
            velocity=rotated(velocity,std::atan(step));
        }else if(!orbit&&!(e.projectile_flags&((1ULL<<23)|(1ULL<<48)|(1ULL<<26)|(1ULL<<52)|(1ULL<<20)|1)))
            velocity=rotated(velocity,turn/30);
        if((e.projectile_flags&(1ULL<<20))&&point.x>f.grid.native_min.x-120&&point.x<f.grid.native_max.x+120) {
            for(const auto& player:f.entities)if(player.type==1) {
                const Vec delta=player.pos+player.vel*time-point;
                const double vertical=delta.unit().y;
                if(vertical>-.4&&vertical<.05) {
                    velocity={velocity.norm()*2*(delta.x>0?1:-1),0};
                    e.projectile_flags&=~(1ULL<<20);break;
                }
            }
        }
        if(e.projectile_flags&(1ULL<<21))point=point+velocity*(std::sin(age*2*pi/30)/30);
        const Vec perpendicular=Vec{velocity.y,-velocity.x}.unit();
        const double phase=(age+e.projectile_phase)*2*pi/30;
        if(e.projectile_flags&(1ULL<<5))point=point+perpendicular*(3*std::cos(phase*(e.spawner_type==912?2:1)));
        if(e.projectile_flags&(1ULL<<22))point=point+perpendicular*((3+std::min(4.0,(age+e.projectile_phase)*.04))*std::cos(phase));
        if(e.projectile_flags&(1ULL<<23)) {
            if(f.clock+tick-uint32_t(e.birth)==1)velocity=rotated(velocity,pi/4);
            else if(int(age)>int(previous_age)) {
                const int remainder=int(age)%30;
                if(remainder==17)velocity=rotated(velocity,-3*pi/4);
                else if(remainder==0)velocity=rotated(velocity,3*pi/4);
            }
        }
        if(!direct_projectile(e,point,velocity,height,falling,time,age))return false;
        velocity=velocity*projectile_speed_factor(e,age);
        if((e.projectile_flags&(1ULL<<27))&&(e.spawner_type==888||e.spawner_type==407)) {
            const double limit=e.spawner_type==888?300:270;
            if(velocity.norm()>limit)velocity=velocity.unit()*limit;
        }
        const double scale=e.speed_multiplier,damping=.8/(.8+scale-.8*scale);
        falling=falling*damping+scale*(e.fall_accel+.1);height+=falling*scale;
        bounce_from_floor(e,point,height,falling);bounce_from_grid(e,point,velocity,height);
        apply_projectile_clock(e,velocity,previous_age,age);
        if(f.room_type!=16&&e.height_known&&height>-5)return false;
        if(e.projectile_flags&(1ULL<<40)) {
            height+=(-50-height)*.2;falling=0;
            if(!e.parent)return false;
        }
        return true;
    };
    auto projectile_can_damage=[&](const Entity& e,double height) {
        return !(e.projectile_flags&((1ULL<<31)|(1ULL<<57)))&&!(e.flags&(1ULL<<5))&&
            (f.room_type==16||!e.height_known||height>=-50||(e.projectile_flags&(1ULL<<17)));
    };
    auto future_source=[&](const Entity& e,double time) {
        Vec point=e.pos,velocity=e.vel;
        Entity predicted=e;
        double height=e.height,falling=e.fall_speed;
        const int ticks=int(std::ceil(time*30));
        for(int tick=1;tick<=ticks;++tick) {
            if(e.type==9) {
                const Vec previous=point;
                const bool alive=advance_projectile(predicted,point,velocity,height,falling,tick);
                const double fraction=std::min(1.0,time*30-tick+1);
                if(fraction<1&&!(predicted.projectile_flags&(1ULL<<30)))point=previous+(point-previous)*fraction;
                if(!alive)break;
            }else {
                point=point+velocity*std::min(1.0/30,time-(tick-1)/30.0);
                if(e.type==4)velocity=velocity*.8;
            }
        }
        return point;
    };
    auto projectile_end_time=[&](const Entity& e) {
        if(e.dead)return 1.0/30;
        double end=(e.projectile_flags&(1ULL<<38))&&e.speed_multiplier>0?
            std::max(0.0,(46-e.projectile_age)/(30*e.speed_multiplier)):horizon+1;
        double height=e.height,fall=e.fall_speed;
        Vec point=e.pos,velocity=e.vel;
        Entity predicted=e;
        for(int tick=1;tick<=int(std::ceil(std::min(end,horizon)*30));++tick) {
            const Vec previous=point;
            if(!advance_projectile(predicted,point,velocity,height,fall,tick))return std::min(end,tick/30.0);
            if(!(predicted.projectile_flags&((1ULL<<42)|(1ULL<<30)|(1ULL<<13)))&&e.grid_collision!=0&&!f.grid.shot_clear(previous,point))return std::min(end,(tick+1)/30.0);
            if(f.room_type!=16&&e.height_known&&height>-5)return std::min(end,(tick+1)/30.0);
        }
        return end;
    };
    auto emit_patterns=[&](const Entity& e) {
            for(const auto* pattern:projectile_patterns(e)) {
                const bool death_clock=pattern->pattern_clock=="lethal_hit";
                const bool projectile_end=pattern->pattern_clock=="projectile_end";
                if(!e.alive()&&!death_clock&&!projectile_end)continue;
                if(pattern->pattern_clock=="state_timer"&&e.state_frame<0)continue;
                if(pattern->pattern_direction=="velocity"&&e.vel.norm()==0&&!death_clock)continue;
                double phase=e.animation_frame;
                if(pattern->pattern_clock=="state_entry") {
                    const auto previous=tracks_.find(identity(e));
                    if(previous!=tracks_.end()&&previous->second.entity.state==e.state)continue;
                    phase=0;
                }
                if(death_clock) {
                    double impact=-1;
                    double remaining_hp=e.hp;
                    const auto previous=tracks_.find(identity(e));
                    if(e.dead) {
                        if(previous!=tracks_.end()&&previous->second.entity.dead)continue;
                        impact=0;
                    }else if(!e.invulnerable) {
                        for(const auto& damage:e.damage_queue)if(damage.amount>0) {
                            remaining_hp-=damage.amount;
                            if(remaining_hp<=0&&!(damage.flags&1)){impact=1.0/30;break;}
                            remaining_hp=std::max(0.0,remaining_hp);
                        }
                    }
                    if(impact<0&&e.damageable_enemy()&&e.collision>1) {
                        std::vector<std::pair<double,double>> hits;
                        for(const auto& tear:f.entities) {
                            if(tear.type!=2||!tear.alive()||tear.damage<=0||
                               (tear.spawner_type!=1&&tear.spawner!=f.player.body.address&&!tear.friendly))continue;
                            const Vec r=tear.pos-e.pos,v=tear.vel-e.vel;
                            const double radius=tear.radius+e.radius;
                            const double c=r.dot(r)-radius*radius;
                            double t=0;
                            if(c>0) {
                                const double a=v.dot(v),b=r.dot(v),d=b*b-a*c;
                                if(a==0||b>=0||d<0)continue;
                                t=(-b-std::sqrt(d))/a;
                            }
                            if(t<=horizon)hits.emplace_back(t,tear.damage);
                        }
                        std::sort(hits.begin(),hits.end());
                        double damage=0;
                        for(const auto& [time,amount]:hits) {
                            damage+=amount;
                            if(damage>=remaining_hp){impact=time;break;}
                        }
                    }
                    if(impact<0)continue;
                    phase=-impact*30;
                }
                if(pattern->pattern_clock=="overlay")phase=e.overlay_animation_frame;
                else if(pattern->pattern_clock=="state_timer")phase=-std::max(0,e.state_frame);
                if(pattern->pattern_clock=="cooldown")phase=-std::max(0,e.projectile_cooldown);
                else if(pattern->pattern_clock=="projectile_delay")phase=-std::max(0,e.projectile_delay);
                else if(pattern->pattern_clock=="state_frame")phase=e.state_frame;
                else if(pattern->pattern_clock=="timeout")phase=-e.timeout;
                else if(pattern->pattern_clock=="projectile_age")phase=e.projectile_age;
                else if(projectile_end)phase=-projectile_end_time(e)*30;
                else if(pattern->pattern_clock=="age")phase=double(f.clock)-e.birth;
                else if(pattern->pattern_clock=="ai_i1")phase=-std::max(0,e.ai_i1);
                else if(pattern->pattern_clock=="ai_i2")phase=-std::max(0,e.ai_i2);
                else if(pattern->pattern_clock=="player_fire") {
                    if(player_fire==Fire::none)continue;
                    phase=-std::max(0,e.projectile_cooldown);
                }
                phase+=pattern->pattern_clock_offset;
                const bool animation_clock=pattern->pattern_clock=="animation"||pattern->pattern_clock=="overlay";
                double clock_rate=1,clock_wait=0;
                if(animation_clock) {
                    clock_rate=animation_update_rate(e);
                    const bool playing=pattern->pattern_clock=="overlay"?e.overlay_animation_playing:e.animation_playing;
                    if(!std::isfinite(clock_rate)||clock_rate<=0||(e.animation_state_known&&!playing))continue;
                    clock_wait=e.dead?0:std::max(0,e.animation_update_delay);
                }
                int trigger_min=pattern->trigger_animation_frame_min;
                int trigger_max=pattern->trigger_animation_frame_max;
                if(trigger_min<0&&pattern->trigger_animation_frame>=0)
                    trigger_min=int(std::lround(pattern->trigger_animation_frame));
                if(trigger_max<0&&pattern->trigger_animation_frame>=0)
                    trigger_max=int(std::lround(pattern->trigger_animation_frame));
                trigger_max=std::min(trigger_max,int(std::floor(phase+std::max(0.0,horizon*30-clock_wait)*clock_rate)));
                if(trigger_min>=0&&trigger_max>=trigger_min&&phase<=trigger_max) {
                    bool shot_present=false;
                    for(const auto& projectile:f.entities)
                        if(projectile.type==9&&(projectile.spawner==e.address||projectile.parent==e.address)&&
                           projectile.birth>=int(f.clock)-1&&projectile.birth<=int(f.clock)) {
                            shot_present=true;break;
                        }
                    if(!shot_present||pattern->pattern=="stream") {
                        Vec center=e.pos;
                        if(pattern->pattern_center=="target_pos")center=e.target_pos;
                        else if(pattern->pattern_center=="ai_v1")center=e.ai_v1;
                        else if(pattern->pattern_center=="ai_v2")center=e.ai_v2;
                        else if(pattern->pattern_center=="player")center=f.player.body.pos;
                        else if(pattern->pattern_center=="child"||pattern->pattern_center=="held") {
                            const uint32_t address=pattern->pattern_center=="child"?e.child:e.held;
                            const auto object=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& value){return value.address==address;});
                            if(object==f.entities.end())continue;
                            center=object->pos;
                        } else if(pattern->pattern_center=="flame_front") {
                            center=e.pos+Vec{e.sprite_flip_x?-1.0:1.0,0}*std::max(20.0,e.ai_v2.x);
                        }
                        center=center+pattern->pattern_origin_offset;
                        const bool bounded=trigger_min!=trigger_max;
                        int first=std::max(trigger_min,int(std::ceil(phase)));
                        first+=((pattern->pattern_period-(first-trigger_min)%pattern->pattern_period)%pattern->pattern_period);
                        if(first<=trigger_max) {
                        const bool timing_exact=trigger_min==trigger_max||first==trigger_max;
                        const std::string evidence=pattern->evidence_status+
                            (bounded?"; bounded trigger window":"");
                        auto emission_time=[&](double trigger) {
                            const double delay=(trigger-phase)/clock_rate;
                            return ((animation_clock?std::ceil(delay):delay)+(delay>0?clock_wait:0))/30.0;
                        };
                        const double sweep_start=emission_time(first);
                        if(pattern->pattern_center=="future_source")center=future_source(e,projectile_end?std::max(0.0,sweep_start-1.0/30):sweep_start);
                        const int last=trigger_max-(trigger_max-trigger_min)%pattern->pattern_period;
                        double sweep_window=emission_time(last)-sweep_start;
                        const Vec origin_velocity=Vec{e.sprite_flip_x?-1.0:1.0,0}*pattern->pattern_origin_speed;
                        if(pattern->pattern_origin_speed) {
                            if(e.animation_frame>13&&e.ai_v2.x<=0)continue;
                            int ticks=0;
                            while(ticks<=int(sweep_window*30)&&f.grid.shot_clear(center,center+origin_velocity*(ticks/30.0)))++ticks;
                            if(ticks==0)continue;
                            sweep_window=std::min(sweep_window,(ticks-1)/30.0);
                        }
                        const double sweep_until=pattern->duration>0?
                            std::min(horizon,sweep_start+sweep_window+pattern->duration/30.0):horizon;
                        auto append_swept=[&](double angle,const char* data_source) {
                            const Vec axis{std::cos(angle),std::sin(angle)};
                            auto& warning=add(e,"projectile-burst",pattern->radius,sweep_start,sweep_until);
                            warning.vel=axis*pattern->speed;
                            // Threat::at uses time since this snapshot. At the
                            // first emission, the leading endpoint is the source.
                            warning.pos=center-warning.vel*(sweep_start+sweep_window);
                            warning.end=center-warning.vel*sweep_start;
                            warning.shape=Shape::capsule;warning.confidence=.7;
                            warning.geometry_verified=true;warning.timing_verified=false;
                            warning.predictive=sweep_start>0;
                            warning.evidence_status=evidence;
                            warning.data_source=data_source;
                        };
                        if(pattern->pattern=="terrain_debris") {
                            const int x=int(std::floor((center.x-20)/40)),y=int(std::floor((center.y-100)/40));
                            for(int i=0;i<int(f.grid.cells.size());++i) {
                                const auto& cell=f.grid.cells[i];
                                const int ring=std::abs(i%f.grid.width-x)+std::abs(i/f.grid.width-y);
                                if(cell.type!=7||(ring!=1&&ring!=2)||!f.grid.inside_shape(i))continue;
                                const Vec origin=f.grid.center(i),relative=origin-center,axis=relative.unit();
                                const double spread=relative.norm()<=25?pi/2:std::asin(25/relative.norm());
                                auto& warning=add(e,"terrain-debris",pattern->radius,sweep_start,sweep_until);
                                warning.pos=origin;warning.vel=axis*pattern->speed;warning.shape=Shape::stream;
                                warning.emission_end=sweep_start;warning.stream_min_speed=pattern->speed_min*std::cos(spread);
                                warning.uncertainty=pattern->speed*std::sin(spread);warning.geometry_margin=25;
                                warning.predictive=sweep_start>0;warning.geometry_verified=true;
                                warning.evidence_status=evidence;warning.data_source=pattern->source_refs;
                            }
                        } else if(pattern->pattern=="stream") {
                            double angle=pattern->pattern_phase_degrees*pi/180.0;
                            double spread=std::clamp(pattern->pattern_phase_uncertainty_degrees,0.0,90.0)*pi/180.0;
                            const bool aimed=pattern->pattern_direction=="aimed"||pattern->pattern_direction=="near_aimed";
                            const double emission_end=sweep_start+sweep_window;
                            double speed=pattern->speed,min_speed=pattern->speed_min;
                            if(aimed) {
                                // These attacks select the player at emission,
                                // not at windup entry. Cover reachable aim points
                                // including the next native player update.
                                double lead=pattern->pattern_aim_lead+distance(f.player.body.pos,center)*pattern->pattern_aim_lead_distance;
                                const Vec aim_origin=pattern->pattern_center=="held"?e.pos:center;
                                Vec relative=f.player.body.pos+f.player.body.vel*lead+e.vel*pattern->pattern_source_lead-aim_origin;
                                double reach=(std::max(f.player.max_speed,f.player.body.vel.norm())+e.vel.norm())*
                                    (emission_end+1.0/30)+pattern->pattern_target_radius;
                                if(pattern->pattern_speed_mode=="aim_distance") {
                                    speed=pattern->speed*(relative.norm()+reach);
                                    min_speed=pattern->speed_min*std::max(0.0,relative.norm()-reach);
                                }
                                if(relative.norm()<=reach||relative.norm()>=pattern->pattern_aim_distance||
                                   (pattern->pattern_direction=="near_aimed"&&e.spawner_type==36))spread=pi/2;
                                else spread=std::min(pi/2,spread+std::asin(reach/relative.norm()));
                                if(relative.norm()>1e-9)angle+=std::atan2(relative.y,relative.x);
                            }
                            Vec native_axis{};
                            if(pattern->pattern_direction=="target_pos")native_axis=e.target_pos-e.pos;
                            else if(pattern->pattern_direction=="ai_v1")native_axis=e.ai_v1;
                            else if(pattern->pattern_direction=="ai_v2")native_axis=e.ai_v2;
                            else if(pattern->pattern_direction=="velocity")native_axis=e.vel;
                            else if(pattern->pattern_direction=="facing")native_axis={e.sprite_flip_x?-1.0:1.0,0};
                            else if(pattern->pattern_direction=="perpendicular_velocity")native_axis=rotated(e.vel,pi/2);
                            else if(pattern->pattern_direction=="ai_v1_angle")angle+=e.ai_v1.x*pi/180;
                            else if(pattern->pattern_direction=="entity_angle")angle+=e.angle*pi/180;
                            else if(pattern->pattern_direction=="velocity_swapped")native_axis={e.vel.y,e.vel.x};
                            else if(pattern->pattern_direction=="player_fire_reverse") {
                                native_axis=direction(player_fire)*-1;
                            } else if(pattern->pattern_direction=="animation") {
                                std::string facing=e.animation;
                                std::transform(facing.begin(),facing.end(),facing.begin(),[](unsigned char c){return char(std::tolower(c));});
                                if(facing.find("up")!=std::string::npos)native_axis.y=-1;
                                if(facing.find("down")!=std::string::npos)native_axis.y=1;
                                if(facing.find("left")!=std::string::npos)native_axis.x=-1;
                                if(facing.find("right")!=std::string::npos)native_axis.x=e.sprite_flip_x?-1:1;
                            } else if(pattern->pattern_direction=="ai_i1")angle+=e.ai_i1*pattern->pattern_direction_step*pi/180;
                            else if(pattern->pattern_direction=="ai_i2")angle+=e.ai_i2*pattern->pattern_direction_step*pi/180;
                            if(native_axis.norm()>0)angle+=std::atan2(native_axis.y,native_axis.x);
                            auto& warning=add(e,"projectile-stream",pattern->radius,sweep_start,sweep_until);
                            if(pattern->pattern_speed_mode=="source_velocity")
                                speed=min_speed=std::min(pattern->speed,e.vel.norm()*pattern->speed_min);
                            if(pattern->pattern_speed_mode=="projectile_velocity")speed=min_speed=e.vel.norm()*pattern->speed;
                            warning.pos=center;warning.vel=Vec{std::cos(angle),std::sin(angle)}*speed;
                            warning.emission_velocity=pattern->pattern_center=="future_source"?e.vel:origin_velocity;
                            warning.pos=warning.pos-warning.emission_velocity*sweep_start;
                            if(pattern->pattern_origin_speed)warning.geometry_margin=12;
                            warning.shape=Shape::stream;warning.emission_end=emission_end;
                            warning.geometry_margin+=e.vel.norm()*(emission_end+(aimed?1.0/30:0));
                            warning.stream_min_speed=std::max(0.0,min_speed*std::cos(spread)-e.vel.norm()*pattern->pattern_velocity_inherit);
                            warning.uncertainty=speed*std::sin(spread)+e.vel.norm()*pattern->pattern_velocity_inherit;
                            warning.confidence=.7;warning.geometry_verified=true;warning.timing_verified=false;
                            warning.predictive=sweep_start>0;warning.evidence_status=evidence+"; bounded speed and direction";
                            warning.data_source=aimed?"monster geometry aimed emission envelope":"monster geometry directional stream envelope";
                            if(pattern->pattern_speed_mode=="projectile_velocity") {
                                Threat reverse=warning;reverse.vel=reverse.vel*-1;
                                reverse.kind="projectile-split";threats_.push_back(std::move(reverse));
                            }
                        } else if(pattern->pattern=="radial"&&!timing_exact) {
                            const int count=std::max(1,pattern->pattern_count);
                            const int samples=std::max(1,pattern->pattern_samples);
                            const double uncertainty=pattern->pattern_phase_uncertainty_degrees*pi/180.0;
                            for(int sample=0;sample<samples;++sample) {
                                const double sample_offset=samples==1?0.0:
                                    (double(sample)/double(samples-1)-.5)*2.0*uncertainty;
                                for(int index=0;index<count;++index) {
                                    const double angle=pattern->pattern_phase_degrees*pi/180.0+sample_offset+
                                        double(index)*2.0*pi/double(count);
                                    append_swept(angle,"monster geometry radial trigger window");
                                }
                            }
                        } else if(pattern->pattern=="spread"&&!timing_exact) {
                            const Vec target=f.player.body.pos+f.player.body.vel*sweep_start;
                            const Vec aim=(target-center).unit();
                            if(aim.norm()>1e-9) {
                                const auto& offsets=pattern->pattern_offsets_degrees;
                                const int count=!offsets.empty()?int(offsets.size()):
                                    std::max(1,pattern->pattern_count);
                                const double spacing=pattern->pattern_spacing_degrees*pi/180.0;
                                const double base=std::atan2(aim.y,aim.x);
                                for(int index=0;index<count;++index) {
                                    const double offset=!offsets.empty()?
                                        offsets[size_t(index)]*pi/180.0:
                                        (double(index)-double(count-1)/2.0)*spacing;
                                    const double angle=base+offset;
                                    append_swept(angle,"monster geometry spread trigger window");
                                }
                            }
                        } else {
                        auto append_pattern=[&](int trigger_frame) {
                            const double remaining=(double(trigger_frame)-phase)/clock_rate;
                            if(remaining<0||remaining>horizon*30.0)return;
                            const double start=((animation_clock?std::ceil(remaining):remaining)+(remaining>0?clock_wait:0))/30.0;
                            if(pattern->pattern=="aimed"||pattern->pattern=="spread") {
                                Vec target=f.player.body.pos+f.player.body.vel*start;
                                Vec axis=(target-center).unit();
                                if(axis.norm()>1e-9) {
                                    const auto& offsets=pattern->pattern_offsets_degrees;
                                    const int count=pattern->pattern=="spread"?
                                        (!offsets.empty()?int(offsets.size()):
                                            std::max(1,pattern->pattern_count)):1;
                                    const double spacing=pattern->pattern=="spread"?
                                        pattern->pattern_spacing_degrees*pi/180.0:0.0;
                                    const double base=std::atan2(axis.y,axis.x);
                                    for(int index=0;index<count;++index) {
                                        const double offset=pattern->pattern=="spread"&&!offsets.empty()?
                                            offsets[size_t(index)]*pi/180.0:
                                            (double(index)-double(count-1)/2.0)*spacing;
                                        const double angle=base+offset;
                                        auto& warning=add(e,"projectile-burst",pattern->radius,start,
                                            std::min(horizon,start+.1));
                                        warning.pos=center;
                                        warning.vel=Vec{std::cos(angle),std::sin(angle)}*pattern->speed;
                                        warning.pos=center-warning.vel*start;
                                        warning.shape=Shape::disc;warning.confidence=timing_exact?.9:.7;
                                        warning.geometry_verified=true;warning.timing_verified=timing_exact;
                                        warning.predictive=remaining>0;
                                        warning.evidence_status=evidence;
                                        warning.data_source=pattern->pattern=="spread"?
                                            "monster geometry spread pattern":"monster geometry aimed pattern";
                                    }
                                }
                            }else {
                                const int count=std::max(1,pattern->pattern_count);
                                const int samples=std::max(1,pattern->pattern_samples);
                                const double uncertainty=pattern->pattern_phase_uncertainty_degrees*pi/180.0;
                                for(int sample=0;sample<samples;++sample) {
                                    const double sample_offset=samples==1?0.0:
                                        (double(sample)/double(samples-1)-.5)*2.0*uncertainty;
                                    for(int index=0;index<count;++index) {
                                        const double angle=pattern->pattern_phase_degrees*pi/180.0+sample_offset+
                                            double(index)*2.0*pi/double(count);
                                        auto& warning=add(e,"projectile-burst",pattern->radius,start,std::min(horizon,start+.1));
                                        warning.pos=center;warning.vel=Vec{std::cos(angle),std::sin(angle)}*pattern->speed;
                                        warning.pos=center-warning.vel*start;
                                        warning.shape=Shape::disc;warning.confidence=timing_exact?.9:.7;
                                        warning.geometry_verified=true;warning.timing_verified=timing_exact;
                                        warning.predictive=remaining>0;
                                        warning.evidence_status=evidence;
                                        warning.data_source="monster geometry radial pattern";
                                    }
                                }
                            }
                        };
                        for(int trigger=first;trigger<=trigger_max;trigger+=pattern->pattern_period)append_pattern(trigger);
                        }
                        }
                    }
                }
            }
    };
    for(const auto& e:f.entities) {
        if(!e.pos.finite()||!e.vel.finite())continue;
        auto key=identity(e);seen.insert(key);
        auto old=tracks_.find(key);
        // Effect owners can disappear while their hazards remain. Keep an
        // observed hostile attribution for this exact address+seed only.
        bool hostile_effect_source=e.hostile_source||(e.type==1000&&old!=tracks_.end()&&
            old->second.entity.hostile_source&&!old->second.entity.friendly);
        double turn=old!=tracks_.end()?old->second.turn:0;
        if(old!=tracks_.end()&&f.clock>old->second.clock&&f.clock-old->second.clock<=6&&
           old->second.entity.vel.norm()>20&&e.vel.norm()>20) {
            double observed=normalized_angle(std::atan2(e.vel.y,e.vel.x)-std::atan2(old->second.entity.vel.y,old->second.entity.vel.x));
            turn=std::clamp(observed/((f.clock-old->second.clock)/30.0),-7.0,7.0);
        }
        std::string anim=e.animation;
        std::transform(anim.begin(),anim.end(),anim.begin(),[](unsigned char c){return char(std::tolower(c));});
        bool disabled_by_pressure=silver_disarmed&&silver_trap_npc(e.type,e.variant,e.subtype);
        if(!e.friendly&&!disabled_by_pressure)emit_patterns(e);
        if(e.type==1000&&e.alive()&&!(e.flags&(1ULL<<16))) {
            const bool damaging=(e.variant>=22&&e.variant<=24)||(e.variant==169&&!(e.flags&(1ULL<<29)));
            const bool slowing=(e.variant==25||e.variant==26||e.variant==56)&&!(f.player.body.flags&1);
            const bool slippery=e.variant==94;
            const bool grounded=f.player.native_grid_collision_known?
                (f.player.body.grid_collision==5&&f.player.body.collision!=0&&!f.player.body.dead):!f.player.flying;
            if((damaging||slowing||slippery)&&grounded&&!f.player.ground_creep_immune&&
               (slippery||!f.player.creep_effect_immune)) {
                const double radius=e.sprite_scale_known?e.radius*e.sprite_scale.x:std::max(40.0,e.radius);
                auto& creep=add(e,damaging?"creep":slippery?"creep-slippery":"creep-slow",radius);
                creep.vel={};creep.soft=!damaging;
                creep.until=e.timeout>0?std::min(horizon,e.timeout/30.0):horizon;
                creep.evidence_status="native radius bound and player gates; sprite texture-alpha mask not read";
                creep.data_source=damaging?"Effect Update 0x5EB88C..0x5EBBD7 damage":
                    slippery?"Effect Update 0x5EBFB0..0x5EC272 slippery flag":"Effect Update 0x5EBBE1..0x5EBFA6 slowing";
                if(const auto* model=geometry_model(e,"creep")) {
                    if(model->radius>0&&!e.sprite_scale_known)creep.radius=model->radius;
                    if(model->duration>0)creep.until=std::min(creep.until,model->duration/30.0);
                }
            }
        }
        for(const auto& pulse:predict_native_effect_pulses(f,e,horizon)) {
            // Fire jets are source-owned damage pulses; unattributed or
            // friendly effects are visual only.
            if(e.friendly||!hostile_effect_source)continue;
            auto& fire=add(e,"hostile-fire-jet",pulse.radius,pulse.start,std::min(horizon,pulse.start+pulse.duration));
            fire.pos=pulse.pos;fire.vel={};fire.predictive=pulse.start>0;fire.confidence=.85;
            fire.evidence_status=pulse.real_clock?"native real-frame damage dispatch; future effect movement extrapolated":
                "native damage dispatch; real birth frame unavailable and age fallback is approximate";
            fire.data_source="Effect 0x5D8F47 and AreaDamage 0x6FED60; radius 20 plus target size";
        }
        for(const auto& volley:predict_native_monstro_volleys(f,e,horizon)) {
            auto& warning=add(e,"projectile-burst",volley.radius,volley.start,volley.until);
            warning.predictive=true;warning.timing_verified=true;warning.confidence=.72;
            if(volley.radial) {
                warning.shape=Shape::ring;warning.pos=volley.pos;warning.vel={};
                for(int tick=0;tick<=int(std::ceil(horizon*30))+1;++tick)
                    warning.ring_radius_path.push_back(std::max(0.0,(tick/30.0-volley.start)*210));
                if(e.state==6) {
                    warning.evidence_status="native Monstro State 6 JumpUp event chain to State 7 JumpDown; 18 random radial projectiles enclosed by expanding ring";
                    warning.data_source="AI 0x0046C0A0: JumpUp Jump@10 -> State 7 JumpDown Shoot@34 -> FireBossProjectiles 0x006CCDD0 count 18; speed 7 units/tick";
                }else if(e.state==7) {
                    warning.evidence_status="native Monstro State 7 Shoot event; 18 random radial projectiles enclosed by expanding ring";
                    warning.data_source="AI 0x0046C0A0 -> FireBossProjectiles 0x006CCDD0 count 18; ANM2 JumpDown Shoot@34; speed 7 units/tick";
                }else {
                    warning.evidence_status="native Monstro State 8 Shoot event with zero target delta; 13 random radial projectiles enclosed by expanding ring";
                    warning.data_source="AI 0x0046C0A0 -> FireBossProjectiles 0x006CCDD0 count 13; zero target vector selects random direction";
                }
            }else {
                warning.pos=volley.pos-volley.vel*volley.start;
                warning.vel=volley.vel;warning.uncertainty=volley.uncertainty;warning.uncertainty_origin=volley.start;
                warning.evidence_status="native Monstro State 8 Shoot event; 13 random velocity vectors enclosed around aimed component";
                warning.data_source="AI 0x0046C0A0 -> FireBossProjectiles 0x006CCDD0 count 13; ANM2 Taunt Shoot@21; velocity 7 + random disk 3.5, radius-5 tear";
            }
        }
        const bool creep_grounded=f.player.native_grid_collision_known?
            (f.player.body.grid_collision==5&&f.player.body.collision!=0&&!f.player.body.dead):!f.player.flying;
        if(creep_grounded&&!f.player.ground_creep_immune&&!f.player.creep_effect_immune&&
           !(f.player.body.flags&1)) {
            for(const auto& effect:predict_native_gish_creep(f,e,horizon)) {
                auto& creep=add(e,"creep-slow",effect.radius,effect.start,effect.until);
                creep.pos=effect.pos;creep.vel={};creep.soft=true;creep.predictive=true;
                creep.timing_verified=true;creep.confidence=.68;
                creep.evidence_status="native Gish State 7 mode 0 spawns a 0.85 slowdown effect; soft ground-status hazard, pixel mask unresolved";
                creep.data_source="AI 0x0046C0A0 JumpDown Shoot@34 -> Effect 1000.26; Effect Update 0x5EBBE1..0x5EBFA6 calls AddSlowing";
            }
        }
        for(const auto& smoke:predict_native_smoke_hazards(f,e,horizon)) {
            // Native poison callbacks are source-filtered; an unattributed
            // cloud is visual only. Friendly clouds never harm the player.
            // The explosive branch is environmental and otherwise stays
            // ungated because ignition does not depend on ownership.
            if(e.friendly)continue;
            if(!smoke.explosive&&!hostile_effect_source)continue;
            auto& threat=add(e,smoke.explosive?"smoke-explosion":"hostile-poison-smoke",
                             smoke.radius,smoke.start,smoke.until);
            threat.pos=smoke.pos;threat.vel={};threat.motion_path=smoke.motion_path;
            threat.target_center_only=!smoke.explosive;threat.predictive=smoke.start>0;
            threat.confidence=smoke.ignition_predicted?.7:.85;
            threat.evidence_status=smoke.explosive?
                (smoke.ignition_predicted?"native ignition candidates; overlap and future movement extrapolated":
                 "observed native ignition state; next-update blast position extrapolated"):
                (smoke.alpha_known?"native poison callback and opacity gates; future opacity extrapolated":
                 "native poison callback; opacity unavailable and assumed visible");
            threat.data_source=smoke.explosive?"Effect 0x5D6910 and Explosion 0x700060; base radius 75 plus target size":
                "Effect 0x5D6F7B; radius 40 times sprite scale, target center";
        }
        if(e.alive()&&(!e.friendly||e.type==4)&&!disabled_by_pressure) {
            if(e.type==291)add(e,"pitfall",std::max(20.0,e.radius));
            if(e.type==33&&(e.variant==1||e.variant==3)&&e.hp>0)add(e,"hazardous-fire",std::max(12.0,e.radius));
            if((e.type==9&&(!(e.projectile_flags&(1ULL<<31))||((e.projectile_flags&(1ULL<<32))&&!(e.projectile_change_flags&(1ULL<<31)))))||(e.type==2&&((e.spawner_type>=10&&e.spawner_type<1000)||e.hostile_source))) {
                auto& bullet=add(e,"projectile",e.radius);
                if(const auto* model=geometry_model(e,"projectile")) {
                    if(model->radius>0)bullet.radius=model->radius;
                    bullet.geometry_verified=model->geometry_verified||model->runtime_geometry_verified;
                    bullet.evidence_status=model->evidence_status;
                    bullet.data_source="monster geometry model";
                }
                if(e.type==9&&(e.projectile_flags&(1ULL<<38)))bullet.until=std::min(horizon,projectile_end_time(e));
                bullet.angular_speed=turn;
                bullet.uncertainty=(e.projectile_flags&((1ULL<<48)|1))?30:std::abs(turn)*2;
                if(config_.native_projectile_motion&&e.type==9) {
                    // J460 order: base displacement, curve velocity, sine/wiggle
                    // displacement, then sawtooth velocity turn.
                    Vec point=e.pos,velocity=e.vel;
                    Entity predicted=e;
                    double height=e.height,falling=e.fall_speed;
                    std::vector<std::pair<double,double>> damage_windows;
                    double damage_start=projectile_can_damage(e,height)?0:-1;
                    bullet.motion_path.push_back(point);
                    for(int tick=1;tick<=int(std::ceil(horizon*30))+1;++tick) {
                        bool jumped=false;
                        const bool alive=advance_projectile(predicted,point,velocity,height,falling,tick,turn,&jumped);
                        if(jumped)bullet.motion_breaks.push_back(bullet.motion_path.size());
                        if(!alive)bullet.until=std::min(bullet.until,tick/30.0);
                        const double at=tick/30.0;
                        const bool damaging=projectile_can_damage(predicted,height);
                        if(!damaging&&damage_start>=0){damage_windows.push_back({damage_start,at});damage_start=-1;}
                        if(damaging&&damage_start<0)damage_start=at;
                        bullet.motion_path.push_back(point);
                        if(!alive)break;
                    }
                    if(damage_start>=0)damage_windows.push_back({damage_start,horizon});
                    {
                        Threat trajectory=bullet;
                        threats_.pop_back();
                        for(const auto& [start,until]:damage_windows) {
                            Threat segment=trajectory;
                            segment.start=std::max(start,trajectory.start);segment.until=std::min(until,trajectory.until);
                            if(segment.until>segment.start)threats_.push_back(std::move(segment));
                        }
                    }
                }
                if(e.projectile_flags&2) add(e,"explosive-projectile",std::max(70.0,e.radius*12));
            }
            const Entity* hit_owner=&e;
            if(e.type==7)for(size_t depth=0;depth<f.entities.size()&&hit_owner->laser_link;++depth) {
                const auto root=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& value){return value.address==hit_owner->laser_link;});
                if(root==f.entities.end())break;
                hit_owner=&*root;
            }
            const bool laser_hit_used=e.type==7&&hit_owner->laser_one_hit&&!hit_owner->laser_first_update&&
                std::find(hit_owner->laser_hit_list.begin(),hit_owner->laser_hit_list.end(),f.player.body.native_index)!=hit_owner->laser_hit_list.end();
            if(e.type==7&&((e.circle&&e.variant!=8)||(!e.circle&&e.variant!=7))&&!e.laser_damage_disabled&&!laser_hit_used&&
               (e.laser_first_update||(!(e.flags&0x4000)&&e.speed_multiplier>0))) {
                const bool verified_width=e.subtype==0&&(e.variant==1||e.variant==2);
                double beam_radius=!config_.legacy_laser_width?e.radius:std::clamp(std::max(e.radius,e.laser_radius*.5),3.0,80.0);
                bool zero_endpoint=std::abs(e.endpoint.x)<1e-6&&std::abs(e.endpoint.y)<1e-6;
                const bool fade_tail=(e.variant==1||e.variant==3||e.variant==6||e.variant==9||e.variant==11||e.variant==12||e.variant==14||e.variant==15)&&
                    ((e.variant!=6&&e.variant!=15)||e.spawner_type==1);
                double lifetime=e.timeout>0?(e.timeout+(fade_tail?20:0))/30.0:horizon;
                if(e.laser_shrink)lifetime=std::max(1.0/30,(20+e.timeout)/30.0);
                if(e.circle)lifetime=e.timeout>0?e.timeout/30.0:horizon;
                auto& laser=add(e,"laser",beam_radius,0,std::min(horizon,lifetime));
                if(e.laser_first_update&&((e.flags&0x4000)||e.speed_multiplier<=0))laser.until=std::min(laser.until,1.0/30);
                if(!e.laser_first_update) {
                    laser.damage_period=2/(30*e.speed_multiplier);
                    laser.damage_window=1/(30*e.speed_multiplier);
                    laser.damage_phase=-std::fmod(e.age,2)/(30*e.speed_multiplier);
                }
                laser.vel={};laser.geometry_verified=e.geometry_valid&&verified_width&&!config_.legacy_laser_width;
                if(const auto* model=geometry_model(e,"laser")) {
                    if(model->radius>0&&!verified_width&&config_.legacy_laser_width)laser.radius=model->radius;
                    laser.geometry_verified=model->geometry_verified||model->runtime_geometry_verified;
                    laser.evidence_status=model->evidence_status;
                    laser.data_source="monster geometry model";
                }
                std::string direction_anim=anim;
                for(const auto& source:f.entities)if(source.address==e.parent&&source.alive()) {
                    if(e.laser_follow)laser.vel=source.vel;
                    direction_anim=source.animation;
                    std::transform(direction_anim.begin(),direction_anim.end(),direction_anim.begin(),[](unsigned char c){return char(std::tolower(c));});
                    break;
                }
                Vec inferred_axis{};
                if(direction_anim.find("down")!=std::string::npos)inferred_axis={0,1};
                else if(direction_anim.find("up")!=std::string::npos)inferred_axis={0,-1};
                else if(direction_anim.find("left")!=std::string::npos)inferred_axis={-1,0};
                else if(direction_anim.find("right")!=std::string::npos)inferred_axis={1,0};
                const bool native_curve_flags=(e.laser_tear_flags[0]&((1u<<2)|(1u<<8)|(1u<<16)))||
                    (e.laser_tear_flags[2]&((1u<<4)|(1u<<7)));
                if(config_.native_laser_geometry&&!e.circle&&e.laser_points.size()==2&&e.laser_homing_type==0&&!native_curve_flags) {
                    laser.shape=Shape::capsule;laser.end=e.laser_points.back();
                }else if(config_.native_laser_geometry&&!e.circle&&e.laser_points.size()>=2) {
                    laser.shape=Shape::polyline;laser.kind="laser-curve";laser.geometry_path=e.laser_points;
                }
                else if(e.geometry_valid&&!zero_endpoint) { laser.shape=e.circle?Shape::ring:Shape::capsule;laser.end=e.endpoint; }
                else if(inferred_axis.norm()>0) {
                    laser.shape=Shape::capsule;laser.end=e.pos+inferred_axis*1500;
                }
                else {
                    const Vec axis{std::cos(e.angle*pi/180),std::sin(e.angle*pi/180)};
                    laser.shape=Shape::capsule;laser.end=e.pos+axis*1200;
                    laser.kind="unknown-laser-axis";
                    laser.data_source="native laser AngleDegrees; endpoint pending update";
                }
                if(config_.native_laser_geometry&&!config_.legacy_laser_width&&!e.circle&&e.variant==4&&!e.laser_sampled) {
                    const Vec axis{std::cos(e.angle*pi/180),std::sin(e.angle*pi/180)};
                    laser.shape=Shape::cone;laser.pos=e.pos;laser.end=e.pos+axis*(300+std::abs(e.position_offset.y));laser.radius=0;
                    laser.data_source="native variant-4 cone: lateral distance < 0.1 * center distance";
                }
            }
            if(e.type==212&&e.variant==3&&anim.rfind("attack",0)==0) {
                Vec axis{};
                if(anim.find("down")!=std::string::npos)axis={0,1};
                else if(anim.find("up")!=std::string::npos)axis={0,-1};
                else if(anim.find("left")!=std::string::npos)axis={-1,0};
                else if(anim.find("right")!=std::string::npos)axis={1,0};
                if(axis.norm()>0) {
                    auto& warning=add(e,"laser-warning",40,0,.6);
                    warning.shape=Shape::capsule;warning.end=e.pos+axis*1500;
                }
            }
            if(!supplied(e,"brimstone-head-shoot-windup")&&e.type==203&&e.variant==0&&anim.rfind("shoot",0)==0) {
                Vec axis{};
                if(anim.find("down")!=std::string::npos)axis={0,1};
                else if(anim.find("up")!=std::string::npos)axis={0,-1};
                else if(anim.find("left")!=std::string::npos)axis={-1,0};
                else if(anim.find("right")!=std::string::npos)axis={1,0};
                if(axis.norm()>0) {
                    auto& warning=add(e,"laser-warning",std::max(16.0,e.radius),0,horizon);
                    warning.shape=Shape::capsule;warning.end=e.pos+axis*1500;
                }
            }
            if(!supplied(e,"eye-shoot-lock-windup")&&e.type==60&&(e.variant==0||e.variant==1)&&e.subtype==0&&(anim.rfind("shoot",0)==0||anim.rfind("rotate",0)==0)) {
                bool shooting=anim.rfind("shoot",0)==0;
                double delay=shooting?std::clamp((10-e.animation_frame)/30.0,0.0,horizon):0.35;
                auto lock=eye_locks_.find(e.address);
                if(shooting&&(lock==eye_locks_.end()||f.clock>lock->second.expiry||e.animation_frame<=1)) {
                    Vec target=f.player.body.pos+f.player.body.vel*std::max(.25,delay);
                    eye_locks_[e.address]={target,f.clock+20};
                    lock=eye_locks_.find(e.address);
                }
                Vec target=lock!=eye_locks_.end()?lock->second.target:(f.player.body.pos+f.player.body.vel*delay);
                Vec axis=(target-e.pos).unit();
                if(axis.norm()>0) {
                    auto& warning=add(e,"laser-warning",40,delay,std::min(horizon,delay+.2));
                    warning.shape=Shape::capsule;
                    warning.end=e.pos+axis*1500;
                    warning.uncertainty=10;
                }
            }
            if(e.type==4) {
                double time=e.timeout>=0?e.timeout/30.0:0;
                const double explosion_radius=native_bomb_explosion_radius(e);
                auto& bomb=add(e,"bomb",explosion_radius*native_explosion_radius_scale(f,e),std::max(0.0,time-.06),time+.18);
                bomb.event_time=time;
                damped_motion(bomb,e.friction);
                bomb.uncertainty=e.variant==4?10+2*e.vel.norm():10;
                if(const auto* model=geometry_model(e,"bomb")) {
                    if(model->radius>0&&!e.bomb_explosion_fields_known)bomb.radius=model->radius;
                    if(model->duration>0)bomb.until=model->duration/30.0;
                    bomb.geometry_verified=model->geometry_verified||model->runtime_geometry_verified;
                    if(!e.bomb_explosion_fields_known) {
                        bomb.evidence_status=model->evidence_status;
                        bomb.data_source="monster geometry model";
                    }
                }
                if(e.bomb_explosion_fields_known) {
                    bomb.evidence_status="native fuse and damage-band radius; Giga Bomb flag/variants use the 130-radius branch";
                    bomb.data_source="Bomb Init 0x6A2050; Update 0x6A24D0; Explosion 0x700060 flags 0xC347D0..DC";
                }
                if(e.variant==4&&e.timeout>0) {
                    auto& space=add(e,"homing-bomb-space",explosion_radius+24,0,std::min(horizon,time));
                    // Reserve the near approach corridor instead of assuming
                    // a homing bomb will keep travelling straight for a second.
                    space.shape=Shape::capsule;space.end=e.pos+e.vel*std::min(.25,time);space.vel={};
                    space.soft=true;space.evidence_status="observed approach corridor preference; not immediate explosion";
                    space.data_source="observed Super Troll Bomb chase velocity and native fuse";
                }
            }
            if(e.contact()&&fly_chaser(e)) {
                auto& fly=add(e,"fly-pursuit",e.radius+config_.contact_margin);
                fly.vel={};fly.motion_path.push_back(e.pos);
                fly.evidence_status="native pursuit steering, vertical weighting and periodic damping";
                fly.data_source="AI_00506bd0; 18/61 target position and AI vector";
                Vec point=e.pos,velocity=e.vel,wobble=e.ai_v1;
                const double keep_distance=e.type==61?15:25;
                for(int tick=1;tick<=int(std::ceil(horizon*30))+1;++tick) {
                    const Vec target=f.player.body.pos+f.player.body.vel*std::min(.4,tick/30.0);
                    Vec delta=target-point;delta.y*=.5;
                    if((int(f.clock)-e.birth+tick)%3==0&&delta.norm()>keep_distance)
                        velocity=velocity+delta.unit()*(std::min(1.2,(delta.norm()-keep_distance)*.08)*30*e.speed_multiplier);
                    if((f.clock+tick)%4==1)wobble=wobble*.4;
                    if((f.clock+tick)%3==2)velocity=(velocity+wobble*(60*e.speed_multiplier))*.6;
                    point=point+velocity/30;
                    fly.motion_path.push_back(point);
                }
            }
            if(e.contact()&&squirt_charge(e)) {
                const bool windup=e.animation=="Attack01"&&e.animation_frame<37;
                const double event_delay=animation_event_updates(e,"Slide");
                const double launch=windup?(event_delay>=0?event_delay+1:animation_frame_updates(e,37))/30:0;
                auto& dash=add(e,"squirt-dash",e.radius+config_.contact_margin);
                dash.vel={};dash.motion_path.push_back(e.pos);dash.predictive=windup;
                dash.timing_verified=true;dash.geometry_verified=true;
                dash.evidence_status="native Attack01 Slide event@36 and velocity impulse";
                dash.data_source="AI_00535280 + 220 squirt ANM2; native impulse 20";
                Vec point=e.pos,velocity=e.vel;
                bool launched=!windup,stopped=false;
                double slide_age=e.state==4?e.ai_v1.x:0;
                for(int tick=1;tick<=int(std::ceil(horizon*30))+1;++tick) {
                    const double time=tick/30.0;
                    if(!stopped) {
                        if(!launched&&time>=launch) {
                            velocity=velocity+(f.player.body.pos+f.player.body.vel*launch-point).unit()*(600*e.speed_multiplier/.95);
                            launched=true;slide_age=-3;
                        }
                        if(launched&&slide_age>=0&&slide_age<10)velocity=velocity+velocity.unit()*(15*e.speed_multiplier/.95);
                        velocity=velocity*e.friction;
                        const Vec next=point+velocity/30;
                        if(f.grid.sweep_clear(point,next,e.radius,true))point=next;
                        else {velocity={};stopped=true;}
                        if(launched)slide_age+=1;
                    }
                    dash.motion_path.push_back(point);
                }
            }
            if(e.contact()&&sliding_charge(e)) {
                double launch=0,remaining=0;
                const double rate=animation_update_rate(e);
                if(e.animation=="BeforeSlide") {
                    launch=std::max(0.0,animation_frame_updates(e,(e.animation_length>0?e.animation_length:21)+6)/30);
                    remaining=rate>0?std::ceil(16/rate)/30:0;
                }else if(e.state_frame>0) {
                    launch=e.state_frame/30.0+(rate>0?std::ceil(6/rate)/30:std::numeric_limits<double>::infinity());
                    remaining=rate>0?std::ceil(16/rate)/30:0;
                }else if(e.animation_frame<6) {
                    const double event_delay=animation_event_updates(e,"Slide");
                    launch=(event_delay>=0?event_delay+1:animation_frame_updates(e,6))/30;
                    remaining=rate>0?std::ceil(16/rate)/30:0;
                }else remaining=std::max(0.0,animation_frame_updates(e,22)/30);
                auto& slide=add(e,"slide-charge",e.radius+config_.contact_margin);
                slide.vel={};slide.motion_path.push_back(e.pos);
                slide.predictive=launch>0;slide.timing_verified=true;slide.geometry_verified=true;
                slide.evidence_status="native Slide event and acceleration; observed position/velocity";
                slide.data_source="AI_004855b0 + 261 Slide event@5; launch 10/15, acceleration 1/1.5, friction .98";
                Vec point=e.pos,velocity=e.vel;
                Grid slide_terrain=f.grid;
                for(auto& cell:slide_terrain.cells)if(cell.destructible)cell.collision=0;
                bool launched=launch==0,stopped=false;
                const double impulse=e.subtype==2?450:300,acceleration=e.subtype==2?45:30;
                const double current_damping=e.animation=="BeforeSlide"?.7:(e.state_frame>0?.9:.98);
                const double damping_scale=e.friction/current_damping;
                for(int tick=1;tick<=int(std::ceil(horizon*30))+1;++tick) {
                    const double time=tick/30.0;
                    if(!stopped) {
                        if(!launched&&time>=launch) {
                            const Vec target=f.player.body.pos+f.player.body.vel*launch;
                            velocity=velocity+(target-point).unit()*impulse;
                            launched=true;
                        }
                        if(launched&&time<=launch+remaining)
                            velocity=velocity*(.98*damping_scale)+velocity.unit()*(acceleration*e.speed_multiplier);
                        else velocity=velocity*((e.animation=="BeforeSlide"?.7:(e.state_frame>0||time>launch+remaining?.9:.98))*damping_scale);
                        const Vec next=point+velocity/30;
                        if(slide_terrain.sweep_clear(point,next,e.radius,true))point=next;
                        else {velocity={};stopped=true;}
                    }
                    slide.motion_path.push_back(point);
                }
            }
            double cage_contact_margin=e.type==265?(10+(e.vel.norm()>250?12:0)):0;
            if(e.contact()&&!modeled_contact(e)&&!supplied_contact(e))
                add(e,"contact",e.radius+config_.contact_margin+cage_contact_margin);
            if(config_.projectile_burst_margin>0&&e.type==302&&e.variant==10)
                add(e,"projectile-burst",e.radius+config_.projectile_burst_margin);
            if(config_.projectile_burst_prediction&&e.type==302&&e.variant==10) {
                auto& burst=projectile_bursts_[e.address];
                if(old!=tracks_.end()&&old->second.entity.collision==0&&e.collision!=0&&!burst.next_fire) {
                    burst.next_fire=f.clock+7;
                    burst.next_diagonal=false;
                }
                if(burst.next_fire) {
                    while(f.clock>burst.next_fire) {
                        burst.next_fire+=uint32_t(std::max(1.0,std::round(burst.period_frames)));
                        if(config_.projectile_burst_alternating)burst.next_diagonal=!burst.next_diagonal;
                    }
                    double start=burst.next_fire>=f.clock?double(burst.next_fire-f.clock)/30.0:0;
                    if(start<=horizon) {
                        const double diagonal=std::sqrt(0.5);
                        std::array<Vec,4> axes;
                        if(config_.projectile_burst_alternating&&burst.next_diagonal)
                            axes={{Vec{diagonal,diagonal},Vec{-diagonal,diagonal},
                                Vec{diagonal,-diagonal},Vec{-diagonal,-diagonal}}};
                        else
                            axes={{Vec{1,0},Vec{-1,0},Vec{0,1},Vec{0,-1}}};
                        for(auto axis:axes) {
                            auto& warning=add(e,"projectile-burst",13,start,std::min(horizon,start+.2));
                            warning.shape=Shape::capsule;warning.end=e.pos+axis*1500;warning.vel={};
                            warning.confidence=.9;warning.geometry_verified=true;
                            warning.evidence_status="native cross-seed geometry; 29-frame alternating four-way pattern";
                            warning.data_source="Cross Stoney 302.10.0 runtime geometry";
                        }
                    }
                }
            }
            if(e.enemy()&&blast_radius(e)>0)add(e,"explosive-npc",blast_radius(e));
            if(e.type==1000) {
                if(!f.player.flying&&e.variant==55&&e.damage>0) {
                    auto& spike=add(e,"womb-spike",std::max(20.0,e.radius),0,horizon);
                    spike.vel={};spike.evidence_status="observed damaging spike; active-object envelope";
                    spike.data_source="native 1000.55 damage callbacks";
                }
                if(e.variant==4||e.variant==62) {
                    auto& wave=add(e,"cage-rock-wave",std::max(20.0,e.radius));
                    if(const auto* model=geometry_model(e,"cage-rock-wave")) {
                        if(model->radius>0)wave.radius=model->radius;
                        if(model->duration>0)wave.until=model->duration/30.0;
                        wave.geometry_verified=model->geometry_verified||model->runtime_geometry_verified;
                        wave.evidence_status=model->evidence_status;
                        wave.data_source="monster geometry model";
                    }
                }
                if(e.variant==31||e.variant==19) {
                    auto& falling=add(e,"falling-impact",e.variant==31?85:36,0,horizon);falling.vel={};
                    if(const auto* model=geometry_model(e,"falling-impact")) {
                        if(model->radius>0)falling.radius=model->radius;
                        if(model->duration>0)falling.until=model->duration/30.0;
                        falling.geometry_verified=model->geometry_verified||model->runtime_geometry_verified;
                        falling.evidence_status=model->evidence_status;
                        falling.data_source="monster geometry model";
                    }
                }
            }
            if(e.type==39&&e.variant==0&&e.state==9&&e.state_frame>=15&&e.state_frame<=60) {
                double start=std::max(0.0,(27-e.state_frame)/30.0);
                for(auto axis:std::vector<Vec>{{1,0},{-1,0},{0,1},{0,-1}}) {
                    auto& warning=add(e,"vis-windup",16,start,std::max(start+.03,(61-e.state_frame)/30.0));
                    warning.shape=Shape::capsule;warning.end=e.pos+axis*1500;
                }
            }
            if(e.type==101&&(anim=="stomparm"||anim=="stompleg")&&e.animation_frame<=13) {
                auto& foot=add(e,"stomp",56,std::max(0.0,(10-e.animation_frame)/30),std::max(.03,(14-e.animation_frame)/30));foot.vel={};
            }
            if(e.type==20&&e.variant==0&&e.collision==0&&(anim=="walk"||anim=="jumpdown")) {
                double delay=std::max(0.0,((anim=="walk"?22:32)-e.animation_frame)/30);
                add(e,"monstro-landing",e.radius+10,delay,delay+.2);
            }
            if(e.type==43&&(e.variant==0||e.variant==1)&&e.collision==0&&anim=="walk"&&e.animation_frame<=23) {
                double delay=std::max(0.0,(23-e.animation_frame)/30.0);
                auto& landing=add(e,"boss-hop-landing",e.radius+10,delay,delay+.2);
                landing.shape=Shape::capsule;landing.vel={};
                landing.end=e.target_pos.norm()>1?e.target_pos:e.pos;
                landing.data_source="43.0/43.1 Walk Land@23 + native damage windows";
            }
            if(e.type==268&&e.variant==0&&e.state==6&&anim=="flydown"&&e.animation_frame<=9) {
                double delay=std::max(0.0,(9-e.animation_frame)/30.0);
                auto& landing=add(e,"adversary-landing",e.radius+16,delay,delay+.2);
                damped_motion(landing,double(.85f));
                landing.data_source="268.0.0 FlyDown Land@9 + native damage windows";
            }
            if(e.type==917&&e.collision==0&&anim=="appear"&&e.animation_frame<=23) {
                double delay=std::max(0.0,(22-e.animation_frame)/30.0);
                auto& landing=add(e,"colostomia-appear",e.radius+8,delay,delay+.2);landing.vel={};
            }
            if(e.type==916&&e.variant==0&&e.subtype==0&&e.state==8&&anim=="swipe"&&e.animation_frame<17) {
                double start=std::max(0.0,(15-e.animation_frame)/30.0);
                double until=std::max(start+1.0/30,(17-e.animation_frame)/30.0);
                // ANM2 Hitbox null: x=-62, scale=800%, visible frames 15..16.
                // The original AI tests the sprite flip byte at +148.
                auto& swipe=add(e,"bumbino-swipe",std::hypot(80.0,80.0),start,until);
                swipe.pos=e.pos+Vec{e.sprite_flip_x?62.0:-62.0,0};
                // AI case 8: friction +36c = DAT_00baa3a4 (.8f).
                damped_motion(swipe,double(.8f));
                swipe.data_source="916.000_bumbino.anm2 Hitbox null + AI_00499de0";
                swipe.evidence_status="native hitbox enclosing disc with observed sprite flip";
            }
            auto first_laser=[&](double trigger,Vec origin,Vec axis,double width) {
                if(e.animation_frame>trigger)return;
                double start=std::max(0.0,(trigger-e.animation_frame)/30.0);
                auto& beam=add(e,"boss-laser-windup",width,start,std::min(horizon,start+1.2));
                beam.pos=origin;beam.end=origin+axis*1500;beam.vel={};beam.shape=Shape::capsule;
                if(e.type==268) {
                    // AI_0045e050 sets +36c to .85f, also during Attack2.
                    beam.vel=e.vel;damped_motion(beam,double(.85f));
                }
                if(e.type==43) {
                    beam.data_source="AI 0x0046C0A0 State 8 Taunt Shoot@21 creates one Type-7 Variant-1 laser; +0x41C angle and 30-update timeout; both horizontal directions are represented as candidates";
                    beam.evidence_status="native laser spawn event; one emitted entity, dynamic beam angle conservatively enclosed";
                }else {
                    beam.data_source="native first-hit windows + exact ANM2 Shoot event";
                    beam.evidence_status="native boss laser windup envelope";
                }
            };
            if(e.type==79&&e.variant==12&&e.state==8&&anim=="attack01") {
                Vec axis=e.ai_v1.x<0?Vec{-1,0}:Vec{1,0};
                first_laser(15,e.pos+Vec{axis.x*10,-20},axis,13);
            }
            if(e.type==43&&e.variant==0&&e.state==8&&anim=="taunt") {
                first_laser(21,e.pos,{1,0},16);first_laser(21,e.pos,{-1,0},16);
            }
            if(e.type==268&&e.variant==0&&e.state==8&&anim.rfind("attack2",0)==0&&e.ai_i1>=0&&e.ai_i1<=3) {
                const std::array<Vec,4> axes={Vec{-1,0},Vec{0,-1},Vec{1,0},Vec{0,1}};
                Vec axis=axes[size_t(e.ai_i1)];
                first_laser(26,e.pos+Vec{axis.x*30,axis.y>0?-5.0:-25.0},axis,24);
            }
            bool jumping=e.collision==0&&(anim.find("jump")!=std::string::npos||anim.find("leap")!=std::string::npos);
            if(jumping) {
                auto& landing=add(e,"jump-landing",e.radius+10,0,horizon);
                landing.uncertainty=4;
            }
            bool attack_windup=(e.type==63||e.type==99)&&e.state==8&&
                (anim.find("attack")!=std::string::npos||anim.find("charge")!=std::string::npos||
                 anim.find("slide")!=std::string::npos||anim.find("roll")!=std::string::npos);
            if(attack_windup) {
                Vec charge_dir=e.vel.norm()>20?e.vel.unit():(f.player.body.pos-e.pos).unit();
                if(charge_dir.norm()>1e-9) {
                    double duration=std::min(horizon,.7);
                    auto& charge=add(e,"charge",e.radius+4,0,duration);
                    charge.shape=Shape::capsule;
                    charge.end=e.pos+charge_dir*std::max(160.0,e.vel.norm()*duration);
                }
            }
            if(e.type==265&&e.state==8&&anim.rfind("roll",0)==0) {
                Vec charge_dir=e.vel.norm()>20?e.vel.unit():(f.player.body.pos-e.pos).unit();
                if(charge_dir.norm()>1e-9) {
                    double duration=std::min(horizon,.7);
                    auto& roll=add(e,"roll",e.radius+config_.contact_margin,0,duration);
                    roll.shape=Shape::capsule;
                    roll.end=e.pos+charge_dir*std::max(220.0,e.vel.norm()*duration);
                }
            }
            if(e.type==265&&e.state==7&&anim=="landing") {
                Vec center=e.target_pos.finite()?e.target_pos:e.pos;
                auto& landing=add(e,"cage-landing-creep",180,0,.55);
                landing.pos=center;landing.vel={};
                double current_radius=5*std::max(0,e.state_frame-5);
                for(double radius=30;radius<=300;radius+=30) {
                    double start=std::max(0.0,(radius-current_radius)/150.0);
                    if(start>horizon)break;
                    auto& wave=add(e,"cage-rock-wave",20,start,std::min(horizon,start+.18));
                    wave.shape=Shape::ring;wave.pos=center;wave.end=center+Vec{radius,0};wave.vel={};
                }
            }
            bool bloat_laser=!supplied(e,"bloat-attack-laser-windup")&&e.type==68&&e.variant==1&&e.subtype==0&&
                (e.state==9||e.state==10||e.state==13)&&
                anim.rfind("attack",0)==0;
            if(bloat_laser) {
                double left=60,right=60+(f.grid.width-2)*40;
                double bottom=140+(f.grid.height-2)*40;
                double beam_y=e.pos.y-40;
                double beam_x=e.pos.x;
                bool horizontal=anim.find("attackalt02")!=std::string::npos||anim.find("attack02")!=std::string::npos;
                if(!horizontal) {
                    for(double dx:{-16.0,16.0}) {
                        auto& warning=add(e,"laser-warning",40,0,.5);
                        warning.shape=Shape::capsule;
                        warning.pos={beam_x+dx,beam_y};
                        warning.end={beam_x+dx,bottom};
                    }
                } else {
                    double y=e.pos.y-40;
                    auto& first=add(e,"laser-warning",40,0,.5);
                    first.shape=Shape::capsule;first.pos={left,y};first.end={beam_x-16,y};
                    auto& second=add(e,"laser-warning",40,0,.5);
                    second.shape=Shape::capsule;second.pos={beam_x+16,y};second.end={right,y};
                }
            }
        }
        if(f.clock!=clock_||old==tracks_.end()) {
            Track tracked{e,f.clock,turn};
            if(e.type==1000)tracked.entity.hostile_source=hostile_effect_source&&!e.friendly;
            tracks_[key]=std::move(tracked);
        }
    }
    // Identity-free class fallbacks. Contact already exists for every hostile
    // body; airborne bodies and explicit dash animations carry cues that do not
    // need a per-identity model, so they get the matching class envelope.
    auto class_produced=[&](uint32_t source,DamageClass damage_class) {
        return std::any_of(threats_.begin(),threats_.end(),[&](const Threat& threat){
            return threat.source==source&&threat.damage_class==damage_class;
        });
    };
    for(const auto& e:f.entities) {
        if(!e.alive()||e.friendly||!e.enemy()||e.damage<=0||e.collision==0)continue;
        if(silver_disarmed&&silver_trap_npc(e.type,e.variant,e.subtype))continue;
        std::string animation=e.animation;
        std::transform(animation.begin(),animation.end(),animation.begin(),
            [](unsigned char c){return char(std::tolower(c));});
        // NPC height is not captured: +0x410 is StateFrame for NPCs, so only
        // an explicit landing animation is safe generic evidence. A ground
        // hopper stays contact-only and is not double-weighted as a landing.
        const bool jump_cue=animation.find("land")!=std::string::npos;
        if(jump_cue&&!class_produced(e.address,DamageClass::jump)) {
            const double fall_time=0.3;
            const Vec landing=e.pos+e.vel*fall_time;
            if(landing.finite()) {
                auto& warning=add(e,"generic-jump-landing",std::max(24.0,e.radius*1.4),
                    std::max(0.0,fall_time-0.1),std::min(horizon,fall_time+0.15));
                warning.pos=landing;warning.vel={};warning.predictive=true;warning.confidence=.45;
                warning.evidence_status="generic landing animation cue; no identity-specific landing model";
                warning.data_source="observed landing animation; landing position and time extrapolated";
            }
        }
        const bool dash_cue=animation.find("charge")!=std::string::npos||
            animation.find("dash")!=std::string::npos||animation.find("roll")!=std::string::npos||
            animation.find("ram")!=std::string::npos||animation.find("tackle")!=std::string::npos;
        if(dash_cue&&e.vel.norm()>40&&!class_produced(e.address,DamageClass::charge)) {
            auto& lane=add(e,"generic-charge",e.radius+config_.contact_margin,0,std::min(horizon,0.3));
            lane.shape=Shape::capsule;lane.vel={};lane.predictive=false;lane.confidence=.4;
            lane.end=e.pos+e.vel.unit()*std::min(320.0,e.vel.norm()*0.3+80);
            lane.evidence_status="generic dash animation cue; lane length from observed speed";
            lane.data_source="observed animation and velocity; no identity-specific charge model";
        }
    }
    if(mechanisms&&mechanisms->valid&&mechanisms->pid==f.pid&&mechanisms->room==f.room&&mechanisms->clock==f.clock) {
        for(const auto& warning:mechanisms->warnings) {
            if(warning.kind=="contact"&&std::any_of(f.entities.begin(),f.entities.end(),[&](const Entity& e){return e.address==warning.source&&modeled_contact(e);}))continue;
            if(silver_disarmed&&std::any_of(f.entities.begin(),f.entities.end(),[&](const Entity& e){return e.address==warning.source&&silver_trap_npc(e.type,e.variant,e.subtype);}))continue;
            if(warning.until<0||(!warning.planning_validated&&!config_.evaluate_candidate_warnings))continue;
            Threat threat;
            threat.source=warning.source;threat.pos=warning.pos;threat.end=warning.end;threat.vel=warning.vel;
            threat.radius=warning.radius+(warning.kind=="contact"?config_.contact_margin:0);
            threat.geometry_margin=warning.geometry_margin;threat.angular_speed=warning.angular_speed;
            threat.start=std::max(0.0,warning.start);
            threat.until=warning.kind=="contact"?horizon:std::max(threat.start+1.0/30,warning.until);
            threat.uncertainty=warning.uncertainty;threat.kind=warning.kind;
            threat.predictive=warning.predictive;threat.confidence=warning.confidence;threat.timing_verified=warning.timing_verified;
            threat.start_frame=warning.predicted_trigger_frame;threat.end_frame=warning.predicted_end_frame;threat.geometry_verified=warning.planning_validated;
            threat.evidence_status="candidate:"+warning.evidence_status;
            threat.data_source=warning.source_refs;threat.end_condition="reobserve; duration unverified";
            for(const auto& e:f.entities)if(e.address==warning.source){threat.seed=e.seed;threat.type=e.type;threat.variant=e.variant;threat.subtype=e.subtype;}
            if(warning.shape=="capsule")threat.shape=Shape::capsule;
            else if(warning.shape=="ring")threat.shape=Shape::ring;
            else threat.shape=Shape::disc;
            threats_.push_back(std::move(threat));
        }
    }
    if(f.clock!=clock_) {
        for(auto it=tracks_.begin();it!=tracks_.end();) {
            bool removed=!seen.contains(it->first),died=seen.contains(it->first)&&it->second.entity.dead;
            if((removed||died)&&blast_radius(it->second.entity)>0&&!it->second.entity.friendly) {
                if(detonated_.insert(it->first).second)reserves_.push_back({it->second.entity.pos,blast_radius(it->second.entity),f.clock+4,it->first});
            }
            if(removed||died)it=tracks_.erase(it);else ++it;
        }
    }
    std::erase_if(reserves_,[&](const Reserve&r){return f.clock>=r.expiry;});
    for(const auto&r:reserves_) {
        Threat t;t.pos=r.pos;t.radius=r.radius;t.until=(r.expiry-f.clock)/30.0;t.kind="death-blast";
        t.source=uint32_t(r.identity>>32);t.seed=uint32_t(r.identity);t.confidence=.9;
        t.evidence_status="observed-explosion";t.data_source="external-memory + native NPC death";
        t.end_condition="short-lived native blast reserve";threats_.push_back(t);
    }
    auto beam_endpoint=[&](const Entity& e,Vec origin,Vec axis,bool wall_ray=false,bool direct_room=false) {
        if(e.variant==4&&!wall_ray&&!direct_room)return origin+axis*300;
        double reach=wall_ray||direct_room||e.grid_collision==3||e.grid_collision==6?1200:1000;
        if(!wall_ray&&!direct_room&&e.laser_max_distance>0)reach=std::min(reach,e.laser_max_distance);
        const bool special=!direct_room&&((f.clear_flags&0x8000)||e.variant==5);
        const bool clip_walls=!special||(e.laser_tear_flags[2]&0x10);
        const double margin=direct_room?20:special?100:(e.laser_tear_flags[1]&0x40)?140:20;
        if((wall_ray||direct_room||e.grid_collision==3||e.grid_collision==6)&&clip_walls) {
            // Clip to the outer native rectangle first. The native L-room
            // correction only applies when that endpoint lands in the notch.
            for(double x:{f.grid.native_min.x-margin,f.grid.native_max.x+margin}) {
                if(axis.x==0)continue;
                const double distance=(x-origin.x)/axis.x;
                if(distance>0)reach=std::min(reach,distance);
            }
            for(double y:{f.grid.native_min.y-margin,f.grid.native_max.y+margin}) {
                if(axis.y==0)continue;
                const double distance=(y-origin.y)/axis.y;
                if(distance>0)reach=std::min(reach,distance);
            }
            if(f.grid.shape>=9&&f.grid.shape<=12) {
                Vec tip=origin+axis*reach;
                const bool left=f.grid.shape==9||f.grid.shape==11,top=f.grid.shape<=10;
                const double x=left?580-margin:580+margin,y=top?420-margin:420+margin;
                if((left?tip.x<x:tip.x>x)&&(top?tip.y<y:tip.y>y)) {
                    Vec reverse=origin-tip;
                    auto clip_back=[&](double delta,double component) {
                        if(delta*delta<=delta*component&&delta*component>0)reverse=reverse*(delta/component);
                    };
                    clip_back(x-tip.x,reverse.x);clip_back(y-tip.y,reverse.y);
                    if((tip+reverse-origin).norm()>.1)reach=distance(tip+reverse,origin);
                }
            }
        }
        if(!wall_ray&&!direct_room&&e.grid_collision==6)for(int i=0;i<int(f.grid.cells.size());++i) {
            const auto& cell=f.grid.cells[i];
            if(cell.type==15||cell.type==16||f.grid.native_collision_at(f.grid.center(i))<2)continue;
            const Vec center=f.grid.center(i);
            double enter=0,leave=reach;
            for(int component=0;component<2;++component) {
                const double pos=component?origin.y:origin.x,dir=component?axis.y:axis.x,c=component?center.y:center.x;
                if(dir==0){if(pos<c-20||pos>c+20)leave=-1;}
                else {
                    const double a=(c-20-pos)/dir,b=(c+20-pos)/dir;
                    enter=std::max(enter,std::min(a,b));leave=std::min(leave,std::max(a,b));
                }
            }
            if(enter<=leave&&leave>=0)reach=std::min(reach,std::max(0.0,enter));
        }
        return origin+axis*reach;
    };
    auto laser_flag=[](const Entity& e,int bit){return (e.laser_tear_flags[size_t(bit)/32]&(uint32_t(1)<<(bit%32)))!=0;};
    auto laser_damage_candidate=[](const Entity& target) {
        return target.enemy()&&!target.dead&&!target.invulnerable&&target.collision!=0&&target.collision!=1&&
            !(target.flags&((1ULL<<29)|(1ULL<<4)))&&!target.no_target;
    };
    auto laser_actor_position=[&](const Entity& actor,double time) {
        const auto trajectory=std::find_if(threats_.begin(),threats_.end(),[&](const Threat& t){return t.source==actor.address&&!t.motion_path.empty();});
        return trajectory==threats_.end()?actor.pos+actor.vel*time:trajectory->at(time);
    };
    auto resample_curve=[](const std::vector<Vec>& path,size_t count) {
        if(path.empty()||count<2)return std::vector<Vec>{};
        if(path.size()==count)return path;
        std::vector<double> lengths(path.size());
        for(size_t i=1;i<path.size();++i)lengths[i]=lengths[i-1]+distance(path[i-1],path[i]);
        std::vector<Vec> result;result.reserve(count);size_t segment=1;
        for(size_t i=0;i<count;++i) {
            const double target=lengths.back()*double(i)/double(count-1);
            while(segment+1<path.size()&&lengths[segment]<target)++segment;
            if(path.size()==1){result.push_back(path.front());continue;}
            const double length=lengths[segment]-lengths[segment-1];
            const double fraction=length>0?(target-lengths[segment-1])/length:0;
            result.push_back(path[segment-1]+(path[segment]-path[segment-1])*fraction);
        }
        return result;
    };
    for(auto& beam:threats_)if(beam.kind=="laser"||beam.kind=="laser-curve") {
        const auto entity=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& e){return e.address==beam.source;});
        if(entity==f.entities.end())continue;
        const auto& e=*entity;
        const auto parent=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& owner){return owner.address==e.parent;});
        const auto parent_path=parent==f.entities.end()?threats_.end():std::find_if(threats_.begin(),threats_.end(),[&](const Threat& t){return t.source==parent->address&&!t.motion_path.empty();});
        if(e.circle&&e.subtype==3) {
            if(parent==f.entities.end()||parent->dead)beam.until=std::min(beam.until,1.0/30);
        }else if(!e.circle&&parent!=f.entities.end()&&parent->dead&&parent->type!=1000)beam.until=std::min(beam.until,1.0/30);
        beam.motion_path.clear();
        const Vec origin=beam.shape==Shape::cone?e.pos:e.laser_points.size()>=2?e.laser_origin:e.circle?e.pos:e.pos+e.position_offset;
        beam.pos=origin;beam.motion_path.push_back(origin);beam.vel={};
        if(config_.native_laser_geometry&&e.circle) {
            const auto owner=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& value){return value.address==e.spawner&&value.type==1;});
            auto effective_radius=[&](Vec center,int tick,int timeout,bool fading) {
                double radius=e.laser_radius,factor=1;
                if(parent!=f.entities.end()&&parent->type==3)radius*=.75;
                if(laser_flag(e,25))radius+=std::sin((e.age+tick*e.speed_multiplier)*.1)*20;
                const double owner_distance=owner==f.entities.end()?0:std::min(500.0,distance(center,owner->pos+owner->vel*(tick/30.0)));
                if(laser_flag(e,7))radius+=owner_distance*.1;
                if(laser_flag(e,21))radius+=(1-owner_distance/500)*50;
                const int born=int(f.clock)-e.birth+tick;
                if(e.subtype==2&&born<10) {
                    const double t=1-born/10.0;
                    const double value=std::max(5.0,(1-(t*t*t-std::sin(pi*t)*t))*radius);
                    if(value>radius&&radius!=0)factor=value/radius;else radius=value;
                }
                if(fading&&e.subtype==2&&e.variant!=2&&timeout>0)factor=1+(5-timeout)*.2;
                return fading?radius*factor:radius;
            };
            int timeout=e.timeout;
            Vec point=e.pos,velocity=e.vel;
            std::vector<Vec> history=e.laser_history_points;
            const size_t intervals=size_t(std::clamp(e.laser_sample_count>0?e.laser_sample_count:64,1,2047));
            const size_t point_count=e.laser_points.size()>=2?e.laser_points.size():intervals+1;
            const bool sampled=e.laser_points.size()>=2;
            if(sampled) {
                beam.shape=Shape::polyline;beam.kind="laser-curve";beam.geometry_path=e.laser_points;
                beam.geometry_frames.push_back(e.laser_points);
            }else {
                beam.shape=Shape::ring;beam.ring_radius_path.push_back(std::abs(effective_radius(origin,0,timeout,true)));
                beam.end=origin+Vec{beam.ring_radius_path.front(),0};
            }
            beam.data_source="native ring radius, six Bezier arcs, sample history and boundary update";
            beam.evidence_status="native ring branches; future owner/target motion extrapolated";
            for(int tick=1;tick<=int(std::ceil(horizon*30))+1;++tick) {
                const double time=tick/30.0;
                const double radius_for_bounds=effective_radius(point,tick,timeout,false);
                const Vec clamped=f.grid.clamped_position(point,radius_for_bounds);
                bool wrapped=false;
                if(e.subtype==3&&e.laser_follow&&parent!=f.entities.end())
                    point=(parent_path==threats_.end()?parent->pos+parent->vel*time:parent_path->at(time))+e.laser_offset;
                else if(e.subtype!=3) {
                    if(laser_flag(e,38)) {
                        const Vec next=f.grid.wrapped_position(point,-200);
                        wrapped=next.x!=point.x||next.y!=point.y;point=next;
                        if(wrapped&&e.subtype==2&&timeout==0)timeout=45;
                    }else if(laser_flag(e,19)) {
                        if((clamped.x<point.x&&velocity.x>0)||(clamped.x>point.x&&velocity.x<0)){point.x=clamped.x;velocity.x=-velocity.x;}
                        if((clamped.y<point.y&&velocity.y>0)||(clamped.y>point.y&&velocity.y<0)){point.y=clamped.y;velocity.y=-velocity.y;}
                        point=f.grid.clamped_position(point,radius_for_bounds);
                    }else {
                        if(e.subtype==2&&timeout==0&&(clamped-point).unit().dot(velocity.unit())<-.75)timeout=5;
                        point=clamped;
                    }
                }
                const double radius=effective_radius(point,tick,timeout,true);
                if(wrapped)beam.motion_breaks.push_back(beam.motion_path.size());
                beam.motion_path.push_back(point);
                if(sampled) {
                    std::vector<LaserNode> nodes;nodes.reserve(7);
                    for(int i=0;i<=6;++i) {
                        const double angle=-i*pi/3;
                        const Vec radial{std::cos(angle),std::sin(angle)},tangent{radial.y,-radial.x};
                        const Vec anchor=point+radial*radius,control=tangent*(radius*.3466);
                        nodes.push_back({anchor,anchor-control,anchor+control});
                    }
                    if(laser_flag(e,2)&&e.laser_homing_radius>0) {
                        std::vector<const Entity*> candidates;
                        auto append=[&](const Entity& target){if(target.address!=e.parent&&laser_damage_candidate(target))candidates.push_back(&target);};
                        if(!f.native_target_order_known&&f.native_target_order.empty())for(const auto& target:f.entities)append(target);
                        else for(uint32_t address:f.native_target_order) {
                            const auto target=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& value){return value.address==address;});
                            if(target!=f.entities.end())append(*target);
                        }
                        bool attached=false;
                        for(size_t i=1;i+1<nodes.size();++i)for(size_t j=0;j<candidates.size();++j) {
                            const Vec target=laser_actor_position(*candidates[j],time);
                            if(laser_node_distance_squared(target,nodes[i],nodes[i+1])<e.laser_homing_radius*e.laser_homing_radius) {
                                nodes[i].pos=target;candidates.erase(candidates.begin()+j);attached=true;break;
                            }
                        }
                        if(attached)update_ring_tangents(nodes);
                    }
                    const auto points=sample_laser_nodes(nodes,intervals);
                    smooth_laser_samples(history,points,wrapped?1:.3,true);
                    auto shape=history;
                    if(laser_flag(e,10))wiggle_laser_samples(shape,point,point,true,f.clock+tick,
                        parent!=f.entities.end()&&parent->type==8?(f.clock+tick)*1.6:0);
                    beam.geometry_frames.push_back(resample_curve(shape,point_count));
                }else beam.ring_radius_path.push_back(std::abs(radius));
                if(timeout>0&&--timeout==0)beam.until=std::min(beam.until,time);
                if(e.subtype!=3) {
                    const double scale=e.speed_multiplier;
                    const double friction=e.friction*(e.subtype==1?.5:1);
                    const double damping=scale==1?friction:friction/(friction+scale-friction*scale);
                    velocity=velocity*damping;point=point+velocity*(scale/30);
                }
            }
        }else if(config_.native_laser_geometry&&beam.shape!=Shape::cone&&!e.laser_first_update&&(e.laser_one_hit||e.laser_homing_type==1)&&e.laser_points.size()>=2) {
            // This branch skips node rebuilding after the first update. Its
            // stored samples remain in world coordinates even if the parent moves.
            beam.shape=Shape::polyline;beam.kind="laser-curve";beam.geometry_path=e.laser_points;
            beam.geometry_frames.push_back(e.laser_points);
            beam.data_source="native retained sampled geometry after one-hit/homing-type-1 first pass";
        }else if(beam.shape==Shape::capsule||beam.shape==Shape::cone) {
            beam.endpoint_path.push_back(beam.end);
            double angle=e.angle;
            double remaining=e.laser_rotation_degrees;
            int delay=e.laser_rotation_delay;
            bool rotating=e.laser_rotating;
            for(int tick=1;tick<=int(std::ceil(horizon*30))+1;++tick) {
                const double time=tick/30.0;
                Vec position=origin;
                if(e.laser_follow&&parent!=f.entities.end()) {
                    const Vec at_parent=parent_path==threats_.end()?parent->pos+parent->vel*time:parent_path->at(time);
                    if(parent->type==1)position=origin+at_parent-parent->pos;
                    else position=at_parent+(e.spawner_type==1?Vec{}:e.laser_offset)+(beam.shape==Shape::cone?Vec{}:e.position_offset);
                }
                if(rotating) {
                    if(delay!=0)--delay;
                    else {
                        const double step=remaining>0?std::min(remaining,e.laser_rotation_speed*.5):std::max(remaining,e.laser_rotation_speed*.5);
                        angle+=step;remaining-=step;
                        if(remaining==0)rotating=false;
                    }
                }
                beam.motion_path.push_back(position);
                const Vec axis{std::cos(angle*pi/180),std::sin(angle*pi/180)};
                Vec endpoint=beam_endpoint(e,position,axis);
                if(beam.shape==Shape::cone)endpoint=endpoint+axis*std::abs(e.position_offset.y);
                beam.endpoint_path.push_back(endpoint);
            }
        }else if(config_.native_laser_geometry&&beam.shape==Shape::polyline&&e.laser_points.size()>=2) {
            beam.geometry_frames.push_back(e.laser_points);
            std::vector<Vec> history=e.laser_history_points;
            double angle=e.angle,remaining=e.laser_rotation_degrees;
            int delay=e.laser_rotation_delay;bool rotating=e.laser_rotating;
            const Vec old_axis{std::cos(e.angle*pi/180),std::sin(e.angle*pi/180)},old_normal{-old_axis.y,old_axis.x};
            const double old_length=distance(e.laser_origin,e.laser_native_end);
            const size_t intervals=size_t(std::clamp(e.laser_sample_count>0?e.laser_sample_count:int(e.laser_points.size())-1,1,2047));
            const int homing_mode=laser_flag(e,2)?1:e.laser_homing_type==1?4:e.laser_homing_type==2?5:0;
            const auto source=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& value){return value.address==e.spawner;});
            const bool player_source=source!=f.entities.end()?source->type==1:e.spawner_type==1;
            const auto held=source!=f.entities.end()&&source->type==1&&source->held?
                std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& value){return value.address==source->held;}):f.entities.end();
            const bool occult_nodes_unresolved=laser_flag(e,68)&&player_source&&
                (source==f.entities.end()||!source->player_held_known||(source->held&&held==f.entities.end()));
            const bool brimstone=e.variant==1||e.variant==3||e.variant==6||e.variant==9||e.variant==11||
                e.variant==12||e.variant==13||e.variant==14||e.variant==15;
            std::vector<const Entity*> candidates,turn_candidates;
            auto add_candidate=[&](const Entity& target) {
                const bool regular=laser_damage_candidate(target)&&target.address!=e.parent&&
                    (homing_mode!=4||parent==f.entities.end()||target.type!=parent->type);
                if(regular||(homing_mode==5&&target.type==1&&target.address!=e.parent))candidates.push_back(&target);
                if(laser_damage_candidate(target)&&target.address!=e.spawner)turn_candidates.push_back(&target);
            };
            if(!f.native_target_order_known&&f.native_target_order.empty())for(const auto& target:f.entities)add_candidate(target);
            else for(uint32_t address:f.native_target_order) {
                const auto target=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& value){return value.address==address;});
                if(target!=f.entities.end())add_candidate(*target);
            }
            for(int tick=1;tick<=int(std::ceil(horizon*30))+1;++tick) {
                if(tick>1&&(e.laser_one_hit||e.laser_homing_type==1)) {
                    beam.geometry_frames.push_back(beam.geometry_frames.back());
                    beam.motion_path.push_back(beam.motion_path.back());continue;
                }
                if(occult_nodes_unresolved&&e.laser_nodes.size()<2) {
                    beam.geometry_frames.push_back(beam.geometry_frames.back());
                    beam.motion_path.push_back(beam.motion_path.back());continue;
                }
                const double time=tick/30.0;
                Vec position=origin;
                if(e.laser_follow&&parent!=f.entities.end()) {
                    const Vec at_parent=parent_path==threats_.end()?parent->pos+parent->vel*time:parent_path->at(time);
                    position=origin+at_parent-parent->pos;
                }
                const double previous_angle=angle;
                if(rotating) {
                    if(delay!=0)--delay;
                    else {
                        const double step=remaining>0?std::min(remaining,e.laser_rotation_speed*.5):std::max(remaining,e.laser_rotation_speed*.5);
                        angle+=step;remaining-=step;if(remaining==0)rotating=false;
                    }
                }
                const Vec axis{std::cos(angle*pi/180),std::sin(angle*pi/180)},normal{-axis.y,axis.x};
                Vec endpoint=beam_endpoint(e,position,axis);
                if(previous_angle!=angle&&!brimstone&&e.variant!=5)history.clear();
                std::vector<LaserNode> nodes;
                if(occult_nodes_unresolved) {
                    const double length_scale=old_length>0?distance(position,endpoint)/old_length:1;
                    auto transform=[&](Vec point) {
                        const Vec relative=point-e.laser_origin;
                        return position+axis*(relative.dot(old_axis)*length_scale)+normal*relative.dot(old_normal);
                    };
                    nodes=e.laser_nodes;
                    for(auto& node:nodes){node.pos=transform(node.pos);node.incoming=transform(node.incoming);node.outgoing=transform(node.outgoing);}
                }else {
                    auto wall_ray=[&](Vec source,Vec direction) {
                        return beam_endpoint(e,source+e.position_offset,direction,true)-e.position_offset;
                    };
                    if(laser_flag(e,16))nodes=orbit_laser_nodes(position,endpoint);
                    if(laser_flag(e,8)) {
                        const Vec direction=(endpoint-position).unit();
                        const Vec start=nodes.empty()?position:nodes[nodes.size()-2].pos;
                        Vec reverse=wall_ray(start,direction*-1);
                        if(e.laser_max_distance>0&&distance(start,reverse)>e.laser_max_distance)
                            reverse=start-direction*e.laser_max_distance;
                        double length=120;
                        if(source!=f.entities.end()&&source->type==1&&source->shot_speed_stat>=0)
                            length=120*source->shot_speed_stat/1.6;
                        append_boomerang_laser_nodes(nodes,position,endpoint,reverse,length);endpoint=reverse;
                    }
                    if(laser_flag(e,71)) {
                        const Vec direction=(endpoint-position).unit(),perpendicular{-direction.y,direction.x};
                        double nearest=distance(position,endpoint);Vec selected{},corner{};bool found=false;
                        for(const auto* target:turn_candidates) {
                            const Vec point=laser_actor_position(*target,time),relative=point-position;
                            const double along=relative.dot(direction),side=relative.dot(perpendicular);
                            if(along<=80||along>=nearest||std::abs(side)<=e.radius+target->radius)continue;
                            const Vec crossing=position+direction*along;
                            if(e.grid_collision!=0&&e.grid_collision!=3&&!laser_flag(e,0)&&!f.grid.shot_clear(crossing,point))continue;
                            nearest=along;selected=perpendicular*(side<=0?-1:1);corner=crossing;found=true;
                        }
                        if(found) {
                            const Vec turn_end=wall_ray(corner,selected);
                            append_horizontal_laser_nodes(nodes,position,direction,corner,selected,turn_end);
                            endpoint=turn_end;
                            if(!history.empty()&&distance(endpoint,history.back())>40)history.clear();
                        }
                    }
                    const Vec occult_target=held!=f.entities.end()?laser_actor_position(*held,time):e.target_pos;
                    if(laser_flag(e,68)&&(occult_target.x!=0||occult_target.y!=0)) {
                        if(player_source)append_player_occult_laser_nodes(nodes,position,endpoint,occult_target);
                        else {
                        const Vec target=occult_target,target_delta=target-position;
                        const Vec forward=(endpoint-position).unit()*target_delta.norm();
                        const Vec line1=position+forward*.333,line2=position+forward*.666;
                        const Vec control1=line1+(position+target_delta*.333-line1)*.333;
                        const Vec control2=line2+(position+target_delta*.666-line2)*.666;
                        const Vec ray=target-control2;
                        Vec tip=beam_endpoint(e,target,ray.unit(),false,true);
                        if(distance(target,tip)>ray.norm()*1200)tip=target+ray*1200;
                        nodes={{position,position,control1},
                            {target,control2,target+(tip-target)*.333},
                            {tip,target+(tip-target)*.666,tip}};
                        endpoint=tip;
                        }
                    }
                    if(nodes.empty()) {
                        const Vec middle=(position+endpoint)*.5;
                        nodes={{position,position,middle},{endpoint,middle,endpoint}};
                    }
                }
                std::vector<Vec> positions;positions.reserve(candidates.size());
                for(const auto* target:candidates)positions.push_back(laser_actor_position(*target,time));
                update_beam_homing_nodes(nodes,std::move(positions),homing_mode,e.laser_homing_radius,f.grid);
                double curve_length=0;
                const auto samples=sample_laser_nodes(nodes,intervals,&curve_length);
                const double blend=(e.variant==2||e.variant==10)?.7:e.laser_homing_type==2?1:e.laser_max_distance>0?.63:.9;
                smooth_laser_samples(history,samples,blend,false,curve_length);
                auto shape=history;
                if(laser_flag(e,10))wiggle_laser_samples(shape,position,endpoint,false,f.clock+tick,e.native_index);
                beam.geometry_frames.push_back(resample_curve(shape,e.laser_points.size()));
                beam.motion_path.push_back(position);
            }
            beam.data_source="native beam node primitives, target insertion, sampling and wiggle; source/target motion extrapolated";
            beam.evidence_status=occult_nodes_unresolved?"native target selection; unavailable player-held Eye of the Occult target extrapolated":
                "native beam node and target branches; future actor motion/line-of-sight extrapolated";
        }else {
            for(int tick=1;tick<=int(std::ceil(horizon*30))+1;++tick) {
                const double time=tick/30.0;
                const Vec delta=e.laser_follow&&parent!=f.entities.end()?
                    (parent_path==threats_.end()?parent->vel*time:parent_path->at(time)-parent->pos):Vec{};
                beam.motion_path.push_back(origin+delta);
            }
        }
    }
    // Native sticky bombs follow the attached actor plus their stored offset.
    for(auto& bomb:threats_)if(bomb.kind=="bomb") {
        const auto entity=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& e){return e.address==bomb.source;});
        if(entity==f.entities.end()||!entity->bomb_attached)continue;
        const auto owner=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& e){return e.address==entity->bomb_attached;});
        if(owner==f.entities.end())continue;
        const auto trajectory=std::find_if(threats_.begin(),threats_.end(),[&](const Threat& t){return t.source==owner->address&&!t.motion_path.empty();});
        bomb.motion_path.clear();bomb.vel={};
        for(int tick=0;tick<=int(std::ceil(horizon*30))+1;++tick) {
            const double time=tick/30.0;
            const Vec point=trajectory==threats_.end()?owner->pos+owner->vel*time:trajectory->at(time);
            bomb.motion_path.push_back(point+entity->target_pos);
        }
    }
    // TEAR_EXPLOSIVE (bit 12) is a native sufficient contact-fuse branch.
    // Held bombs can be forced by their owner's AI even while Bomb::Update
    // keeps the ordinary countdown from advancing in hold state +0x3FC.
    for(auto& bomb:threats_)if(bomb.kind=="bomb") {
        const auto entity=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& e){return e.address==bomb.source;});
        if(entity==f.entities.end())continue;
        for(const auto& holder:f.entities)if((holder.held==entity->address||
            (holder.type==411&&holder.child==entity->address)||holder.player_action_bomb==entity->address)&&holder.alive()) {
            const bool big_horn_bomb=holder.type==411&&holder.state==13&&holder.child==entity->address;
            const bool player_poof_action=holder.type==1&&holder.player_action_bomb==entity->address&&
                (holder.player_action_state==3||holder.player_action_state==4);
            bool player_poof=false;
            double release=-1;
            if(holder.type==28&&holder.state==16)release=std::max(0,37-holder.state_frame)/30.0;
            if(holder.type==62&&holder.variant==3&&holder.state==5) {
                if(holder.animation_state_known&&!holder.animation_playing)release=0;
                else if(holder.animation_length>0)release=animation_frame_updates(holder,holder.animation_length)/30;
            }
            if(big_horn_bomb) {
                const double event=animation_event_updates(holder,"BombExplode");
                if(event>=0&&std::isfinite(event))release=event/30.0;
            }
            if(player_poof_action&&holder.player_action_state==4) {
                const double event=animation_event_updates(holder,"Poof");
                if(event>=0&&std::isfinite(event)){release=event/30.0;player_poof=true;}
            }else if(player_poof_action&&
                     (holder.animation=="LeapUp"||holder.animation=="SuperLeapUp")&&holder.animation_length>0) {
                const double rate=animation_update_rate(holder);
                const double transition=animation_frame_updates(holder,holder.animation_length);
                if(rate>0&&std::isfinite(rate)&&std::isfinite(transition)) {
                    // Player Update changes State 3 to State 4 when the up
                    // animation ends, then the down ANM2 fires Poof at frame 7.
                    release=(transition+std::ceil(7/rate))/30.0;player_poof=true;
                }
            }
            if(release<0||!std::isfinite(release))continue;
            const auto trajectory=std::find_if(threats_.begin(),threats_.end(),[&](const Threat& t){return t.source==holder.address&&!t.motion_path.empty();});
            bomb.motion_path.clear();bomb.vel={};
            for(int tick=0;tick<=int(std::ceil(horizon*30))+1;++tick) {
                const double time=tick/30.0;
                const Vec carrier=trajectory==threats_.end()?holder.pos+holder.vel*time:trajectory->at(time);
                bomb.motion_path.push_back(carrier+(big_horn_bomb&&time>=release?Vec{0,2}:Vec{}));
            }
            if(entity->bomb_hold_state!=0||big_horn_bomb||player_poof||release<bomb.event_time) {
                bomb.event_time=release;bomb.start=std::max(0.0,release-.06);bomb.until=release+.18;
                bomb.predictive=release>0;bomb.timing_verified=true;
                bomb.confidence=player_poof&&holder.player_action_state==3?.78:.9;
                bomb.evidence_status=big_horn_bomb?
                    "native State 13 BombExplode animation event; future animation and holder motion extrapolated":
                    player_poof?"native player State 3/4 Poof event; cross-animation timing and player motion extrapolated":
                    "native source-owned held bomb countdown reset; holder motion extrapolated";
                bomb.data_source=holder.type==28?"Type 28 State 16 >=37: 0x47BE94":
                    big_horn_bomb?"Big Horn 411 child +0x3C0 State 13 BombExplode event 0x4544CC; countdowns zeroed and Bomb::Update called":
                    player_poof?"Player Update 0x7D4390 Poof; object +0x1410 takes damage, bomb countdowns zeroed and Update called at 0x7D4E01":
                    "Type 62.3 State 5 animation end: 0x5B0891";
            }
            break;
        }
    }
    // Explosive contact is evaluated only after an object leaves hold state.
    for(auto& bomb:threats_)if(bomb.kind=="bomb") {
        const auto entity=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& e){return e.address==bomb.source;});
        if(entity==f.entities.end()||entity->bomb_attached||entity->bomb_hold_state!=0||!(entity->bomb_tear_flags[0]&0x1000))continue;
        double contact=bomb.event_time;
        for(const auto& target:f.entities) {
            if(!target.damageable_enemy()||target.address==entity->parent||target.address==entity->spawner)continue;
            const auto trajectory=std::find_if(threats_.begin(),threats_.end(),[&](const Threat& t){return t.source==target.address&&!t.motion_path.empty();});
            for(double time=0;time<std::min(contact,horizon);time+=1.0/30) {
                const double end=std::min(time+1.0/30,horizon);
                const Vec target_from=trajectory==threats_.end()?target.pos+target.vel*time:trajectory->at(time);
                const Vec target_to=trajectory==threats_.end()?target.pos+target.vel*end:trajectory->at(end);
                if(moving_clearance(bomb.at(time),bomb.at(end),target_from,target_to,entity->radius+target.radius)<=0) {
                    contact=time;break;
                }
            }
        }
        if(contact<bomb.event_time) {
            bomb.event_time=contact;bomb.start=std::max(0.0,contact-.06);bomb.until=contact+.18;
            bomb.evidence_status="native explosive-tear contact fuse branch; predicted actor collision";
        }
    }
    // A previously accepted lethal damage queue is consumed by Bomb's native
    // BaseUpdate before its fuse countdown. The Bomb Kill slot removes it; it
    // does not call Explosion, so this entity ceases to be a chain source.
    for(auto& bomb:threats_)if(bomb.kind=="bomb") {
        const auto entity=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity& e){return e.address==bomb.source;});
        if(entity==f.entities.end()||entity->timeout<=1||bomb.event_time<=1.0/30||
           !native_damage_queue_kills_next_entity_update(*entity))continue;
        bomb.kind="queued-bomb-destruction";bomb.start=0;bomb.until=std::min(horizon,1.0/30);
        bomb.event_time=-1;bomb.soft=true;bomb.predictive=true;bomb.timing_verified=true;
        bomb.evidence_status="accepted lethal damage queue; native BaseUpdate kills before the remaining fuse";
        bomb.data_source="Entity::TakeDamage 0x6ACE60 queue; BaseUpdate 0x6AE820; Bomb::Kill 0x6AC920";
    }
    const int64_t clock_frame=int64_t(f.clock);
    for(auto& threat:threats_) {
        if(!std::isfinite(threat.start)||threat.start<0)threat.start=0;
        if(!std::isfinite(threat.until)||threat.until<=threat.start)
            threat.until=threat.start+1.0/30;
        const int64_t derived_start=clock_frame+int64_t(std::ceil(threat.start*30));
        const int64_t derived_end=clock_frame+int64_t(std::ceil(threat.until*30));
        if(threat.start_frame<0)threat.start_frame=derived_start;
        if(threat.end_frame<0)threat.end_frame=derived_end;
        if(threat.end_frame<=threat.start_frame)threat.end_frame=threat.start_frame+1;
        if(threat.kind.empty())threat.kind="unknown-hazard";
        if(threat.evidence_status.empty())threat.evidence_status="unclassified";
        if(threat.data_source.empty())threat.data_source="external-memory";
        if(threat.end_condition.empty())threat.end_condition="reobserve";
        if(!std::isfinite(threat.confidence))threat.confidence=0;
    }
    clock_=f.clock;
}
Decision Planner::decide(const Frame& f,bool attack_enabled,const MechanismFrame* mechanisms) {
    auto started=std::chrono::steady_clock::now();Decision out;
    if(!f.valid||!f.has_player||!f.grid.valid||f.paused||f.transition||!f.player.body.alive()||!f.player.controls) {
        out.stop=true;out.reason=!f.error.empty()?f.error:"Snapshot, player, terrain or game state unavailable";return out;
    }
    if(!f.player.body.pos.finite()||!f.player.body.vel.finite()||f.grid.cells.size()!=size_t(f.grid.width*f.grid.height)) {
        out.stop=true;out.reason="Invalid frame geometry";return out;
    }
    bool silver_present=std::any_of(f.grid.cells.begin(),f.grid.cells.end(),[](const Cell& c){return c.type==20&&c.variant==0;});
    bool red_pending=std::any_of(f.grid.cells.begin(),f.grid.cells.end(),[](const Cell& c){return c.type==20&&c.variant==9&&c.state!=3;});
    int objective_variant=red_pending?9:0;
    bool pressure_mission_pending=red_pending||(!f.pressure_plates_triggered&&
        std::any_of(f.grid.cells.begin(),f.grid.cells.end(),[](const Cell&cell){
            return cell.type==20&&cell.variant==0&&cell.collision==0&&!cell.danger;
        }));
    Aim current=attack_enabled&&!pressure_mission_pending?aim(f,f.player.body.pos):Aim{};
    bool hp_progress=false,living_enemy=false,damageable_enemy=false;int living_enemy_count=0;
    for(const auto&e:f.entities)if(e.enemy()&&e.alive()) {
        living_enemy=true;
        ++living_enemy_count;
        if(!e.damageable_enemy())continue;
        damageable_enemy=true;
        if(!std::isfinite(e.hp))continue;
        auto [tracked,inserted]=navigation_enemy_hp_.try_emplace(identity(e),e.hp);
        if(!inserted&&e.hp<tracked->second-1e-6)hp_progress=true;
        tracked->second=e.hp;
    }
    if(f.clock<navigation_progress_clock_) {
        navigation_enemy_hp_.clear();
        navigation_progress_clock_=f.clock;
    }else if(hp_progress)navigation_progress_clock_=f.clock;
    if(!living_enemy||!damageable_enemy)navigation_progress_clock_=f.clock;
    if(damageable_enemy&&f.clock-navigation_progress_clock_>=uint32_t(std::max(1,config_.navigation_escalation_frames)))
        navigation_boost_=true;
    double planning_horizon=navigation_boost_?std::max(config_.horizon,config_.navigation_horizon):config_.horizon;
    if(!attack_enabled) {
        int recent_contacts=0;
        for(const auto& threat:threats_)
            if(!threat.soft&&threat.damage_class==DamageClass::contact)++recent_contacts;
        // A pack of chasers can pin the player to a wall in about a second;
        // look far enough ahead to turn before the room runs out.
        if(recent_contacts>=2)planning_horizon=std::max(planning_horizon,1.6);
        int live_special=0;
        for(const auto& entity:f.entities)
            if(entity.active&&!entity.dead&&entity.enemy()&&(entity.type==55||entity.type==284))++live_special;
        if(live_special>=3)planning_horizon=std::max(planning_horizon,2.5);
    }
    int planning_stages=navigation_boost_?std::max(config_.stages,config_.navigation_stages):config_.stages;
    int planning_beam_width=navigation_boost_?std::max(config_.beam_width,config_.navigation_beam_width):config_.beam_width;
    const int action_steps=std::clamp(config_.action_segment_frames,1,10);
    const int search_stages=std::max(planning_stages,
        int(std::ceil(planning_horizon/(double(action_steps)*config_.dt))));
    const double future_escape_seconds=
        double(std::max(1,config_.future_escape_horizon_frames))*config_.dt;
    const double search_seconds=double(search_stages*action_steps)*config_.dt;
    build_threats(f,search_seconds+future_escape_seconds,mechanisms,
        current.target?current.fire:Fire::none);out.threats=int(threats_.size());
    if(silver_present&&f.pressure_plates_triggered)known_hazard_cells_.clear();
    // Only retracted spikes can temporarily disappear while still armed.
    // Destroyed red poop and expired wave buttons use the current grid state.
    for(int i=0;i<int(f.grid.cells.size());++i)if(f.grid.cells[i].danger&&
        (f.grid.cells[i].type==8||f.grid.cells[i].type==9))known_hazard_cells_.insert(i);
    Grid terrain=f.grid;
    for(int index:known_hazard_cells_)if(index>=0&&index<int(terrain.cells.size()))terrain.cells[index].danger=true;
    std::unordered_set<std::string> threat_kinds;
    for(const auto& threat:threats_)threat_kinds.insert(threat.kind);
    out.threat_kinds.assign(threat_kinds.begin(),threat_kinds.end());
    std::sort(out.threat_kinds.begin(),out.threat_kinds.end());
    std::unordered_set<std::string> threat_classes;
    for(const auto& threat:threats_)threat_classes.insert(damage_class_name(threat.damage_class));
    out.threat_classes.assign(threat_classes.begin(),threat_classes.end());
    std::sort(out.threat_classes.begin(),out.threat_classes.end());
    const auto& player=f.player;Vec initial=player.body.pos;double radius=player.body.radius;
    double terrain_radius=radius+std::max(0.0,config_.terrain_margin)+
        (known_hazard_cells_.empty()?0.0:std::max(0.0,config_.hazard_terrain_margin));
    double predicted_impact=10000;
    std::string urgent_threat;
    for(const auto& threat:threats_) {
        if(threat.soft)continue;
        for(double time=std::max(0.0,threat.start);time<=std::min(search_seconds+future_escape_seconds,threat.until);time+=1.0/30) {
            if(threat.clearance(initial,initial,time,time+1.0/30,radius)<0) {
                if(time<predicted_impact){predicted_impact=time;urgent_threat=threat.kind;}
                break;
            }
        }
    }
    out.predicted_impact_time=predicted_impact==10000?-1:predicted_impact;
    out.urgent_threat=urgent_threat;
    double predicted_damage=0;
    for(const auto& threat:threats_) {
        if(threat.soft)continue;
        const double window=std::min(std::max(1.0/30,threat.until),0.3);
        if(threat.clearance(initial,initial,0,window,radius)<0)
            predicted_damage+=threat.lethal?999.0:std::max(0.5,threat.damage);
    }
    out.predicted_damage=predicted_damage;
    const bool imminent_attack=predicted_impact<=.65;
    int open_exits=0;
    if(predicted_impact<1.2)for(int action=1;action<9;++action) {
        const Vec exit=initial+direction(Move(action))*100;
        if(!terrain.sweep_clear(initial,exit,terrain_radius,player.flying))continue;
        bool open=true;
        for(const auto& threat:threats_) {
            if(threat.soft)continue;
            if(threat.clearance(initial,exit,0,.6,radius)<0){open=false;break;}
        }
        if(open)++open_exits;
    }
    std::array<bool,8> occupied_sectors{};
    double nearest_crowd=10000;
    int closing_contacts=0,close_contacts=0,nearby_gapers=0;    for(const auto& threat:threats_) {
        if(threat.kind!="contact"&&threat.kind!="fly-pursuit"&&threat.kind!="slide-charge"&&threat.kind!="squirt-dash")continue;
        const Vec delta=threat.pos-initial;
        const double gap=delta.norm()-threat.radius-radius;
        if(gap<320&&threat.type==10&&threat.variant==0&&threat.subtype==0)++nearby_gapers;
        if(gap>260)continue;
        nearest_crowd=std::min(nearest_crowd,gap);
        if(gap<180) {
            ++close_contacts;
            const int sector=int((std::atan2(delta.y,delta.x)+pi)*4/pi)%8;
            occupied_sectors[sector]=true;
            const Vec relative_velocity=(threat.at(.2)-threat.pos)/.2-player.body.vel;
            const double closing=-relative_velocity.dot(delta.unit());
            if(closing>20&&gap<closing*1.2+48)++closing_contacts;
        }
    }
    const int sectors=int(std::count(occupied_sectors.begin(),occupied_sectors.end(),true));
    const double wall_space=terrain.clearance(initial,terrain_radius,player.flying);
    // Room-specific spacing for a group of Frowning Gapers.
    const bool wide_gaper_group=terrain.shape==6&&nearby_gapers>=2;
    const bool dodge_gaper_group=!attack_enabled&&terrain.shape==1&&nearby_gapers>=2;
    const bool space_from_gapers=wide_gaper_group||dodge_gaper_group;
    const bool encirclement=(close_contacts>=2&&
        ((wall_space<96&&nearest_crowd<100)||(sectors>=3&&nearest_crowd<112)||closing_contacts>=2))||
        (predicted_impact<1.2&&open_exits<=2)||nearest_crowd<40;
    if(!escaping_&&encirclement) {
        escaping_=true;escape_started_=f.clock;escape_goal_until_=0;
    }
    if(escaping_&&f.clock>escape_started_+30&&nearest_crowd>60&&
       (close_contacts<2||(nearest_crowd>150&&wall_space>64))&&predicted_impact>1.2)escaping_=false;
    out.encirclement_escape=escaping_;
    if(!attack_enabled){release_until_=0;charged_seen_=false;}
    Vec goal=current.target&&!current.can_fire?current.point:initial;
    bool navigation_goal_kept=false;
    const Entity* current_target=nullptr;
    if(current.target)for(const auto&e:f.entities)if(e.address==current.target)current_target=&e;
    if(current_target) {
        uint64_t current_identity=identity(*current_target);
        if(current_identity!=navigation_motion_target_) {
            navigation_motion_target_=current_identity;
            navigation_target_dynamic_=false;
        }
        if(current_target->vel.norm()>config_.navigation_static_speed)navigation_target_dynamic_=true;
    }
    bool persistent_navigation=config_.persistent_navigation&&navigation_boost_&&current_target&&
        !navigation_target_dynamic_;
    bool navigation_goal_priority=config_.navigation_goal_priority&&persistent_navigation;
    bool waypoint_navigation=config_.navigation_waypoint_hold&&navigation_boost_&&current_target;
    bool navigation_waypoint_kept=false;
    int plate_count=0,plates_remaining=0,pressure_goal_cell=-1;
    bool pressure_navigation=false;
    Vec pressure_plate_goal{};
    bool objective_triggered=objective_variant==0?f.pressure_plates_triggered:false;
    for(int i=0;i<int(f.grid.cells.size());++i) {
        const auto&cell=f.grid.cells[i];
        if(cell.type!=20||cell.variant!=objective_variant||cell.collision!=0||cell.danger)continue;
        ++plate_count;
        if(cell.state!=3)++plates_remaining;
    }
    bool pressure_waiting=plate_count>0&&!objective_triggered&&plates_remaining==0;
    out.pressure_plate_mode=plate_count>0&&!objective_triggered;
    out.pressure_plates_complete=f.pressure_plates_triggered;
    out.pressure_plates_remaining=plates_remaining;
    out.button_kind=out.pressure_plate_mode?(objective_variant==9?"kill":"silver"):"";
    out.kill_button_triggered=!kill_button_done_.empty();
    if(plate_count>0&&!objective_triggered&&plates_remaining>0) {
        int w=f.grid.width,h=f.grid.height;
        auto cell_index=[&](Vec p){int x=std::clamp(int(std::floor((p.x-20)/40)),0,w-1),
            y=std::clamp(int(std::floor((p.y-100)/40)),0,h-1);return y*w+x;};
        int source=cell_index(initial);
        std::vector<int> previous(w*h,-2),distance_cells(w*h,-1);
        std::queue<int> queue;queue.push(source);previous[source]=-1;distance_cells[source]=0;
        int best_distance=std::numeric_limits<int>::max();
        while(!queue.empty()) {
            int index=queue.front();queue.pop();int x=index%w,y=index/w;
            for(auto [dx,dy]:std::vector<std::pair<int,int>>{{0,-1},{1,0},{0,1},{-1,0}}) {
                int nx=x+dx,ny=y+dy;if(nx<0||ny<0||nx>=w||ny>=h)continue;
                int next=ny*w+nx;if(previous[next]!=-2)continue;
                Vec from=index==source?initial:f.grid.center(index);
                if(!terrain.sweep_clear(from,terrain.center(next),terrain_radius,player.flying))continue;
                previous[next]=index;distance_cells[next]=distance_cells[index]+1;queue.push(next);
            }
        }
        for(int i=0;i<int(f.grid.cells.size());++i) {
            const auto&cell=f.grid.cells[i];
            if(cell.type!=20||cell.variant!=objective_variant||cell.collision!=0||cell.danger||
               cell.state==3||distance_cells[i]<0)continue;
            if(distance_cells[i]<best_distance){best_distance=distance_cells[i];pressure_goal_cell=i;}
        }
        if(pressure_goal_cell>=0) {
            pressure_navigation=true;
            pressure_plate_goal=f.grid.center(pressure_goal_cell);
            goal=pressure_plate_goal;
            if(pressure_goal_cell!=source) {
                int first=pressure_goal_cell;
                while(previous[first]>=0&&previous[first]!=source)first=previous[first];
                goal=f.grid.center(first);
            }
        }else {
            double nearest=std::numeric_limits<double>::max();
            for(int i=0;i<int(f.grid.cells.size());++i) {
                const auto&cell=f.grid.cells[i];
                if(cell.type!=20||cell.variant!=objective_variant||cell.collision!=0||cell.danger||
                   cell.state==3)continue;
                double candidate=distance(initial,f.grid.center(i));
                if(candidate<nearest){nearest=candidate;pressure_goal_cell=i;}
            }
            if(pressure_goal_cell>=0) {
                pressure_navigation=true;
                pressure_plate_goal=f.grid.center(pressure_goal_cell);
                goal=pressure_plate_goal;
            }
        }
    }else if(pressure_waiting) {
        pressure_navigation=true;
        pressure_plate_goal=initial;
        goal=initial;
    }
    out.pressure_plate_goal=pressure_plate_goal;
    // Breadth-first walkable cells provide a first waypoint around rocks and pits.
    if(!pressure_navigation&&current.target&&!current.can_fire) {
        if(!persistent_navigation) {
            navigation_goal_until_=0;
            navigation_goal_target_=0;
        }
        if(waypoint_navigation&&f.clock<=navigation_waypoint_until_&&
           navigation_waypoint_target_==identity(*current_target)&&
           distance(initial,navigation_waypoint_)>std::max(12.0,radius*2)&&
           terrain.walkable(navigation_waypoint_,terrain_radius,player.flying)&&
           terrain.sweep_clear(initial,navigation_waypoint_,terrain_radius,player.flying)) {
            goal=navigation_waypoint_;
            navigation_waypoint_kept=true;
        } else {
            if(waypoint_navigation) {
                navigation_waypoint_until_=0;
                navigation_waypoint_target_=0;
            }
            int w=f.grid.width,h=f.grid.height;
            auto cell_index=[&](Vec p){int x=std::clamp(int(std::round((p.x-40)/40)),0,w-1),y=std::clamp(int(std::round((p.y-120)/40)),0,h-1);return y*w+x;};
            int source=cell_index(initial);
            int desired=-1;
            if(persistent_navigation&&f.clock<=navigation_goal_until_&&
               navigation_goal_target_==identity(*current_target)&&aim_at(f,navigation_goal_,current.target).can_fire)
                desired=cell_index(navigation_goal_);
            auto search=[&](int target_index) {
                std::vector<int> prev(w*h,-2);std::queue<int> queue;queue.push(source);prev[source]=-1;
                int found=-1;bool can_fire=false;double nearest=1e30;
                while(!queue.empty()) {
                    int index=queue.front();queue.pop();Vec p=f.grid.center(index);
                    if(target_index>=0) {
                        if(index==target_index){found=index;can_fire=true;break;}
                    } else {
                        Aim test=persistent_navigation?aim_at(f,p,current.target):aim(f,p);
                        double cost=test.target?test.miss+std::max(0.0,distance(p,test.point)-player.tear_range):1e9;
                        if(cost<nearest){nearest=cost;found=index;}
                        if(test.can_fire){found=index;can_fire=true;break;}
                    }
                    for(auto [dx,dy]:std::vector<std::pair<int,int>>{{0,-1},{1,0},{0,1},{-1,0}}) {
                        int x=index%w+dx,y=index/w+dy;if(x<0||y<0||x>=w||y>=h)continue;
                        int n=y*w+x;if(prev[n]!=-2||!terrain.sweep_clear(index==source?initial:p,terrain.center(n),terrain_radius,player.flying))continue;
                        prev[n]=index;queue.push(n);
                    }
                }
                return std::tuple{found,std::move(prev),can_fire};
            };
            auto [found,prev,found_fire]=search(desired);
            if(desired>=0&&found<0) {
                navigation_goal_until_=0;
                std::tie(found,prev,found_fire)=search(-1);
                desired=-1;
            }
            if(found>=0) {
                if(desired<0&&found_fire&&current_target) {
                    navigation_goal_=f.grid.center(found);
                    navigation_goal_until_=f.clock+uint32_t(std::max(1,config_.navigation_hold_frames));
                    navigation_goal_target_=identity(*current_target);
                }else if(desired>=0)navigation_goal_kept=true;
                if(found!=source) {
                    while(prev[found]>=0&&prev[found]!=source)found=prev[found];
                    goal=f.grid.center(found);
                    if(waypoint_navigation) {
                        navigation_waypoint_=goal;
                        navigation_waypoint_until_=f.clock+uint32_t(std::max(1,config_.navigation_waypoint_frames));
                        navigation_waypoint_target_=identity(*current_target);
                    }
                }
            }
        }
    }else {
        if(persistent_navigation) {
            navigation_goal_until_=0;navigation_goal_target_=0;
        }
        if(waypoint_navigation) {
            navigation_waypoint_until_=0;navigation_waypoint_target_=0;
        }
    }
    if(escaping_) {
        const int w=terrain.width,h=terrain.height;
        auto cell_index=[&](Vec point) {
            const int x=std::clamp(int(std::floor((point.x-20)/40)),0,w-1);
            const int y=std::clamp(int(std::floor((point.y-100)/40)),0,h-1);
            return y*w+x;
        };
        const int source=cell_index(initial);
        // Largest angular gap between nearby contact bodies: escaping should
        // run through the gap into open space, not into a corner between two
        // chasers with no exit behind it.
        Vec gap_dir{};
        {
            std::vector<double> angles;
            for(const auto& threat:threats_) {
                if(threat.soft||threat.damage_class!=DamageClass::contact)continue;
                const Vec delta=threat.at(0.1)-initial;
                if(delta.norm()>1e-6&&delta.norm()<260)
                    angles.push_back(std::atan2(delta.y,delta.x));
            }
            if(angles.size()>=2) {
                std::sort(angles.begin(),angles.end());
                double best_gap=-1,center=0;
                for(size_t i=0;i<angles.size();++i) {
                    const double next=(i+1<angles.size())?angles[i+1]:angles[0]+2*pi;
                    const double width=next-angles[i];
                    if(width>best_gap){best_gap=width;center=angles[i]+width*0.5;}
                }
                gap_dir={std::cos(center),std::sin(center)};
            }
        }
        std::vector<double> cost(w*h,1e30),travel(w*h);
        std::vector<int> previous(w*h,-1);
        using Entry=std::pair<double,int>;
        std::priority_queue<Entry,std::vector<Entry>,std::greater<Entry>> queue;
        cost[source]=0;previous[source]=source;queue.push({0,source});
        while(!queue.empty()) {
            auto [current_cost,index]=queue.top();queue.pop();
            if(current_cost!=cost[index])continue;
            const Vec from=index==source?initial:terrain.center(index);
            for(auto [dx,dy]:std::array<std::pair<int,int>,4>{{{0,-1},{1,0},{0,1},{-1,0}}}) {
                const int x=index%w+dx,y=index/w+dy;
                if(x<0||x>=w||y<0||y>=h)continue;
                const int next=y*w+x;const Vec to=terrain.center(next);
                if(!terrain.sweep_clear(from,to,terrain_radius,player.flying))continue;
                const double length=distance(from,to),next_travel=travel[index]+length;
                const double start=travel[index]/player.max_speed;
                const double until=next_travel/player.max_speed;
                double gap=10000;
                for(const auto& threat:threats_) {
                    if(threat.soft)continue;
                    gap=std::min(gap,threat.clearance(from,to,start,until,radius));
                }
                const double risk=std::max(0.0,64-gap)*3+std::max(0.0,-gap)*80;
                const double candidate=current_cost+length+risk;
                if(candidate>=cost[next])continue;
                cost[next]=candidate;travel[next]=next_travel;previous[next]=index;
                queue.push({candidate,next});
            }
        }
        int destination=-1;
        const int saved=cell_index(escape_goal_);
        double saved_gap=10000;
        const double saved_arrival=travel[saved]/player.max_speed;
        for(const auto& threat:threats_)
            if(!threat.soft)saved_gap=std::min(saved_gap,threat.clearance(escape_goal_,escape_goal_,saved_arrival,saved_arrival+.25,radius));
        if(f.clock<escape_goal_until_&&distance(initial,escape_goal_)>40&&
           terrain.clearance(escape_goal_,terrain_radius,player.flying)>40&&
           previous[saved]>=0&&saved_gap>=config_.margin)
            destination=saved;
        else {
            double best=-1e30;
            for(int index=0;index<w*h;++index) {
                if(previous[index]<0)continue;
                const Vec point=terrain.center(index);
                if(distance(initial,point)<100)continue;
                double gap=10000;
                const double arrival=travel[index]/player.max_speed;
                for(const auto& threat:threats_)
                    if(!threat.soft)gap=std::min(gap,threat.clearance(point,point,arrival,arrival+.25,radius));
                const double wall=terrain.clearance(point,terrain_radius,player.flying);
                const Vec offset=point-initial;
                const double gap_align=offset.norm()>1e-6?gap_dir.dot(offset.unit()):0.0;
                double score=std::min(180.0,gap)+.8*std::min(80.0,wall)-.12*cost[index];
                score+=10.0*std::max(0.0,gap_align);
                // A dead end is open now but has no exit behind it later.
                if(wall<72)score-=(72-wall)*0.6;
                if(score>best){best=score;destination=index;}
            }
            if(destination>=0) {
                escape_goal_=terrain.center(destination);escape_goal_until_=f.clock+12;
            }
        }
        if(destination>=0) {
            int first=destination;
            while(previous[first]!=source)first=previous[first];
            goal=terrain.center(first);
            out.escape_goal=escape_goal_;out.escape_waypoint=goal;
        }
    }
    bool navigation_waypoint_priority=config_.navigation_waypoint_priority&&navigation_waypoint_kept;
    bool goal_priority=escaping_||pressure_navigation||navigation_goal_priority||navigation_waypoint_priority;
    double initial_clearance=terrain.clearance(initial,terrain_radius,player.flying);
    bool recovering=initial_clearance<0;
    bool effective_goal_priority=goal_priority&&!recovering;
    // In an ordinary room, open escape space matters before local proximity:
    // otherwise a group of chasers can herd the player into a wall. Wide
    // controlled combat rooms keep their validated target-first ordering.
    const bool escape_priority=!attack_enabled||terrain.shape==1;
    int room_gapers=0;
    for(const auto& threat:threats_)
        if(threat.type==10&&threat.variant==0&&threat.damage_class==DamageClass::contact)++room_gapers;
    // Six Gapers can seal the wide corridor, and the same wall-pinning risk
    // applies to a controlled six-Gaper ring in an ordinary room. Apply the
    // wide-arena kite metrics to both, leaving the validated five-Gaper room
    // unchanged.
    const bool wide_dodge=!attack_enabled&&(terrain.shape==6||room_gapers>=6);
    int room_special=0;
    for(const auto& threat:threats_)
        if(threat.type==55||threat.type==284)++room_special;
    // Leeches and Cyclopias also pin the player against a wall before the
    // contact/projectile damage lands. Use the wall-segment metrics without
    // changing the five-Gaper ordering.
    const bool special_dodge=!attack_enabled&&room_special>=3;
    const bool wall_dodge=wide_dodge||special_dodge;
    std::vector<Node> beam(1);beam[0].pos=initial;beam[0].vel=player.body.vel;beam[0].last=last_move_;beam[0].path={initial};
    // Contact bodies that are already moving toward the player will keep
    // steering, not hold their observed velocity. Track their pursuit for each
    // candidate route so a corner that is safe under straight-line motion is
    // not mistaken for an escape.
    std::vector<int> chase_slot(threats_.size(),-1);
    std::vector<double> chase_speed;
    if(space_from_gapers&&!attack_enabled) {
        for(size_t index=0;index<threats_.size();++index) {
            const auto& threat=threats_[index];
            double speed=threat.vel.norm();
            // A Frowning Gaper that has just seen Isaac may still read zero
            // velocity for a frame. Treat it as a pursuer immediately instead
            // of a static obstacle, otherwise the first move can walk into it.
            if(wide_dodge&&threat.type==10&&threat.variant==0&&speed<60)speed=140;
            if(!threat.soft&&threat.damage_class==DamageClass::contact&&speed>30) {
                chase_slot[index]=int(chase_speed.size());
                chase_speed.push_back(speed);
                beam[0].chase_pos.push_back(threat.pos);
            }
        }
    }
    if(player.body.flags&(1ULL<<7)) {
        beam[0].slow_factor=player.body.slow_factor;
        beam[0].slow_until=player.body.slow_countdown>0?player.body.slow_countdown/30.0:std::numeric_limits<double>::infinity();
    }
    int stages=std::max(1,search_stages),steps=action_steps;
    std::array<int,9> terrain_rejected{},pruned_zero_hit{};
    double dt=config_.dt,alpha=1-std::exp(-dt/config_.response);
    bool holding=f.clock<hold_until_&&!imminent_attack;
    Grid physical_terrain=terrain;
    for(auto& cell:physical_terrain.cells)cell.danger=false;
    auto traverse=[&](const Grid& grid,Vec from,Vec to) {
        const double before=grid.clearance(from,terrain_radius,player.flying);
        if(before>=0)return grid.sweep_clear(from,to,terrain_radius,player.flying);
        const int samples=std::max(1,int(std::ceil(distance(from,to)/4)));
        for(int sample=1;sample<=samples;++sample)
            if(grid.clearance(from+(to-from)*(double(sample)/samples),terrain_radius,player.flying)<before-1e-6)return false;
        return true;
    };
    auto advance_player=[&](Vec& point,Vec& velocity,Move move,double slow_factor=1) {
        Vec next=point;
        if(config_.native_player_motion)advance_native_player_motion(player,next,velocity,move,dt,slow_factor);
        else {velocity=velocity+(direction(move)*player.max_speed-velocity)*alpha;next=next+velocity*dt;}
        bool clipped=false;
        // Only physical collision stops momentum. Dangerous floor remains
        // traversable in the motion model and is rejected by route selection.
        if(!traverse(physical_terrain,point,next)) {
            const Vec horizontal{next.x,point.y},vertical{point.x,next.y};
            const bool along_x=traverse(physical_terrain,point,horizontal),along_y=traverse(physical_terrain,point,vertical);
            if(along_x&&(!along_y||physical_terrain.clearance(point,terrain_radius,player.flying)>=0||
                physical_terrain.clearance(horizontal,terrain_radius,player.flying)>=physical_terrain.clearance(vertical,terrain_radius,player.flying))) {
                next=horizontal;velocity.y=0;
            }else if(along_y){next=vertical;velocity.x=0;}
            else {next=point;velocity={};}
            clipped=true;
        }
        point=next;
        return clipped;
    };
    auto evaluate_future_escape=[&](Node& node) {
        const int escape_steps=std::max(1,config_.future_escape_horizon_frames);
        int safe_directions=0;
        for(int action=0;action<9;++action) {
            Vec p=node.pos,v=node.vel;
            double t=node.time,slow_factor=node.slow_factor,slow_until=node.slow_until;
            bool safe=true;
            for(int step=0;step<escape_steps;++step) {
                if(t>=slow_until)slow_factor=1;
                Vec next=p;
                advance_player(next,v,Move(action),slow_factor);
                if(terrain.hazard_clearance(next,terrain_radius,player.flying)<0) {safe=false;break;}
                for(const auto& threat:threats_) {
                    if(threat.soft) {
                        if(threat.kind=="creep-slow"&&threat.clearance(p,next,t,t+dt,radius)<0) {
                            slow_factor=threat.variant==25?.75:.85;slow_until=t+dt+2.0/30;
                        }
                        continue;
                    }
                    if(threat.clearance(p,next,t,t+dt,radius)<0) {safe=false;break;}
                }
                if(!safe)break;
                p=next;t+=dt;
            }
            if(safe&&(action==0||distance(node.pos,p)>radius))++safe_directions;
        }
        node.escape_directions=safe_directions;
        const double future_time=node.time+future_escape_seconds;
        int safe_area=0;
        for(double dx:{-40.0,-20.0,0.0,20.0,40.0})for(double dy:{-40.0,-20.0,0.0,20.0,40.0}) {
            Vec point=node.pos+Vec{dx,dy};
            if(terrain.clearance(point,terrain_radius,player.flying)<0)continue;
            bool safe=true;
            for(const auto& threat:threats_) {
                if(threat.soft)continue;
                if(threat.clearance(point,point,future_time,future_time+dt,radius)<0) {
                    safe=false;break;
                }
            }
            if(safe)++safe_area;
        }
        node.escape_area=safe_area;
        const double boundary=std::min({
            node.pos.x-40.0,
            60.0+(terrain.width-2)*40.0-node.pos.x,
            node.pos.y-120.0,
            140.0+(terrain.height-2)*40.0-node.pos.y});
        node.edge_clearance=std::min(terrain.clearance(node.pos,terrain_radius,player.flying),boundary);
    };
    auto retain_routes=[&](std::vector<Node>& nodes,size_t limit) {
        if(nodes.size()<=limit)return;
        std::array<size_t,9> counts{};
        std::vector<bool> keep(nodes.size());
        size_t retained=0;const size_t quota=std::max(size_t{1},limit/18);
        for(size_t i=0;i<nodes.size();++i) {
            auto& count=counts[int(nodes[i].first)];
            if(count<quota){keep[i]=true;++count;++retained;}
        }
        for(size_t i=0;i<nodes.size()&&retained<limit;++i)
            if(!keep[i]){keep[i]=true;++retained;}
        std::vector<Node> selected;selected.reserve(limit);
        for(size_t i=0;i<nodes.size();++i) {
            if(keep[i])selected.push_back(std::move(nodes[i]));
            else if(config_.diagnostics&&nodes[i].hits==0)++pruned_zero_hit[int(nodes[i].first)];
        }
        nodes=std::move(selected);
    };
    // Spacing against a single chaser pays off; when several are already
    // closing, over-committing to one of them makes the encirclement worse.
    const double contact_spacing_scale=closing_contacts>=2?0.35:1.0;
    for(int stage=0;stage<stages;++stage) {
        std::vector<Node> next;next.reserve(beam.size()*9);
        for(const auto& base:beam)for(int action=0;action<9;++action) {
            Node n=base;Move move=static_cast<Move>(action);if(stage==0)n.first=move;
            // From rest at a wall, a diagonal into it loses useful acceleration
            // before a crowd; keep the collision-free tangential option available.
            if(stage==0&&dodge_gaper_group&&wall_space<32&&player.body.vel.norm()<30&&move!=Move::stay&&
               terrain.clearance(initial+direction(move)*20,terrain_radius,player.flying)<wall_space-1)
                n.exposure+=15;
            if(move!=n.last)n.score-=1.5;n.last=move;
            for(int step=0;step<steps;++step) {
                double t=(stage*steps+step)*dt;
                if(t>=n.slow_until)n.slow_factor=1;
                Vec pos=n.pos;
                if(advance_player(pos,n.vel,move,n.slow_factor)){n.score-=.5;if(wall_dodge)++n.clips;}
                const double floor_clearance=std::min(terrain.hazard_clearance(n.pos,terrain_radius,player.flying),
                    terrain.hazard_clearance(pos,terrain_radius,player.flying));
                const double terrain_clearance=terrain.clearance(pos,terrain_radius,player.flying);
                n.wall_margin=std::min(n.wall_margin,terrain_clearance);
                std::vector<Vec> previous_chase=n.chase_pos;
                for(size_t index=0;index<n.chase_pos.size();++index) {
                    const Vec target=(n.pos+pos)*0.5;
                    const Vec delta=target-n.chase_pos[index];
                    const double length=delta.norm();
                    if(length>1e-6)n.chase_pos[index]=n.chase_pos[index]+delta.unit()*std::min(length,chase_speed[index]*dt);
                }
                double clearance=floor_clearance;
                if(floor_clearance<0) {
                    n.first_hit=std::min(n.first_hit,t);
                    n.hits+=dt*(1+std::min(100.0,-floor_clearance)/20)*(1+2*std::exp(-t/.35));
                }
                n.exposure+=std::max(0.0,config_.margin-floor_clearance)*dt;
                // A group can close the remaining gap while we are pinned to a
                // wall. Price the loss of manoeuvring room before it becomes a
                // collision, while keeping predicted hits the first priority.
                if(space_from_gapers) {
                    const double desired_wall=terrain.shape==1?110.0:120.0;
                    n.exposure+=std::max(0.0,desired_wall-terrain_clearance)*0.5*dt;
                }
                for(size_t threat_index=0;threat_index<threats_.size();++threat_index) {
                    const auto& threat=threats_[threat_index];
                    double c;
                    const int slot=chase_slot[threat_index];
                    if(slot>=0) {
                        const double inflate=threat.radius+radius+threat.geometry_margin+
                            threat.uncertainty*std::max(0.0,t+dt-threat.uncertainty_origin);
                        c=moving_clearance(n.pos,pos,previous_chase[slot],n.chase_pos[slot],inflate);
                    }else c=threat.clearance(n.pos,pos,t,t+dt,radius);
                    if(threat.soft){
                        if(threat.kind=="creep-slow"&&c<0) {
                            n.slow_factor=threat.variant==25?.75:.85;n.slow_until=t+dt+2.0/30;
                        }
                        n.exposure+=std::max(0.0,config_.margin-c)*dt;continue;
                    }
                    clearance=std::min(clearance,c);
                    if(c<0) {
                        n.first_hit=std::min(n.first_hit,t);
                        const double weight=threat.lethal?1000.0:
                            (threat.damage>0?std::clamp(threat.damage,0.5,3.0):1.0);
                        n.hits+=weight*dt*(1+std::min(100.0,-c)/20)*(1+2*std::exp(-t/.35));
                    }
                    // Keep more distance from high-damage and lethal hazards.
                    // Proximity itself is a cost even when the route does not hit.
                    const double exposure_weight=threat.lethal?10.0:
                        (threat.damage>0?std::clamp(threat.damage,0.5,3.0):1.0);
                    n.exposure+=std::max(0.0,config_.margin-c)*dt*exposure_weight;
                    // Linear extrapolation of a stationary walker cannot
                    // predict when it will begin following the player. Treat
                    // crowd proximity as a soft cost, not a confirmed hit.
                    if(space_from_gapers&&threat.damage_class==DamageClass::contact)
                        n.exposure+=std::max(0.0,120.0+80.0*std::min(1.0,t)-c)*.3*dt*exposure_weight;
                    if(config_.contact_spacing&&threat.damage_class==DamageClass::contact) {
                        // Closing speed toward this sample decides whether the
                        // body is a chaser or a slow walker. Only chasers get a
                        // spacing cost, so attack uptime against walkers stays.
                        const Vec start=threat.at(t),finish=threat.at(t+dt);
                        const Vec to_player=n.pos-start;
                        const double closing=to_player.norm()>1e-6?
                            (finish-start).dot(to_player.unit())/dt:0.0;
                        if(closing>config_.contact_spacing_speed_threshold) {
                            const double desired=std::min(config_.contact_spacing_max,
                                config_.contact_spacing_base+closing*config_.contact_spacing_gain+
                                (std::clamp(threat.damage,1.0,3.0)-1.0)*40.0);
                            const double gap=std::max(0.0,c);
                            if(gap<desired)
                                n.exposure+=(desired-gap)*config_.contact_spacing_weight*exposure_weight*contact_spacing_scale;
                        }
                    }
                }
                n.margin=std::min(n.margin,clearance);
                n.end_clearance=std::min(clearance,terrain_clearance);
                n.pos=pos;n.time+=dt;n.path.push_back(pos);
            }
            if(stage==0)n.first_wall=terrain.clearance(n.pos,terrain_radius,player.flying);
            if(escaping_) {
                n.score-=distance(n.pos,goal)*.75;
                if(stage==0&&move==Move::stay)n.score-=12;
            }else if(pressure_navigation) {
                n.score-=distance(n.pos,goal)*config_.pressure_plate_goal_weight;
            }else if(current.target&&!current.can_fire) {
                Vec route_goal=persistent_navigation?navigation_goal_:goal;
                double progress_weight=persistent_navigation?config_.navigation_progress_weight:0.06;
                n.score-=distance(n.pos,route_goal)*progress_weight;
            }
            if(imminent_attack&&stage==0&&move==Move::stay)n.score-=10;
            if(current.target) {
                auto future=aim_at(f,n.pos,current.target,n.time);
                if(future.can_fire)n.score+=imminent_attack?2:6;
                else n.score-=std::min(80.0,future.miss)*.015;
            }
            if(!current.target&&!pressure_navigation&&!out.pressure_plates_complete&&damageable_enemy)
                n.score-=distance(initial,n.pos)*.035;
            if(stage==0&&recovering&&move==Move::stay)n.score-=config_.action_change_penalty;
            next.push_back(std::move(n));
        }
        if(next.empty()) {
            out.stop=true;out.reason="No traversable path";
            if(config_.diagnostics) {
                out.analysis.terrain_rejected=std::accumulate(terrain_rejected.begin(),terrain_rejected.end(),0);
                out.analysis.cause="no-traversable-path";
            }
            return out;
        }
        std::stable_sort(next.begin(),next.end(),[&](const Node& a,const Node& b){
            return route_rank_less(rank_values(a),rank_values(b),effective_goal_priority,escape_priority,wide_dodge,special_dodge);
        });
        if(stage==stages-1) {
            // Run the escape rollout on the final candidate pool instead of
            // every expanded branch, keeping two beam widths for selection.
            retain_routes(next,size_t(planning_beam_width*2));
            for(auto& node:next)evaluate_future_escape(node);
            std::stable_sort(next.begin(),next.end(),[&](const Node& a,const Node& b){
                return route_rank_less(rank_values(a),rank_values(b),effective_goal_priority,escape_priority,wide_dodge,special_dodge);
            });
        }
        retain_routes(next,size_t(planning_beam_width));
        beam=std::move(next);
    }
    const Node* selected=&beam.front();
    if(holding&&!recovering&&!escaping_) {
        const Node* held=nullptr;
        for(const auto& node:beam) {
            if(node.first!=last_move_)continue;
            if(!held||route_rank_less(rank_values(node),rank_values(*held),effective_goal_priority,escape_priority,wide_dodge,special_dodge))held=&node;
        }
        if(held&&held->hits==0&&held->margin>=config_.action_hold_min_clearance&&
           route_safety_no_worse(rank_values(*held),rank_values(*selected),escape_priority,wide_dodge,special_dodge))selected=held;
    }
    const auto& chosen=*selected;out.valid=true;out.safe=chosen.hits==0;out.collision_cost=chosen.hits;
    out.selected_exits=chosen.escape_directions;out.selected_area=chosen.escape_area;
    out.selected_edge=chosen.edge_clearance;out.selected_exposure=chosen.exposure;
    out.analysis.action_held=holding&&chosen.first==last_move_;
    if(config_.diagnostics) {
        std::array<Node,9> best;
        std::array<bool,9> has_route{};
        std::array<int,9> valid_final{},zero_hit_final{};
        out.analysis.valid_final=int(beam.size());
        out.analysis.terrain_rejected=std::accumulate(terrain_rejected.begin(),terrain_rejected.end(),0);
        out.analysis.pruned_zero_hit=std::accumulate(pruned_zero_hit.begin(),pruned_zero_hit.end(),0);
        for(const auto& node:beam) {
            int index=int(node.first);
            ++valid_final[index];
            if(node.hits==0)++zero_hit_final[index];
            if(!has_route[index]||route_rank_less(rank_values(node),rank_values(best[index]),
                effective_goal_priority,escape_priority,wide_dodge,special_dodge)) {
                best[index]=node;
                has_route[index]=true;
            }
        }
        for(const auto& node:beam)if(node.hits==0)++out.analysis.zero_hit_final;
        out.analysis.moves.reserve(9);
        for(int action=0;action<9;++action) {
            MoveEvaluation evaluation;
            evaluation.move=Move(action);
            evaluation.has_route=has_route[action];
            evaluation.terrain_rejected=terrain_rejected[action];
            evaluation.valid_final=valid_final[action];
            evaluation.zero_hit_final=zero_hit_final[action];
            evaluation.pruned_zero_hit=pruned_zero_hit[action];
            if(has_route[action]) {
                const auto& node=best[action];
                evaluation.best.move=node.first;
                evaluation.best.end=node.pos;
                evaluation.best.hits=node.hits;
                evaluation.best.exposure=node.exposure;
                evaluation.best.clearance=node.margin;
                evaluation.best.end_clearance=node.end_clearance;
                evaluation.best.score=node.score;
                evaluation.best.escape_directions=node.escape_directions;
                evaluation.best.escape_area=node.escape_area;
                evaluation.best.edge_clearance=node.edge_clearance;
                evaluation.best.margin=node.margin;
                evaluation.best.path=sample_path(node.path);
            }
            out.analysis.moves.push_back(std::move(evaluation));
        }
        if(chosen.hits>0) {
            if(out.analysis.zero_hit_final>0)out.analysis.cause="safe-route-not-ranked-first";
            else if(out.analysis.pruned_zero_hit>0)out.analysis.cause="beam-pruning-removed-safe-routes";
            else if(out.analysis.valid_final>0)out.analysis.cause="dynamic-threats";
            else out.analysis.cause="terrain-or-search-exhausted";
        } else if(pressure_navigation)out.analysis.cause="pressure-plate-navigation";
        else if(!current.target)out.analysis.cause="no-targetable-enemy";
        else if(!current.can_fire)out.analysis.cause="seek-firing-position";
        else out.analysis.cause="safe-and-can-fire";
        out.analysis.navigation_goal=navigation_goal_;
        out.analysis.navigation_goal_kept=navigation_goal_kept;
        out.analysis.navigation_waypoint=navigation_waypoint_;
        out.analysis.navigation_waypoint_kept=navigation_waypoint_kept;
        out.analysis.navigation_progress_since=navigation_progress_clock_;
        out.analysis.navigation_living_enemies=living_enemy_count;
        out.analysis.navigation_hp_progress=hp_progress;
    }
    out.analysis.firing_direction=current.fire;
    out.analysis.firing_point=current.point;
    out.analysis.firing_miss=current.miss;
    out.analysis.firing_time=current.time;
    out.analysis.firing_available=current.can_fire;
    out.navigation_boost=navigation_boost_;
    out.clearance=chosen.margin;out.end_clearance=chosen.end_clearance;
    out.move=chosen.first;out.target=current.target;
    out.fire=current.target?current.fire:Fire::none;out.path=chosen.path;
    // Nothing to evade, nothing to chase, no room mission, and no terrain
    // recovery pending: hold position. Without this, the direction-change
    // penalty makes "stay" lose to the previous diagonal move and the bot
    // drifts across an empty room forever.
    const bool idle_room=threats_.empty()&&!current.target&&!pressure_navigation&&
        !escaping_&&!pressure_mission_pending&&chosen.hits==0&&
        f.grid.clearance(initial,radius,player.flying)>=0;
    if(idle_room) {
        out.move=Move::stay;
        out.path.assign(1,initial);
    }
    if(out.fire!=Fire::none) {
        // A charged weapon fires on the release edge. Press on the first full
        // observation so the native release is guaranteed, then hold the key up
        // until the observed charge resets. Releasing on every full frame would
        // never press again while the charge stays full.
        bool charged=std::any_of(player.weapons.begin(),player.weapons.end(),[](const Weapon&w){return w.max_charge>0&&w.charge>=w.max_charge;});
        if(!charged)charged_seen_=false;
        else if(!charged_seen_)charged_seen_=true;
        else if(f.clock>=release_until_)release_until_=f.clock+2;
        if(f.clock<release_until_)out.fire=Fire::none;
    }
    if(out.encirclement_escape)out.reason="Break encirclement; move to exit and keep firing";
    else if(pressure_navigation)out.reason=objective_variant==9?"Evade and route to red kill button":out.safe?"Route to silver pressure plate":"Evade while routing to silver pressure plate";
    else if(f.cleared){out.fire=Fire::none;out.target=0;out.reason=threats_.empty()?"Room clear; idle":"Room clear; evade remaining attacks";}
    else if(out.pressure_plates_complete&&!current.target)
        out.reason=threats_.empty()?"Pressure plates complete; wait for room clear":"Pressure plates complete; evade remaining attacks";
    else if(!current.target&&!damageable_enemy)
        out.reason=threats_.empty()?"Only room mechanisms remain; hold":"Evade room mechanisms; no damageable target";
    else if(imminent_attack)out.reason="Preempt predicted attack; keep firing while evading";
    else out.reason=out.safe?(current.can_fire?"Evade and fire / charge cycle":"Fire while moving into a firing lane"):"No zero-risk action; choosing lowest predicted damage";
    if(!player.attack_supported)out.reason="Evade; this weapon requires manual attack";
    if(!attack_enabled)out.reason=out.safe?"Evade only; automatic attack disabled":"Evade only; no collision-free route";
    out.escape_priority_used=escape_priority;
    out.strategy_mode=out.encirclement_escape?"Escape":imminent_attack?"PreDodge":!out.safe||out.clearance<config_.margin?"Survival":out.fire!=Fire::none&&threats_.empty()?"Output":"SafeOutput";
    if(out.move!=last_move_) {
        last_move_=out.move;
        hold_until_=f.clock+uint32_t(std::max(1,
            std::max(config_.action_hold_frames,int(std::ceil(action_steps*dt*30)))));
    }
    for(const auto&e:f.entities)if(e.address==current.target)target_=identity(e);
    out.planning_ms=std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now()-started).count();
    return out;
}
}
