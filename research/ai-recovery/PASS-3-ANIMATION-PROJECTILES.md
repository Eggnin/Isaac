# Pass 3: live animation events and projectile parent/time branches

Implemented 2026-10-31 from local original J460 exports. No tests, replay,
gameplay, collision oracle, hash comparison or measured prediction validation
were run. The Gamebot, offline policy and external Reader artifacts were built.

## Recovered native evidence

- `ghidra-animation-events/`: AnimationState Update `0x409030`, AdvancePosition
  `0x408D00`, TriggerEvents `0x408C90`, Loop `0x40A1B0`, IsEventTriggered
  `0x40ADD0`, WasEventTriggered `0x40AE70`, NextEventTrigger `0x40AF10`.
- Main state begins at Entity `+0x78`, overlay at `+0x98`. Main current event
  mask `+0x90` is cleared when AdvancePosition runs; history `+0x94` accumulates
  within the animation, rather than representing the preceding update. Overlay
  masks are `+0xB0/+0xB4`. Event names `+0xD4` use 24-byte native strings, count
  `+0xD8`; AnimationData `+0x28/+0x2C` contains 8-byte event-ID/frame records.
- Update adds playback speed, advances all crossed integer frames and stops
  non-looping animations at length minus one. Loop resets frame and masks to
  zero, fires frame-zero events and discards overshoot. Entity BaseUpdate
  `0x6AE820` temporarily multiplies playback speed by `+0x39C`. The no-sprite
  flag and live freeze flag suppress animation; `+0x3F0` suppresses advancement
  and decrements once per native update.
- `ghidra-projectile-parent-clock/` contains parent accessors, velocity addition,
  age crossing and interpolation helpers. Working export names are descriptive
  labels, not independent evidence: `0x6A9C10` returns game frame minus birth;
  `0x435DB0` returns integer age minus previous integer age; `0x6AC760` compares
  integer quotients of current and previous age, with its pause/interpolation
  gates. `0x6FD350` is a game-level pause predicate, not an entity field getter.
- Projectile Update `0x653070`: parent orbit `0x658B5A..0x658D4A`, horizontal
  turn `0x658F7F..0x65915E`, move-to-parent `0x659903..0x659994`, accelerate to
  position `0x65999A..0x659A44`, STASIS `0x658100..0x6583B9`, anti-gravity
  `0x65AC58..0x65ACD3`. Existing address-bearing assembly is in `ghidra-emitters`.
- GroundLifecycle `0x65B500` disables ordinary entity collisions below height
  -50 unless ANY_HEIGHT_ENTITY_HIT is set. Freeze disables collision. Room type
  16 has a separate collision/height branch.

## Connected behavior

- Reader, Entity JSON and offline frame adapter carry both event masks,
  cumulative histories, live trigger tables, playing states, overlay metadata,
  animation delay, saved parent velocity `+0x468/+0x46C` and room type `Room+8`.
- Semantics reports named `AnimationEvent` observations, distinguishing current
  events from history-only observations, and exposes next native event delays.
  These observations confirm animation events only; they do not promote static
  attack candidates into measured damage timing.
- Animation-based projectile patterns and warning timers consume playback/time
  scale and playing state. Squirt and Dingle consult the live `Slide` trigger;
  their existing recovered frame fallback remains available when a trigger
  table is absent. Non-animation clocks retain their own units.
- Native projectile base motion applies friction using the recovered rational
  time-scale conversion before displacement. Age advances by the live time
  scale; timed velocity/flag changes compare the real previous/current ages.
- ORBIT_PARENT removes the saved parent velocity before orbit steering and adds
  the current native parent velocity afterward. MOVE_TO_PARENT preserves speed,
  points toward the parent and terminates inside one native velocity step.
- TURN_HORIZONTAL uses the native normalized vertical interval (-0.4, 0.05),
  room bounds plus 120, doubles speed toward the player's horizontal side and
  clears its one-shot flag.
- ACCELERATE_TO_POSITION adds normalized target direction times homing strength
  and time scale; it terminates within 10 pixels and applies the native early
  height/fall reset before age 150. Source 407's accelerating speed cap 9 and
  source 888's cap 10 are represented in native units.
- STASIS separates held motion from release. Held motion blends parent-relative
  velocity toward radius 50 with the native 0.3 blend, records its release angle
  and approaches height -23 with factor 0.4. Release restores angle/speed from
  the live fields and continues through normal motion/finalization. Anti-gravity
  approaches height -50 with factor 0.2, zeroes falling speed and removes an
  unparented projectile.
- Primary projectile paths, future secondary-source positions and end-time
  prediction share the same step implementation. Continuum paths retain jump
  indices. Damage windows follow native height eligibility, freeze, fade-out and
  CANT_HIT_PLAYER changes; ordinary floor expiry limits the trajectory.

## Remaining scope

This pass is implementation evidence, not measured trajectory accuracy. Parent
and player future positions still extrapolate current velocity; future AI choices
and moving-obstacle collision resolution are not restored. Source-specific
overrides, random/status thaw branches, all 60 Hz interpolation scheduling,
tractor beam, Rotgut wiggle, boomerang and special variant interactions still
require native review. Room type 16 is represented for damage eligibility and
floor-expiry exception, not every special-room interaction. Other existing
wiggle/sawtooth branches are shared with the secondary prediction path, not
claimed newly fully recovered by this pass.

Exact bomb-chain queued damage/fuse delay, future sampled/homing laser geometry,
laser ring radius evolution, dangerous effect callbacks, remaining enemy attack
branches and player/weapon modifier combinations remain on the active backlog.

Changed production files: `cpp/include/gamebot/model.hpp`, `cpp/src/model.cpp`,
`cpp/src/reader.cpp`, `cpp/src/planner.cpp`, `cpp/src/semantics.cpp` and
`research/offline/planner_frame.mjs`.
