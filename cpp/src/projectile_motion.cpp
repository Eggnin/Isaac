#include "gamebot/projectile_motion.hpp"
#include <algorithm>
#include <cmath>

namespace gamebot {
namespace {
using namespace projectile_flag;

double native_speed_factor(const Entity& entity, double value) {
    const double scale = entity.speed_multiplier;
    return scale == 1 ? value : value / (value + scale - value * scale);
}

void apply_clock(ProjectileMotionState& state, Vec& velocity, double previous_age,
                 double age) {
    auto& entity = state.entity;
    const int period = entity.projectile_change_timeout;
    const bool change = period <= 0 || int(age / period) != int(previous_age / period);
    if (!change || age <= 0) return;
    if (entity.projectile_flags & change_velocity_after_timeout) {
        velocity = velocity.unit() * (entity.projectile_change_velocity * 30.0);
        // A timeout flag set can be a one-shot velocity change unless the
        // change mask explicitly keeps both change bits.
        if (((entity.projectile_change_flags >> 32) & 3) != 3)
            entity.projectile_flags &= ~change_velocity_after_timeout;
        state.stage_changed = true;
    }
    if (entity.projectile_flags & change_flags_after_timeout) {
        std::swap(entity.projectile_flags, entity.projectile_change_flags);
        state.stage_changed = true;
    }
}

void bounce_from_grid(const ProjectileMotionContext& context, Entity& entity,
                      Vec& point, Vec& velocity, double height) {
    if (!(entity.projectile_flags & bounce) || !context.grid) return;
    Vec normal{};
    const int threshold = height < -50 ? 4 : 2;
    for (const Vec sample : entity.grid_contacts) {
        if (context.grid->native_collision_at(point + sample) >= threshold)
            normal = normal + sample;
    }
    normal = normal.unit();
    const double outward = normal.dot(velocity);
    if (outward > 0) {
        velocity = velocity - normal * (2 * outward);
        point = point + velocity / 30;
    }
}

void bounce_from_floor(const ProjectileMotionContext& context, const Entity& entity,
                       Vec point, double& height, double& falling) {
    if (!(entity.projectile_flags & bounce_floor) || !context.grid) return;
    const double plane = context.grid->native_collision_at(point) >= 2 ? -50 : -5;
    if (height > plane && falling > 2) {
        height = plane;
        falling = falling * -2;
    }
}

void steer_projectile(const ProjectileMotionContext& context, const Entity& entity,
                      Vec point, Vec& velocity, double time) {
    if (!(entity.projectile_flags & (smart | smart_perfect))) return;
    Vec target = context.player_pos + context.player_vel * time;
    Vec target_velocity = context.player_vel / 60;
    if (const Entity* aimed = context.find(entity.target)) {
        target = aimed->pos + aimed->vel * time;
        target_velocity = aimed->vel / (aimed->type == 1 ? 60 : 30);
    }
    if (entity.projectile_flags & smart_perfect) {
        const double speed = std::max(.03, velocity.norm());
        velocity = (velocity + (target - point) * 3).unit() * speed;
        return;
    }
    if (distance(target + target_velocity * .5, point) >= 100) return;
    const double strength = entity.projectile_homing_strength;
    velocity = velocity + (target - point).unit() *
        (42 * strength * entity.speed_multiplier);
    const double damping = 1 - .08 * strength;
    const double scale = entity.speed_multiplier;
    velocity = velocity * (scale == 1 ? damping :
        damping / (damping + scale - damping * scale));
}

bool orbit_projectile(const ProjectileMotionContext& context, Entity& entity,
                      Vec point, Vec& velocity, double time) {
    if (!(entity.projectile_flags & (orbit_cw | orbit_ccw))) return false;
    const Entity* parent = nullptr;
    if (entity.projectile_flags & orbit_parent)
        parent = context.find(entity.parent);
    Vec center = entity.target_pos;
    if (parent) {
        velocity = velocity - entity.projectile_parent_velocity;
        center = parent->pos + parent->vel * time;
    }
    const Vec radial = point - center;
    Vec tangent{-radial.y, radial.x};
    if (entity.projectile_flags & orbit_ccw) tangent = tangent * -1;
    const double correction = entity.projectile_orbit_distance > 0 ?
        .5 * std::clamp(1 - radial.norm() / entity.projectile_orbit_distance,
            -1.0, 1.0) : .5;
    velocity = (radial * correction + tangent).unit() * velocity.norm();
    if (parent) {
        // Native orbit velocity is relative to the previous parent velocity.
        // Player Entity::Velocity uses half the Reader's 60 Hz conversion.
        entity.projectile_parent_velocity = parent->vel * (parent->type == 1 ? .5 : 1);
        velocity = velocity + entity.projectile_parent_velocity;
        entity.target_pos = center;
    }
    return true;
}

bool direct_projectile(const ProjectileMotionContext& context, Entity& entity,
                       Vec point, Vec& velocity, double& height, double& falling,
                       double time, double age) {
    if (entity.projectile_flags & move_to_parent) {
        if (const Entity* parent = context.find(entity.parent)) {
            const Vec delta = parent->pos + parent->vel * time - point;
            const double speed = velocity.norm();
            velocity = delta.unit() * speed;
            if (delta.norm() < speed / 30) return false;
        }
    }
    if (entity.projectile_flags & accelerate_to_position) {
        const Vec delta = entity.target_pos - point;
        if (delta.norm() < 10) return false;
        velocity = velocity + delta.unit() *
            (30 * entity.projectile_homing_strength * entity.speed_multiplier);
        if (age < 150) {
            falling = 0;
            height = -15;
        }
    }
    return true;
}
} // namespace

double projectile_speed_factor(const Entity& entity, double age) {
    double factor = 1;
    const double accel = std::abs(entity.projectile_accel) > 1e-9 ?
        entity.projectile_accel : 1.0;
    if (entity.projectile_flags & accelerate)
        factor *= native_speed_factor(entity, accel);
    if (entity.projectile_flags & decelerate)
        factor *= native_speed_factor(entity, 1 / accel);
    if (entity.projectile_flags & accelerate_ex)
        factor *= native_speed_factor(entity,
            1 + (accel - 1) * std::min(1.0, age / 20));
    return factor;
}

bool projectile_can_damage(const Entity& entity, double height, int room_type) {
    return !(entity.projectile_flags & (cant_hit_player | fadeout)) &&
        !(entity.flags & (1ULL << 5)) &&
        (room_type == 16 || !entity.height_known || height >= -50 ||
         (entity.projectile_flags & any_height_entity_hit));
}

bool advance_projectile(ProjectileMotionState& state,
                        const ProjectileMotionContext& context, int tick,
                        double turn, const ProjectileMotionConfig& config) {
    auto& entity = state.entity;
    const double previous_age = entity.projectile_age;
    const double age = previous_age + std::max(0.01, entity.speed_multiplier);
    const double time = double(tick) / 30.0;
    entity.projectile_age = age;
    state.damageable = true;
    state.stage_changed = false;
    state.jumped = false;
    // Keep the native position/velocity view coherent for lookups and for the
    // native motion primitive.
    entity.pos = state.pos;
    entity.vel = state.vel;
    advance_native_entity_motion(entity, state.pos, state.vel);

    if (entity.projectile_flags & stasis) {
        const int period = entity.projectile_change_timeout;
        const bool release = !entity.parent ||
            ((entity.projectile_flags & change_flags_after_timeout) &&
             context.clock + uint32_t(tick) > uint32_t(std::max(0, entity.birth)) &&
             (period <= 0 || int(age / period) != int(previous_age / period)));
        if (release) {
            const double angle = entity.projectile_curve * pi / 180.0;
            state.vel = Vec{std::cos(angle), std::sin(angle)} *
                (30 * entity.projectile_change_velocity);
            entity.projectile_curve = .015;
            state.stage_changed = true;
        } else if (const Entity* parent = context.find(entity.parent)) {
            const Vec previous_parent = parent->pos + parent->vel * (time - 1.0 / 30);
            const Vec radial = state.pos + state.vel / 30 - previous_parent;
            const double radius = radial.norm();
            if (radius > 0) {
                entity.projectile_curve = std::atan2(radial.y, radial.x) * 180 / pi;
                const Vec relative = state.vel - entity.target_pos * 30;
                const Vec correction = radial.unit() * ((50 - radius) * 3);
                const Vec parent_velocity = parent->vel * (parent->type == 1 ? .5 : 1);
                state.vel = relative + (correction - relative) * .3 + parent_velocity;
                entity.target_pos = parent_velocity / 30;
            }
            state.height += (-23 - state.height) * .4;
            state.damageable = projectile_can_damage(entity, state.height,
                context.room_type);
            // Held STASIS returns before ordinary homing, orbit, gravity and
            // timed-flag finalization; only the release continues.
            return true;
        }
    }
    if (entity.projectile_flags & continuum) {
        const Vec wrapped = context.grid ?
            context.grid->wrapped_position(state.pos, -100) : state.pos;
        state.jumped = wrapped.x != state.pos.x || wrapped.y != state.pos.y;
        state.pos = wrapped;
    }
    steer_projectile(context, entity, state.pos, state.vel, time);
    const bool orbit = orbit_projectile(context, entity, state.pos, state.vel, time);
    if (entity.projectile_flags & (curve_left | curve_right)) {
        double step = (state.vel.norm() / 30) * entity.projectile_curve *
            entity.speed_multiplier;
        if (entity.projectile_flags & curve_left) step = -step;
        state.vel = rotated(state.vel, std::atan(step));
    } else if (!orbit && !(entity.projectile_flags &
        (sawtooth_wiggle | smart_perfect | move_to_parent |
         accelerate_to_position | turn_horizontal | smart))) {
        state.vel = rotated(state.vel, turn / 30);
    }
    if ((entity.projectile_flags & turn_horizontal) && context.grid &&
        state.pos.x > context.grid->native_min.x - 120 &&
        state.pos.x < context.grid->native_max.x + 120) {
        if (context.player) {
            const Vec delta = context.player->pos + context.player->vel * time - state.pos;
            const double vertical = delta.unit().y;
            if (vertical > -.4 && vertical < .05) {
                state.vel = {state.vel.norm() * 2 *
                    (delta.x > 0 ? 1 : -1), 0};
                entity.projectile_flags &= ~turn_horizontal;
            }
        }
    }
    if (entity.projectile_flags & sine_velocity)
        state.pos = state.pos + state.vel *
            (std::sin(age * 2 * pi / 30) / 30);
    const Vec perpendicular = Vec{state.vel.y, -state.vel.x}.unit();
    const double phase = (age + entity.projectile_phase) * 2 * pi / 30;
    if (entity.projectile_flags & wiggle)
        state.pos = state.pos + perpendicular *
            (3 * std::cos(phase * (entity.spawner_type == 912 ? 2 : 1)));
    if (entity.projectile_flags & mega_wiggle)
        state.pos = state.pos + perpendicular *
            ((3 + std::min(4.0, (age + entity.projectile_phase) * .04)) *
             std::cos(phase));
    if (entity.projectile_flags & sawtooth_wiggle) {
        if (context.clock + uint32_t(tick) - entity.birth == 1)
            state.vel = rotated(state.vel, pi / 4);
        else if (int(age) > int(previous_age)) {
            const int remainder = int(age) % 30;
            if (remainder == 17) state.vel = rotated(state.vel, -3 * pi / 4);
            else if (remainder == 0) state.vel = rotated(state.vel, 3 * pi / 4);
        }
    }
    if (!direct_projectile(context, entity, state.pos, state.vel, state.height,
            state.falling, time, age))
        return false;
    state.vel = state.vel * projectile_speed_factor(entity, age);
    if ((entity.projectile_flags & accelerate) &&
        (entity.spawner_type == 888 || entity.spawner_type == 407)) {
        const double limit = entity.spawner_type == 888 ? 300 : 270;
        if (state.vel.norm() > limit) state.vel = state.vel.unit() * limit;
    }
    const double scale = entity.speed_multiplier;
    const double damping = .8 / (.8 + scale - .8 * scale);
    state.falling = state.falling * damping + scale * (entity.fall_accel + .1);
    state.height += state.falling * scale;
    bounce_from_floor(context, entity, state.pos, state.height, state.falling);
    bounce_from_grid(context, entity, state.pos, state.vel, state.height);
    apply_clock(state, state.vel, previous_age, age);
    if (entity.projectile_flags & anti_gravity) {
        state.height += (-50 - state.height) * .2;
        state.falling = 0;
        if (!entity.parent) return false;
    }
    if (config.simulate_height && context.room_type != 16 && entity.height_known &&
        state.height > config.height_damage_floor) {
        state.damageable = false;
        if (config.stop_on_height_gate) return false;
    }
    state.damageable = state.damageable && projectile_can_damage(entity,
        state.height, context.room_type);
    entity.pos = state.pos;
    entity.vel = state.vel;
    return true;
}
} // namespace gamebot
