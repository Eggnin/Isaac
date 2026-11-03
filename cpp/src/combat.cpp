#include "gamebot/combat.hpp"
#include <algorithm>
#include <cctype>
#include <cmath>
#include <limits>
#include <unordered_map>

namespace gamebot {
namespace {
constexpr double infinite=1e9;
constexpr double tick_rate=30.0;

double clamp01(double value) {
    return std::clamp(value,0.0,1.0);
}
double finite_distance(double value) {
    return std::isfinite(value)?value:infinite;
}
// Shared threat formula. Root and branch inputs use different sources, but the
// normalisation and weights are identical so their scores remain comparable.
double threat_score(double distance,double distance_reference,double expected_damage,
    double attack_period,double health,double time_to_attack,bool attack_imminent,
    double movement_restriction,double unknown_risk,const CombatConfig& config) {
    const double distance_risk=1.0/(1.0+finite_distance(distance)/
        std::max(40.0,distance_reference));
    double timing_risk=0.15;
    if(time_to_attack>=0)
        timing_risk=clamp01(std::exp(-std::max(0.0,time_to_attack)/0.85));
    else if(attack_imminent)timing_risk=0.85;
    const double damage_risk=clamp01(expected_damage/health);
    const double frequency_risk=clamp01(1.0/(1.0+0.6*std::max(0.1,attack_period)));
    const double range_risk=clamp01((distance_reference-distance+60.0)/
        std::max(1.0,distance_reference));
    const double space_risk=movement_restriction*(0.55+0.45*distance_risk);
    return clamp01(
        config.distance_weight*distance_risk+
        config.timing_weight*timing_risk+
        config.damage_weight*damage_risk+
        config.frequency_weight*frequency_risk+
        config.range_weight*range_risk+
        config.space_weight*space_risk+
        config.unknown_weight*unknown_risk);
}
// Attack-lane exposure: how likely this enemy is to hit the player while the
// player stops to shoot. It is a relative ranking term, never a damage claim.
double exposure_cost(double time_to_attack,bool attack_imminent,double expected_damage,
    double health,double distance,double attack_range,double config_horizon) {
    double timing=0.25;
    if(time_to_attack>=0)
        timing=clamp01(std::exp(-std::max(0.0,time_to_attack)/
            std::max(0.05,config_horizon)));
    else if(attack_imminent)timing=0.9;
    const double damage=clamp01(expected_damage/std::max(1.0,health));
    const double proximity=attack_range>1?
        clamp01(1.0-distance/std::max(1.0,attack_range*1.4)):0.5;
    return clamp01(0.50*timing+0.30*damage+0.20*proximity);
}
// Cost of reaching a useful firing position. Distance and movement
// restriction are the dominant terms; a blocked line adds a bounded penalty.
double positioning_cost(double distance,double tear_range,double movement_restriction,
    bool line_clear) {
    const double reach=tear_range>1?clamp01(distance/std::max(1.0,tear_range)):1.0;
    return clamp01(0.55*reach+0.30*movement_restriction+(line_clear?0.0:0.15));
}
Vec clamp_speed(Vec velocity,double maximum) {
    const double speed=velocity.norm();
    if(speed<=maximum||speed<=1e-9)return velocity;
    return velocity*(maximum/speed);
}
bool live(const SimEnemy& enemy) {
    return !enemy.dead&&enemy.hp>0;
}
const SimEnemy* find_sim_enemy(const SimWorld& world,uint32_t id) {
    for(const auto& enemy:world.enemies)
        if(enemy.id==id&&live(enemy))return &enemy;
    return nullptr;
}
double hp_of(const CombatEnemyHp& hp,uint32_t id) {
    for(const auto&[enemy,value]:hp)
        if(enemy==id)return value;
    return 0;
}
double threat_total(const CombatContext& context) {
    double total=0;
    for(const auto& threat:context.threats)total+=std::max(0.0,threat.score);
    return std::max(total,1e-9);
}
double evidence_rank(AttackEvidence evidence) {
    switch(evidence) {
    case AttackEvidence::verified:return 1.0;
    case AttackEvidence::inferred:return 0.65;
    case AttackEvidence::candidate:return 0.30;
    case AttackEvidence::unknown:return 0.0;
    }
    return 0.0;
}
bool mechanism_chases(const MechanismObservation& observation) {
    if(!observation.behavior_model.is_object())return false;
    const auto& model=observation.behavior_model;
    const std::string movement=model.value("movement",std::string{});
    return movement=="chase"||movement=="pursue"||model.value("chase",false);
}
double mechanism_chase_speed(const MechanismObservation& observation,double fallback) {
    if(!observation.behavior_model.is_object())return fallback;
    const auto& model=observation.behavior_model;
    if(model.contains("chase_speed"))
        return std::max(15.0,model.value("chase_speed",fallback));
    return fallback;
}
double segment_distance_to(Vec point,Vec a,Vec b) {
    const Vec delta=b-a;
    const double length=delta.dot(delta);
    const double t=length>1e-9?std::clamp((point-a).dot(delta)/length,0.0,1.0):0;
    return distance(point,a+delta*t);
}
double hazard_surface_distance(const HazardState& hazard,Vec point,Vec offset) {
    const double radius=std::max(0.0,hazard.radius);
    double best=infinite;
    const Vec center=hazard.pos+offset;
    if(hazard.shape==Shape::disc)
        best=std::min(best,distance(point,center)-radius);
    else if(hazard.shape==Shape::capsule||hazard.shape==Shape::polyline)
        best=std::min(best,segment_distance_to(point,center,hazard.end+offset)-radius);
    else
        best=std::min(best,distance(point,center)-radius);
    if(hazard.nodes.size()>=2)
        for(size_t i=0;i+1<hazard.nodes.size();++i)
            best=std::min(best,segment_distance_to(point,hazard.nodes[i].pos+offset,
                hazard.nodes[i+1].pos+offset)-radius);
    if(hazard.path.size()>=2)
        for(size_t i=0;i+1<hazard.path.size();++i)
            best=std::min(best,segment_distance_to(point,hazard.path[i]+offset,
                hazard.path[i+1]+offset)-radius);
    return best;
}
bool hazard_blocks(const HazardState& hazard,Vec point,double margin,Vec offset={}) {
    if(hazard.precision==Precision::exact)
        return hazard_surface_distance(hazard,point,offset)<=margin;
    // Unknown/estimated hazards are still real warnings. They are allowed to
    // constrain the probe, but never become a claimed precise hit.
    return hazard_surface_distance(hazard,point,offset)<=margin;
}
struct EnemyProjection {
    std::vector<Vec> path;
    double step{1.0/tick_rate};
    Vec velocity{};
    bool valid{};
    Vec at(size_t index) const {
        return path.empty()?Vec{}:path[std::min(index,path.size()-1)];
    }
};
EnemyProjection project_native(const Entity& entity,Vec position,Vec velocity,
                               bool chase,Vec player_position,double chase_speed,
                               double speed_multiplier,double friction,
                               double horizon) {
    EnemyProjection projection;
    if(horizon<=0||!position.finite()||!velocity.finite())return projection;
    const int samples=std::max(1,int(std::ceil(horizon*tick_rate)));
    projection.step=1.0/tick_rate;
    projection.path.reserve(size_t(samples+1));
    projection.path.push_back(position);
    projection.velocity=velocity;
    Entity native=entity;
    native.speed_multiplier=speed_multiplier>0?speed_multiplier:1;
    native.friction=friction>0?friction:1;
    Vec pos=position,vel=velocity;
    for(int tick=1;tick<=samples;++tick) {
        if(chase&&player_position.finite()) {
            Vec direction=player_position-pos;
            const double length=direction.norm();
            if(length>1e-6) {
                direction=direction/length;
                vel=direction*std::clamp(chase_speed,15.0,420.0);
            }
        }
        native.pos=pos;
        native.vel=vel;
        advance_native_entity_motion(native,pos,vel);
        projection.path.push_back(pos);
    }
    projection.velocity=velocity;
    projection.valid=!projection.path.empty();
    return projection;
}
bool mechanism_holds_position(const MechanismObservation& observation) {
    const std::string& phase=observation.action_phase;
    // These are the exact labels written by MechanismSemantics. A windup or an
    // active attack is not a chase state in the simulator, so projecting the
    // enemy as if it were closing would aim ahead of a body that stays put.
    return phase=="Windup"||phase=="AttackActive"||phase=="AttackWindup"||
        phase=="Charge"||phase=="Charging";
}
EnemyProjection project_snapshot(const EnemyState& enemy,Vec player_position,double horizon,
                                 double maximum_speed) {
    const Entity& e=enemy.entity;
    const bool chase=!mechanism_holds_position(enemy.mechanism)&&
        (e.contact()||(enemy.mechanism_known&&mechanism_chases(enemy.mechanism)));
    const double speed=mechanism_chase_speed(enemy.mechanism,
        e.vel.norm()>10?e.vel.norm():70.0);
    return project_native(e,e.pos,clamp_speed(e.vel,maximum_speed),chase,player_position,speed,
        e.speed_multiplier,e.friction,horizon);
}
EnemyProjection project_sim(const SimEnemy& enemy,Vec player_position,double horizon,
                            double maximum_speed) {
    // Mirror update_enemies(): a windup or charge holds the body in place.
    const bool chase=enemy.chase&&enemy.windup<=0&&!enemy.charging;
    return project_native(enemy.native,enemy.pos,clamp_speed(enemy.vel,maximum_speed),
        chase,player_position,
        enemy.chase_speed>1?enemy.chase_speed:(enemy.speed>1?enemy.speed:70.0),
        enemy.speed_multiplier,enemy.friction,horizon);
}
PredictiveAimSolution solve_projection(uint32_t target_id,double target_radius,
                                       bool damageable,const EnemyProjection& projection,
                                       Vec player_position,Vec player_velocity,
                                       double tear_speed,double tear_range,
                                       const Grid& grid,const CombatConfig& config,
                                       Fire only=Fire::none) {
    PredictiveAimSolution solution;
    solution.target_id=target_id;
    solution.target_damageable=damageable;
    solution.target_velocity=projection.velocity;
    solution.target_position=projection.path.empty()?Vec{}:projection.path.front();
    solution.tear_speed=tear_speed;
    solution.inheritance=config.tear_inheritance;
    if(!projection.valid||projection.path.size()<2||!projection.path.front().finite())
        return solution;
    if(tear_speed<=1||tear_range<=1||!player_position.finite())return solution;
    const double hit_radius=std::max(2.0,target_radius)+
        std::max(2.0,config.tear_radius);
    solution.hit_radius=hit_radius;
    struct Choice {
        bool hit{},line_clear{};
        double miss{infinite},time{infinite};
        size_t index{};
        Fire fire{Fire::none};
        Vec spawn{},velocity{};
    };
    Choice best;
    for(int raw=1;raw<5;++raw) {
        const Fire fire=static_cast<Fire>(raw);
        if(only!=Fire::none&&fire!=only)continue;
        const Vec direction_vector=gamebot::direction(fire);
        const Vec spawn=player_position+
            direction_vector*config.tear_spawn_offset;
        const Vec velocity=native_tear_velocity(fire,tear_speed,
            player_velocity,config.tear_inheritance);
        if(velocity.norm()<=1.0)continue;
        Choice candidate;
        candidate.fire=fire;
        candidate.spawn=spawn;
        candidate.velocity=velocity;
        bool line_clear=true;
        Vec previous=spawn;
        for(size_t index=0;index<projection.path.size();++index) {
            const double time=projection.step*double(index);
            const Vec tear=spawn+velocity*time;
            const double travelled=distance(spawn,tear);
            // Native tears die at their range. Check the reachable part of the
            // final segment, then stop. This also lets a high-speed laser/knife
            // hit a target between two 60 Hz target samples instead of jumping
            // over it.
            const bool clipped=travelled>tear_range+hit_radius;
            const Vec end=clipped?
                spawn+velocity.unit()*(tear_range+hit_radius):tear;
            if(grid.valid&&grid.width>0&&grid.height>0&&
               int(grid.cells.size())==grid.width*grid.height) {
                if(!grid.walkable(end,2.0,true))break;
                if(index>0&&!grid.shot_clear(previous,end)) {
                    line_clear=false;break;
                }
            }
            const double miss=segment_distance_to(projection.path[index],
                previous,end);
            const bool hit=miss<=hit_radius;
            const bool better=(!candidate.hit&&hit)||
                (candidate.hit==hit&&(candidate.miss>miss+1e-9));
            if(better) {
                candidate.hit=hit;
                candidate.miss=miss;
                candidate.time=time;
                candidate.index=index;
                candidate.line_clear=line_clear;
            }
            previous=end;
            if(clipped)break;
        }
        if(candidate.fire==Fire::none)continue;
        const bool better=(!best.hit&&candidate.hit)||
            (best.hit==candidate.hit&&(candidate.time<best.time-1e-9||
                (std::abs(candidate.time-best.time)<1e-9&&candidate.miss<best.miss)));
        if(best.fire==Fire::none||better)best=candidate;
    }
    if(best.fire==Fire::none||best.miss>=infinite-1.0)return solution;
    solution.valid=true;
    solution.fire=best.fire;
    solution.predicted_hit=best.hit;
    solution.line_clear=best.line_clear;
    solution.miss_distance=best.miss;
    solution.intercept_time=best.hit?best.time:-1;
    solution.aim_point=projection.at(best.index);
    solution.target_future_position=projection.at(best.index);
    solution.spawn_position=best.spawn;
    solution.projectile_velocity=best.velocity;
    solution.estimated_travel_frames=best.hit?
        int(std::lround(best.time*60.0)):-1;
    const double miss_ratio=best.miss/std::max(1.0,hit_radius);
    double confidence=0.0;
    if(best.hit) {
        confidence=0.55+(best.line_clear?0.15:0.0)+
            (projection.velocity.norm()<=40?0.10:0.0);
        if(config.aim_require_line_clear&&!best.line_clear) {
            solution.predicted_hit=false;
            confidence=std::min(confidence,0.30);
        }
    }else {
        confidence=0.15*clamp01(1.0-miss_ratio);
    }
    solution.confidence=clamp01(confidence);
    solution.evidence=best.hit?
        (best.line_clear?"native-motion intercept":"native intercept blocked"):
        "best cardinal alignment";
    return solution;
}
std::string join_evidence(std::initializer_list<std::string> parts) {
    std::string out;
    for(const auto& part:parts) {
        if(part.empty())continue;
        if(!out.empty())out+=";";
        out+=part;
    }
    return out;
}
std::string lower_copy(std::string text) {
    std::transform(text.begin(),text.end(),text.begin(),[](unsigned char c){
        return char(std::tolower(c));
    });
    return text;
}
} // namespace

const char* attack_phase_name(AttackPhase phase) {
    switch(phase) {
    case AttackPhase::idle:return "idle";
    case AttackPhase::windup:return "windup";
    case AttackPhase::active:return "active";
    case AttackPhase::recovery:return "recovery";
    case AttackPhase::invulnerable:return "invulnerable";
    case AttackPhase::dead:return "dead";
    case AttackPhase::unknown:return "unknown";
    }
    return "unknown";
}
const char* tactical_mode_name(TacticalMode mode) {
    switch(mode) {
    case TacticalMode::balanced:return "balanced";
    case TacticalMode::engage:return "engage";
    case TacticalMode::focus_fire:return "focus-fire";
    case TacticalMode::reposition:return "reposition";
    case TacticalMode::disengage:return "disengage";
    case TacticalMode::escape:return "escape";
    }
    return "balanced";
}
TacticalMode tactical_mode_from_name(const std::string& name) {
    if(name=="engage")return TacticalMode::engage;
    if(name=="focus-fire"||name=="focus_fire")return TacticalMode::focus_fire;
    if(name=="reposition")return TacticalMode::reposition;
    if(name=="disengage")return TacticalMode::disengage;
    if(name=="escape")return TacticalMode::escape;
    return TacticalMode::balanced;
}

json ThreatAssessment::to_json() const {
    return {{"id",id},{"type",type},{"variant",variant},{"subtype",subtype},
        {"pos",pos},{"vel",vel},{"hp",hp},{"max_hp",max_hp},
        {"distance",distance},{"attack_range",attack_range},
        {"attack_period",attack_period},{"expected_damage",expected_damage},
        {"time_to_attack",time_to_attack},{"movement_restriction",movement_restriction},
        {"unknown_risk",unknown_risk},{"score",score},{"contact",contact},
        {"boss",boss},{"damageable",damageable},{"invulnerable",invulnerable},
        {"targetable",targetable},{"attack_imminent",attack_imminent},
        {"timing_precision",precision_name(timing_precision)},{"phase",phase},
        {"evidence",evidence}};
}
json AttackWindowAssessment::to_json() const {
    return {{"enemy_id",enemy_id},{"phase",attack_phase_name(phase)},
        {"damageable",damageable},{"damageable_verified",damageable_verified},
        {"attack_imminent",attack_imminent},{"window_open",window_open},
        {"time_to_attack",time_to_attack},{"active_remaining",active_remaining},
        {"recovery_remaining",recovery_remaining},{"opening_seconds",opening_seconds},
        {"confidence",confidence},{"precision",precision_name(precision)},
        {"evidence",evidence}};
}
json PredictiveAimSolution::to_json() const {
    return {{"target_id",target_id},{"valid",valid},{"predicted_hit",predicted_hit},
        {"line_clear",line_clear},{"target_damageable",target_damageable},
        {"fire",int(fire)},{"aim_point",aim_point},
        {"target_position",target_position},
        {"target_future_position",target_future_position},
        {"target_velocity",target_velocity},
        {"spawn_position",spawn_position},
        {"projectile_velocity",projectile_velocity},
        {"intercept_time",intercept_time},
        {"estimated_travel_frames",estimated_travel_frames},
        {"miss_distance",miss_distance},{"hit_radius",hit_radius},
        {"tear_speed",tear_speed},{"inheritance",inheritance},
        {"confidence",confidence},{"evidence",evidence}};
}
json TargetAssessment::to_json() const {
    return {{"id",id},{"score",score},{"threat",threat},{"kill_time",kill_time},
        {"hit_opportunity",hit_opportunity},{"attack_cost",attack_cost},
        {"window_gain",window_gain},{"kill_impact",kill_impact},
        {"threat_reduction",threat_reduction},
        {"expected_damage",expected_damage},
        {"kill_probability",kill_probability},
        {"time_to_kill",time_to_kill},
        {"attack_opportunity",attack_opportunity},
        {"exposure_cost",exposure_cost},
        {"positioning_cost",positioning_cost},
        {"kill_gain",kill_gain},{"position_gain",position_gain},
        {"hp_fraction",hp_fraction},
        {"selected",selected},{"damageable",damageable},
        {"window_open",window_open},{"predicted_hit",predicted_hit},
        {"attack_imminent",attack_imminent},
        {"fire",int(fire)},{"reason",reason}};
}
json CombatObjective::to_json() const {
    return {{"primary_threat",primary_threat},{"target",target},
        {"survival_priority",survival_priority},{"output_priority",output_priority},
        {"expected_threat_reduction",expected_threat_reduction},
        {"expected_dps",expected_dps},{"target_available",target_available},
        {"disengage",disengage},{"switch_target",switch_target},
        {"unknown_risk",unknown_risk},
        {"tactical_mode",tactical_mode_name(tactical_mode)},
        {"expected_kill_gain",expected_kill_gain},
        {"target_position_gain",target_position_gain},
        {"exposure_cost",exposure_cost},{"positioning_cost",positioning_cost},
        {"kill_probability",kill_probability},{"time_to_kill",time_to_kill},
        {"attack_opportunity",attack_opportunity},
        {"threat_reduction",threat_reduction},
        {"anti_stalemate",anti_stalemate},{"need_reposition",need_reposition},
        {"target_invalid",target_invalid},{"target_unreachable",target_unreachable},
        {"attack_reachability",attack_reachability},{"progress_kind",progress_kind},
        {"threat_count",threat_count},{"damageable_count",damageable_count},
        {"branch_specific",branch_specific},{"reason",reason}};
}
const ThreatAssessment* CombatContext::threat(uint32_t id) const {
    for(const auto& item:threats)if(item.id==id)return &item;
    return nullptr;
}
const AttackWindowAssessment* CombatContext::window(uint32_t id) const {
    for(const auto& item:windows)if(item.enemy_id==id)return &item;
    return nullptr;
}
const TargetAssessment* CombatContext::target_assessment(uint32_t id) const {
    for(const auto& item:targets)if(item.id==id)return &item;
    return nullptr;
}
json CombatContext::to_json() const {
    json threat_rows=json::array();
    for(const auto& item:threats)threat_rows.push_back(item.to_json());
    json window_rows=json::array();
    for(const auto& item:windows)window_rows.push_back(item.to_json());
    json target_rows=json::array();
    for(const auto& item:targets)target_rows.push_back(item.to_json());
    return {{"valid",valid},{"attack_enabled",attack_enabled},
        {"target",target},{"primary_threat",primary_threat},
        {"considered",considered},{"unknown_enemies",unknown_enemies},
        {"damageable_enemies",damageable_enemies},
        {"movement_restriction",movement_restriction},{"switched",switched},
        {"player_position",player_position},{"tear_range",tear_range},
        {"target_distance",target_distance},{"target_in_range",target_in_range},
        {"target_line_clear",target_line_clear},
        {"fallback_fire",int(fallback_fire)},
        {"fallback_fire_valid",fallback_fire_valid},
        {"threats",threat_rows},{"windows",window_rows},{"targets",target_rows},
        {"aim",aim.to_json()},{"objective",objective.to_json()},
        {"reason",reason}};
}
const ThreatAssessment* BranchCombatContext::threat(uint32_t id) const {
    for(const auto& item:threats)if(item.id==id)return &item;
    return nullptr;
}
const AttackWindowAssessment* BranchCombatContext::window(uint32_t id) const {
    for(const auto& item:windows)if(item.enemy_id==id)return &item;
    return nullptr;
}
const TargetAssessment* BranchCombatContext::target_assessment(uint32_t id) const {
    for(const auto& item:targets)if(item.id==id)return &item;
    return nullptr;
}
json BranchCombatContext::to_json() const {
    json threat_rows=json::array();
    for(const auto& item:threats)threat_rows.push_back(item.to_json());
    json window_rows=json::array();
    for(const auto& item:windows)window_rows.push_back(item.to_json());
    json target_rows=json::array();
    for(const auto& item:targets)target_rows.push_back(item.to_json());
    return {{"valid",valid},{"disengage",disengage},{"switched",switched},
        {"target_available",target_available},{"primary_threat",primary_threat},
        {"target",target},{"mode",tactical_mode_name(mode)},
        {"threat_total",threat_total},{"threat_remaining",threat_remaining},
        {"survival_priority",survival_priority},{"output_priority",output_priority},
        {"target_hp",target_hp},{"target_hp_fraction",target_hp_fraction},
        {"target_ttk",target_ttk},
        {"target_kill_probability",target_kill_probability},
        {"target_attack_opportunity",target_attack_opportunity},
        {"target_expected_damage",target_expected_damage},
        {"target_exposure",target_exposure},
        {"target_positioning",target_positioning},
        {"escape_space",escape_space},{"maneuverability",maneuverability},
        {"anti_stalemate",anti_stalemate},{"need_reposition",need_reposition},
        {"target_line_clear",target_line_clear},
        {"target_distance",target_distance},{"attack_reachability",attack_reachability},
        {"enemy_count",enemy_count},{"damageable_enemies",damageable_enemies},
        {"threats",threat_rows},{"windows",window_rows},{"targets",target_rows},
        {"objective",objective.to_json()}};
}
json BranchCombatSummary::to_json() const {
    return {{"valid",valid},{"disengage",disengage},{"switched",switched},
        {"target",target},{"mode",tactical_mode_name(mode)},
        {"threat_total",threat_total},{"threat_remaining",threat_remaining},
        {"target_hp",target_hp},{"target_hp_fraction",target_hp_fraction},
        {"target_ttk",target_ttk},{"kill_probability",kill_probability},
        {"attack_opportunity",attack_opportunity},
        {"exposure",exposure},{"positioning",positioning},
        {"anti_stalemate",anti_stalemate},{"need_reposition",need_reposition},
        {"attack_reachability",attack_reachability},{"target_distance",target_distance},
        {"enemy_count",enemy_count},{"damageable_enemies",damageable_enemies}};
}
BranchCombatSummary BranchCombatContext::summary() const {
    BranchCombatSummary summary;
    summary.valid=valid;
    summary.disengage=disengage;
    summary.switched=switched;
    summary.target=target;
    summary.mode=mode;
    summary.threat_total=threat_total;
    summary.threat_remaining=threat_remaining;
    summary.target_hp=target_hp;
    summary.target_hp_fraction=target_hp_fraction;
    summary.target_ttk=target_ttk;
    summary.kill_probability=target_kill_probability;
    summary.attack_opportunity=target_attack_opportunity;
    summary.exposure=target_exposure;
    summary.positioning=target_positioning;
    summary.anti_stalemate=anti_stalemate;
    summary.need_reposition=need_reposition;
    summary.attack_reachability=attack_reachability;
    summary.target_distance=target_distance;
    summary.enemy_count=enemy_count;
    summary.damageable_enemies=damageable_enemies;
    return summary;
}
json CombatCandidateTerms::to_json() const {
    return {{"threat_removal",threat_removal},{"kill_priority",kill_priority},
        {"attack_window",attack_window},{"aim_hit",aim_hit},
        {"output_efficiency",output_efficiency},
        {"target_damage_fraction",target_damage_fraction},
        {"target_killed",target_killed},
        {"kill_sequence",kill_sequence},{"positioning",positioning},
        {"exposure",exposure},{"progress_gain",progress_gain},
        {"reachability",reachability},{"approach",approach},
        {"branch_target",branch_target},
        {"branch_target_killed",branch_target_killed},
        {"branch_disengage",branch_disengage},
        {"branch_mode",tactical_mode_name(branch_mode)}};
}
double CombatCandidateTerms::total(const CombatConfig& config) const {
    const double offensive=
        config.candidate_threat_weight*clamp01(threat_removal)+
        config.candidate_kill_weight*clamp01(kill_priority)+
        config.candidate_window_weight*clamp01(attack_window)+
        config.candidate_aim_weight*clamp01(aim_hit)+
        config.candidate_efficiency_weight*clamp01(output_efficiency)+
        config.candidate_sequence_weight*clamp01(kill_sequence)+
        config.candidate_position_weight*clamp01(positioning)+
        config.candidate_progress_weight*clamp01(progress_gain)+
        config.candidate_reachability_weight*clamp01(reachability)+
        config.candidate_approach_weight*clamp01(approach);
    // Exposure is a penalty only. It can never make the total negative, so a
    // branch that does nothing still scores zero rather than a debt that would
    // interact with unrelated survival terms.
    return std::max(0.0,offensive-
        config.candidate_exposure_weight*clamp01(exposure));
}

double ThreatPrioritizer::movement_restriction(const WorldStateSnapshot& root) const {
    auto blocked=[&](Vec point,double time) {
        const auto& player=root.player.body;
        if(root.room.grid.valid&&root.room.grid.width>0&&root.room.grid.height>0) {
            if(!root.room.grid.walkable(point,std::max(2.0,player.radius*0.5),root.player.flying))
                return true;
        }
        const double margin=config_.movement_probe_margin+player.radius;
        for(const auto& hazard:root.hazards) {
            const Vec offset=hazard.vel*time;
            if(hazard_blocks(hazard,point,margin,offset))return true;
        }
        for(const auto& projectile:root.projectiles) {
            if(projectile.role==ProjectileRole::friendly)continue;
            if(!projectile.entity.pos.finite())continue;
            const Vec position=projectile.entity.pos+projectile.entity.vel*time;
            if(distance(point,position)<=margin+projectile.entity.radius)return true;
        }
        for(const auto& enemy:root.enemies) {
            if(!enemy.entity.contact())continue;
            const Vec position=enemy.entity.pos+enemy.entity.vel*time;
            if(distance(point,position)<=margin+enemy.entity.radius)return true;
        }
        return false;
    };
    const Vec origin=root.player.body.pos;
    if(!origin.finite())return 0;
    const int samples=std::max(1,config_.movement_probe_samples);
    const double speed=root.player.max_speed>1?root.player.max_speed:260;
    int free_directions=0,total_directions=0;
    for(int raw=1;raw<9;++raw) {
        const Move move=static_cast<Move>(raw);
        const Vec direction_vector=gamebot::direction(move);
        ++total_directions;
        bool free=true;
        for(int sample=1;sample<=samples&&free;++sample) {
            const double time=config_.movement_probe_seconds*double(sample)/double(samples);
            Vec point=origin+direction_vector*(speed*time);
            if(root.room.grid.valid&&root.room.grid.native_max.x>root.room.grid.native_min.x) {
                point=root.room.grid.clamped_position(point,root.player.body.radius*0.25);
            }
            if(blocked(point,time))free=false;
        }
        if(free)++free_directions;
    }
    if(total_directions<=0)return 0;
    return clamp01(1.0-double(free_directions)/double(total_directions));
}

std::vector<ThreatAssessment> ThreatPrioritizer::assess(const WorldStateSnapshot& root,
    const std::vector<AttackWindowAssessment>& windows,
    double movement_restriction_override) const {
    std::vector<ThreatAssessment> out;
    const Vec player=root.player.body.pos;
    const double restriction=movement_restriction_override>=0.0?
        movement_restriction_override:movement_restriction(root);
    const double health=std::max(1.0,double(root.player.health));
    auto window_for=[&](uint32_t id)->const AttackWindowAssessment* {
        for(const auto& window:windows)if(window.enemy_id==id)return &window;
        return nullptr;
    };
    for(const auto& enemy:root.enemies) {
        const Entity& e=enemy.entity;
        if(!e.enemy()||e.friendly||!e.alive())continue;
        if(int(out.size())>=std::max(1,config_.max_threats))break;
        ThreatAssessment item;
        item.id=e.address;
        item.type=e.type;item.variant=e.variant;item.subtype=e.subtype;
        item.pos=e.pos;item.vel=e.vel;
        item.hp=std::max(0.0,e.hp);
        item.max_hp=std::max(item.hp,e.max_hp);
        item.distance=e.pos.finite()?distance(player,e.pos):infinite;
        item.contact=e.contact();
        item.boss=e.is_boss||enemy.boss_phase_known;
        item.damageable=e.damageable_enemy();
        item.invulnerable=e.invulnerable||e.no_target;
        item.targetable=e.targetable();
        item.attack_range=config_.default_attack_range;
        item.expected_damage=std::max(1.0,e.damage>0?e.damage:1.0);
        item.attack_period=1.5;
        bool has_range=false;
        bool precise=false;
        std::string evidence="state/animation only";
        if(enemy.boss_phase_known)
            evidence+=";boss-phase="+std::to_string(enemy.boss_phase);
        for(const auto& intent:enemy.intents) {
            if(intent.primitive==AttackPrimitive::unknown)continue;
            double range=0;
            if(intent.length>0)range=intent.length;
            if(intent.projectile_speed>0)
                range=std::max(range,intent.projectile_speed*
                    std::max(0.05,intent.duration));
            range=std::max(range,intent.collision_radius);
            if(range>0) {
                item.attack_range=std::max(item.attack_range,range);
                has_range=true;
            }
            if(intent.damage>0)item.expected_damage=std::max(item.expected_damage,intent.damage);
            if(intent.projectile_delay>0)
                item.attack_period=std::clamp(double(intent.projectile_delay)*2.0/tick_rate,0.3,4.0);
            if(intent.evidence==AttackEvidence::verified)precise=true;
            evidence=join_evidence({evidence,intent.prediction_source});
        }
        if(item.contact) {
            item.attack_range=std::max(item.attack_range,
                e.radius+root.player.body.radius+24);
            has_range=true;
        }
        if(!has_range&&enemy.mechanism_known) {
            if(enemy.mechanism.projectile_delay>0) {
                const double range=enemy.mechanism.projectile_delay/30.0*220.0;
                item.attack_range=std::max(item.attack_range,range);
            }
            if(enemy.mechanism.projectile_delay>0)
                item.attack_period=std::clamp(
                    double(enemy.mechanism.projectile_delay)*2.0/tick_rate,0.3,4.0);
        }
        const AttackWindowAssessment* window=window_for(item.id);
        if(window) {
            item.time_to_attack=window->time_to_attack;
            item.timing_precision=window->precision;
            item.phase=attack_phase_name(window->phase);
            item.attack_imminent=window->attack_imminent;
            evidence=join_evidence({evidence,window->evidence});
        }
        bool unknown=!enemy.has_precise_attack||enemy.unknown_mechanism;
        double unknown_risk=unknown?
            config_.unknown_mechanism_risk*(enemy.unknown_mechanism?1.0:0.75):0.0;
        for(const auto& hazard:root.hazards)
            if(hazard.source==item.id&&hazard.precision==Precision::unknown)
                unknown_risk=std::max(unknown_risk,0.45);
        item.unknown_risk=clamp01(unknown_risk);
        item.movement_restriction=restriction;
        item.score=threat_score(item.distance,item.attack_range+
            root.player.body.radius,item.expected_damage,item.attack_period,health,
            item.time_to_attack,item.attack_imminent,restriction,item.unknown_risk,
            config_);
        item.evidence=join_evidence({precise?"verified-attack-model":"inferred-attack-model",
            evidence,unknown?"unknown-mechanism":""});
        out.push_back(std::move(item));
    }
    std::stable_sort(out.begin(),out.end(),[](const ThreatAssessment& a,const ThreatAssessment& b){
        if(std::abs(a.score-b.score)>1e-9)return a.score>b.score;
        return a.distance<b.distance;
    });
    return out;
}

double ThreatPrioritizer::movement_restriction(const SimWorld& world) const {
    auto blocked=[&](Vec point,double time) {
        const auto& player=world.player;
        if(world.room.grid.valid&&world.room.grid.width>0&&world.room.grid.height>0) {
            if(!world.room.grid.walkable(point,std::max(2.0,player.radius*0.5),player.flying))
                return true;
        }
        const double margin=config_.movement_probe_margin+player.radius;
        for(const auto& hazard:world.hazards) {
            if(hazard.dead)continue;
            if(hazard.active_from>world.time+1e-9&&
               hazard.active_from>world.time+time)continue;
            if(hazard.spec.until>0&&hazard.spec.until<world.time+time)continue;
            const Vec offset=hazard.velocity*time;
            if(hazard_blocks(hazard.spec,point,margin,offset))return true;
        }
        for(const auto& projectile:world.projectiles) {
            if(projectile.dead||!projectile.hostile)continue;
            if(!projectile.pos.finite())continue;
            const Vec position=projectile.pos+projectile.vel*time;
            if(distance(point,position)<=margin+projectile.radius)return true;
        }
        for(const auto& enemy:world.enemies) {
            if(enemy.dead||!enemy.contact)continue;
            const Vec position=enemy.pos+enemy.vel*time;
            if(distance(point,position)<=margin+enemy.radius)return true;
        }
        return false;
    };
    const Vec origin=world.player.pos;
    if(!origin.finite())return 0;
    const int samples=std::max(1,config_.movement_probe_samples);
    const double speed=world.player.max_speed>1?world.player.max_speed:260;
    int free_directions=0,total_directions=0;
    for(int raw=1;raw<9;++raw) {
        const Move move=static_cast<Move>(raw);
        const Vec direction_vector=gamebot::direction(move);
        ++total_directions;
        bool free=true;
        for(int sample=1;sample<=samples&&free;++sample) {
            const double time=config_.movement_probe_seconds*double(sample)/double(samples);
            Vec point=origin+direction_vector*(speed*time);
            if(world.room.grid.valid&&
               world.room.grid.native_max.x>world.room.grid.native_min.x)
                point=world.room.grid.clamped_position(point,world.player.radius*0.25);
            if(blocked(point,time))free=false;
        }
        if(free)++free_directions;
    }
    if(total_directions<=0)return 0;
    return clamp01(1.0-double(free_directions)/double(total_directions));
}

std::vector<ThreatAssessment> ThreatPrioritizer::assess(const SimWorld& world,
    const std::vector<AttackWindowAssessment>& windows,
    double movement_restriction_override) const {
    std::vector<ThreatAssessment> out;
    const Vec player=world.player.pos;
    const double restriction=movement_restriction_override>=0.0?
        movement_restriction_override:movement_restriction(world);
    const double health=std::max(1.0,double(world.player.health));
    auto window_for=[&](uint32_t id)->const AttackWindowAssessment* {
        for(const auto& window:windows)if(window.enemy_id==id)return &window;
        return nullptr;
    };
    for(const auto& enemy:world.enemies) {
        if(enemy.dead||enemy.hp<=0)continue;
        if(int(out.size())>=std::max(1,config_.max_threats))break;
        ThreatAssessment item;
        item.id=enemy.id;
        item.type=enemy.type;item.variant=enemy.variant;item.subtype=enemy.subtype;
        item.pos=enemy.pos;item.vel=enemy.vel;
        item.hp=std::max(0.0,enemy.hp);
        item.max_hp=std::max(item.hp,enemy.max_hp);
        item.distance=enemy.pos.finite()?distance(player,enemy.pos):infinite;
        item.contact=enemy.contact;
        item.boss=enemy.boss;
        item.invulnerable=enemy.invulnerable;
        item.damageable=!enemy.invulnerable;
        item.targetable=item.damageable;
        item.expected_damage=std::max(1.0,enemy.damage>0?enemy.damage:1.0);
        item.attack_period=std::clamp(
            enemy.attack.period_frames>0?enemy.attack.period_frames/60.0:1.5,
            0.3,4.0);
        item.attack_range=std::max(config_.default_attack_range,
            std::max(enemy.attack.length,enemy.attack.speed));
        if(item.contact)
            item.attack_range=std::max(item.attack_range,
                enemy.radius+world.player.radius+24);
        const AttackWindowAssessment* window=window_for(item.id);
        if(window) {
            item.time_to_attack=window->time_to_attack;
            item.timing_precision=window->precision;
            item.phase=attack_phase_name(window->phase);
            item.attack_imminent=window->attack_imminent;
        }
        double unknown_risk=0.0;
        if(enemy.attack.unknown||enemy.attack.precision==Precision::unknown)
            unknown_risk=config_.unknown_mechanism_risk;
        else if(enemy.attack.precision!=Precision::exact)
            unknown_risk=config_.unknown_mechanism_risk*0.75;
        if(enemy.motion_fidelity!=Fidelity::exact_native||
           enemy.behavior_precision!=Precision::exact)
            unknown_risk=std::max(unknown_risk,config_.unknown_mechanism_risk*0.55);
        item.unknown_risk=clamp01(unknown_risk);
        item.movement_restriction=restriction;
        item.score=threat_score(item.distance,item.attack_range+world.player.radius,
            item.expected_damage,item.attack_period,health,item.time_to_attack,
            item.attack_imminent,restriction,item.unknown_risk,config_);
        item.evidence=join_evidence({
            enemy.attack.precision==Precision::exact?
                "branch verified attack model":"branch inferred attack model",
            enemy.attack.unknown?"branch unknown attack":"",
            window?window->evidence:"",
            enemy.boss?"boss":""});
        out.push_back(std::move(item));
    }
    std::stable_sort(out.begin(),out.end(),[](const ThreatAssessment& a,const ThreatAssessment& b){
        if(std::abs(a.score-b.score)>1e-9)return a.score>b.score;
        return a.distance<b.distance;
    });
    return out;
}

AttackWindowAssessment AttackWindowDetector::detect(const EnemyState& enemy,uint32_t clock) const {
    AttackWindowAssessment window;
    window.enemy_id=enemy.entity.address;
    const Entity& entity=enemy.entity;
    if(!entity.alive()||entity.hp<=0) {
        window.phase=AttackPhase::dead;
        window.evidence="entity is not alive";
        return window;
    }
    window.damageable=entity.damageable_enemy();
    // This is the Reader's native damage-filter/identity flags, not an
    // animation label. Animation can describe an attack but cannot by itself
    // make an entity damageable or invulnerable.
    window.damageable_verified=window.damageable;
    if(entity.invulnerable||entity.no_target||
       enemy.mechanism.is_invincible==1) {
        window.phase=AttackPhase::invulnerable;
        window.damageable=false;
        window.damageable_verified=true;
        window.confidence=0.95;
        window.precision=Precision::exact;
        window.evidence="native invulnerability/no-target flag";
        return window;
    }
    double trigger=infinite,end=infinite;
    double confidence=0.0;
    Precision precision=Precision::unknown;
    std::string evidence;
    bool cooldown_source=false;
    auto observe=[&](double next_trigger,double next_end,double weight,Precision p,
                     const std::string& source) {
        if(next_trigger<trigger)trigger=next_trigger;
        if(next_end>end)end=next_end;
        if(weight>=confidence) {
            confidence=weight;
            precision=p;
            evidence=source;
        }
    };
    const auto& observation=enemy.mechanism;
    if(enemy.mechanism_known&&observation.predicted_trigger_frame>=0) {
        const double next_trigger=(double(observation.predicted_trigger_frame)-double(clock))/tick_rate;
        if(next_trigger>-5.0) {
            double next_end=infinite;
            if(observation.predicted_action_end_frame>=0)
                next_end=(double(observation.predicted_action_end_frame)-double(clock))/tick_rate;
            if(next_end>=infinite-1.0)next_end=next_trigger+0.25;
            if(observation.attack_timing_verified)
                observe(next_trigger,next_end,0.92,Precision::exact,
                    "verified mechanism trigger timing");
            else
                observe(next_trigger,next_end,0.45,Precision::estimated,
                    "mechanism timing candidate");
        }
    }
    for(const auto& intent:enemy.intents) {
        if(intent.trigger_time<0)continue;
        if(intent.primitive==AttackPrimitive::unknown&&intent.evidence==AttackEvidence::unknown)
            continue;
        const double next_end=intent.trigger_time+std::max(0.05,intent.duration);
        const double weight=clamp01(0.25+0.55*intent.confidence)*
            (0.45+0.55*evidence_rank(intent.evidence));
        const Precision p=intent.evidence==AttackEvidence::verified?
            Precision::exact:Precision::estimated;
        observe(intent.trigger_time,next_end,weight,p,
            "action-conditioned intent "+std::string(attack_primitive_name(intent.primitive)));
    }
    if(trigger>=infinite-1.0&&!enemy.intents.empty()) {
        for(const auto& intent:enemy.intents) {
            if(intent.trigger_time>=-std::max(0.05,intent.duration)) {
                observe(intent.trigger_time,intent.trigger_time+std::max(0.05,intent.duration),
                    clamp01(0.2+0.5*intent.confidence),Precision::estimated,
                    "observed intent timing");
                break;
            }
        }
    }
    if(trigger>=infinite-1.0) {
        double cooldown=0;
        if(enemy.entity.projectile_cooldown>0)
            cooldown=std::max(cooldown,double(enemy.entity.projectile_cooldown)/tick_rate);
        if(enemy.entity.projectile_delay>0)
            cooldown=std::max(cooldown,double(enemy.entity.projectile_delay)/tick_rate);
        if(enemy.mechanism_known) {
            if(observation.projectile_cooldown>0)
                cooldown=std::max(cooldown,double(observation.projectile_cooldown)/tick_rate);
            if(observation.projectile_delay>0)
                cooldown=std::max(cooldown,double(observation.projectile_delay)/tick_rate);
        }
        if(cooldown>0) {
            trigger=cooldown;
            confidence=0.55;
            precision=Precision::exact;
            cooldown_source=true;
            evidence="native attack cooldown counter (lower bound on next attack)";
        }
    }
    if(trigger>=infinite-1.0) {
        const std::string phase=enemy.mechanism_known?
            lower_copy(observation.action_phase):std::string{};
        if(phase.find("windup")!=std::string::npos) {
            window.phase=AttackPhase::windup;
            window.confidence=0.30;
            window.precision=Precision::estimated;
            window.evidence="observed state/animation windup; trigger time unverified";
            window.time_to_attack=-1;
            window.window_open=false;
            return window;
        }
        if(phase.find("attackactive")!=std::string::npos||phase=="active") {
            window.phase=AttackPhase::active;
            window.confidence=0.30;
            window.precision=Precision::estimated;
            window.evidence="observed state/animation active phase; geometry unverified";
            window.attack_imminent=true;
            window.window_open=false;
            return window;
        }
        window.phase=window.damageable?AttackPhase::idle:AttackPhase::unknown;
        window.confidence=0.15;
        window.precision=Precision::unknown;
        window.evidence=window.damageable?
            "targetable by native flags; attack timing unknown":"no damageable native state";
        // Unknown timing is not an output window. The target may be
        // damageable, but the bot must not claim the attack gap was observed.
        window.window_open=false;
        return window;
    }
    window.time_to_attack=trigger;
    window.confidence=confidence;
    window.precision=precision;
    window.evidence=evidence;
    if(cooldown_source) {
        window.phase=AttackPhase::recovery;
        window.recovery_remaining=std::max(0.0,trigger);
        window.window_open=window.damageable;
        window.opening_seconds=window.window_open?std::max(0.0,trigger):0.0;
    }else if(trigger>0.05) {
        window.phase=AttackPhase::windup;
        window.attack_imminent=trigger<=0.35;
        window.window_open=window.damageable&&trigger>=config_.window_min_output_gap;
        window.opening_seconds=window.window_open?trigger:0.0;
    }else if(end>0.0) {
        window.phase=AttackPhase::active;
        window.attack_imminent=true;
        window.active_remaining=end;
        window.window_open=false;
    }else {
        window.phase=AttackPhase::recovery;
        window.recovery_remaining=std::max(0.0,trigger);
        window.window_open=window.damageable;
        window.opening_seconds=window.window_open?std::max(0.0,trigger):0.0;
    }
    return window;
}
std::vector<AttackWindowAssessment> AttackWindowDetector::detect_all(
    const WorldStateSnapshot& root) const {
    std::vector<AttackWindowAssessment> out;
    for(const auto& enemy:root.enemies) {
        if(!enemy.entity.enemy()||enemy.entity.friendly||!enemy.entity.alive())continue;
        out.push_back(detect(enemy,root.frame.clock));
    }
    return out;
}
AttackWindowAssessment AttackWindowDetector::detect(const SimEnemy& enemy,
                                                   uint32_t clock) const {
    AttackWindowAssessment window;
    window.enemy_id=enemy.id;
    if(enemy.dead||enemy.hp<=0) {
        window.phase=AttackPhase::dead;
        window.evidence="branch entity is not alive";
        return window;
    }
    window.damageable=!enemy.invulnerable;
    window.damageable_verified=true;
    if(enemy.invulnerable) {
        window.phase=AttackPhase::invulnerable;
        window.damageable=false;
        window.confidence=0.95;
        window.precision=Precision::exact;
        window.evidence="branch native invulnerability flag";
        return window;
    }
    // SimEnemy windup/active/cooldown counters are decremented once per 60 Hz
    // simulator frame, so seconds are frames/60 rather than frames/30.
    constexpr double simulator_rate=60.0;
    const double windup=std::max(0.0,enemy.windup)/simulator_rate;
    const double active=std::max(0.0,enemy.active)/simulator_rate;
    const double cooldown=std::max(0.0,enemy.cooldown)/simulator_rate;
    window.damageable_verified=true;
    if(active>1e-9) {
        window.phase=AttackPhase::active;
        window.attack_imminent=true;
        window.active_remaining=active;
        window.time_to_attack=0;
        window.window_open=false;
        window.confidence=0.45;
        window.precision=Precision::estimated;
        window.evidence="branch mechanism active phase";
        return window;
    }
    if(windup>1e-9) {
        window.phase=AttackPhase::windup;
        window.time_to_attack=windup;
        window.attack_imminent=windup<=0.35;
        window.opening_seconds=windup;
        window.window_open=window.damageable&&windup>=config_.window_min_output_gap;
        window.confidence=0.55;
        window.precision=Precision::estimated;
        window.evidence="branch mechanism windup counter; timing is simulated";
        return window;
    }
    if(cooldown>1e-9) {
        window.phase=AttackPhase::recovery;
        window.time_to_attack=cooldown;
        window.recovery_remaining=cooldown;
        window.opening_seconds=cooldown;
        window.window_open=window.damageable;
        window.confidence=0.65;
        window.precision=Precision::estimated;
        window.evidence="branch mechanism cooldown counter; timing is simulated";
        return window;
    }
    window.phase=window.damageable?AttackPhase::idle:AttackPhase::unknown;
    window.confidence=0.20;
    window.precision=Precision::unknown;
    window.window_open=false;
    window.evidence="branch has no verified attack timing; no output window claimed";
    return window;
}
std::vector<AttackWindowAssessment> AttackWindowDetector::detect_all(
    const SimWorld& world) const {
    std::vector<AttackWindowAssessment> out;
    for(const auto& enemy:world.enemies) {
        if(enemy.dead||enemy.hp<=0)continue;
        out.push_back(detect(enemy,uint32_t(std::max(0,world.frame))));
    }
    return out;
}

PredictiveAimSolution PredictiveAimer::solve(const WorldStateSnapshot& root,
                                             uint32_t target) const {
    for(const auto& enemy:root.enemies) {
        if(enemy.entity.address!=target)continue;
        if(!enemy.entity.alive())return {};
        const EnemyProjection projection=project_snapshot(enemy,root.player.body.pos,
            config_.aim_horizon,config_.aim_max_target_speed);
        return solve_projection(target,std::max(2.0,enemy.entity.radius),
            enemy.entity.damageable_enemy(),projection,root.player.body.pos,
            root.player.body.vel,root.player.tear_speed,root.player.tear_range,
            root.room.grid,config_);
    }
    return {};
}
PredictiveAimSolution PredictiveAimer::solve(const SimWorld& world,uint32_t target) const {
    const SimEnemy* enemy=find_sim_enemy(world,target);
    if(!enemy)return {};
    const EnemyProjection projection=project_sim(*enemy,world.player.pos,config_.aim_horizon,
        config_.aim_max_target_speed);
    return solve_projection(target,std::max(2.0,enemy->radius),
        !enemy->invulnerable,projection,world.player.pos,world.player.vel,
        world.player.tear_speed,world.player.tear_range,world.room.grid,config_);
}
PredictiveAimSolution PredictiveAimer::evaluate(const WorldStateSnapshot& root,
                                                uint32_t target,Fire fire) const {
    for(const auto& enemy:root.enemies) {
        if(enemy.entity.address!=target)continue;
        if(!enemy.entity.alive())return {};
        const EnemyProjection projection=project_snapshot(enemy,root.player.body.pos,
            config_.aim_horizon,config_.aim_max_target_speed);
        return solve_projection(target,std::max(2.0,enemy.entity.radius),
            enemy.entity.damageable_enemy(),projection,root.player.body.pos,
            root.player.body.vel,root.player.tear_speed,root.player.tear_range,
            root.room.grid,config_,fire);
    }
    return {};
}
PredictiveAimSolution PredictiveAimer::evaluate(const SimWorld& world,uint32_t target,
                                                Fire fire) const {
    const SimEnemy* enemy=find_sim_enemy(world,target);
    if(!enemy)return {};
    const EnemyProjection projection=project_sim(*enemy,world.player.pos,config_.aim_horizon,
        config_.aim_max_target_speed);
    return solve_projection(target,std::max(2.0,enemy->radius),
        !enemy->invulnerable,projection,world.player.pos,world.player.vel,
        world.player.tear_speed,world.player.tear_range,world.room.grid,config_,fire);
}
PredictiveAimSolution PredictiveAimer::check(const SimWorld& world,uint32_t target,
                                             Fire fire) const {
    const SimEnemy* enemy=find_sim_enemy(world,target);
    if(!enemy) {
        PredictiveAimSolution empty;
        empty.target_id=target;
        empty.fire=fire;
        return empty;
    }
    return check(world,*enemy,fire);
}
PredictiveAimSolution PredictiveAimer::check(const SimWorld& world,
                                             const SimEnemy& enemy,Fire fire) const {
    PredictiveAimSolution solution;
    solution.target_id=enemy.id;
    solution.fire=fire;
    if(fire==Fire::none)return solution;
    solution.target_damageable=!enemy.invulnerable;
    const Vec target_velocity=clamp_speed(enemy.vel,config_.aim_max_target_speed);
    solution.target_velocity=target_velocity;
    solution.target_position=enemy.pos;
    const double tear_speed=world.player.tear_speed;
    const double tear_range=world.player.tear_range;
    solution.tear_speed=tear_speed;
    solution.inheritance=config_.tear_inheritance;
    if(tear_speed<=1||tear_range<=1)return solution;
    const Vec aim_direction=gamebot::direction(fire);
    const Vec spawn=world.player.pos+aim_direction*config_.tear_spawn_offset;
    const Vec tear_velocity=native_tear_velocity(fire,tear_speed,
        world.player.vel,config_.tear_inheritance);
    if(tear_velocity.norm()<=1.0)return solution;
    const Vec relative=enemy.pos-spawn;
    const Vec relative_velocity=target_velocity-tear_velocity;
    const double speed2=relative_velocity.dot(relative_velocity);
    const double max_time=std::min(config_.aim_horizon,
        tear_range/tear_velocity.norm());
    const double time=speed2>1e-9?
        std::clamp(-relative.dot(relative_velocity)/speed2,0.0,max_time):0.0;
    const Vec future=enemy.pos+target_velocity*time;
    const Vec tear=spawn+tear_velocity*time;
    solution.valid=true;
    solution.spawn_position=spawn;
    solution.projectile_velocity=tear_velocity;
    solution.target_future_position=future;
    solution.aim_point=future;
    solution.intercept_time=time;
    solution.miss_distance=distance(tear,future);
    solution.line_clear=!world.room.grid.valid||
        world.room.grid.shot_clear(spawn,tear);
    const double hit_radius=std::max(2.0,enemy.radius)+
        std::max(2.0,config_.tear_radius);
    solution.hit_radius=hit_radius;
    const bool hit=solution.miss_distance<=hit_radius;
    solution.predicted_hit=hit&&(!config_.aim_require_line_clear||solution.line_clear);
    solution.estimated_travel_frames=solution.predicted_hit?
        int(std::lround(time*60.0)):-1;
    solution.confidence=solution.predicted_hit?
        (solution.line_clear?0.85:0.55):0.0;
    solution.evidence="branch linear intercept";
    return solution;
}

std::vector<TargetAssessment> TargetSelector::rank(const WorldStateSnapshot& root,
    const std::vector<ThreatAssessment>& threats,
    const std::vector<AttackWindowAssessment>& windows,
    const std::vector<PredictiveAimSolution>& aims) const {
    std::vector<TargetAssessment> out;
    auto window_for=[&](uint32_t id)->const AttackWindowAssessment* {
        for(const auto& window:windows)if(window.enemy_id==id)return &window;
        return nullptr;
    };
    auto aim_for=[&](uint32_t id)->const PredictiveAimSolution* {
        for(const auto& aim:aims)if(aim.target_id==id)return &aim;
        return nullptr;
    };
    auto threat_for=[&](uint32_t id)->const ThreatAssessment* {
        for(const auto& threat:threats)if(threat.id==id)return &threat;
        return nullptr;
    };
    const double rate=root.player.fire_delay>0?60.0/root.player.fire_delay:6.0;
    double threat_total=0;
    for(const auto& threat:threats)
        if(threat.damageable)threat_total+=std::max(0.0,threat.score);
    threat_total=std::max(1e-9,threat_total);
    for(const auto& threat:threats) {
        if(!threat.damageable)continue;
        const AttackWindowAssessment* window=window_for(threat.id);
        const PredictiveAimSolution* aim=aim_for(threat.id);
        TargetAssessment item;
        item.id=threat.id;
        item.threat=clamp01(threat.score);
        item.damageable=true;
        item.attack_imminent=threat.attack_imminent;
        const double hit=aim&&aim->predicted_hit?clamp01(aim->confidence):0.0;
        item.hit_opportunity=hit;
        item.attack_opportunity=hit;
        item.predicted_hit=aim&&aim->predicted_hit;
        if(aim)item.fire=aim->fire;
        const double dps=std::max(0.1,config_.tear_damage*rate*std::max(0.15,hit));
        item.kill_time=threat.hp>0?threat.hp/dps:0.0;
        item.time_to_kill=item.kill_time;
        item.expected_damage=config_.tear_damage*rate*std::max(0.15,hit);
        item.kill_probability=threat.hp>0?
            clamp01(item.expected_damage*config_.kill_probability_horizon/threat.hp):1.0;
        item.window_open=window&&window->window_open;
        item.window_gain=window&&window->window_open?clamp01(window->confidence):0.0;
        item.attack_cost=clamp01(threat.distance/
            std::max(1.0,root.player.tear_range));
        item.hp_fraction=threat.max_hp>1e-9?clamp01(threat.hp/threat.max_hp):1.0;
        item.threat_reduction=clamp01(threat.score/threat_total);
        item.exposure_cost=exposure_cost(threat.time_to_attack,threat.attack_imminent,
            threat.expected_damage,double(root.player.health),threat.distance,
            threat.attack_range,config_.exposure_window_horizon);
        item.positioning_cost=positioning_cost(threat.distance,root.player.tear_range,
            threat.movement_restriction,aim?aim->line_clear:true);
        item.position_gain=clamp01(1.0-item.positioning_cost);
        double kill_impact=clamp01(threat.score);
        int children=0;
        for(const auto& other:root.enemies) {
            if(!other.entity.enemy()||other.entity.friendly||!other.entity.alive())continue;
            if(other.entity.spawner==threat.id||other.entity.parent==threat.id) {
                ++children;
                if(const ThreatAssessment* child=threat_for(other.entity.address))
                    kill_impact+=0.12*clamp01(child->score);
            }
        }
        if(threat.boss)kill_impact+=0.12;
        if(children>0)kill_impact+=std::min(0.2,0.05*children);
        item.kill_impact=clamp01(kill_impact);
        item.kill_gain=clamp01(item.threat_reduction+0.25*item.kill_impact);
        const double urgency=threat.attack_imminent?0.12:
            (threat.time_to_attack>=0&&threat.time_to_attack<=0.35?0.08:0.0);
        item.score=clamp01(
            config_.target_threat_weight*item.threat+
            config_.target_kill_weight/(1.0+std::max(0.0,item.kill_time))+
            config_.target_hit_weight*hit+
            config_.target_window_weight*item.window_gain+
            config_.target_kill_impact_weight*item.kill_impact+
            config_.target_threat_reduction_weight*item.threat_reduction+
            config_.target_expected_damage_weight*clamp01(
                item.expected_damage/std::max(1.0,threat.hp))+
            config_.target_kill_probability_weight*item.kill_probability+
            config_.target_time_to_kill_weight*clamp01(
                1.0/(1.0+std::max(0.0,item.time_to_kill)))+
            config_.target_attack_opportunity_weight*item.attack_opportunity+
            config_.target_kill_gain_weight*item.kill_gain-
            config_.target_cost_weight*item.attack_cost-
            config_.target_exposure_weight*item.exposure_cost-
            config_.target_positioning_weight*item.positioning_cost+
            urgency);
        item.reason="threat="+std::to_string(item.threat)+
            " hit="+std::to_string(hit)+
            " window="+std::to_string(item.window_gain)+
            " kill_time="+std::to_string(item.kill_time)+
            " kill_prob="+std::to_string(item.kill_probability)+
            " exposure="+std::to_string(item.exposure_cost)+
            " position="+std::to_string(item.positioning_cost)+
            " urgency="+std::to_string(urgency);
        out.push_back(std::move(item));
    }
    std::stable_sort(out.begin(),out.end(),[](const TargetAssessment& a,const TargetAssessment& b){
        if(std::abs(a.score-b.score)>1e-9)return a.score>b.score;
        return a.kill_time<b.kill_time;
    });
    return out;
}
std::vector<TargetAssessment> TargetSelector::rank(const SimWorld& world,
    const std::vector<ThreatAssessment>& threats,
    const std::vector<AttackWindowAssessment>& windows,uint32_t sticky) const {
    std::vector<TargetAssessment> out;
    auto window_for=[&](uint32_t id)->const AttackWindowAssessment* {
        for(const auto& window:windows)if(window.enemy_id==id)return &window;
        return nullptr;
    };
    auto threat_for=[&](uint32_t id)->const ThreatAssessment* {
        for(const auto& threat:threats)if(threat.id==id)return &threat;
        return nullptr;
    };
    PredictiveAimer aimer(config_);
    const double rate=world.player.fire_delay>0?60.0/world.player.fire_delay:6.0;
    double threat_total=0;
    for(const auto& threat:threats)
        if(threat.damageable)threat_total+=std::max(0.0,threat.score);
    threat_total=std::max(1e-9,threat_total);
    int considered=0;
    auto append=[&](const ThreatAssessment& threat) {
        const SimEnemy* enemy=find_sim_enemy(world,threat.id);
        if(!enemy)return;
        const AttackWindowAssessment* window=window_for(threat.id);
        TargetAssessment item;
        item.id=threat.id;
        item.threat=clamp01(threat.score);
        item.damageable=true;
        item.attack_imminent=threat.attack_imminent;
        // O(1) branch intercept for the four cardinal firing channels. The
        // root still uses the full native-motion solve.
        PredictiveAimSolution best_aim;
        for(int raw=1;raw<5;++raw) {
            const PredictiveAimSolution aim=aimer.check(world,*enemy,
                static_cast<Fire>(raw));
            if(!aim.valid)continue;
            const bool better=!best_aim.valid||
                (aim.predicted_hit&&!best_aim.predicted_hit)||
                (aim.predicted_hit==best_aim.predicted_hit&&
                 aim.miss_distance<best_aim.miss_distance-1e-9);
            if(better)best_aim=aim;
        }
        const double hit=best_aim.predicted_hit?clamp01(best_aim.confidence):0.0;
        item.hit_opportunity=hit;
        item.attack_opportunity=hit;
        item.predicted_hit=best_aim.predicted_hit;
        item.fire=best_aim.fire;
        const double dps=std::max(0.1,config_.tear_damage*rate*std::max(0.15,hit));
        item.kill_time=threat.hp>0?threat.hp/dps:0.0;
        item.time_to_kill=item.kill_time;
        item.expected_damage=config_.tear_damage*rate*std::max(0.15,hit);
        item.kill_probability=threat.hp>0?
            clamp01(item.expected_damage*config_.kill_probability_horizon/threat.hp):1.0;
        item.window_open=window&&window->window_open;
        item.window_gain=window&&window->window_open?clamp01(window->confidence):0.0;
        item.attack_cost=clamp01(threat.distance/
            std::max(1.0,world.player.tear_range));
        item.hp_fraction=threat.max_hp>1e-9?clamp01(threat.hp/threat.max_hp):1.0;
        item.threat_reduction=clamp01(threat.score/threat_total);
        item.exposure_cost=exposure_cost(threat.time_to_attack,threat.attack_imminent,
            threat.expected_damage,double(world.player.health),threat.distance,
            threat.attack_range,config_.exposure_window_horizon);
        item.positioning_cost=positioning_cost(threat.distance,world.player.tear_range,
            threat.movement_restriction,best_aim.line_clear);
        item.position_gain=clamp01(1.0-item.positioning_cost);
        double kill_impact=clamp01(threat.score);
        int children=0;
        for(const auto& other:world.enemies) {
            if(other.dead||other.hp<=0)continue;
            if(other.native.spawner==threat.id||other.native.parent==threat.id) {
                ++children;
                if(const ThreatAssessment* child=threat_for(other.id))
                    kill_impact+=0.12*clamp01(child->score);
            }
        }
        if(threat.boss)kill_impact+=0.12;
        if(children>0)kill_impact+=std::min(0.2,0.05*children);
        if(enemy->death_blast)kill_impact-=0.15;
        item.kill_impact=clamp01(kill_impact);
        item.kill_gain=clamp01(item.threat_reduction+0.25*item.kill_impact);
        const double urgency=threat.attack_imminent?0.12:
            (threat.time_to_attack>=0&&threat.time_to_attack<=0.35?0.08:0.0);
        item.score=clamp01(
            config_.target_threat_weight*item.threat+
            config_.target_kill_weight/(1.0+std::max(0.0,item.kill_time))+
            config_.target_hit_weight*hit+
            config_.target_window_weight*item.window_gain+
            config_.target_kill_impact_weight*item.kill_impact+
            config_.target_threat_reduction_weight*item.threat_reduction+
            config_.target_expected_damage_weight*clamp01(
                item.expected_damage/std::max(1.0,threat.hp))+
            config_.target_kill_probability_weight*item.kill_probability+
            config_.target_time_to_kill_weight*clamp01(
                1.0/(1.0+std::max(0.0,item.time_to_kill)))+
            config_.target_attack_opportunity_weight*item.attack_opportunity+
            config_.target_kill_gain_weight*item.kill_gain-
            config_.target_cost_weight*item.attack_cost-
            config_.target_exposure_weight*item.exposure_cost-
            config_.target_positioning_weight*item.positioning_cost+
            (threat.id==sticky?config_.branch_sticky_bonus:0.0)+
            urgency);
        item.reason="branch threat="+std::to_string(item.threat)+
            " hit="+std::to_string(hit)+
            " kill_prob="+std::to_string(item.kill_probability)+
            " exposure="+std::to_string(item.exposure_cost)+
            " position="+std::to_string(item.positioning_cost)+
            (threat.id==sticky?" sticky":"");
        out.push_back(std::move(item));
    };
    // Rank the normal candidates first; the sticky target is always included,
    // even when it falls outside the bounded aiming set.
    for(const auto& threat:threats) {
        if(!threat.damageable)continue;
        if(considered>=std::max(1,config_.branch_target_limit)&&
           threat.id!=sticky)continue;
        append(threat);
        ++considered;
    }
    if(sticky!=0) {
        bool present=false;
        for(const auto& item:out)if(item.id==sticky)present=true;
        if(!present)
            if(const ThreatAssessment* threat=threat_for(sticky))
                if(threat->damageable)append(*threat);
    }
    std::stable_sort(out.begin(),out.end(),[](const TargetAssessment& a,const TargetAssessment& b){
        if(std::abs(a.score-b.score)>1e-9)return a.score>b.score;
        return a.kill_time<b.kill_time;
    });
    return out;
}
uint32_t TargetSelector::select_branch(std::vector<TargetAssessment>& ranked,
                                       uint32_t sticky) const {
    for(auto& item:ranked)item.selected=false;
    if(ranked.empty())return 0;
    const TargetAssessment* best=&ranked.front();
    const TargetAssessment* current=nullptr;
    for(const auto& item:ranked)
        if(item.id==sticky&&item.damageable) {current=&item;break;}
    uint32_t chosen=best->id;
    if(current&&current->id!=0) {
        const bool overwhelming=best->score>current->score+config_.target_switch_margin&&
            best->score>=current->score*1.6;
        if(!best->attack_imminent&&
           (best->score<=current->score+config_.branch_switch_margin||!overwhelming))
            chosen=current->id;
    }
    for(auto& item:ranked)
        if(item.id==chosen)item.selected=true;
    return chosen;
}
uint32_t TargetSelector::select(const WorldStateSnapshot& root,
                                std::vector<TargetAssessment>& ranked) {
    for(auto& item:ranked)item.selected=false;
    if(ranked.empty()) {
        target_=0;
        return 0;
    }
    const TargetAssessment& best=ranked.front();
    uint32_t chosen=best.id;
    const TargetAssessment* current=nullptr;
    for(const auto& item:ranked)
        if(item.id==target_&&item.damageable) {current=&item;break;}
    if(current&&target_!=0) {
        const int hold=selected_clock_!=0&&root.frame.clock>=selected_clock_?
            int(root.frame.clock-selected_clock_):0;
        const bool overwhelming=best.score>current->score+config_.target_switch_margin&&
            best.score>=current->score*1.6;
        if(!best.attack_imminent&&
           (best.score<=current->score+config_.target_switch_margin||
            (hold<config_.target_min_hold_frames&&!overwhelming)))
            chosen=current->id;
    }
    if(chosen!=target_) {
        if(target_!=0)++switches_;
        target_=chosen;
        selected_clock_=root.frame.clock;
        selected_score_=best.score;
    }else {
        selected_score_=current?current->score:best.score;
    }
    for(auto& item:ranked)
        if(item.id==target_)item.selected=true;
    return target_;
}
void TargetSelector::reset() {
    target_=0;
    selected_clock_=0;
    selected_score_=0;
    switches_=0;
}

CombatObjective CombatObjectiveManager::evaluate(const WorldStateSnapshot& root,
    const CombatContext& context,const CombatProgressState& progress) const {
    CombatObjective objective;
    objective.primary_threat=context.primary_threat;
    objective.target=context.target;
    objective.survival_priority=1.0;
    objective.unknown_risk=context.unknown_enemies>0;
    objective.threat_count=context.considered;
    objective.damageable_count=context.damageable_enemies;
    const TargetAssessment* target=context.target_assessment(context.target);
    objective.target_available=target&&target->damageable&&
        target->score>=config_.engage_threshold;
    if(target) {
        const double rate=root.player.fire_delay>0?60.0/root.player.fire_delay:6.0;
        objective.expected_dps=config_.tear_damage*rate*
            std::max(0.15,target->hit_opportunity)*
            (target->window_open?1.0:0.6);
        objective.expected_threat_reduction=target->threat*
            std::max(0.15,target->hit_opportunity)*
            (target->window_open?1.0:0.6);
        objective.output_priority=clamp01(target->hit_opportunity*
            (target->window_open?1.0:0.55));
        objective.expected_kill_gain=clamp01(target->kill_gain*
            target->kill_probability);
        objective.target_position_gain=target->position_gain;
        objective.exposure_cost=target->exposure_cost;
        objective.positioning_cost=target->positioning_cost;
        objective.kill_probability=target->kill_probability;
        objective.time_to_kill=target->time_to_kill;
        objective.attack_opportunity=target->attack_opportunity;
        objective.threat_reduction=target->threat_reduction;
    }
    const bool urgent=!context.threats.empty()&&
        (context.threats.front().attack_imminent||
         (context.threats.front().time_to_attack>=0&&
          context.threats.front().time_to_attack<=0.35));
    objective.disengage=root.player.health<=1||
        context.movement_restriction>=config_.disengage_threshold||
        (urgent&&!objective.target_available);
    objective.switch_target=context.switched;
    const bool stalled=progress.valid&&progress.stalled;
    objective.anti_stalemate=stalled;
    objective.progress_kind=progress.valid?combat_progress_kind_name(progress.kind):"unknown";
    objective.target_invalid=progress.valid&&progress.target_invalid;
    objective.target_unreachable=progress.valid&&progress.target_unreachable;
    objective.attack_reachability=context.target_line_clear?
        clamp01(1.0-context.target_distance/std::max(1.0,context.tear_range*1.1)):
        0.10;
    if(stalled&&(progress.target_invalid||progress.target_invulnerable)) {
        // No usable target. Do not keep pretending there is an output window;
        // reposition and let TargetSelector replace the target if allowed.
        objective.target_available=false;
        objective.need_reposition=true;
    }else if(stalled&&progress.target_unreachable) {
        // The target exists but the current geometry cannot hit it. Move to a
        // safe firing position instead of raising the attack weight globally.
        objective.need_reposition=true;
    }else if(stalled&&objective.target_available) {
        objective.output_priority=clamp01(objective.output_priority+0.15);
    }
    if(!context.valid)objective.tactical_mode=TacticalMode::balanced;
    else if(objective.disengage)objective.tactical_mode=TacticalMode::disengage;
    else if(objective.need_reposition)objective.tactical_mode=TacticalMode::reposition;
    else if(!objective.target_available)objective.tactical_mode=TacticalMode::reposition;
    else if(target&&target->hp_fraction<=config_.focus_fire_hp_fraction)
        objective.tactical_mode=TacticalMode::focus_fire;
    else objective.tactical_mode=TacticalMode::engage;
    objective.reason=objective.disengage?"survival-first: disengage from output":
        objective.need_reposition?"anti-stalemate: find a safe firing position":
        objective.target_available?"output window on selected threat":
        "no verified output window";
    return objective;
}
CombatObjective CombatObjectiveManager::evaluate(const SimWorld& world,
    const BranchCombatContext& branch,const SafetyMetrics& safety,
    const CombatProgressState& progress) const {
    CombatObjective objective;
    objective.branch_specific=true;
    objective.primary_threat=branch.primary_threat;
    objective.target=branch.target;
    objective.survival_priority=1.0;
    objective.threat_count=branch.enemy_count;
    objective.damageable_count=branch.damageable_enemies;
    objective.target_available=branch.target_available;
    const TargetAssessment* target=branch.target_assessment(branch.target);
    if(target) {
        const double rate=world.player.fire_delay>0?60.0/world.player.fire_delay:6.0;
        objective.expected_dps=config_.tear_damage*rate*
            std::max(0.15,target->attack_opportunity)*
            (target->window_open?1.0:0.6);
        objective.expected_threat_reduction=target->threat*
            std::max(0.15,target->attack_opportunity)*
            (target->window_open?1.0:0.6);
        objective.output_priority=clamp01(target->attack_opportunity*
            (target->window_open?1.0:0.55));
        objective.expected_kill_gain=clamp01(target->kill_gain*
            target->kill_probability);
        objective.target_position_gain=target->position_gain;
        objective.exposure_cost=target->exposure_cost;
        objective.positioning_cost=target->positioning_cost;
        objective.kill_probability=target->kill_probability;
        objective.time_to_kill=target->time_to_kill;
        objective.attack_opportunity=target->attack_opportunity;
        objective.threat_reduction=target->threat_reduction;
    }
    const bool no_exit=safety.evaluated&&
        (safety.in_danger||safety.escape_directions==0);
    objective.disengage=world.player.health<=1||
        (safety.evaluated&&(safety.in_danger||safety.escape_directions==0))||
        (branch.primary_threat!=0&&branch.threats.size()>0&&
         branch.threats.front().attack_imminent&&!branch.target_available);
    objective.switch_target=branch.switched;
    const bool stalled=progress.valid&&progress.stalled;
    objective.anti_stalemate=stalled;
    objective.progress_kind=progress.valid?combat_progress_kind_name(progress.kind):"unknown";
    objective.target_unreachable=stalled&&branch.need_reposition;
    objective.attack_reachability=branch.attack_reachability;
    objective.need_reposition=stalled&&(branch.need_reposition||!branch.target_available);
    if(stalled&&branch.target_available&&!branch.need_reposition)
        objective.output_priority=clamp01(objective.output_priority+0.10);
    if(!branch.valid)objective.tactical_mode=TacticalMode::balanced;
    else if(no_exit)objective.tactical_mode=TacticalMode::escape;
    else if(objective.disengage)objective.tactical_mode=TacticalMode::disengage;
    else if(objective.need_reposition||!branch.target_available)
        objective.tactical_mode=TacticalMode::reposition;
    else if((target&&target->hp_fraction<=config_.focus_fire_hp_fraction)||
            branch.mode==TacticalMode::focus_fire)
        objective.tactical_mode=TacticalMode::focus_fire;
    else objective.tactical_mode=TacticalMode::engage;
    objective.reason=objective.disengage?"branch survival-first: disengage from output":
        objective.need_reposition?"branch anti-stalemate: reposition for output":
        objective.target_available?"branch output window on selected threat":
        "branch has no verified output window";
    return objective;
}

CombatIntelligence::CombatIntelligence(CombatConfig config)
    :config_(config),threats_(config),windows_(config),aimer_(config),
     selector_(config),objectives_(config) {}
void CombatIntelligence::set_config(CombatConfig config) {
    config_=config;
    threats_=ThreatPrioritizer(config);
    windows_=AttackWindowDetector(config);
    aimer_=PredictiveAimer(config);
    selector_=TargetSelector(config);
    objectives_=CombatObjectiveManager(config);
}
void CombatIntelligence::update_config(CombatConfig config) {
    config_=config;
    threats_=ThreatPrioritizer(config);
    windows_=AttackWindowDetector(config);
    aimer_=PredictiveAimer(config);
    selector_.set_config(config);
    objectives_=CombatObjectiveManager(config);
}
void CombatIntelligence::reset() {
    selector_.reset();
}
CombatContext CombatIntelligence::evaluate(const WorldStateSnapshot& root,
                                           bool attack_enabled,
                                           const SimWorld* aim_world) {
    CombatContext context;
    context.attack_enabled=attack_enabled;
    context.valid=config_.enabled&&root.frame.valid&&!root.player.dead;
    if(!context.valid) {
        context.reason="combat intelligence disabled or root unavailable";
        return context;
    }
    context.windows=windows_.detect_all(root);
    context.movement_restriction=threats_.movement_restriction(root);
    context.threats=threats_.assess(root,context.windows,context.movement_restriction);
    context.considered=int(context.threats.size());
    context.primary_threat=context.threats.empty()?0:context.threats.front().id;
    std::vector<PredictiveAimSolution> aims;
    int unknown=0,damageable=0;
    for(const auto& threat:context.threats) {
        if(threat.unknown_risk>0.0)++unknown;
        if(!threat.damageable)continue;
        ++damageable;
        aims.push_back(aim_world?aimer_.solve(*aim_world,threat.id):
            aimer_.solve(root,threat.id));
    }
    context.unknown_enemies=unknown;
    context.damageable_enemies=damageable;
    context.player_position=root.player.body.pos;
    context.tear_range=root.player.tear_range>1.0?root.player.tear_range:260.0;
    context.targets=selector_.rank(root,context.threats,context.windows,aims);
    const uint32_t before=selector_.previous_target();
    if(progress_.valid&&progress_.need_target_switch)selector_.release_hold();
    context.target=selector_.select(root,context.targets);
    context.switched=context.target!=0&&context.target!=before;
    const PredictiveAimSolution* selected=nullptr;
    for(const auto& aim:aims)
        if(aim.target_id==context.target) {selected=&aim;break;}
    if(selected)context.aim=*selected;
    else if(!aims.empty())context.aim=aims.front();
    if(context.target) {
        for(const auto& enemy:root.enemies) {
            if(enemy.entity.address!=context.target)continue;
            context.target_distance=distance(root.player.body.pos,enemy.entity.pos);
            context.target_line_clear=!root.room.grid.valid||
                root.room.grid.shot_clear(root.player.body.pos,enemy.entity.pos);
            const Vec delta=enemy.entity.pos-root.player.body.pos;
            // Keep the fallback signal for anti-stalemate repositioning even
            // when the current position is out of range. The MPC root action
            // list separately gates it with `target_in_range`, so the bot does
            // not spend shots on a target it cannot reach from here.
            context.fallback_fire_valid=true;
            context.fallback_fire=std::abs(delta.x)>=std::abs(delta.y)?
                (delta.x>=0?Fire::right:Fire::left):
                (delta.y>=0?Fire::down:Fire::up);
            break;
        }
    }
    context.target_in_range=context.target_distance<=context.tear_range*1.05;
    context.objective=objectives_.evaluate(root,context,progress_);
    if(context.target==0)
        context.reason="no damageable target; threat avoidance only";
    else
        context.reason="target "+std::to_string(context.target)+
            (context.aim.predicted_hit?" with predicted intercept":" without verified intercept");
    return context;
}
PredictiveAimSolution CombatIntelligence::aim(const CombatContext& context,
    const SimWorld& world,uint32_t preferred) const {
    uint32_t target=preferred;
    if(!target)target=context.target;
    const SimEnemy* found=target?find_sim_enemy(world,target):nullptr;
    if(!found||found->invulnerable) {
        found=nullptr;
        for(const auto& threat:context.threats) {
            const SimEnemy* candidate=find_sim_enemy(world,threat.id);
            if(candidate&&!candidate->invulnerable) {found=candidate;break;}
        }
    }
    if(!found)return {};
    return aimer_.solve(world,found->id);
}
PredictiveAimSolution CombatIntelligence::aim(const WorldStateSnapshot& root,
                                               uint32_t target) const {
    return aimer_.solve(root,target);
}
PredictiveAimSolution CombatIntelligence::shot(const SimWorld& world,uint32_t target,
                                               Fire fire) const {
    if(fire==Fire::none||target==0)return {};
    const SimEnemy* enemy=find_sim_enemy(world,target);
    if(!enemy||enemy->invulnerable)return {};
    return aimer_.evaluate(world,target,fire);
}
CombatEnemyHp combat_enemy_hp(const SimWorld& world) {
    CombatEnemyHp hp;
    hp.reserve(world.enemies.size());
    for(const auto& enemy:world.enemies)
        if(live(enemy))hp.emplace_back(enemy.id,enemy.hp);
    return hp;
}
BranchCombatContext CombatIntelligence::evaluate_branch(const CombatContext& root,
    const SimWorld& world,const SafetyMetrics& safety,uint32_t preferred_target) const {
    BranchCombatContext branch;
    branch.valid=config_.enabled&&!world.player_dead;
    if(!branch.valid)return branch;
    branch.windows=windows_.detect_all(world);
    // The safety gate already measured the branch's local free area. Reuse it
    // instead of running the eight-direction movement probe on every node.
    const double restriction=safety.evaluated?
        clamp01(1.0-safety.available_area):-1.0;
    branch.threats=threats_.assess(world,branch.windows,restriction);
    branch.enemy_count=int(branch.threats.size());
    double remaining=0;
    int damageable=0;
    for(const auto& threat:branch.threats) {
        remaining+=std::max(0.0,threat.score);
        if(threat.damageable)++damageable;
    }
    branch.threat_remaining=remaining;
    branch.threat_total=std::max(remaining,root.valid?threat_total(root):0.0);
    branch.damageable_enemies=damageable;
    branch.primary_threat=branch.threats.empty()?0:branch.threats.front().id;
    const uint32_t sticky=preferred_target!=0?preferred_target:root.target;
    branch.targets=selector_.rank(world,branch.threats,branch.windows,sticky);
    branch.target=selector_.select_branch(branch.targets,sticky);
    branch.switched=branch.target!=0&&sticky!=0&&branch.target!=sticky;
    branch.escape_space=safety.evaluated?clamp01(safety.available_area):1.0;
    branch.maneuverability=safety.maneuverability;
    const TargetAssessment* target=branch.target_assessment(branch.target);
    branch.target_available=target&&target->damageable&&
        target->score>=config_.engage_threshold;
    if(target) {
        const SimEnemy* sim=find_sim_enemy(world,target->id);
        if(sim) {
            branch.target_hp=sim->hp;
            branch.target_distance=distance(world.player.pos,sim->pos);
            branch.target_line_clear=!world.room.grid.valid||
                world.room.grid.shot_clear(world.player.pos,sim->pos);
        }
        branch.target_hp_fraction=target->hp_fraction;
        branch.target_ttk=target->time_to_kill;
        branch.target_kill_probability=target->kill_probability;
        branch.target_attack_opportunity=target->attack_opportunity;
        branch.target_expected_damage=target->expected_damage;
        branch.target_exposure=target->exposure_cost;
        branch.target_positioning=target->positioning_cost;
        branch.output_priority=target->attack_opportunity*
            (target->window_open?1.0:0.55);
    }
    const double reachable_range=world.player.tear_range>1.0?
        world.player.tear_range:260.0;
    if(branch.target_available) {
        const double range_ratio=branch.target_distance/
            std::max(1.0,reachable_range);
        branch.attack_reachability=branch.target_line_clear?
            clamp01(1.0-0.60*range_ratio):0.10;
    }
    branch.anti_stalemate=progress_.valid&&progress_.stalled;
    branch.need_reposition=branch.anti_stalemate&&
        (!branch.target_available||!branch.target_line_clear||
         branch.target_distance>reachable_range*1.05);
    branch.objective=objectives_.evaluate(world,branch,safety,progress_);
    branch.mode=branch.objective.tactical_mode;
    branch.disengage=branch.objective.disengage;
    branch.survival_priority=branch.objective.survival_priority;
    branch.output_priority=branch.objective.output_priority;
    return branch;
}
CombatCandidateTerms CombatIntelligence::score_branch(const CombatContext& context,
    const BranchCombatContext& branch,const CombatEnemyHp& before,
    const SimWorld& after,const SimAction& action,
    const SimulationScore& after_score,const SafetyMetrics& safety) const {
    CombatCandidateTerms terms;
    if(!config_.enabled||!context.valid||!branch.valid)return terms;
    // A dead branch gets no offensive credit. Survival remains the first term
    // in the MPC composite and cannot be outbid by posthumous damage.
    if(after_score.player_dead||after.player_dead)return terms;
    terms.branch_target=branch.target;
    terms.branch_disengage=branch.disengage;
    terms.branch_mode=branch.mode;
    const double denominator=std::max(1e-9,branch.threat_total);
    double removed=0,killed=0;
    for(const auto& threat:branch.threats) {
        const double before_hp=hp_of(before,threat.id);
        if(before_hp<=0)continue;
        const SimEnemy* now=find_sim_enemy(after,threat.id);
        const double after_hp=now?now->hp:0.0;
        const double applied=std::max(0.0,before_hp-after_hp);
        removed+=threat.score*clamp01(applied/std::max(1.0,before_hp));
        if(after_hp<=0)killed+=threat.score;
    }
    terms.threat_removal=clamp01(removed/denominator);
    terms.kill_priority=clamp01(killed/denominator);
    const double branch_before_hp=hp_of(before,branch.target);
    const SimEnemy* branch_now=branch.target?find_sim_enemy(after,branch.target):nullptr;
    terms.branch_target_killed=branch.target!=0&&branch_before_hp>0&&
        (!branch_now||branch_now->hp<=0);
    terms.target_killed=terms.branch_target_killed;
    uint32_t target_id=branch.target;
    const SimEnemy* target=target_id?find_sim_enemy(after,target_id):nullptr;
    if(!target||target->invulnerable) {
        target=nullptr;
        for(const auto& threat:branch.threats) {
            const SimEnemy* candidate=find_sim_enemy(after,threat.id);
            if(candidate&&!candidate->invulnerable) {target=candidate;break;}
        }
    }
    double aim_hit=0;
    if(target) {
        const double before_hp=hp_of(before,target->id);
        const double applied=std::max(0.0,before_hp-target->hp);
        terms.target_damage_fraction=before_hp>0?clamp01(applied/before_hp):0;
        const bool shooting=action.fire!=Fire::none&&action.shoot;
        if(shooting) {
            const AttackWindowAssessment* window=branch.window(target->id);
            if(window&&window->window_open)
                terms.attack_window=clamp01(window->confidence);
            // The branch's own simulator state is evidence too: an enemy in a
            // windup/cooldown is not currently dealing damage. This is the
            // simulator's mechanism-derived state, not an animation guess.
            if(target->windup>0||target->cooldown>0)
                terms.attack_window=std::max(terms.attack_window,0.45);
            // A windup/charging body does not chase, so its branch future is
            // the constant-velocity case and the O(1) check is exact. Only a
            // genuinely moving target pays for the native-motion projection.
            // The old unconditional constant-velocity check disagreed with the
            // root whenever the target was chasing or the flight time exceeded
            // the old 0.85 s cap, which made the beam see "no hit" for a shot
            // the root had already accepted.
            const bool stationary=target->vel.norm()<1.0&&
                (target->windup>0||target->charging||!target->chase);
            const PredictiveAimSolution aim=stationary?
                aimer_.check(after,*target,action.fire):
                aimer_.evaluate(after,target->id,action.fire);
            if(aim.valid&&aim.predicted_hit&&aim.fire==action.fire) {
                aim_hit=clamp01(aim.confidence);
                terms.aim_hit=aim_hit;
            }
            terms.output_efficiency=clamp01(
                (target->hp<=0?1.0:terms.target_damage_fraction));
        }
    }
    // Tactical positioning. This is a preference among branches that already
    // survived the hard gate; it can never promote a branch that failed it.
    const double escape=safety.evaluated?clamp01(safety.available_area):1.0;
    const double maneuver=safety.evaluated?clamp01(safety.maneuverability):0.5;
    const double density=safety.evaluated?
        clamp01(safety.local_density/std::max(1.0,config_.position_density_reference)):0.0;
    terms.positioning=clamp01(
        config_.position_escape_weight*escape+
        config_.position_maneuver_weight*maneuver+
        config_.position_line_weight*aim_hit+
        config_.position_surround_weight*(1.0-density));
    terms.exposure=clamp01(branch.target_exposure);
    // Kill-sequence value: how much threat remains after this branch's target,
    // whether that target is already close to death, and whether the next
    // target is reachable with a good opportunity. The beam still explores the
    // ordering itself; this only scores the resulting world.
    const double residual=clamp01(branch.threat_remaining/denominator);
    const double focus=clamp01(1.0-branch.target_hp_fraction);
    double next_opportunity=0,next_ttk=1e9;
    for(const auto& candidate:branch.targets) {
        if(candidate.id==branch.target||!candidate.damageable)continue;
        next_opportunity=std::max(next_opportunity,candidate.attack_opportunity);
        if(candidate.time_to_kill>=0)next_ttk=std::min(next_ttk,candidate.time_to_kill);
    }
    const double next=next_ttk<1e8?next_opportunity/(1.0+next_ttk):0.0;
    terms.kill_sequence=branch.target_available?
        clamp01(0.45*(1.0-residual)+0.20*focus+0.20*next+0.15*escape):0.0;
    // Anti-stalemate progression is deliberately gated on real Reader-side
    // evidence. Without a stall these terms stay zero, so the normal policy is
    // not made unconditionally more aggressive.
    if(progress_.valid&&progress_.stalled) {
        const double range=context.tear_range>1.0?context.tear_range:260.0;
        const bool reachable=branch.target_available&&branch.target_line_clear&&
            branch.target_distance<=range*1.05;
        terms.progress_gain=reachable?1.0:0.0;
        terms.reachability=clamp01(branch.attack_reachability);
        if(context.target_distance<1e8&&branch.target_distance<1e8) {
            terms.approach=clamp01((context.target_distance-branch.target_distance)/
                std::max(64.0,context.target_distance));
        }
    }
    return terms;
}
CombatCandidateTerms CombatIntelligence::score_delta(const CombatContext& context,
    const CombatEnemyHp& before,const SimWorld& after,const SimAction& action,
    const SimulationScore& after_score,const SafetyMetrics& safety,
    BranchCombatContext* branch_out) const {
    if(!config_.enabled||!context.valid)return {};
    const BranchCombatContext branch=evaluate_branch(context,after,safety,context.target);
    if(branch_out)*branch_out=branch;
    return score_branch(context,branch,before,after,action,after_score,safety);
}
} // namespace gamebot
