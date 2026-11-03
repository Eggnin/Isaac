#pragma once
#include "enemy_intent.hpp"
#include "forward_sim.hpp"
#include "planner.hpp"
#include "unknown_threat.hpp"
namespace gamebot {
// Offline Top-K lookahead layered on top of the validated Planner. The base
// planner still produces the route beam; this module reads those candidate
// paths, rolls them forward, and pairs movement with a firing direction.
struct LookaheadConfig {
    int top_k{6};              // joint action sequences retained per epoch
    int seed_candidates{6};    // Planner candidate routes used as seeds
    int epochs{3};             // action epochs rolled out after the seed
    int epoch_frames{6};       // 60 Hz frames held per epoch
    int preview_fire_interval{5};
    double dt{1.0/60};
    double damage_weight{100};
    double exposure_weight{0.02};
    double attack_weight{1.5};
    double lethal_weight{1000};
    double tear_damage{3.5};
    int fire_cooldown_frames{10};
    int min_shot_margin{0};    // Extra aim tolerance beyond the target radius.
    bool enemy_intent_prediction{true};
    double intent_horizon{1.2};
    double intent_min_confidence{0.30};
    bool intent_include_inferred{true};
    bool intent_include_candidate{};
    int virtual_threat_limit{64};
    bool unknown_threat_manager{true};
    double unknown_emergency_horizon{0.7};
    double unknown_emergency_margin{40};
    double unknown_risk_threshold{2.0};
    double unknown_emergency_attack_scale{0.25};
    // Forward world simulation. The planner restores one WorldStateSnapshot,
    // forks a branch per surviving joint candidate, and uses the simulated
    // outcome as the final ranking. Survival dominates output.
    bool forward_simulation{true};
    int simulation_horizon_frames{36};
    int simulation_branches{10};
    int simulation_segment_frames{6};
    bool simulation_early_terminate{true};
    bool simulation_include_unknown{true};
    double simulation_tear_damage{3.5};
    int simulation_invulnerability_frames{60};
};
struct CandidatePreview {
    Move move{};
    std::vector<Vec> path;
    double predicted_damage{};
    double predicted_attack{};
    double predicted_exposure{};
    int predicted_shots{};
    int virtual_threats{};
    int forecasts{};
    double baseline_hits{};
    double baseline_exposure{};
    bool baseline_safe{};
};
struct JointPlan {
    Decision decision;         // baseline decision with the joint move/fire applied
    Decision baseline;         // unchanged output of the existing Planner
    std::vector<CandidatePreview> previews;
    std::vector<EnemyIntent> intents;
    std::vector<AttackForecast> selected_forecasts;
    std::vector<Threat> selected_virtual_threats;
    IntentCoverage intent_coverage;
    UnknownAssessment unknown;
    int real_threats{};
    int virtual_threats{};
    int unknown_tracking_threats{};
    int unknown_attack_intents{};
    bool unknown_emergency{};
    std::string unknown_emergency_reason;
    std::vector<Move> move_sequence;
    std::vector<Fire> fire_sequence;
    double predicted_damage{};
    double predicted_attack{};
    double predicted_exposure{};
    int predicted_shots{};
    bool move_overridden{};
    bool fire_overridden{};
    bool simulated{};
    bool simulation_override{};
    SimulationScore simulation_score;
    SimulationBatch simulation;
    // The exact snapshot used by the forward simulation. MPC reads this rather
    // than rebuilding the world and losing the intent/unknown provenance that
    // Top-K already attached.
    WorldStateSnapshot snapshot;
    bool snapshot_valid{};
    double baseline_planning_ms{};
    double planning_ms{};
    std::string reason;
};
class TopKJointPlanner {
public:
    explicit TopKJointPlanner(LookaheadConfig config={});
    JointPlan decide(const Frame& frame,bool attack_enabled=true,const MechanismFrame* mechanisms=nullptr);
    const Planner& baseline() const { return planner_; }
    const LookaheadConfig& config() const { return config_; }
    void reset();
private:
    LookaheadConfig config_;
    Planner planner_;
    EnemyIntentPredictor intent_predictor_;
    VirtualThreatGenerator virtual_generator_;
    UnknownThreatManager unknown_manager_;
    WorldStateBridge world_bridge_;
    SimulationPlanner simulation_planner_;
};
}
