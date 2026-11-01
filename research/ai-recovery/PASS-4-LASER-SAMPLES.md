# Pass 4: ring evolution, sampled geometry and laser hit lists

Implemented from the original local J460 executable on 2026-10-31. No tests,
gameplay, replay, collision oracle, accuracy measurement or hash comparisons
were run. Native formula recovery and production integration are separate from
measured prediction accuracy.

## Evidence and field additions

- Existing ring Update `0x97BAA0` is now traced through node generation
  `0x9A0850`, sample generation `0x99E360`, simplification `0x9A0DE0` and sample
  oscillation `0x99EC00`. The last function's old working name, ApplyHoming,
  does not describe its behavior: it applies deterministic sine displacement.
- Beam builder `0x99C790`, beam tangent update `0x99DCA0`, ring tangent update
  `0x99E160` and five-chord curve-distance helper `0x99C430` were exported.
- `ghidra-laser-ring-curve/`, `ghidra-laser-hits-beam/`,
  `ghidra-laser-hit-key/` and `ghidra-laser-tangent/` contain the new evidence.
  The short SDK DoDamage signature matched three functions. The laser caller
  and field accesses identify `0x97E3C0`; `0x597D00` and `0x8D57F0` are rejected
  signature candidates, not additional recovered laser implementations.
- Reader captures Entity index `+0x20`, one-hit byte `+0x515`, sorted hit list
  vector `+0x520`, linked laser `+0x52C`, sample origin/end `+0x468/+0x470`,
  attachment radius `+0x478`, sample interval count `+0x47C`, sample history
  vector `+0x498`, shape kind `+0x4A4` and 24-byte Bezier nodes `+0x4AC`.
  The laser read span now covers its native `0x568` bytes.
- Ring samples at `+0x480` are read as well as beam samples. The room's native
  actor partition order `Room+0x125C/+0x1264` is preserved for target selection.
  All fields are connected through Entity/Frame JSON and the offline adapter.

## Connected behavior

Hit-list key `0x6B62B0` returns a player's Entity index, not its address or seed.
Membership helper `0x431640` searches a sorted vector; DoDamage inserts the key
before calling the recipient. `0x96CE70` follows linked lasers to the root hit
list. Planner excludes a laser whose retained one-hit root already lists this
player. Ordinary pulse-cleared lists are not treated as permanent immunity.

Collision half-width comes from native Entity Size `+0x370`. Ring radius is no
longer incorrectly added as a beam half-width. The original Pass 4 bound for
variant 4 was a 30-pixel capsule; the subsequent Pass 6 implementation replaces
that bound with the recovered distance-dependent cone geometry.

Circle variant 8 takes a different enemy-only damage branch and is excluded
from player hazards. Circle variant 7 is no longer excluded using the straight
trace-only variant check. Positive ring timeout is its actual removal countdown,
without a straight brimstone tail. Subtypes 1/2 continue independently of a dead
parent; subtype 3 requires its parent to exist and remain alive.

Ring radius prediction includes familiar-parent scale 0.75, flag-25 age pulse,
flag-7/21 owner-distance modifiers, subtype-2 first-ten-frame expansion/minimum
radius, and subtype-2 non-variant-2 fade factor. Raw and effective radius are
kept distinct for room clipping. Normal room clipping, flag-19 bounce,
flag-38 wrapping with native -200 margin, wall-triggered countdown 5 and wrapped
countdown 45 are represented. Subtype-1 damping includes its native 0.5 factor.
Room clamp now implements native max-then-min ordering for oversized margins.

Native ring generation produces six cubic arcs and seven nodes with control
length radius*0.3466. Homing flag 2 consumes eligible targets in the native room
order, moves interior nodes when the five-chord distance predicate is below the
live attachment radius, and rebuilds ring controls with strength 0.4. Ordinary
single-player enemy predicates are represented; all co-op familiar exceptions
are not restored.

Bezier sampling uses ten chords per segment to allocate samples by cumulative
arc length, including both endpoints. Ring history uses native blend 0.3, or 1
on wrapping. Beam history uses its native variant/homing/max-distance blend
and arc-length factor with stronger near-origin response. Sine displacement
uses native sample indices, amplitudes and phases: ring phase zero normally,
additional frame*1.6 for a Type 8 parent, beam phase Entity index. Player-owned
trinket multipliers are not newly modeled by this pass.

Threat geometry supports a different polyline per future native update. Clearance
bounds both endpoint movement and segment rotation over each interval, splitting
wrap discontinuities instead of drawing an across-room damaging segment.
An analytic variable-radius ring path is available when live samples are absent.

Sampled beams use live nodes with predicted source rotation, parent movement,
wall endpoints and observed actor-anchor associations; their future samples,
history smoothing and wiggle are consumed by collision evaluation. New beam
target selection and its insertion/tangent variants remain incomplete. These
node transforms are extrapolation, not a claim that the complete native homing
beam model is restored.

Straight sampled one-hit/HomingType-1 geometry skips native node rebuilding
after the first pass; Planner retains its samples in world coordinates for that
branch instead of translating them with a moving parent.

## Remaining scope

Full beam target selection/insertion, all curve primitive combinations and
source overrides, chain/reflection propagation, player trinket modifiers,
fractional/60 Hz scheduling and all special-room interactions still need work.
Ring future actor movement uses current velocity or an available actor path;
future AI choices are not reconstructed. Smoothing, ring motion and target
geometry have no newly measured accuracy result. Generic bomb-chain timing,
dangerous effect callbacks and the other mechanism backlogs remain active.

Production files changed: `cpp/include/gamebot/model.hpp`, `cpp/src/model.cpp`,
`cpp/src/reader.cpp`, `cpp/src/planner.cpp`, `research/offline/planner_frame.mjs`.
