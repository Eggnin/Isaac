#include "gamebot/mpc.hpp"
#include "gamebot/strategy.hpp"
#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdlib>
#include <fstream>
#include <limits>
#include <unordered_map>
#include <unordered_set>

namespace gamebot {
namespace {
using clock_type=std::chrono::steady_clock;
double ms_since(clock_type::time_point start) {
    return std::chrono::duration<double,std::milli>(clock_type::now()-start).count();
}
json action_json(const SimAction& action) {
    return {{"move",int(action.move)},{"fire",int(action.fire)},{"shoot",action.shoot}};
}
SimAction action_from_json(const json& value) {
    SimAction action;
    action.move=static_cast<Move>(std::clamp(value.value("move",0),0,8));
    action.fire=static_cast<Fire>(std::clamp(value.value("fire",0),0,4));
    action.shoot=value.value("shoot",action.fire!=Fire::none);
    return action;
}
json segment_json(const SimActionSegment& segment) {
    json out=action_json(segment.action);
    out["frames"]=segment.frames;
    return out;
}
SimActionSegment segment_from_json(const json& value) {
    return {action_from_json(value),std::max(1,value.value("frames",1))};
}
SimulationScore score_from_json(const json& value) {
    SimulationScore score;
    score.damage_taken=value.value("damage_taken",0.0);
    score.damage_dealt=value.value("damage_dealt",0.0);
    score.kills=value.value("kills",0.0);
    score.enemy_hp_remaining=value.value("enemy_hp_remaining",0.0);
    score.enemy_count=value.value("enemy_count",0);
    score.player_dead=value.value("player_dead",false);
    score.death_risk=value.value("death_risk",0.0);
    score.frames=value.value("frames",0);
    score.survival_time=value.value("survival_time",0.0);
    score.time_to_clear=value.value("time_to_clear",-1.0);
    score.danger_area=value.value("danger_area",0.0);
    score.escape_space=value.value("escape_space",1.0);
    score.clearance=value.value("clearance",10000.0);
    score.unknown_uncertainty=value.value("unknown_uncertainty",0.0);
    score.local_density=value.value("local_density",0.0);
    score.available_area=value.value("available_area",1.0);
    score.boundary_clearance=value.value("boundary_clearance",0.0);
    score.laser_pressure=value.value("laser_pressure",0.0);
    score.maneuverability=value.value("maneuverability",0.0);
    score.escape_directions=value.value("escape_directions",0);
    score.special_projectiles=value.value("special_projectiles",0);
    score.uncertain_maneuvers=value.value("uncertain_maneuvers",0);
    score.reachable_cells=value.value("reachable_cells",0);
    score.mobility_routes=value.value("mobility_routes",0);
    score.reachable_area=value.value("reachable_area",1.0);
    score.time_to_open=value.value("time_to_open",0.0);
    score.exit_block_risk=value.value("exit_block_risk",0.0);
    score.encirclement_risk=value.value("encirclement_risk",0.0);
    score.dead_end_risk=value.value("dead_end_risk",0.0);
    score.corner_risk=value.value("corner_risk",0.0);
    score.score=value.value("score",0.0);
    return score;
}
SafetyMetrics safety_from_json(const json& value) {
    SafetyMetrics metrics;
    metrics.evaluated=value.value("evaluated",false);
    metrics.in_danger=value.value("in_danger",false);
    metrics.safe=value.value("safe",false);
    metrics.horizon_frames=value.value("horizon_frames",0);
    metrics.first_hit_frame=value.value("first_hit_frame",-1);
    metrics.escape_directions=value.value("escape_directions",0);
    metrics.special_projectiles=value.value("special_projectiles",0);
    metrics.uncertain_maneuvers=value.value("uncertain_maneuvers",0);
    metrics.min_clearance=value.value("min_clearance",1e9);
    metrics.local_density=value.value("local_density",0.0);
    metrics.available_area=value.value("available_area",1.0);
    metrics.boundary_clearance=value.value("boundary_clearance",0.0);
    metrics.laser_pressure=value.value("laser_pressure",0.0);
    metrics.maneuverability=value.value("maneuverability",0.0);
    return metrics;
}
double composite_value(const SimulationScore& score,const MpcConfig& config,
                       double uncertainty,int horizon_frames) {
    const double clear_bonus=score.time_to_clear>=0?1.0/(1.0+score.time_to_clear):0.0;
    (void)horizon_frames;
    return -config.death_penalty*(score.player_dead?1.0:0.0)
        -config.damage_weight*score.damage_taken
        -config.death_risk_weight*score.death_risk
        -config.unknown_weight*score.unknown_uncertainty
        -config.provenance_uncertainty_weight*uncertainty
        -config.enemy_hp_weight*score.enemy_hp_remaining
        +config.damage_dealt_weight*score.damage_dealt
        +config.kill_weight*score.kills
        +config.escape_weight*score.escape_space
        +config.maneuver_weight*score.maneuverability
        -config.danger_weight*score.danger_area
        -config.corner_weight*score.corner_risk
        +config.clear_time_weight*clear_bonus
        +config.survival_time_weight*double(score.frames);
}
Fire aimed_fire(const SimWorld& world) {
    const SimEnemy* nearest=nullptr;
    double best=std::numeric_limits<double>::infinity();
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
bool same_plan(const std::vector<SimActionSegment>& a,const std::vector<SimActionSegment>& b) {
    if(a.size()!=b.size())return false;
    for(size_t i=0;i<a.size();++i)
        if(!(a[i].action==b[i].action)||a[i].frames!=b[i].frames)return false;
    return true;
}
std::string plan_key(const std::vector<SimActionSegment>& plan) {
    std::string key;
    key.reserve(plan.size()*8);
    for(const auto& segment:plan) {
        key+=char('0'+int(segment.action.move));
        key+=char('0'+int(segment.action.fire));
        key+=char('0'+(segment.action.shoot?1:0));
        key+=char('0'+std::clamp(segment.frames,0,9));
    }
    return key;
}
}

double mpc_composite_value(const SimulationScore& score,const MpcConfig& config,
                           double uncertainty,int horizon_frames) {
    return composite_value(score,config,uncertainty,horizon_frames);
}

json MpcSearchStats::to_json() const {
    return {{"depth",depth},{"nodes",nodes},{"expansions",expansions},
        {"simulations",simulations},{"beam_width",beam_width},{"peak_beam",peak_beam},
        {"pruned",pruned},{"hopeless",hopeless},
        {"transposition_hits",transposition_hits},
        {"previous_candidates",previous_candidates},{"previous_used",previous_used},
        {"state_signature",state_signature},{"timed_out",timed_out},
        {"simulation_limit",simulation_limit},
        {"reused",reused},{"fallback",fallback},{"elapsed_ms",elapsed_ms},
        {"emergency",emergency},{"tier_b_used",tier_b_used},
        {"safety_passed",safety_passed},{"safety_failed",safety_failed},
        {"tier_a_candidates",tier_a_candidates},
        {"tier_b_candidates",tier_b_candidates},
        {"tier_b_min_damage",tier_b_min_damage},
        {"branch_evaluations",branch_evaluations},
        {"branch_switches",branch_switches},
        {"focus_fire_nodes",focus_fire_nodes},
        {"budget_ms",budget_ms},{"horizon_frames",horizon_frames},
        {"unknown_scale",unknown_scale},{"feedback_fallback",feedback_fallback}};
}
int MpcSequence::total_frames() const {
    int total=0;
    for(const auto& segment:segments)total+=std::max(0,segment.frames);
    return total;
}
json MpcSequence::to_json() const {
    json plan=json::array();
    for(const auto& segment:segments)plan.push_back(segment_json(segment));
    json path=json::array();
    for(const auto& point:trajectory)path.push_back(point);
    json enemies=json::array();
    for(const auto& enemy:root_enemies)
        enemies.push_back({{"id",enemy.id},{"pos",enemy.pos},{"hp",enemy.hp}});
    return {{"segments",plan},{"trajectory",path},
        {"final_score",final_score.to_json()},{"value",value},
        {"combat_value",combat_value},{"safety",safety.to_json()},
        {"emergency",emergency},{"damage_aware",damage_aware},
        {"branch_target",branch_target},{"branch_mode",branch_mode},
        {"root_signature",root_signature},{"horizon_frames",horizon_frames},
        {"depth",depth},{"source",source},{"root_clock",root_clock},
        {"root_room",root_room},{"root_player",root_player},
        {"root_health",root_health},{"root_enemies",enemies}};
}
MpcSequence MpcSequence::from_json(const json& value) {
    MpcSequence sequence;
    if(value.contains("segments")&&value.at("segments").is_array())
        for(const auto& segment:value.at("segments"))
            sequence.segments.push_back(segment_from_json(segment));
    if(value.contains("trajectory")&&value.at("trajectory").is_array())
        for(const auto& point:value.at("trajectory"))
            sequence.trajectory.push_back(point.get<Vec>());
    if(value.contains("final_score"))
        sequence.final_score=score_from_json(value.at("final_score"));
    if(value.contains("safety"))sequence.safety=safety_from_json(value.at("safety"));
    sequence.emergency=value.value("emergency",false);
    sequence.damage_aware=value.value("damage_aware",false);
    sequence.branch_target=value.value("branch_target",uint32_t{});
    sequence.branch_mode=value.value("branch_mode",std::string{"balanced"});
    sequence.value=value.value("value",0.0);
    sequence.combat_value=value.value("combat_value",0.0);
    sequence.root_signature=value.value("root_signature",uint64_t{});
    sequence.horizon_frames=value.value("horizon_frames",sequence.total_frames());
    sequence.depth=value.value("depth",int(sequence.segments.size()));
    sequence.source=value.value("source",std::string{});
    sequence.root_clock=value.value("root_clock",uint32_t{});
    sequence.root_room=value.value("root_room",uint32_t{});
    if(value.contains("root_player"))sequence.root_player=value.at("root_player").get<Vec>();
    sequence.root_health=value.value("root_health",0);
    if(value.contains("root_enemies")&&value.at("root_enemies").is_array())
        for(const auto& enemy:value.at("root_enemies")) {
            MpcEnemyMeta meta;
            meta.id=enemy.value("id",uint32_t{});
            if(enemy.contains("pos"))meta.pos=enemy.at("pos").get<Vec>();
            meta.hp=enemy.value("hp",0.0);
            sequence.root_enemies.push_back(meta);
        }
    return sequence;
}
bool MpcSequence::save(const std::filesystem::path& path,std::string* error) const {
    std::ofstream out{path};
    if(!out) {if(error)*error="cannot open sequence output: "+path.string();return false;}
    out<<to_json().dump(2)<<'\n';
    if(!out) {if(error)*error="sequence write failed: "+path.string();return false;}
    if(error)error->clear();
    return true;
}
std::optional<MpcSequence> MpcSequence::load(const std::filesystem::path& path,
                                             std::string* error) {
    std::ifstream in{path};
    if(!in) {if(error)*error="cannot open sequence input: "+path.string();return std::nullopt;}
    try {
        json value;in>>value;
        if(!value.contains("segments")||!value.at("segments").is_array()) {
            if(error)*error="sequence JSON has no segments array";
            return std::nullopt;
        }
        if(error)error->clear();
        return MpcSequence::from_json(value);
    }catch(const std::exception& e) {
        if(error)*error=e.what();
        return std::nullopt;
    }
}
MpcComparison compare_mpc_sequences(const MpcSequence& a,const MpcSequence& b) {
    MpcComparison comparison;
    comparison.value_delta=a.value-b.value;
    comparison.frames_delta=a.total_frames()-b.total_frames();
    comparison.same_segments=same_plan(a.segments,b.segments);
    comparison.same_first_action=!a.segments.empty()&&!b.segments.empty()&&
        a.segments.front().action==b.segments.front().action&&
        a.segments.front().frames==b.segments.front().frames;
    comparison.first_better=comparison.value_delta>0;
    return comparison;
}
json MpcComparison::to_json() const {
    return {{"value_delta",value_delta},{"frames_delta",frames_delta},
        {"same_first_action",same_first_action},{"same_segments",same_segments},
        {"first_better",first_better}};
}
json MpcCandidateSummary::to_json() const {
    return {{"action",action_json(action)},{"source",source},
        {"gate_passed",gate_passed},{"tier_b",tier_b},
        {"value",value},{"combat_value",combat_value},
        {"branch",branch.to_json()},
        {"safety",safety.to_json()},{"score",score.to_json()}};
}
json MpcPlan::to_json() const {
    json candidate_rows=json::array();
    for(const auto& candidate:candidates)candidate_rows.push_back(candidate.to_json());
    return {{"available",available},{"timed_out",timed_out},
        {"used_fallback",used_fallback},{"reused",reused},{"overridden",overridden},
        {"emergency",emergency},{"safety",safety.to_json()},
        {"decision",decision},{"first",action_json(first)},
        {"value",value},{"baseline_value",baseline_value},{"reason",reason},
        {"candidates",candidate_rows},
        {"stats",stats.to_json()},{"sequence",sequence.to_json()},
        {"combat",combat.to_json()},{"shot",shot.to_json()},
        {"branch",branch.to_json()},
        {"strategy",{{"profile",strategy_profile},{"primary",scenario_primary},
            {"tags",scenario_tags},{"switched",strategy_switched},
            {"detail",strategy}}},
        {"progress",progress},{"arbitration",arbitration},
        {"joint_summary",{{"reason",joint.reason},{"simulated",joint.simulated},
            {"simulation_override",joint.simulation_override},
            {"baseline_planning_ms",joint.baseline_planning_ms},
            {"planning_ms",joint.planning_ms},
            {"unknown_emergency",joint.unknown_emergency},
            {"intents",joint.intents.size()},{"previews",joint.previews.size()},
            {"simulation_candidates",joint.simulation.candidates.size()}}}};
}

MpcCombatPlanner::MpcCombatPlanner(MpcConfig config,LookaheadConfig lookahead)
    :config_(config),lookahead_(lookahead),base_(lookahead),
     bridge_(WorldStateBridgeOptions{},IntentPredictorConfig{}),
     combat_(config.combat),progress_tracker_(config.progress) {
    // Ablation switch for replay work. The default is enabled; setting
    // GAMEBOT_COMBAT=0 restores the v0.7 search without offensive guidance.
    if(const char* value=std::getenv("GAMEBOT_COMBAT");value&&
       (std::string(value)=="0"||std::string(value)=="false")) {
        config_.combat.enabled=false;
        combat_.set_config(config_.combat);
    }
}
MpcCombatPlanner::~MpcCombatPlanner()=default;
void MpcCombatPlanner::set_strategy_enabled(bool enabled) {
    if(enabled) {
        if(!strategy_) {
            strategy_base_config_=config_;
            strategy_=std::make_unique<StrategyProfileRuntime>();
        }
    } else if(strategy_) {
        strategy_.reset();
        config_=strategy_base_config_;
        combat_.set_config(config_.combat);
    }
}
bool MpcCombatPlanner::strategy_enabled() const {
    return bool(strategy_);
}
void MpcCombatPlanner::set_strategy_profiles(std::vector<StrategyProfile> profiles) {
    if(!strategy_) {
        strategy_base_config_=config_;
        strategy_=std::make_unique<StrategyProfileRuntime>();
    }
    strategy_->set_profiles(std::move(profiles));
}
void MpcCombatPlanner::set_strategy_runtime_config(StrategyRuntimeConfig config) {
    if(!strategy_) {
        strategy_base_config_=config_;
        strategy_=std::make_unique<StrategyProfileRuntime>();
    }
    strategy_->set_config(config);
}
void MpcCombatPlanner::reset() {
    base_.reset();
    bridge_.reset();
    combat_.reset();
    if(strategy_)strategy_->reset();
    progress_tracker_.reset();
    progress_=CombatProgressState{};
    previous_.clear();
    clear_feedback();
}
int MpcCombatPlanner::horizon_frames() const {
    const int base=config_.horizon_frames;
    if(feedback_horizon_<=0)return std::max(1,base);
    return std::clamp(feedback_horizon_,std::max(1,config_.min_horizon_frames),
        std::max(1,base));
}
void MpcCombatPlanner::apply_feedback(const PredictionFeedback& feedback) {
    forced_fallback_=feedback.fallback;
    const double scale=std::clamp(feedback.horizon_scale,0.1,1.0);
    feedback_horizon_=std::clamp(
        int(std::lround(double(config_.horizon_frames)*scale)),
        std::max(1,config_.min_horizon_frames),
        std::max(1,config_.horizon_frames));
    unknown_scale_=std::clamp(feedback.unknown_radius_scale,1.0,4.0);
    if(feedback.low_trust_sources>0)unknown_scale_=std::max(unknown_scale_,1.4);
    if(feedback.fallback||scale<0.999)previous_.clear();
}
void MpcCombatPlanner::clear_feedback() {
    feedback_horizon_=0;
    unknown_scale_=1.0;
    forced_fallback_=false;
}
ForwardSimConfig MpcCombatPlanner::sim_config() const {
    ForwardSimConfig sim;
    sim.dt=config_.dt;
    sim.horizon_frames=std::max(1,config_.segment_frames);
    sim.max_branches=1;
    sim.cache_entries=std::max(16,config_.cache_entries);
    sim.early_terminate=false;
    sim.danger_map=false;
    sim.player_shoots=true;
    sim.use_unknown_threats=true;
    sim.use_mechanism_intents=true;
    sim.unknown_radius_scale=unknown_scale_;
    // Prediction and simulation must share the measured native launch model.
    sim.tear_inheritance=config_.combat.tear_inheritance;
    sim.tear_spawn_offset=config_.combat.tear_spawn_offset;
    sim.tear_damage=config_.combat.tear_damage;
    return sim;
}
double MpcCombatPlanner::root_uncertainty(const WorldStateSnapshot& root) {
    const int total=root.exact_fields+root.estimated_fields+root.unknown_fields;
    if(total<=0)return 0;
    return (0.5*double(root.estimated_fields)+double(root.unknown_fields))/double(total);
}
bool MpcCombatPlanner::consistent(const MpcSequence& previous,
                                  const WorldStateSnapshot& root,
                                  const MpcConfig& config) {
    if(previous.root_room!=root.frame.room)return false;
    const int delta=int(root.frame.clock)-int(previous.root_clock);
    if(delta<0||delta>config.reuse_clock_tolerance)return false;
    if(root.player.health!=previous.root_health)return false;
    if(distance(root.player.body.pos,previous.root_player)>config.reuse_position_tolerance)
        return false;
    if(root.enemies.size()!=previous.root_enemies.size())return false;
    for(const auto& old_enemy:previous.root_enemies) {
        bool found=false;
        for(const auto& enemy:root.enemies) {
            if(enemy.entity.address!=old_enemy.id)continue;
            if(std::abs(enemy.entity.hp-old_enemy.hp)>1e-6)return false;
            if(distance(enemy.entity.pos,old_enemy.pos)>config.reuse_enemy_tolerance)
                return false;
            found=true;break;
        }
        if(!found)return false;
    }
    return true;
}
std::vector<MpcRootCandidate> MpcCombatPlanner::root_candidates(
    const JointPlan& joint,bool attack_enabled,const MpcConfig& config,
    const CombatContext* combat) {
    std::vector<MpcRootCandidate> out;
    std::unordered_set<int> seen;
    const bool combat_aim=combat&&combat->valid&&combat->aim.valid&&
        combat->aim.predicted_hit&&combat->aim.fire!=Fire::none&&
        combat->aim.target_damageable;
    const bool combat_fallback=combat&&combat->valid&&
        combat->fallback_fire_valid&&combat->target_in_range&&
        combat->fallback_fire!=Fire::none;
    const bool can_attack=attack_enabled&&
        (joint.decision.fire!=Fire::none||combat_aim||combat_fallback);
    auto add=[&](Move move,Fire fire,double priority,std::string source) {
        if(!can_attack)fire=Fire::none;
        const int key=int(move)*5+int(fire);
        if(!seen.insert(key).second)return;
        SimAction action{move,fire,can_attack&&fire!=Fire::none};
        out.push_back({action,priority,std::move(source)});
    };
    add(joint.decision.move,joint.decision.fire,100,"joint-decision");
    add(joint.baseline.move,joint.baseline.fire,95,"baseline");
    if(combat_aim&&!config.full_root_actions)
        for(int move=0;move<9;++move)
            add(static_cast<Move>(move),combat->aim.fire,92,"combat-aim");
    if(combat_fallback&&!config.full_root_actions)
        for(int move=0;move<9;++move)
            add(static_cast<Move>(move),combat->fallback_fire,91,"combat-fallback");
    for(const auto& candidate:joint.simulation.candidates)
        add(candidate.first.move,candidate.first.fire,80-double(candidate.index),
            "topk-simulation");
    if(!joint.move_sequence.empty())
        add(joint.move_sequence.front(),
            joint.fire_sequence.empty()?Fire::none:joint.fire_sequence.front(),
            70,"joint-beam");
    for(const auto& preview:joint.previews)
        add(preview.move,joint.decision.fire,50,"preview");
    for(int move=0;move<9;++move)
        add(static_cast<Move>(move),joint.decision.fire,40,"root-move");
    if(config.full_root_actions&&can_attack)
        for(int move=0;move<9;++move)
            for(int fire=1;fire<5;++fire)
                add(static_cast<Move>(move),static_cast<Fire>(fire),10,"root-joint");
    const int limit=std::max(1,config.root_candidates);
    if(int(out.size())>limit)out.resize(size_t(limit));
    return out;
}
std::optional<MpcSequence> MpcCombatPlanner::evaluate_sequence(
    const WorldStateSnapshot& root,const MpcSequence& sequence,bool danger_map,
    std::string* error,const CombatContext* combat,bool allow_damage_combat) const {
    ForwardSimConfig config=sim_config();
    const int horizon=horizon_frames();
    config.horizon_frames=std::max(1,horizon);
    config.danger_map=danger_map;
    ForwardSimulator simulator(config);
    if(!simulator.restore(root,error))return std::nullopt;
    MpcSequence result=sequence;
    result.trajectory.clear();
    result.trajectory.push_back(simulator.world().player.pos);
    result.root_signature=sim_world_signature(simulator.world());
    result.root_clock=root.frame.clock;
    result.root_room=root.frame.room;
    result.root_player=root.player.body.pos;
    result.root_health=root.player.health;
    result.root_enemies.clear();
    for(const auto& enemy:root.enemies) {
        result.root_enemies.push_back({enemy.entity.address,enemy.entity.pos,
            enemy.entity.hp});
    }
    int used=0;
    const bool combat_active=combat&&combat->valid&&config_.combat.enabled;
    CombatEnemyHp hp=combat_active?combat_enemy_hp(simulator.world()):CombatEnemyHp{};
    double combat_value=0;
    BranchCombatSummary branch_summary;
    uint32_t preferred=combat?combat->target:0;
    for(const auto& segment:sequence.segments) {
        if(used>=config.horizon_frames)break;
        const int frames=std::clamp(segment.frames>0?segment.frames:config_.segment_frames,
            1,config.horizon_frames-used);
        simulator.step(segment.action,frames);
        used+=frames;
        if(combat_active) {
            // This sequence is its own branch: rebuild threats, HP, windows and
            // best target from the world it just produced.
            const BranchCombatContext branch=combat_.evaluate_branch(*combat,
                simulator.world(),SafetyMetrics{},preferred);
            if(branch.valid&&branch.target)preferred=branch.target;
            branch_summary=branch.summary();
            SimulationScore delta_score;
            delta_score.player_dead=simulator.world().player_dead;
            const CombatCandidateTerms terms=combat_.score_branch(*combat,branch,hp,
                simulator.world(),segment.action,delta_score);
            const double scale=config_.combat_weight*
                (branch.disengage?0.60:1.0);
            combat_value=std::min(config_.combat.candidate_max_value,
                combat_value+scale*terms.total(config_.combat));
            hp=combat_enemy_hp(simulator.world());
        }
        result.trajectory.push_back(simulator.world().player.pos);
        if(simulator.terminal())break;
    }
    result.branch_target=branch_summary.target;
    result.branch_mode=tactical_mode_name(branch_summary.mode);
    const auto events=simulator.get_events();
    result.final_score=simulator.score();
    result.safety=evaluate_safety(simulator.world(),config_.safety,events,used,
        result.final_score.damage_taken);
    result.final_score.local_density=result.safety.local_density;
    result.final_score.available_area=result.safety.available_area;
    result.final_score.boundary_clearance=result.safety.boundary_clearance;
    result.final_score.laser_pressure=result.safety.laser_pressure;
    result.final_score.maneuverability=result.safety.maneuverability;
    result.final_score.escape_directions=result.safety.escape_directions;
    result.final_score.special_projectiles=result.safety.special_projectiles;
    result.final_score.uncertain_maneuvers=result.safety.uncertain_maneuvers;
    result.final_score.reachable_cells=result.safety.reachable_cells;
    result.final_score.mobility_routes=result.safety.mobility_routes;
    result.final_score.reachable_area=result.safety.reachable_area;
    result.final_score.time_to_open=result.safety.time_to_open;
    result.final_score.exit_block_risk=result.safety.exit_block_risk;
    result.final_score.encirclement_risk=result.safety.encirclement_risk;
    result.final_score.dead_end_risk=result.safety.dead_end_risk;
    result.final_score.corner_risk=result.safety.corner_risk;
    const bool safe=result.safety.safe&&result.final_score.damage_taken<=1e-9&&
        !result.final_score.player_dead;
    // Tier B keeps combat value for a surviving damaged branch. Damage remains
    // the first comparator, so this cannot buy extra damage with output.
    const bool damage_aware=allow_damage_combat&&!safe&&
        !result.final_score.player_dead;
    result.combat_value=(safe||damage_aware)?combat_value:0.0;
    result.emergency=!safe;
    result.damage_aware=damage_aware;
    result.value=composite_value(result.final_score,config_,
        root_uncertainty(root),horizon)+result.combat_value;
    result.horizon_frames=used;
    result.depth=int(sequence.segments.size());
    return result;
}
MpcPlan MpcCombatPlanner::decide(const Frame& frame,bool attack_enabled,
                                 const MechanismFrame* mechanisms) {
    const auto started=clock_type::now();
    JointPlan joint=base_.decide(frame,attack_enabled,mechanisms);
    WorldStateSnapshot root;
    if(joint.snapshot_valid)root=joint.snapshot;
    else root=bridge_.build(frame,mechanisms,
        lookahead_.unknown_threat_manager?&joint.unknown:nullptr);
    progress_=progress_tracker_.state();
    MpcPlan result=plan(joint,root,attack_enabled);
    progress_tracker_.observe(root,combat_progress_observation(result.combat,
        result.decision.fire,attack_enabled));
    progress_=progress_tracker_.state();
    result.progress=progress_.to_json();
    const double overhead=ms_since(started)-joint.decision.planning_ms-result.stats.elapsed_ms;
    if(overhead>0)result.decision.planning_ms+=overhead;
    return result;
}
MpcPlan MpcCombatPlanner::plan(const JointPlan& joint,const WorldStateSnapshot& root,
                               bool attack_enabled) {
    const auto started=clock_type::now();
    MpcPlan result;
    result.joint=joint;
    result.decision=joint.decision;
    result.progress=progress_.to_json();
    result.reason="mpc-kept-joint";
    if(!joint.decision.valid||joint.decision.stop||root.player.dead||
       !root.frame.valid) {
        result.used_fallback=true;
        result.stats.fallback=true;
        result.reason="mpc-fallback: invalid or stopped root";
        result.stats.elapsed_ms=ms_since(started);
        result.decision.planning_ms=joint.decision.planning_ms+result.stats.elapsed_ms;
        return result;
    }
    combat_.set_progress(progress_);
    if(strategy_) {
        const StrategyDecision decision=strategy_->update(root);
        config_=strategy_->effective_config(strategy_base_config_);
        combat_.update_config(config_.combat);
        result.strategy_profile=decision.active_profile;
        result.scenario_primary=scenario_tag_name(decision.scenario.primary);
        for(ScenarioTag tag:decision.scenario.tags)
            result.scenario_tags.push_back(scenario_tag_name(tag));
        result.strategy_switched=decision.switched;
        result.strategy=decision.to_json();
    }
    const int effective_horizon=horizon_frames();
    result.stats.horizon_frames=effective_horizon;
    result.stats.unknown_scale=unknown_scale_;
    result.stats.feedback_fallback=forced_fallback_;
    const bool fallback_can_attack=attack_enabled&&joint.decision.fire!=Fire::none;
    const SimAction baseline_first{joint.decision.move,
        fallback_can_attack?joint.decision.fire:Fire::none,fallback_can_attack};
    auto fallback_sequence=[&]() {
        MpcSequence sequence;
        if(joint.simulation.available&&!joint.simulation.candidates.empty()) {
            int selected=joint.simulation.best>=0?joint.simulation.best:0;
            for(size_t i=0;i<joint.simulation.candidates.size();++i)
                if(joint.simulation.candidates[i].first.move==baseline_first.move&&
                   joint.simulation.candidates[i].first.fire==baseline_first.fire) {
                    selected=int(i);break;
                }
            sequence.segments=joint.simulation.candidates[size_t(selected)].plan;
        }
        if(sequence.segments.empty()) {
            int used=0;
            while(used<effective_horizon) {
                const int frames=std::min(std::max(1,config_.segment_frames),
                    effective_horizon-used);
                sequence.segments.push_back({baseline_first,frames});
                used+=frames;
            }
        }
        sequence.source="prediction-fallback";
        sequence.horizon_frames=effective_horizon;
        sequence.depth=int(sequence.segments.size());
        return sequence;
    };
    auto make_fallback=[&](const std::string& why) {
        result.used_fallback=true;
        result.stats.fallback=true;
        result.available=false;
        result.reason=why;
        result.sequence=fallback_sequence();
        result.first=baseline_first;
        result.decision.move=baseline_first.move;
        result.decision.fire=fallback_can_attack?baseline_first.fire:Fire::none;
        result.decision.reason=joint.decision.reason+" | MPC fallback";
        result.arbitration={{"damage_aware",config_.damage_aware_arbitration},
            {"tier_b_used",false},{"reason","fallback"}};
        result.stats.elapsed_ms=ms_since(started);
        result.decision.planning_ms=joint.decision.planning_ms+result.stats.elapsed_ms;
        return result;
    };
    if(forced_fallback_)return make_fallback("mpc-fallback: prediction error monitor");
    const WorldStateSnapshot* combat_root=&root;
    if(joint.snapshot_valid&&joint.snapshot.frame.room==root.frame.room&&
       joint.snapshot.frame.clock==root.frame.clock)
        combat_root=&joint.snapshot;
    const ForwardSimConfig search_config=sim_config();
    ForwardSimulator root_simulator(search_config);
    std::string error;
    if(!root_simulator.restore(root,&error))return make_fallback("mpc-fallback: "+error);
    // Aim against the simulator root so windup/charging bodies are not
    // projected as chasers. The snapshot alone does not carry the simulator's
    // mechanism counters.
    result.combat=combat_.evaluate(*combat_root,attack_enabled,
        &root_simulator.world());
    const bool combat_aim=result.combat.valid&&result.combat.aim.valid&&
        result.combat.aim.predicted_hit&&result.combat.aim.fire!=Fire::none&&
        result.combat.aim.target_damageable;
    const bool combat_fallback=result.combat.valid&&
        result.combat.fallback_fire_valid&&result.combat.target_in_range&&
        result.combat.fallback_fire!=Fire::none;
    const bool can_attack=attack_enabled&&root.player.can_shoot&&
        root.player.attack_supported&&
        (joint.decision.fire!=Fire::none||combat_aim||combat_fallback);
    const uint64_t root_signature=sim_world_signature(root_simulator.world());
    result.stats.state_signature=root_signature;
    SafetyGate safety_gate(config_.safety);
    const SafetyMetrics root_safety=safety_gate.assess(root_simulator.world());
    result.safety=root_safety;
    const int collision_frames=std::max(1,config_.safety.collision_horizon_frames);
    // A zero local escape probe is a mobility signal, so it may open Emergency
    // ordering; it does not fail the branch safety gate by itself.
    bool emergency_mode=config_.emergency_escape&&
        (root_safety.in_danger||root_safety.escape_directions==0);
    double budget_ms=config_.time_budget_ms;
    if(config_.max_total_ms>0) {
        const double remaining=config_.max_total_ms-joint.decision.planning_ms-
            ms_since(started)-std::max(0.0,config_.evaluation_reserve_ms);
        if(remaining<=0)return make_fallback(
            "mpc-fallback: base planner exhausted total budget");
        budget_ms=budget_ms>0?std::min(budget_ms,remaining):remaining;
    }
    result.stats.budget_ms=budget_ms;
    const double uncertainty=root_uncertainty(root);
    const bool combat_active=result.combat.valid&&config_.combat.enabled;
    // The outer weight is constant. The per-branch disengage factor is applied
    // after that branch's own objective is known, so a root-only decision can
    // never suppress an otherwise safe branch.
    const double combat_weight=combat_active?config_.combat_weight:0.0;
    const CombatEnemyHp root_hp=combat_active?combat_enemy_hp(root_simulator.world()):CombatEnemyHp{};
    std::vector<MpcRootCandidate> roots=root_candidates(joint,attack_enabled,config_,
        &result.combat);
    if(roots.empty())
        roots.push_back({baseline_first,100,"baseline"});
    // Warm start only after checking that the new snapshot is still the same
    // room, health, enemy set and a close continuation of the previous root.
    std::optional<MpcSequence> warm;
    if(config_.reuse_previous&&!previous_.empty()) {
        for(const auto& previous:previous_) {
            if(!consistent(previous,root,config_))continue;
            ++result.stats.previous_candidates;
            auto evaluated=evaluate_sequence(root,previous,false,nullptr,&result.combat);
            if(!evaluated)continue;
            ++result.stats.previous_used;
            evaluated->source="previous";
            if(!warm||evaluated->value>warm->value)warm=std::move(evaluated);
        }
        if(warm&&!warm->segments.empty()) {
            result.stats.reused=true;
            result.reused=true;
            const SimAction warm_action=warm->segments.front().action;
            roots.erase(std::remove_if(roots.begin(),roots.end(),[&](const MpcRootCandidate& c){
                return c.action.move==warm_action.move&&c.action.fire==warm_action.fire;
            }),roots.end());
            roots.insert(roots.begin(),{warm_action,120,"previous"});
        }
    }
    // The baseline first action is protected through every beam so the MPC
    // cannot override it with a branch that was never compared at full depth.
    auto has_baseline_first=[&](const std::vector<SimActionSegment>& path) {
        return !path.empty()&&path.front().action.move==baseline_first.move&&
            path.front().action.fire==baseline_first.fire;
    };
    // Evaluate the unchanged joint plan over the MPC horizon. This is the
    // fallback when the search times out and the reference for override.
    MpcSequence baseline_sequence;
    if(joint.simulation.available&&!joint.simulation.candidates.empty()) {
        int selected=joint.simulation.best>=0?joint.simulation.best:0;
        for(size_t i=0;i<joint.simulation.candidates.size();++i)
            if(joint.simulation.candidates[i].first.move==baseline_first.move&&
               joint.simulation.candidates[i].first.fire==baseline_first.fire) {
                selected=int(i);break;
            }
        baseline_sequence.segments=joint.simulation.candidates[size_t(selected)].plan;
    }
    if(baseline_sequence.segments.empty()) {
        int used=0;
        const int horizon=horizon_frames();
        while(used<horizon) {
            const int frames=std::min(std::max(1,config_.segment_frames),
                horizon-used);
            baseline_sequence.segments.push_back({baseline_first,frames});
            used+=frames;
        }
    }
    double baseline_value=-std::numeric_limits<double>::infinity();
    if(auto evaluated=evaluate_sequence(root,baseline_sequence,false,nullptr,&result.combat))
        baseline_value=evaluated->value;
    result.baseline_value=baseline_value;
    std::vector<MpcSequence> previous_out;
    std::unordered_map<uint64_t,double> transposition;
    const int max_depth=config_.max_depth>0?config_.max_depth:
        std::max(1,(horizon_frames()+std::max(1,config_.segment_frames)-1)/
            std::max(1,config_.segment_frames));
    struct Node {
        int parent{-1},depth{};
        SimAction action;
        int frames{};
        int elapsed{};
        int first_hit_frame{-1};
        std::string source;
        std::vector<SimActionSegment> path;
        std::unique_ptr<ForwardSimulator> simulator;
        SimulationScore score;
        SafetyMetrics safety;
        double value{};
        double combat_value{};
        double combat_pending{};
        CombatCandidateTerms combat;
        BranchCombatSummary branch;
        CombatEnemyHp hp;
        bool gate_passed{};
        bool no_damage{};
        bool tier_b{};
        bool pruned{};
    };
    // Hard gate first, then normal value. When no candidate passes the gate,
    // the same comparator switches to emergency escape ranking: longer
    // survival, more exit directions/manoeuvrability, then clearance/value.
    auto hit_rank=[](int frame){return frame<0?std::numeric_limits<int>::max():frame;};
    auto better_node=[&](const Node& a,const Node& b) {
        // 1. Survival is absolute.
        if(a.score.player_dead!=b.score.player_dead)return !a.score.player_dead;
        // Tier A is the unchanged zero-damage SafetyGate. When it exists it
        // always outranks any damaged branch.
        if(config_.hard_safety_gate&&a.gate_passed!=b.gate_passed)
            return a.gate_passed;
        if(!a.gate_passed&&!b.gate_passed) {
            const double tolerance=std::max(0.0,config_.tier_b_damage_tolerance);
            // 2. Predicted cumulative damage. Extra damage is never offset by
            // a later combat term.
            if(std::abs(a.score.damage_taken-b.score.damage_taken)>tolerance)
                return a.score.damage_taken<b.score.damage_taken;
            if(a.first_hit_frame!=b.first_hit_frame&&
               std::abs(a.score.damage_taken-b.score.damage_taken)<=tolerance)
                return hit_rank(a.first_hit_frame)>hit_rank(b.first_hit_frame);
            // 3. Threat remaining after this branch.
            if(std::abs(a.score.enemy_hp_remaining-b.score.enemy_hp_remaining)>1e-6)
                return a.score.enemy_hp_remaining<b.score.enemy_hp_remaining;
            if(std::abs(a.branch.threat_remaining-b.branch.threat_remaining)>1e-9)
                return a.branch.threat_remaining<b.branch.threat_remaining;
            if(a.branch.enemy_count!=b.branch.enemy_count)
                return a.branch.enemy_count<b.branch.enemy_count;
            // 4. Future escape quality, including path-level dead ends.
            if(std::abs(a.safety.corner_risk-b.safety.corner_risk)>1e-9)
                return a.safety.corner_risk<b.safety.corner_risk;
            if(std::abs(a.safety.reachable_area-b.safety.reachable_area)>1e-9)
                return a.safety.reachable_area>b.safety.reachable_area;
            if(a.safety.mobility_routes!=b.safety.mobility_routes)
                return a.safety.mobility_routes>b.safety.mobility_routes;
            if(a.safety.escape_directions!=b.safety.escape_directions)
                return a.safety.escape_directions>b.safety.escape_directions;
            if(std::abs(a.safety.maneuverability-b.safety.maneuverability)>1e-9)
                return a.safety.maneuverability>b.safety.maneuverability;
            // 5. Threat reduction from the existing CombatObjective terms.
            if(std::abs(a.combat.threat_removal-b.combat.threat_removal)>1e-9)
                return a.combat.threat_removal>b.combat.threat_removal;
            if(std::abs(a.combat.kill_priority-b.combat.kill_priority)>1e-9)
                return a.combat.kill_priority>b.combat.kill_priority;
            // 6. Real combat progress and safe approach.
            if(std::abs(a.combat.progress_gain-b.combat.progress_gain)>1e-9)
                return a.combat.progress_gain>b.combat.progress_gain;
            if(std::abs(a.combat.reachability-b.combat.reachability)>1e-9)
                return a.combat.reachability>b.combat.reachability;
            if(std::abs(a.combat.approach-b.combat.approach)>1e-9)
                return a.combat.approach>b.combat.approach;
            // 7. Output and kill gain, only after the risk terms above.
            if(std::abs(a.combat.output_efficiency-b.combat.output_efficiency)>1e-9)
                return a.combat.output_efficiency>b.combat.output_efficiency;
            if(std::abs(a.score.damage_dealt-b.score.damage_dealt)>1e-6)
                return a.score.damage_dealt>b.score.damage_dealt;
            if(std::abs(a.combat.kill_sequence-b.combat.kill_sequence)>1e-9)
                return a.combat.kill_sequence>b.combat.kill_sequence;
            if(std::abs(a.safety.min_clearance-b.safety.min_clearance)>1e-9)
                return a.safety.min_clearance>b.safety.min_clearance;
        }
        if(std::abs(a.value-b.value)>1e-9)return a.value>b.value;
        return a.depth>b.depth;
    };
    std::vector<Node> nodes;
    nodes.reserve(size_t(std::max(16,config_.max_simulations))+64);
    std::vector<int> frontier;
    for(int depth=0;depth<max_depth;++depth) {
        if(result.stats.simulation_limit)break;
        if(budget_ms>0&&ms_since(started)>=budget_ms) {
            result.timed_out=true;result.stats.timed_out=true;break;
        }
        int beam_width=config_.beam_width;
        if(config_.adaptive_beam&&budget_ms>0) {
            const double used=std::clamp(ms_since(started)/budget_ms,0.0,1.0);
            beam_width=int(std::ceil(double(config_.beam_width)*(1.0-used*0.5)));
        }
        beam_width=std::clamp(beam_width,config_.min_beam_width,config_.max_beam_width);
        std::vector<int> children;
        auto parents=(depth==0)?std::vector<int>{-1}:frontier;
        if(depth>0&&parents.empty())break;
        for(const int parent_index:parents) {
            if(budget_ms>0&&ms_since(started)>=budget_ms) {
                result.timed_out=true;result.stats.timed_out=true;break;
            }
            std::vector<SimAction> actions;
            if(depth==0) {
                for(const auto& candidate:roots)actions.push_back(candidate.action);
            }else {
                const Node& parent=nodes[size_t(parent_index)];
                std::unordered_set<int> fire_seen;
                std::vector<Fire> fires;
                auto add_fire=[&](Fire fire) {
                    if(!can_attack)fire=Fire::none;
                    if(fire_seen.insert(int(fire)).second)fires.push_back(fire);
                };
                if(config_.enumerate_all_fires||!config_.prune_actions) {
                    for(int fire=0;fire<5;++fire)add_fire(static_cast<Fire>(fire));
                }else {
                    add_fire(Fire::none);
                    add_fire(parent.action.fire);
                    add_fire(joint.decision.fire);
                    add_fire(aimed_fire(parent.simulator->world()));
                    if(combat_active&&can_attack) {
                        // The aim direction is chosen against this parent's own
                        // selected target, not a fixed root target.
                        const uint32_t preferred=parent.branch.valid?
                            parent.branch.target:result.combat.target;
                        const PredictiveAimSolution branch_aim=
                            combat_.aim(result.combat,parent.simulator->world(),
                                preferred);
                        if(branch_aim.valid)add_fire(branch_aim.fire);
                    }
                }
                for(int move=0;move<9;++move)
                    for(Fire fire:fires)
                        actions.push_back(SimAction{static_cast<Move>(move),fire,
                            can_attack&&fire!=Fire::none});
            }
            for(const SimAction& action:actions) {
                if(config_.max_simulations>0&&
                   result.stats.simulations>=config_.max_simulations) {
                    result.stats.simulation_limit=true;
                    break;
                }
                if(budget_ms>0&&ms_since(started)>=budget_ms) {
                    result.timed_out=true;result.stats.timed_out=true;break;
                }
                const int frames=std::min(std::max(1,config_.segment_frames),
                    std::max(1,horizon_frames()-depth*config_.segment_frames));
                if(frames<=0)continue;
                std::unique_ptr<ForwardSimulator> child;
                if(parent_index<0)child=root_simulator.fork();
                else child=nodes[size_t(parent_index)].simulator->fork();
                child->step(action,frames);
                ++result.stats.simulations;
                Node node;
                node.parent=parent_index;
                node.depth=depth+1;
                node.action=action;
                node.frames=frames;
                node.elapsed=(parent_index<0?0:nodes[size_t(parent_index)].elapsed)+frames;
                node.simulator=std::move(child);
                node.score=node.simulator->score();
                const auto events=node.simulator->get_events();
                node.safety=safety_gate.assess(node.simulator->world(),events,
                    node.elapsed,node.score.damage_taken);
                node.first_hit_frame=parent_index>=0?nodes[size_t(parent_index)].first_hit_frame:-1;
                if(node.first_hit_frame<0&&node.safety.first_hit_frame>=0)
                    node.first_hit_frame=node.safety.first_hit_frame;
                const bool no_damage=node.score.damage_taken<=1e-9&&
                    !node.score.player_dead;
                node.no_damage=no_damage;
                // Hard gate: actual damage/death plus the current danger
                // geometry over the collision horizon. escape_directions is a
                // mobility preference and is intentionally not required here.
                node.gate_passed=config_.hard_safety_gate?
                    (no_damage&&node.safety.safe&&node.elapsed>=collision_frames):no_damage;
                if(node.gate_passed)++result.stats.safety_passed;
                else if(node.elapsed>=collision_frames)++result.stats.safety_failed;
                node.score.local_density=node.safety.local_density;
                node.score.available_area=node.safety.available_area;
                node.score.boundary_clearance=node.safety.boundary_clearance;
                node.score.laser_pressure=node.safety.laser_pressure;
                node.score.maneuverability=node.safety.maneuverability;
                node.score.escape_directions=node.safety.escape_directions;
                node.score.special_projectiles=node.safety.special_projectiles;
                node.score.uncertain_maneuvers=node.safety.uncertain_maneuvers;
                node.score.reachable_cells=node.safety.reachable_cells;
                node.score.mobility_routes=node.safety.mobility_routes;
                node.score.reachable_area=node.safety.reachable_area;
                node.score.time_to_open=node.safety.time_to_open;
                node.score.exit_block_risk=node.safety.exit_block_risk;
                node.score.encirclement_risk=node.safety.encirclement_risk;
                node.score.dead_end_risk=node.safety.dead_end_risk;
                node.score.corner_risk=node.safety.corner_risk;
                if(parent_index>=0)node.source=nodes[size_t(parent_index)].source;
                else for(const auto& candidate:roots)
                    if(candidate.action==action) {node.source=candidate.source;break;}
                if(combat_active) {
                    const CombatEnemyHp& before_hp=parent_index<0?root_hp:
                        nodes[size_t(parent_index)].hp;
                    const double parent_combat=parent_index<0?0.0:
                        nodes[size_t(parent_index)].combat_value;
                    const double parent_pending=parent_index<0?0.0:
                        nodes[size_t(parent_index)].combat_pending;
                    const uint32_t preferred=parent_index<0?result.combat.target:
                        nodes[size_t(parent_index)].branch.target;
                    // Rebuild threats, remaining HP, attackable state, TTK and
                    // the best target from this branch's own simulated world.
                    const BranchCombatContext branch=combat_.evaluate_branch(
                        result.combat,node.simulator->world(),node.safety,preferred);
                    ++result.stats.branch_evaluations;
                    if(branch.switched)++result.stats.branch_switches;
                    if(branch.mode==TacticalMode::focus_fire)
                        ++result.stats.focus_fire_nodes;
                    node.branch=branch.summary();
                    node.combat=combat_.score_branch(result.combat,branch,before_hp,
                        node.simulator->world(),action,node.score,node.safety);
                    const double branch_scale=combat_weight*
                        (branch.disengage?0.60:1.0);
                    const double terms=branch_scale*
                        node.combat.total(config_.combat);
                    node.combat_pending=parent_pending+terms;
                    // Hard safety gate: tactical/combat reward is only available
                    // after the branch has survived the collision horizon. Before
                    // that, pending terms are accumulated but not ranked.
                    if(node.gate_passed) {
                        const double base=parent_combat>1e-9?parent_combat:parent_pending;
                        node.combat_value=std::min(config_.combat.candidate_max_value,
                            base+terms);
                    }else node.combat_value=0.0;
                    node.hp=combat_enemy_hp(node.simulator->world());
                }
                node.value=composite_value(node.score,config_,uncertainty,
                    horizon_frames())+node.combat_value;
                if(parent_index>=0)node.path=nodes[size_t(parent_index)].path;
                node.path.push_back({action,frames});
                const uint64_t signature=sim_world_signature(node.simulator->world());
                const auto found=transposition.find(signature);
                if(found!=transposition.end()&&found->second>=node.value-1e-9&&
                   !has_baseline_first(node.path)) {
                    ++result.stats.transposition_hits;
                    ++result.stats.nodes;
                    continue;
                }
                transposition[signature]=node.value;
                if(transposition.size()>size_t(std::max(32,config_.cache_entries)))
                    transposition.clear();
                const bool dead=node.score.player_dead;
                // Damage-aware arbitration keeps surviving damaged branches so
                // Tier B can compare the minimum-risk set. The old hopeless
                // cutoff remains available for the legacy path.
                const bool hopeless=dead||(!config_.damage_aware_arbitration&&
                    config_.hopeless_prune&&node.elapsed>=collision_frames&&
                    node.score.damage_taken>=config_.hopeless_damage);
                if(hopeless) {
                    node.pruned=true;
                    ++result.stats.hopeless;
                    ++result.stats.pruned;
                }
                const int index=int(nodes.size());
                nodes.push_back(std::move(node));
                ++result.stats.nodes;
                if(has_baseline_first(nodes.back().path))
                    baseline_value=std::max(baseline_value,nodes.back().value);
                if(!hopeless)children.push_back(index);
            }
            if(result.stats.timed_out||result.stats.simulation_limit)break;
        }
        if(children.empty())break;
        bool any_gate=false,any_tier_a=false;
        for(const int index:children) {
            const Node& child=nodes[size_t(index)];
            if(child.gate_passed)any_gate=true;
            if(child.no_damage&&child.safety.safe)any_tier_a=true;
        }
        const int elapsed_frames=(depth+1)*std::max(1,config_.segment_frames);
        if(config_.damage_aware_arbitration&&config_.hard_safety_gate) {
            if(any_gate) {
                // Tier A exists: do not continue a damaged branch merely for
                // better output.
                int gate_count=0;
                for(int index:children)if(nodes[size_t(index)].gate_passed)++gate_count;
                result.stats.tier_a_candidates=std::max(result.stats.tier_a_candidates,
                    gate_count);
                children.erase(std::remove_if(children.begin(),children.end(),
                    [&](int index){return !nodes[size_t(index)].gate_passed;}),
                    children.end());
            }else if(!any_tier_a&&elapsed_frames>=collision_frames) {
                double minimum_damage=std::numeric_limits<double>::infinity();
                for(int index:children) {
                    const Node& child=nodes[size_t(index)];
                    if(child.score.player_dead)continue;
                    minimum_damage=std::min(minimum_damage,child.score.damage_taken);
                }
                if(std::isfinite(minimum_damage)) {
                    const double tolerance=std::max(0.0,config_.tier_b_damage_tolerance);
                    children.erase(std::remove_if(children.begin(),children.end(),
                        [&](int index) {
                            const Node& child=nodes[size_t(index)];
                            return child.score.player_dead||
                                child.score.damage_taken>minimum_damage+tolerance;
                        }),children.end());
                    if(!children.empty()) {
                        result.stats.tier_b_used=true;
                        result.stats.tier_b_min_damage=result.stats.tier_b_min_damage<0?
                            minimum_damage:std::min(result.stats.tier_b_min_damage,
                                minimum_damage);
                        result.stats.tier_b_candidates=int(children.size());
                        for(int index:children) {
                            Node& child=nodes[size_t(index)];
                            child.tier_b=true;
                            // Keep the already accumulated branch combat value
                            // only inside the minimum-risk set.
                            child.combat_value=std::min(config_.combat.candidate_max_value,
                                child.combat_pending);
                            child.value=composite_value(child.score,config_,uncertainty,
                                horizon_frames())+child.combat_value;
                            if(has_baseline_first(child.path))
                                baseline_value=std::max(baseline_value,child.value);
                            transposition[sim_world_signature(child.simulator->world())]=
                                child.value;
                        }
                    }
                }
            }
        }
        if(children.empty())break;
        if(config_.emergency_escape&&!any_gate&&
           elapsed_frames>=collision_frames)
            emergency_mode=true;
        if(emergency_mode)result.stats.emergency=true;
        std::stable_sort(children.begin(),children.end(),[&](int a,int b){
            return better_node(nodes[size_t(a)],nodes[size_t(b)]);
        });
        std::vector<int> next;
        std::unordered_set<int> distinct;
        int distinct_count=0;
        // Preserve the best branch that starts with the unchanged joint action,
        // but never ahead of a safer branch.
        int protected_baseline=-1;
        for(const int index:children)
            if(has_baseline_first(nodes[size_t(index)].path)&&
               (protected_baseline<0||better_node(nodes[size_t(index)],
                   nodes[size_t(protected_baseline)])))protected_baseline=index;
        if(!children.empty())next.push_back(children.front());
        if(protected_baseline>=0&&
           std::find(next.begin(),next.end(),protected_baseline)==next.end())
            next.push_back(protected_baseline);
        for(const int index:children) {
            if(int(next.size())>=beam_width)break;
            if(distinct_count>=std::max(1,config_.distinct_directions))break;
            const int move=int(nodes[size_t(index)].action.move);
            if(distinct.count(move))continue;
            distinct.insert(move);
            ++distinct_count;
            if(std::find(next.begin(),next.end(),index)!=next.end())continue;
            next.push_back(index);
        }
        for(const int index:children) {
            if(int(next.size())>=beam_width)break;
            if(std::find(next.begin(),next.end(),index)!=next.end())continue;
            next.push_back(index);
        }
        ++result.stats.expansions;
        result.stats.depth=depth+1;
        result.stats.beam_width=int(next.size());
        result.stats.peak_beam=std::max(result.stats.peak_beam,int(next.size()));
        frontier=std::move(next);
        if(budget_ms>0&&ms_since(started)>=budget_ms) {
            result.timed_out=true;result.stats.timed_out=true;break;
        }
    }
    int best_index=-1;
    bool baseline_gate=false;
    for(size_t index=0;index<nodes.size();++index) {
        const auto& node=nodes[index];
        if(node.pruned||node.path.empty())continue;
        if(has_baseline_first(node.path))baseline_gate=baseline_gate||node.gate_passed;
        if(best_index<0||better_node(node,nodes[size_t(best_index)]))
            best_index=int(index);
    }
    if(best_index<0) return make_fallback("mpc-fallback: no survivable branch");
    const Node& best=nodes[size_t(best_index)];
    MpcSequence selected;
    selected.segments=best.path;
    selected.final_score=best.score;
    selected.value=best.value;
    selected.combat_value=best.combat_value;
    selected.branch_target=best.branch.target;
    selected.branch_mode=tactical_mode_name(best.branch.mode);
    result.branch=best.branch;
    selected.root_signature=root_signature;
    selected.horizon_frames=best.depth*std::max(1,config_.segment_frames);
    selected.depth=best.depth;
    selected.safety=best.safety;
    selected.emergency=!best.gate_passed;
    selected.damage_aware=best.tier_b;
    selected.source="beam";
    double selected_search_value=best.value;
    if(warm&&!warm->segments.empty()) {
        const bool warm_safe=warm->safety.safe&&warm->final_score.damage_taken<=1e-9&&
            !warm->final_score.player_dead;
        if(warm_safe&&!best.gate_passed) {
            selected=*warm;
            selected_search_value=warm->value;
        }else if(warm_safe==best.gate_passed&&warm->value>selected_search_value) {
            selected=*warm;
            selected_search_value=warm->value;
        }
    }
    result.available=true;
    result.emergency=!best.gate_passed;
    // Compare in the search-domain values (danger map off for every branch)
    // against the protected baseline branch. A safe candidate may override an
    // unsafe baseline without waiting for a value margin, because the gate is
    // not a preference.
    if((best.gate_passed&&!baseline_gate)||has_baseline_first(selected.segments)||
       selected_search_value>baseline_value+config_.override_margin) {
        result.overridden=!has_baseline_first(selected.segments);
    }else {
        // Keep the validated joint action and use the best sequence that
        // begins with it. If the beam pruned that branch, fall back to the
        // evaluated joint plan.
        int baseline_index=-1;
        for(size_t index=0;index<nodes.size();++index) {
            const auto& node=nodes[index];
            if(node.pruned||node.path.empty()||!has_baseline_first(node.path))continue;
            if(baseline_index<0||better_node(node,nodes[size_t(baseline_index)]))
                baseline_index=int(index);
        }
        if(baseline_index>=0) {
            MpcSequence baseline_best;
            baseline_best.segments=nodes[size_t(baseline_index)].path;
            baseline_best.final_score=nodes[size_t(baseline_index)].score;
            baseline_best.value=nodes[size_t(baseline_index)].value;
            baseline_best.combat_value=nodes[size_t(baseline_index)].combat_value;
            baseline_best.branch_target=nodes[size_t(baseline_index)].branch.target;
            baseline_best.branch_mode=tactical_mode_name(
                nodes[size_t(baseline_index)].branch.mode);
            baseline_best.safety=nodes[size_t(baseline_index)].safety;
            baseline_best.emergency=!nodes[size_t(baseline_index)].gate_passed;
            baseline_best.root_signature=root_signature;
            baseline_best.depth=nodes[size_t(baseline_index)].depth;
            baseline_best.source="baseline-protected";
            selected=std::move(baseline_best);
        }else {
            selected=baseline_sequence;
        }
        result.overridden=false;
    }
    if(auto evaluated=evaluate_sequence(root,selected,config_.final_danger_map,nullptr,
           &result.combat,result.stats.tier_b_used||selected.damage_aware))
        selected=*evaluated;
    if(selected.branch_target!=0||selected.branch_mode!="balanced") {
        result.branch.valid=true;
        result.branch.target=selected.branch_target;
        result.branch.mode=tactical_mode_from_name(selected.branch_mode);
    }
    result.sequence=selected;
    result.value=selected.value;
    result.safety=selected.safety;
    result.emergency=selected.emergency;
    result.stats.emergency=result.emergency;
    result.arbitration={{"damage_aware",config_.damage_aware_arbitration},
        {"tier_b_used",result.stats.tier_b_used},
        {"tier_a_candidates",result.stats.tier_a_candidates},
        {"tier_b_candidates",result.stats.tier_b_candidates},
        {"tier_b_min_damage",result.stats.tier_b_min_damage},
        {"damage_tolerance",config_.tier_b_damage_tolerance}};
    result.first=selected.segments.empty()?baseline_first:selected.segments.front().action;
    result.decision.move=result.first.move;
    result.decision.fire=can_attack?result.first.fire:Fire::none;
    const uint32_t effective_target=result.branch.target!=0?
        result.branch.target:result.combat.target;
    if(can_attack&&effective_target!=0)result.decision.target=effective_target;
    if(can_attack&&result.first.fire!=Fire::none&&effective_target!=0)
        result.shot=combat_.shot(root_simulator.world(),effective_target,
            result.first.fire);
    result.decision.reason=joint.decision.reason+" | MPC beam";
    if(can_attack&&effective_target!=0)
        result.decision.reason+=" target="+std::to_string(effective_target);
    if(result.overridden)result.decision.reason+=" override";
    if(result.stats.tier_b_used)result.decision.reason+=" tier-b-damage-aware";
    if(result.emergency)result.decision.reason+=" emergency-escape";
    if(result.reused)result.decision.reason+=" reuse";
    if(result.timed_out)result.decision.reason+=" timeout";
    if(result.stats.simulation_limit)result.decision.reason+=" simulation-limit";
    result.decision.strategy_mode=result.emergency?"Emergency":
        result.overridden?"Survival":
        (can_attack&&result.combat.valid&&effective_target!=0?"Combat":
         joint.decision.strategy_mode);
    if(!selected.trajectory.empty())result.decision.path=selected.trajectory;
    // Rebuild a small warm-start set from the evaluated sequence and the best
    // beam leaves. Their metadata makes the next consistency check explicit.
    std::vector<int> ranked;
    for(size_t index=0;index<nodes.size();++index)
        if(!nodes[index].pruned&&!nodes[index].path.empty())ranked.push_back(int(index));
    std::stable_sort(ranked.begin(),ranked.end(),[&](int a,int b){
        return better_node(nodes[size_t(a)],nodes[size_t(b)]);
    });
    // Candidate score decomposition for logs and replay inspection. Keep the
    // best branch per root action so a dense beam cannot hide the alternatives.
    std::vector<int> summary_nodes;
    std::unordered_set<int> summary_actions;
    for(const int index:ranked) {
        const auto& node=nodes[size_t(index)];
        const int key=int(node.action.move)*5+int(node.action.fire);
        if(!summary_actions.insert(key).second)continue;
        summary_nodes.push_back(index);
        if(summary_nodes.size()>=8)break;
    }
    for(const int index:summary_nodes) {
        const auto& node=nodes[size_t(index)];
        MpcCandidateSummary summary;
        summary.action=node.action;
        summary.source=node.source;
        summary.gate_passed=node.gate_passed;
        summary.tier_b=node.tier_b;
        summary.value=node.value;
        summary.combat_value=node.combat_value;
        summary.branch=node.branch;
        summary.safety=node.safety;
        summary.score=node.score;
        result.candidates.push_back(std::move(summary));
    }
    std::unordered_set<std::string> unique;
    auto append_previous=[&](const MpcSequence& sequence) {
        if(sequence.segments.empty())return;
        if(!unique.insert(plan_key(sequence.segments)).second)return;
        MpcSequence copy=sequence;
        copy.root_signature=root_signature;
        copy.root_clock=root.frame.clock;
        copy.root_room=root.frame.room;
        copy.root_player=root.player.body.pos;
        copy.root_health=root.player.health;
        copy.root_enemies.clear();
        for(const auto& enemy:root.enemies)
            copy.root_enemies.push_back({enemy.entity.address,enemy.entity.pos,
                enemy.entity.hp});
        previous_out.push_back(std::move(copy));
    };
    append_previous(selected);
    for(const int index:ranked) {
        if(int(previous_out.size())>=std::max(1,config_.reuse_sequences))break;
        MpcSequence sequence;
        sequence.segments=nodes[size_t(index)].path;
        sequence.final_score=nodes[size_t(index)].score;
        sequence.value=nodes[size_t(index)].value;
        sequence.combat_value=nodes[size_t(index)].combat_value;
        sequence.branch_target=nodes[size_t(index)].branch.target;
        sequence.branch_mode=tactical_mode_name(nodes[size_t(index)].branch.mode);
        sequence.safety=nodes[size_t(index)].safety;
        sequence.emergency=!nodes[size_t(index)].gate_passed;
        sequence.root_signature=root_signature;
        sequence.horizon_frames=nodes[size_t(index)].depth*
            std::max(1,config_.segment_frames);
        sequence.depth=nodes[size_t(index)].depth;
        sequence.source="beam";
        append_previous(sequence);
    }
    previous_=std::move(previous_out);
    result.stats.emergency=result.emergency;
    result.stats.elapsed_ms=ms_since(started);
    result.decision.planning_ms=joint.decision.planning_ms+result.stats.elapsed_ms;
    result.used_fallback=false;
    result.stats.fallback=false;
    result.reason=result.overridden?"mpc-override":
        (result.reused?"mpc-reuse":"mpc-kept-baseline");
    return result;
}
} // namespace gamebot
