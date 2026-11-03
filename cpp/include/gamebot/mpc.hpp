#pragma once
#include "combat.hpp"
#include "forward_sim.hpp"
#include "lookahead.hpp"
#include "prediction_monitor.hpp"
#include "safety.hpp"
#include "world_state.hpp"
#include <memory>
#include <optional>

namespace gamebot {
struct StrategyProfile;
struct StrategyRuntimeConfig;
class StrategyProfileRuntime;
struct StrategyDecision;

// Long-horizon model-predictive combat planning on top of the validated v0.5
// forward simulator. The module never replaces Planner, TopKJointPlanner,
// EnemyIntentPredictor, AttackForecast, VirtualThreatGenerator,
// UnknownThreatManager or WorldStateBridge. It reads their output, expands a
// beam of independent simulator branches, and returns an action sequence whose
// first segment is the only part a caller may execute.
struct MpcConfig {
    double dt{1.0/60};
    int horizon_frames{96};       // 1.6 s at 60 Hz
    int min_horizon_frames{24};   // feedback may shorten, never below this
    int segment_frames{6};        // one decision epoch = 0.1 s
    int max_depth{0};             // 0 = ceil(horizon_frames / segment_frames)
    int beam_width{8};
    int min_beam_width{2};
    int max_beam_width{12};
    int distinct_directions{4};   // keep this many different last moves
    int root_candidates{45};      // 9 moves x 5 fires, deduplicated
    int reuse_sequences{3};       // previous best paths kept as warm starts
    bool full_root_actions{true};
    bool prune_actions{true};
    bool adaptive_beam{true};
    bool enumerate_all_fires{};   // true = 45 actions at every depth
    double time_budget_ms{8.0};
    double max_total_ms{20.0};    // includes the existing Planner/Top-K seed cost
    double evaluation_reserve_ms{2.0};
    int max_simulations{4096};
    int cache_entries{512};
    // Survival-first composite score. Damage output can never outweigh a
    // death, and unknown/estimated provenance keeps an explicit penalty.
    double death_penalty{1000};
    double damage_weight{100};
    double death_risk_weight{200};
    double unknown_weight{20};
    double provenance_uncertainty_weight{5};
    double enemy_hp_weight{1};
    double damage_dealt_weight{1};
    double kill_weight{25};
    double escape_weight{40};
    double danger_weight{30};
    double clear_time_weight{10};
    double survival_time_weight{0.5};
    double override_margin{1.0};
    bool hopeless_prune{true};
    double hopeless_damage{2.0};  // health points lost from the root
    bool reuse_previous{true};
    int reuse_clock_tolerance{8};
    double reuse_position_tolerance{32};
    double reuse_enemy_tolerance{48};
    bool final_danger_map{true};
    // Hard safety gate and emergency-escape ranking (v0.9). A candidate that
    // fails the gate cannot receive combat reward. If no candidate passes, the
    // beam switches to escape ranking instead of continuing normal attack
    // scoring. The weight is a tie-breaker below one HP of damage (100) and the
    // combat cap (60); it never overrides damage, death or a failed gate.
    SafetyGateConfig safety{};
    double maneuver_weight{8.0};
    // Path-level anti-corner preference. It sits below damage/death and cannot
    // promote a branch that failed the SafetyGate.
    double corner_weight{18.0};
    bool hard_safety_gate{true};
    bool emergency_escape{true};
    // v0.9.1.1.2 damage-aware arbitration. Tier A keeps the existing
    // zero-damage gate. Tier B is only used when no Tier A candidate exists:
    // it keeps the minimum-damage risk set and compares combat only inside it.
    bool damage_aware_arbitration{true};
    double tier_b_damage_tolerance{0.25};
    // v0.8 combat intelligence. The nested config owns threat/target/window/aim
    // parameters and the candidate score weights. `combat_weight` is the outer
    // scale; survival terms in composite_value stay higher than any offensive
    // term and a dead branch receives no attack credit.
    CombatConfig combat{};
    double combat_weight{1.0};
    // Real Reader-side stall detector. It informs the anti-stalemate terms but
    // never replaces the SafetyGate.
    CombatProgressConfig progress{};
};
// The unchanged MPC survival-first composite score. It is shared with the
// offline strategy evaluator so optimization cannot invent a second objective.
double mpc_composite_value(const SimulationScore& score,const MpcConfig& config,
    double uncertainty,int horizon_frames);
struct MpcRootCandidate {
    SimAction action;
    double priority{};
    std::string source;
};
struct MpcEnemyMeta {
    uint32_t id{};
    Vec pos{};
    double hp{};
};
struct MpcSearchStats {
    int depth{}, nodes{}, expansions{}, simulations{};
    int beam_width{}, peak_beam{}, pruned{}, hopeless{}, transposition_hits{};
    int previous_candidates{}, previous_used{};
    uint64_t state_signature{};
    bool timed_out{}, simulation_limit{}, reused{}, fallback{};
    bool emergency{};
    bool tier_b_used{};
    int safety_passed{}, safety_failed{};
    int tier_a_candidates{}, tier_b_candidates{};
    double tier_b_min_damage{-1};
    // v0.8.3 branch-objective audit counters. They count how often the beam
    // rebuilt a tactical view from its own simulator state.
    int branch_evaluations{}, branch_switches{}, focus_fire_nodes{};
    double budget_ms{};
    int horizon_frames{};
    double unknown_scale{1.0};
    bool feedback_fallback{};
    double elapsed_ms{};
    json to_json() const;
};
// A complete, independently serializable action sequence. `value` is the MPC
// composite score; `final_score` is the unmodified SimulationScore so callers
// can audit every component.
struct MpcSequence {
    std::vector<SimActionSegment> segments;
    std::vector<Vec> trajectory;
    SimulationScore final_score;
    double value{};
    double combat_value{};
    SafetyMetrics safety;
    bool emergency{};
    bool damage_aware{};
    // Best target and tactical mode computed from this sequence's own branch.
    uint32_t branch_target{};
    std::string branch_mode{"balanced"};
    uint64_t root_signature{};
    int horizon_frames{};
    int depth{};
    std::string source;
    // Tolerant identity used only for consistency-checked reuse. The exact
    // signature above is never relaxed for cache hits.
    uint32_t root_clock{}, root_room{};
    Vec root_player{};
    int root_health{};
    std::vector<MpcEnemyMeta> root_enemies;
    int total_frames() const;
    json to_json() const;
    static MpcSequence from_json(const json& value);
    bool save(const std::filesystem::path& path,std::string* error=nullptr) const;
    static std::optional<MpcSequence> load(const std::filesystem::path& path,
        std::string* error=nullptr);
};
struct MpcComparison {
    double value_delta{};
    int frames_delta{};
    bool same_first_action{};
    bool same_segments{};
    bool first_better{};
    json to_json() const;
};
MpcComparison compare_mpc_sequences(const MpcSequence& a,const MpcSequence& b);
struct MpcCandidateSummary {
    SimAction action;
    std::string source;
    bool gate_passed{};
    bool tier_b{};
    double value{}, combat_value{};
    BranchCombatSummary branch;
    SafetyMetrics safety;
    SimulationScore score;
    json to_json() const;
};
struct MpcPlan {
    bool available{}, timed_out{}, used_fallback{}, reused{}, overridden{};
    bool emergency{};
    Decision decision;                  // joint decision with the MPC first action
    JointPlan joint;                    // unchanged Top-K result
    MpcSequence sequence;               // best searched sequence
    CombatContext combat;               // root threat/target/window/aim assessment
    // Diagnostics for the first action's actual fire key. It is recomputed with
    // the native tear model so it can differ from the root aim's preferred key.
    PredictiveAimSolution shot;
    BranchCombatSummary branch;         // selected sequence's own tactical view
    SafetyMetrics safety;
    SimAction first;
    double value{};
    double baseline_value{};
    MpcSearchStats stats;
    std::vector<MpcCandidateSummary> candidates;
    // Scenario/profile audit for this frame. Empty when strategy profiles are
    // disabled or no snapshot was available.
    std::string strategy_profile;
    std::string scenario_primary;
    std::vector<std::string> scenario_tags;
    bool strategy_switched{};
    json strategy=json::object();
    // Reader-side anti-stalemate state for this frame.
    json progress=json::object();
    json arbitration=json::object();
    std::string reason;
    json to_json() const;
};
// The planner owns one TopKJointPlanner so the existing decision chain stays
// intact. `decide` reads that chain's result and snapshot, then performs a
// bounded beam search whose root is the same captured WorldStateSnapshot.
inline LookaheadConfig default_mpc_lookahead() {
    LookaheadConfig config;
    // MPC is itself the forward simulator. Running Top-K's shorter simulation
    // as well would spend the real-time budget twice for the same state.
    config.forward_simulation=false;
    config.top_k=4;
    config.seed_candidates=4;
    config.epochs=1;
    config.epoch_frames=6;
    return config;
}
class MpcCombatPlanner {
public:
    explicit MpcCombatPlanner(MpcConfig config={},
        LookaheadConfig lookahead=default_mpc_lookahead());
    ~MpcCombatPlanner();
    // Strategy profiles are opt-in. When enabled, the runtime classifies the
    // snapshot, selects/blends a profile and maps only the bounded strategy
    // parameters onto CombatConfig/MpcConfig. It never changes beam width,
    // horizon, branch count or a SafetyGate hard limit.
    void set_strategy_enabled(bool enabled);
    bool strategy_enabled() const;
    void set_strategy_profiles(std::vector<StrategyProfile> profiles);
    void set_strategy_runtime_config(StrategyRuntimeConfig config);
    const StrategyProfileRuntime* strategy_runtime() const { return strategy_.get(); }
    // Real Reader-side progress. The closed-loop controller updates this before
    // each plan; standalone decide() maintains its own tracker.
    void set_combat_progress(const CombatProgressState& progress) { progress_=progress; }
    const CombatProgressState& combat_progress() const { return progress_; }
    const CombatProgressTracker& progress_tracker() const { return progress_tracker_; }
    MpcPlan decide(const Frame& frame,bool attack_enabled=true,
        const MechanismFrame* mechanisms=nullptr);
    MpcPlan plan(const JointPlan& joint,const WorldStateSnapshot& root,
        bool attack_enabled=true);
    void apply_feedback(const PredictionFeedback& feedback);
    void clear_feedback();
    int horizon_frames() const;
    double unknown_radius_scale() const { return unknown_scale_; }
    bool forced_fallback() const { return forced_fallback_; }
    void reset();
    const MpcConfig& config() const { return config_; }
    const LookaheadConfig& lookahead_config() const { return base_.config(); }
    TopKJointPlanner& base() { return base_; }
    const TopKJointPlanner& base() const { return base_; }
    const std::vector<MpcSequence>& previous_sequences() const { return previous_; }
    // Exposed for tests and replay tools: build the joint root action set the
    // same way decide() does. When `combat` is supplied, its selected target's
    // predictive aim is added as a root action family.
    static std::vector<MpcRootCandidate> root_candidates(const JointPlan& joint,
        bool attack_enabled,const MpcConfig& config={},
        const CombatContext* combat=nullptr);
    const CombatIntelligence& combat_intelligence() const { return combat_; }
    CombatIntelligence& combat_intelligence() { return combat_; }
private:
    MpcConfig config_;
    LookaheadConfig lookahead_;
    TopKJointPlanner base_;
    WorldStateBridge bridge_;
    CombatIntelligence combat_;
    CombatProgressTracker progress_tracker_;
    CombatProgressState progress_;
    std::unique_ptr<StrategyProfileRuntime> strategy_;
    MpcConfig strategy_base_config_;
    std::vector<MpcSequence> previous_;
    int feedback_horizon_{};
    double unknown_scale_{1.0};
    bool forced_fallback_{};
    ForwardSimConfig sim_config() const;
    std::optional<MpcSequence> evaluate_sequence(const WorldStateSnapshot& root,
        const MpcSequence& sequence,bool danger_map,std::string* error=nullptr,
        const CombatContext* combat=nullptr,bool allow_damage_combat=false) const;
    static bool consistent(const MpcSequence& previous,const WorldStateSnapshot& root,
        const MpcConfig& config);
    static double root_uncertainty(const WorldStateSnapshot& root);
};
} // namespace gamebot
