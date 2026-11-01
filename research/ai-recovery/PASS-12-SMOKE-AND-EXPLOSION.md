# Pass 12: smoke and explosion radius (2026-10-31)

This pass uses native code inspection and compilation. No tests, gameplay,
replay, or measured validation were run.

## Recovered behavior

The effect 1000.141 branch starts at `0x5D6910`. It changes sprite color alpha
before its subtype-specific logic. With timeout 0 through 29, alpha moves toward
zero by 1/30 per update; otherwise it moves toward one by 1/30. Native Sprite
color is at Entity `+0xF0` and its alpha at `+0xFC`.

- Subtype 1 with state `Entity+0x450 == 1` calls Explosion `0x700060` and
  removes itself. The call uses damage 15, radius scale 1, and the effect as
  source. The explosion helper's ordinary base radius is 75 for that damage;
  its target query adds target size. This is not conditional on effect damage
  `+0x388` being positive.
- Otherwise subtype 1, when alpha exceeds 0.25, checks ignition every second
  global frame unless the entity time gate or flag bit 14 blocks it. The
  ignition search tests overlap using `60 * sprite scale X` plus target size;
  for effect 1000.1 the added radius is `60 * its sprite scale X`. Candidates
  include effects 1000.1/10/51/52 without flag bit 16, type-33 objects with
  nonzero entity collision, and projectile 9.2. Detection sets state 1; the
  explosion branch runs on a later effect update.
- Other subtypes use `40 * sprite scale X` and an additional strict
  center-to-center check against that same radius for the player; the player's
  size is not added in the final check. The hostile player branch requires
  alpha above 0.5, an effect without its own friendly bit 29, and spawner type
  other than 1. It invokes player damage with amount zero and flag `0x8000`;
  it is a poison/status callback, not an ordinary positive-damage blast.
- Player `0x7C3320` blocks that zero-damage callback for the relevant observed
  item and player-state conditions; source immunity `0x7DBA30` includes effect
  1000.141. Normal target collision/query gates still apply. Special source and
  item interactions outside those gates are not fully recovered.

ExplosionDamage `0x6FF2A0` skips dead targets, entity collision class 0,
grid collision class 4, and zero mass at Entity `+0x37C`. For explosions whose
source is neither a player nor owned by one, its trinket-63 count (`0x9BEA80`)
scales radius to 0.75 at count 2 and 0.5 above 2; lower counts retain 1.0.
Player ownership is found by separately following parent and spawner chains
(`0x6A9140`). The friendly-source check near `0x6FF5C9` is in the knockback
branch, and does not alone establish immunity to the later player-damage call.

## Integration and limitations

Reader, JSON and the offline adapter now carry sprite alpha, entity mass,
ordinary poison immunity and observed trinket-63 stacks. The latter covers
equipped, golden, smelted, temporary, pocket, mimic and relevant ordinary
collectible adjustments, plus the native trinket-config/player doubling gate.
Model predicts a state-1 blast and short-term ignition from present candidates,
or the separate poison-contact interval and source motion. Planner uses the
actual blast/poison branches and supports center-only target collision; the
ordinary reduction factor is also applied to existing bomb blast envelopes.

The ignition prediction extrapolates current candidate and cloud motion, and
the observation/update order, future spawned candidates, game-wide time gate,
collisions and changing sprite scale remain uncertain. Timeout resets and
external effects can change future alpha. Trinket counts can also include
additional dynamically granted trinkets and other players, which this ordinary
inventory approximation does not fully reconstruct. Missing legacy alpha is
conservatively assumed visible. Explosion radius reduction therefore is not an
exhaustive reconstruction of every run state, and these code findings are not
measured hazard-prediction accuracy.
