#pragma once
#include "mpc.hpp"
#include <string>
#include <vector>
namespace gamebot {
// Offline synthetic closed-loop policies. `baseline` is the original Planner
// decision chain; `topk_joint` and `mpc` only add outer decision layers.
enum class BenchmarkPolicy : uint8_t { baseline, topk_joint, mpc };
struct BenchmarkScenario {
    std::string name;
    uint32_t seed{1};
    int ticks{600};
    int player_health{6};
    int gapers{2};
    int volley_period{40};  // 0 disables the seeded projectile schedule
    bool include_volleys{};
    int enemy_fire_period{0}; // 0 disables per-enemy intent-driven shots
    double enemy_speed{115};
    double enemy_projectile_speed{180};
    bool unknown_charge{};
    int unknown_charge_period{90};
    bool unknown_blast{};
    int unknown_blast_period{90};
};
struct PolicyMetrics {
    std::string policy;
    int ticks{};
    int hp_lost{};
    int deaths{};
    int damage_dealt{};
    int enemies_killed{};
    int shots{};
    int shot_hits{};
    int move_overrides{};
    int fire_overrides{};
    int intents_observed{};
    int virtual_threats_created{};
    int unknown_entities{};
    int uncertain_attacks{};
    int unknown_tracking_threats{};
    int unknown_attack_intents{};
    int unknown_emergency_frames{};
    int mpc_fallbacks{};
    int mpc_reused{};
    int mpc_emergency_frames{};
    int mpc_depth{};
    int mpc_nodes{};
    int mpc_simulations{};
    bool mpc_available{};
    double total_planning_ms{};
    double mean_planning_ms{};
    double max_planning_ms{};
    bool cleared{};
};
struct ScenarioComparison {
    BenchmarkScenario scenario;
    PolicyMetrics baseline;
    PolicyMetrics joint;
    PolicyMetrics mpc;
    bool deterministic{};
    bool determinism_checked{};
};
struct BenchmarkReport {
    std::vector<ScenarioComparison> scenarios;
    int total_ticks{};
    int seed_count{};
    bool synthetic{true};
    std::string evidence_scope;
};
PolicyMetrics run_policy_scenario(const BenchmarkScenario& scenario,bool joint);
PolicyMetrics run_policy_scenario(const BenchmarkScenario& scenario,
    BenchmarkPolicy policy);
BenchmarkReport run_lookahead_benchmark();
// Short, deliberately high-pressure comparison of the original Planner against
// the MPC layer. Deterministic, offline-only and never emits keyboard input.
BenchmarkReport run_mpc_pressure_benchmark(int ticks_override=0,
    int scenario_limit=0);
json comparison_json(const BenchmarkReport& report);
json mpc_pressure_json(const BenchmarkReport& report);
}
