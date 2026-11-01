# Damage-class model (2026-10-31, final shape)

Every hostile attack is classified into one of seven damage classes, with a
timing, an optional damage amount, and a lethal flag. Identity rules decide
*when*, *where* and *how much*; the class decides how the planner treats it.

## Implemented

`cpp/include/gamebot/model.hpp`:

```cpp
enum class DamageClass { contact, projectile, jump, laser, charge, explosion, hazard };
enum class DamageTiming { instant, window, periodic, dot };
struct Threat { ... DamageClass damage_class; DamageTiming damage_timing;
                    double damage; bool lethal; ... };
```

- `Threat::damage_class` is assigned centrally in `Planner::build_threats` from
  `damage_class_of(kind)`; every existing producer is classified without being
  touched.
- `Threat::damage_timing` comes from `damage_timing_of(class, kind)`; lasers and
  hazards are periodic, explosions and impacts are instant, poison smoke is
  marked `dot`.
- `Threat::damage` is the source entity's damage for contact/hazard/jump/charge/
  explosion threats, and the projectile's own damage for observed projectiles.
  Zero means "no evidence"; the planner then weights the hit as one unit instead
  of inventing a number.
- `Threat::lethal` is set for pitfall (`type 291`). Route scoring weights a hit
  by `lethal ? 1000 : clamp(damage, 0.5, 3)`, so standing in a pit is never
  traded against a normal hit.
- `Decision::threat_classes` (sorted unique) and `Decision::predicted_damage`
  (HP the player would lose standing still for 0.3 s) are written to logs.

### Class table

| class | kinds |
| --- | --- |
| projectile | `projectile`, `projectile-burst`, `projectile-stream`, `projectile-split`, `terrain-debris` |
| laser | `laser*`, `unknown-laser-axis`, `boss-laser-windup` |
| jump | `jump-landing`, `monstro-landing`, `adversary-landing`, `boss-hop-landing`, `cage-rock-wave`, `falling-impact`, `stomp`, `vis-windup`, `generic-jump-landing` |
| charge | `charge`, `roll`, `slide-charge`, `squirt-dash`, `bumbino-swipe`, `generic-charge` |
| explosion | `bomb`, `death-blast`, `explosive-npc`, `explosive-projectile`, `smoke-explosion`, `homing-bomb-space` |
| hazard | `creep`, `creep-slow`, `creep-slippery`, `hostile-poison-smoke`, `hostile-fire-jet`, `hazardous-fire`, `womb-spike`, `cage-landing-creep`, `pitfall` |
| contact (default) | `contact`, `fly-pursuit`, `colostomia-appear` |

## Reader support (corrected)

An earlier attempt read `+0x410/+0x414/+0x418` as base `Height/FallingSpeed/
FallingAcceleration` for every non-laser entity. That is wrong: for NPCs the
same offsets are `StateFrame` (`reader.cpp` already reads `+0x410` as
`state_frame`), and on the player or other subclasses the value can be a
pointer. `finite_float` then threw and the whole snapshot became invalid, which
is exactly the live `Invalid native float` failure.

- Height capture is projectile-only again (`type 9/2`).
- `mass` at `+0x37C` is now best-effort: a non-finite or out-of-range float
  leaves `mass_known=false` instead of aborting capture.
- The jump class therefore uses identity rules plus an explicit `land`
  animation; it does not depend on NPC height. A real NPC height offset is still
  unknown and must come from the reverse-engineering side.

## Identity-free fallbacks

- **jump**: a hostile body playing an explicit `land` animation. NPC height is
  not available (`+0x410` is `StateFrame`), so a hop without a landing
  animation is not treated as a jump; a ground hopper stays `contact`-only and
  is not double-weighted. Landing disc radius `max(24, body_radius*1.4)`,
  bounded landing time.
- **charge**: hostile body with a `charge|dash|roll|ram|tackle` animation and
  speed above 40. Capsule along the observed velocity.

Both are suppressed when the same source already produced a threat of the same
class, so identity rules always win.

## The three gaps, resolved or bounded

1. **Persistent area damage** — resolved as `DamageClass::hazard`, separate for
   decision and audit. Creep, fire, spikes, poison cloud and pit are no longer
   counted as body contact.
2. **Instant death** — resolved for pitfall: `lethal` + dominant route weight +
   `predicted_damage = 999`. Other instakill mechanics (spiked chest, sacrifice
   room) are not enemy attacks and are still outside the model.
3. **Damage over time** — bounded, not complete. `DamageTiming::dot` exists and
   poison smoke is marked, but the post-exposure poison/burn timer is not
   captured. There is no native offset in the current field map for the player's
   active poison/burn duration, so the planner cannot yet price "stay poisoned
   and finish the room". This stays an explicit gap rather than a fabricated
   model.

## Corrections to earlier notes

- **`+0x410` is not a base Height field.** For projectiles it is Height, for
  NPCs it is StateFrame. The generalised read crashed live capture with
  `Invalid native float`. Height is projectile-only; a jump threat for NPCs
  needs either an identity rule or a landing animation.
- **A pointer read as a float must not abort the snapshot.** `mass` is now
  best-effort with `mass_known=false`; the same pattern should be used for any
  future optional field.
- **Empty rooms must hold explicitly.** With no threat, no target and no room
  mission, route scoring had no "stay here" term; the direction-change penalty
  made `stay` lose to the previous diagonal and the bot drifted forever. The
  decision now forces `stay` when the room is empty and the player is not
  overlapping terrain.
- Airborne bodies still produce `contact`. In the native model, entity height
  gates projectile collision; body contact damage does not require the body to
  be grounded (flies and hopping enemies damage on touch). Suppressing contact
  for airborne enemies would be wrong.
- Melee swipes (`bumbino-swipe`) are classified as `charge`: a short frontal
  hitbox is closer to a dash lane than to a stationary body. This keeps the
  windup, but it overestimates the lane length; an explicit melee timing is
  still a refinement, not a missing class.

## Measured coverage

`--consumption` on `sessions/native-20261030-171209-765` (first six segments,
5561 frames, 5134 valid):

| class | threats | share |
| --- | --- | --- |
| contact | 27208 | 91.6% |
| projectile | 1442 | 4.9% |
| explosion | 1060 | 3.6% |
| jump / laser / charge / hazard | 0 | — |

Per identity: `85.0.0`, `217.0.0`, `281.0.0`, `10.0.0`, `11.1.0` and the three
`33.x` variants are contact-only in this session; `11.0.0` adds projectile
(997 of the 1442 are the one attached pattern rule); `10.1.0` adds explosion.
The `884.0.0` hoppers are contact-only because their hop has no height evidence
and a ground hop must not be double-weighted as a landing.

The absent classes are a property of this session, not of the layer: it has no
lasers, no dashes and no creep/spike rooms. Those classes are covered by unit
tests and are produced whenever the cue exists. A sample with lasers or creep
is still needed to measure them on real data.

## What is still outside the model

- Non-enemy HP loss: blood donation machine, sacrifice room spikes, spike chest,
  curse door. They should be excluded from dodge logic and included in survival
  accounting.
- Post-exposure DoT timers (see gap 3).
- Per-class accuracy measurement. The audit reports `covered_by_class`, but the
  sample sessions contain no laser or charge damage events, so those classes are
  implemented and unit-tested without real-data coverage.

## Policy iteration (attack and dodge)

The class/damage model is now consumed by the decision layer, not only logged.

Dodge:

- **Damage-weighted exposure.** Route exposure is multiplied by the threat's
  `damage` (0.5-3) and by 10 for `lethal`. The bot keeps more distance from a
  two-heart explosion than from a half-heart creep even when neither is
  predicted to hit.
- **Minimum-margin tiebreaker.** Among routes that tie on hits, exposure,
  escape area and end clearance, the route with the larger minimum clearance
  over the whole horizon wins. Threading past a threat is no longer equivalent
  to keeping a steady margin.
- **Contact spacing.** Fast closers (closing speed above 40 px/s) get a target
  distance of `24 + 0.6 * closing`, capped at 180 px. Slow walkers are unaffected
  so attack positioning is not disturbed. When two or more bodies are already
  closing, the spacing weight drops to 35% so the bot does not flee one chaser
  into the arms of another.
- **Idle hold.** No threat, no target, no room mission and no terrain overlap
  forces `stay`; previously the direction-change penalty made the previous
  diagonal win forever (the empty-room drift).

Attack:

- **Threat-source priority.** `aim_at` adds up to 60 points for the emitter of
  a live non-contact threat, weighted by `damage` (x15) and `lethal` (60), plus
  4 for predictive threats. A two-heart emitter can override the 28-point
  sticky-target bonus. Contact threats are skipped because every enemy produces
  one.

Still open:

- **Attack windows tied to windups.** The planner fires whenever a lane exists;
  it does not prefer firing during a boss windup and repositioning during an
  active beam. `Threat::predictive` and `start` carry the needed timing.

### Multi-chaser escape (live damage follow-up)

Three recorded damage events in `native-20261030-171209-765` were all body
contact from fast chasers. At the drops the planner was either already in
`Escape` with every candidate route at negative clearance (clocks 1121, 1296),
or had left `Escape` while a body was still adjacent (`clock 1366`,
`mode=Survival`, clearance -8.7).

Policy changes:

- Escape destination scoring now uses the **largest angular gap** between
  nearby contact bodies (`+10` alignment) and penalises positions near a wall
  (`wall < 72`), so it runs into open space instead of an alcove with no exit.
- A saved escape goal is abandoned if it sits within 40 px of a wall.
- Encirclement triggers whenever any body is within 40 px (`nearest_crowd<40`),
  not only when the exit count is already low.
- Escape no longer exits while `nearest_crowd <= 60`.

These are geometric policy changes; they have not been measured in live play.

Policy changes need live play to measure: `--audit`
replays recorded player positions, so it can measure prediction coverage but
not whether a new dodge policy avoids more damage.

## Modified files

- `cpp/include/gamebot/model.hpp`: class/timing enums, threat fields, decision
  fields.
- `cpp/src/model.cpp`: classification and timing tables.
- `cpp/src/reader.cpp`: base height capture for enemies.
- `cpp/src/planner.cpp`: central classification, damage/lethal, weighted route
  cost, `predicted_damage`, descent-gated jump fallback, charge fallback.
- `cpp/src/main.cpp`: `threat_classes`/`identity_classes` in `--consumption`,
  `covered_by_class` and per-event classes in `--audit`.
- `cpp/tests/core_tests.cpp`: class table, timing, hazard/lethal, damage,
  descending jump, hovering suppression, hop cue, duplicate suppression.

No gameplay or control run was performed.
