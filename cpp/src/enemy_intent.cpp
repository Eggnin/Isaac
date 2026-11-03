#include "gamebot/enemy_intent.hpp"
#include <algorithm>
#include <cmath>
#include <limits>
#include <unordered_map>
#include <unordered_set>

namespace gamebot {
namespace {
std::string lower_copy(std::string value) {
    std::transform(value.begin(),value.end(),value.begin(),
        [](unsigned char c){return char(std::tolower(c));});
    return value;
}
std::string json_string(const json& object,const char* key) {
    const auto found=object.find(key);
    return found!=object.end()&&found->is_string()?found->get<std::string>():std::string{};
}
bool contains_any(const std::string& text,std::initializer_list<const char*> needles) {
    for(const char* needle:needles)if(text.find(needle)!=std::string::npos)return true;
    return false;
}
int evidence_rank(AttackEvidence evidence) {
    switch(evidence) {
    case AttackEvidence::verified:return 3;
    case AttackEvidence::inferred:return 2;
    case AttackEvidence::candidate:return 1;
    case AttackEvidence::unknown:break;
    }
    return 0;
}
AttackPrimitive primitive_from_text(const std::string& raw) {
    const std::string text=lower_copy(raw);
    if(contains_any(text,{"laser","brimstone","beam"}))return AttackPrimitive::laser;
    if(contains_any(text,{"summon","spawn"}))return AttackPrimitive::summon;
    if(contains_any(text,{"charge","dash","roll","ram","slide","tackle","rush"}))
        return AttackPrimitive::charge;
    if(contains_any(text,{"jump","land","stomp","hop"}))return AttackPrimitive::jump_landing;
    if(contains_any(text,{"explos","bomb","blast"}))return AttackPrimitive::area_explosion;
    if(contains_any(text,{"radial","ring","circle"}))return AttackPrimitive::radial_projectile;
    if(contains_any(text,{"spread","fan","shotgun"}))return AttackPrimitive::spread_projectile;
    if(contains_any(text,{"projectile","shoot","spit","tear","bullet","fire"}))
        return AttackPrimitive::aimed_projectile;
    return AttackPrimitive::unknown;
}
AttackTargeting targeting_from_text(const std::string& raw) {
    const std::string text=lower_copy(raw);
    if(contains_any(text,{"player_position","player lock","player_lock","aimed_at_player",
        "target_player","player_target"}))return AttackTargeting::player_position;
    if(contains_any(text,{"target_pos","target_position","source_target"}))
        return AttackTargeting::source_target;
    if(contains_any(text,{"ai_v1","ai_v2","velocity","facing","fixed","angle"}))
        return AttackTargeting::fixed_direction;
    if(text.find("self")!=std::string::npos)return AttackTargeting::self;
    if(text.find("area")!=std::string::npos)return AttackTargeting::area;
    return AttackTargeting::unknown;
}
Vec fixed_direction(const Entity& entity,const Frame& frame,const std::string& axis) {
    const std::string text=lower_copy(axis);
    if(text=="ai_v1_angle") {
        const double angle=entity.ai_v1.x*pi/180;
        return {std::cos(angle),std::sin(angle)};
    }
    if(text=="ai_v1")return entity.ai_v1.unit();
    if(text=="ai_v2")return entity.ai_v2.unit();
    if(text=="velocity"||text=="velocity_swapped")return entity.vel.unit();
    if(text=="perpendicular_velocity")return rotated(entity.vel.unit(),pi/2);
    if(text=="facing")return {entity.sprite_flip_x?-1.0:1.0,0};
    if(text=="target_pos")return (entity.target_pos-entity.pos).unit();
    if(text=="player_fire_reverse") {
        Vec fire{};
        switch(frame.player.fire_direction) {
        case 0:fire={-1,0};break;case 1:fire={0,-1};break;
        case 2:fire={1,0};break;case 3:fire={0,1};break;
        }
        return fire*-1;
    }
    return {};
}
double updates_to_frame(const Entity& entity,double target) {
    double frame=entity.animation_frame;
    double delta=target-frame;
    if(entity.animation_looping&&entity.animation_length>0) {
        delta=std::fmod(delta+entity.animation_length,double(entity.animation_length));
        if(delta<0)delta+=entity.animation_length;
        const double rate=animation_update_rate(entity);
        if(!std::isfinite(rate)||rate<=0)return std::numeric_limits<double>::infinity();
        return std::ceil(delta/rate)+std::max(0,entity.animation_update_delay);
    }
    return animation_frame_updates(entity,target);
}
bool animation_matches(const std::string& pattern,const std::string& observed) {
    if(pattern.empty()||pattern=="*")return true;
    if(pattern.back()=='*')return observed.starts_with(pattern.substr(0,pattern.size()-1));
    return pattern==observed;
}
double default_duration(AttackPrimitive primitive) {
    switch(primitive) {
    case AttackPrimitive::laser:return .25;
    case AttackPrimitive::charge:return .35;
    case AttackPrimitive::jump_landing:return .20;
    case AttackPrimitive::self_explosion:
    case AttackPrimitive::area_explosion:return .20;
    case AttackPrimitive::summon:return .30;
    case AttackPrimitive::aimed_projectile:
    case AttackPrimitive::radial_projectile:
    case AttackPrimitive::spread_projectile:return .30;
    case AttackPrimitive::uncertain_area:return .45;
    case AttackPrimitive::uncertain_corridor:return .40;
    case AttackPrimitive::unknown:break;
    }
    return .20;
}
AttackPrimitive primitive_from_model(const MonsterGeometryRef& model) {
    const std::string kind=lower_copy(model.kind);
    const std::string pattern=lower_copy(model.pattern);
    if(kind=="laser")return AttackPrimitive::laser;
    if(kind.find("explos")!=std::string::npos||kind=="bomb")
        return AttackPrimitive::area_explosion;
    if(kind.find("falling")!=std::string::npos||kind.find("jump")!=std::string::npos)
        return AttackPrimitive::jump_landing;
    if(kind.find("rock-wave")!=std::string::npos)return AttackPrimitive::area_explosion;
    if(kind=="projectile"||kind.find("projectile")!=std::string::npos) {
        if(pattern.find("radial")!=std::string::npos)return AttackPrimitive::radial_projectile;
        if(pattern.find("spread")!=std::string::npos||pattern.find("fan")!=std::string::npos)
            return AttackPrimitive::spread_projectile;
        if(pattern.find("stream")!=std::string::npos||pattern.find("aimed")!=std::string::npos||
           pattern.find("burst")!=std::string::npos)return AttackPrimitive::aimed_projectile;
        return AttackPrimitive::aimed_projectile;
    }
    if(kind.find("summon")!=std::string::npos)return AttackPrimitive::summon;
    if(kind.find("charge")!=std::string::npos)return AttackPrimitive::charge;
    return AttackPrimitive::unknown;
}
AttackEvidence evidence_from_model(const MonsterGeometryRef& model) {
    if(model.planning_validated&&model.pre_spawn_verified)return AttackEvidence::verified;
    if(model.pre_spawn_verified||model.geometry_verified||model.runtime_geometry_verified)
        return AttackEvidence::inferred;
    return AttackEvidence::candidate;
}
double confidence_from_model(const MonsterGeometryRef& model,double trigger_range) {
    double confidence=model.planning_validated?.92:
        model.pre_spawn_verified?.72:model.geometry_verified?.58:.38;
    if(trigger_range>1)confidence-=.12;
    return std::clamp(confidence,.10,.95);
}
AttackTargeting model_targeting(const MonsterGeometryRef& model,const Entity& entity,
                                const MechanismObservation* observation) {
    const std::string axis=lower_copy(model.pattern_direction);
    if(axis=="aimed"||axis=="near_aimed")return AttackTargeting::player_position;
    if(axis=="target_pos")return AttackTargeting::source_target;
    if(!axis.empty()&&axis!="fixed")return AttackTargeting::fixed_direction;
    if(observation) {
        AttackTargeting targeting=targeting_from_text(observation->attack_target_semantics);
        if(targeting!=AttackTargeting::unknown)return targeting;
        if(observation->behavior_model.is_object())
            targeting=targeting_from_text(json_string(observation->behavior_model,"direction"));
        if(targeting!=AttackTargeting::unknown)return targeting;
    }
    const std::string pattern=lower_copy(model.pattern);
    if(pattern.find("radial")!=std::string::npos||pattern.find("spread")!=std::string::npos)
        return AttackTargeting::fixed_direction;
    if(entity.target&&entity.target_pos.finite()&&entity.target_pos.norm()>1)
        return AttackTargeting::source_target;
    return AttackTargeting::unknown;
}
AttackEvidence evidence_from_observation(const MechanismObservation& observation) {
    const std::string evidence=lower_copy(observation.attack_type_evidence);
    if(observation.attack_timing_verified&&
       (evidence.find("strict")!=std::string::npos||evidence.find("verified")!=std::string::npos))
        return AttackEvidence::verified;
    if(evidence.find("candidate")!=std::string::npos||
       evidence.find("static_decompiled")!=std::string::npos)
        return AttackEvidence::candidate;
    if(!observation.unknown_state&&observation.attack_type!="Unknown")
        return AttackEvidence::inferred;
    return AttackEvidence::unknown;
}
}
std::vector<EnemyIntent> EnemyIntentPredictor::predict(const Frame& frame,const MechanismFrame* mechanisms) {
    std::vector<EnemyIntent> intents;
    coverage_={};
    std::unordered_map<uint32_t,const MechanismObservation*> observations;
    if(mechanisms&&mechanisms->valid&&mechanisms->pid==frame.pid&&mechanisms->room==frame.room) {
        for(const auto& observation:mechanisms->enemies)
            observations[observation.address]=&observation;
        coverage_.observations=int(mechanisms->enemies.size());
    }
    auto add_intent=[&](EnemyIntent intent) {
        if(intent.primitive==AttackPrimitive::unknown)return;
        for(auto& existing:intents) {
            if(existing.enemy_id!=intent.enemy_id||existing.primitive!=intent.primitive)continue;
            const bool both_timed=existing.trigger_time>=0&&intent.trigger_time>=0;
            if(both_timed&&std::abs(existing.trigger_time-intent.trigger_time)>0.12)continue;
            const bool better=evidence_rank(intent.evidence)>evidence_rank(existing.evidence)||
                (evidence_rank(intent.evidence)==evidence_rank(existing.evidence)&&
                 intent.confidence>existing.confidence)||
                (intent.can_instantiate&&!existing.can_instantiate);
            if(better)existing=intent;
            else {
                if(existing.projectile_speed<=0)existing.projectile_speed=intent.projectile_speed;
                if(existing.collision_radius<=0)existing.collision_radius=intent.collision_radius;
                if(existing.trigger_time<0)existing.trigger_time=intent.trigger_time;
                if(existing.length<=0)existing.length=intent.length;
                existing.confidence=std::max(existing.confidence,intent.confidence);
                existing.can_instantiate=existing.can_instantiate||intent.can_instantiate;
            }
            return;
        }
        intents.push_back(std::move(intent));
    };
    for(const auto& entity:frame.entities) {
        if(!entity.alive()||entity.friendly||!entity.enemy())continue;
        ++coverage_.enemies;
        const MechanismObservation* observation=nullptr;
        if(const auto found=observations.find(entity.address);found!=observations.end())
            observation=found->second;
        if(observation&&!observation->unknown_state&&entity.state>=0)++coverage_.state_known;
        if(!entity.animation.empty())++coverage_.animation_known;
        if(entity.target||entity.target_pos.norm()>1)++coverage_.target_known;
        if(entity.vel.finite())++coverage_.velocity_known;
        if(entity.projectile_cooldown!=0)++coverage_.cooldown_known;
        if(entity.projectile_delay!=0)++coverage_.delay_known;
        if(entity.ai_v1.norm()>1e-9||entity.ai_v2.norm()>1e-9||entity.ai_i1||entity.ai_i2)
            ++coverage_.ai_known;
        if(observation&&observation->predicted_trigger_frame>=0)++coverage_.timing_known;
        std::vector<const MonsterGeometryRef*> models;
        if(config_.use_geometry_models&&mechanisms)for(const auto& model:mechanisms->geometry_models) {
            if(model.source!=entity.address)continue;
            if(model.source_state>=0&&model.source_state!=entity.state)continue;
            if(!animation_matches(model.source_animation,entity.animation))continue;
            if(model.source_ai_i1>=0&&model.source_ai_i1!=entity.ai_i1)continue;
            if(model.source_ai_i2>=0&&model.source_ai_i2!=entity.ai_i2)continue;
            models.push_back(&model);
        }
        if(!models.empty())++coverage_.geometry_known;
        for(const auto* model:models) {
            EnemyIntent intent;
            intent.enemy_id=entity.address;intent.seed=entity.seed;
            intent.type=entity.type;intent.variant=entity.variant;intent.subtype=entity.subtype;
            intent.state=entity.state;intent.state_frame=entity.state_frame;
            intent.animation=entity.animation;intent.animation_frame=entity.animation_frame;
            intent.position=entity.pos;intent.velocity=entity.vel;
            intent.target_position=entity.target_pos;
            intent.projectile_cooldown=entity.projectile_cooldown;
            intent.projectile_delay=entity.projectile_delay;
            intent.primitive=primitive_from_model(*model);
            if(intent.primitive==AttackPrimitive::unknown)continue;
            intent.evidence=evidence_from_model(*model);
            intent.targeting=model_targeting(*model,entity,observation);
            intent.confidence=confidence_from_model(*model,
                std::max(0,model->trigger_animation_frame_max-model->trigger_animation_frame_min));
            if(model->pattern.empty())intent.confidence=std::min(intent.confidence,.55);
            intent.damage=entity.damage;
            intent.projectile_speed=model->speed;
            intent.collision_radius=model->radius;
            intent.projectile_count=std::max(1,model->pattern_count);
            intent.duration=model->duration>0?model->duration/30.0:default_duration(intent.primitive);
            if(!model->pattern_offsets_degrees.empty()) {
                const auto [min,max]=std::minmax_element(model->pattern_offsets_degrees.begin(),
                    model->pattern_offsets_degrees.end());
                intent.spread_angle=*max-*min;
            }else if(model->pattern_spacing_degrees>0&&intent.projectile_count>1)
                intent.spread_angle=model->pattern_spacing_degrees*(intent.projectile_count-1);
            if(intent.targeting==AttackTargeting::fixed_direction||
               intent.targeting==AttackTargeting::source_target)
                intent.direction=fixed_direction(entity,frame,model->pattern_direction);
            if(intent.direction.norm()<1e-9)
                intent.direction=fixed_direction(entity,frame,"ai_v1_angle");
            if(intent.direction.norm()<1e-9&&entity.vel.norm()>1)
                intent.direction=entity.vel.unit();
            if(intent.direction.norm()<1e-9)
                intent.direction={entity.sprite_flip_x?-1.0:1.0,0};
            if(intent.direction.norm()<1e-9&&model->pattern_phase_degrees!=0)
                intent.direction=rotated({1,0},model->pattern_phase_degrees*pi/180);
            double trigger=-1;
            if(model->trigger_animation_frame>=0)trigger=model->trigger_animation_frame;
            else if(model->trigger_animation_frame_min>=0)
                trigger=.5*(model->trigger_animation_frame_min+model->trigger_animation_frame_max);
            if(trigger>=0) {
                const double updates=updates_to_frame(entity,trigger);
                if(std::isfinite(updates)&&updates>=0)intent.trigger_time=updates/30.0;
            }
            if(intent.trigger_time<0&&entity.projectile_delay>0&&
               (intent.primitive==AttackPrimitive::aimed_projectile||
                intent.primitive==AttackPrimitive::radial_projectile||
                intent.primitive==AttackPrimitive::spread_projectile||
                intent.primitive==AttackPrimitive::laser)) {
                intent.trigger_time=entity.projectile_delay/30.0;
                intent.confidence=std::min(intent.confidence,.45);
            }
            intent.trigger_frame=intent.trigger_time>=0?
                int64_t(frame.clock)+int64_t(std::lround(intent.trigger_time*30)):-1;
            intent.end_frame=intent.trigger_frame>=0?
                intent.trigger_frame+int64_t(std::lround(intent.duration*30)):-1;
            intent.can_instantiate=intent.trigger_time>=0&&intent.targeting!=AttackTargeting::unknown&&
                (intent.primitive==AttackPrimitive::charge||
                 intent.primitive==AttackPrimitive::jump_landing||
                 intent.primitive==AttackPrimitive::summon||
                 intent.primitive==AttackPrimitive::self_explosion||
                 intent.primitive==AttackPrimitive::area_explosion||
                 (intent.projectile_speed>0&&intent.collision_radius>0)||
                 intent.primitive==AttackPrimitive::laser);
            if(intent.targeting==AttackTargeting::source_target&&intent.target_position.norm()<=1)
                intent.can_instantiate=false;
            if(intent.targeting==AttackTargeting::fixed_direction&&intent.direction.norm()<=1e-9&&
               intent.primitive!=AttackPrimitive::radial_projectile&&
               intent.primitive!=AttackPrimitive::spread_projectile&&
               intent.primitive!=AttackPrimitive::area_explosion&&
               intent.primitive!=AttackPrimitive::self_explosion)
                intent.can_instantiate=false;
            if(intent.primitive==AttackPrimitive::charge)
                intent.length=std::max(180.0,entity.vel.norm()*.5+80);
            intent.prediction_source="mechanism.geometry:"+
                (model->id.empty()?std::string{"unnamed"}:model->id);
            intent.attack_type=model->pattern.empty()?model->kind:model->pattern;
            intent.evidence_status=model->evidence_status;
            intent.evidence_detail={{"geometry_id",model->id},{"source_state",model->source_state},
                {"source_animation",model->source_animation},{"pattern",model->pattern},
                {"pattern_direction",model->pattern_direction},
                {"trigger_frame_min",model->trigger_animation_frame_min},
                {"trigger_frame_max",model->trigger_animation_frame_max},
                {"planning_validated",model->planning_validated},
                {"pre_spawn_verified",model->pre_spawn_verified}};
            add_intent(std::move(intent));
        }
        if(config_.use_mechanism_warnings&&mechanisms)for(const auto& warning:mechanisms->warnings) {
            if(warning.source!=entity.address||warning.until<=warning.start)continue;
            EnemyIntent intent;
            intent.enemy_id=entity.address;intent.seed=entity.seed;
            intent.type=entity.type;intent.variant=entity.variant;intent.subtype=entity.subtype;
            intent.state=entity.state;intent.state_frame=entity.state_frame;
            intent.animation=entity.animation;intent.animation_frame=entity.animation_frame;
            intent.position=entity.pos;intent.velocity=entity.vel;intent.target_position=entity.target_pos;
            intent.projectile_cooldown=entity.projectile_cooldown;
            intent.projectile_delay=entity.projectile_delay;
            const std::string kind=lower_copy(warning.kind);
            if(kind.find("laser")!=std::string::npos)intent.primitive=AttackPrimitive::laser;
            else if(kind.find("charge")!=std::string::npos||kind.find("slide")!=std::string::npos)
                intent.primitive=AttackPrimitive::charge;
            else if(kind.find("jump")!=std::string::npos||kind.find("landing")!=std::string::npos)
                intent.primitive=AttackPrimitive::jump_landing;
            else if(kind.find("explos")!=std::string::npos||kind.find("bomb")!=std::string::npos||
                    kind.find("blast")!=std::string::npos)intent.primitive=AttackPrimitive::area_explosion;
            else if(kind.find("summon")!=std::string::npos)intent.primitive=AttackPrimitive::summon;
            else if(kind.find("projectile")!=std::string::npos)
                intent.primitive=kind.find("burst")!=std::string::npos?
                    AttackPrimitive::radial_projectile:AttackPrimitive::aimed_projectile;
            else continue;
            intent.evidence=warning.planning_validated&&warning.timing_verified?
                AttackEvidence::verified:warning.planning_validated?
                AttackEvidence::inferred:AttackEvidence::candidate;
            intent.targeting=AttackTargeting::fixed_direction;
            intent.trigger_time=warning.start;
            intent.trigger_frame=warning.predicted_trigger_frame>=0?warning.predicted_trigger_frame:
                int64_t(frame.clock)+int64_t(std::lround(warning.start*30));
            intent.duration=std::max(.05,warning.until-warning.start);
            intent.end_frame=warning.predicted_end_frame>=0?warning.predicted_end_frame:
                intent.trigger_frame+int64_t(std::lround(intent.duration*30));
            intent.confidence=warning.confidence;
            intent.damage=entity.damage;
            intent.collision_radius=warning.radius;
            intent.projectile_speed=warning.vel.norm();
            intent.direction=(warning.end-warning.pos).unit();
            intent.length=distance(warning.pos,warning.end);
            intent.projectile_count=kind.find("burst")!=std::string::npos?4:1;
            intent.can_instantiate=intent.collision_radius>0&&
                (intent.primitive==AttackPrimitive::laser||
                 intent.primitive==AttackPrimitive::charge||
                 intent.primitive==AttackPrimitive::jump_landing||
                 intent.primitive==AttackPrimitive::area_explosion||
                 intent.primitive==AttackPrimitive::summon||
                 (intent.projectile_speed>0&&intent.length>0));
            intent.prediction_source="mechanism.warning:"+warning.rule_id;
            intent.attack_type=warning.kind;intent.evidence_status=warning.evidence_status;
            intent.evidence_detail={{"warning_rule",warning.rule_id},
                {"planning_validated",warning.planning_validated},
                {"timing_verified",warning.timing_verified},{"shape",warning.shape}};
            add_intent(std::move(intent));
        }
        if(observation&&observation->attack_type!="Unknown") {
            EnemyIntent intent;
            intent.enemy_id=entity.address;intent.seed=entity.seed;
            intent.type=entity.type;intent.variant=entity.variant;intent.subtype=entity.subtype;
            intent.state=entity.state;intent.state_frame=entity.state_frame;
            intent.animation=entity.animation;intent.animation_frame=entity.animation_frame;
            intent.position=entity.pos;intent.velocity=entity.vel;intent.target_position=entity.target_pos;
            intent.projectile_cooldown=entity.projectile_cooldown;
            intent.projectile_delay=entity.projectile_delay;
            intent.primitive=primitive_from_text(observation->attack_type);
            if(intent.primitive!=AttackPrimitive::unknown) {
                intent.evidence=evidence_from_observation(*observation);
                intent.targeting=targeting_from_text(observation->attack_target_semantics);
                if(intent.targeting==AttackTargeting::unknown&&
                   observation->behavior_model.is_object())
                    intent.targeting=targeting_from_text(
                        json_string(observation->behavior_model,"direction"));
                if(intent.targeting==AttackTargeting::unknown&&entity.target==frame.player.body.address)
                    intent.targeting=AttackTargeting::player_position;
                if(intent.targeting==AttackTargeting::unknown&&entity.target_pos.norm()>1)
                    intent.targeting=AttackTargeting::source_target;
                intent.confidence=std::clamp(observation->confidence,.1,.95);
                intent.damage=entity.damage;
                if(intent.primitive==AttackPrimitive::charge) {
                    intent.collision_radius=entity.radius;
                    intent.length=std::max(180.0,entity.vel.norm()*.5+80);
                }else if(intent.primitive==AttackPrimitive::jump_landing) {
                    intent.collision_radius=std::max(24.0,entity.radius*1.5);
                }else if(intent.primitive==AttackPrimitive::self_explosion||
                         intent.primitive==AttackPrimitive::area_explosion) {
                    if(lower_copy(entity.animation).find("self")!=std::string::npos)
                        intent.primitive=AttackPrimitive::self_explosion;
                    intent.collision_radius=entity.blast_radius>0?entity.blast_radius:80;
                }else if(intent.primitive==AttackPrimitive::summon) {
                    intent.collision_radius=36;
                }
                if(observation->predicted_trigger_frame>=0)
                    intent.trigger_time=(observation->predicted_trigger_frame-
                        int64_t(frame.clock))/30.0;
                else if(entity.projectile_delay>0&&
                    (intent.primitive==AttackPrimitive::aimed_projectile||
                     intent.primitive==AttackPrimitive::radial_projectile||
                     intent.primitive==AttackPrimitive::spread_projectile||
                     intent.primitive==AttackPrimitive::laser))
                    intent.trigger_time=entity.projectile_delay/30.0;
                intent.trigger_frame=intent.trigger_time>=0?
                    int64_t(frame.clock)+int64_t(std::lround(intent.trigger_time*30)):-1;
                intent.duration=default_duration(intent.primitive);
                intent.end_frame=intent.trigger_frame>=0?
                    intent.trigger_frame+int64_t(std::lround(intent.duration*30)):-1;
                intent.can_instantiate=intent.trigger_time>=0&&
                    intent.targeting!=AttackTargeting::unknown&&
                    (intent.primitive!=AttackPrimitive::aimed_projectile||intent.projectile_speed>0)&&
                    (intent.primitive!=AttackPrimitive::radial_projectile||intent.projectile_speed>0)&&
                    (intent.primitive!=AttackPrimitive::spread_projectile||intent.projectile_speed>0)&&
                    (intent.primitive!=AttackPrimitive::laser||intent.length>0);
                intent.prediction_source="mechanism.observation:"+observation->attack_type_evidence;
                intent.attack_type=observation->attack_type;
                intent.evidence_status=observation->attack_type_evidence;
                intent.evidence_detail={{"attack_type",observation->attack_type},
                    {"attack_type_evidence",observation->attack_type_evidence},
                    {"state_semantics",observation->state_semantics},
                    {"attack_target_semantics",observation->attack_target_semantics},
                    {"projectile_cooldown",entity.projectile_cooldown},
                    {"projectile_delay",entity.projectile_delay}};
                add_intent(std::move(intent));
            }
        }
        if(config_.use_animation_cues) {
            const std::string animation=lower_copy(entity.animation);
            EnemyIntent intent;
            intent.enemy_id=entity.address;intent.seed=entity.seed;
            intent.type=entity.type;intent.variant=entity.variant;intent.subtype=entity.subtype;
            intent.state=entity.state;intent.state_frame=entity.state_frame;
            intent.animation=entity.animation;intent.animation_frame=entity.animation_frame;
            intent.position=entity.pos;intent.velocity=entity.vel;intent.target_position=entity.target_pos;
            intent.projectile_cooldown=entity.projectile_cooldown;
            intent.projectile_delay=entity.projectile_delay;
            intent.evidence=AttackEvidence::candidate;
            intent.confidence=.30;
            intent.prediction_source="reader.animation_cue";
            intent.attack_type=entity.animation;
            if(contains_any(animation,{"charge","dash","roll","ram","tackle","slide"})&&
               entity.vel.norm()>40) {
                intent.primitive=AttackPrimitive::charge;
                intent.targeting=AttackTargeting::player_position;
                intent.trigger_time=0;
                intent.duration=.35;
                intent.collision_radius=entity.radius;
                intent.length=std::max(180.0,entity.vel.norm()*.5+80);
                intent.damage=entity.damage;
                intent.can_instantiate=true;
                intent.evidence_status="observed dash/charge animation and velocity";
            }else if(contains_any(animation,{"land","stomp","jump"})) {
                intent.primitive=AttackPrimitive::jump_landing;
                intent.targeting=AttackTargeting::player_position;
                intent.trigger_time=.15;
                intent.duration=.20;
                intent.collision_radius=std::max(24.0,entity.radius*1.5);
                intent.damage=entity.damage;
                intent.can_instantiate=true;
                intent.evidence_status="observed landing animation; landing time extrapolated";
            }else if(contains_any(animation,{"explode","explosion","blast"})) {
                intent.primitive=animation.find("self")!=std::string::npos?
                    AttackPrimitive::self_explosion:AttackPrimitive::area_explosion;
                intent.targeting=intent.primitive==AttackPrimitive::self_explosion?
                    AttackTargeting::self:AttackTargeting::area;
                intent.trigger_time=.10;
                intent.duration=.20;
                intent.collision_radius=entity.blast_radius>0?entity.blast_radius:80;
                intent.damage=entity.damage;
                intent.can_instantiate=true;
                intent.evidence_status="observed explosion animation cue";
            }else if(contains_any(animation,{"summon","spawn"})) {
                intent.primitive=AttackPrimitive::summon;
                intent.targeting=AttackTargeting::area;
                intent.trigger_time=.10;
                intent.duration=.30;
                intent.collision_radius=36;
                intent.damage=entity.damage;
                intent.can_instantiate=true;
                intent.evidence_status="observed summon/spawn animation cue";
            }
            if(intent.primitive!=AttackPrimitive::unknown) {
                intent.trigger_frame=int64_t(frame.clock)+
                    int64_t(std::lround(intent.trigger_time*30));
                intent.end_frame=intent.trigger_frame+
                    int64_t(std::lround(intent.duration*30));
                add_intent(std::move(intent));
            }
        }
    }
    std::sort(intents.begin(),intents.end(),[](const EnemyIntent& a,const EnemyIntent& b){
        const bool a_timed=a.trigger_time>=0,b_timed=b.trigger_time>=0;
        if(a_timed!=b_timed)return a_timed;
        if(a.trigger_time!=b.trigger_time)return a.trigger_time<b.trigger_time;
        return a.confidence>b.confidence;
    });
    if(int(intents.size())>config_.max_intents)intents.resize(size_t(config_.max_intents));
    coverage_.verified=0;coverage_.inferred=0;coverage_.candidate=0;coverage_.unknown=0;
    std::unordered_set<uint32_t> covered_enemies;
    for(const auto& intent:intents) {
        covered_enemies.insert(intent.enemy_id);
        switch(intent.evidence) {
        case AttackEvidence::verified:++coverage_.verified;break;
        case AttackEvidence::inferred:++coverage_.inferred;break;
        case AttackEvidence::candidate:++coverage_.candidate;break;
        case AttackEvidence::unknown:++coverage_.unknown;break;
        }
    }
    // Enemies for which no primitive could be recognised are the unknown
    // mechanisms. They are counted separately from low-confidence intents.
    coverage_.unknown=std::max(coverage_.unknown,
        coverage_.enemies-int(covered_enemies.size()));
    return intents;
}
std::optional<AttackForecast> EnemyIntentPredictor::instantiate(const EnemyIntent& intent,
    const Frame& frame,Vec player_at_trigger,double now) const {
    if(!intent.can_instantiate||!intent.position.finite())return std::nullopt;
    if(intent.trigger_time<0)return std::nullopt;
    AttackForecast forecast;
    forecast.enemy_id=intent.enemy_id;forecast.seed=intent.seed;
    forecast.type=intent.type;forecast.variant=intent.variant;forecast.subtype=intent.subtype;
    forecast.primitive=intent.primitive;forecast.evidence=intent.evidence;
    forecast.targeting=intent.targeting;
    forecast.trigger_time=intent.trigger_time;
    forecast.trigger_frame=intent.trigger_frame;
    forecast.duration=std::max(.05,intent.duration);
    forecast.end_frame=forecast.trigger_frame+
        int64_t(std::lround(forecast.duration*30));
    forecast.spawn_position=intent.position;
    forecast.projectile_speed=intent.projectile_speed;
    forecast.spread_angle=intent.spread_angle;
    forecast.collision_radius=intent.collision_radius;
    forecast.damage=intent.damage;
    forecast.length=intent.length;
    forecast.risk_weight=intent.risk_weight;
    forecast.unknown=intent.unknown;
    forecast.projectile_count=intent.projectile_count;
    forecast.prediction_confidence=intent.confidence;
    forecast.prediction_source=intent.prediction_source;
    forecast.attack_type=intent.attack_type;
    forecast.evidence_status=intent.evidence_status;
    forecast.evidence_detail=intent.evidence_detail;
    forecast.forecast_id=std::to_string(intent.enemy_id)+":"+
        attack_primitive_name(intent.primitive)+":"+std::to_string(intent.trigger_frame);
    Vec target{};
    switch(intent.targeting) {
    case AttackTargeting::player_position:
    case AttackTargeting::player_velocity_lead:
        target=player_at_trigger;
        forecast.prediction_confidence=std::max(.1,forecast.prediction_confidence-
            (now>intent.trigger_time+0.08?.10:0));
        break;
    case AttackTargeting::source_target:
        target=intent.target_position;
        break;
    case AttackTargeting::fixed_direction:
        target=intent.position+intent.direction*std::max(1.0,intent.length);
        break;
    case AttackTargeting::self:
    case AttackTargeting::area:
        target=intent.target_position.finite()&&intent.target_position.norm()>1?
            intent.target_position:intent.position;
        break;
    case AttackTargeting::unknown:
        return std::nullopt;
    }
    forecast.target_position=target;
    Vec direction=intent.direction;
    if(intent.targeting==AttackTargeting::player_position||
       intent.targeting==AttackTargeting::player_velocity_lead||
       intent.targeting==AttackTargeting::source_target)
        direction=(target-intent.position).unit();
    if(direction.norm()<1e-9)direction={1,0};
    forecast.direction=direction;
    if(intent.primitive==AttackPrimitive::laser&&forecast.length<=0)
        forecast.length=std::max(600.0,std::hypot(frame.grid.width*40.0,frame.grid.height*40.0));
    if(intent.primitive==AttackPrimitive::charge&&forecast.length<=0)
        forecast.length=std::max(180.0,intent.velocity.norm()*.5+80);
    if(intent.primitive==AttackPrimitive::jump_landing||
       intent.primitive==AttackPrimitive::self_explosion||
       intent.primitive==AttackPrimitive::area_explosion||
       intent.primitive==AttackPrimitive::summon)
        if(forecast.collision_radius<=0)forecast.collision_radius=32;
    return forecast;
}
ForecastPath EnemyIntentPredictor::instantiate_path(const std::vector<EnemyIntent>& intents,
    const Frame& frame,const std::vector<Vec>& path,double dt) const {
    ForecastPath output;
    if(path.empty()||dt<=0)return output;
    const double duration=double(path.size()-1)*dt;
    for(const auto& intent:intents) {
        if(!intent.can_instantiate||intent.trigger_time<0) {
            ++output.skipped_no_geometry;continue;
        }
        if(intent.trigger_time>duration+.10) {
            ++output.skipped_out_of_horizon;continue;
        }
        const size_t index=size_t(std::clamp(
            int(std::lround(intent.trigger_time/dt)),0,int(path.size()-1)));
        const auto forecast=instantiate(intent,frame,path[index],intent.trigger_time);
        if(!forecast) {
            ++output.skipped_no_target;continue;
        }
        output.forecasts.push_back(*forecast);
        ++output.instantiated;
    }
    return output;
}
}
