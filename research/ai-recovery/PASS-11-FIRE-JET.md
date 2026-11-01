# Pass 11: native fire-jet clocks and area damage

Date: 2026-10-31. This pass used native code inspection and compilation only;
no tests, gameplay, replay, or measured validation were run.

## Recovered native behavior

- Effect update dispatches variant 147 at `0x5D8F47`. Helper `0x6A9C10`
  returns the integer global frame at `Game+0x264F8` minus the entity birth
  frame at `Entity+0x328`. The effect dispatches damage at ages 2 and 4 when
  its damage at `+0x388` is positive. These are global-frame ages, not the
  entity's floating-point age.
- It calls area damage `0x6FED60` with radius 20 and the effect as source.
  Radius query `0x41A790` uses a strict distance comparison against radius
  plus the target's native size, skips target `FLAG_NO_QUERY` (bit 46), and
  area damage requires a nonzero target entity collision class at `+0x188`.
  For player eligibility, area damage checks the effect source's own
  `FLAG_FRIENDLY` (bit 29), so an absent or friendly spawner is not by itself
  equivalent evidence that the effect cannot damage the player.
- Player damage handler `0x7729D0` calls source-immunity logic `0x7DBA30`;
  the already-read ordinary Evil Charm state includes immunity to this effect.
  Other special damage immunity and damage-flag interactions are not exhaustively
  recovered.
- Base entity update `0x6AE820` runs before the effect branch. For a non-player
  entity it applies native friction and scaled movement. A positive timeout is
  decremented and removal applied after effect dispatch, allowing the last
  dispatch when the timeout reaches zero. The effect also ends on the native
  animation-finished condition, after the branch has run.

## Integration

- Reader records whether the native birth frame is available; the JSON model
  and offline frame adapter preserve it. Old input with a birth field retains
  that evidence, and otherwise falls back to approximate floating age.
- Model emits the two native fire-jet area pulses, honoring the observed effect
  flags, collision/query eligibility, Evil Charm state, lifetime and animation
  stop, then extrapolating their positions using shared native non-player
  movement. Planner consumes the pulses with a radius of 20 plus the target's
  actual size, labels native evidence separately from measurement, and does
  not require an attributable hostile spawner.
- Projectile prediction reuses the same entity-movement function. Planner no
  longer imposes arbitrary upper/lower clamps on the native player and
  projectile collision sizes; Reader's existing native-data checks remain.

Future position extrapolation assumes the observed speed scale and friction
persist and does not simulate every wall collision, status transition, damage
immunity, or ownership change. The planner's one-frame warning window is a
decision envelope around discrete native callbacks, not a claim of continuous
damage. Exact observation/update ordering and prediction accuracy have not been
measured in this pass.
