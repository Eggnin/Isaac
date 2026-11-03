#include "gamebot/combat_progress.hpp"
#include "gamebot/combat.hpp"
#include <algorithm>
#include <cmath>
#include <sstream>

namespace gamebot {
namespace {
double clamp01(double value) {
    return std::max(0.0,std::min(1.0,value));
}
double segment_distance(Vec point,Vec a,Vec b) {
    const Vec delta=b-a;
    const double length=delta.dot(delta);
    const double t=length>1e-9?
        std::clamp((point-a).dot(delta)/length,0.0,1.0):0.0;
    return distance(point,a+delta*t);
}
}
const char* combat_progress_kind_name(CombatProgressKind kind) {
    switch(kind) {
    case CombatProgressKind::progressing:return "progressing";
    case CombatProgressKind::no_target:return "no_target";
    case CombatProgressKind::not_firing:return "not_firing";
    case CombatProgressKind::shot_no_hit:return "shot_no_hit";
    case CombatProgressKind::invulnerable_target:return "invulnerable_target";
    case CombatProgressKind::no_angle:return "no_angle";
    case CombatProgressKind::out_of_range:return "out_of_range";
    case CombatProgressKind::blocked:return "blocked";
    case CombatProgressKind::target_lost:return "target_lost";
    case CombatProgressKind::unknown:return "unknown";
    }
    return "unknown";
}
CombatProgressKind combat_progress_kind_from_name(const std::string& name) {
    for(CombatProgressKind kind:{CombatProgressKind::progressing,
        CombatProgressKind::no_target,CombatProgressKind::not_firing,
        CombatProgressKind::shot_no_hit,CombatProgressKind::invulnerable_target,
        CombatProgressKind::no_angle,CombatProgressKind::out_of_range,
        CombatProgressKind::blocked,CombatProgressKind::target_lost}) {
        if(name==combat_progress_kind_name(kind))return kind;
    }
    return CombatProgressKind::unknown;
}
json CombatProgressState::to_json() const {
    return {{"valid",valid},{"stalled",stalled},{"attack_stalled",attack_stalled},
        {"need_reposition",need_reposition},{"need_target_switch",need_target_switch},
        {"target_invalid",target_invalid},{"target_invulnerable",target_invulnerable},
        {"target_unreachable",target_unreachable},
        {"frames_since_progress",frames_since_progress},
        {"frames_since_hit",frames_since_hit},
        {"frames_since_shot",frames_since_shot},
        {"shots",shots},{"hits",hits},{"kills",kills},
        {"fire_commands",fire_commands},{"projectile_spawns",projectile_spawns},
        {"target_hp_deltas",target_hp_deltas},
        {"confirmed_kills",confirmed_kills},{"entity_lost",entity_lost},
        {"unconfirmed_kills",unconfirmed_kills},
        {"phase_transitions",phase_transitions},
        {"damage_events",damage_events},{"enemy_count",enemy_count},
        {"enemy_hp_lost",enemy_hp_lost},{"progress_ratio",progress_ratio},
        {"projectile_hits",projectile_hits},
        {"projectile_misses",projectile_misses},
        {"projectile_hit_rate",projectile_hit_rate},
        {"attributed_damage",attributed_damage},
        {"elapsed_seconds",elapsed_seconds},
        {"damage_per_second",damage_per_second},
        {"last_shot",last_shot},
        {"target",target},{"kind",combat_progress_kind_name(kind)},
        {"reason",reason}};
}
CombatProgressObservation combat_progress_observation(const CombatContext& context,
    Fire fire,bool attack_enabled) {
    CombatProgressObservation observation;
    observation.combat_valid=context.valid;
    observation.attack_enabled=attack_enabled;
    observation.fire=fire;
    observation.target=context.target;
    if(const TargetAssessment* target=context.target_assessment(context.target)) {
        observation.target_damageable=target->damageable;
        observation.target_invulnerable=!target->damageable;
    }
    observation.aim_valid=context.aim.valid;
    observation.predicted_hit=context.aim.predicted_hit;
    observation.line_clear=context.aim.line_clear;
    observation.target_distance=context.target_distance;
    observation.tear_range=context.tear_range>1.0?context.tear_range:260.0;
    observation.player_position=context.player_position;
    observation.target_position=context.aim.target_position;
    observation.target_velocity=context.aim.target_velocity;
    observation.spawn_position=context.aim.spawn_position;
    observation.projectile_velocity=context.aim.projectile_velocity;
    observation.intercept_position=context.aim.aim_point;
    observation.travel_frames=context.aim.estimated_travel_frames;
    return observation;
}
void CombatProgressTracker::reset() {
    state_=CombatProgressState{};
    previous_hp_.clear();
    previous_phase_.clear();
    previous_friendly_projectiles_.clear();
    pending_shot_=json::object();
    last_clock_=last_room_=0;
    previous_health_=-1;
    initialized_=false;
}
void CombatProgressTracker::update_kind(const WorldStateSnapshot& snapshot,
    const CombatProgressObservation& observation,bool progress_this_frame,
    bool player_damaged) {
    state_.target=observation.target;
    state_.attack_stalled=false;
    state_.target_invalid=!observation.combat_valid||observation.target==0;
    state_.target_invulnerable=observation.target_invulnerable;
    state_.target_unreachable=false;
    if(state_.target_invalid) {
        state_.kind=observation.combat_valid?
            CombatProgressKind::no_target:CombatProgressKind::target_lost;
    } else if(!observation.target_damageable) {
        state_.kind=CombatProgressKind::invulnerable_target;
        state_.target_invulnerable=true;
    } else if(observation.target_distance>observation.tear_range*1.05) {
        state_.kind=CombatProgressKind::out_of_range;
        state_.target_unreachable=true;
    } else if(observation.aim_valid&&!observation.line_clear) {
        state_.kind=CombatProgressKind::blocked;
        state_.target_unreachable=true;
    } else if(observation.aim_valid&&!observation.predicted_hit) {
        state_.kind=CombatProgressKind::no_angle;
        state_.target_unreachable=true;
    } else if(!observation.attack_enabled||observation.fire==Fire::none) {
        state_.kind=CombatProgressKind::not_firing;
    } else if(progress_this_frame) {
        state_.kind=CombatProgressKind::progressing;
    } else {
        state_.kind=CombatProgressKind::shot_no_hit;
        state_.attack_stalled=state_.frames_since_hit>=config_.no_hit_frames;
    }
    if(state_.enemy_count>0&&state_.shots>0&&
       state_.frames_since_shot>=config_.no_fire_frames)
        state_.attack_stalled=true;
    state_.stalled=state_.enemy_count>0&&
        state_.frames_since_progress>=config_.stall_frames;
    state_.need_reposition=state_.stalled&&
        (state_.target_invalid||state_.target_invulnerable||
         state_.target_unreachable);
    state_.need_target_switch=state_.target_invalid||state_.target_invulnerable||
        (state_.stalled&&state_.target_unreachable&&
         state_.frames_since_progress>=config_.switch_frames);
    if(player_damaged)++state_.damage_events;
    state_.valid=true;
    std::ostringstream reason;
    reason<<combat_progress_kind_name(state_.kind)
        <<"; no_progress="<<state_.frames_since_progress
        <<", no_hit="<<state_.frames_since_hit
        <<", shots="<<state_.shots<<", hits="<<state_.hits
        <<", kills="<<state_.kills
        <<", projectile_spawns="<<state_.projectile_spawns
        <<", projectile_hits="<<state_.projectile_hits
        <<", projectile_misses="<<state_.projectile_misses
        <<", dps="<<state_.damage_per_second
        <<", entity_lost="<<state_.entity_lost
        <<", phase_transitions="<<state_.phase_transitions;
    state_.reason=reason.str();
    (void)snapshot;
}
void CombatProgressTracker::observe(const WorldStateSnapshot& snapshot,
    const CombatProgressObservation& observation) {
    const bool room_changed=initialized_&&snapshot.frame.room!=last_room_;
    const bool clock_back=initialized_&&int(snapshot.frame.clock)<int(last_clock_);
    const bool first_frame=!initialized_||room_changed||clock_back;
    if(first_frame) {
        const int kept_damage=state_.damage_events;
        reset();
        state_.damage_events=kept_damage;
    }
    int delta=1;
    if(initialized_&&snapshot.frame.clock>=last_clock_) {
        const int gap=int(snapshot.frame.clock)-int(last_clock_);
        delta=std::clamp(gap,1,10);
    }
    state_.frames_since_progress+=delta;
    state_.frames_since_hit+=delta;
    state_.frames_since_shot+=delta;

    const bool had_enemies=state_.enemy_count>0;
    bool progress=false;
    double hp_lost=0;
    int live=0;
    std::unordered_set<uint32_t> present;
    // Real friendly projectiles observed in this snapshot. The previous map is
    // kept for the swept association below; it is not inferred from the fire
    // key or from the aim direction.
    std::unordered_map<uint32_t,TrackedProjectile> current_friendly;
    for(const auto& projectile:snapshot.projectiles) {
        if(projectile.role!=ProjectileRole::friendly||!projectile.real)continue;
        const auto& entity=projectile.entity;
        if(!entity.alive())continue;
        TrackedProjectile track;
        track.pos=entity.pos;track.vel=entity.vel;
        track.radius=std::max(2.0,entity.radius);
        current_friendly[entity.address]=track;
    }
    const auto previous_friendly=previous_friendly_projectiles_;
    std::unordered_set<uint32_t> hit_projectiles;
    const double frame_seconds=double(delta)/60.0;
    auto attribute_projectile=[&](Vec enemy_position,double enemy_radius,
                                  double damage) {
        uint32_t best_id=0;
        double best_distance=1e9;
        for(const auto&[id,track]:previous_friendly) {
            if(track.hit||hit_projectiles.count(id))continue;
            const Vec end=track.pos+track.vel*frame_seconds;
            const double clearance=segment_distance(enemy_position,track.pos,end)-
                track.radius-enemy_radius;
            if(clearance<=6.0&&clearance<best_distance) {
                best_distance=clearance;best_id=id;
            }
        }
        if(best_id) {
            hit_projectiles.insert(best_id);
            state_.attributed_damage+=damage;
        }
    };
    for(const auto& enemy:snapshot.enemies) {
        const auto& entity=enemy.entity;
        if(!entity.alive()||!entity.enemy()||entity.friendly)continue;
        if(entity.hp>0&&!entity.dead)++live;
        present.insert(entity.address);
        const int phase=enemy.boss_phase>=0?enemy.boss_phase:enemy.mechanism.boss_phase;
        const auto old_phase=previous_phase_.find(entity.address);
        if(old_phase!=previous_phase_.end()&&old_phase->second>=0&&phase>=0&&
           old_phase->second!=phase)
            ++state_.phase_transitions;
        if(phase>=0)previous_phase_[entity.address]=phase;
        const auto found=previous_hp_.find(entity.address);
        if(found!=previous_hp_.end()&&found->second>entity.hp+config_.hp_epsilon) {
            const double damage=found->second-entity.hp;
            progress=true;
            hp_lost+=damage;
            ++state_.hits;
            ++state_.target_hp_deltas;
            attribute_projectile(entity.pos,std::max(2.0,entity.radius),damage);
        }
        if(entity.hp<=0||entity.dead) {
            if(found!=previous_hp_.end()&&found->second>0) {
                ++state_.confirmed_kills;
                ++state_.kills;
            }
            previous_hp_.erase(entity.address);
        }else {
            previous_hp_[entity.address]=entity.hp;
        }
    }
    // A disappeared body is not a kill. Only a death/lifecycle transition can
    // confirm it; otherwise it is entity_lost/unconfirmed.
    for(auto iterator=previous_hp_.begin();iterator!=previous_hp_.end();) {
        if(present.count(iterator->first)) {
            ++iterator;
            continue;
        }
        bool died=false;
        for(const auto& transition:snapshot.lifecycle)
            if(transition.id==iterator->first&&
               transition.kind==LifecycleKind::died) {
                died=true;break;
            }
        if(died) {
            progress=true;
            ++state_.confirmed_kills;
            ++state_.kills;
        }else {
            ++state_.entity_lost;
            ++state_.unconfirmed_kills;
        }
        iterator=previous_hp_.erase(iterator);
    }
    for(auto iterator=previous_phase_.begin();iterator!=previous_phase_.end();)
        if(!present.count(iterator->first))iterator=previous_phase_.erase(iterator);
        else ++iterator;
    state_.enemy_count=live;
    if(!had_enemies&&live>0)state_.frames_since_progress=0;
    state_.enemy_hp_lost+=hp_lost;
    // Resolve projectiles that disappeared this frame. A hit is counted only
    // when that projectile was geometrically associated with an HP drop.
    for(const auto&[id,track]:previous_friendly) {
        if(current_friendly.count(id))continue;
        if(track.hit||hit_projectiles.count(id))++state_.projectile_hits;
        else ++state_.projectile_misses;
    }
    // Attach the last launch diagnostics to a newly observed real projectile.
    auto shot_json=[&](uint32_t id) {
        json shot=pending_shot_.is_object()?pending_shot_:json::object();
        if(!shot.contains("target_id")) {
            shot=json{{"target_id",observation.target},
                {"player_position",observation.player_position},
                {"target_position",observation.target_position},
                {"target_velocity",observation.target_velocity},
                {"projectile_spawn_position",observation.spawn_position},
                {"projectile_velocity",observation.projectile_velocity},
                {"selected_aim_direction",int(observation.fire)},
                {"predicted_intercept_position",observation.intercept_position},
                {"estimated_projectile_travel_frames",observation.travel_frames},
                {"predicted_hit",observation.predicted_hit},
                {"aim_valid",observation.aim_valid},
                {"line_clear",observation.line_clear}};
        }
        shot["projectile_id"]=id;
        shot["spawn_clock"]=snapshot.frame.clock;
        return shot;
    };
    std::unordered_map<uint32_t,TrackedProjectile> next_friendly;
    next_friendly.reserve(current_friendly.size());
    for(auto&[id,track]:current_friendly) {
        const auto previous=previous_friendly.find(id);
        if(previous==previous_friendly.end()) {
            if(!first_frame)++state_.projectile_spawns;
            track.target=observation.target;
            track.spawn_clock=snapshot.frame.clock;
            track.hit=hit_projectiles.count(id)>0;
            state_.last_shot=shot_json(id);
            pending_shot_=json::object();
        }else {
            track.target=previous->second.target;
            track.spawn_clock=previous->second.spawn_clock;
            track.hit=previous->second.hit||hit_projectiles.count(id)>0;
        }
        next_friendly[id]=track;
    }
    previous_friendly_projectiles_=std::move(next_friendly);
    state_.elapsed_seconds+=frame_seconds;
    state_.damage_per_second=state_.elapsed_seconds>1e-9?
        state_.enemy_hp_lost/state_.elapsed_seconds:0.0;
    const int resolved=state_.projectile_hits+state_.projectile_misses;
    state_.projectile_hit_rate=resolved>0?
        double(state_.projectile_hits)/double(resolved):0.0;
    if(progress) {
        state_.frames_since_progress=0;
        state_.frames_since_hit=0;
    }

    bool player_damaged=false;
    if(previous_health_>=0&&snapshot.player.health<previous_health_)
        player_damaged=true;
    previous_health_=snapshot.player.health;

    if(observation.attack_enabled&&observation.fire!=Fire::none) {
        ++state_.shots;
        ++state_.fire_commands;
        state_.frames_since_shot=0;
        pending_shot_=json{{"target_id",observation.target},
            {"player_position",observation.player_position},
            {"target_position",observation.target_position},
            {"target_velocity",observation.target_velocity},
            {"projectile_spawn_position",observation.spawn_position},
            {"projectile_velocity",observation.projectile_velocity},
            {"selected_aim_direction",int(observation.fire)},
            {"predicted_intercept_position",observation.intercept_position},
            {"estimated_projectile_travel_frames",observation.travel_frames},
            {"predicted_hit",observation.predicted_hit},
            {"aim_valid",observation.aim_valid},
            {"line_clear",observation.line_clear}};
    }
    state_.progress_ratio=state_.shots>0?clamp01(double(state_.hits)/state_.shots):0.0;
    state_.attack_stalled=state_.shots>0&&
        state_.frames_since_hit>=config_.no_hit_frames;
    update_kind(snapshot,observation,progress,player_damaged);
    last_clock_=snapshot.frame.clock;
    last_room_=snapshot.frame.room;
    initialized_=true;
}
} // namespace gamebot
