#pragma once
#include "forward_sim.hpp"
#include "mpc.hpp"
#include "temporal_reachability.hpp"
#include <cstdint>
#include <string>
#include <vector>

namespace gamebot {
// Phase 5 counterfactual closed-loop validation. Each policy owns a separate
// ForwardSimulator branch; enemies chase that branch's actual player movement.
// The MPC itself is never modified and is never fed a temporal reachability
// result. Temporal policies only replace the movement command at each decision
// epoch; the fire command comes from the same unchanged MPC root decision.
enum class CounterfactualPolicy : uint8_t {
    original_mpc,
    temporal_safest,
    temporal_escape
};
const char* counterfactual_policy_name(CounterfactualPolicy value);

struct PolicyRunMetrics {
    std::string policy;
    int steps{}, frames{}, ticks{};
    bool player_dead{}, cleared{};
    int hp_lost{}, damage_events{};
    double damage_taken{};
    int damage_dealt{}, kills{}, shots{}, hits{};
    double dps{};
    double initial_enemy_hp{}, final_enemy_hp{}, enemy_hp_drop{};
    double trajectory_length{}, net_displacement{}, net_displacement_ratio{};
    int heading_change_count{}, repeat_visit_count{};
    double trajectory_curvature{};
    int action_segments{}, max_same_move_run{};
    double dominant_move_share{};
    double min_enemy_distance{1e9}, min_clearance{1e9};
    double reachable_area_start{1}, reachable_area_min{1}, reachable_area_end{1};
    int escape_directions_min{99}, dead_end_steps{}, encirclement_steps{};
    double encirclement_risk_max{};
    double total_planning_ms{}, mpc_ms{}, temporal_ms{};
    double mean_planning_ms{}, max_planning_ms{};
    size_t peak_temporal_memory_bytes{};
    int temporal_routes_found{}, temporal_unsafe_routes{}, fallbacks{};
    json to_json() const;
};

struct PolicyComparison {
    std::string scenario;
    std::string scenario_kind;
    int seed{};
    bool synthetic{true};
    uint64_t initial_signature{};
    bool initial_signature_consistent{};
    PolicyRunMetrics original_mpc;
    PolicyRunMetrics temporal_safest;
    PolicyRunMetrics temporal_escape;
    json to_json() const;
};

struct PolicyAggregate {
    std::string policy;
    int runs{}, steps{}, frames{}, deaths{}, cleared{};
    int damage_events{}, damage_dealt{}, kills{}, shots{}, hits{}, fallbacks{};
    int temporal_unsafe_routes{};
    double damage_taken{};
    double dps{};
    double trajectory_length{};
    double net_displacement_ratio{};
    double trajectory_curvature{};
    double repeat_visits{};
    double min_clearance{1e9};
    double min_enemy_distance{1e9};
    double reachable_area_min{1};
    int escape_directions_min{99};
    double total_planning_ms{}, mean_planning_ms{}, max_planning_ms{};
    size_t peak_temporal_memory_bytes{};
    json to_json() const;
};

struct PolicyValidationConfig {
    int seeds{3};
    int max_steps{80};
    int step_frames{6};
    int scenario_limit{0};       // 0 = all eight required scenarios
    bool attack_enabled{true};
    ForwardSimConfig simulation{};
    MpcConfig mpc{};
    LookaheadConfig lookahead{};
    TemporalReachabilityConfig temporal{};
    PolicyValidationConfig();
};

struct PolicyValidationReport {
    bool valid{};
    bool synthetic{true};
    std::string evidence_scope;
    int scenario_count{}, seed_count{}, runs{};
    double elapsed_ms{};
    std::vector<PolicyComparison> comparisons;
    std::vector<PolicyAggregate> aggregates;
    json to_json() const;
};

PolicyValidationReport run_counterfactual_policy_validation(
    const PolicyValidationConfig& config={});
} // namespace gamebot
