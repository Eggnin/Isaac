#include "gamebot/strategy.hpp"
#include "gamebot/forward_sim.hpp"
#include "gamebot/unknown_threat.hpp"

#include <algorithm>
#include <cmath>
#include <ctime>
#include <fstream>
#include <iomanip>
#include <limits>
#include <set>
#include <sstream>
#include <unordered_set>

namespace gamebot {
namespace {
double clampd(double value,double low,double high) {
    return std::max(low,std::min(high,value));
}
int clampi(int value,int low,int high) {
    return std::max(low,std::min(high,value));
}
int sector_of(Vec direction) {
    if(!direction.finite()||(std::abs(direction.x)<1e-9&&std::abs(direction.y)<1e-9))
        return -1;
    const double angle=std::atan2(direction.y,direction.x);
    int sector=int(std::floor((angle+pi)/(2.0*pi)*8.0))%8;
    if(sector<0)sector+=8;
    return sector;
}
int tag_priority(ScenarioTag tag) {
    switch(tag) {
    case ScenarioTag::unknown_high_risk:return 7;
    case ScenarioTag::boss_combat:return 6;
    case ScenarioTag::multi_direction_pressure:return 5;
    case ScenarioTag::dense_projectiles:return 4;
    case ScenarioTag::melee_pressure:return 3;
    case ScenarioTag::ranged_pressure:return 2;
    default:return 1;
    }
}
double live_enemy_hp(const SimWorld& world) {
    double total=0;
    for(const auto& enemy:world.enemies)
        if(!enemy.dead&&enemy.hp>0)total+=enemy.hp;
    return total;
}
bool has_live_enemy(const SimWorld& world) {
    for(const auto& enemy:world.enemies)
        if(!enemy.dead&&enemy.hp>0)return true;
    return false;
}
Fire nearest_cardinal_fire(const SimWorld& world) {
    const SimEnemy* nearest=nullptr;
    double best=1e300;
    for(const auto& enemy:world.enemies) {
        if(enemy.dead||enemy.hp<=0)continue;
        const double gap=distance(enemy.pos,world.player.pos);
        if(gap<best) {best=gap;nearest=&enemy;}
    }
    if(!nearest)return Fire::none;
    const Vec delta=nearest->pos-world.player.pos;
    if(std::abs(delta.x)>=std::abs(delta.y))return delta.x>=0?Fire::right:Fire::left;
    return delta.y>=0?Fire::down:Fire::up;
}
uint64_t fnv1a(const std::string& text) {
    uint64_t hash=1469598103934665603ull;
    for(unsigned char byte:text) {
        hash^=byte;
        hash*=1099511628211ull;
    }
    return hash;
}
std::string parameter_key(const StrategyParameters& values) {
    return values.to_json().dump();
}
StrategyParameters interpolate(const StrategyParameters& a,const StrategyParameters& b,double t) {
    t=clampd(t,0.0,1.0);
    auto mix=[&](double x,double y) {return x+(y-x)*t;};
    StrategyParameters out;
    out.maneuver_weight=mix(a.maneuver_weight,b.maneuver_weight);
    out.target_switch_margin=mix(a.target_switch_margin,b.target_switch_margin);
    out.target_hold_frames=int(std::lround(mix(double(a.target_hold_frames),
        double(b.target_hold_frames))));
    out.engage_threshold=mix(a.engage_threshold,b.engage_threshold);
    out.disengage_threshold=mix(a.disengage_threshold,b.disengage_threshold);
    out.focus_fire_bonus=mix(a.focus_fire_bonus,b.focus_fire_bonus);
    out.attack_window_bias=mix(a.attack_window_bias,b.attack_window_bias);
    out.positioning_weight=mix(a.positioning_weight,b.positioning_weight);
    out.emergency_sensitivity=std::max(1.0,
        mix(a.emergency_sensitivity,b.emergency_sensitivity));
    return out;
}
double profile_score(const StrategyProfile& profile,const ScenarioClassification& scenario) {
    double score=0;
    for(ScenarioTag tag:scenario.tags)
        if(std::find(profile.scenario_tags.begin(),profile.scenario_tags.end(),tag)!=
           profile.scenario_tags.end())score+=1.0;
    if(std::find(profile.scenario_tags.begin(),profile.scenario_tags.end(),
                scenario.primary)!=profile.scenario_tags.end())score+=3.0;
    for(ScenarioTag tag:profile.scenario_tags)
        if(std::find(scenario.tags.begin(),scenario.tags.end(),tag)==scenario.tags.end())
            score-=0.35;
    score+=0.5*clampd(profile.confidence,0.0,1.0);
    return score;
}
void apply_emergency_sensitivity(MpcConfig& config,double sensitivity) {
    const double scale=clampd(sensitivity,1.0,1.6);
    if(scale<=1.0)return;
    auto up=[](int value,double factor) {
        return std::max(value,int(std::ceil(double(value)*factor)));
    };
    auto upd=[](double value,double factor) {
        return std::max(value,value*factor);
    };
    config.safety.collision_horizon_frames=up(config.safety.collision_horizon_frames,scale);
    config.safety.clearance_horizon_frames=up(config.safety.clearance_horizon_frames,scale);
    config.safety.escape_horizon_frames=up(config.safety.escape_horizon_frames,scale);
    config.safety.laser_warning_frames=up(config.safety.laser_warning_frames,scale);
    config.safety.clearance_radius=upd(config.safety.clearance_radius,scale);
    config.safety.boundary_margin=upd(config.safety.boundary_margin,scale);
    config.safety.uncertain_projectile_margin=
        upd(config.safety.uncertain_projectile_margin,scale);
}
std::string split_for(const std::string& file,int line,uint32_t room,uint32_t clock,
                      uint32_t seed,double holdout_fraction) {
    std::ostringstream text;
    text<<file<<'|'<<line<<'|'<<room<<'|'<<clock<<'|'<<seed;
    const uint64_t hash=fnv1a(text.str());
    const double bucket=double(hash%10000)/10000.0;
    return bucket<clampd(holdout_fraction,0.0,0.9)?"holdout":"train";
}
json relation_json(const WorldStateSnapshot& snapshot) {
    json out=json::array();
    for(const auto& enemy:snapshot.enemies) {
        const auto& entity=enemy.entity;
        if(!entity.alive()||!entity.enemy())continue;
        out.push_back({{"id",entity.address},{"type",entity.type},
            {"variant",entity.variant},{"subtype",entity.subtype},
            {"hp",entity.hp},{"max_hp",entity.max_hp},{"boss",entity.is_boss},
            {"damageable",entity.damageable_enemy()},
            {"unknown",enemy.unknown_mechanism},
            {"mechanism_known",enemy.mechanism_known},
            {"mechanism_confidence",enemy.mechanism.confidence},
            {"attack_timing_verified",enemy.mechanism.attack_timing_verified},
            {"parent",entity.parent},{"spawner",entity.spawner},
            {"owner",entity.owner},{"attack_target",entity.target},
            {"intents",enemy.intents.size()}});
    }
    return out;
}
double prediction_error_from_record(const json& record) {
    auto read=[&](const json& node)->double {
        if(!node.is_object())return 0;
        if(node.contains("error_score"))return node.value("error_score",0.0);
        if(node.contains("raw_error"))return node.value("raw_error",0.0);
        return 0;
    };
    if(record.contains("mpc")&&record.at("mpc").is_object()) {
        const auto& mpc=record.at("mpc");
        if(mpc.contains("closed_loop")&&mpc.at("closed_loop").is_object()) {
            const auto& loop=mpc.at("closed_loop");
            if(loop.contains("prediction"))return read(loop.at("prediction"));
        }
        if(mpc.contains("stats")&&mpc.at("stats").is_object())
            if(mpc.at("stats").contains("feedback"))
                return read(mpc.at("stats").at("feedback"));
    }
    if(record.contains("closed_loop")&&record.at("closed_loop").is_object()) {
        const auto& loop=record.at("closed_loop");
        if(loop.contains("prediction"))return read(loop.at("prediction"));
    }
    if(record.contains("prediction"))return read(record.at("prediction"));
    return 0;
}
} // namespace

// ---------------------------------------------------------------------------
// Scenario tags
// ---------------------------------------------------------------------------
const char* scenario_tag_name(ScenarioTag tag) {
    switch(tag) {
    case ScenarioTag::normal_room:return "normal_room";
    case ScenarioTag::melee_pressure:return "melee_pressure";
    case ScenarioTag::ranged_pressure:return "ranged_pressure";
    case ScenarioTag::dense_projectiles:return "dense_projectiles";
    case ScenarioTag::multi_direction_pressure:return "multi_direction_pressure";
    case ScenarioTag::boss_combat:return "boss_combat";
    case ScenarioTag::unknown_high_risk:return "unknown_high_risk";
    }
    return "normal_room";
}
ScenarioTag scenario_tag_from_name(const std::string& name) {
    for(ScenarioTag tag:all_scenario_tags())
        if(name==scenario_tag_name(tag))return tag;
    return ScenarioTag::normal_room;
}
std::vector<ScenarioTag> all_scenario_tags() {
    return {ScenarioTag::normal_room,ScenarioTag::melee_pressure,
        ScenarioTag::ranged_pressure,ScenarioTag::dense_projectiles,
        ScenarioTag::multi_direction_pressure,ScenarioTag::boss_combat,
        ScenarioTag::unknown_high_risk};
}
std::string scenario_tag_list(const std::vector<ScenarioTag>& tags) {
    std::string out;
    for(size_t i=0;i<tags.size();++i) {
        if(i)out+=",";
        out+=scenario_tag_name(tags[i]);
    }
    return out;
}
json ScenarioFeatures::to_json() const {
    return {{"enemies",enemies},{"damageable_enemies",damageable_enemies},
        {"bosses",bosses},{"hostile_projectiles",hostile_projectiles},
        {"lasers",lasers},{"hazards",hazards},
        {"projectiles_near_player",projectiles_near_player},
        {"projectile_density",projectile_density},
        {"attack_directions",attack_directions},
        {"direction_coverage",direction_coverage},
        {"opposing_directions",opposing_directions},
        {"free_space",free_space},{"local_density",local_density},
        {"nearest_enemy_distance",nearest_enemy_distance},
        {"unknown_risk",unknown_risk},{"unknown_enemies",unknown_enemies},
        {"mechanism_confidence",mechanism_confidence},
        {"inferred_mechanisms",inferred_mechanisms},
        {"boss_phase_fraction",boss_phase_fraction},{"low_hp",low_hp}};
}
bool ScenarioClassification::has(ScenarioTag tag) const {
    return std::find(tags.begin(),tags.end(),tag)!=tags.end();
}
json ScenarioClassification::to_json() const {
    json tag_values=json::array();
    for(ScenarioTag tag:tags)tag_values.push_back(scenario_tag_name(tag));
    return {{"tags",tag_values},{"primary",scenario_tag_name(primary)},
        {"confidence",confidence},{"risk",risk},{"features",features.to_json()},
        {"reason",reason}};
}

ScenarioClassification CombatScenarioClassifier::classify(
    const WorldStateSnapshot& root,const MechanismFrame* mechanisms) const {
    ScenarioClassification result;
    ScenarioFeatures& f=result.features;
    const Vec player=root.player.body.pos;
    f.low_hp=root.player.health>0&&root.player.health<=config_.low_hp_threshold;

    std::unordered_map<uint32_t,const MechanismObservation*> observations;
    if(mechanisms)for(const auto& observation:mechanisms->enemies)
        observations[observation.address]=&observation;

    std::set<int> sectors;
    std::vector<Vec> directions;
    auto add_direction=[&](Vec direction_vector) {
        const int sector=sector_of(direction_vector);
        if(sector<0)return;
        sectors.insert(sector);
        directions.push_back(direction_vector.unit());
    };

    double mechanism_sum=0;
    int mechanism_count=0;
    double unknown_evidence=0;
    int unknown_enemy_count=0;
    bool melee=false,ranged=false;
    const double melee_distance=std::max(40.0,config_.melee_distance);
    for(const auto& enemy:root.enemies) {
        const auto& entity=enemy.entity;
        if(!entity.alive()||!entity.enemy())continue;
        ++f.enemies;
        if(entity.damageable_enemy())++f.damageable_enemies;
        const double gap=distance(player,entity.pos);
        f.nearest_enemy_distance=std::min(f.nearest_enemy_distance,gap);
        const MechanismObservation* observation=nullptr;
        auto found=observations.find(entity.address);
        if(found!=observations.end())observation=found->second;
        const bool boss=entity.is_boss||enemy.mechanism.is_boss||
            (observation&&observation->is_boss);
        if(boss) {
            ++f.bosses;
            int phase=enemy.boss_phase;
            if(phase<0&&observation)phase=observation->boss_phase;
            if(phase>=0)f.boss_phase_fraction=clampd(double(phase)/4.0,0.0,1.0);
        }
        const bool known=enemy.mechanism_known||(observation&&observation->confidence>0);
        const double confidence=observation?
            clampd(observation->confidence,0.0,1.0):
            (enemy.mechanism_known?clampd(enemy.mechanism.confidence,0.0,1.0):0.0);
        bool unknown_enemy=false;
        if(known) {
            mechanism_sum+=confidence;
            ++mechanism_count;
            const bool verified=observation?
                observation->attack_timing_verified:
                enemy.mechanism.attack_timing_verified;
            if(!verified&&confidence>0)++f.inferred_mechanisms;
        } else {
            unknown_enemy=true;
            unknown_evidence+=0.30;
        }
        if(enemy.unknown_mechanism) {
            unknown_enemy=true;
            unknown_evidence+=0.20;
        }
        if(observation&&observation->unknown_state) {
            unknown_enemy=true;
            unknown_evidence+=0.05;
        }
        if(unknown_enemy)++unknown_enemy_count;

        add_direction(entity.pos-player);
        for(const auto& intent:enemy.intents) {
            if(intent.direction.finite())add_direction(intent.direction);
            if(intent.unknown)f.unknown_risk+=0.04;
        }
        if(enemy.has_precise_attack||!enemy.intents.empty()||
           (observation&&observation->attack_type!="Unknown"&&
            !observation->attack_type.empty()))ranged=true;
        if(gap<=melee_distance&&(entity.contact()||entity.collision!=0))melee=true;
        if(boss&&gap<=melee_distance*1.6)melee=true;
    }
    f.mechanism_confidence=mechanism_count?mechanism_sum/mechanism_count:0.25;
    f.unknown_enemies=unknown_enemy_count;

    for(const auto& projectile:root.projectiles) {
        if(projectile.role==ProjectileRole::friendly||!projectile.real)continue;
        if(!projectile.entity.alive())continue;
        ++f.hostile_projectiles;
        const double gap=distance(player,projectile.entity.pos);
        if(gap<=180)++f.projectiles_near_player;
        add_direction(projectile.entity.pos-player);
    }
    for(const auto& hazard:root.hazards) {
        if(hazard.kind==HazardKind::warning&&hazard.radius<=0)continue;
        ++f.hazards;
        if(hazard.kind==HazardKind::laser)++f.lasers;
        add_direction(hazard.pos-player);
        if(hazard.precision==Precision::unknown)f.unknown_risk+=0.06;
        else if(hazard.precision==Precision::estimated)f.unknown_risk+=0.02;
    }
    // Unknown evidence is averaged per observed enemy, with a small crowd
    // term. A single unfamiliar body is not automatically an "unknown high
    // risk" room; a crowd of them, or an unfamiliar body while the player is
    // already low, is.
    f.unknown_risk+=0.90*unknown_evidence/std::max(1,f.enemies);
    f.unknown_risk+=std::min(0.20,0.04*double(unknown_enemy_count));
    f.unknown_risk=clampd(f.unknown_risk,0.0,1.0);
    f.attack_directions=int(sectors.size());
    f.direction_coverage=double(f.attack_directions)/8.0;
    for(size_t i=0;i<directions.size()&&!f.opposing_directions;++i)
        for(size_t j=i+1;j<directions.size();++j)
            if(directions[i].dot(directions[j])<-0.35) {
                f.opposing_directions=true;break;
            }

    const auto& grid=root.room.grid;
    if(grid.valid&&grid.width>0&&grid.height>0) {
        int free=0,total=0;
        const double radius=std::max(2.0,root.player.body.radius*0.5);
        for(int index=0;index<grid.width*grid.height;++index) {
            const Vec center=grid.center(index);
            if(distance(center,player)>220)continue;
            ++total;
            if(grid.walkable(center,radius,root.player.flying))++free;
        }
        f.free_space=total?double(free)/double(total):0.5;
    }
    f.projectile_density=double(f.projectiles_near_player)/
        std::max(0.25,f.free_space);
    f.local_density=double(f.projectiles_near_player)/
        std::max(0.25,f.free_space*4.0);
    f.unknown_risk=clampd(f.unknown_risk+
        (f.low_hp&&f.unknown_enemies>0?0.20:0.0),0.0,1.0);

    std::vector<ScenarioTag> tags;
    if(f.bosses>0)tags.push_back(ScenarioTag::boss_combat);
    if(f.hostile_projectiles>=config_.dense_projectile_count||
       (f.projectiles_near_player>=config_.dense_local_projectile_count&&
        f.projectile_density>=config_.dense_density)||
       f.lasers>=2||f.hazards>=config_.hazard_count_limit)
        tags.push_back(ScenarioTag::dense_projectiles);
    if(f.attack_directions>=config_.multi_direction_min&&
       (f.opposing_directions||f.direction_coverage>=0.5))
        tags.push_back(ScenarioTag::multi_direction_pressure);
    if(melee)tags.push_back(ScenarioTag::melee_pressure);
    if(ranged)tags.push_back(ScenarioTag::ranged_pressure);
    if(f.unknown_risk>=config_.unknown_risk_threshold||
       (f.low_hp&&f.unknown_enemies>0))
        tags.push_back(ScenarioTag::unknown_high_risk);
    if(tags.empty())tags.push_back(ScenarioTag::normal_room);
    std::sort(tags.begin(),tags.end(),[](ScenarioTag a,ScenarioTag b) {
        return tag_priority(a)>tag_priority(b);
    });
    tags.erase(std::unique(tags.begin(),tags.end()),tags.end());
    result.tags=tags;
    result.primary=tags.front();

    double evidence=0.35;
    evidence+=0.08*double(tags.size()-1);
    evidence+=0.20*f.mechanism_confidence;
    evidence+=0.10*std::min(1.0,double(f.attack_directions)/5.0);
    evidence-=0.15*f.unknown_risk;
    result.confidence=clampd(evidence,0.20,0.95);
    result.risk=clampd(0.12*double(tags.size())+0.22*(f.bosses?1.0:0.0)+
        0.25*f.unknown_risk+0.10*(1.0-f.free_space)+
        (f.low_hp?0.10:0.0),0.0,1.0);
    std::ostringstream reason;
    reason<<"tags="<<scenario_tag_list(tags)
        <<"; enemies="<<f.enemies<<", projectiles="<<f.hostile_projectiles
        <<", directions="<<f.attack_directions
        <<", free_space="<<std::fixed<<std::setprecision(2)<<f.free_space
        <<", unknown="<<f.unknown_risk
        <<", mechanism_conf="<<f.mechanism_confidence;
    result.reason=reason.str();
    return result;
}

ScenarioClassification CombatScenarioClassifier::update(const WorldStateSnapshot& root,
    const MechanismFrame* mechanisms) {
    const ScenarioClassification raw=classify(root,mechanisms);
    if(!has_smoothed_) {
        smoothed_=raw;
        has_smoothed_=true;
        last_clock_=root.frame.clock;
        return smoothed_;
    }
    const int delta=int(root.frame.clock)-int(last_clock_);
    last_clock_=root.frame.clock;
    if(delta<0||delta>60) {
        smoothed_=raw;
        pending_frames_=0;
        return smoothed_;
    }
    if(raw.primary!=smoothed_.primary) {
        if(pending_primary_==raw.primary)++pending_frames_;
        else {pending_primary_=raw.primary;pending_frames_=1;}
        if(pending_frames_>=2) {
            smoothed_=raw;
            pending_frames_=0;
        } else {
            ScenarioClassification held=smoothed_;
            held.features=raw.features;
            held.confidence=raw.confidence*0.75;
            held.risk=raw.risk;
            held.reason=raw.reason+" | primary pending";
            return held;
        }
    } else {
        smoothed_=raw;
        pending_primary_=raw.primary;
        pending_frames_=0;
    }
    return smoothed_;
}
void CombatScenarioClassifier::reset() {
    smoothed_=ScenarioClassification{};
    has_smoothed_=false;
    last_clock_=0;
    pending_frames_=0;
}

// ---------------------------------------------------------------------------
// Strategy parameters and profiles
// ---------------------------------------------------------------------------
json StrategyParameters::to_json() const {
    return {{"maneuver_weight",maneuver_weight},
        {"target_switch_margin",target_switch_margin},
        {"target_hold_frames",target_hold_frames},
        {"engage_threshold",engage_threshold},
        {"disengage_threshold",disengage_threshold},
        {"focus_fire_bonus",focus_fire_bonus},
        {"attack_window_bias",attack_window_bias},
        {"positioning_weight",positioning_weight},
        {"emergency_sensitivity",emergency_sensitivity}};
}
StrategyParameters StrategyParameters::from_json(const json& value) {
    StrategyParameters out;
    out.maneuver_weight=value.value("maneuver_weight",out.maneuver_weight);
    out.target_switch_margin=value.value("target_switch_margin",out.target_switch_margin);
    out.target_hold_frames=value.value("target_hold_frames",out.target_hold_frames);
    out.engage_threshold=value.value("engage_threshold",out.engage_threshold);
    out.disengage_threshold=value.value("disengage_threshold",out.disengage_threshold);
    out.focus_fire_bonus=value.value("focus_fire_bonus",out.focus_fire_bonus);
    out.attack_window_bias=value.value("attack_window_bias",out.attack_window_bias);
    out.positioning_weight=value.value("positioning_weight",out.positioning_weight);
    out.emergency_sensitivity=value.value("emergency_sensitivity",out.emergency_sensitivity);
    return out;
}
json StrategyPerformanceSummary::to_json() const {
    return {{"evaluations",evaluations},{"scenario_samples",scenario_samples},
        {"holdout_samples",holdout_samples},{"deaths",deaths},
        {"holdout_deaths",holdout_deaths},{"mean_damage",mean_damage},
        {"mean_clear_time",mean_clear_time},{"mean_damage_dealt",mean_damage_dealt},
        {"mean_target_switches",mean_target_switches},
        {"mean_direction_reversals",mean_direction_reversals},
        {"confidence",confidence},{"simulated",simulated},
        {"evidence_scope",evidence_scope}};
}
StrategyPerformanceSummary StrategyPerformanceSummary::from_json(const json& value) {
    StrategyPerformanceSummary out;
    out.evaluations=value.value("evaluations",0);
    out.scenario_samples=value.value("scenario_samples",0);
    out.holdout_samples=value.value("holdout_samples",0);
    out.deaths=value.value("deaths",0);
    out.holdout_deaths=value.value("holdout_deaths",0);
    out.mean_damage=value.value("mean_damage",0.0);
    out.mean_clear_time=value.value("mean_clear_time",-1.0);
    out.mean_damage_dealt=value.value("mean_damage_dealt",0.0);
    out.mean_target_switches=value.value("mean_target_switches",0.0);
    out.mean_direction_reversals=value.value("mean_direction_reversals",0.0);
    out.confidence=value.value("confidence",0.0);
    out.simulated=value.value("simulated",false);
    out.evidence_scope=value.value("evidence_scope",out.evidence_scope);
    return out;
}
json StrategyProfile::to_json() const {
    json tag_values=json::array();
    for(ScenarioTag tag:scenario_tags)tag_values.push_back(scenario_tag_name(tag));
    return {{"profile_id",profile_id},{"scenario_tags",tag_values},
        {"parameter_values",parameters.to_json()},{"version",version},
        {"source",source},{"confidence",confidence},
        {"performance_summary",performance.to_json()},
        {"parent_id",parent_id},{"created_utc",created_utc}};
}
StrategyProfile StrategyProfile::from_json(const json& value) {
    StrategyProfile out;
    out.profile_id=value.value("profile_id",out.profile_id);
    out.scenario_tags.clear();
    if(value.contains("scenario_tags"))
        for(const auto& tag:value.at("scenario_tags"))
            out.scenario_tags.push_back(scenario_tag_from_name(tag.get<std::string>()));
    if(out.scenario_tags.empty())out.scenario_tags.push_back(ScenarioTag::normal_room);
    if(value.contains("parameter_values"))
        out.parameters=StrategyParameters::from_json(value.at("parameter_values"));
    out.version=value.value("version",out.version);
    out.source=value.value("source",out.source);
    out.confidence=value.value("confidence",out.confidence);
    if(value.contains("performance_summary"))
        out.performance=StrategyPerformanceSummary::from_json(value.at("performance_summary"));
    out.parent_id=value.value("parent_id",out.parent_id);
    out.created_utc=value.value("created_utc",out.created_utc);
    return out;
}
std::vector<StrategyProfile> builtin_strategy_profiles() {
    auto make=[](const char* id,ScenarioTag tag,StrategyParameters p,double confidence) {
        StrategyProfile profile;
        profile.profile_id=id;
        profile.scenario_tags={tag};
        profile.parameters=p;
        profile.source="builtin";
        profile.confidence=confidence;
        profile.performance.evidence_scope="builtin-prior; not a measured result";
        return profile;
    };
    StrategyParameters normal;
    StrategyParameters melee;
    melee.maneuver_weight=12;
    melee.target_switch_margin=0.12;
    melee.target_hold_frames=16;
    melee.disengage_threshold=0.72;
    melee.focus_fire_bonus=18;
    melee.attack_window_bias=8;
    melee.positioning_weight=9;
    melee.emergency_sensitivity=1.10;
    StrategyParameters ranged;
    ranged.maneuver_weight=10;
    ranged.target_switch_margin=0.18;
    ranged.engage_threshold=0.10;
    ranged.focus_fire_bonus=12;
    ranged.attack_window_bias=14;
    ranged.positioning_weight=7;
    StrategyParameters dense;
    dense.maneuver_weight=14;
    dense.target_switch_margin=0.20;
    dense.target_hold_frames=8;
    dense.engage_threshold=0.20;
    dense.disengage_threshold=0.65;
    dense.focus_fire_bonus=8;
    dense.attack_window_bias=6;
    dense.positioning_weight=12;
    dense.emergency_sensitivity=1.25;
    StrategyParameters multi;
    multi.maneuver_weight=13;
    multi.target_switch_margin=0.16;
    multi.target_hold_frames=10;
    multi.engage_threshold=0.15;
    multi.disengage_threshold=0.70;
    multi.focus_fire_bonus=14;
    multi.attack_window_bias=11;
    multi.positioning_weight=10;
    multi.emergency_sensitivity=1.15;
    StrategyParameters boss;
    boss.maneuver_weight=11;
    boss.target_switch_margin=0.10;
    boss.target_hold_frames=20;
    boss.engage_threshold=0.08;
    boss.disengage_threshold=0.75;
    boss.focus_fire_bonus=20;
    boss.attack_window_bias=12;
    boss.positioning_weight=8;
    boss.emergency_sensitivity=1.20;
    StrategyParameters unknown;
    unknown.maneuver_weight=16;
    unknown.target_switch_margin=0.22;
    unknown.target_hold_frames=6;
    unknown.engage_threshold=0.25;
    unknown.disengage_threshold=0.60;
    unknown.focus_fire_bonus=6;
    unknown.attack_window_bias=5;
    unknown.positioning_weight=12;
    unknown.emergency_sensitivity=1.35;
    return {
        make("default",ScenarioTag::normal_room,normal,0.45),
        make("normal-room",ScenarioTag::normal_room,normal,0.80),
        make("melee-pressure",ScenarioTag::melee_pressure,melee,0.65),
        make("ranged-pressure",ScenarioTag::ranged_pressure,ranged,0.65),
        make("dense-projectiles",ScenarioTag::dense_projectiles,dense,0.60),
        make("multi-direction",ScenarioTag::multi_direction_pressure,multi,0.60),
        make("boss-combat",ScenarioTag::boss_combat,boss,0.65),
        make("unknown-high-risk",ScenarioTag::unknown_high_risk,unknown,0.55)
    };
}
StrategyProfile default_strategy_profile() {
    return builtin_strategy_profiles().front();
}
const StrategyProfile* find_strategy_profile(const std::vector<StrategyProfile>& profiles,
    const std::string& id) {
    for(const auto& profile:profiles)
        if(profile.profile_id==id)return &profile;
    return nullptr;
}
MpcConfig strategy_config(const StrategyParameters& parameters,const MpcConfig& base) {
    MpcConfig config=base;
    apply_strategy_parameters(parameters,config);
    return config;
}
void apply_strategy_parameters(const StrategyParameters& parameters,MpcConfig& config) {
    config.maneuver_weight=clampd(parameters.maneuver_weight,2.0,20.0);
    config.combat.target_switch_margin=
        clampd(parameters.target_switch_margin,0.02,0.50);
    config.combat.target_min_hold_frames=
        clampi(parameters.target_hold_frames,4,40);
    config.combat.engage_threshold=clampd(parameters.engage_threshold,0.0,0.50);
    config.combat.disengage_threshold=
        clampd(parameters.disengage_threshold,0.50,0.95);
    config.combat.candidate_kill_weight=
        clampd(parameters.focus_fire_bonus,0.0,40.0);
    config.combat.candidate_window_weight=
        clampd(parameters.attack_window_bias,0.0,30.0);
    config.combat.candidate_position_weight=
        clampd(parameters.positioning_weight,0.0,20.0);
    apply_emergency_sensitivity(config,parameters.emergency_sensitivity);
}
bool strategy_preserves_safety(const MpcConfig& base,const MpcConfig& candidate) {
    const auto& a=base.safety;
    const auto& b=candidate.safety;
    return b.collision_horizon_frames>=a.collision_horizon_frames&&
        b.clearance_horizon_frames>=a.clearance_horizon_frames&&
        b.escape_horizon_frames>=a.escape_horizon_frames&&
        b.laser_warning_frames>=a.laser_warning_frames&&
        b.clearance_radius>=a.clearance_radius&&
        b.boundary_margin>=a.boundary_margin&&
        b.safe_margin>=a.safe_margin&&
        b.uncertain_projectile_margin>=a.uncertain_projectile_margin&&
        (!a.enabled||b.enabled)&&
        (!base.hard_safety_gate||candidate.hard_safety_gate)&&
        (!base.emergency_escape||candidate.emergency_escape);
}

// ---------------------------------------------------------------------------
// Strategy runtime
// ---------------------------------------------------------------------------
json StrategyDecision::to_json() const {
    return {{"scenario",scenario.to_json()},
        {"active_profile",active_profile},{"target_profile",target_profile},
        {"switched",switched},{"blending",blending},{"blend",blend},
        {"target_parameters",target_parameters.to_json()},
        {"applied_parameters",applied_parameters.to_json()}};
}
StrategyProfileRuntime::StrategyProfileRuntime(StrategyRuntimeConfig config,
    std::vector<StrategyProfile> profiles)
    :config_(config),profiles_(std::move(profiles)) {
    if(profiles_.empty())profiles_=builtin_strategy_profiles();
    last_.active_profile="default";
    last_.target_profile="default";
    last_.target_parameters=profiles_.front().parameters;
    last_.applied_parameters=profiles_.front().parameters;
}
void StrategyProfileRuntime::set_profiles(std::vector<StrategyProfile> profiles) {
    profiles_=std::move(profiles);
    if(profiles_.empty())profiles_=builtin_strategy_profiles();
    initialised_=false;
    pending_frames_=0;
    blend_elapsed_=0;
}
void StrategyProfileRuntime::reset() {
    classifier_.reset();
    initialised_=false;
    pending_profile_.clear();
    pending_frames_=0;
    blend_elapsed_=0;
    last_=StrategyDecision{};
}
std::string StrategyProfileRuntime::select_profile_id(
    const ScenarioClassification& scenario) const {
    const StrategyProfile* best=nullptr;
    double best_score=-1e9;
    for(const auto& profile:profiles_) {
        const double score=profile_score(profile,scenario);
        if(!best||score>best_score+1e-9||
           (std::abs(score-best_score)<1e-9&&profile.profile_id<best->profile_id)) {
            best=&profile;
            best_score=score;
        }
    }
    if(!best)return "default";
    if(!last_.active_profile.empty()&&config_.switch_margin>0) {
        if(const StrategyProfile* current=find_strategy_profile(profiles_,
                last_.active_profile)) {
            const double current_score=profile_score(*current,scenario);
            if(current_score+config_.switch_margin>=best_score)
                return current->profile_id;
        }
    }
    return best->profile_id;
}
void StrategyProfileRuntime::choose_profile(const ScenarioClassification& scenario) {
    const std::string target=select_profile_id(scenario);
    if(!initialised_) {
        const StrategyProfile* profile=find_strategy_profile(profiles_,target);
        if(!profile)profile=&profiles_.front();
        last_.active_profile=profile->profile_id;
        last_.target_profile=profile->profile_id;
        target_=profile->parameters;
        from_=profile->parameters;
        last_.applied_parameters=profile->parameters;
        last_.target_parameters=profile->parameters;
        initialised_=true;
        blend_elapsed_=config_.blend_frames;
        pending_profile_=profile->profile_id;
        pending_frames_=0;
        return;
    }
    if(target!=last_.target_profile) {
        if(pending_profile_!=target) {
            pending_profile_=target;
            pending_frames_=1;
        } else ++pending_frames_;
        if(pending_frames_>=std::max(1,config_.stable_frames)) {
            const StrategyProfile* profile=find_strategy_profile(profiles_,target);
            if(profile) {
                from_=last_.applied_parameters;
                target_=profile->parameters;
                last_.target_profile=profile->profile_id;
                last_.target_parameters=profile->parameters;
                blend_elapsed_=0;
                last_.switched=true;
                pending_frames_=0;
            }
        }
    } else {
        pending_profile_=target;
        pending_frames_=0;
    }
    if(!config_.smooth_switch||config_.blend_frames<=0) {
        last_.applied_parameters=target_;
        last_.active_profile=last_.target_profile;
        blend_elapsed_=config_.blend_frames;
    } else if(blend_elapsed_<config_.blend_frames) {
        ++blend_elapsed_;
        const double t=double(blend_elapsed_)/double(config_.blend_frames);
        last_.applied_parameters=interpolate(from_,target_,t);
        last_.blending=true;
        if(blend_elapsed_>=config_.blend_frames) {
            last_.applied_parameters=target_;
            last_.active_profile=last_.target_profile;
            last_.blending=false;
        }
    } else {
        last_.applied_parameters=target_;
        last_.active_profile=last_.target_profile;
    }
}
StrategyDecision StrategyProfileRuntime::update(const WorldStateSnapshot& root,
    const MechanismFrame* mechanisms) {
    // Keep the profile state across frames; only the per-frame transient flags
    // are cleared here.
    last_.switched=false;
    last_.blending=false;
    last_.scenario=classifier_.update(root,mechanisms);
    choose_profile(last_.scenario);
    last_.blend=last_.blending?
        clampd(double(blend_elapsed_)/double(std::max(1,config_.blend_frames)),0.0,1.0):1.0;
    return last_;
}
MpcConfig StrategyProfileRuntime::effective_config(const MpcConfig& base) const {
    return strategy_config(last_.applied_parameters,base);
}
const StrategyProfile& StrategyProfileRuntime::active_profile() const {
    if(const StrategyProfile* profile=find_strategy_profile(profiles_,last_.active_profile))
        return *profile;
    return profiles_.front();
}

// ---------------------------------------------------------------------------
// Strategy memory
// ---------------------------------------------------------------------------
json StrategyLibrary::to_json() const {
    json values=json::array();
    for(const auto& profile:profiles)values.push_back(profile.to_json());
    return {{"format",format},{"version",version},{"generated_utc",generated_utc},
        {"profiles",values},{"history",history}};
}
StrategyLibrary StrategyLibrary::from_json(const json& value) {
    StrategyLibrary out;
    out.format=value.value("format",out.format);
    out.version=value.value("version",out.version);
    out.generated_utc=value.value("generated_utc",out.generated_utc);
    if(value.contains("profiles"))
        for(const auto& profile:value.at("profiles"))
            out.profiles.push_back(StrategyProfile::from_json(profile));
    out.history=value.value("history",json::array());
    return out;
}
bool StrategyLibrary::save(const std::filesystem::path& path,std::string* error) const {
    std::error_code ec;
    if(path.has_parent_path())std::filesystem::create_directories(path.parent_path(),ec);
    std::ofstream out{path};
    if(!out) {
        if(error)*error="cannot create "+path.string();
        return false;
    }
    out<<to_json().dump(2)<<'\n';
    if(!out) {
        if(error)*error="cannot write "+path.string();
        return false;
    }
    return true;
}
std::optional<StrategyLibrary> StrategyLibrary::load(const std::filesystem::path& path,
    std::string* error) {
    std::ifstream in{path};
    if(!in) {
        if(error)*error="cannot open "+path.string();
        return std::nullopt;
    }
    try {
        json value;
        in>>value;
        return StrategyLibrary::from_json(value);
    } catch(const std::exception& exception) {
        if(error)*error=exception.what();
        return std::nullopt;
    }
}
json StrategyProfileDiff::to_json() const {
    return {{"profile_id",profile_id},{"version_before",version_before},
        {"version_after",version_after},{"changed_parameters",changed_parameters},
        {"before",parameter_before},{"after",parameter_after}};
}
StrategyProfileDiff compare_strategy_profiles(const StrategyProfile& before,
    const StrategyProfile& after) {
    StrategyProfileDiff diff;
    diff.profile_id=after.profile_id;
    diff.version_before=before.version;
    diff.version_after=after.version;
    diff.parameter_before=before.parameters.to_json();
    diff.parameter_after=after.parameters.to_json();
    for(auto iterator=diff.parameter_before.begin();
        iterator!=diff.parameter_before.end();++iterator) {
        const std::string key=iterator.key();
        if(!diff.parameter_after.contains(key))continue;
        if(iterator.value()!=diff.parameter_after.at(key))
            diff.changed_parameters.push_back(key);
    }
    return diff;
}
json StrategyMemoryUpdate::to_json() const {
    return {{"success",success},{"previous_version",previous_version},
        {"new_version",new_version},{"version_path",version_path},
        {"current_path",current_path},{"error",error}};
}
StrategyMemory::StrategyMemory(std::filesystem::path directory)
    :directory_(std::move(directory)) {}
StrategyMemoryUpdate StrategyMemory::commit(StrategyLibrary library,
    const std::string& reason) {
    StrategyMemoryUpdate result;
    if(directory_.empty()) {
        result.error="strategy memory directory is empty";
        return result;
    }
    std::error_code ignored;
    std::filesystem::create_directories(directory_,ignored);
    StrategyLibrary current;
    std::string error;
    if(auto loaded=StrategyLibrary::load(directory_/"current.json",&error))current=*loaded;
    result.previous_version=current.version;
    result.new_version=current.version+1;
    library.format="isaac-gamebot-strategy-library-v1";
    library.version=result.new_version;
    library.generated_utc=utc_timestamp();
    library.history=current.history;
    library.history.push_back({{"version",library.version},{"utc",library.generated_utc},
        {"reason",reason},{"profiles",library.profiles.size()}});
    for(auto& profile:library.profiles)
        if(profile.version<=0||profile.source=="optimizer")profile.version=library.version;
    result.version_path=(directory_/("strategy-v"+std::to_string(library.version)+".json")).string();
    result.current_path=(directory_/"current.json").string();
    if(!library.save(result.version_path,&error)) {
        result.error=error;
        return result;
    }
    if(!library.save(directory_/"current.json",&error)) {
        result.error=error;
        return result;
    }
    result.success=true;
    return result;
}
StrategyMemoryUpdate StrategyMemory::save_profiles(
    const std::vector<StrategyProfile>& profiles,const std::string& reason) {
    StrategyLibrary library;
    std::string error;
    if(auto loaded=current(&error))library=*loaded;
    for(const auto& profile:profiles) {
        bool replaced=false;
        for(auto& existing:library.profiles) {
            if(existing.profile_id!=profile.profile_id)continue;
            existing=profile;
            replaced=true;
            break;
        }
        if(!replaced)library.profiles.push_back(profile);
    }
    return commit(std::move(library),reason);
}
std::optional<StrategyLibrary> StrategyMemory::current(std::string* error) const {
    return StrategyLibrary::load(directory_/"current.json",error);
}
std::optional<StrategyLibrary> StrategyMemory::version(int version,
    std::string* error) const {
    return StrategyLibrary::load(
        directory_/("strategy-v"+std::to_string(version)+".json"),error);
}
std::vector<StrategyProfileDiff> StrategyMemory::compare_versions(int before,
    int after,std::string* error) const {
    std::vector<StrategyProfileDiff> out;
    const auto a=version(before,error);
    if(!a)return out;
    const auto b=version(after,error);
    if(!b)return out;
    for(const auto& old_profile:a->profiles) {
        for(const auto& new_profile:b->profiles) {
            if(old_profile.profile_id!=new_profile.profile_id)continue;
            out.push_back(compare_strategy_profiles(old_profile,new_profile));
            break;
        }
    }
    return out;
}
std::optional<StrategyLibrary> StrategyMemory::rollback(int version,std::string* error) {
    const auto path=directory_/("strategy-v"+std::to_string(version)+".json");
    auto library=StrategyLibrary::load(path,error);
    if(!library)return std::nullopt;
    library->history.push_back({{"version",version},{"utc",utc_timestamp()},
        {"reason","rollback"},{"profiles",library->profiles.size()}});
    if(!library->save(directory_/"current.json",error))return std::nullopt;
    return library;
}
std::vector<int> StrategyMemory::versions() const {
    std::vector<int> out;
    std::error_code ignored;
    if(!std::filesystem::exists(directory_,ignored))return out;
    for(const auto& entry:std::filesystem::directory_iterator(directory_,ignored)) {
        if(!entry.is_regular_file())continue;
        const std::string name=entry.path().filename().string();
        if(name.rfind("strategy-v",0)!=0)continue;
        const auto dot=name.find(".json");
        if(dot==std::string::npos)continue;
        try {out.push_back(std::stoi(name.substr(10,dot-10)));} catch(...) {}
    }
    std::sort(out.begin(),out.end());
    return out;
}
json StrategyMemory::history(std::string* error) const {
    if(auto library=current(error))return library->history;
    return json::array();
}

// ---------------------------------------------------------------------------
// Replay corpus
// ---------------------------------------------------------------------------
json ReplayScenarioRecord::to_json() const {
    json tags=json::array();
    for(ScenarioTag tag:scenario_tags)tags.push_back(scenario_tag_name(tag));
    return {{"id",id},{"scenario_tags",tags},{"snapshot",snapshot.to_json()},
        {"mechanism_frame",mechanism_frame},{"unknown_assessment",unknown_assessment},
        {"entity_relations",entity_relations},{"room_geometry",room_geometry},
        {"initial_hp",initial_hp},{"low_hp",low_hp},
        {"mechanism_confidence",mechanism_confidence},{"unknown_risk",unknown_risk},
        {"prediction_error",prediction_error},{"seed",seed},{"room",room},
        {"split",split},{"source_file",source_file},{"source_line",source_line},
        {"real_capture",real_capture}};
}
ReplayScenarioRecord ReplayScenarioRecord::from_json(const json& value) {
    ReplayScenarioRecord out;
    out.id=value.value("id",out.id);
    if(value.contains("scenario_tags"))
        for(const auto& tag:value.at("scenario_tags"))
            out.scenario_tags.push_back(scenario_tag_from_name(tag.get<std::string>()));
    if(value.contains("snapshot"))out.snapshot=WorldStateSnapshot::from_json(value.at("snapshot"));
    out.mechanism_frame=value.value("mechanism_frame",json::object());
    out.unknown_assessment=value.value("unknown_assessment",json::object());
    out.entity_relations=value.value("entity_relations",json::array());
    out.room_geometry=value.value("room_geometry",json::object());
    out.initial_hp=value.value("initial_hp",out.initial_hp);
    out.low_hp=value.value("low_hp",out.low_hp);
    out.mechanism_confidence=value.value("mechanism_confidence",out.mechanism_confidence);
    out.unknown_risk=value.value("unknown_risk",out.unknown_risk);
    out.prediction_error=value.value("prediction_error",out.prediction_error);
    out.seed=value.value("seed",out.seed);
    out.room=value.value("room",out.room);
    out.split=value.value("split",out.split);
    out.source_file=value.value("source_file",out.source_file);
    out.source_line=value.value("source_line",out.source_line);
    out.real_capture=value.value("real_capture",out.real_capture);
    return out;
}
json ScenarioCorpusStats::to_json() const {
    json seed_values=json::object();
    for(const auto& [seed,count]:seeds)
        seed_values[std::to_string(seed)]=count;
    return {{"records",records},{"train",train},{"holdout",holdout},
        {"by_scenario",by_scenario},{"by_split",by_split},{"seeds",seed_values},
        {"real_captures",real_captures},{"synthetic",synthetic},
        {"low_hp",low_hp}};
}
json ScenarioCorpus::to_json() const {
    json values=json::array();
    for(const auto& record:records)values.push_back(record.to_json());
    return {{"format",format},{"version",version},{"generated_utc",generated_utc},
        {"source",source},{"stats",stats.to_json()},{"records",values},
        {"evidence_scope","Captured WorldStateSnapshot replay. Optimizer scores are "
         "offline simulation, not real-game no-damage results."}};
}
ScenarioCorpus ScenarioCorpus::from_json(const json& value) {
    ScenarioCorpus out;
    out.format=value.value("format",out.format);
    out.version=value.value("version",out.version);
    out.generated_utc=value.value("generated_utc",out.generated_utc);
    out.source=value.value("source",out.source);
    if(value.contains("stats")) {
        const auto& stats=value.at("stats");
        out.stats.records=stats.value("records",0);
        out.stats.train=stats.value("train",0);
        out.stats.holdout=stats.value("holdout",0);
        out.stats.real_captures=stats.value("real_captures",0);
        out.stats.synthetic=stats.value("synthetic",0);
        out.stats.low_hp=stats.value("low_hp",0);
        if(stats.contains("by_scenario"))
            for(auto iterator=stats.at("by_scenario").begin();
                iterator!=stats.at("by_scenario").end();++iterator)
                out.stats.by_scenario[iterator.key()]=iterator.value().get<int>();
        if(stats.contains("by_split"))
            for(auto iterator=stats.at("by_split").begin();
                iterator!=stats.at("by_split").end();++iterator)
                out.stats.by_split[iterator.key()]=iterator.value().get<int>();
        if(stats.contains("seeds"))
            for(auto iterator=stats.at("seeds").begin();
                iterator!=stats.at("seeds").end();++iterator)
                out.stats.seeds[uint32_t(std::stoul(iterator.key()))]=
                    iterator.value().get<int>();
    }
    if(value.contains("records"))
        for(const auto& record:value.at("records"))
            out.records.push_back(ReplayScenarioRecord::from_json(record));
    return out;
}
bool ScenarioCorpus::save(const std::filesystem::path& path,std::string* error) const {
    std::error_code ec;
    if(path.has_parent_path())std::filesystem::create_directories(path.parent_path(),ec);
    std::ofstream out{path};
    if(!out) {
        if(error)*error="cannot create "+path.string();
        return false;
    }
    out<<to_json().dump(2)<<'\n';
    if(!out) {
        if(error)*error="cannot write "+path.string();
        return false;
    }
    return true;
}
std::optional<ScenarioCorpus> ScenarioCorpus::load(const std::filesystem::path& path,
    std::string* error) {
    std::ifstream in{path};
    if(!in) {
        if(error)*error="cannot open "+path.string();
        return std::nullopt;
    }
    try {
        json value;
        in>>value;
        return ScenarioCorpus::from_json(value);
    } catch(const std::exception& exception) {
        if(error)*error=exception.what();
        return std::nullopt;
    }
}
ScenarioCorpus ScenarioCorpusBuilder::build(const std::filesystem::path& path,
    MechanismSemantics* semantics,std::string* error) {
    ScenarioCorpus corpus;
    corpus.generated_utc=utc_timestamp();
    corpus.source=path.string();
    std::vector<std::filesystem::path> files;
    std::error_code ec;
    if(std::filesystem::is_directory(path,ec)) {
        for(const auto& entry:std::filesystem::directory_iterator(path,ec)) {
            if(!entry.is_regular_file())continue;
            const auto extension=entry.path().extension().string();
            if(extension==".jsonl")files.push_back(entry.path());
        }
        std::sort(files.begin(),files.end());
    } else files.push_back(path);
    if(files.empty()) {
        if(error)*error="no JSONL logs found at "+path.string();
        return corpus;
    }
    ScenarioCorpusConfig config=config_;
    config.frame_stride=std::max(1,config.frame_stride);
    std::map<std::string,int> tag_counts;
    int total=0;
    for(const auto& file:files) {
        std::ifstream in{file};
        if(!in) {
            if(error)*error="cannot open "+file.string();
            continue;
        }
        WorldStateBridge bridge;
        UnknownThreatManager unknown_manager;
        std::string line;
        int line_number=0;
        int valid_counter=0;
        while(std::getline(in,line)) {
            ++line_number;
            if(line.size()>8*1024*1024)continue;
            json record;
            try {record=json::parse(line);} catch(...) {continue;}
            Frame frame;
            try {
                frame=record.contains("frame")?record.at("frame").get<Frame>():
                    record.get<Frame>();
            } catch(...) {continue;}
            if(!frame.valid||!frame.has_player||frame.player.body.dead)continue;
            ++valid_counter;
            MechanismFrame mechanisms;
            if(record.contains("mechanisms")) {
                try {mechanisms=record.at("mechanisms").get<MechanismFrame>();}
                catch(...) {mechanisms=MechanismFrame{};}
            }
            // Semantics is stateful (warnings, eye locks, address reuse). Run it
            // on every valid frame even when the snapshot is sampled later.
            if(!mechanisms.valid&&semantics)mechanisms=semantics->evaluate(frame);
            if(valid_counter%config.frame_stride!=0)continue;
            const MechanismFrame* mechanism_ptr=mechanisms.valid?&mechanisms:nullptr;
            UnknownAssessment assessment;
            if(config.include_unknown)
                assessment=unknown_manager.assess(frame,mechanism_ptr);
            WorldStateSnapshot snapshot=bridge.build(frame,mechanism_ptr,
                config.include_unknown?&assessment:nullptr);
            if(!snapshot.frame.valid)continue;
            CombatScenarioClassifier classifier;
            const ScenarioClassification classification=classifier.classify(snapshot,mechanism_ptr);
            const bool low_hp=classification.features.low_hp;
            bool add=false;
            for(ScenarioTag tag:classification.tags)
                if(tag_counts[scenario_tag_name(tag)]<config.max_per_scenario)add=true;
            if(low_hp&&config.include_low_hp)add=true;
            if(!add||total>=config.max_total)continue;
            ReplayScenarioRecord replay;
            replay.id=file.filename().string()+":"+std::to_string(line_number);
            replay.scenario_tags=classification.tags;
            replay.snapshot=snapshot;
            replay.mechanism_frame=mechanisms.valid?json(mechanisms):json::object();
            replay.unknown_assessment=unknown_assessment_json(assessment);
            replay.entity_relations=relation_json(snapshot);
            replay.room_geometry={{"width",snapshot.room.grid.width},
                {"height",snapshot.room.grid.height},
                {"shape",snapshot.room.grid.shape},
                {"doors",snapshot.room.doors},{"valid",snapshot.room.grid.valid}};
            replay.initial_hp=snapshot.player.health;
            replay.low_hp=low_hp;
            replay.mechanism_confidence=classification.features.mechanism_confidence;
            replay.unknown_risk=classification.features.unknown_risk;
            replay.prediction_error=clampd(prediction_error_from_record(record),0.0,1.0);
            replay.room=snapshot.frame.room;
            replay.seed=snapshot.rng.seed_hint;
            replay.split=split_for(file.string(),line_number,snapshot.frame.room,
                snapshot.frame.clock,replay.seed,config.holdout_fraction);
            replay.source_file=file.string();
            replay.source_line=line_number;
            replay.real_capture=!record.value("synthetic",false);
            corpus.records.push_back(std::move(replay));
            ++total;
            for(ScenarioTag tag:classification.tags)
                ++tag_counts[scenario_tag_name(tag)];
        }
    }
    corpus.stats.records=int(corpus.records.size());
    for(const auto& record:corpus.records) {
        if(record.split=="holdout")++corpus.stats.holdout;
        else ++corpus.stats.train;
        if(record.real_capture)++corpus.stats.real_captures;
        else ++corpus.stats.synthetic;
        if(record.low_hp)++corpus.stats.low_hp;
        ++corpus.stats.seeds[record.seed];
        ++corpus.stats.by_split[record.split];
        for(ScenarioTag tag:record.scenario_tags)
            ++corpus.stats.by_scenario[scenario_tag_name(tag)];
    }
    if(corpus.records.empty()&&error)*error="no valid replay scenarios extracted";
    return corpus;
}

// ---------------------------------------------------------------------------
// Offline evaluation
// ---------------------------------------------------------------------------
json ScenarioOutcome::to_json() const {
    return {{"simulated",simulated},{"aborted",aborted},
        {"decisions",decisions},{"frames",frames},
        {"target_switches",target_switches},
        {"direction_reversals",direction_reversals},
        {"player_dead",player_dead},{"damage",damage},
        {"damage_dealt",damage_dealt},{"enemy_hp_remaining",enemy_hp_remaining},
        {"clear_time",clear_time},{"mechanism_confidence",mechanism_confidence},
        {"unknown_risk",unknown_risk},{"prediction_error",prediction_error},
        {"confidence",confidence},{"evidence",evidence}};
}
json ScenarioAggregate::to_json() const {
    return {{"scenarios",scenarios},{"deaths",deaths},
        {"real_captures",real_captures},{"synthetic",synthetic},{"seeds",seeds},
        {"damage",damage},{"clear_time",clear_time},
        {"damage_dealt",damage_dealt},{"switches",switches},
        {"reversals",reversals},{"confidence",confidence},
        {"unknown_risk",unknown_risk},
        {"mechanism_confidence",mechanism_confidence},
        {"prediction_error",prediction_error}};
}
int compare_scenario_outcomes(const ScenarioAggregate& a,const ScenarioAggregate& b) {
    if(a.deaths!=b.deaths)return a.deaths<b.deaths?1:-1;
    if(std::abs(a.damage-b.damage)>1e-6)return a.damage<b.damage?1:-1;
    if(std::abs(a.clear_time-b.clear_time)>1e-3)return a.clear_time<b.clear_time?1:-1;
    if(std::abs(a.damage_dealt-b.damage_dealt)>1e-3)
        return a.damage_dealt>b.damage_dealt?1:-1;
    const int unnecessary_a=a.switches+a.reversals;
    const int unnecessary_b=b.switches+b.reversals;
    if(unnecessary_a!=unnecessary_b)return unnecessary_a<unnecessary_b?1:-1;
    return 0;
}
ScenarioOutcome OfflineScenarioEvaluator::run(const ReplayScenarioRecord& record,
    const StrategyParameters& parameters,const MpcConfig& base) const {
    ScenarioOutcome outcome;
    outcome.mechanism_confidence=record.mechanism_confidence;
    outcome.unknown_risk=record.unknown_risk;
    outcome.prediction_error=record.prediction_error;
    const MpcConfig effective=strategy_config(parameters,base);
    ForwardSimConfig sim;
    sim.dt=effective.dt;
    sim.horizon_frames=std::max(1,config_.decision_frames);
    sim.max_branches=1;
    sim.cache_entries=32;
    sim.early_terminate=false;
    sim.danger_map=false;
    sim.player_shoots=true;
    sim.use_unknown_threats=true;
    sim.use_mechanism_intents=true;
    sim.max_projectiles=std::max(16,config_.max_projectiles);
    sim.max_hazards=std::max(16,config_.max_hazards);
    ForwardSimulator simulator(sim);
    std::string error;
    if(!simulator.restore(record.snapshot,&error)) {
        outcome.aborted=true;
        outcome.evidence="restore failed: "+error;
        return outcome;
    }
    outcome.simulated=true;
    CombatIntelligence combat(effective.combat);
    const CombatContext root_context=combat.evaluate(record.snapshot,config_.attack_enabled);
    SafetyGate gate(effective.safety);
    uint32_t preferred=root_context.target;
    const double initial_enemy_hp=live_enemy_hp(simulator.world());
    const int initial_health=simulator.world().player.health;
    int last_health=initial_health;
    Vec previous_player=simulator.world().player.pos;
    Vec previous_displacement{};
    const int frames_per_decision=std::max(1,config_.decision_frames);
    const double horizon_seconds=double(frames_per_decision)*
        double(std::max(1,config_.max_decisions))/60.0;
    for(int decision=0;decision<config_.max_decisions;++decision) {
        if(simulator.world().player_dead)break;
        if(simulator.world().cleared||!has_live_enemy(simulator.world())) {
            outcome.clear_time=double(outcome.frames)/60.0;
            break;
        }
        const SafetyMetrics root_safety=gate.assess(simulator.world());
        const BranchCombatContext root_branch=combat.evaluate_branch(root_context,
            simulator.world(),root_safety,preferred);
        if(root_branch.valid&&root_branch.target)preferred=root_branch.target;
        std::vector<Fire> fires{Fire::none};
        if(config_.attack_enabled) {
            const PredictiveAimSolution aim=combat.aim(root_context,simulator.world(),preferred);
            if(aim.valid&&aim.fire!=Fire::none)fires.push_back(aim.fire);
            const Fire nearest=nearest_cardinal_fire(simulator.world());
            if(nearest!=Fire::none)fires.push_back(nearest);
            std::sort(fires.begin(),fires.end());
            fires.erase(std::unique(fires.begin(),fires.end()),fires.end());
        }
        struct Choice {
            SimAction action;
            double value{-1e300};
            bool safe{};
            uint32_t target{};
            int first_hit{std::numeric_limits<int>::max()};
            SafetyMetrics safety;
        } best_safe,best_any;
        bool has_safe=false;
        const CombatEnemyHp hp_before=combat_enemy_hp(simulator.world());
        for(int move=0;move<9;++move)for(Fire fire:fires) {
            SimAction action{static_cast<Move>(move),fire,
                config_.attack_enabled&&fire!=Fire::none};
            auto branch=simulator.fork();
            branch->step(action,frames_per_decision);
            SimulationScore score=branch->score();
            const auto events=branch->get_events();
            const SafetyMetrics safety=evaluate_safety(branch->world(),effective.safety,
                events,outcome.frames+frames_per_decision,score.damage_taken);
            score.reachable_cells=safety.reachable_cells;
            score.mobility_routes=safety.mobility_routes;
            score.reachable_area=safety.reachable_area;
            score.time_to_open=safety.time_to_open;
            score.exit_block_risk=safety.exit_block_risk;
            score.encirclement_risk=safety.encirclement_risk;
            score.dead_end_risk=safety.dead_end_risk;
            score.corner_risk=safety.corner_risk;
            const bool safe=safety.safe&&score.damage_taken<=1e-9&&!score.player_dead;
            double combat_value=0;
            uint32_t branch_target=preferred;
            if(root_context.valid&&root_branch.valid) {
                const BranchCombatContext view=combat.evaluate_branch(root_context,
                    branch->world(),safety,preferred);
                if(view.valid) {
                    branch_target=view.target?view.target:preferred;
                    const CombatCandidateTerms terms=combat.score_branch(root_context,view,
                        hp_before,branch->world(),action,score,safety);
                    combat_value=safe?std::min(effective.combat.candidate_max_value,
                        terms.total(effective.combat)):0.0;
                }
            }
            const double value=mpc_composite_value(score,effective,
                record.unknown_risk,outcome.frames+frames_per_decision)+combat_value;
            Choice choice{action,value,safe,branch_target,
                safety.first_hit_frame>=0?safety.first_hit_frame:std::numeric_limits<int>::max(),
                safety};
            if(safe) {
                if(!has_safe||choice.value>best_safe.value||
                   (std::abs(choice.value-best_safe.value)<1e-9&&
                    int(choice.action.move)<int(best_safe.action.move))) {
                    best_safe=choice;
                    has_safe=true;
                }
            }
            auto hit_rank=[](int frame) {
                return frame<0?std::numeric_limits<int>::max():frame;
            };
            const bool better=choice.value>best_any.value+1e-9||
                (std::abs(choice.value-best_any.value)<=1e-9&&
                 (hit_rank(choice.first_hit)>hit_rank(best_any.first_hit)||
                  (hit_rank(choice.first_hit)==hit_rank(best_any.first_hit)&&
                   choice.safety.escape_directions>best_any.safety.escape_directions)));
            if(best_any.value<-1e299||better)best_any=choice;
        }
        const Choice chosen=has_safe?best_safe:best_any;
        if(chosen.value<-1e299)break;
        simulator.step(chosen.action,frames_per_decision);
        outcome.frames+=frames_per_decision;
        ++outcome.decisions;
        const int health=simulator.world().player.health;
        if(health<last_health)outcome.damage+=double(last_health-health);
        last_health=health;
        if(simulator.world().player_dead) {
            outcome.player_dead=true;
            break;
        }
        const Vec displacement=simulator.world().player.pos-previous_player;
        if(previous_displacement.norm()>1e-6&&displacement.norm()>1e-6) {
            const Vec a=previous_displacement.unit();
            const Vec b=displacement.unit();
            if(a.dot(b)<-0.25)++outcome.direction_reversals;
        }
        if(displacement.norm()>1e-6)previous_displacement=displacement;
        previous_player=simulator.world().player.pos;
        if(chosen.target&&preferred&&chosen.target!=preferred)++outcome.target_switches;
        preferred=chosen.target?chosen.target:preferred;
        if(simulator.world().cleared||!has_live_enemy(simulator.world())) {
            outcome.clear_time=double(outcome.frames)/60.0;
            break;
        }
    }
    outcome.enemy_hp_remaining=live_enemy_hp(simulator.world());
    outcome.damage_dealt=std::max(0.0,initial_enemy_hp-outcome.enemy_hp_remaining);
    if(outcome.clear_time<0&&!outcome.player_dead)
        outcome.clear_time=horizon_seconds+outcome.enemy_hp_remaining/1000.0;
    double confidence=0.25+0.50*clampd(record.mechanism_confidence,0.0,1.0)+
        0.25*(1.0-clampd(record.unknown_risk,0.0,1.0))-
        0.40*clampd(record.prediction_error,0.0,1.0);
    if(!record.real_capture)confidence*=0.5;
    outcome.confidence=clampd(confidence,0.05,0.95);
    return outcome;
}
ScenarioAggregate OfflineScenarioEvaluator::aggregate(const ScenarioCorpus& corpus,
    const StrategyParameters& parameters,const MpcConfig& base,
    const std::string& split,const std::vector<ScenarioTag>& tags) const {
    std::vector<const ReplayScenarioRecord*> selected;
    for(const auto& record:corpus.records) {
        if(!split.empty()&&record.split!=split)continue;
        if(!tags.empty()) {
            bool match=false;
            for(ScenarioTag tag:tags)
                if(std::find(record.scenario_tags.begin(),record.scenario_tags.end(),tag)!=
                   record.scenario_tags.end()) {
                    match=true;break;
                }
            if(!match)continue;
        }
        selected.push_back(&record);
    }
    ScenarioAggregate out;
    if(selected.empty())return out;
    // Bound offline work deterministically. The sampler walks the whole split
    // instead of taking only the first records, so a room ordering cannot
    // silently select one encounter type.
    const size_t limit=std::min<size_t>(selected.size(),24);
    const size_t stride=std::max<size_t>(1,selected.size()/limit);
    std::set<uint32_t> seed_groups;
    double clear_sum=0,damage=0,dealt=0,confidence=0,unknown=0,mechanism=0,error=0;
    for(size_t slot=0;slot<limit;++slot) {
        const size_t index=std::min(selected.size()-1,slot*stride);
        const auto& record=*selected[index];
        const ScenarioOutcome outcome=run(record,parameters,base);
        if(!outcome.simulated)continue;
        ++out.scenarios;
        out.deaths+=outcome.player_dead?1:0;
        out.real_captures+=record.real_capture?1:0;
        out.synthetic+=record.real_capture?0:1;
        seed_groups.insert(record.seed);
        damage+=outcome.damage;
        dealt+=outcome.damage_dealt;
        clear_sum+=outcome.clear_time>=0?outcome.clear_time:
            double(config_.max_decisions*config_.decision_frames)/60.0+
            outcome.enemy_hp_remaining/1000.0;
        out.switches+=outcome.target_switches;
        out.reversals+=outcome.direction_reversals;
        confidence+=outcome.confidence;
        unknown+=outcome.unknown_risk;
        mechanism+=outcome.mechanism_confidence;
        error+=outcome.prediction_error;
    }
    out.seeds=int(seed_groups.size());
    if(out.scenarios>0) {
        out.damage=damage/out.scenarios;
        out.damage_dealt=dealt/out.scenarios;
        out.clear_time=clear_sum/out.scenarios;
        out.confidence=confidence/out.scenarios;
        out.unknown_risk=unknown/out.scenarios;
        out.mechanism_confidence=mechanism/out.scenarios;
        out.prediction_error=error/out.scenarios;
    }
    return out;
}

// ---------------------------------------------------------------------------
// Tactical parameter optimizer
// ---------------------------------------------------------------------------
std::vector<StrategyParameterSpec> strategy_parameter_specs() {
    return {
        {"maneuver_weight",2,20,2,false,false},
        {"target_switch_margin",0.05,0.50,0.05,false,false},
        {"target_hold_frames",4,40,4,true,false},
        {"engage_threshold",0.0,0.50,0.05,false,false},
        {"disengage_threshold",0.50,0.95,0.05,false,false},
        {"focus_fire_bonus",0,40,5,false,false},
        {"attack_window_bias",0,30,2,false,false},
        {"positioning_weight",0,20,2,false,false},
        {"emergency_sensitivity",1.0,1.6,0.1,false,true}
    };
}
double strategy_parameter_value(const StrategyParameters& values,const std::string& id) {
    const json params=values.to_json();
    return params.value(id,0.0);
}
void set_strategy_parameter(StrategyParameters& values,const std::string& id,double value) {
    if(id=="maneuver_weight")values.maneuver_weight=value;
    else if(id=="target_switch_margin")values.target_switch_margin=value;
    else if(id=="target_hold_frames")values.target_hold_frames=int(std::lround(value));
    else if(id=="engage_threshold")values.engage_threshold=value;
    else if(id=="disengage_threshold")values.disengage_threshold=value;
    else if(id=="focus_fire_bonus")values.focus_fire_bonus=value;
    else if(id=="attack_window_bias")values.attack_window_bias=value;
    else if(id=="positioning_weight")values.positioning_weight=value;
    else if(id=="emergency_sensitivity")values.emergency_sensitivity=value;
}
bool strategy_parameters_within_bounds(const StrategyParameters& values) {
    for(const auto& spec:strategy_parameter_specs()) {
        const double value=strategy_parameter_value(values,spec.id);
        if(!std::isfinite(value)||value<spec.minimum-1e-9||value>spec.maximum+1e-9)
            return false;
        if(spec.safety_increasing&&value<1.0)return false;
    }
    return true;
}
json StrategyCandidateEvaluation::to_json() const {
    return {{"profile",profile.to_json()},{"train",train.to_json()},
        {"holdout",holdout.to_json()},{"evaluations",evaluations},
        {"confidence",confidence},{"promoted",promoted},{"reason",reason}};
}
json StrategyOptimizationResult::to_json() const {
    json tag_values=json::array();
    for(ScenarioTag tag:tags)tag_values.push_back(scenario_tag_name(tag));
    return {{"scenario",scenario},{"tags",tag_values},
        {"baseline",baseline.to_json()},
        {"best",best?best->to_json():json(nullptr)},
        {"candidates",[this] {
            json values=json::array();
            for(const auto& candidate:candidates)values.push_back(candidate.to_json());
            return values;
        }()},
        {"evaluations",evaluations},{"promoted",promoted},{"reason",reason}};
}
TacticalParameterOptimizer::TacticalParameterOptimizer(TacticalOptimizerConfig config,
    const ScenarioCorpus& corpus,const MpcConfig& base,OfflineRolloutConfig rollout)
    :config_(std::move(config)),corpus_(corpus),base_(base),evaluator_(rollout) {}
StrategyCandidateEvaluation TacticalParameterOptimizer::evaluate(
    const std::vector<ScenarioTag>& tags,const StrategyParameters& parameters,
    const std::string& profile_id,const std::string& source,int version) const {
    StrategyCandidateEvaluation evaluation;
    evaluation.profile.profile_id=profile_id;
    evaluation.profile.scenario_tags=tags;
    evaluation.profile.parameters=parameters;
    evaluation.profile.source=source;
    evaluation.profile.version=version;
    evaluation.profile.created_utc=utc_timestamp();
    evaluation.train=evaluator_.aggregate(corpus_,parameters,base_,"train",tags);
    evaluation.holdout=evaluator_.aggregate(corpus_,parameters,base_,"holdout",tags);
    evaluation.evaluations=evaluation.train.scenarios+evaluation.holdout.scenarios;
    evaluation.confidence=std::min(evaluation.train.confidence,
        evaluation.holdout.scenarios?evaluation.holdout.confidence:
        evaluation.train.confidence);
    evaluation.profile.performance.evaluations=evaluation.evaluations;
    evaluation.profile.performance.scenario_samples=evaluation.train.scenarios;
    evaluation.profile.performance.holdout_samples=evaluation.holdout.scenarios;
    evaluation.profile.performance.deaths=evaluation.train.deaths;
    evaluation.profile.performance.holdout_deaths=evaluation.holdout.deaths;
    evaluation.profile.performance.mean_damage=evaluation.train.damage;
    evaluation.profile.performance.mean_clear_time=evaluation.train.clear_time;
    evaluation.profile.performance.mean_damage_dealt=evaluation.train.damage_dealt;
    evaluation.profile.performance.mean_target_switches=evaluation.train.scenarios?
        double(evaluation.train.switches)/evaluation.train.scenarios:0;
    evaluation.profile.performance.mean_direction_reversals=evaluation.train.scenarios?
        double(evaluation.train.reversals)/evaluation.train.scenarios:0;
    evaluation.profile.performance.confidence=evaluation.confidence;
    evaluation.profile.performance.simulated=true;
    evaluation.profile.performance.evidence_scope=
        "offline replay simulation; not a real-game no-damage result";
    evaluation.profile.confidence=evaluation.confidence;
    evaluation.reason="evaluated";
    return evaluation;
}
bool TacticalParameterOptimizer::eligible(const ScenarioAggregate& train,
    const ScenarioAggregate& holdout,std::string& reason) const {
    if(train.scenarios<config_.min_train_samples) {
        reason="not enough training scenarios";
        return false;
    }
    if(config_.require_holdout&&holdout.scenarios<config_.min_holdout_samples) {
        reason="not enough holdout scenarios";
        return false;
    }
    if(config_.require_real_captures&&
       train.real_captures<std::max(1,(train.scenarios+1)/2)) {
        reason="training split is mostly synthetic";
        return false;
    }
    return true;
}
bool strategy_promotion_gate(const StrategyCandidateEvaluation& candidate,
    const TacticalOptimizerConfig& config,const StrategyParameters&,
    std::string& reason) {
    reason.clear();
    if(!strategy_parameters_within_bounds(candidate.profile.parameters)) {
        reason="parameters outside bounded strategy domain";
        return false;
    }
    if(candidate.profile.parameters.emergency_sensitivity<1.0) {
        reason="emergency sensitivity would weaken a hard safety limit";
        return false;
    }
    if(candidate.train.scenarios<config.min_train_samples) {
        reason="promotion needs more training scenarios";
        return false;
    }
    if(config.require_holdout&&candidate.holdout.scenarios<config.min_holdout_samples) {
        reason="promotion needs a held-out evaluation";
        return false;
    }
    if(config.require_real_captures&&
       candidate.train.real_captures<std::max(1,(candidate.train.scenarios+1)/2)) {
        reason="promotion refused: simulation-only result without enough real captures";
        return false;
    }
    if(candidate.train.mechanism_confidence<config.min_verified_fraction) {
        reason="promotion refused: mechanism confidence below threshold";
        return false;
    }
    if(candidate.train.prediction_error>config.max_prediction_error||
       candidate.holdout.prediction_error>config.max_prediction_error) {
        reason="promotion refused: prediction error above threshold";
        return false;
    }
    if(candidate.confidence<config.min_confidence) {
        reason="promotion refused: evaluation confidence below threshold";
        return false;
    }
    return true;
}
StrategyOptimizationResult TacticalParameterOptimizer::optimize(
    const std::vector<ScenarioTag>& tags,const StrategyParameters& start,
    const std::string& start_profile_id) {
    StrategyOptimizationResult result;
    evaluations_=0;
    result.tags=tags;
    result.scenario=scenario_tag_list(tags);
    const std::string base_id=start_profile_id.empty()?
        "optimized-"+result.scenario:start_profile_id;
    result.baseline=evaluate(tags,start,base_id+"-baseline","baseline",1);
    std::string reason;
    if(!eligible(result.baseline.train,result.baseline.holdout,reason)) {
        result.reason=reason;
        result.candidates={result.baseline};
        return result;
    }
    std::vector<StrategyCandidateEvaluation> pool{result.baseline};
    std::set<std::string> seen;
    seen.insert(parameter_key(start));
    auto better=[](const StrategyCandidateEvaluation& a,
                    const StrategyCandidateEvaluation& b) {
        return compare_scenario_outcomes(a.train,b.train)>0;
    };
    auto consider=[&](StrategyCandidateEvaluation candidate) {
        ++evaluations_;
        ++result.evaluations;
        if(compare_scenario_outcomes(candidate.train,pool.front().train)>0)
            pool.front()=candidate;
        result.candidates.push_back(std::move(candidate));
    };
    const auto specs=strategy_parameter_specs();
    // Bounded one-dimensional sweep for candidate elimination.
    for(const auto& spec:specs) {
        const double current=strategy_parameter_value(start,spec.id);
        for(double value=spec.minimum;value<=spec.maximum+1e-9;value+=spec.step) {
            if(evaluations_>=config_.max_evaluations)break;
            if(std::abs(value-current)<1e-9)continue;
            StrategyParameters parameters=start;
            set_strategy_parameter(parameters,spec.id,value);
            if(!strategy_parameters_within_bounds(parameters))continue;
            auto candidate=evaluate(tags,parameters,
                base_id+"-sweep-"+spec.id+"-"+std::to_string(value),
                "optimizer-sweep",1);
            consider(std::move(candidate));
        }
        if(evaluations_>=config_.max_evaluations)break;
    }
    std::sort(pool.begin(),pool.end(),better);
    if(result.candidates.empty())result.candidates.push_back(result.baseline);
    // Keep the best few distinct parameter sets as coordinate-descent seeds.
    std::vector<StrategyCandidateEvaluation> survivors;
    std::set<std::string> survivor_keys;
    for(const auto& candidate:result.candidates) {
        const std::string key=parameter_key(candidate.profile.parameters);
        if(!survivor_keys.insert(key).second)continue;
        survivors.push_back(candidate);
        if(int(survivors.size())>=std::max(1,config_.survivors))break;
    }
    if(survivors.empty())survivors.push_back(result.baseline);
    for(int pass=0;pass<config_.coordinate_passes;++pass) {
        bool improved_any=false;
        for(const auto& seed:survivors) {
            for(const auto& spec:specs) {
                if(evaluations_>=config_.max_evaluations)break;
                const double current=strategy_parameter_value(
                    seed.profile.parameters,spec.id);
                for(double delta:{-spec.step,spec.step}) {
                    if(evaluations_>=config_.max_evaluations)break;
                    const double value=clampd(current+delta,spec.minimum,spec.maximum);
                    if(std::abs(value-current)<1e-9)continue;
                    StrategyParameters parameters=seed.profile.parameters;
                    set_strategy_parameter(parameters,spec.id,value);
                    const std::string key=parameter_key(parameters);
                    if(!seen.insert(key).second)continue;
                    if(!strategy_parameters_within_bounds(parameters))continue;
                    auto candidate=evaluate(tags,parameters,
                        base_id+"-cd-"+std::to_string(evaluations_),
                        "optimizer-coordinate-descent",1);
                    const bool better_than_seed=better(candidate,seed);
                    if(better_than_seed)improved_any=true;
                    consider(std::move(candidate));
                }
            }
            if(evaluations_>=config_.max_evaluations)break;
        }
        if(!improved_any)break;
    }
    std::sort(result.candidates.begin(),result.candidates.end(),better);
    // Holdout is a hard qualification filter, not a second optimization target.
    std::optional<StrategyCandidateEvaluation> chosen;
    for(auto& candidate:result.candidates) {
        if(compare_scenario_outcomes(candidate.train,result.baseline.train)<=0)continue;
        if(config_.require_holdout) {
            if(compare_scenario_outcomes(candidate.holdout,result.baseline.holdout)<0)
                continue;
            if(candidate.holdout.deaths>result.baseline.holdout.deaths)continue;
            if(candidate.holdout.damage>result.baseline.holdout.damage+1e-6)continue;
        }
        std::string gate_reason;
        if(!strategy_promotion_gate(candidate,config_,start,gate_reason)) {
            candidate.reason=gate_reason;
            continue;
        }
        chosen=candidate;
        break;
    }
    if(!chosen) {
        result.reason="no candidate passed the holdout and evidence gate";
        result.best=result.baseline;
        result.best->reason=result.reason;
        return result;
    }
    chosen->promoted=true;
    chosen->reason="passed train improvement, holdout and evidence gate";
    chosen->profile.profile_id=base_id;
    chosen->profile.source="optimizer";
    chosen->profile.parent_id=result.baseline.profile.profile_id;
    chosen->profile.created_utc=utc_timestamp();
    chosen->profile.confidence=chosen->confidence;
    result.best=*chosen;
    result.promoted=true;
    result.reason="promoted with offline replay evidence";
    if(config_.write_memory&&!config_.memory_directory.empty()) {
        StrategyMemory memory(config_.memory_directory);
        memory.save_profiles({chosen->profile},
            "tactical optimizer: "+result.scenario);
    }
    return result;
}
std::vector<StrategyOptimizationResult> TacticalParameterOptimizer::optimize_all(
    const StrategyParameters& start) {
    std::vector<StrategyOptimizationResult> out;
    for(ScenarioTag tag:all_scenario_tags())
        out.push_back(optimize({tag},start));
    return out;
}
std::string utc_timestamp() {
    const std::time_t now=std::time(nullptr);
    std::tm utc{};
#ifdef _WIN32
    gmtime_s(&utc,&now);
#else
    gmtime_r(&now,&utc);
#endif
    std::ostringstream out;
    out<<std::put_time(&utc,"%Y-%m-%dT%H:%M:%SZ");
    return out.str();
}
} // namespace gamebot
