# Pass 19: native Monstro volleys (2026-10-31)

## Native branches and parameters

Monstro `20.0.0` is handled by AI `0x0046C0A0`. The boss stores a target mode at
Entity `+0xF1C`; `-1` aims at the current player, while a nonnegative mode uses
the stored relative aim vector at `+0xBB8/+0xBBC`, scaled by 100 and added to
boss position. Reader and the offline frame bridge now expose this target mode.
For Monstro `20.0.0`, State 3 draws `rand()%3` in player-target mode: result 0
selects State 4/Walk, 1 selects State 8/Taunt at `0x46CC38`, and 2 selects
State 6/JumpUp. Subtype 2 remaps result 2 to 1; an Entity flag and room-bit
combination can force result 0. State 6 waits for the historical `Jump`
animation event at `0x46D7F4`, then enters State 7 and requests JumpDown at
`0x46D815`. State 8 returns to State 3 when its animation latch ends. The full
selector conditions and event-history distinction are recorded in
`PASS-21-MONSTRO-STATE-GRAPH.md`.

- In the State-6 path, `JumpUp` raises `Jump` at animation frame 10; that event
  transitions to State 7/JumpDown. JumpDown raises `Land` at frame 32 and
  `Shoot` at frame 34. The named `Shoot` event at `0x46DD38` calls
  `FireBossProjectiles(18, zero-direction, 0, config)` at `0x46DD6A`.
  `FireBossProjectiles`
  creates 18 Type-9 Variant-0 projectiles with independent random directions
  and native velocity magnitude 7 per tick. The local Monstro ANM2 places the
  `Shoot` event at frame 34. The projectiles use the Type-9.0 radius 5.
- In State 8 with `Taunt`, the `Shoot` event calls
  `FireBossProjectiles(13, target-position, 0, config)` at `0x46CEF8`. The helper normalizes
  the target direction and adds an independent random vector with magnitude at
  most 3.5; its base aimed velocity is 7 per tick. ANM2 places `Shoot` at frame
  21. Both calls produce variant 0 from the initialized config returned by
  `0x0043EF30`.
- State 8 returns to State 3 when Taunt finishes. Its non-looping `Shoot` event
  is one volley; State 7's `JumpDown` volley is a separate earlier action.
- The helper inserts each projectile for a later entity update. Model uses the
  live animation trigger and places the warning one native update after the
  event. It also follows an observed State-6/JumpUp `Jump` event through the
  State-7 JumpDown `Shoot@34` handoff, so the ring can be forecast before State
  7 is entered. It advances the boss with the shared entity movement formula
  to the event origin.

## Integration and limits

Reader/JSON/offline bridge capture `+0xF1C`. Model emits an expanding ring
centered on the predicted State-7 launch position: radius 5 plus the
7-unit-per-tick radial path. The emitted ring stays at its launch center as
Monstro moves. The State-8 aimed burst uses one disc envelope around the aimed mean
velocity; the maximum random velocity offset is 3.5 native units per tick
(105 px/s in Reader units). Planner consumes both as `projectile-burst`
hazards, with native event timing and separate evidence labels.

The radial ring covers every possible random direction, so it is a continuous
envelope around 18 discrete shots. The aimed envelope covers every bounded
random velocity. In ordinary rooms the warning now ends at the latest possible
height-based removal for the recovered FallSpeed range, using the native fall
law documented in `PASS-20-MONSTRO-PROJECTILE-HEIGHT.md`. It uses the union of
possible random heights, so it does not separate an individual shot's temporary
below-`-50` non-damaging interval. Wall collision and a future player direction
change remain unresolved. Boss movement after the observed frame is
extrapolated. The
catalog's old single-run State-7 count 180 and State-8 count
91 are aggregate observations; the native function establishes 18 and 13 per
`Shoot` event. The State-7 code path is now confirmed by the event branch and
helper call, not by the catalog candidate alone. No tests, gameplay, replay or
measured validation were run. The catalog's strict cross-seed status is
unchanged; this code-derived model is not a cross-seed validation claim.
