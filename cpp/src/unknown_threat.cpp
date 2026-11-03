#include "gamebot/unknown_threat.hpp"
#include "gamebot/planner.hpp"
#include <algorithm>
#include <cmath>
#include <limits>
#include <map>

namespace gamebot {
const char* unknown_classification_name(UnknownClassification value) {
    switch(value) {
    case UnknownClassification::identified:return "identified";
    case UnknownClassification::uncertain_attack:return "uncertain_attack";
    case UnknownClassification::tracked:return "tracked";
    case UnknownClassification::unknown:break;
    }
    return "unknown";
}
namespace {
std::string lower_copy(std::string value) {
    std::transform(value.begin(),value.end(),value.begin(),
        [](unsigned char c){return char(std::tolower(c));});
    return value;
}
bool contains_any(const std::string& text,std::initializer_list<const char*> needles) {
    for(const char* needle:needles)if(text.find(needle)!=std::string::npos)return true;
    return false;
}
uint64_t identity_key(uint32_t address,uint32_t seed) {
    return (uint64_t(address)<<32)|seed;
}
bool has_precise_attack(const Entity& entity,const MechanismFrame* mechanisms) {
    if(!mechanisms)return false;
    for(const auto& warning:mechanisms->warnings)
        if(warning.source==entity.address&&warning.planning_validated&&warning.until>0)
            return true;
    for(const auto& model:mechanisms->geometry_models) {
        if(model.source!=entity.address)continue;
        if(model.kind=="contact")continue;
        if(model.source_state>=0&&model.source_state!=entity.state)continue;
        if(model.planning_validated||model.pre_spawn_verified)return true;
    }
    return false;
}
bool has_explosion_type(const Entity& entity) {
    return entity.type==4||entity.type==16||entity.type==25||entity.type==250||
        entity.type==292||entity.type==295||(entity.type==55&&entity.variant>=1&&entity.variant<=2)||
        entity.bomb_explosion_fields_known;
}
bool has_attack_cue(const Entity& entity,const MechanismObservation* observation,
                    const MechanismFrame* mechanisms) {
    if(observation&&observation->attack_type!="Unknown")return true;
    if(observation&&observation->behavior_model.is_object()) {
        const auto& behavior=observation->behavior_model;
        if(behavior.contains("attack_call_candidate")||behavior.contains("strict_attack_objects")||
           behavior.contains("direct_ai_attack_calls")||behavior.contains("attack_event_candidate"))
            return true;
    }
    const std::string animation=lower_copy(entity.animation);
    if(contains_any(animation,{"attack","shoot","spit","charge","dash","roll","ram","tackle",
        "slide","jump","land","stomp","explod","explos","bomb","blast","laser","beam","summon","spawn",
        "cast","windup","scream"}))return true;
    if(entity.vel.norm()>180)return true;
    if(entity.projectile_cooldown>0||entity.projectile_delay>0)return true;
    if(entity.ai_i1!=0||entity.ai_i2!=0)return true;
    if(mechanisms)for(const auto& warning:mechanisms->warnings)
        if(warning.source==entity.address&&warning.planning_validated)return true;
    return false;
}
double attack_cue_confidence(const Entity& entity,const MechanismObservation* observation,
                             const MechanismFrame* mechanisms) {
    if(observation&&observation->attack_type!="Unknown")return .45;
    if(observation&&observation->behavior_model.is_object()&&
       (observation->behavior_model.contains("attack_call_candidate")||
        observation->behavior_model.contains("strict_attack_objects")||
        observation->behavior_model.contains("direct_ai_attack_calls")))return .40;
    if(mechanisms)for(const auto& warning:mechanisms->warnings)
        if(warning.source==entity.address&&warning.planning_validated)return .40;
    const std::string animation=lower_copy(entity.animation);
    if(!animation.empty()&&contains_any(animation,{"attack","shoot","spit","charge","dash","roll",
        "ram","tackle","slide","jump","land","stomp","explod","explos","bomb","blast","laser","beam",
        "summon","spawn","cast","windup","scream"}))return .30;
    if(entity.vel.norm()>180)return .35;
    if(entity.projectile_cooldown>0||entity.projectile_delay>0)return .30;
    if(entity.ai_i1!=0||entity.ai_i2!=0)return .25;
    return 0;
}
std::vector<Vec> generic_motion_path(const Entity& entity,double horizon) {
    std::vector<Vec> path;
    Vec position=entity.pos,velocity=entity.vel;
    path.push_back(position);
    const int ticks=std::max(1,int(std::ceil(horizon*30)));
    for(int tick=0;tick<ticks;++tick) {
        advance_native_entity_motion(entity,position,velocity);
        path.push_back(position);
    }
    return path;
}
Vec fallback_direction(const Entity& entity) {
    if(entity.vel.norm()>1)return entity.vel.unit();
    if(entity.ai_v1.norm()>1)return entity.ai_v1.unit();
    if(entity.ai_v2.norm()>1)return entity.ai_v2.unit();
    return {entity.sprite_flip_x?-1.0:1.0,0};
}
json sample_json(const UnknownStateSample& sample) {
    return json{{"frame",sample.frame},{"pos",sample.pos},{"vel",sample.vel},
        {"target",sample.target},{"state",sample.state},{"state_frame",sample.state_frame},
        {"animation",sample.animation},{"animation_frame",sample.animation_frame},
        {"ai_i1",sample.ai_i1},{"ai_i2",sample.ai_i2},
        {"projectile_cooldown",sample.cooldown},{"projectile_delay",sample.delay},
        {"hp",sample.hp},{"precise",sample.precise}};
}
json hypothesis_json(const UnknownHypothesis& hypothesis) {
    return json{{"id",hypothesis.id},{"evidence",hypothesis.evidence},
        {"primitive",hypothesis.primitive},{"confidence",hypothesis.confidence},
        {"risk_weight",hypothesis.risk_weight},{"trigger_time",hypothesis.trigger_time},
        {"radius",hypothesis.radius},{"detail",hypothesis.detail}};
}
json threat_summary(const Threat& threat) {
    return json{{"kind",threat.kind},{"source",threat.source},{"start",threat.start},
        {"until",threat.until},{"radius",threat.radius},{"pos",threat.pos},{"end",threat.end},
        {"virtual",threat.virtual_threat},{"predictive",threat.predictive},
        {"confidence",threat.confidence},{"risk_weight",threat.risk_weight},
        {"forecast_id",threat.forecast_id},{"evidence",threat.evidence_status}};
}
}
UnknownAssessment UnknownThreatManager::assess(const Frame& frame,const MechanismFrame* mechanisms) {
    UnknownAssessment assessment;
    std::unordered_map<uint32_t,const MechanismObservation*> observations;
    if(mechanisms&&mechanisms->valid&&mechanisms->pid==frame.pid&&mechanisms->room==frame.room)
        for(const auto& observation:mechanisms->enemies)
            observations[observation.address]=&observation;
    for(const auto& entity:frame.entities) {
        if(!entity.alive()||entity.friendly||!entity.enemy())continue;
        const uint64_t key=identity_key(entity.address,entity.seed);
        auto [found,inserted]=records_.try_emplace(key);
        auto& record=found->second;
        const MechanismObservation* observation=nullptr;
        if(const auto item=observations.find(entity.address);item!=observations.end())
            observation=item->second;
        const bool precise=has_precise_attack(entity,mechanisms);
        const bool known_body=observation&&!observation->unknown_state;
        UnknownClassification classification=UnknownClassification::unknown;
        if(precise)classification=UnknownClassification::identified;
        else if(known_body) {
            classification=has_attack_cue(entity,observation,mechanisms)?
                UnknownClassification::uncertain_attack:UnknownClassification::tracked;
        }else if(has_attack_cue(entity,observation,mechanisms))
            classification=UnknownClassification::uncertain_attack;
        else classification=UnknownClassification::tracked;
        if(inserted) {
            record.enemy_id=entity.address;record.seed=entity.seed;
            record.type=entity.type;record.variant=entity.variant;record.subtype=entity.subtype;
            record.first_frame=frame.clock;
            record.revisions.push_back(std::to_string(frame.clock)+": first seen as "+
                unknown_classification_name(classification));
        }
        if(record.classification!=classification) {
            record.revisions.push_back(std::to_string(frame.clock)+": "+
                unknown_classification_name(record.classification)+" -> "+
                unknown_classification_name(classification)+
                (precise?" (precise mechanism geometry)":" (reader/state evidence)"));
            record.classification=classification;
        }
        record.last_frame=frame.clock;record.precise=precise;
        record.identity_key=observation?observation->identity_key:
            std::to_string(entity.type)+"."+std::to_string(entity.variant)+"."+
            std::to_string(entity.subtype);
        record.animation=entity.animation;
        UnknownStateSample sample;
        sample.frame=frame.clock;sample.pos=entity.pos;sample.vel=entity.vel;
        sample.target=entity.target_pos;sample.state=entity.state;sample.state_frame=entity.state_frame;
        sample.animation=entity.animation;sample.animation_frame=entity.animation_frame;
        sample.ai_i1=entity.ai_i1;sample.ai_i2=entity.ai_i2;
        sample.cooldown=entity.projectile_cooldown;sample.delay=entity.projectile_delay;
        sample.hp=entity.hp;sample.precise=precise;
        const bool changed=record.history.empty()||
            record.history.back().state!=sample.state||
            record.history.back().animation!=sample.animation||
            record.history.back().hp!=sample.hp||
            distance(record.history.back().pos,sample.pos)>0.5;
        if(!precise||changed) {
            record.history.push_back(sample);
            if(int(record.history.size())>config_.max_history)
                record.history.erase(record.history.begin(),
                    record.history.begin()+std::ptrdiff_t(record.history.size()-config_.max_history));
        }
        ++record.samples;
        if(!precise&&config_.include_tracking&&
           (!known_body||classification==UnknownClassification::uncertain_attack)) {
            Threat threat;
            threat.source=entity.address;threat.seed=entity.seed;
            threat.type=entity.type;threat.variant=entity.variant;threat.subtype=entity.subtype;
            threat.pos=entity.pos;threat.vel={};threat.shape=Shape::disc;
            const double uncertainty=1-(observation?observation->confidence:.2);
            threat.radius=std::max(8.0,entity.radius)+10+std::max(0.0,uncertainty)*20;
            threat.start=0;threat.until=config_.horizon;
            threat.kind="unknown-tracking";threat.damage_class=DamageClass::contact;
            threat.damage_timing=DamageTiming::window;
            threat.damage=entity.damage>0?entity.damage:.5;
            threat.predictive=true;threat.virtual_threat=true;threat.unknown_threat=true;
            threat.confidence=observation?std::clamp(observation->confidence,.15,.8):.2;
            threat.risk_weight=1+std::max(0.0,uncertainty)*1.5;
            threat.forecast_id="unknown-tracking:"+std::to_string(entity.address);
            threat.evidence_status="unknown entity; generic physical tracking, no precise attack geometry";
            threat.data_source="UnknownThreatManager:generic-physics";
            threat.end_condition="reobserve; unknown entity remains tracked";
            threat.motion_path=generic_motion_path(entity,config_.horizon);
            assessment.tracking_threats.push_back(std::move(threat));
        }
        if(!precise&&config_.include_uncertain_attack&&
           has_attack_cue(entity,observation,mechanisms)) {
            const double confidence=std::max(.20,std::min(.65,
                attack_cue_confidence(entity,observation,mechanisms)));
            const double uncertainty=1-confidence;
            const std::string animation=lower_copy(entity.animation);
            const bool explosion=contains_any(animation,{"explod","explos","bomb","blast"})||
                has_explosion_type(entity);
            const bool summon=contains_any(animation,{"summon","spawn"});
            const double player_distance=distance(entity.pos,frame.player.body.pos);
            const bool corridor=entity.vel.norm()>170||
                contains_any(animation,{"charge","dash","roll","ram","tackle","slide","laser","beam"})||
                (!explosion&&!summon&&player_distance<260);
            EnemyIntent intent;
            intent.enemy_id=entity.address;intent.seed=entity.seed;
            intent.type=entity.type;intent.variant=entity.variant;intent.subtype=entity.subtype;
            intent.state=entity.state;intent.state_frame=entity.state_frame;
            intent.animation=entity.animation;intent.animation_frame=entity.animation_frame;
            intent.position=entity.pos;intent.velocity=entity.vel;
            intent.target_position=entity.target_pos.finite()&&entity.target_pos.norm()>1?
                entity.target_pos:entity.pos;
            intent.projectile_cooldown=entity.projectile_cooldown;
            intent.projectile_delay=entity.projectile_delay;
            intent.evidence=AttackEvidence::candidate;
            intent.confidence=confidence;
            intent.unknown=true;
            intent.damage=entity.damage>0?entity.damage:1;
            intent.prediction_source="UnknownThreatManager:uncertain-attack";
            intent.attack_type=corridor?"unknown-corridor":"unknown-area";
            intent.evidence_status="generic conservative envelope; mechanism not confirmed";
            intent.evidence_detail={{"state",entity.state},{"animation",entity.animation},
                {"animation_frame",entity.animation_frame},
                {"projectile_cooldown",entity.projectile_cooldown},
                {"projectile_delay",entity.projectile_delay},
                {"attack_type",observation?observation->attack_type:std::string{"Unknown"}},
                {"state_semantics",observation?observation->state_semantics:std::string{"Unknown"}}};
            if(summon) {
                intent.primitive=AttackPrimitive::summon;
                intent.targeting=AttackTargeting::area;
                intent.trigger_time=.10;
                intent.duration=.30+.50*uncertainty;
                intent.collision_radius=36+uncertainty*40;
                intent.risk_weight=2.5+2*uncertainty;
            }else if(corridor) {
                const Vec direction=fallback_direction(entity);
                intent.primitive=AttackPrimitive::uncertain_corridor;
                intent.trigger_time=0;
                intent.duration=.30+.60*uncertainty;
                if(entity.vel.norm()>40) {
                    intent.targeting=AttackTargeting::fixed_direction;
                    intent.direction=direction;
                }else {
                    // A stationary windup could lunge at the player; keep the
                    // corridor action-conditioned instead of choosing a
                    // fabricated fixed direction.
                    intent.targeting=AttackTargeting::player_position;
                }
                const double speed=std::max(entity.vel.norm(),140.0);
                intent.length=std::min(420.0,std::max(140.0,
                    speed*config_.horizon+std::max(8.0,entity.radius)*2));
                intent.collision_radius=std::max(8.0,entity.radius)+10+uncertainty*28;
                intent.risk_weight=3+2*uncertainty;
            }else {
                intent.primitive=AttackPrimitive::uncertain_area;
                intent.targeting=AttackTargeting::area;
                intent.trigger_time=.12+.20*uncertainty;
                intent.duration=.30+.60*uncertainty;
                const double base=explosion?std::max(entity.blast_radius,entity.radius*2):
                    std::max(8.0,entity.radius)+22;
                intent.collision_radius=base+uncertainty*96;
                intent.risk_weight=2.5+2*uncertainty;
            }
            intent.trigger_frame=int64_t(frame.clock)+
                int64_t(std::lround(intent.trigger_time*30));
            intent.end_frame=intent.trigger_frame+
                int64_t(std::lround(intent.duration*30));
            intent.can_instantiate=true;
            assessment.attack_intents.push_back(std::move(intent));
            UnknownHypothesis hypothesis;
            hypothesis.id="unknown:"+std::to_string(entity.address)+":"+
                attack_primitive_name(assessment.attack_intents.back().primitive);
            hypothesis.evidence=assessment.attack_intents.back().evidence_status;
            hypothesis.primitive=attack_primitive_name(assessment.attack_intents.back().primitive);
            hypothesis.confidence=confidence;
            hypothesis.risk_weight=assessment.attack_intents.back().risk_weight;
            hypothesis.trigger_time=assessment.attack_intents.back().trigger_time;
            hypothesis.radius=assessment.attack_intents.back().collision_radius;
            hypothesis.detail=assessment.attack_intents.back().evidence_detail;
            record.hypotheses.push_back(std::move(hypothesis));
            if(int(record.hypotheses.size())>32)record.hypotheses.erase(record.hypotheses.begin());
            const auto& attack=assessment.attack_intents.back();
            bool near=false;
            if(attack.primitive==AttackPrimitive::uncertain_corridor) {
                const Vec a=attack.position;
                Vec direction=attack.direction;
                if(direction.norm()<1e-9)
                    direction=(frame.player.body.pos-a).unit();
                const Vec b=a+direction*std::max(1.0,attack.length);
                near=segment_distance(frame.player.body.pos,a,b)<=
                    attack.collision_radius+frame.player.body.radius+config_.emergency_margin;
            }else {
                const Vec center=attack.target_position.finite()&&attack.target_position.norm()>1?
                    attack.target_position:attack.position;
                near=distance(center,frame.player.body.pos)<=
                    attack.collision_radius+frame.player.body.radius+config_.emergency_margin;
            }
            if(near&&attack.trigger_time<=config_.emergency_horizon&&
               attack.risk_weight>=config_.risk_threshold) {
                if(!assessment.emergency||attack.risk_weight>assessment.emergency_risk) {
                    assessment.emergency=true;
                    assessment.emergency_risk=attack.risk_weight;
                    assessment.emergency_enemy=entity.address;
                    assessment.emergency_reason="high-risk unknown attack: "+
                        std::to_string(entity.address)+":"+
                        attack_primitive_name(attack.primitive);
                    record.revisions.push_back(std::to_string(frame.clock)+
                        ": emergency conservative envelope "+attack_primitive_name(attack.primitive));
                }
            }
        }
        if(record.classification==UnknownClassification::identified)
            ++assessment.identified_entities;
        else if(record.classification==UnknownClassification::uncertain_attack)
            ++assessment.uncertain_attacks;
        else if(known_body)++assessment.tracked_entities;
        else ++assessment.unknown_entities;
        assessment.entities.push_back(record);
    }
    // Track only live entities in the copy; retain bounded history in the
    // manager for entities that temporarily leave the snapshot.
    if(int(records_.size())>config_.max_entities) {
        std::vector<std::pair<int64_t,uint64_t>> order;
        order.reserve(records_.size());
        for(const auto& [key,record]:records_)order.push_back({record.last_frame,key});
        std::sort(order.begin(),order.end());
        const size_t remove=order.size()-size_t(config_.max_entities);
        for(size_t index=0;index<remove;++index)records_.erase(order[index].second);
    }
    return assessment;
}
void UnknownThreatManager::reset() { records_.clear(); }
json unknown_assessment_json(const UnknownAssessment& assessment) {
    json entities=json::array();
    for(const auto& record:assessment.entities) {
        json history=json::array();
        for(const auto& sample:record.history)history.push_back(sample_json(sample));
        json hypotheses=json::array();
        for(const auto& hypothesis:record.hypotheses)hypotheses.push_back(hypothesis_json(hypothesis));
        entities.push_back(json{{"enemy_id",record.enemy_id},{"seed",record.seed},
            {"type",record.type},{"variant",record.variant},{"subtype",record.subtype},
            {"identity_key",record.identity_key},
            {"classification",unknown_classification_name(record.classification)},
            {"first_frame",record.first_frame},{"last_frame",record.last_frame},
            {"samples",record.samples},{"precise",record.precise},
            {"animation",record.animation},{"revisions",record.revisions},
            {"history",history},{"hypotheses",hypotheses}});
    }
    json intents=json::array();
    for(const auto& intent:assessment.attack_intents)intents.push_back(intent_json(intent));
    json threats=json::array();
    for(const auto& threat:assessment.tracking_threats)threats.push_back(threat_summary(threat));
    return json{{"unknown_entities",assessment.unknown_entities},
        {"tracked_entities",assessment.tracked_entities},
        {"uncertain_attacks",assessment.uncertain_attacks},
        {"identified_entities",assessment.identified_entities},
        {"emergency",assessment.emergency},{"emergency_risk",assessment.emergency_risk},
        {"emergency_enemy",assessment.emergency_enemy},
        {"emergency_reason",assessment.emergency_reason},
        {"entities",entities},{"attack_intents",intents},
        {"tracking_threats",threats}};
}
}
