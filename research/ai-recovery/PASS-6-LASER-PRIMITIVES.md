# Pass 6: sampled-beam geometry primitives

Implemented from the local original J460 executable. No tests, gameplay,
replay, collision oracle, hash comparison or accuracy measurement were run.

## Native branches

The sampled-beam update `0x973C60` constructs these nodes before its homing
target builder. `ghidra-curve-primitives/` contains `0x99FA60` and `0x99FED0`;
`ghidra-laser-special-target/` contains `0x99F2C0` and the wall-endpoint helper.
The original `resources/scripts/enums.lua` names bit 8 BOOMERANG, bit 16 ORBIT,
bit 68 OCCULT and bit 71 TURN_HORIZONTAL. Bit 127 is LUDOVICO. Earlier
commentary calling bit 68 Ludovico was incorrect; the implementation uses the
correct bit and this record uses its original name.

- ORBIT appends an origin node, six nodes around the origin at radius 60, and
  two nodes leading to the original endpoint. The orbital controls use radius
  63 and angle offsets of +/-0.25 radians; adjacent node angles differ by
  0.3*pi, starting at beam angle minus 0.7 radians.
- BOOMERANG builds its loop after ORBIT when both flags are set. The default
  forward distance is 120, or `120 * owner ShotSpeed / 1.6` when the spawner is
  a player. Its return ray uses `0x96FC70` and its length obeys live
  `MaxDistance`; the resulting endpoint feeds subsequent geometry.
- TURN_HORIZONTAL searches eligible actors in native partition order. It uses
  the first-nearest forward projection beyond 80 pixels, rejects targets inside
  the sum of laser/actor radii, respects the native spectral/line-of-sight gate,
  and builds four turning/control nodes toward the chosen side. The changed
  endpoint clears prior samples when separated by more than 40 pixels.
- OCCULT non-player source uses the live target position to construct two
  intermediate controls at the native 0.333/0.666 interpolation fractions,
  followed by a direct room ray with margin 20. The player-source branch uses
  Player `+0x140C` held entity position when present and constructs its
  preceding/target/endpoint controls before calling native beam tangents.

## Production integration

Reader, Entity JSON and offline adapter carry the player's raw ShotSpeed at
`+0x1464`, held entity at `+0x140C`, and an explicit held-field availability
flag. The native source's room/position fields and target partition were already
captured by earlier passes.

The C++ model creates ORBIT, BOOMERANG, TURN_HORIZONTAL and player OCCULT nodes;
Planner supplies future actor positions, native wall-ray clipping and target
ordering, then applies the common homing/node/tangent/sampling pipeline from
Pass 5. Non-player OCCULT nodes use its current live target point. When an older
snapshot lacks the player-held field, or the held pointer cannot be resolved,
the observed curve is retained/extrapolated instead of treating the target as
absent. A two-point current sample with one of these flags now enters the sampled
curve branch so a future turn or target can appear.

The unsampled variant-4 damage branch at `0x971810` tests lateral center
distance against 0.1 times total center distance, requires a positive forward
projection and caps it at 300 plus the absolute vertical sprite offset. Its
danger shape is represented as a cone with slope `1/sqrt(99)`, rather than the
older fixed 30-pixel capsule. Static movement is clipped against the four cone
half-planes; changing endpoints are bounded over each native update. The native
variant-4 predicate replaces the usual player/laser radius sum. The GUI draws
the cone and the current sampled polyline geometry.

The reconstructed horizontal-turn line-of-sight check uses the existing grid
ray representation; moving obstacles and every original collision filter are
not reproduced. Actor trajectories, source positions and non-player OCCULT
target movement are extrapolated from available snapshots. Co-op familiar and
owner trinket exceptions, Guardian-specific clipping, linked/reflected beam
propagation and fractional/60 Hz scheduling remain on the backlog. This pass
does not claim measured damage prediction accuracy or whole-game coverage.
