# Valuable mechanism recovery and integration

Active objective: continue reverse-engineering all mechanisms valuable to Gamebot combat and connect them to production reading/prediction. This objective is not complete.

Scope includes: harmful attack branches for bosses and ordinary enemies; projectile/laser motion and lifecycle; dangerous effects and terrain; explosions and chain triggers; player movement and supported weapon output; state/ownership/target fields needed to interpret those mechanisms. Purely visual assets are excluded unless they determine a damage or timing branch.

Maintain separate statuses for native evidence recovered, Reader/runtime integration, and measured validation. Compilation is not measured prediction accuracy. Current user instruction: no tests or validation; focus on implementation. Changed executable artifacts are built without running them.

## Backlog

- Projectile motion: perfect homing, boomerang, continuum, move-to-parent/orbit-parent, horizontal turn, stasis/anti-gravity, accelerate-to-position, fractional time-scale ordering, source-specific overrides. Existing curve/wiggle/orbit/acceleration/timed switches/bounce/ordinary SMART need continued native-branch review.
- Projectile damage lifecycle: burst/split/death emitters, lingering fields, fire/creep spawns, height-dependent collision and end conditions, all flags affecting player damage.
- Lasers: live rotation and angular acceleration, moving/following emitters, homing/curved path updates, lifetime and damage activation, rings and event sources.
- Explosions: model moving/remote/homing/special bomb flags, TNT and enemy death propagation. The traced generic ExplosionDamage path does not chain vanilla bombs: Type-4 configs have zero MaxHP and shared TakeDamage only queues positive-MaxHP targets. Direct explosive-tear contact and source-owned bomb releases remain connected.
- Effects/terrain: per-variant activation/fade/expiry/ownership, radius changes, smoke and creep damage callbacks, persistent hazards and their field semantics.
- Enemies: use ordinary-monster and boss strict-attack catalogs as the inventory; candidate animations and exported functions alone do not establish all attack branches or timings. Current rule coverage is not whole-game coverage.
- Player/output: native friction and environmental motion, range/velocity inheritance, charge/release and supported modifier combinations, damage/control/invulnerability windows needed by combat.

## Evidence inventory

- Local J460 AI exports and helper exports under this directory.
- Native resource definitions: research/runtime-instance/resources/scripts/enums.lua.
- Catalogs: data/npc/monster_strict_attack_catalog.tsv and boss_strict_attack_catalog.tsv.
- Integration: cpp/src/reader.cpp, semantics.cpp, planner.cpp, model.cpp, weapons.cpp and offline layout bridge.

## Current pass

The bomb work now separates direct fuse writes from ordinary ExplosionDamage:
source-owned release events and explosive-tear contact are connected, while
the unsupported proximity-only chain envelope is removed. Continue recovering
the remaining laser, projectile, effect and enemy attack branches; whole-game
coverage remains incomplete.

## Pass 1 implementation progress

- Perfect SMART steering: native 0x6584A0..0x65853A gives v_new=resize(v+0.1*(target-position), max(0.001,|v|)) in native units. Float helper 0x41CB70 confirms the maximum operation. Connected to production and secondary-source extrapolation.
- Continuum: exported 0x652AB0, 0x8131E0, 0x812F50, 0x81F8B0. Reader captures Room+0x14/+0x18/+0x1C/+0x20 bounds. Native margin is -100. Four L-room rectangle tables recovered from 0xC35B80 + shape*32. Wrapping selects the smaller clamp correction axis and preserves overshoot. Connected to production and extrapolation.
- Teleport discontinuities: Threat paths now store jump indices. Collision evaluation does not draw an imaginary damaging segment across the room when a projectile wraps.
- Sticky bomb attachment: native Bomb HandleCollision stores target pointer at +0x450 and relative offset at +0x334/+0x338. Bomb Update follows attached actor position plus offset and copies its velocity. Reader captures pointer and 128-bit tear flags; prediction follows the actor's available trajectory.
- Explosive-tear contact fuse: native Bomb HandleCollision 0x6A62D2 sets countdown +0x410 to zero for its contact branch; the sufficient explosive bit is TearFlags bit 12. Connected a contact-time prediction for eligible actor collisions. Complete native contact filters are still broader than the current frame predicates.
- Chain delay remains unresolved. Direct zero-fuse write candidates also found at 0x454597, 0x47BE94, 0x5B0891, 0x7D4E01; these need source-context classification, not unconditional adoption.
- BOOMERANG bit 6 has no explicit branch in the inspected projectile Update/Init/finalization paths. Do not invent return acceleration. It remains an investigation item, not a completed or proven-inactive flag.
- Strict catalogs currently document ordinary identity coverage and boss identity coverage separately. Exported AI files, animation candidates, implemented geometry and measured timing remain separate evidence levels.

Next high-value work: native chain trigger/fuse lifecycle, the remaining projectile branches (parent motion, horizontal turn, stasis/anti-gravity, accelerate-to-position and fractional time scales), followed by live laser rotation/lifecycle and dangerous effect radius/damage phase branches. The full objective remains active.

## Pass 2 implementation progress

- Exported laser native Update/Init, geometry update, damage dispatch, active-rotation setter, wall endpoint helper and room-ray helper. Lua registrations establish RotationDelay +0x4C4, RotationDegrees +0x4C8, RotationSpd +0x4CC, IsActiveRotating +0x4C0.
- Reader supplies these parameters, parent-follow offset +0x410/+0x414, max distance +0x4D0, homing type +0x4D4, first-pass/sampling/shrink bytes +0x45C/+0x45D/+0x45E, native suppression byte +0x175 and 128-bit laser tear flags.
- Rotation prediction consumes half RotationSpd per native update, decrements delay, stops when remaining degrees reach zero, and follows current parent trajectory/offset. Straight beam endpoints are predicted per tick; changing endpoint geometry is bounded segment by segment for clearance.
- Straight endpoint reconstruction uses native 1200 wall-ray / 1000 unbounded / variant-4 fixed 300 ranges, original room bounds and L-notch endpoint rules; normal clip margin 20, continuum-related margin 140 and special-room/variant-5 clip behavior are represented. Guardian challenge-specific player interception is still not ported.
- Damage dispatch uses a two-age-unit cadence plus a forced first pass. Threat now separates damage timing windows from geometry clearance, without duplicating a beam for every pulse. Variant 7 traces and native suppressed damage states are excluded from active laser damage.
- Timeout zero is not expiration: the native countdown only decrements positive values. Native brimstone-like variant predicate recovered; shrink-only tails can remain damaging until the removal countdown. Dead-parent termination is represented for non-effect parents.
- AnimationData layout confirms length +0x30 and loop +0x34; Reader captures current animation metadata, playback rate and laser Fade length. Dingle BeforeSlide uses live animation length when available.
- Native SetExplosionCountdown at 0x452C40 writes both +0x410 and +0x414. Reader now captures the second countdown. Bomb contact predicate 0x6A2030 specifically identifies variants 19 and 20; the prior generic name did not establish complete early-fuse rules.
- Remaining: native sampled/homing laser future geometry, ring growth and shrink radius, linked/chained beam propagation, one-hit hit lists, all special room/tear-flag interactions and fractional-age timing. Current curves still use observed samples with predicted parent movement; do not claim a full future homing-curve model.
- Historical note: the earliest-ignition envelope was approximate. Pass 18 traced the vanilla ExplosionDamage/MaxHP gate and removed that proximity-only chain rule; source-owned/contact fuse branches remain.

### Pass 2 timing evidence / next raw-event work

- Entity base update at 0x6AE820 copies age +0x3A4 to previous-age +0x3A0 and adds time scale +0x39C when flag 0x4000 is absent. The first forced laser damage pass is retained even when periodic age advancement is stopped; its predicted window is limited to the immediate native step.
- ANM2/AnimationState layout also exposes current event mask at Entity+0x90, previous mask +0x94, event-name array +0xD4 and count +0xD8. These are not yet captured; connecting native event masks and animation playback scaling is a valuable next attack-timing task. Do not promote static ANM2 candidates merely because frame-length metadata is now available.

## Pass 3 implementation progress (2026-10-31)

See `PASS-3-ANIMATION-PROJECTILES.md` for addresses, behavior and remaining scope.

- Captured main/overlay event masks, cumulative event histories, names and live
  trigger tables; corrected the earlier description of `+0x94`: it is animation
  history, not the preceding update's event mask. Semantics exposes named native
  event observations without claiming measured attack/damage timing.
- Connected playback multiplied by entity time scale, stop/freeze/no-sprite
  behavior, live animation delay and Slide event timing for Squirt/Dingle.
- Connected parent orbit/return, horizontal turn, accelerate-to-position,
  STASIS hold/release, anti-gravity height behavior and source 407's speed cap.
- Unified main/secondary/end-time projectile stepping with native friction,
  scaled age, quotient-based timed switches and damage-height windows. Retained
  continuum jump handling. Parent/player future movement remains extrapolated.
- Built the Gamebot, offline policy and external Reader. No tests, gameplay,
  replay, hash comparison or measured validation were run.

Full objective remains active. Special bomb target damage, curved/ring lasers, effect
damage callbacks, all source overrides and remaining attack/output branches are
not complete. Earlier pass backlog statements are historical, not a claim that
the newly connected branches remain wholly unimplemented.

### Accepted damage queue follow-up

- `BOMB-CHAIN-AND-DAMAGE-QUEUE.md` records the vtable, queue and candidate
  fuse-write exports. The traced generic area damage path does not chain vanilla
  bombs; several apparent countdown writes instead belong to NPC state changes
  or held-bomb actions.
- Reader/JSON/offline adapter now expose accepted pending damage and individual
  damage records. Semantics reports them; death-attack prediction consumes them
  in native order with per-record DAMAGE_NOKILL handling before extrapolating
  additional tear hits. This is implemented, without measured validation.
- Connected Type 28 State 16/frame 37, Type 62.3 State 5/animation-end, and
  Big Horn Type 411 State 13's `BombExplode` event held-bomb triggers, following
  holder motion. Player State 4 `Poof` and its State 3 ANM2 lead-in are also
  connected; other player animation variants remain incomplete.

## Pass 4: ring/sampled lasers and retained hit lists (2026-10-31)

See `PASS-4-LASER-SAMPLES.md` for addresses and evidence boundaries.

- Connected native indices, chained-root one-hit lists, live ring samples,
  Bezier nodes/history, attachment radius and native target partition order.
- Connected ring radius evolution, subtype lifetime/parent rules, movement and
  boundaries, homing ring attachment, native sampling/smoothing and sine motion.
- Threat clearance consumes time-varying curve geometry and variable ring
  radii, preserving wrap discontinuities. Native laser collision width replaces
  the former ring-radius-derived width.
- Sampled beams now advance observed node geometry, history and sine motion;
  native retained first-pass geometry is respected. Complete future beam target
  selection/insertion is still pending, and extrapolated node transforms do not
  establish native-model completeness or measured accuracy.
- No tests or validation were run. Whole-objective completion remains unproven
  and the goal remains active.

## Pass 5: sampled beam target construction (2026-10-31)

See `PASS-5-BEAM-HOMING.md` for native addresses and remaining limitations.
Ordinary flag-2 target insertion, HomingType-1 candidate insertion,
HomingType-2 nearest-target stepping, native beam/ring tangent updates and
one-node sampled paths are now connected to the changing danger geometry.
Empty native actor partitions are distinguished from older frames without
partition metadata. Special node primitives, player/co-op exceptions, full
reflection propagation and the other mechanism backlogs remain incomplete.
No tests, gameplay, replay or measured validation were run.

## Pass 6: beam geometry primitives (2026-10-31)

See `PASS-6-LASER-PRIMITIVES.md` for addresses, original flags and limitations.
ORBIT, BOOMERANG and TURN_HORIZONTAL Bezier primitives now feed the existing
native target/sampling pipeline. OCCULT has separate player-held and non-player
target branches; the player's held reference and ShotSpeed are captured. Bit 68
is Eye of the Occult, not Ludovico; bit 127 is Ludovico. Old frames without the
held-field evidence preserve the observed curve. Variant 4 now uses its native
distance-dependent cone predicate instead of the former maximum-width capsule;
the GUI also draws cones and sampled curves. Future actor movement,
line-of-sight, owner/co-op exceptions and the remaining general mechanism
backlog are still incomplete; no tests or measured validation were run.

## Pass 7: ground creep and player immunity (2026-10-31)

See `PASS-7-CREEP-EFFECTS.md` for the disassembly and scope. Connected live
sprite scaling, native ground-collision and common Callus/Socks/Evil Charm
gates. Damage variants 22/23/24/169 are separate from status-only 25/26/56/94,
which remain soft movement hazards. Current sprite alpha textures, complete
item/trinket override semantics and slippery physics remain incomplete.
No gameplay, replay, tests or measured validation were run.

## Pass 8: player slowdown (2026-10-31)

See `PASS-8-PLAYER-SLOW.md` for the original vtable, addresses and limits.
Reader/JSON/offline adapter capture current slow factor/countdown; the native
player-motion model and each predicted route propagate the recovered slowdown
friction and creep-induced two-update window. Texture alpha, 30/60 Hz ordering,
simultaneous sources and slippery-floor movement remain incomplete. No tests or
measured validation were run.

## Pass 9: baseline repair and test gate (2026-10-31)

The passes 3-8 changes were never compiled into `GamebotTests.exe`; running
`cpp/build.ps1 -Test` on the current tree produced 144 passed / 10 failed,
including plain projectile dodging.

- Eight failures shared one cause: `Entity::height` defaults to 0, and the
  native damage-height gate (`height > -5` ends a projectile) then truncated
  the predicted path to one tick for every synthetic projectile. Height is now
  explicitly unknown until the Reader reads +0x410 for types 9/2
  (`Entity::height_known`). Unknown height keeps the projectile damaging and
  extrapolated; the native gate applies only to known heights. Older replay
  logs without the flag infer knowledge for exactly those two types.
- Charged weapons only released while `charge >= max_charge`, so a full charge
  held the fire key up forever. The release now latches on the second
  consecutive full-charge observation, which gives the native release edge and
  re-presses after the observed reset.
- The invalid-geometry laser fallback emits `unknown-laser-axis` again, and the
  contact-geometry test asserts the native radius plus the planner margin
  instead of the native radius alone.
- `cpp/build.ps1` writes `bin/build-stamp.json` (source hash, compiler, and
  whether tests ran and their result); `--version` prints it. A build without
  `-Test` records `tests_ran=false`.

Result: 157 tests pass. No gameplay, replay or measured validation was run, so
the repair restores the previous behavior contract without proving prediction
accuracy.

## Pass 10: observed emission envelopes and recall audit (2026-10-31)

See `PASS-10-OBSERVED-EMISSION-AUDIT.md`.

- `PlannerConfig::observed_emission_envelopes` (default off) turns emitters that
  have a native trigger window but no decompiled pattern into pre-fire
  envelopes, using only observed emission directions and speeds. Requires two
  consistent volleys, an angular spread of at most 18 degrees and a speed range
  of at most 1.6x; otherwise the emitter keeps its current no-prediction
  behaviour. Evidence is labelled observed, not native.
- `--audit <frames.jsonl> <report.json>` replays a session through the default
  and observed-envelope planners and reports health drops, coverage and lead
  time. Coverage is recall only; proximity contact is reported separately from
  hazard coverage.
- 160 tests pass. A 5134-frame audit of `sessions/native-20261030-171209-765`
  found three drops, all covered as proximity contact (fast type-85 chasers)
  and none as projectile/laser hazards; the observed-envelope branch produced
  no envelope because that session has only 16 hostile projectile births. The
  feature still needs a session with repetitive projectile attacks to be
  evaluated. No gameplay or control run was performed.

## Pass 11: native fire-jet pulses (2026-10-31)

See `PASS-11-FIRE-JET.md`. Native code establishes global-frame ages 2 and 4,
the effect's own friendly flag, a radius of 20 plus target size, and the order
of the relevant movement, dispatch, timeout and animation decisions. Reader,
Model and Planner now carry this evidence and project the pulse positions using
native non-player motion. Arbitrary player/projectile radius clamps were
removed. Special immunities, future collisions and prediction accuracy remain
incomplete. No tests, gameplay, replay, or measured validation were run in this
pass; the wider recovery goal remains active.

## Pass 12: smoke and explosion radius (2026-10-31)

See `PASS-12-SMOKE-AND-EXPLOSION.md`. Native effect subtype, alpha, ignition
candidates, blast and poison-contact geometry, ordinary immunity, mass, source
ownership and trinket-63 radius scaling are integrated through Reader, Model
and Planner. Dynamic trinket grants, additional players, future collisions and
time-gate changes remain incomplete. No tests, gameplay, replay or measured
validation were run in this pass; the wider recovery goal remains active.

## Pass 13: Big Horn held-bomb release (2026-10-31)

Big Horn Type 411 State 13 now uses its native `BombExplode` animation event to
predict held-bomb release, follow the holder's available trajectory, and model
the original +2 vertical release offset. The bomb's fuse event is updated even
when the ordinary countdown estimate would have fired later, because native
code explicitly clears both countdown fields and calls Bomb::Update at the
event. Generic area damage does not directly chain vanilla bombs. No tests,
gameplay, replay or measured validation were run; the
wider recovery goal remains active.

## Pass 14: player Poof held-bomb release (2026-10-31)

Reader and the offline adapter now expose the player action bomb pointer
`+0x1410`, action state `+0x1F2C` and blast damage stat `+0x14F0`. In State 4,
Model uses the live `Poof` animation event to predict zeroing the held bomb's
two fuses and immediate update. The player-centered ExplosionDamage does not
chain to other vanilla bombs because Type-4 baseHP is zero, and skips its player
source, so Planner models the held-bomb release without adding a self-hazard
for that pulse. The common Player up-to-down transition and Poof event are now
predicted from native animation timing. Other player animation variants remain unresolved. No tests,
gameplay, replay or measured validation were run; the wider goal remains active.

## Pass 15: player leap event timing from ANM2 (2026-10-31)

See `PASS-15-PLAYER-ANIMATIONS.md` for archive provenance and event timing.
Model predicts the held-bomb release from State 3 by combining the live
up-animation end with seven down-animation frames at native playback rate;
State 4 continues to use its live event table. Alternate player animation
overrides remain incomplete. No tests, gameplay, replay
or measured validation were run; the wider goal remains active.

## Pass 16: accepted bomb damage before fuse update (2026-10-31)

Model replays a captured bomb damage queue in native order when present and
respects DAMAGE_NOKILL clamping. The accepted-queue case expires its blast
envelope at the next BaseUpdate when lethal and the fuse is farther away. This
is a generic queue rule; vanilla Type-4 baseHP is zero, so ordinary area blasts
do not create that queue. No tests, gameplay, replay or measured validation
were run; the wider goal remains active.

## Pass 17: native Bomb explosion radius (2026-10-31)

Reader now distinguishes Bomb damage `+0x418`, scale `+0x434`, and explosion
radius scale `+0x44C`. Model and Planner use the native 75/90/105 damage bands,
variant 17/20 and `TEAR_GIGA_BOMB`'s 130-radius override, then the Explosion
radius scale and source-owned trinket reduction. Other special flag
combinations and TNT/death propagation remain incomplete. No tests,
gameplay, replay or measured validation were run; the wider goal remains active.

## Pass 18: native bomb target filters (2026-10-31)

See `PASS-18-BOMB-CHAIN-FILTERS.md`. Local Type-4 configurations have zero
MaxHP, and shared TakeDamage refuses to queue damage at zero MaxHP. The
unsupported proximity-only bomb-chain propagation was removed; known contact
and source-owned fuse writes remain connected. General explosive targeting of
other entities and other source-specific bomb branches remain incomplete. No
tests, gameplay, replay or measured validation were run; the wider goal remains
active.

## Pass 19: native Monstro volleys (2026-10-31)

See `PASS-19-MONSTRO-VOLLEYS.md`. Reader captures the target mode; Model links
Monstro State 7/JumpDown and State 8/Taunt `Shoot` events to the native
FireBossProjectiles counts, speeds and randomness. Planner now receives an
expanding radial ring for 18 un-aimed shots and a bounded aimed-volley envelope
for 13 shots. Projectile height, collision and despawn rules remain partial.
The catalog's strict cross-seed status is unchanged. No tests, gameplay, replay
or measured validation were run; the wider goal remains active.

## Pass 20: Monstro projectile height (2026-10-31)

See `PASS-20-MONSTRO-PROJECTILE-HEIGHT.md`. Native Type-9 spawn height,
random FallSpeed, FallAccel, time-scaled 0.8 damping, and the vertical damage
band are now documented; the shared observed-projectile predictor uses the
native damping. Monstro's pre-spawn fan/ring is capped at the latest normal-room
height removal using the union of viable FallSpeeds; individual low-height
damage gaps are not yet represented. No tests,
gameplay, replay or measured validation were run; the wider goal remains active.

## Pass 21: Monstro state selector and jump chain (2026-10-31)

See `PASS-21-MONSTRO-STATE-GRAPH.md`. Corrected the earlier transition note:
`0x46D7F4` is State 6/JumpUp's historical `Jump` gate, followed by State 7 and
JumpDown; it is not State 4. Captured the Type-20 modulo-3 selector, subtype-2
remap, room-bit override, animation event IDs/timing, and raw non-player-target
distance branch. Model now carries an observed State-6 JumpUp event into its
State-7 JumpDown volley forecast; State-3 forecasts remain conditional on
unavailable RNG state. No tests, gameplay, replay or measured validation were
run; the wider goal remains active.

## Pass 22: Monstro II and Gish branches (2026-10-31)

See `PASS-22-MONSTRO-II-GISH-ATTACKS.md`. Recovered the Type-43 selector's
vertical-distance branch, anti-repeat rule, two-mode JumpDown attack pair,
Monstro II eight-direction pattern and Thick Red laser spawn, and Gish's black
creep, Clot, and single-projectile branches. The planner labels its existing
Monstro II laser warning as a conservative two-direction envelope for one
source-created laser. Projectile lifecycle details, creep damage, and final
laser angle/collision geometry remain incomplete. No tests, gameplay, replay
or measured validation were run; the wider goal remains active.
