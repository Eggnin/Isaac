# Pass 5: sampled beam target construction

Native evidence comes from the local original J460 executable. No tests,
gameplay, replay, collision-oracle runs or prediction-accuracy measurements were
performed. Implementation is not evidence of measured prediction accuracy.

## Recovered update branches

`ghidra-laser-hits-beam/HELPER_HomingLaser_BuildBeam_0099c790.c` and its
address-bearing assembly define three target-construction modes. The caller in
`0x973C60` maps tear flag 2 to mode 1, HomingType 1 to mode 4 and HomingType 2
to mode 5. The current source rebuilds ordinary sampled-beam nodes from the
current origin and wall endpoint on each geometry update: the unconditional
node-vector reset is at `0x9741E8..0x9741EE`. It does not merely translate the
preceding snapshot's target nodes.

- Mode 1 starts with the two endpoint nodes. For each candidate in native room
  partition order, it compares the five-chord Bezier distance against the
  laser's `+0x478` radius, requires a forward control-vector dot product, a
  segment length of at least 120 and more than 80 pixels from both endpoints.
  It inserts at most four candidate nodes, rebuilding tangents after each
  insertion. When a preceding special primitive already produces more than two
  nodes, it attaches candidates to existing interior nodes instead.
- Mode 4 inserts candidates before the endpoint in native room order and
  excludes the parent's own Type. The resulting straight sampled one-hit or
  HomingType-1 path is retained after its first geometry update.
- Mode 5 discards the original endpoint and builds up to 25 nodes. Each new
  40-pixel step turns toward the nearest candidate using
  `normalize(forward + target_direction * 0.3 * (dot(previous_direction,
  target_direction)+1)/2)`. The first point outside the room remains in the
  curve. Players present in the native candidate partition are included for this
  mode as in the original branch.

The room membership helper `0x813360` and vector insertion/removal helpers
`0x9A1680/0x9A1610` are exported under `ghidra-laser-target-path/`. In an L
room the membership predicate compares the original point to the native
room-clamped point; other shapes compare the native bounds. The tangent rebuild
at `0x99DCA0` picks cardinal axes based on neighboring segment directions,
constructs controls from half segment lengths and doubles the interior tangent
for the native backwards-control condition. Mode 5 uses `0x99E160` with 0.4.

Native `0x973F84..0x973FEB` also clears sample history when the angle changes,
except for its brimstone predicate and variant 5. The sample function
`0x99E360` handles one remaining Bezier node by producing repeated copies of
that node, rather than dropping the geometry.

## Production integration

- `cpp/src/model.cpp` now constructs ordinary mode-1/4/5 target paths and
  rebuilds their native tangent shapes before sampling. Mode 5 uses the current
  room's native bounds/L-shape clamp and native path length limit.
- `cpp/src/planner.cpp` includes flag-2 lasers in the sampled-geometry branch
  even when their current path has only two points. It preserves candidate
  order, applies the ordinary native candidate filters, uses available actor
  paths for future positions, advances the native node builder and samples its
  changing geometry for danger clearance. First-pass one-hit/HomingType-1
  geometry remains fixed afterward.
- Room target-order availability is explicit in Frame, Reader and the offline
  adapter: a captured empty native partition stays empty, while an older frame
  with no partition data can still use its entity list. Ring homing uses the
  same distinction and the native ordinary candidate filters.
- Polyline clearance treats a change of sample count as a discontinuity rather
  than losing the previous interval. A one-node path retains its point samples.

## Remaining scope

Flags 8, 16, 68 and 71 can generate or replace beam nodes before target
construction. Their observed node geometry was still transformed/extrapolated
in this pass. Flag 68 is Eye of the Occult, not Ludovico Technique; the latter
is flag 127 in the original `enums.lua`. Follow-up work is recorded separately.
Co-op familiar exceptions, owner trinket multipliers, all reflection chains,
60 Hz/fractional scheduling and some special-room behavior remain incomplete.
Future source and target movement still depend on observed/predicted actor
motion. These limitations also apply to ring target attachment. The broader
bomb, effect, enemy and weapon backlog remains active.
