#pragma once
#include "forward_sim.hpp"
#include <string>
#include <vector>

namespace gamebot {
// Separate the survival decision from tactical preference.
//
// The gates in this file answer one question only: can the player still avoid
// contact from the current simulated state? Attack alignment, target choice and
// position preference are never allowed to turn an unsafe candidate into a
// "good" one. The metrics are deliberately computed from the simulator state,
// not from a second game-memory reader.
//
// The four horizons are independent on purpose:
//   * collision_horizon_frames  - hard gate / immediate damage
//   * clearance_horizon_frames  - local danger density around the landing point
//   * escape_horizon_frames     - local exit probe (mobility signal only)
//   * laser_warning_frames      - slow/telegraphed attacks that must be seen early
//
// Defaults are expressed in this project's 60 Hz simulator frames and are
// configurable. They are not copied from a Touhou game and the room boundary is
// measured from the Isaac room grid, not from a fixed playfield rectangle.
//
// Keep two questions separate:
//   * `safe` / the hard gate: will this branch actually take contact damage?
//   * mobility metrics (escape_directions, reachable_area, corner_risk, ...):
//     how much room does the player still have? These are preferences used by
//     Emergency ordering, never a requirement for a branch to be safe.
// Static BFS connectivity uses walls, rock, room shape and native danger cells.
// Moving enemies/projectiles are dynamic threats and are scored through density,
// encirclement and escape probes instead of deleting static floor from the map.
struct SafetyGateConfig {
    bool enabled{true};
    int collision_horizon_frames{18};   // 0.30 s at 60 Hz
    int clearance_horizon_frames{12};   // 0.20 s
    int escape_horizon_frames{18};      // 0.30 s
    int laser_warning_frames{42};       // 0.70 s
    double clearance_radius{96.0};
    double boundary_margin{56.0};
    double safe_margin{6.0};
    double density_reference{6.0};
    // A projectile whose native change/turn fields are populated is not
    // modelled as a straight line. The safety map expands its footprint instead
    // of inventing a turn direction.
    double uncertain_projectile_margin{48.0};
    // Path-level mobility. escape_directions alone only says that one direction
    // is clear now; the static BFS measures whether that direction reaches open
    // floor and whether the position is a dead end.
    int mobility_cells{4};
    int mobility_open_neighbors{5};
};

struct SafetyMetrics {
    // `safe` is a collision/damage statement: no current danger geometry and no
    // hit or cumulative damage in this branch. Mobility fields below are kept
    // separate so Emergency ordering can prefer more room without turning a
    // low-mobility position into a hard failure.
    bool evaluated{}, in_danger{}, safe{};
    int horizon_frames{};
    int first_hit_frame{-1};
    int escape_directions{};
    int special_projectiles{};
    int uncertain_maneuvers{};
    double min_clearance{1e9};
    double local_density{};
    double available_area{1};
    double boundary_clearance{1e9};
    double laser_pressure{};
    double maneuverability{};
    // v0.9.1.1 path-level anti-corner metrics. `corner_risk` is the combined
    // penalty used by the MPC score; the raw components remain visible for
    // review and tests.
    int reachable_cells{}, local_walkable_cells{}, mobility_routes{};
    double reachable_area{1};
    double time_to_open{};
    double exit_block_risk{};
    double encirclement_risk{};
    double dead_end_risk{};
    double corner_risk{};
    json to_json() const;
};

class SafetyGate {
public:
    explicit SafetyGate(SafetyGateConfig config = {}) : config_(config) {}
    // `events` are the events produced by the segment(s) that led to `world`.
    // They locate the first damage frame; `damage_taken` is the branch's
    // cumulative simulated damage, because a caller that consumes events per
    // segment would otherwise forget earlier hits. A missing event list never
    // upgrades an uncertain projectile to "safe".
    SafetyMetrics assess(const SimWorld& world,
        const std::vector<SimEvent>& events = {}, int elapsed_frames = 0,
        double damage_taken = 0.0) const;
    // A gate pass still requires the caller to verify that the branch has
    // survived the whole collision horizon without taking damage.
    bool passed(const SafetyMetrics& metrics, int elapsed_frames) const;
    const SafetyGateConfig& config() const { return config_; }
    void set_config(SafetyGateConfig config) { config_ = config; }
private:
    SafetyGateConfig config_;
};

// Exposed for tests, replay tools and session review. This is the same function
// SafetyGate::assess calls; it does not read the game or create keyboard output.
SafetyMetrics evaluate_safety(const SimWorld& world,
    const SafetyGateConfig& config = {}, const std::vector<SimEvent>& events = {},
    int elapsed_frames = 0, double damage_taken = 0.0);
} // namespace gamebot
