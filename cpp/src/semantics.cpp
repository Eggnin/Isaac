#include "gamebot/semantics.hpp"
#include <algorithm>
#include <array>
#include <cctype>
#include <cmath>
#include <fstream>
#include <sstream>

namespace gamebot {
namespace {
std::string lower(std::string value) {
    std::transform(value.begin(),value.end(),value.begin(),[](unsigned char c){return char(std::tolower(c));});
    return value;
}
bool starts_with(const std::string& value,const std::string& prefix) {
    return value.size()>=prefix.size()&&std::equal(prefix.begin(),prefix.end(),value.begin());
}
bool has_candidate(const std::vector<std::string>& values,const std::string& actual) {
    const std::string normalized=lower(actual);
    return std::any_of(values.begin(),values.end(),[&](const std::string& value){
        return lower(value)==normalized;
    });
}
std::string join_strings(const nlohmann::json& values,const char* key="") {
    std::ostringstream out;bool first=true;
    for(const auto& value:values) {
        if(!first)out<<", ";first=false;
        out<<(*key=='\0'?value.get<std::string>():value.value(key,std::string{}));
    }
    return out.str();
}
std::string attack_call_candidate_type(const json& calls) {
    std::string names;
    for(const auto& call:calls)if(call.is_object())
        names+=" "+lower(call.value("name",std::string{}));
    if(names.find("firebossprojectiles")!=std::string::npos)return "BossProjectileAttack";
    if(names.find("fireprojectiles")!=std::string::npos||
       names.find("projectile/entity helper")!=std::string::npos)return "ProjectileAttack";
    if(names.find("spawn")!=std::string::npos||names.find("create")!=std::string::npos)
        return "SummonOrSpawnAttack";
    return calls.empty()?"Unknown":"AttackCallCandidate";
}
std::string direction_axis(const std::string& animation) {
    const std::string value=lower(animation);
    if(value.find("down")!=std::string::npos)return "down";
    if(value.find("up")!=std::string::npos)return "up";
    if(value.find("left")!=std::string::npos)return "left";
    if(value.find("right")!=std::string::npos)return "right";
    return {};
}
Vec axis_vector(const std::string& axis) {
    if(axis=="down")return {0,1};
    if(axis=="up")return {0,-1};
    if(axis=="left")return {-1,0};
    if(axis=="right")return {1,0};
    return {};
}
void add_reason(std::string& reason,const std::string& value) {
    if(!reason.empty())reason+="; ";
    reason+=value;
}
std::array<int,3> parse_dotted_identity(const std::string& value) {
    std::array<int,3> result{};
    std::istringstream input(value);
    char dot{};
    input>>result[0]>>dot>>result[1]>>dot>>result[2];
    return result;
}
}
const MechanismSemantics::IdentityRule* MechanismSemantics::identity_for(const Entity& entity) const {
    const auto key=std::to_string(entity.type)+"."+std::to_string(entity.variant)+"."+std::to_string(entity.subtype);
    const auto found=identities_.find(key);
    return found==identities_.end()?nullptr:&found->second;
}
std::filesystem::path MechanismSemantics::default_path(const std::filesystem::path& executable_directory) {
    auto current=std::filesystem::absolute(executable_directory);
    for(int depth=0;depth<6;++depth) {
        auto candidate=current/"data/mechanisms/gamebot_runtime_semantics.json";
        if(std::filesystem::exists(candidate))return candidate;
        if(!current.has_parent_path()||current.parent_path()==current)break;
        current=current.parent_path();
    }
    return {};
}
bool MechanismSemantics::load(const std::filesystem::path& path) {
    loaded_=false;identities_.clear();warning_rules_.clear();contact_geometry_.clear();geometry_models_by_identity_.clear();curated_models_={};verified_timings_={};verified_geometry_={};monster_geometry_={};clear_tracking();
    try {
        if(path.empty()||!std::filesystem::exists(path))throw std::runtime_error("Runtime semantics database not found");
        std::ifstream input(path);if(!input)throw std::runtime_error("Cannot open runtime semantics database");
        json database;input>>database;
        if(database.value("format",std::string{})!="isaac-gamebot-runtime-semantics-v1")
            throw std::runtime_error("Unsupported runtime semantics format");
        source_sha256_=database.at("source").value("database_sha256",std::string{});
        curated_models_=database.value("curated_models",json::object());
        verified_timings_=database.value("verified_timings",json::object());
        verified_geometry_=database.value("verified_geometry",json::object());
        const auto geometry_path=path.parent_path()/"gamebot_monster_geometry.json";
        if(std::filesystem::exists(geometry_path)) {
            std::ifstream geometry_input(geometry_path);
            if(!geometry_input)throw std::runtime_error("Cannot open monster geometry database");
            geometry_input>>monster_geometry_;
            if(monster_geometry_.value("format",std::string{})!="isaac-gamebot-monster-geometry-models-v1")
                throw std::runtime_error("Unsupported monster geometry format");
            for(const char* collection:{"models","runtime_models"}) {
                for(const auto& model:monster_geometry_.value(collection,json::array())) {
                    const auto key=model.value("target_identity",std::string{});
                    if(key.empty())continue;
                    double radius=model.contains("contact_radius_bound")&&
                        model.at("contact_radius_bound").is_number()
                        ?model.at("contact_radius_bound").get<double>():0.0;
                    if(radius<=0&&model.contains("static_contact")&&model.at("static_contact").is_object())
                        radius=model.at("static_contact").contains("radius")&&
                            model.at("static_contact").at("radius").is_number()
                            ?model.at("static_contact").at("radius").get<double>():0.0;
                    if(radius<=0&&model.contains("radius_bound")&&model.at("radius_bound").is_number())
                        radius=model.at("radius_bound").get<double>();
                    if(radius<=0&&model.contains("radius")&&model.at("radius").is_object())
                        radius=model.at("radius").contains("mean")&&
                            model.at("radius").at("mean").is_number()
                            ?model.at("radius").at("mean").get<double>():0.0;
                    if(radius>0&&model.value("kind",std::string{})=="contact")
                        contact_geometry_[key]={radius,model.value("evidence_status",std::string{"monster geometry model"})};
                    const auto hazard=parse_dotted_identity(model.value("hazard_identity",std::string{}));
                    MonsterGeometryRef ref;
                    ref.hazard_type=hazard[0];ref.hazard_variant=hazard[1];ref.hazard_subtype=hazard[2];
                    ref.kind=model.value("kind",std::string{});
                    ref.id=model.value("id",std::string{});
                    ref.shape=model.value("shape",std::string{});
                    ref.source_state=model.value("source_state",-1);
                    ref.source_animation=model.value("source_animation",std::string{});
                    ref.evidence_status=model.value("evidence_status",std::string{});
                    ref.radius=radius;
                    if(model.contains("trigger_animation_frame")&&model.at("trigger_animation_frame").is_object()) {
                        const auto& trigger=model.at("trigger_animation_frame");
                        if(trigger.contains("mean")&&trigger.at("mean").is_number())
                            ref.trigger_animation_frame=trigger.at("mean").get<double>();
                        if(trigger.contains("min")&&trigger.at("min").is_number())
                            ref.trigger_animation_frame_min=trigger.at("min").get<int>();
                        if(trigger.contains("max")&&trigger.at("max").is_number())
                            ref.trigger_animation_frame_max=trigger.at("max").get<int>();
                    }else if(model.contains("trigger_animation_frame")&&
                             model.at("trigger_animation_frame").is_number()) {
                        ref.trigger_animation_frame=model.at("trigger_animation_frame").get<double>();
                        ref.trigger_animation_frame_min=model.at("trigger_animation_frame").get<int>();
                        ref.trigger_animation_frame_max=model.at("trigger_animation_frame").get<int>();
                    }
                    if(model.contains("speed")&&model.at("speed").is_object()&&
                       model.at("speed").contains("mean")&&model.at("speed").at("mean").is_number())
                        ref.speed=model.at("speed").at("mean").get<double>();
                    if(model.contains("duration_bound_frames")&&model.at("duration_bound_frames").is_number())
                        ref.duration=model.at("duration_bound_frames").get<double>();
                    else if(model.contains("timeout")&&model.at("timeout").is_object()&&
                            model.at("timeout").contains("max")&&model.at("timeout").at("max").is_number())
                        ref.duration=model.at("timeout").at("max").get<double>();
                    else if(model.contains("active_frames")&&model.at("active_frames").is_object()&&
                            model.at("active_frames").contains("max")&&model.at("active_frames").at("max").is_number())
                        ref.duration=model.at("active_frames").at("max").get<double>();
                    ref.planning_validated=model.value("planning_validated",false);
                    ref.geometry_verified=model.value("geometry_verified",false);
                    ref.runtime_geometry_verified=model.value("runtime_geometry_verified",false);
                    ref.pre_spawn_verified=model.value("pre_spawn_verified",false);
                    geometry_models_by_identity_[key].push_back(std::move(ref));
                }
            }
            const auto pattern_path=path.parent_path()/"gamebot_monster_geometry_patterns.json";
            if(std::filesystem::exists(pattern_path)) {
                std::ifstream pattern_input(pattern_path);
                if(!pattern_input)throw std::runtime_error("Cannot open monster geometry pattern database");
                json patterns;pattern_input>>patterns;
                if(patterns.value("format",std::string{})!="isaac-gamebot-monster-geometry-patterns-v1")
                    throw std::runtime_error("Unsupported monster geometry pattern format");
                for(const auto& rule:patterns.value("rules",json::array())) {
                    const auto identity=rule.value("target_identity",std::string{});
                    const auto kind=rule.value("kind",std::string{"projectile"});
                    const auto animation=rule.value("source_animation",std::string{});
                    const int state=rule.value("source_state",-1);
                    auto& refs=geometry_models_by_identity_[rule.value("emitter_identity",identity)];
                    auto apply_rule=[&](MonsterGeometryRef& ref) {
                        ref.pattern=rule.value("pattern",std::string{});
                        ref.pattern_rule=rule.value("target_identity",identity)+"|"+
                            std::to_string(rule.value("source_state",-1))+"|"+
                            animation+"|"+ref.pattern;
                        ref.pattern_center=rule.value("center",std::string{"source"});
                        ref.pattern_direction=rule.value("direction",std::string{"fixed"});
                        ref.pattern_clock=rule.value("clock",std::string{"animation"});
                        ref.pattern_origin_offset=rule.value("origin_offset",Vec{});
                        ref.pattern_direction_step=rule.value("direction_step_degrees",90.0);
                        ref.pattern_velocity_inherit=rule.value("velocity_inherit",0.0);
                        ref.pattern_aim_lead=rule.value("aim_lead",0.0);
                        ref.pattern_aim_lead_distance=rule.value("aim_lead_distance",0.0);
                        ref.pattern_aim_distance=rule.value("aim_distance",100000.0);
                        ref.pattern_clock_offset=rule.value("clock_offset",0.0);
                        ref.pattern_target_radius=rule.value("target_radius",0.0);
                        ref.pattern_source_lead=rule.value("source_lead",0.0);
                        ref.pattern_origin_speed=rule.value("origin_speed",0.0);
                        ref.pattern_period=rule.value("period_frames",1);
                        ref.emitter_spawner_type=rule.value("emitter_spawner_type",0);
                        ref.required_projectile_flags=rule.value("required_projectile_flags",uint64_t{});
                        ref.pattern_speed_mode=rule.value("speed_mode",std::string{"constant"});
                        ref.source_ai_i1=rule.value("source_ai_i1",ref.source_ai_i1);
                        ref.source_ai_i2=rule.value("source_ai_i2",ref.source_ai_i2);
                        ref.pattern_count=rule.value("count",ref.pattern_count);
                        ref.pattern_samples=rule.value("phase_samples",ref.pattern_samples);
                        ref.pattern_phase_degrees=rule.value("phase_degrees",ref.pattern_phase_degrees);
                        ref.pattern_phase_uncertainty_degrees=
                            rule.value("phase_uncertainty_degrees",ref.pattern_phase_uncertainty_degrees);
                        ref.pattern_spacing_degrees=
                            rule.value("spacing_degrees",ref.pattern_spacing_degrees);
                        if(rule.contains("offset_degrees")&&rule.at("offset_degrees").is_array())
                            ref.pattern_offsets_degrees=
                                rule.at("offset_degrees").get<std::vector<double>>();
                        if(rule.contains("trigger_animation_frame")&&
                           rule.at("trigger_animation_frame").is_number()) {
                            const int exact=rule.at("trigger_animation_frame").get<int>();
                            ref.trigger_animation_frame=exact;
                            ref.trigger_animation_frame_min=exact;
                            ref.trigger_animation_frame_max=exact;
                        }
                        if(rule.contains("trigger_animation_frame_min")&&
                           rule.at("trigger_animation_frame_min").is_number())
                            ref.trigger_animation_frame_min=rule.at("trigger_animation_frame_min").get<int>();
                        if(rule.contains("trigger_animation_frame_max")&&
                           rule.at("trigger_animation_frame_max").is_number())
                            ref.trigger_animation_frame_max=rule.at("trigger_animation_frame_max").get<int>();
                        if(ref.trigger_animation_frame_min<0)
                            ref.trigger_animation_frame_min=int(std::lround(ref.trigger_animation_frame));
                        if(ref.trigger_animation_frame_max<0)
                            ref.trigger_animation_frame_max=int(std::lround(ref.trigger_animation_frame));
                        ref.speed=rule.value("speed",ref.speed);
                        ref.speed_min=rule.value("speed_min",ref.speed_min);
                        ref.radius=rule.value("radius",ref.radius);
                        ref.duration=rule.value("duration_frames",ref.duration);
                        ref.evidence_status=rule.value("evidence_status",ref.evidence_status);
                        ref.source_refs=rule.value("source_refs",ref.source_refs);
                    };
                    auto base=std::find_if(refs.begin(),refs.end(),[&](const MonsterGeometryRef& ref) {
                        return ref.kind==kind&&ref.source_state==state&&ref.source_animation==animation;
                    });
                    MonsterGeometryRef ref;
                    if(base!=refs.end())ref=*base;
                    else {
                        const auto hazard=parse_dotted_identity(rule.value("hazard_identity",std::string{"9.0.0"}));
                        ref.hazard_type=hazard[0];ref.hazard_variant=hazard[1];ref.hazard_subtype=hazard[2];
                        ref.kind=kind;ref.source_state=state;ref.source_animation=animation;
                        ref.geometry_verified=true;ref.runtime_geometry_verified=true;
                    }
                    ref.source_ai_i1=rule.value("source_ai_i1",-1);
                    ref.source_ai_i2=rule.value("source_ai_i2",-1);
                    apply_rule(ref);
                    // Pattern refs are separate consumption units even when a
                    // geometry base exists; an empty id would collapse every
                    // synthesized rule into one bucket in the consumption report.
                    if(ref.id.empty())
                        ref.id=rule.value("target_identity",identity)+"|"+kind+"|"+animation+"|projectile";
                    ref.id+="#pattern:"+ref.pattern;
                    refs.push_back(std::move(ref));
                }
            }
        }
        for(const auto& [key,value]:database.at("identities").items()) {
            IdentityRule identity;identity.key=key;
            const auto& descriptor=value.at("identity");
            if(descriptor.contains("name_zh")&&descriptor.at("name_zh").is_string())
                identity.name=descriptor.at("name_zh").get<std::string>();
            else if(descriptor.contains("name")&&descriptor.at("name").is_string())
                identity.name=descriptor.at("name").get<std::string>();
            identity.ai_function=value.value("ai_function",std::string{"Unknown"});
            if(value.contains("attack_recognition")&&value.at("attack_recognition").is_object()) {
                const auto& recognition=value.at("attack_recognition");
                const auto& events=recognition.value(
                    "animation_event_candidates",json::object());
                if(events.is_object())for(const auto& [animation,event]:events.items())
                    identity.attack_event_candidates.emplace(lower(animation),event);
                identity.direct_ai_attack_calls=recognition.value(
                    "direct_ai_attack_calls",json::array());
                identity.direct_ai_attack_candidate_type=recognition.value(
                    "direct_ai_attack_candidate_type",std::string{"Unknown"});
            }
            for(const auto& [state_key,state_value]:value.at("state_rules").items()) {
                StateRule rule;rule.behavior=state_value.value("behavior",json::object());rule.label=state_value.value("label",std::string{"unknown"});
                rule.semantics_evidence=state_value.value("semantics_evidence",std::string{"none"});
                rule.runtime_animations=state_value.value("runtime_animations",std::vector<std::string>{});
                rule.static_animation_calls=state_value.value("static_animation_calls",std::vector<std::string>{});
                rule.attack_animations=state_value.value("attack_animations",std::vector<std::string>{});
                rule.candidate_attack_animations=state_value.value(
                    "candidate_attack_animations",std::vector<std::string>{});
                rule.attack_calls=state_value.value("attack_calls",json::array());
                rule.attack_call_candidate_type=state_value.value(
                    "attack_call_candidate_type",std::string{"Unknown"});
                rule.strict_attack_objects=state_value.value(
                    "strict_attack_objects",json::array());
                rule.attack_mapping_evidence=state_value.value(
                    "attack_mapping_evidence",std::string{"none"});
                rule.confidence=state_value.value("confidence",0.0);
                identity.states.emplace(std::stoi(state_key),std::move(rule));
            }
            identities_.emplace(key,std::move(identity));
        }
        for(const auto& value:database.at("warning_rules")) {
            WarningRule rule;rule.id=value.at("id").get<std::string>();
            rule.type=value.at("type").get<int>();rule.variants=value.value("variants",std::vector<int>{});
            rule.subtypes=value.value("subtypes",std::vector<int>{});
            for(int state:value.value("states",std::vector<int>{}))rule.states.insert(state);
            rule.animation_prefixes=value.value("animation_prefixes",std::vector<std::string>{});
            rule.animation_contains=value.value("animation_contains",std::vector<std::string>{});
            rule.geometry=value.value("geometry",std::string{});
            rule.attack_type=value.value("attack_type",std::string{});
            rule.radius=value.value("radius",40.0);
            if(value.contains("trigger_animation_frame")&&!value.at("trigger_animation_frame").is_null())
                rule.trigger_animation_frame=value.at("trigger_animation_frame").get<int>();
            rule.uncertainty=value.value("uncertainty",0.0);rule.confidence=value.value("confidence",0.0);
            rule.predictive=value.value("predictive",false);
            rule.evidence_status=value.value("evidence_status",std::string{"unknown"});
            rule.source_refs=join_strings(value.value("sources",json::array()));
            warning_rules_.push_back(std::move(rule));
        }
        if(identities_.empty()||warning_rules_.empty())throw std::runtime_error("Runtime semantics database is empty");
        loaded_=true;error_.clear();return true;
    }catch(const std::exception& exception) {
        error_=exception.what();loaded_=false;return false;
    }
}
std::vector<MechanismSemantics::ModelInventory> MechanismSemantics::geometry_inventory() const {
    std::vector<ModelInventory> inventory;
    for(const auto& [identity,models]:geometry_models_by_identity_)
        for(const auto& model:models)
            inventory.push_back({model.id.empty()?identity+"|"+model.kind+"|"+model.source_animation:model.id,
                model.kind,model.pattern,model.pattern_rule,
                model.planning_validated,model.pre_spawn_verified});
    return inventory;
}
void MechanismSemantics::clear_tracking() {    room_=0;clock_=0;eye_locks_.clear();previous_addresses_.clear();previous_identities_.clear();previous_entities_.clear();pid_=0;
}
void MechanismSemantics::append_warning(
    MechanismFrame& output,
    const Frame& frame,
    const Entity& entity,
    const WarningRule& rule,
    MechanismObservation& observation) {
    MechanismWarning warning;warning.source=entity.address;warning.radius=rule.radius;
    warning.kind="laser-warning";warning.rule_id=rule.id;warning.confidence=rule.confidence;
    warning.predictive=rule.predictive;warning.evidence_status=rule.evidence_status;
    warning.source_refs=rule.source_refs;warning.uncertainty=rule.uncertainty;
    warning.pos=entity.pos;warning.vel={};
    int64_t trigger=-1;
    int trigger_animation_frame=rule.trigger_animation_frame;
    const auto timing_key=std::to_string(entity.type)+"."+std::to_string(entity.variant)+"."+std::to_string(entity.subtype)+":"+std::to_string(entity.state)+":"+entity.animation;
    const auto timing=verified_timings_.find(timing_key);
    if(timing!=verified_timings_.end()&&timing->value("timing_verified",false)) {
        trigger_animation_frame=timing->at("trigger_animation_frame").get<int>();
        warning.timing_verified=true;
        observation.attack_timing_verified=true;
        warning.evidence_status="external-event-timing-verified; geometry/duration candidate";
        warning.source_refs+="; "+timing->value("source",std::string{});
    }
    if(trigger_animation_frame>=0) {
        const double updates=animation_frame_updates(entity,trigger_animation_frame);
        if(!std::isfinite(updates))return;
        const int remaining=int(updates);
        trigger=remaining>=0?int64_t(frame.clock)+remaining:-1;
        warning.predictive=warning.predictive&&remaining>0;
        warning.start=std::max(0.0,remaining/30.0);
        warning.until=warning.start+0.25;
    }else {
        warning.start=0;warning.until=0.6;
    }
    warning.predicted_trigger_frame=trigger;warning.shape="capsule";
    const auto geometry=verified_geometry_.find(timing_key);
    if(warning.timing_verified&&geometry!=verified_geometry_.end()&&geometry->value("planning_validated",false)&&
       geometry->value("model",std::string{})=="ai_angle_room_ray") {
        const double angle=entity.ai_v1.x*pi/180.0;Vec axis={std::cos(angle),std::sin(angle)};
        warning.pos=entity.pos+axis*geometry->at("origin_offset").get<double>();
        warning.end=warning.pos+axis*std::hypot(frame.grid.width*40.0,frame.grid.height*40.0);
        warning.radius=geometry->at("native_half_width").get<double>();
        warning.geometry_margin=geometry->at("geometry_margin").get<double>();
        warning.uncertainty=entity.vel.norm();warning.planning_validated=true;
        warning.evidence_status="native-collision and external AI-angle verified; conservative room ray";
        warning.source_refs+="; data/mechanisms/gamebot_phase4_geometry.json";
        const int remaining=int(animation_frame_updates(entity,trigger_animation_frame));
        const int duration=geometry->at("active_frames").get<int>();
        warning.predicted_end_frame=int64_t(frame.clock)+remaining+duration;
        warning.until=remaining+duration<0?-1:std::max(0.0,(remaining+duration)/30.0);
        observation.attack_target_semantics="AI V1.x frozen laser angle in degrees; native Eye State 8";
    }else if(rule.geometry=="player_lock_capsule") {
        observation.attack_target_semantics="Predicted player lock from verified Eye windup";
        auto lock=eye_locks_.find(entity.address);
        if(lock==eye_locks_.end()||frame.clock>lock->second.expiry||entity.animation_frame<=1) {
            Vec target=frame.player.body.pos+frame.player.body.vel*0.25;
            eye_locks_[entity.address]={target,frame.clock+20};
            lock=eye_locks_.find(entity.address);
        }
        Vec axis=(lock->second.target-entity.pos).unit();
        if(axis.norm()<1e-9)return;
        warning.end=entity.pos+axis*1500;
    }else if(rule.geometry=="animation_axis_capsule") {
        Vec axis=axis_vector(direction_axis(entity.animation));
        if(axis.norm()<1e-9)return;
        warning.end=entity.pos+axis*1500;
    }else if(rule.geometry=="bloat_grid_laser") {
        const double left=60,right=60+(frame.grid.width-2)*40.0;
        const double bottom=140+(frame.grid.height-2)*40.0;
        const double beam_y=entity.pos.y-40;
        const std::string animation=lower(entity.animation);
        const bool horizontal=animation.find("attackalt02")!=std::string::npos||
            animation.find("attack02")!=std::string::npos;
        if(horizontal) {
            warning.pos={left,beam_y};warning.end={right,beam_y};
        }else {
            warning.pos={entity.pos.x-16,beam_y};warning.end={entity.pos.x-16,bottom};
        }
    }else return;
    observation.threat_geometry=warning.planning_validated?"verified-ai-angle-room-ray":rule.geometry;
    if(!rule.attack_type.empty()) {
        observation.attack_type=rule.attack_type;
        observation.attack_type_evidence="offline_policy_warning_rule";
    }
    observation.confidence=std::max(observation.confidence,rule.confidence);
    if(trigger>=0&&(observation.predicted_trigger_frame<0||trigger<observation.predicted_trigger_frame))
        observation.predicted_trigger_frame=trigger;
    if(warning.predictive)++output.predictive_warnings;else ++output.reactive_warnings;
    output.warnings.push_back(std::move(warning));
}
MechanismFrame MechanismSemantics::evaluate(const Frame& frame) {
    MechanismFrame output;output.loaded=loaded_;output.valid=frame.valid;output.semantics_available=loaded_;
    output.room=frame.room;output.clock=frame.clock;output.pid=frame.pid;output.source_sha256=source_sha256_;
    if(!loaded_) {output.error=error_.empty()?"Runtime semantics unavailable":error_;return output;}
    if(!frame.valid) {
        output.error=frame.error.empty()?"Snapshot unavailable":frame.error;
        if(frame.room&&room_&&frame.room!=room_)clear_tracking();
        return output;
    }
    if((pid_&&pid_!=frame.pid)||(room_&&room_!=frame.room)||(clock_&&frame.clock<clock_))clear_tracking();
    const bool new_tick=frame.clock!=clock_||previous_entities_.empty();
    pid_=frame.pid;
    room_=frame.room;clock_=frame.clock;
    std::unordered_set<uint32_t> seen;
    for(const auto& entity:frame.entities) {
        const auto key=std::to_string(entity.type)+"."+std::to_string(entity.variant)+"."+std::to_string(entity.subtype);
        const auto models=geometry_models_by_identity_.find(key);
        if(!entity.friendly&&models!=geometry_models_by_identity_.end())for(auto model:models->second) {
            if(model.emitter_spawner_type&&model.emitter_spawner_type!=entity.spawner_type)continue;
            model.source=entity.address;
            output.geometry_models.push_back(std::move(model));
        }
        if(!entity.alive()||entity.friendly||!entity.enemy())continue;
        seen.insert(entity.address);
        MechanismObservation observation;
        observation.address=entity.address;observation.seed=entity.seed;observation.type=entity.type;
        observation.variant=entity.variant;observation.subtype=entity.subtype;observation.state=entity.state;
        observation.state_frame=entity.state_frame;observation.is_invincible=entity.invulnerable?1:0;
        observation.ai_v1=entity.ai_v1;observation.ai_v2=entity.ai_v2;observation.ai_i1=entity.ai_i1;observation.ai_i2=entity.ai_i2;
        observation.projectile_cooldown=entity.projectile_cooldown;observation.projectile_delay=entity.projectile_delay;
        observation.boss_status_cooldown=entity.boss_status_cooldown;
        observation.champion=entity.champion;observation.boss_color=entity.boss_color;
        observation.shield_history_capacity=entity.shield_history_capacity;
        observation.health=entity.hp;observation.max_health=entity.max_hp;
        observation.speed_multiplier=entity.speed_multiplier;observation.shield_strength=entity.shield_strength;
        if(entity.pending_damage>0)observation.behavior_model["pending_damage"]={{"amount",entity.pending_damage},
            {"flags",entity.pending_damage_flags},{"queue",entity.damage_queue},{"evidence","native accepted damage queue; consumed by Entity BaseUpdate"}};
        observation.is_boss=entity.is_boss;
        observation.parent=entity.parent;observation.spawner=entity.spawner;observation.owner=entity.owner;
        observation.child=entity.child;observation.attack_target=entity.target;
        observation.parent_in_snapshot=entity.parent_in_snapshot;
        observation.child_in_snapshot=entity.child_in_snapshot;
        observation.attack_target_in_snapshot=entity.target_in_snapshot;
        observation.spawner_in_snapshot=entity.spawner_in_snapshot;
        observation.owner_in_snapshot=entity.owner_in_snapshot;
        if(entity.type==412) {
            observation.delirium_layout_valid=entity.delirium_layout_valid;
            observation.delirium_boss_type=entity.delirium_boss_type;
            observation.delirium_boss_variant=entity.delirium_boss_variant;
            observation.delirium_transformation_timer=entity.delirium_transformation_timer;
            observation.delirium_remaining_attacks=entity.delirium_remaining_attacks;
            observation.delirium_state=entity.delirium_state;
            observation.delirium_attack_id=entity.delirium_attack_id;
            observation.delirium_attack_id_low24=entity.delirium_attack_id_low24;
            observation.delirium_attack_angle=entity.delirium_attack_angle;
            observation.delirium_cycle_id=entity.delirium_cycle_id;
            observation.delirium_cycle_low7=entity.delirium_cycle_low7;
            observation.delirium_cycle_field_15_24=entity.delirium_cycle_field_15_24;
            observation.delirium_cycle_field_25_34=entity.delirium_cycle_field_25_34;
        }
        if(entity.target) {
            observation.attack_target_semantics=entity.target_in_snapshot?
                "Entity.target resolves in the current snapshot; attack ownership unresolved":
                "Entity.target is stale or outside the current snapshot; value invalid";
            if(!entity.target_in_snapshot)add_reason(observation.unknown_reason,"stale target pointer");
        }
        observation.invincibility_scope="Entity+0x3B0 damage-filter flag; other phase/cap/source immunity Unknown";
        if(entity.shield_strength>0) {
            std::ostringstream scope;
            scope<<"Entity+0x3B0 damage-filter flag; ShieldStrength="<<entity.shield_strength
                <<" feeds ShieldDamageAbsorption (damage scaling, not total immunity); history capacity="
                <<entity.shield_history_capacity;
            observation.invincibility_scope=scope.str();
        }
        observation.last_updated_frame=frame.clock;
        observation.identity_key=std::to_string(entity.type)+"."+std::to_string(entity.variant)+"."+std::to_string(entity.subtype);
        const auto* identity=identity_for(entity);
        const StateRule* state_rule=nullptr;
        if(!identity) {
            add_reason(observation.unknown_reason,"identity not present in state semantics database");
            observation.confidence=0.2;observation.unknown_state=true;
        }else {
            observation.identity_name=identity->name;observation.ai_function=identity->ai_function;
            const auto state=identity->states.find(entity.state);
            if(state==identity->states.end()) {
                observation.unknown_state=true;
                add_reason(observation.unknown_reason,"state not present for this exact Type/Variant/Subtype");
                observation.confidence=0.35;
            }else {
                state_rule=&state->second;observation.state_semantics=state_rule->label;
                observation.confidence=state_rule->confidence;observation.behavior_model=state_rule->behavior;
            }
        }
        const std::string animation=entity.animation;
        observation.current_action=animation.empty()?
            (state_rule&&state_rule->label!="unknown"?state_rule->label:std::string{"Unknown"}):animation;
        observation.action_phase=animation.empty()?"Unknown":"ObservedAnimation";
        if(state_rule&&!animation.empty()&&has_candidate(state_rule->attack_animations,animation)) {
            observation.attack_type=animation;
            observation.action_phase="ObservedAttackAnimation";
            observation.attack_type_evidence=state_rule->attack_mapping_evidence!="none"?
                state_rule->attack_mapping_evidence:"strict_state_animation_mapping";
            if(!state_rule->strict_attack_objects.empty())
                observation.behavior_model["strict_attack_objects"]=state_rule->strict_attack_objects;
        }else if(state_rule&&!animation.empty()&&
                 has_candidate(state_rule->candidate_attack_animations,animation)) {
            observation.attack_type=animation;
            observation.action_phase="ObservedAttackAnimationCandidate";
            observation.attack_type_evidence="static_decompiled_state_animation_candidate";
            observation.behavior_model["state_attack_animation_candidate"]={
                {"state",entity.state},{"animation",animation},
                {"evidence",state_rule->semantics_evidence},{"verified",false}};
            observation.confidence=std::max(observation.confidence,0.55);
        }else if(identity&&!animation.empty()) {
            const auto attack_event=identity->attack_event_candidates.find(lower(animation));
            if(attack_event!=identity->attack_event_candidates.end()) {
                observation.attack_type=animation;
                observation.action_phase="ObservedAttackAnimationCandidate";
                observation.attack_type_evidence="static_anm2_attack_event_candidate";
                observation.behavior_model["attack_event_candidate"]=attack_event->second;
                observation.confidence=std::max(
                    observation.confidence,attack_event->second.value("confidence",0.45));
            }
        }
        if(observation.attack_type=="Unknown"&&state_rule&&!state_rule->attack_calls.empty()) {
            observation.attack_type=state_rule->attack_call_candidate_type;
            if(observation.attack_type=="Unknown")
                observation.attack_type=attack_call_candidate_type(state_rule->attack_calls);
            observation.action_phase="ObservedAttackCallStateCandidate";
            observation.attack_type_evidence="static_decompiled_attack_call_candidate";
            observation.behavior_model["attack_call_candidate"]=state_rule->attack_calls;
            observation.confidence=std::max(
                observation.confidence,std::min(0.55,state_rule->confidence*0.75));
        }
        if(observation.attack_type=="Unknown"&&identity&&identity->key!="412.0.0"&&
           !identity->direct_ai_attack_calls.empty()) {
            observation.attack_type=identity->direct_ai_attack_candidate_type;
            if(observation.attack_type=="Unknown")
                observation.attack_type=attack_call_candidate_type(identity->direct_ai_attack_calls);
            observation.action_phase="ObservedAIUpdateFunctionAttackCandidate";
            observation.attack_type_evidence="static_decompiled_ai_function_call_candidate";
            observation.behavior_model["direct_ai_attack_calls"]=identity->direct_ai_attack_calls;
            observation.confidence=std::max(observation.confidence,0.35);
        }
        if(observation.attack_type!="Unknown") {
            const auto timing_key=std::to_string(entity.type)+"."+std::to_string(entity.variant)+"."+
                std::to_string(entity.subtype)+":"+std::to_string(entity.state)+":"+entity.animation;
            const auto timing=verified_timings_.find(timing_key);
            if(timing!=verified_timings_.end()&&timing->value("timing_verified",false)) {
                const int trigger_frame=timing->value("trigger_animation_frame",-1);
                if(trigger_frame>=0) {
                    const double remaining=animation_frame_updates(entity,trigger_frame);
                    if(std::isfinite(remaining)&&remaining>=0)
                        observation.predicted_trigger_frame=int64_t(frame.clock)+remaining;
                    observation.attack_timing_verified=true;
                    observation.action_phase=!std::isfinite(remaining)?"AnimationStopped":remaining>0?"Windup":"AttackActive";
                    observation.behavior_model["attack_timing_prediction"]=*timing;
                    observation.confidence=std::max(observation.confidence,0.90);
                }
            }
        }
        const auto previous=previous_identities_.find(entity.address);
        if(previous!=previous_identities_.end()&&previous->second!=observation.identity_key) {
            eye_locks_.erase(entity.address);++output.stale_entities_dropped;
        }
        const auto prior=previous_entities_.find(entity.address);
        const Entity* before=prior!=previous_entities_.end()&&prior->second.seed==entity.seed&&
            prior->second.type==entity.type&&prior->second.variant==entity.variant&&prior->second.subtype==entity.subtype?&prior->second:nullptr;
        if(!before)eye_locks_.erase(entity.address);
        auto emit=[&](std::string kind,bool verified,std::string evidence) {
            BehaviorEvent event;event.source=entity.address;event.seed=entity.seed;event.frame=frame.clock;
            event.type=entity.type;event.variant=entity.variant;event.subtype=entity.subtype;
            event.from_state=before?before->state:-1;event.state=entity.state;event.event=std::move(kind);
            event.phase=entity.animation;event.verified=verified;event.evidence_status=std::move(evidence);
            event.confidence=verified?0.95:0.35;event.source_refs=state_rule?state_rule->semantics_evidence:"identity/state unmapped";
            event.parameters={{"state_frame",entity.state_frame},{"animation_frame",entity.animation_frame},
                {"ai_i1",entity.ai_i1},{"ai_i2",entity.ai_i2},{"projectile_delay",entity.projectile_delay}};
            output.events.push_back(std::move(event));
        };
        if(new_tick&&(!before||before->state!=entity.state||before->animation!=entity.animation))
            emit("Unknown",false,"observed-state-animation; transition semantics unverified");
        if(entity.animation_state_known) {
            json next_events=json::array();
            for(bool overlay:{false,true}) {
                const auto current=overlay?entity.overlay_animation_events:entity.animation_events;
                const auto history=overlay?entity.overlay_animation_event_history:entity.animation_event_history;
                const bool same=before&&(overlay?before->overlay_animation==entity.overlay_animation:before->animation==entity.animation)&&
                    (overlay?before->overlay_animation_frame<=entity.overlay_animation_frame:before->animation_frame<=entity.animation_frame);
                const auto old_history=same?(overlay?before->overlay_animation_event_history:before->animation_event_history):0;
                const auto old_current=same?(overlay?before->overlay_animation_events:before->animation_events):0;
                const bool moved=!same||(overlay?before->overlay_animation_frame!=entity.overlay_animation_frame:before->animation_frame!=entity.animation_frame);
                for(size_t i=0;i<entity.animation_event_names.size();++i) {
                    const uint32_t bit=uint32_t(1)<<(i&31);
                    const double next=animation_event_updates(entity,entity.animation_event_names[i],overlay);
                    if(next>=0)next_events.push_back({{"name",entity.animation_event_names[i]},{"overlay",overlay},{"updates",next}});
                    const bool live=(current&bit)&&(!(old_current&bit)||moved);
                    const bool latched=(history&~old_history&bit)!=0;
                    if(!new_tick||(!live&&!latched))continue;
                    emit("AnimationEvent",true,"native animation event mask; damage meaning depends on the owning AI branch");
                    auto& event=output.events.back();
                    event.phase=overlay?entity.overlay_animation:entity.animation;
                    event.source_refs="J460 AnimationState IsEventTriggered 0x40ADD0; WasEventTriggered 0x40AE70; TriggerEvents 0x408C90";
                    event.parameters["name"]=entity.animation_event_names[i];event.parameters["id"]=i;
                    event.parameters["overlay"]=overlay;event.parameters["current"]=live;
                    event.parameters["history_only"]=!live;event.parameters["animation_frame"]=overlay?entity.overlay_animation_frame:entity.animation_frame;
                }
            }
            observation.behavior_model["native_animation"]={{"playing",entity.animation_playing},{"overlay_playing",entity.overlay_animation_playing},
                {"speed",entity.animation_speed},{"current_events",entity.animation_events},{"event_history",entity.animation_event_history},
                {"overlay_current_events",entity.overlay_animation_events},{"overlay_event_history",entity.overlay_animation_event_history},{"next_events",std::move(next_events)}};
        }
        if(new_tick&&before&&before->invulnerable!=entity.invulnerable)
            emit(entity.invulnerable?"InvulnerabilityStart":"InvulnerabilityEnd",true,"observed damage-filter flag only; other immunity unknown");
        if(new_tick&&entity.type==413&&entity.variant==0&&entity.subtype==0&&before) {
            if(before->ai_i2!=entity.ai_i2)emit("PhaseTransition",false,"static-control-flow + observed ai_i2 change; phase effects unverified");
            if(before->animation!=entity.animation&&entity.animation.rfind("Rage",0)==0)
                emit(entity.animation=="RageBegin"?"EnrageStart":entity.animation=="RageEnd"?"AttackEnd":"AttackActive",false,"Matriarch Rage static-control-flow candidate; confirm engine spawns independently");
        }
        const size_t warning_start=output.warnings.size();
        for(const auto& rule:warning_rules_) {
            if(rule.type!=entity.type)continue;
            if(!rule.variants.empty()&&std::find(rule.variants.begin(),rule.variants.end(),entity.variant)==rule.variants.end())continue;
            if(!rule.subtypes.empty()&&std::find(rule.subtypes.begin(),rule.subtypes.end(),entity.subtype)==rule.subtypes.end())continue;
            if(!rule.states.empty()&&!rule.states.contains(entity.state))continue;
            const std::string normalized=lower(animation);
            const bool prefix_match=std::any_of(rule.animation_prefixes.begin(),rule.animation_prefixes.end(),
                [&](const std::string& prefix){return starts_with(normalized,lower(prefix));});
            const bool contains_match=std::any_of(rule.animation_contains.begin(),rule.animation_contains.end(),
                [&](const std::string& token){return normalized.find(lower(token))!=std::string::npos;});
            if((!rule.animation_prefixes.empty()||!rule.animation_contains.empty())&&!prefix_match&&!contains_match)continue;
            append_warning(output,frame,entity,rule,observation);
        }
        if(output.warnings.size()>warning_start) {
            observation.action_phase="Windup";
            if(new_tick&&(!before||before->animation!=entity.animation||entity.animation_frame<before->animation_frame)) {
                emit(output.warnings[warning_start].predictive?"Telegraph":"AttackActive",false,"offline-policy candidate; independent attack-event validation required");
                output.events.back().predicted_frame=observation.predicted_trigger_frame;
                const auto& warning=output.warnings[warning_start];
                output.events.back().verified=warning.timing_verified;
                output.events.back().evidence_status=warning.evidence_status;
                output.events.back().source_refs=warning.source_refs;
                output.events.back().confidence=warning.timing_verified?.9:.35;
            }
        }
        const auto contact=contact_geometry_.find(observation.identity_key);
        if(contact!=contact_geometry_.end()&&entity.contact()) {
            MechanismWarning warning;
            warning.source=entity.address;warning.pos=entity.pos;warning.vel=entity.vel;
            warning.radius=contact->second.radius;
            warning.kind="contact";warning.rule_id="monster-contact-geometry";warning.shape="disc";
            warning.start=0;warning.until=1;warning.predictive=false;warning.planning_validated=true;
            warning.confidence=.9;warning.evidence_status=contact->second.evidence;
            warning.source_refs="data/mechanisms/gamebot_monster_geometry.json";
            observation.threat_geometry="verified-contact-disc";
            observation.confidence=std::max(observation.confidence,.9);
            output.warnings.push_back(std::move(warning));++output.reactive_warnings;
        }
        if(observation.attack_type=="Unknown")
            add_reason(observation.unknown_reason,"attack type requires exact identity, state and attack animation mapping");
        const auto model=curated_models_.find(observation.identity_key);
        if(model!=curated_models_.end()) {
            if(model->contains("boss_phase")&&model->at("boss_phase").is_object()) {
                const auto& phase=model->at("boss_phase");
                if(phase.value("field",std::string{})=="ai_i2") {
                    const int minimum=phase.value("min",0),maximum=phase.value("max",-1);
                    if(entity.ai_i2>=minimum&&entity.ai_i2<=maximum) {
                        observation.boss_phase=entity.ai_i2;
                        observation.boss_phase_name=phase.value("name",std::string{"Boss phase index"});
                    }
                }
            }
            if(model->contains("enrage")) {
                const auto& enrage=model->at("enrage");
                const auto states=enrage.value("states",std::vector<int>{});
                const bool state_match=states.empty()||std::find(states.begin(),states.end(),observation.state)!=states.end();
                const auto prefixes=enrage.value("animation_prefixes",std::vector<std::string>{});
                const std::string action=lower(observation.current_action);
                const bool animation_match=std::any_of(prefixes.begin(),prefixes.end(),
                    [&](const std::string& prefix){return starts_with(action,lower(prefix));});
                const std::string evidence=enrage.value("evidence_status",std::string{});
                const bool runtime_verified=evidence.find("runtime_verified")!=std::string::npos;
                if(state_match&&(animation_match||runtime_verified)) {
                    if(runtime_verified)observation.is_enraged=1;
                    else add_reason(observation.unknown_reason,"rage animation/state is a static candidate only");
                }
            }
            if(model->contains("predicted_end")&&observation.state==13&&entity.ai_i1>0) {
                const int decrement=model->at("predicted_end").value("decrement_per_frame",1);
                // The timer freezes during RageBegin and can be extended by other paths.
                // Keep the conditional estimate distinct from a validated ending frame.
                observation.behavior_model["conditional_timer_estimate"]={
                    {"candidate_frame",int64_t(frame.clock)+(entity.ai_i1+std::max(1,decrement)-1)/std::max(1,decrement)},
                    {"condition","StateFrame > 0 and no timer extension; animation end still unknown"},
                    {"active",entity.state_frame>0},{"verified",false}};
            }
        }
        if(state_rule)
            observation.data_source="external-memory:reader+state-semantics:"+state_rule->semantics_evidence;
        else if(identity)
            observation.data_source="external-memory:reader;state-unmapped-for-exact-identity";
        else
            observation.data_source="external-memory:reader;identity-unmapped";
        if(observation.attack_type_evidence!="Unknown")
            observation.data_source+=";attack-evidence="+observation.attack_type_evidence;
        if(observation.current_action=="Unknown")add_reason(observation.unknown_reason,"current action unavailable");
        if(observation.is_enraged<0)add_reason(observation.unknown_reason,"enrage state not verified");
        if(observation.boss_phase<0)add_reason(observation.unknown_reason,"boss phase unavailable or unverified");
        if(observation.threat_geometry=="Unknown")add_reason(observation.unknown_reason,"threat geometry unavailable");
        ++output.identities;
        if(!observation.unknown_state)++output.known_states;else ++output.unknown_states;
        if(observation.attack_type!="Unknown")++output.known_attack_types;
        if(observation.boss_phase>=0)++output.known_boss_phases;
        if(observation.is_enraged==1)++output.known_enrages;
        output.enemies.push_back(std::move(observation));
    }
    for(auto iterator=previous_addresses_.begin();iterator!=previous_addresses_.end();) {
        if(!seen.contains(*iterator)) {
            eye_locks_.erase(*iterator);
            previous_identities_.erase(*iterator);previous_entities_.erase(*iterator);
            ++output.stale_entities_dropped;
            iterator=previous_addresses_.erase(iterator);
        }else ++iterator;
    }
    if(new_tick)for(const auto& entity:frame.entities) {
        if((entity.type!=7&&entity.type!=9)||!entity.alive()||entity.friendly)continue;
        const auto old=previous_entities_.find(entity.address);
        if(old!=previous_entities_.end()&&old->second.seed==entity.seed)continue;
        BehaviorEvent event;event.source=entity.spawner_in_snapshot?entity.spawner:entity.parent_in_snapshot?entity.parent:0;
        event.seed=entity.seed;event.frame=frame.clock;event.type=entity.type;event.variant=entity.variant;event.subtype=entity.subtype;
        event.event="AttackStart";event.phase="hazard-entity-observed";event.verified=true;event.confidence=.95;
        event.evidence_status="external observed spawn; attack ownership only when current pointer resolves";
        event.source_refs="Reader entity partition";
        event.parameters={{"entity",entity.address},{"pos",entity.pos},{"velocity",entity.vel},{"radius",entity.radius},{"endpoint",entity.endpoint},{"geometry_valid",entity.geometry_valid}};
        output.events.push_back(std::move(event));
    }
    previous_entities_.clear();
    for(const auto& entity:frame.entities)previous_entities_[entity.address]=entity;
    for(const auto& enemy:output.enemies) {
        previous_addresses_.insert(enemy.address);
        previous_identities_[enemy.address]=enemy.identity_key;
    }
    return output;
}
}
