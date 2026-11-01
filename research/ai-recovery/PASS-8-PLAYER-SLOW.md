# Pass 8: player slowdown and future movement

Native evidence was read from the local original J460 executable. No tests,
gameplay, replay, collision oracle, hash comparison or measured movement
validation were run.

## Native evidence

The local `Entity_Player` vtable at `0xB6BDD0` identifies Update `0x782AF0`.
`ghidra-player-slow-next/` contains the decompiled update and
`player-update-j460.asm` preserves its address-bearing disassembly. The SDK
signature used in the local reference did not match this executable; the vtable
and original RTTI were used instead.

- Player Update `0x789304..0x789329` checks Entity flag `0x80` and multiplies
  friction `+0x36C` by `sqrt(Entity+0x3AC)` using helper `0x431260`/`0x435A50`.
- Entity BaseUpdate decrements slowing countdown `+0x220` on the full update and
  clears flag `0x80` when that positive countdown reaches zero.
- AddSlowing `0x6AD750` receives the factor at `+0x3AC`; the negative-duration
  creep path sets the countdown to 2. The status is not applied when Entity
  flag `0x1` prevents status effects. Pass 7 records the 0.75/0.85 factors for
  the relevant creep variants.

## Connected functionality

Reader, Entity JSON and the offline adapter carry player slow factor and
countdown. The native player-motion model applies the square-root slowdown to
its existing per-step friction, using the observed friction and time scale for
the rational damping conversion in Entity BaseUpdate. Planner initializes route state from an already
active slowdown, propagates each route's slowdown factor/countdown after passing
through a modeled slow-creep footprint, and carries that state into future
escape-direction evaluation. The slow effect remains a soft hazard rather than
being counted as direct damage. No-status-effect players do not acquire creep
slowdown in the predictor.

The creep footprint is still the native outer circle, not the original
sprite-texture alpha sample. Native entity/update ordering around the 30/60 Hz
boundary, simultaneous sources, slippery-floor physics, other special player
movement modifiers and the other active mechanism backlogs remain incomplete.
Consequently, this implementation does not claim independently measured player
trajectory accuracy.
