#include "gamebot/discovery.hpp"
#include <algorithm>
#include <chrono>
#include <cctype>
#include <cmath>
#include <ctime>
#include <fstream>
#include <functional>
#include <iomanip>
#include <limits>
#include <sstream>
#include <unordered_map>

namespace gamebot {
namespace {
double number_or(const json& value,const char* key,double fallback=0) {
    return value.contains(key)&&value.at(key).is_number()?
        value.at(key).get<double>():fallback;
}
int int_or(const json& value,const char* key,int fallback=0) {
    return value.contains(key)&&value.at(key).is_number()?
        value.at(key).get<int>():fallback;
}
int safe_int(const std::string& value,int fallback=-1) {
    try {size_t used=0;const int parsed=std::stoi(value,&used);
        return used==value.size()?parsed:fallback;}
    catch(const std::exception&) {return fallback;}
}
std::string identity_of(const json& value) {
    return identity_key(int_or(value,"type",0),int_or(value,"variant",0),
        int_or(value,"subtype",0));
}
std::string identity_of(const Entity& entity) {
    return identity_key(entity.type,entity.variant,entity.subtype);
}
double mean_value(const std::vector<double>& values) {
    if(values.empty())return 0;
    double sum=0;for(const double value:values)sum+=value;
    return sum/double(values.size());
}
double median_value(std::vector<double> values) {
    if(values.empty())return 0;
    std::stable_sort(values.begin(),values.end());
    const size_t middle=values.size()/2;
    return values.size()%2?values[middle]:(values[middle-1]+values[middle])*0.5;
}
double min_value(const std::vector<double>& values) {
    return values.empty()?0:*std::min_element(values.begin(),values.end());
}
double max_value(const std::vector<double>& values) {
    return values.empty()?0:*std::max_element(values.begin(),values.end());
}
std::string iso_now() {    const auto now=std::chrono::system_clock::now();
    const std::time_t time=std::chrono::system_clock::to_time_t(now);
    std::tm tm{};
#ifdef _WIN32
    gmtime_s(&tm,&time);
#else
    gmtime_r(&time,&tm);
#endif
    std::ostringstream out;
    out<<std::put_time(&tm,"%Y-%m-%dT%H:%M:%SZ");
    return out.str();
}
bool read_json_file(const std::filesystem::path& path,json& out,std::string* error) {
    std::ifstream input{path};
    if(!input) {if(error)*error="cannot open "+path.string();return false;}
    try {input>>out;}
    catch(const std::exception& e) {if(error)*error=e.what();return false;}
    return true;
}
void process_log_line(const std::string& line,FailureAnalyzer& analyzer,
                      uint64_t& frames,uint64_t& damage_events) {
    if(line.empty())return;
    json record;
    try {record=json::parse(line);}catch(const std::exception&) {return;}
    if(record.contains("frame"))++frames;
    if(record.contains("mpc")&&record.at("mpc").is_object()) {
        const auto& mpc=record.at("mpc");
        if(mpc.contains("prediction")&&mpc.at("prediction").is_object())
            analyzer.observe_report(mpc.at("prediction"),number_or(record,"clock",0),"log");
    }
    if(record.contains("damage_event")&&record.at("damage_event").is_object()) {
        ++damage_events;
        analyzer.observe_damage(record.at("damage_event"),
            number_or(record,"clock",0),"log");
    }
    if(record.contains("report")&&record.at("report").is_object()&&
       record.contains("trace"))
        analyzer.observe_report(record.at("report"),number_or(record,"clock",0),"failure-dump");
}
void walk_path(const std::filesystem::path& path,const std::function<void(const std::filesystem::path&)>& visit) {
    std::error_code ignored;
    if(std::filesystem::is_directory(path,ignored)) {
        for(const auto& entry:std::filesystem::recursive_directory_iterator(path,ignored))
            if(entry.is_regular_file())visit(entry.path());
    }else if(std::filesystem::is_regular_file(path,ignored))visit(path);
}
}
std::string identity_key(int type,int variant,int subtype) {
    return std::to_string(type)+"."+std::to_string(variant)+"."+
        std::to_string(subtype);
}
const char* failure_kind_name(FailureKind kind) {
    switch(kind) {
    case FailureKind::attack_timing:return "attack_timing";
    case FailureKind::projectile_trajectory:return "projectile_trajectory";
    case FailureKind::enemy_movement:return "enemy_movement";
    case FailureKind::state_transition:return "state_transition";
    case FailureKind::collision_radius:return "collision_radius";
    case FailureKind::spawn_despawn:return "spawn_despawn";
    case FailureKind::damage_prediction:return "damage_prediction";
    case FailureKind::death_event:return "death_event";
    case FailureKind::unknown_attack:return "unknown_attack";
    case FailureKind::unknown_entity:return "unknown_entity";
    default:return "other";
    }
}
json FailureFinding::to_json() const {
    return {{"key",key},{"kind",failure_kind_name(kind)},{"identity",identity},
        {"source",source},{"type",type},{"variant",variant},{"subtype",subtype},
        {"state",state},{"occurrences",occurrences},{"first_clock",first_clock},
        {"last_clock",last_clock},{"mean_error",mean_error},{"max_error",max_error},
        {"confidence",confidence},{"field",field},{"mechanism",mechanism},
        {"predicted",predicted},{"observed",observed},{"evidence",evidence},
        {"files",files}};
}
json FailureAnalysisResult::to_json() const {
    json rows=json::array();
    for(const auto& finding:findings)rows.push_back(finding.to_json());
    return {{"files",files},{"frames",frames},{"reports",reports},
        {"high_error_reports",high_error_reports},{"damage_events",damage_events},
        {"by_kind",by_kind},{"findings",rows}};
}
FailureAnalyzer::FailureAnalyzer(FailureAnalysisConfig config):config_(config) {}
void FailureAnalyzer::reset() {
    result_=FailureAnalysisResult{};
    aggregates_.clear();
}
void FailureAnalyzer::add(FailureKind kind,const std::string& identity,int type,
    int variant,int subtype,int state,double clock,double error,
    const std::string& field,const std::string& mechanism,
    const std::string& predicted,const std::string& observed,
    const std::string& evidence,const std::string& source,uint32_t id) {
    if(error<config_.min_error_score)return;
    const std::string key=identity+"|"+failure_kind_name(kind)+"|"+field;
    auto& aggregate=aggregates_[key];
    auto& finding=aggregate.finding;
    finding.key=key;finding.kind=kind;finding.identity=identity;finding.source=id;
    finding.type=type;finding.variant=variant;finding.subtype=subtype;finding.state=state;
    finding.field=field;finding.mechanism=mechanism;
    finding.predicted=predicted;finding.observed=observed;
    finding.evidence=evidence;
    if(!finding.occurrences) {
        finding.first_clock=clock;
    }
    ++finding.occurrences;
    finding.last_clock=clock;
    aggregate.error_sum+=error;
    finding.max_error=std::max(finding.max_error,error);
    if(std::find(finding.files.begin(),finding.files.end(),source)==finding.files.end()&&
       !source.empty())
        finding.files.push_back(source);
}
void FailureAnalyzer::observe_report(const json& report,double clock,
                                     const std::string& source) {
    if(!report.is_object())return;
    ++result_.reports;
    if(report.value("high_error",false)||report.value("fallback",false))
        ++result_.high_error_reports;
    const double score=number_or(report,"error_score",0);
    if(score<config_.min_error_score&&!report.value("high_error",false))return;
    if(report.contains("sources")&&report.at("sources").is_array()) {
        for(const auto& item:report.at("sources")) {
            if(!item.is_object())continue;
            const std::string identity=identity_of(item);
            const int type=int_or(item,"type",0),variant=int_or(item,"variant",0),
                subtype=int_or(item,"subtype",0);
            const uint32_t id=item.value("id",uint32_t{});
            const double position=number_or(item,"position",0);
            const double velocity=number_or(item,"velocity",0);
            const double hp=number_or(item,"hp",0);
            const double state_error=number_or(item,"state",0);
            const double boss=number_or(item,"boss_phase",0);
            if(position>0.20)
                add(FailureKind::enemy_movement,identity,type,variant,subtype,
                    int_or(item,"state",-1),clock,position,"enemy.position",
                    "enemy movement model", "predicted position",
                    "Reader position", "per-source normalized position error",
                    source,id);
            if(velocity>0.20)
                add(FailureKind::enemy_movement,identity,type,variant,subtype,
                    int_or(item,"state",-1),clock,velocity,"enemy.velocity",
                    "enemy movement model", "predicted velocity",
                    "Reader velocity", "per-source normalized velocity error",
                    source,id);
            if(hp>0.10)
                add(FailureKind::collision_radius,identity,type,variant,subtype,
                    int_or(item,"state",-1),clock,hp,"enemy.hp",
                    "damage/collision model", "predicted HP", "Reader HP",
                    "per-source HP error", source,id);
            if(state_error>0.10)
                add(FailureKind::state_transition,identity,type,variant,subtype,
                    int_or(item,"state",-1),clock,state_error,"enemy.state",
                    "state machine", "predicted State", "Reader State",
                    "state mismatch", source,id);
            if(boss>0.10)
                add(FailureKind::state_transition,identity,type,variant,subtype,
                    int_or(item,"state",-1),clock,boss,"boss.phase",
                    "boss phase model", "predicted phase", "Reader phase",
                    "boss phase mismatch", source,id);
        }
    }
    const int projectile_count=int_or(report,"projectile_count_delta",0);
    const double projectile_pos=number_or(report,"projectile_position_error",0);
    const double projectile_vel=number_or(report,"projectile_velocity_error",0);
    const double projectile_age=number_or(report,"projectile_age_error",0);
    if(projectile_count||projectile_pos>1.0||projectile_vel>1.0||projectile_age>0.05)
        add(FailureKind::projectile_trajectory,"unknown",0,0,0,-1,clock,
            std::max({double(projectile_count),projectile_pos,
                projectile_vel,projectile_age}),
            "projectile.trajectory","projectile model",
            "predicted projectile state","Reader projectile state",
            "projectile count/position/velocity/age mismatch",source);
    const double hazard_timing=number_or(report,"hazard_timing_error",0);
    const double hazard_pos=number_or(report,"hazard_position_error",0);
    const double hazard_radius=number_or(report,"hazard_radius_error",0);
    if(hazard_timing>0.05)
        add(FailureKind::attack_timing,"unknown",0,0,0,-1,clock,hazard_timing,
            "hazard.active_from","attack timing model",
            "predicted trigger time","Reader hazard start",
            "hazard timing mismatch",source);
    if(hazard_pos>1.0||hazard_radius>1.0)
        add(FailureKind::collision_radius,"unknown",0,0,0,-1,clock,
            std::max(hazard_pos,hazard_radius),"hazard.geometry",
            "attack geometry model","predicted hazard geometry",
            "Reader hazard geometry","hazard position/radius mismatch",source);
    const int unknown_mismatch=int_or(report,"unknown_hazard_mismatch",0);
    if(unknown_mismatch)
        add(FailureKind::unknown_attack,"unknown",0,0,0,-1,clock,
            double(unknown_mismatch),"unknown.danger","unknown threat model",
            "predicted danger area","Reader danger cells",
            "actual danger outside every predicted hazard",source);
    const int enemy_count=int_or(report,"enemy_count_delta",0);
    if(enemy_count)
        add(FailureKind::spawn_despawn,"unknown",0,0,0,-1,clock,
            double(enemy_count),"enemy.count","lifecycle model",
            "predicted enemy count","Reader enemy count",
            "enemy count delta",source);
    if(int_or(report,"health_delta",0)>0 || number_or(report,"predicted_damage_source",0)!=0)
        add(FailureKind::damage_prediction,"player",0,0,0,-1,clock,
            std::max(1.0,number_or(report,"health_delta",0)),
            "player.health","damage model",
            report.value("predicted_damage_cause",std::string{"predicted damage"}),
            "Reader health drop","damage event with predicted cause",source,
            uint32_t(number_or(report,"predicted_damage_source",0)));
    if(report.value("predicted_damage_cause",std::string{})==
       "unpredicted damage")
        add(FailureKind::unknown_attack,"unknown",0,0,0,-1,clock,1.0,
            "player.health","unknown attack","no predicted cause",
            "Reader health drop","unpredicted damage",source);
}
void FailureAnalyzer::observe_damage(const json& damage,double clock,
                                     const std::string& source) {
    if(!damage.is_object())return;
    const double drop=number_or(damage,"drop",0);
    if(drop>0)
        add(FailureKind::damage_prediction,"player",0,0,0,-1,clock,drop,
            "damage_event.drop","damage event",
            damage.value("predicted_cause",std::string{"unknown"}),
            "Reader health drop","recorded damage event",source,
            uint32_t(number_or(damage,"predicted_source",0)));
    if(damage.contains("death_reason"))
        add(FailureKind::death_event,"player",0,0,0,-1,clock,1.0,
            "player.death","death event",
            "alive",damage.value("death_reason",std::string{"dead"}),
            "player death",source);
}
void FailureAnalyzer::rebuild() {
    result_.findings.clear();
    result_.by_kind.clear();
    for(auto&[key,aggregate]:aggregates_) {
        auto& finding=aggregate.finding;
        finding.mean_error=aggregate.error_sum/std::max(1,finding.occurrences);
        finding.confidence=std::clamp(0.20+0.12*std::min(8,finding.occurrences)+
            0.35*finding.mean_error,0.0,0.98);
        if(finding.occurrences<config_.min_occurrences)continue;
        result_.by_kind[failure_kind_name(finding.kind)]+=finding.occurrences;
        result_.findings.push_back(finding);
    }
    std::stable_sort(result_.findings.begin(),result_.findings.end(),
        [](const FailureFinding& a,const FailureFinding& b) {
            return a.confidence*b.occurrences>b.confidence*b.occurrences;
        });
    if(int(result_.findings.size())>config_.max_findings)
        result_.findings.resize(size_t(config_.max_findings));
}
FailureAnalysisResult FailureAnalyzer::result() const { return result_; }
FailureAnalysisResult FailureAnalyzer::finish() {
    rebuild();
    return result_;
}
FailureAnalysisResult FailureAnalyzer::analyze_path(const std::filesystem::path& path) {
    walk_path(path,[&](const std::filesystem::path& file) {
        ++result_.files;
        const auto extension=file.extension().string();
        if(extension==".json") {
            json value;std::string error;
            if(!read_json_file(file,value,&error))return;
            if(value.contains("report")&&value.at("report").is_object())
                observe_report(value.at("report"),number_or(value,"clock",0),
                    file.string());
            if(value.contains("damage_event")&&value.at("damage_event").is_object())
                observe_damage(value.at("damage_event"),number_or(value,"clock",0),
                    file.string());
            return;
        }
        std::ifstream input{file};
        if(!input)return;
        std::string line;
        while(std::getline(input,line))
            process_log_line(line,*this,result_.frames,result_.damage_events);
    });
    rebuild();
    return result_;
}
// ---------------------------------------------------------------------------
json BehaviorPattern::to_json() const {
    return {{"primitive",attack_primitive_name(primitive)},
        {"targeting",attack_targeting_name(targeting)},{"state",state},
        {"animation",animation},{"samples",samples},
        {"speed",{{"mean",mean_speed},{"min",min_speed},{"max",max_speed}}},
        {"windup_frames",{{"mean",mean_windup},{"min",min_windup},{"max",max_windup}}},
        {"count",{{"mean",mean_count},{"min",min_count},{"max",max_count}}},
        {"aimed_ratio",aimed_ratio},{"radial_ratio",radial_ratio},
        {"spread_ratio",spread_ratio},{"confidence",confidence},{"evidence",evidence}};
}
json BehaviorProfile::to_json() const {
    json transition_rows=json::array();
    for(const auto& transition:transitions)
        transition_rows.push_back({{"from",transition.from_state},
            {"to",transition.to_state},{"from_animation",transition.from_animation},
            {"to_animation",transition.to_animation},{"clock",transition.clock},
            {"duration_frames",transition.duration_frames}});
    json attack_rows=json::array();
    for(const auto& attack:attacks)
        attack_rows.push_back({{"clock",attack.clock},{"state",attack.state},
            {"animation",attack.animation},{"windup_frames",attack.windup_frames},
            {"projectile_count",attack.projectile_count},{"speed",attack.speed},
            {"direction",attack.direction},{"aimed",attack.aimed},
            {"radial",attack.radial},{"spread",attack.spread}});
    json pattern_rows=json::array();
    for(const auto& pattern:patterns)pattern_rows.push_back(pattern.to_json());
    return {{"identity",identity},{"name",name},{"type",type},
        {"variant",variant},{"subtype",subtype},{"samples",samples},
        {"entities",entities},{"state_counts",state_counts},
        {"animation_counts",animation_counts},{"transitions",transition_rows},
        {"attacks",attack_rows},{"patterns",pattern_rows},
        {"mean_speed",mean_speed},{"max_speed",max_speed},
        {"chase_ratio",chase_ratio},{"mean_attack_interval",mean_attack_interval},
        {"min_attack_interval",min_attack_interval},
        {"max_attack_interval",max_attack_interval},
        {"confidence",confidence},{"evidence",evidence}};
}
json BehaviorDiscoveryResult::to_json() const {
    json rows=json::array();
    for(const auto& profile:profiles)rows.push_back(profile.to_json());
    return {{"frames",frames},{"entities",entities},{"transitions",transitions},
        {"attacks",attacks},{"profiles",rows}};
}
BehaviorDiscovery::BehaviorDiscovery(BehaviorDiscoveryConfig config):config_(config) {}
void BehaviorDiscovery::reset() {
    result_=BehaviorDiscoveryResult{};
    accumulators_.clear();
    previous_projectiles_.clear();
    room_=0;finalized_=false;
}
void BehaviorDiscovery::observe(const Frame& frame) {
    if(!frame.valid||!frame.has_player)return;
    if(room_&&room_!=frame.room)reset();
    room_=frame.room;
    ++result_.frames;
    std::set<uint32_t> current_projectiles;
    std::unordered_map<uint32_t,std::vector<const Entity*>> projectiles_by_source;
    for(const auto& entity:frame.entities) {
        if(!entity.alive()||entity.type!=9)continue;
        current_projectiles.insert(entity.address);
        const uint32_t source=entity.spawner?entity.spawner:entity.parent;
        if(source)projectiles_by_source[source].push_back(&entity);
    }
    for(const auto& entity:frame.entities) {
        if(!entity.alive())continue;
        if(entity.type==9)continue;
        if(!entity.enemy()||entity.friendly)continue;
        const std::string key=identity_of(entity);
        auto& accumulator=accumulators_[key];
        auto& profile=accumulator.profile;
        profile.identity=key;profile.type=entity.type;profile.variant=entity.variant;
        profile.subtype=entity.subtype;profile.name=key;
        ++profile.samples;
        accumulator.entity_ids.insert(entity.address);
        ++profile.state_counts[entity.state];
        if(!entity.animation.empty())++profile.animation_counts[entity.animation];
        auto& track=accumulator.tracks[entity.address];
        if(!track.seen) {
            track.seen=true;track.state=entity.state;track.animation=entity.animation;
            track.state_clock=double(frame.clock);
            track.previous=entity;
        }else if(track.state!=entity.state||track.animation!=entity.animation) {
            StateTransitionSample transition;
            transition.from_state=track.state;transition.to_state=entity.state;
            transition.from_animation=track.animation;transition.to_animation=entity.animation;
            transition.clock=double(frame.clock);
            transition.duration_frames=std::max(0.0,(double(frame.clock)-track.state_clock)*2.0);
            transition.detail={{"position",entity.pos},{"velocity",entity.vel},
                {"hp",entity.hp}};
            profile.transitions.push_back(std::move(transition));
            ++result_.transitions;
            track.state=entity.state;track.animation=entity.animation;
            track.state_clock=double(frame.clock);
        }
        const double speed=entity.vel.norm();
        if(speed>1) {
            accumulator.speeds.push_back(speed);
            const Vec toward=frame.player.body.pos-entity.pos;
            if(toward.norm()>1&&entity.vel.dot(toward.unit())>
               std::max(1.0,speed)*0.7)
                accumulator.chase_ratios.push_back(1.0);
            else accumulator.chase_ratios.push_back(0.0);
        }
        auto new_projectiles=projectiles_by_source.find(entity.address);
        if(new_projectiles!=projectiles_by_source.end()) {
            std::vector<const Entity*> fresh;
            for(const auto* projectile:new_projectiles->second)
                if(!previous_projectiles_.count(projectile->address))
                    fresh.push_back(projectile);
            if(!fresh.empty()) {
                double speed_sum=0;
                Vec direction{};
                int radial=0,spread=0;
                bool aimed=true;
                for(const auto* projectile:fresh) {
                    speed_sum+=projectile->vel.norm();
                    direction=direction+projectile->vel.unit();
                    const Vec target=frame.player.body.pos-projectile->pos;
                    if(target.norm()>1&&projectile->vel.unit().dot(target.unit())<
                       config_.aimed_cos_threshold)aimed=false;
                }
                const double average_speed=fresh.size()?speed_sum/double(fresh.size()):0;
                if(fresh.size()>1) {
                    double angle_sum=0;Vec first{};
                    for(const auto* projectile:fresh) {
                        if(first.norm()<1e-9) {first=projectile->vel.unit();continue;}
                        angle_sum+=std::acos(std::clamp(first.dot(projectile->vel.unit()),
                            -1.0,1.0))*180/pi;
                    }
                    radial=angle_sum>=240;
                    spread=!radial&&angle_sum>=config_.spread_min_degrees;
                }
                AttackSample attack;
                attack.clock=double(frame.clock);
                attack.state=entity.state;attack.animation=entity.animation;
                attack.windup_frames=std::max(0.0,
                    std::min(config_.windup_max_frames,
                        (double(frame.clock)-track.state_clock)*2.0));
                attack.projectile_count=int(fresh.size());
                attack.speed=average_speed;
                attack.direction=direction.unit();
                attack.enemy_position=entity.pos;
                attack.player_position=frame.player.body.pos;
                attack.aimed=aimed&&fresh.size()==1;
                attack.radial=radial;attack.spread=spread;
                attack.detail={{"projectiles",json::array()}};
                for(const auto* projectile:fresh)
                    attack.detail["projectiles"].push_back({
                        {"id",projectile->address},{"pos",projectile->pos},
                        {"vel",projectile->vel},{"radius",projectile->radius},
                        {"damage",projectile->damage}});
                profile.attacks.push_back(std::move(attack));
                ++result_.attacks;
                accumulator.attack_clocks.push_back(double(frame.clock));
            }
        }
        track.projectiles.clear();
        if(new_projectiles!=projectiles_by_source.end())
            for(const auto* projectile:new_projectiles->second)
                track.projectiles.insert(projectile->address);
        track.previous=entity;
    }
    previous_projectiles_=std::move(current_projectiles);
}
void BehaviorDiscovery::build_patterns(Accumulator& accumulator) {
    auto& profile=accumulator.profile;
    profile.entities=int(accumulator.entity_ids.size());
    profile.mean_speed=mean_value(accumulator.speeds);
    profile.max_speed=max_value(accumulator.speeds);
    profile.chase_ratio=mean_value(accumulator.chase_ratios);
    if(accumulator.attack_clocks.size()>1) {
        std::vector<double> intervals;
        for(size_t i=1;i<accumulator.attack_clocks.size();++i)
            intervals.push_back((accumulator.attack_clocks[i]-
                accumulator.attack_clocks[i-1])*2.0);
        profile.mean_attack_interval=mean_value(intervals);
        profile.min_attack_interval=min_value(intervals);
        profile.max_attack_interval=max_value(intervals);
    }
    std::map<std::string,std::vector<const AttackSample*>> groups;
    for(const auto& attack:profile.attacks) {
        AttackPrimitive primitive=AttackPrimitive::unknown;
        if(attack.radial)primitive=AttackPrimitive::radial_projectile;
        else if(attack.spread)primitive=AttackPrimitive::spread_projectile;
        else if(attack.aimed)primitive=AttackPrimitive::aimed_projectile;
        const std::string key=std::string(attack_primitive_name(primitive))+"|"+
            std::to_string(attack.state)+"|"+attack.animation;
        groups[key].push_back(&attack);
    }
    for(const auto&[key,samples]:groups) {
        if(int(samples.size())<std::max(1,config_.min_attack_samples))continue;
        BehaviorPattern pattern;
        pattern.primitive=AttackPrimitive::unknown;
        pattern.state=samples.front()->state;
        pattern.animation=samples.front()->animation;
        pattern.samples=int(samples.size());
        std::vector<double> speeds,windups,counts;
        int aimed=0,radial=0,spread=0;
        for(const auto* sample:samples) {
            speeds.push_back(sample->speed);windups.push_back(sample->windup_frames);
            counts.push_back(sample->projectile_count);
            aimed+=sample->aimed?1:0;radial+=sample->radial?1:0;
            spread+=sample->spread?1:0;
        }
        pattern.mean_speed=mean_value(speeds);
        pattern.min_speed=min_value(speeds);pattern.max_speed=max_value(speeds);
        pattern.mean_windup=median_value(windups);
        pattern.min_windup=min_value(windups);pattern.max_windup=max_value(windups);
        pattern.mean_count=mean_value(counts);
        pattern.min_count=min_value(counts);pattern.max_count=max_value(counts);
        pattern.aimed_ratio=double(aimed)/double(samples.size());
        pattern.radial_ratio=double(radial)/double(samples.size());
        pattern.spread_ratio=double(spread)/double(samples.size());
        if(pattern.radial_ratio>=0.60)pattern.primitive=AttackPrimitive::radial_projectile;
        else if(pattern.spread_ratio>=0.60)pattern.primitive=AttackPrimitive::spread_projectile;
        else if(pattern.aimed_ratio>=0.60)pattern.primitive=AttackPrimitive::aimed_projectile;
        pattern.targeting=pattern.primitive==AttackPrimitive::radial_projectile?
            AttackTargeting::area:pattern.primitive==AttackPrimitive::unknown?
            AttackTargeting::unknown:AttackTargeting::player_position;
        pattern.confidence=std::clamp(0.20+0.10*std::min(8,pattern.samples)+
            0.25*std::max({pattern.aimed_ratio,pattern.radial_ratio,pattern.spread_ratio}),
            0.0,0.95);
        pattern.evidence={{"source","Reader projectile spawns"},
            {"state",pattern.state},{"animation",pattern.animation},
            {"samples",pattern.samples}};
        profile.patterns.push_back(std::move(pattern));
    }
    profile.confidence=std::clamp(0.20+0.03*std::min(20,profile.samples)+
        0.05*double(profile.patterns.size())+0.20*profile.chase_ratio,0.0,0.95);
    profile.evidence="frame-log behavior sequence; no static formula promotion";
}
void BehaviorDiscovery::finalize() {
    if(finalized_)return;
    finalized_=true;
    for(auto&[key,accumulator]:accumulators_)build_patterns(accumulator);
    result_.entities=0;
    result_.profiles.clear();
    for(auto&[key,accumulator]:accumulators_) {
        result_.entities+=uint64_t(accumulator.entity_ids.size());
        result_.profiles.push_back(accumulator.profile);
    }
    std::stable_sort(result_.profiles.begin(),result_.profiles.end(),
        [](const BehaviorProfile& a,const BehaviorProfile& b) {
            return a.identity<b.identity;
        });
}
BehaviorDiscoveryResult BehaviorDiscovery::result() const { return result_; }
// ---------------------------------------------------------------------------
json MechanismCluster::to_json() const {
    return {{"id",id},{"primitive",primitive},{"targeting",targeting},
        {"members",members},{"samples",samples},
        {"speed",{{"min",min_speed},{"max",max_speed},{"mean",mean_speed}}},
        {"windup",{{"min",min_windup},{"max",max_windup},{"mean",mean_windup}}},
        {"interval",{{"min",min_interval},{"max",max_interval},{"mean",mean_interval}}},
        {"confidence",confidence},{"shared_parameters",shared_parameters},
        {"member_differences",member_differences},{"evidence",evidence}};
}
json MechanismClusteringResult::to_json() const {
    json rows=json::array();
    for(const auto& cluster:items)rows.push_back(cluster.to_json());
    return {{"profiles",profiles},{"patterns",patterns},{"clusters",clusters},
        {"items",rows}};
}
MechanismClusterer::MechanismClusterer(MechanismClusteringConfig config):config_(config) {}
MechanismClusteringResult MechanismClusterer::cluster(
    const std::vector<BehaviorProfile>& profiles) const {
    MechanismClusteringResult result;
    result.profiles=profiles.size();
    std::vector<MechanismCluster> clusters;
    for(const auto& profile:profiles) {
        for(const auto& pattern:profile.patterns) {
            ++result.patterns;
            MechanismCluster* target=nullptr;
            for(auto& cluster:clusters) {
                if(cluster.primitive!=attack_primitive_name(pattern.primitive)||
                   cluster.targeting!=attack_targeting_name(pattern.targeting))continue;
                const double speed_gap=std::abs(cluster.mean_speed-pattern.mean_speed)/
                    std::max(1.0,std::max(cluster.mean_speed,pattern.mean_speed));
                const double windup_gap=std::abs(cluster.mean_windup-pattern.mean_windup)/
                    std::max(1.0,std::max(cluster.mean_windup,pattern.mean_windup));
                if(speed_gap<=config_.speed_tolerance&&
                   windup_gap<=config_.windup_tolerance) {target=&cluster;break;}
            }
            if(!target) {
                MechanismCluster cluster;
                cluster.id=std::string(attack_primitive_name(pattern.primitive))+":"+
                    attack_targeting_name(pattern.targeting)+":"+std::to_string(clusters.size());
                cluster.primitive=attack_primitive_name(pattern.primitive);
                cluster.targeting=attack_targeting_name(pattern.targeting);
                cluster.min_speed=pattern.min_speed;cluster.max_speed=pattern.max_speed;
                cluster.min_windup=pattern.min_windup;cluster.max_windup=pattern.max_windup;
                cluster.mean_speed=pattern.mean_speed;
                cluster.mean_windup=pattern.mean_windup;
                clusters.push_back(std::move(cluster));
                target=&clusters.back();
            }
            if(std::find(target->members.begin(),target->members.end(),profile.identity)==
               target->members.end())
                target->members.push_back(profile.identity);
            target->samples+=pattern.samples;
            target->min_speed=std::min(target->min_speed,pattern.min_speed);
            target->max_speed=std::max(target->max_speed,pattern.max_speed);
            target->mean_speed=(target->mean_speed+pattern.mean_speed)*0.5;
            target->min_windup=std::min(target->min_windup,pattern.min_windup);
            target->max_windup=std::max(target->max_windup,pattern.max_windup);
            target->mean_windup=(target->mean_windup+pattern.mean_windup)*0.5;
            target->min_interval=profile.min_attack_interval;
            target->max_interval=profile.max_attack_interval;
            target->mean_interval=profile.mean_attack_interval;
            target->member_differences.push_back({{"identity",profile.identity},
                {"speed",pattern.mean_speed},{"windup",pattern.mean_windup},
                {"state",pattern.state},{"animation",pattern.animation}});
        }
    }
    for(auto& cluster:clusters) {
        if(cluster.samples<config_.min_samples)continue;
        cluster.confidence=std::clamp(0.20+0.07*std::min(8,cluster.samples)+
            0.08*double(cluster.members.size()),0.0,0.95);
        cluster.shared_parameters={{ "primitive",cluster.primitive},
            {"targeting",cluster.targeting},{"speed_mean",cluster.mean_speed},
            {"windup_mean_frames",cluster.mean_windup},
            {"interval_mean_frames",cluster.mean_interval},
            {"members",cluster.members}};
        cluster.evidence={{"source","BehaviorDiscovery patterns"},
            {"member_count",cluster.members.size()},{"samples",cluster.samples}};
        result.items.push_back(std::move(cluster));
    }
    result.clusters=result.items.size();
    return result;
}
// ---------------------------------------------------------------------------
json StaticMechanismReference::to_json() const {
    return {{"identity",identity},{"state",state},{"animation",animation},
        {"source_ref",source_ref},{"status",status},
        {"timing_verified",timing_verified},{"geometry_verified",geometry_verified},
        {"planning_validated",planning_validated},{"payload",payload}};
}
std::vector<const StaticMechanismReference*> MechanismReferenceIndex::find(
    const std::string& identity,int state,const std::string& animation) const {
    std::vector<const StaticMechanismReference*> result;
    const auto found=by_identity.find(identity);
    if(found==by_identity.end())return result;
    for(const size_t index:found->second) {
        const auto& reference=references[index];
        if(!reference.state.empty()&&reference.state!=std::to_string(state))continue;
        if(!reference.animation.empty()&&reference.animation!=animation)continue;
        result.push_back(&reference);
    }
    return result;
}
json MechanismReferenceIndex::to_json() const {
    json rows=json::array();
    for(const auto& reference:references)rows.push_back(reference.to_json());
    return {{"references",rows}};
}
bool MechanismReferenceLoader::load_file(const std::filesystem::path& path,
    MechanismReferenceIndex& out,std::string* error) {
    json value;
    if(!read_json_file(path,value,error))return false;
    const auto name=path.filename().string();
    if(name.find("phase4_timing")!=std::string::npos||value.contains("timings")) {
        const auto timings=value.value("timings",json::object());
        for(const auto&[key,item]:timings.items()) {
            StaticMechanismReference ref;
            const auto first=key.find(':');
            const auto second=key.find(':',first==std::string::npos?0:first+1);
            ref.identity=key.substr(0,first);
            ref.state=first==std::string::npos?std::string{}:
                key.substr(first+1,second-first-1);
            ref.animation=second==std::string::npos?std::string{}:key.substr(second+1);
            ref.source_ref=item.value("source",path.string());
            ref.status=item.value("evidence",std::string{"static timing"});
            ref.timing_verified=item.value("timing_verified",false);
            ref.geometry_verified=item.value("geometry_verified",false);
            ref.planning_validated=item.value("planning_validated",false);
            ref.payload=item;
            out.by_identity[ref.identity].push_back(out.references.size());
            out.references.push_back(std::move(ref));
        }
    }
    if(name.find("geometry_patterns")!=std::string::npos||value.contains("rules")) {
        const auto rules=value.value("rules",json::array());
        for(const auto& item:rules) {
            StaticMechanismReference ref;
            ref.identity=item.value("target_identity",std::string{});
            ref.state=std::to_string(item.value("source_state",-1));
            ref.animation=item.value("source_animation",std::string{});
            ref.source_ref=item.value("source_refs",path.string());
            ref.status=item.value("evidence_status",std::string{"static pattern"});
            ref.planning_validated=item.value("planning_validated",false);
            ref.geometry_verified=item.value("geometry_verified",false);
            ref.payload=item;
            out.by_identity[ref.identity].push_back(out.references.size());
            out.references.push_back(std::move(ref));
        }
    }
    if(value.contains("identities")) {
        const auto identities=value.value("identities",json::object());
        for(const auto&[identity,item]:identities.items()) {
            const auto states=item.value("state_rules",json::object());
            for(const auto&[state,rule]:states.items()) {
                const bool attack=rule.contains("attack_calls")||
                    rule.contains("attack_animations")||
                    rule.contains("candidate_attack_animations");
                if(!attack)continue;
                StaticMechanismReference ref;
                ref.identity=identity;
                ref.state=state;
                ref.source_ref="data/mechanisms/gamebot_runtime_semantics.json#"+
                    identity+":"+state;
                ref.status=rule.value("attack_mapping_evidence",
                    std::string{"static_ai_attack_candidate"});
                ref.planning_validated=false;
                ref.geometry_verified=false;
                ref.payload=rule;
                out.by_identity[ref.identity].push_back(out.references.size());
                out.references.push_back(std::move(ref));
            }
        }
    }
    return true;
}
bool MechanismReferenceLoader::load(const std::filesystem::path& directory,
    MechanismReferenceIndex& out,std::string* error) {
    std::error_code ignored;
    if(!std::filesystem::exists(directory,ignored)) {
        if(error)*error="reference directory not found";
        return false;
    }
    for(const char* name:{"gamebot_phase4_timing.json",
        "gamebot_monster_geometry_patterns.json",
        "gamebot_runtime_semantics.json"}) {
        const auto path=directory/name;
        if(std::filesystem::exists(path,ignored))load_file(path,out,error);
    }
    return true;
}
json RecoveredFormula::to_json() const {
    return {{"identity",identity},{"primitive",primitive},{"formula",formula},
        {"evidence_status",evidence_status},{"notes",notes},{"samples",samples},
        {"confidence",confidence},{"can_promote_verified",can_promote_verified},
        {"parameters",parameters},{"observation",observation},
        {"source_refs",source_refs}};
}
json FormulaRecoveryResult::to_json() const {
    json rows=json::array();
    for(const auto& item:items)rows.push_back(item.to_json());
    return {{"profiles",profiles},{"formulas",formulas},{"items",rows}};
}
FormulaRecoveryResult FormulaRecovery::recover(
    const std::vector<BehaviorProfile>& profiles,
    const MechanismClusteringResult& clusters) const {
    FormulaRecoveryResult result;
    result.profiles=profiles.size();
    for(const auto& profile:profiles) {
        for(const auto& pattern:profile.patterns) {
            RecoveredFormula formula;
            formula.identity=profile.identity;
            formula.primitive=attack_primitive_name(pattern.primitive);
            formula.samples=pattern.samples;
            formula.parameters={{ "state",pattern.state},{"animation",pattern.animation},
                {"primitive",formula.primitive},
                {"targeting",attack_targeting_name(pattern.targeting)},
                {"speed",{{"mean",pattern.mean_speed},{"min",pattern.min_speed},
                    {"max",pattern.max_speed}}},
                {"windup_frames",{{"mean",pattern.mean_windup},
                    {"min",pattern.min_windup},{"max",pattern.max_windup}}},
                {"count",{{"mean",pattern.mean_count},{"min",pattern.min_count},
                    {"max",pattern.max_count}}},
                {"attack_interval_frames",{{"mean",profile.mean_attack_interval},
                    {"min",profile.min_attack_interval},
                    {"max",profile.max_attack_interval}}}};
            formula.observation={{"samples",pattern.samples},
                {"aimed_ratio",pattern.aimed_ratio},{"radial_ratio",pattern.radial_ratio},
                {"spread_ratio",pattern.spread_ratio},
                {"chase_ratio",profile.chase_ratio}};
            const auto refs=references_.find(profile.identity,pattern.state,
                pattern.animation);
            bool static_timing=false,static_geometry=false;
            for(const auto* ref:refs) {
                formula.source_refs.push_back(ref->source_ref);
                static_timing|=ref->timing_verified;
                static_geometry|=ref->geometry_verified||ref->planning_validated;
                formula.observation["static_reference"]=ref->payload;
            }
            formula.can_promote_verified=(static_timing||static_geometry)&&
                pattern.samples>=3&&pattern.confidence>=0.60;
            formula.evidence_status=refs.empty()?"candidate":
                (formula.can_promote_verified?"inferred":"inferred");
            formula.formula="windup_frames=state_entry+"+
                std::to_string(int(std::lround(pattern.mean_windup)))+
                "; cooldown_frames="+
                std::to_string(int(std::lround(profile.mean_attack_interval)))+
                "; speed="+std::to_string(int(std::lround(pattern.mean_speed)))+
                "; count="+std::to_string(int(std::lround(pattern.mean_count)))+
                "; targeting="+std::string(attack_targeting_name(pattern.targeting));
            formula.confidence=std::clamp(0.20+0.08*std::min(8,pattern.samples)+
                0.25*pattern.confidence+(static_timing?0.10:0.0)+
                (static_geometry?0.10:0.0),0.0,0.95);
            if(formula.confidence<0.25)continue;
            bool in_cluster=false;
            for(const auto& cluster:clusters.items)
                if(cluster.primitive==formula.primitive&&
                   std::find(cluster.members.begin(),cluster.members.end(),
                       profile.identity)!=cluster.members.end())in_cluster=true;
            if(in_cluster)formula.notes="shared with a mechanism cluster";
            formula.notes+=(formula.can_promote_verified?
                " static evidence present; promotion requires replay validation":
                " observation-only candidate; no verified static formula");
            result.items.push_back(std::move(formula));
        }
    }
    result.formulas=result.items.size();
    return result;
}
// ---------------------------------------------------------------------------
const char* candidate_status_name(CandidateStatus status) {
    switch(status) {
    case CandidateStatus::candidate:return "candidate";
    case CandidateStatus::inferred:return "inferred";
    case CandidateStatus::verified:return "verified";
    default:return "rejected";
    }
}
CandidateStatus candidate_status_from_name(const std::string& name) {
    if(name=="verified")return CandidateStatus::verified;
    if(name=="inferred")return CandidateStatus::inferred;
    if(name=="rejected")return CandidateStatus::rejected;
    return CandidateStatus::candidate;
}
json MechanismCandidate::to_json() const {
    return {{"id",id},{"identity",identity},{"primitive",primitive},
        {"targeting",targeting},{"state",state},{"animation",animation},
        {"evidence_status",evidence_status},{"source_refs",source_refs},
        {"evidence",evidence},{"samples",samples},{"confidence",confidence},
        {"runtime_loadable",runtime_loadable},{"trigger",trigger},
        {"geometry",geometry},{"timing",timing},{"parameters",parameters},
        {"evidence_detail",evidence_detail}};
}
MechanismCandidate MechanismCandidate::from_json(const json& value) {
    MechanismCandidate candidate;
    candidate.id=value.value("id",std::string{});
    candidate.identity=value.value("identity",std::string{});
    candidate.primitive=value.value("primitive",std::string{});
    candidate.targeting=value.value("targeting",std::string{});
    candidate.state=value.value("state",std::string{});
    candidate.animation=value.value("animation",std::string{});
    candidate.evidence_status=value.value("evidence_status",std::string{"candidate"});
    candidate.source_refs=value.value("source_refs",std::string{});
    candidate.evidence=value.value("evidence",std::string{});
    candidate.samples=value.value("samples",0);
    candidate.confidence=value.value("confidence",0.0);
    candidate.runtime_loadable=value.value("runtime_loadable",false);
    candidate.trigger=value.value("trigger",json::object());
    candidate.geometry=value.value("geometry",json::object());
    candidate.timing=value.value("timing",json::object());
    candidate.parameters=value.value("parameters",json::object());
    candidate.evidence_detail=value.value("evidence_detail",json::object());
    return candidate;
}
json MechanismLibrary::to_json() const {
    json rows=json::array();
    for(const auto& candidate:candidates)rows.push_back(candidate.to_json());
    return {{"format",format},{"version",version},{"generated_utc",generated_utc},
        {"candidates",rows},{"projectile_models",projectile_models},
        {"history",history}};
}
MechanismLibrary MechanismLibrary::from_json(const json& value) {
    MechanismLibrary library;
    library.format=value.value("format","isaac-gamebot-discovered-library-v1");
    library.version=value.value("version",0);
    library.generated_utc=value.value("generated_utc",std::string{});
    library.projectile_models=value.value("projectile_models",json::object());
    library.history=value.value("history",json::array());
    for(const auto& item:value.value("candidates",json::array()))
        library.candidates.push_back(MechanismCandidate::from_json(item));
    return library;
}
bool MechanismLibrary::save(const std::filesystem::path& path,std::string* error) const {
    std::error_code ignored;
    if(path.has_parent_path())std::filesystem::create_directories(path.parent_path(),ignored);
    std::ofstream output{path};
    if(!output) {if(error)*error="cannot write "+path.string();return false;}
    output<<to_json().dump(2)<<'\n';
    if(!output) {if(error)*error="write failed "+path.string();return false;}
    return true;
}
std::optional<MechanismLibrary> MechanismLibrary::load(const std::filesystem::path& path,
    std::string* error) {
    json value;
    if(!read_json_file(path,value,error))return std::nullopt;
    return from_json(value);
}
json MechanismLibraryDiff::to_json() const {
    return {{"added",added},{"updated",updated},{"removed",removed},
        {"unchanged",unchanged},
        {"projectile_models_status",projectile_models_status}};
}
MechanismLibraryDiff compare_mechanism_libraries(const MechanismLibrary& before,
    const MechanismLibrary& after) {
    MechanismLibraryDiff diff;
    std::map<std::string,const MechanismCandidate*> old_items;
    for(const auto& candidate:before.candidates)old_items[candidate.id]=&candidate;
    for(const auto& candidate:after.candidates) {
        const auto found=old_items.find(candidate.id);
        if(found==old_items.end())diff.added.push_back(candidate.id);
        else if(found->second->to_json()==candidate.to_json())
            diff.unchanged.push_back(candidate.id);
        else diff.updated.push_back(candidate.id);
        old_items.erase(candidate.id);
    }
    for(const auto&[id,unused]:old_items) {diff.removed.push_back(id);(void)unused;}
    const bool before_empty=!before.projectile_models.is_object()||
        before.projectile_models.empty();
    const bool after_empty=!after.projectile_models.is_object()||
        after.projectile_models.empty();
    if(before.projectile_models==after.projectile_models) {
        diff.projectile_models_status="unchanged";
    }else if(before_empty&&!after_empty) {
        diff.projectile_models_status="added";
        diff.added.push_back("projectile-motion-models");
    }else if(!before_empty&&after_empty) {
        diff.projectile_models_status="removed";
        diff.removed.push_back("projectile-motion-models");
    }else {
        diff.projectile_models_status="updated";
        diff.updated.push_back("projectile-motion-models");
    }
    return diff;
}
bool import_projectile_motion_models(MechanismLibrary& library,
    const std::filesystem::path& path,std::string* error) {
    std::ifstream input{path};
    if(!input) {if(error)*error="cannot open "+path.string();return false;}
    json value;
    try {input>>value;}
    catch(const std::exception& e) {if(error)*error=e.what();return false;}
    if(!value.is_object()||value.value("format",std::string{}).rfind(
           "isaac-gamebot-projectile-motion",0)!=0) {
        if(error)*error="unsupported projectile motion model format in "+path.string();
        return false;
    }
    if(!value.contains("models")||!value.at("models").is_array()) {
        if(error)*error="projectile motion model file has no models array";
        return false;
    }
    library.projectile_models=value;
    if(error)error->clear();
    return true;
}
json projectile_motion_model_index(const MechanismLibrary& library) {
    json models=json::array();
    int count=0;
    if(library.projectile_models.is_object()&&
       library.projectile_models.contains("models")&&
       library.projectile_models.at("models").is_array()) {
        for(const auto& model:library.projectile_models.at("models")) {
            if(!model.is_object())continue;
            ++count;
            models.push_back({{"id",model.value("id",std::string{})},
                {"status",model.value("status",std::string{"candidate"})},
                {"runtime_loadable",model.value("runtime_loadable",false)}});
        }
    }
    return {{"library_version",library.version},
        {"model_format",library.projectile_models.value("format",std::string{})},
        {"model_version",library.projectile_models.value("version",0)},
        {"model_count",count},{"models",models},
        {"history",library.history}};
}
json MechanismLibraryUpdate::to_json() const {
    return {{"success",success},{"previous_version",previous_version},
        {"new_version",new_version},{"version_path",version_path},
        {"current_path",current_path},{"error",error},{"diff",diff.to_json()}};
}
MechanismLibraryUpdater::MechanismLibraryUpdater(MechanismLibraryUpdaterConfig config,
    std::filesystem::path directory):config_(config),directory_(std::move(directory)) {}
MechanismLibraryUpdate MechanismLibraryUpdater::update(MechanismLibrary library,
    const std::vector<MechanismCandidate>& candidates,const std::string& reason) {
    MechanismLibraryUpdate result;
    result.previous_version=library.version;
    auto before=library;
    std::map<std::string,size_t> index;
    for(size_t i=0;i<library.candidates.size();++i)
        index[library.candidates[i].id]=i;
    for(auto candidate:candidates) {
        CandidateStatus status=candidate_status_from_name(candidate.evidence_status);
        if(status==CandidateStatus::verified&&!config_.auto_promote_verified)
            candidate.evidence_status="inferred";
        if(status==CandidateStatus::candidate&&!config_.allow_candidate)continue;
        if(status==CandidateStatus::inferred&&!config_.allow_inferred)continue;
        const auto found=index.find(candidate.id);
        if(found==index.end()) {
            index[candidate.id]=library.candidates.size();
            library.candidates.push_back(std::move(candidate));
        }else {
            auto& existing=library.candidates[found->second];
            if(existing.evidence_status=="verified"&&
               candidate.evidence_status!="verified")continue;
            if(candidate.confidence>=existing.confidence)
                existing=std::move(candidate);
        }
    }
    ++library.version;
    library.generated_utc=iso_now();
    result.diff=compare_mechanism_libraries(before,library);
    json history_entry{{"version",library.version},{"generated_utc",library.generated_utc},
        {"reason",reason},{"diff",result.diff.to_json()},
        {"candidates",library.candidates.size()}};
    if(!library.history.is_array())library.history=json::array();
    library.history.push_back(std::move(history_entry));
    result.new_version=library.version;
    if(directory_.empty()) {
        result.error="library directory is empty";
        result.success=false;
        return result;
    }
    std::error_code ignored;
    std::filesystem::create_directories(directory_,ignored);
    const auto current=directory_/"current.json";
    if(std::filesystem::exists(current,ignored)) {
        const auto backup=directory_/("library-v"+
            std::to_string(std::max(0,library.version-1))+".json");
        std::filesystem::copy_file(current,backup,
            std::filesystem::copy_options::overwrite_existing,ignored);
    }
    library.save(current,nullptr);
    const auto version_path=directory_/("library-v"+
        std::to_string(library.version)+".json");
    if(!library.save(version_path,&result.error)) {
        result.success=false;return result;
    }
    result.version_path=version_path.string();
    result.current_path=current.string();
    result.success=true;
    return result;
}
MechanismLibraryUpdate MechanismLibraryUpdater::update_projectile_models(
    MechanismLibrary library,const std::filesystem::path& models_path,
    const std::string& reason) {
    MechanismLibraryUpdate result;
    result.previous_version=library.version;
    auto before=library;
    std::string import_error;
    if(!import_projectile_motion_models(library,models_path,&import_error)) {
        result.error=import_error;
        result.success=false;
        return result;
    }
    ++library.version;
    library.generated_utc=iso_now();
    result.diff=compare_mechanism_libraries(before,library);
    int model_count=0;
    if(library.projectile_models.is_object()&&
       library.projectile_models.contains("models")&&
       library.projectile_models.at("models").is_array())
        model_count=int(library.projectile_models.at("models").size());
    json history_entry{{"version",library.version},
        {"generated_utc",library.generated_utc},{"reason",reason},
        {"diff",result.diff.to_json()},
        {"projectile_models",{{"format",library.projectile_models.value("format",
            std::string{})},{"version",library.projectile_models.value("version",0)},
            {"count",model_count}}},
        {"candidates",library.candidates.size()}};
    if(!library.history.is_array())library.history=json::array();
    library.history.push_back(std::move(history_entry));
    result.new_version=library.version;
    if(directory_.empty()) {
        result.error="library directory is empty";
        result.success=false;
        return result;
    }
    std::error_code ignored;
    std::filesystem::create_directories(directory_,ignored);
    const auto current=directory_/"current.json";
    if(std::filesystem::exists(current,ignored)) {
        const auto backup=directory_/("library-v"+
            std::to_string(std::max(0,library.version-1))+".json");
        std::filesystem::copy_file(current,backup,
            std::filesystem::copy_options::overwrite_existing,ignored);
    }
    library.save(current,nullptr);
    const auto version_path=directory_/("library-v"+
        std::to_string(library.version)+".json");
    if(!library.save(version_path,&result.error)) {
        result.success=false;
        return result;
    }
    result.version_path=version_path.string();
    result.current_path=current.string();
    result.success=true;
    return result;
}
std::optional<MechanismLibrary> MechanismLibraryUpdater::rollback(int version,
    std::string* error) const {
    const auto path=directory_/("library-v"+std::to_string(version)+".json");
    auto library=MechanismLibrary::load(path,error);
    if(!library)return std::nullopt;
    if(!library->save(directory_/"current.json",error))return std::nullopt;
    return library;
}
// ---------------------------------------------------------------------------
json CompiledMechanism::to_json() const {
    return {{"identity",identity},{"primitive",primitive},
        {"loadable",loadable},{"pattern_rule",pattern_rule},
        {"runtime_model",runtime_model}};
}
CompiledMechanism MechanismModelCompiler::compile(const MechanismCandidate& candidate) {
    CompiledMechanism result;
    result.identity=candidate.identity;
    result.primitive=candidate.primitive;
    const auto primitive=candidate.primitive;
    std::string pattern="stream",direction="aimed";
    if(primitive=="radial_projectile") {pattern="radial";direction="fixed";}
    else if(primitive=="spread_projectile") {pattern="spread";direction="aimed";}
    else if(primitive=="laser") {pattern="laser";direction="aimed";}
    else if(primitive=="unknown"||primitive.empty()) {pattern="unknown";direction="fixed";}
    const double trigger=candidate.timing.value("trigger_frame",0.0);
    const double speed=candidate.timing.value("speed",0.0);
    const double duration=candidate.timing.value("duration_frames",0.0);
    const int count=std::max(1,candidate.geometry.value("count",1));
    const int state=safe_int(candidate.state,-1);
    result.pattern_rule={
        {"target_identity",candidate.identity},{"kind",primitive=="laser"?"laser":"projectile"},
        {"source_state",state},{"source_animation",candidate.animation},
        {"trigger_animation_frame",int(std::lround(trigger))},
        {"pattern",pattern},{"direction",direction},{"center","source"},
        {"count",count},{"speed",speed},{"radius",candidate.geometry.value("radius",5.0)},
        {"duration_frames",int(std::lround(duration))},
        {"evidence_status",candidate.evidence_status},
        {"source_refs",candidate.source_refs},
        {"phase_samples",candidate.samples},
        {"phase_degrees",candidate.geometry.value("phase_degrees",0.0)},
        {"phase_uncertainty_degrees",candidate.geometry.value("phase_uncertainty_degrees",0.0)},
        {"planning_validated",candidate.evidence_status=="verified"},
        {"pre_spawn_verified",candidate.evidence_status=="verified"},
        {"geometry_verified",candidate.evidence_status=="verified"}
    };
    result.runtime_model={
        {"format","isaac-gamebot-monster-geometry-patterns-v1"},
        {"rules",json::array({result.pattern_rule})}};
    result.loadable=(candidate.evidence_status=="verified"||
        candidate.evidence_status=="inferred")&&pattern!="unknown";
    return result;
}
// ---------------------------------------------------------------------------
json DiscoveryResult::to_json() const {
    json candidate_rows=json::array();
    for(const auto& candidate:candidates)candidate_rows.push_back(candidate.to_json());
    json compiled_rows=json::array();
    for(const auto& item:compiled)compiled_rows.push_back(item.to_json());
    return {{"failure",failure.to_json()},{"behavior",behavior.to_json()},
        {"clustering",clustering.to_json()},{"formulas",formulas.to_json()},
        {"candidates",candidate_rows},{"compiled",compiled_rows},
        {"library_update",update.to_json()}};
}
DiscoveryPipeline::DiscoveryPipeline(DiscoveryConfig config):config_(std::move(config)) {}
DiscoveryResult DiscoveryPipeline::run(const std::filesystem::path& log_path) {
    DiscoveryResult result;
    FailureAnalyzer analyzer(config_.failure);
    result.failure=analyzer.analyze_path(log_path);
    BehaviorDiscovery behavior(config_.behavior);
    std::error_code ignored;
    walk_path(log_path,[&](const std::filesystem::path& file) {
        std::ifstream input{file};
        if(!input)return;
        std::string line;
        while(std::getline(input,line)) {
            if(line.empty())continue;
            json record;
            try {record=json::parse(line);}catch(const std::exception&) {continue;}
            if(!record.contains("frame"))continue;
            try {
                const auto frame=record.at("frame").get<Frame>();
                behavior.observe(frame);
            }catch(const std::exception&) {}
        }
        (void)ignored;
    });
    behavior.finalize();
    result.behavior=behavior.result();
    MechanismClusterer clusterer(config_.clustering);
    result.clustering=clusterer.cluster(result.behavior.profiles);
    MechanismReferenceIndex references;
    if(!config_.reference_directory.empty())
        MechanismReferenceLoader::load(config_.reference_directory,references,nullptr);
    FormulaRecovery recovery(std::move(references));    result.formulas=recovery.recover(result.behavior.profiles,result.clustering);
    for(const auto& formula:result.formulas.items) {
        MechanismCandidate candidate;
        candidate.id=formula.identity+"|"+formula.primitive+"|"+
            std::to_string(formula.parameters.value("state",-1))+"|"+
            formula.parameters.value("animation",std::string{});
        candidate.identity=formula.identity;
        candidate.primitive=formula.primitive;
        candidate.targeting=formula.parameters.value("targeting",std::string{});
        candidate.state=std::to_string(formula.parameters.value("state",-1));
        candidate.animation=formula.parameters.value("animation",std::string{});
        candidate.evidence_status=formula.evidence_status;
        candidate.samples=formula.samples;
        candidate.confidence=formula.confidence;
        candidate.source_refs=formula.source_refs.empty()?std::string{}:
            formula.source_refs.front();
        candidate.evidence=formula.formula;
        candidate.parameters=formula.parameters;
        candidate.timing={{"trigger_frame",formula.parameters["windup_frames"]["mean"]},
            {"speed",formula.parameters["speed"]["mean"]},
            {"duration_frames",formula.parameters["count"]["mean"]}};
        candidate.geometry={{"count",formula.parameters["count"]["mean"]},
            {"radius",5.0},{"phase_degrees",0.0}};
        candidate.evidence_detail=formula.observation;
        candidate.runtime_loadable=formula.can_promote_verified;
        result.candidates.push_back(candidate);
        result.compiled.push_back(MechanismModelCompiler::compile(candidate));
    }
    if(config_.write_library&&!config_.library_directory.empty()) {
        MechanismLibrary library;
        std::string error;
        if(auto loaded=MechanismLibrary::load(
               config_.library_directory/"current.json",&error))
            library=*loaded;
        MechanismLibraryUpdater updater(config_.updater,config_.library_directory);
        result.update=updater.update(library,result.candidates,config_.reason);
    }
    return result;
}
} // namespace gamebot
