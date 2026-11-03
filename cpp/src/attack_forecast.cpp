#include "gamebot/attack_forecast.hpp"
#include <algorithm>
#include <cmath>
#include <limits>

namespace gamebot {
const char* attack_primitive_name(AttackPrimitive value) {
    switch(value) {
    case AttackPrimitive::aimed_projectile:return "aimed_projectile";
    case AttackPrimitive::radial_projectile:return "radial_projectile";
    case AttackPrimitive::spread_projectile:return "spread_projectile";
    case AttackPrimitive::laser:return "laser";
    case AttackPrimitive::charge:return "charge";
    case AttackPrimitive::jump_landing:return "jump_landing";
    case AttackPrimitive::summon:return "summon";
    case AttackPrimitive::self_explosion:return "self_explosion";
    case AttackPrimitive::area_explosion:return "area_explosion";
    case AttackPrimitive::uncertain_area:return "uncertain_area";
    case AttackPrimitive::uncertain_corridor:return "uncertain_corridor";
    case AttackPrimitive::unknown:break;
    }
    return "unknown";
}
const char* attack_evidence_name(AttackEvidence value) {
    switch(value) {
    case AttackEvidence::verified:return "verified";
    case AttackEvidence::inferred:return "inferred";
    case AttackEvidence::candidate:return "candidate";
    case AttackEvidence::unknown:break;
    }
    return "unknown";
}
const char* attack_targeting_name(AttackTargeting value) {
    switch(value) {
    case AttackTargeting::player_position:return "player_position";
    case AttackTargeting::player_velocity_lead:return "player_velocity_lead";
    case AttackTargeting::source_target:return "source_target";
    case AttackTargeting::fixed_direction:return "fixed_direction";
    case AttackTargeting::self:return "self";
    case AttackTargeting::area:return "area";
    case AttackTargeting::unknown:break;
    }
    return "unknown";
}
json intent_json(const EnemyIntent& intent) {
    return json{{"enemy_id",intent.enemy_id},{"seed",intent.seed},{"type",intent.type},
        {"variant",intent.variant},{"subtype",intent.subtype},{"state",intent.state},
        {"state_frame",intent.state_frame},{"animation",intent.animation},
        {"animation_frame",intent.animation_frame},{"position",intent.position},
        {"velocity",intent.velocity},{"target_position",intent.target_position},
        {"projectile_cooldown",intent.projectile_cooldown},
        {"projectile_delay",intent.projectile_delay},
        {"primitive",attack_primitive_name(intent.primitive)},
        {"evidence",attack_evidence_name(intent.evidence)},
        {"targeting",attack_targeting_name(intent.targeting)},
        {"trigger_frame",intent.trigger_frame},{"end_frame",intent.end_frame},
        {"trigger_time",intent.trigger_time},{"duration",intent.duration},
        {"confidence",intent.confidence},{"projectile_speed",intent.projectile_speed},
        {"spread_angle",intent.spread_angle},{"collision_radius",intent.collision_radius},
        {"damage",intent.damage},{"length",intent.length},
        {"risk_weight",intent.risk_weight},
        {"unknown",intent.unknown},
        {"projectile_count",intent.projectile_count},
        {"can_instantiate",intent.can_instantiate},
        {"prediction_source",intent.prediction_source},{"attack_type",intent.attack_type},
        {"evidence_status",intent.evidence_status},{"evidence_detail",intent.evidence_detail}};
}
json forecast_json(const AttackForecast& forecast) {
    return json{{"enemy_id",forecast.enemy_id},{"seed",forecast.seed},
        {"type",forecast.type},{"variant",forecast.variant},{"subtype",forecast.subtype},
        {"primitive",attack_primitive_name(forecast.primitive)},
        {"evidence",attack_evidence_name(forecast.evidence)},
        {"targeting",attack_targeting_name(forecast.targeting)},
        {"trigger_frame",forecast.trigger_frame},{"end_frame",forecast.end_frame},
        {"trigger_time",forecast.trigger_time},{"duration",forecast.duration},
        {"spawn_position",forecast.spawn_position},{"target_position",forecast.target_position},
        {"direction",forecast.direction},{"projectile_speed",forecast.projectile_speed},
        {"spread_angle",forecast.spread_angle},{"collision_radius",forecast.collision_radius},
        {"damage",forecast.damage},{"length",forecast.length},
        {"risk_weight",forecast.risk_weight},
        {"unknown",forecast.unknown},
        {"projectile_count",forecast.projectile_count},
        {"prediction_confidence",forecast.prediction_confidence},
        {"prediction_source",forecast.prediction_source},{"attack_type",forecast.attack_type},
        {"evidence_status",forecast.evidence_status},{"forecast_id",forecast.forecast_id},
        {"evidence_detail",forecast.evidence_detail}};
}
json coverage_json(const IntentCoverage& coverage) {
    return json{{"enemies",coverage.enemies},{"observations",coverage.observations},
        {"state_known",coverage.state_known},{"animation_known",coverage.animation_known},
        {"target_known",coverage.target_known},{"velocity_known",coverage.velocity_known},
        {"cooldown_known",coverage.cooldown_known},{"delay_known",coverage.delay_known},
        {"ai_known",coverage.ai_known},{"timing_known",coverage.timing_known},
        {"geometry_known",coverage.geometry_known},{"verified",coverage.verified},
        {"inferred",coverage.inferred},{"candidate",coverage.candidate},
        {"unknown",coverage.unknown}};
}
namespace {
Threat make_base(const AttackForecast& forecast,double start,double until) {
    Threat threat;
    threat.source=forecast.enemy_id;threat.seed=forecast.seed;
    threat.type=forecast.type;threat.variant=forecast.variant;threat.subtype=forecast.subtype;
    threat.start=std::max(0.0,start);
    threat.until=std::max(threat.start+0.05,until);
    threat.predictive=true;threat.virtual_threat=true;
    threat.unknown_threat=forecast.unknown;
    threat.confidence=forecast.prediction_confidence;
    threat.timing_verified=forecast.evidence==AttackEvidence::verified;
    threat.geometry_verified=forecast.evidence==AttackEvidence::verified;
    threat.damage=std::max(0.0,forecast.damage);
    threat.risk_weight=std::max(1.0,forecast.risk_weight);
    threat.evidence_status=std::string{"intent-"} + attack_evidence_name(forecast.evidence) +
        "; " + forecast.evidence_status;
    threat.data_source=forecast.prediction_source;
    threat.end_condition="reobserve; virtual intent expires at trigger+duration";
    threat.forecast_id=forecast.forecast_id;
    threat.start_frame=forecast.trigger_frame;
    threat.end_frame=forecast.end_frame;
    return threat;
}
void set_projectile_motion(Threat& threat,Vec spawn,Vec direction,double speed,double start,double horizon) {
    threat.pos=spawn;threat.vel={};threat.shape=Shape::disc;
    threat.motion_path.clear();
    const int ticks=std::max(2,int(std::ceil(horizon*30))+2);
    threat.motion_path.reserve(size_t(ticks));
    for(int tick=0;tick<=ticks;++tick) {
        const double time=tick/30.0;
        const double travel=std::max(0.0,time-start);
        threat.motion_path.push_back(spawn+direction*(speed*travel));
    }
}
bool same_existing_attack(const Threat& real,const Threat& forecast,double tolerance) {
    if(!real.predictive)return false;
    if(real.source!=forecast.source||real.damage_class!=forecast.damage_class)return false;
    const double overlap=std::min(real.until,forecast.until)-std::max(real.start,forecast.start);
    if(overlap<-0.02)return false;
    if(real.shape==Shape::capsule||forecast.shape==Shape::capsule)
        return distance(real.pos,forecast.pos)<=tolerance&&
            distance(real.end,forecast.end)<=tolerance;
    // Projectiles are still at their spawn point on the trigger frame, so a
    // trigger-time comparison would call every aimed shot identical. Compare
    // two later samples instead; this preserves an action-conditioned target
    // while still suppressing a genuinely duplicated predictive threat.
    const double first=std::max(real.start,forecast.start)+0.12;
    const double last=std::min(real.until,forecast.until);
    if(first>last)return false;
    if(distance(real.at(first),forecast.at(first))>tolerance)return false;
    const double second=std::min(last,first+0.15);
    return distance(real.at(second),forecast.at(second))<=tolerance;
}
}
VirtualThreatBatch VirtualThreatGenerator::generate(const std::vector<AttackForecast>& forecasts,
    const Frame&,const std::vector<Threat>& existing,double horizon) const {
    VirtualThreatBatch batch;
    batch.real_threats=int(existing.size());
    auto add=[&](Threat threat) {
        for(const auto& real:existing)
            if(same_existing_attack(real,threat,config_.dedupe_distance)) {
                ++batch.deduplicated;return;
            }
        for(const auto& generated:batch.threats)
            if(same_existing_attack(generated,threat,config_.dedupe_distance*0.5)) {
                ++batch.deduplicated;return;
            }
        batch.threats.push_back(std::move(threat));
        ++batch.generated;
    };
    for(const auto& forecast:forecasts) {
        if(!forecast.unknown&&forecast.prediction_confidence<config_.min_confidence) {
            batch.diagnostics.push_back("intent below confidence: "+forecast.forecast_id);
            continue;
        }
        if(!forecast.unknown&&forecast.evidence==AttackEvidence::candidate&&!config_.include_candidate) {
            batch.diagnostics.push_back("candidate intent not instantiated: "+forecast.forecast_id);
            continue;
        }
        if(!forecast.unknown&&forecast.evidence==AttackEvidence::inferred&&!config_.include_inferred) {
            batch.diagnostics.push_back("inferred intent not instantiated: "+forecast.forecast_id);
            continue;
        }
        const double start=std::max(0.0,forecast.trigger_time);
        const double duration=std::max(0.05,forecast.duration);
        const Vec direction=forecast.direction.unit();
        if(forecast.primitive==AttackPrimitive::aimed_projectile||
           forecast.primitive==AttackPrimitive::radial_projectile||
           forecast.primitive==AttackPrimitive::spread_projectile) {
            const double speed=forecast.projectile_speed;
            const int count=std::clamp(forecast.projectile_count,1,config_.max_projectiles);
            if(speed<=0||forecast.collision_radius<=0) {
                batch.diagnostics.push_back("projectile intent lacks speed/radius: "+forecast.forecast_id);
                continue;
            }
            Vec base=direction;
            if(base.norm()<1e-9)base={1,0};
            for(int index=0;index<count;++index) {
                Vec axis=base;
                if(forecast.primitive==AttackPrimitive::radial_projectile) {
                    axis=rotated(base,2*pi*index/double(count));
                }else if(forecast.primitive==AttackPrimitive::spread_projectile) {
                    const double spread=forecast.spread_angle*pi/180;
                    const double offset=count>1?-spread/2+spread*index/double(count-1):0;
                    axis=rotated(base,offset);
                }
                Threat threat=make_base(forecast,start,start+duration);
                threat.kind=forecast.primitive==AttackPrimitive::radial_projectile?
                    "intent-radial-projectile":forecast.primitive==AttackPrimitive::spread_projectile?
                    "intent-spread-projectile":"intent-aimed-projectile";
                threat.damage_class=DamageClass::projectile;
                threat.damage_timing=DamageTiming::instant;
                threat.radius=forecast.collision_radius;
                threat.uncertainty=std::max(0.0,(1-forecast.prediction_confidence)*forecast.collision_radius);
                threat.uncertainty_origin=start;
                set_projectile_motion(threat,forecast.spawn_position,axis,speed,start,horizon);
                threat.until=std::min(threat.until,std::max(threat.start+0.05,horizon));
                add(std::move(threat));
            }
            continue;
        }
        Threat threat=make_base(forecast,start,start+duration);
        threat.shape=Shape::disc;
        if(forecast.primitive==AttackPrimitive::uncertain_area) {
            threat.kind="intent-unknown-area";threat.damage_class=DamageClass::hazard;
            threat.damage_timing=DamageTiming::window;
            threat.pos=forecast.target_position.finite()&&forecast.target_position.norm()>1?
                forecast.target_position:forecast.spawn_position;
            threat.radius=forecast.collision_radius>0?forecast.collision_radius:64;
            threat.soft=false;
            threat.uncertainty=std::max(0.0,(1-forecast.prediction_confidence)*threat.radius);
            threat.uncertainty_origin=start;
        }else if(forecast.primitive==AttackPrimitive::uncertain_corridor) {
            threat.kind="intent-unknown-corridor";threat.damage_class=DamageClass::hazard;
            threat.damage_timing=DamageTiming::window;threat.shape=Shape::capsule;
            threat.pos=forecast.spawn_position;
            const double length=forecast.length>0?forecast.length:
                std::max(160.0,forecast.projectile_speed*(start+duration));
            threat.end=forecast.spawn_position+(direction.norm()>1e-9?direction:Vec{1,0})*length;
            threat.radius=forecast.collision_radius>0?forecast.collision_radius:32;
            threat.uncertainty=std::max(0.0,(1-forecast.prediction_confidence)*threat.radius);
            threat.uncertainty_origin=start;
        }else if(forecast.primitive==AttackPrimitive::laser) {
            threat.kind="intent-laser";threat.damage_class=DamageClass::laser;
            threat.damage_timing=DamageTiming::periodic;
            threat.shape=Shape::capsule;threat.pos=forecast.spawn_position;
            const double length=forecast.length>0?forecast.length:1200;
            threat.end=forecast.spawn_position+(direction.norm()>1e-9?direction:Vec{1,0})*length;
            threat.radius=forecast.collision_radius>0?forecast.collision_radius:5;
            threat.vel={};
        }else if(forecast.primitive==AttackPrimitive::charge) {
            threat.kind="intent-charge";threat.damage_class=DamageClass::charge;
            threat.damage_timing=DamageTiming::window;
            threat.shape=Shape::capsule;threat.pos=forecast.spawn_position;
            const double length=forecast.length>0?forecast.length:240;
            threat.end=forecast.spawn_position+(direction.norm()>1e-9?direction:Vec{1,0})*length;
            threat.radius=forecast.collision_radius>0?forecast.collision_radius:16;
            threat.vel={};
        }else if(forecast.primitive==AttackPrimitive::jump_landing) {
            threat.kind="intent-jump-landing";threat.damage_class=DamageClass::jump;
            threat.damage_timing=DamageTiming::instant;threat.pos=forecast.target_position;
            threat.radius=forecast.collision_radius>0?forecast.collision_radius:32;
        }else if(forecast.primitive==AttackPrimitive::self_explosion) {
            threat.kind="intent-self-explosion";threat.damage_class=DamageClass::explosion;
            threat.damage_timing=DamageTiming::instant;threat.pos=forecast.spawn_position;
            threat.radius=forecast.collision_radius>0?forecast.collision_radius:80;
        }else if(forecast.primitive==AttackPrimitive::area_explosion) {
            threat.kind="intent-area-explosion";threat.damage_class=DamageClass::explosion;
            threat.damage_timing=DamageTiming::instant;threat.pos=forecast.target_position;
            threat.radius=forecast.collision_radius>0?forecast.collision_radius:80;
        }else if(forecast.primitive==AttackPrimitive::summon) {
            threat.kind="intent-summon";threat.damage_class=DamageClass::contact;
            threat.damage_timing=DamageTiming::window;threat.soft=true;threat.damage=0;
            threat.pos=forecast.target_position;
            threat.radius=forecast.collision_radius>0?forecast.collision_radius:36;
        }else {
            batch.diagnostics.push_back("unsupported primitive: "+forecast.forecast_id);
            continue;
        }
        add(std::move(threat));
    }
    return batch;
}
}
