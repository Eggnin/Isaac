#pragma once
#include "model.hpp"
#include "world_state.hpp"
#include <cstdint>
#include <string>
#include <unordered_map>
#include <unordered_set>

namespace gamebot {
struct CombatContext;
// Real Reader-side combat progress. Nothing in this tracker consumes a
// simulator score: hit/kill progress exists only when the captured enemy HP
// actually falls, or an enemy actually disappears after having HP.
enum class CombatProgressKind : uint8_t {
    unknown = 0,
    progressing,
    no_target,
    not_firing,
    shot_no_hit,
    invulnerable_target,
    no_angle,
    out_of_range,
    blocked,
    target_lost
};
const char* combat_progress_kind_name(CombatProgressKind kind);
CombatProgressKind combat_progress_kind_from_name(const std::string& name);

struct CombatProgressConfig {
    int stall_frames{90};       // no real enemy-HP progress
    int no_hit_frames{30};      // shots without a real HP change
    int no_fire_frames{30};
    int switch_frames{180};     // unreachable target is held this long
    double hp_epsilon{1e-6};
};

struct CombatProgressState {
    bool valid{}, stalled{}, attack_stalled{}, need_reposition{}, need_target_switch{};
    bool target_invalid{}, target_invulnerable{}, target_unreachable{};
    int frames_since_progress{}, frames_since_hit{}, frames_since_shot{};
    int shots{}, hits{}, kills{}, damage_events{}, enemy_count{};
    // v0.9.1.1.2 evidence counters. `kills` is an alias of confirmed_kills.
    // Entity loss without a death/lifecycle confirmation is never a kill.
    int fire_commands{}, projectile_spawns{}, target_hp_deltas{};
    int confirmed_kills{}, entity_lost{}, unconfirmed_kills{};
    int phase_transitions{};
    double enemy_hp_lost{}, progress_ratio{};
    // Projectile-level attack diagnostics. `projectile_hits` is the number of
    // real friendly projectiles that were geometrically associated with an
    // observed enemy HP drop; `projectile_misses` is the number that expired
    // without such an association. Neither is inferred from the fire key.
    int projectile_hits{}, projectile_misses{};
    double attributed_damage{}, elapsed_seconds{}, damage_per_second{};
    double projectile_hit_rate{};
    // Most recent launch diagnostics (target, positions, velocity, intercept,
    // travel frames). Written when a real friendly projectile is observed.
    json last_shot=json::object();
    uint32_t target{};
    CombatProgressKind kind{CombatProgressKind::unknown};
    std::string reason;
    json to_json() const;
};

// The observation is assembled by the caller from the live CombatContext and
// the selected decision. The tracker never reads game memory itself.
struct CombatProgressObservation {
    bool combat_valid{}, attack_enabled{true};
    Fire fire{Fire::none};
    uint32_t target{};
    bool target_damageable{}, target_invulnerable{};
    bool aim_valid{}, predicted_hit{}, line_clear{};
    double target_distance{1e9};
    double tear_range{260};
    // Launch diagnostics copied from the predictive aim solution. They are
    // attached to the next observed friendly projectile, so the log describes
    // the shot that was actually fired instead of only the requested key.
    Vec player_position{}, target_position{}, target_velocity{};
    Vec spawn_position{}, projectile_velocity{}, intercept_position{};
    int travel_frames{-1};
};

CombatProgressObservation combat_progress_observation(const CombatContext& context,
    Fire fire, bool attack_enabled);

class CombatProgressTracker {
public:
    explicit CombatProgressTracker(CombatProgressConfig config = {})
        :config_(config) {}
    void reset();
    void observe(const WorldStateSnapshot& snapshot,
        const CombatProgressObservation& observation);
    const CombatProgressState& state() const { return state_; }
    const CombatProgressConfig& config() const { return config_; }
    void set_config(CombatProgressConfig config) { config_ = config; }
private:
    CombatProgressConfig config_;
    CombatProgressState state_;
    struct TrackedProjectile {
        Vec pos{}, vel{};
        double radius{};
        uint32_t target{}, spawn_clock{};
        bool hit{};
    };
    std::unordered_map<uint32_t,double> previous_hp_;
    std::unordered_map<uint32_t,int> previous_phase_;
    std::unordered_map<uint32_t,TrackedProjectile> previous_friendly_projectiles_;
    json pending_shot_=json::object();
    uint32_t last_clock_{}, last_room_{};
    int previous_health_{-1};
    bool initialized_{};
    void update_kind(const WorldStateSnapshot& snapshot,
        const CombatProgressObservation& observation,bool progress_this_frame,
        bool player_damaged);
};
} // namespace gamebot
