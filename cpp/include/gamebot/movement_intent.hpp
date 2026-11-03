#pragma once
#include "mpc.hpp"
#include "temporal_reachability.hpp"
#include <string>

namespace gamebot {
// Phase 6.1 movement-only layer. It is deliberately independent of the MPC
// score: the evaluator reads the existing plan/snapshot diagnostics and emits a
// movement intent; the stabilizer only changes the move field. Fire, target,
// CombatIntelligence, SafetyGate, beam width and horizon are untouched.
enum class MovementIntent : uint8_t {
    hold,
    reposition,
    preemptive_dodge,
    escape
};
const char* movement_intent_name(MovementIntent value);

struct MovementIntentConfig {
    bool enabled{true};
    // Reposition is allowed only when one of these is exceeded. The values are
    // deliberately larger than the tiny 1e-9 comparisons in the MPC beam so a
    // marginal branch value cannot restart direction jitter.
    double reposition_threshold{8.0};
    double reposition_clearance_gain{5.0};
    double reposition_area_gain{0.04};
    double reposition_aim_gain{0.10};
    double reposition_distance_gain{18.0};
    double reposition_corner_gain{0.20};
    // Preemptive dodge starts before damage is required.
    double preemptive_horizon_frames{18.0};
    double preemptive_clearance{10.0};
    double dodge_threshold{2.0};
    double dodge_margin{4.0};
    // Real collision / current danger.
    double escape_clearance{2.0};
    double escape_horizon_frames{8.0};
    // Stabilizer.
    double switch_margin{6.0};
    int min_lock_frames{6};
    bool bypass_hold_when_danger{true};
    // Optional bounded temporal escape. The caller only runs it when the
    // evaluator reports escape; it is not part of every frame.
    bool allow_temporal_escape{true};
    TemporalReachabilityConfig escape_search{};
    MovementIntentConfig();
};

struct MovementIntentInput {
    const Frame* frame{};
    const Decision* decision{};
    const MpcPlan* plan{};
    const WorldStateSnapshot* snapshot{};
    // Optional existing diagnostics. No full TemporalReachability search is run
    // by this layer unless the caller explicitly supplies escape_reachability.
    const TemporalDanger* danger{};
    const TemporalReachabilityResult* escape_reachability{};
};

struct MovementIntentEvaluation {
    MovementIntent intent{MovementIntent::hold};
    Move requested_move{Move::stay};
    Move executed_move{Move::stay};
    bool movement_suppressed{};
    std::string suppression_reason;
    int direction_switch_count{};
    double predicted_movement_benefit{};
    double hold_benefit{};
    double threat_clearance{1e9};
    int projectiles_seen{};
    int damageable_projectiles{};
    double nearest_projectile_clearance{1e9};
    bool danger_now{};
    bool temporal_escape_used{};
    std::string reason;
    json to_json() const;
};

class MovementIntentEvaluator {
public:
    explicit MovementIntentEvaluator(MovementIntentConfig config={});
    const MovementIntentConfig& config() const { return config_; }
    void set_config(MovementIntentConfig config) { config_=config; }
    // Cheap evaluation from existing MPC candidates/snapshot data.
    MovementIntentEvaluation evaluate(const MovementIntentInput& input) const;
    // A caller that already ran a bounded TemporalReachability escape search
    // can apply its selected route to an existing escape evaluation.
    bool apply_temporal_escape(const TemporalReachabilityResult& reachability,
        MovementIntentEvaluation& evaluation) const;
    // True when the evaluator would choose escape; lets the GUI run the
    // bounded temporal escape search at most once per interval instead of on
    // every frame.
    bool requires_escape(const MovementIntentInput& input) const;
private:
    MovementIntentConfig config_;
};

class MovementStabilizer {
public:
    explicit MovementStabilizer(MovementIntentConfig config={});
    void reset();
    const MovementIntentConfig& config() const { return config_; }
    void set_config(MovementIntentConfig config) { config_=config; }
    MovementIntentEvaluation stabilize(const Frame& frame,
        MovementIntentEvaluation evaluation,bool danger_now);
    int direction_switch_count() const { return direction_switch_count_; }
    Move last_executed_move() const { return last_executed_move_; }
private:
    bool move_valid(const Frame& frame,Move move) const;
    MovementIntentConfig config_;
    Move locked_move_{Move::stay};
    Move last_executed_move_{Move::stay};
    double locked_benefit_{};
    int lock_age_{};
    bool locked_{};
    int direction_switch_count_{};
};
} // namespace gamebot
