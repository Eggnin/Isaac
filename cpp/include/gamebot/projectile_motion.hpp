#pragma once
#include "model.hpp"
#include <cstdint>

namespace gamebot {
// Named ProjectileFlags bits. The values come from the local J460 enum export
// (python/src/engine_enums.json / records/research/enums-public-latest.lua).
// They are kept as constants here so the motion model does not use bare shifts.
namespace projectile_flag {
constexpr uint64_t smart = 1ULL << 0;
constexpr uint64_t wiggle = 1ULL << 5;
constexpr uint64_t orbit_cw = 1ULL << 11;
constexpr uint64_t orbit_ccw = 1ULL << 12;
constexpr uint64_t fire = 1ULL << 15;
constexpr uint64_t any_height_entity_hit = 1ULL << 17;
constexpr uint64_t curve_left = 1ULL << 18;
constexpr uint64_t curve_right = 1ULL << 19;
constexpr uint64_t turn_horizontal = 1ULL << 20;
constexpr uint64_t sine_velocity = 1ULL << 21;
constexpr uint64_t mega_wiggle = 1ULL << 22;
constexpr uint64_t sawtooth_wiggle = 1ULL << 23;
constexpr uint64_t move_to_parent = 1ULL << 26;
constexpr uint64_t accelerate = 1ULL << 27;
constexpr uint64_t decelerate = 1ULL << 28;
constexpr uint64_t continuum = 1ULL << 30;
constexpr uint64_t cant_hit_player = 1ULL << 31;
constexpr uint64_t change_flags_after_timeout = 1ULL << 32;
constexpr uint64_t change_velocity_after_timeout = 1ULL << 33;
constexpr uint64_t stasis = 1ULL << 34;
constexpr uint64_t accelerate_ex = 1ULL << 37;
constexpr uint64_t anti_gravity = 1ULL << 40;
constexpr uint64_t bounce = 1ULL << 42;
constexpr uint64_t bounce_floor = 1ULL << 43;
constexpr uint64_t smart_perfect = 1ULL << 48;
constexpr uint64_t accelerate_to_position = 1ULL << 52;
constexpr uint64_t orbit_parent = 1ULL << 56;
constexpr uint64_t fadeout = 1ULL << 57;
} // namespace projectile_flag

struct ProjectileMotionContext {
    const Grid* grid{};
    int room_type{};
    uint32_t clock{};
    Vec player_pos{}, player_vel{};
    const Entity* player{};
    // Entity lookup is a plain function pointer to avoid std::function in the
    // per-frame simulation loop. `lookup_user` is either Frame.entities or the
    // simulator world's entity list.
    void* lookup_user{};
    const Entity* (*lookup)(const void*, uint32_t){};
    const Entity* find(uint32_t address) const {
        return lookup && address ? lookup(lookup_user, address) : nullptr;
    }
};

struct ProjectileMotionState {
    Entity entity;
    Vec pos{}, vel{};
    double height{};
    double falling{};
    bool damageable{true};
    bool jumped{};
    // True when a native stage transition changed flags/speed this tick.
    bool stage_changed{};
};

struct ProjectileMotionConfig {
    bool simulate_height{true};
    double height_damage_floor{-5.0};
    double height_anti_gravity_floor{-50.0};
    double default_speed_scale{30.0};
    // Planner wants to stop its threat path at the native height gate; the
    // forward simulator keeps the object and only suppresses damage until it
    // descends again.
    bool stop_on_height_gate{false};
};

// Advances one native 30 Hz projectile tick using the motion primitives already
// recovered by the Planner. Returns false when the projectile no longer needs
// to be predicted as a moving threat. `state.damageable` is separate: a
// projectile can be alive but temporarily inside a non-damaging height band.
bool advance_projectile(ProjectileMotionState& state,
    const ProjectileMotionContext& context, int tick, double turn = 0.0,
    const ProjectileMotionConfig& config = {});

bool projectile_can_damage(const Entity& entity, double height, int room_type);
double projectile_speed_factor(const Entity& entity, double age);
} // namespace gamebot
