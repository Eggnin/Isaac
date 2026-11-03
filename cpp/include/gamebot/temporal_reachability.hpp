#pragma once
#include "forward_sim.hpp"
#include <cstdint>
#include <string>
#include <vector>

namespace gamebot {
// Independent, branch-conditioned time-expanded reachability. This is an
// offline/diagnostic layer: it never feeds the MPC beam, SafetyGate or combat
// weights. Each retained state owns its own ForwardSimulator branch, so enemy
// chase direction, projectile motion and hazard timing cannot be shared between
// two different player histories.
struct TemporalReachabilityConfig {
    int horizon_frames{60};
    int step_frames{6};             // one expanded layer = this many frames
    int open_neighbors{5};          // same open-floor notion as SafetyGate mobility
    int max_states_per_layer{24};
    int max_total_states{1024};
    int max_layers{16};
    double max_seconds{0.25};       // <=0 disables the wall-clock guard
    size_t max_memory_bytes{8u*1024u*1024u};
    int max_representative_paths{4};
    TemporalDangerConfig danger{};
    TemporalPathAssessmentConfig path{};
};

struct TemporalReachabilityState {
    int index{-1};
    int parent{-1};
    int layer{};
    int frame{};
    Vec position{};
    Vec velocity{};
    double time{};
    uint64_t world_signature{};
    int first_action{-1};
    SimAction action{};
    int frames{};
    double path_risk{};
    double damage_taken{};
    int damage_events{};          // cumulative for this branch
    int segment_damage_events{};  // this layer only
    double root_distance{};       // net displacement from the root position
    int open_neighbors{};         // same open-floor notion as SafetyGate mobility
    uint8_t danger_sources{};     // cumulative DangerSource bits
    uint8_t warning_sources{};
    uint8_t segment_danger_sources{};
    uint8_t segment_warning_sources{};
    bool safe{}, warning{}, danger{}, static_blocked{}, unknown{}, dead{};
    bool physically_reachable{};
    bool has_future_move{};
};

struct TemporalReachabilityLayer {
    int layer{};
    int frame{};
    int expanded_states{};
    int reachable_states{};               // safe states
    int physical_reachable_states{};      // non-static, non-dead states
    int warning_states{};
    int blocked_by_dynamic_danger{};
    int blocked_by_static_terrain{};
    int unknown_states{};
    int dead_end_states{};
    int damage_events{};
    int reachable_cells{};                // safe cells
    int physical_reachable_cells{};
    int mobility_routes{};
    int danger_enemy_states{};
    int danger_projectile_states{};
    int danger_hazard_states{};
    int danger_unknown_states{};
    int warning_enemy_states{};
    int warning_projectile_states{};
    int warning_hazard_states{};
    int warning_unknown_states{};
    int pruned_states{};
    int pruned_safe{};
    int pruned_warning{};
    int pruned_danger{};
    int pruned_static{};
    int pruned_unknown{};
    int pruned_danger_enemy{};
    int pruned_danger_projectile{};
    int pruned_danger_hazard{};
    int pruned_danger_unknown{};
    double reachable_area{};
    double physical_reachable_area{};
    double time_to_open{-1};
    std::vector<int> earliest_arrival_frame;            // safe arrival
    std::vector<int> earliest_physical_arrival_frame;   // physical arrival
    json to_json() const;
};

struct TemporalReachabilityResult {
    bool valid{}, timed_out{}, truncated{}, memory_limited{};
    int root_frame{};
    int horizon_frames{};
    int layers_requested{};
    int layers_completed{};
    uint64_t root_signature{};
    int total_states{};
    int expanded_states{};
    int pruned_states{};
    int merged_states{};
    // Dedupe audit: candidates that shared a world signature in the same layer,
    // and cells where several genuinely different worlds were kept.
    int duplicate_world_candidates{};
    int merged_same_world_same_route{};
    int kept_same_world_distinct_route{};
    int shared_world_signature_groups{};
    int distinct_world_same_cell{};
    int static_walkable_cells{};
    int static_reachable_cells{};
    int physical_reachable_cells{};
    int temporal_reachable_cells{};       // safe union (kept for compatibility)
    int safe_reachable_cells{};
    int physical_unreached_cells{};       // static reachable but never physical
    int physically_reachable_unsafe_cells{};
    int temporal_only_cells{};
    int physical_only_cells{};
    int static_only_cells{};
    int pruned_safe{};
    int pruned_warning{};
    int pruned_danger{};
    int pruned_static{};
    int pruned_unknown{};
    int pruned_danger_enemy{};
    int pruned_danger_projectile{};
    int pruned_danger_hazard{};
    int pruned_danger_unknown{};
    std::vector<int> temporal_only_cell_list;
    std::vector<int> physical_only_cell_list;
    std::vector<int> physically_reachable_unsafe_cell_list;
    std::vector<int> static_only_cell_list;
    int damage_events{};
    size_t estimated_memory_bytes{};
    double elapsed_ms{};
    std::string reason;
    std::vector<TemporalReachabilityLayer> layers;
    std::vector<TemporalReachabilityState> states;
    std::vector<TemporalTrajectory> representative_trajectories;
    std::vector<TemporalPathAssessment> representative_assessments;
    json to_json() const;
};

TemporalReachabilityResult search_temporal_reachability(
    const ForwardSimulator& root, TemporalReachabilityConfig config={});

// Offline trajectory-quality diagnostics. The same initial state and the same
// ForwardSimulator settings must be used when comparing routes.
struct TrajectoryDiagnosticsConfig {
    double heading_threshold_degrees{30.0};
    double movement_epsilon{0.5};
    int repeat_window_frames{60};
};

struct TrajectoryDiagnostics {
    bool valid{};
    int frames{};
    double duration{};
    double trajectory_length{};
    double net_displacement{};
    double net_displacement_ratio{};
    int heading_change_count{};
    double trajectory_curvature{};
    // Action-level repetition: weighted by segment frames. A high dominant
    // share or a long same-move run is the "keeps returning the same movement"
    // symptom that trajectory geometry alone can miss.
    int action_segments{};
    int max_same_move_run{};
    double dominant_move_share{};
    double orbit_radius{};
    double orbit_radius_min{};
    double orbit_radius_max{};
    double enemy_separation_mean{};
    double enemy_separation_min{};
    double enemy_separation_start{};
    double enemy_separation_end{};
    double enemy_separation_change{};
    double minimum_clearance{1e9};
    int damage_events{};
    double damage_taken{};
    double reachable_area_start{};
    double reachable_area_end{};
    double reachable_area_growth{};
    double reachable_area_min{};
    double reachable_area_max{};
    int repeat_visit_count{};
    double enemy_hp_start{};
    double enemy_hp_end{};
    double enemy_hp_drop{};
    bool player_dead{};
    std::string reason;
    json to_json() const;
};

TrajectoryDiagnostics analyze_trajectory(const ForwardSimulator& root,
    const std::vector<SimActionSegment>& plan,
    TrajectoryDiagnosticsConfig config={});

// Which safe leaf to expose from a temporal reachability tree. `safest` keeps
// the deepest safe route with the least risk; `escape` also requires depth but
// then prefers the largest displacement from the root. They are deliberately
// different so callers can see whether a local safe pocket suppressed a longer
// escape.
enum class TemporalRoutePolicy : uint8_t { safest, escape };
const char* temporal_route_policy_name(TemporalRoutePolicy value);

struct TemporalRouteSelection {
    bool found{};
    bool safe{};
    TemporalRoutePolicy policy{TemporalRoutePolicy::safest};
    int state_index{-1};
    int layer{};
    int frame{};
    double root_distance{};
    int open_neighbors{};
    double path_risk{};
    int damage_events{};
    std::vector<SimActionSegment> plan;
    json to_json() const;
};
// When no fully safe leaf exists, `allow_unsafe` lets the caller pick the
// lowest-risk warning/danger leaf instead of falling back to another planner.
// The default false keeps Phase 4 diagnostics unchanged.
TemporalRouteSelection select_temporal_route(
    const TemporalReachabilityResult& result, TemporalRoutePolicy policy,
    bool allow_unsafe=false);

// One plan evaluated from one explicit root. `trajectory` and `temporal` are
// produced by independent branch simulations of the same plan, so a mismatch
// between collision events is visible instead of hidden by a shared map.
struct TemporalRouteEvaluationConfig {
    TemporalDangerConfig danger{};
    TrajectoryDiagnosticsConfig diagnostics{};
};
struct TemporalRouteEvaluation {
    bool valid{};
    int total_frames{};
    int branch_damage_events{};
    bool collision_consistent{};
    TrajectoryDiagnostics trajectory;
    TemporalPathAssessment temporal;
    json to_json() const;
};
TemporalRouteEvaluation evaluate_temporal_route(const ForwardSimulator& root,
    const std::vector<SimActionSegment>& plan,
    TemporalRouteEvaluationConfig config={});

struct TemporalRouteComparisonConfig {
    TemporalDangerConfig danger{};
    TrajectoryDiagnosticsConfig diagnostics{};
    // 0 = compare both routes over min(mpc_frames, temporal_frames). A positive
    // value caps the common horizon while never extending a shorter route.
    int max_frames{};
};
struct TemporalRouteComparison {
    bool valid{};
    bool temporal_available{};
    int compared_frames{};
    int mpc_total_frames{};
    int temporal_total_frames{};
    TemporalRouteEvaluation mpc;
    TemporalRouteEvaluation temporal;
    TemporalRouteSelection selection;
    int physical_reachable_cells{};
    int safe_reachable_cells{};
    int physically_reachable_unsafe_cells{};
    int temporal_only_cells{};
    bool mpc_route_danger{};
    bool temporal_route_danger{};
    bool temporal_safe{};
    bool escape_outside_mpc{};
    double damage_delta{};          // mpc - temporal (positive = temporal better)
    double danger_frame_delta{};    // mpc - temporal (positive = temporal better)
    double displacement_delta{};    // temporal - mpc
    std::string reason;
    json to_json() const;
};
// `reachability` is optional and only supplies area/audit fields; the route
// comparison itself never feeds an MPC score, beam, weight or SafetyGate.
TemporalRouteComparison compare_temporal_routes(const ForwardSimulator& root,
    const std::vector<SimActionSegment>& mpc_plan,
    const std::vector<SimActionSegment>& temporal_plan,
    const TemporalReachabilityResult* reachability=nullptr,
    TemporalRouteComparisonConfig config={},
    const TemporalRouteSelection* selection=nullptr);
} // namespace gamebot
