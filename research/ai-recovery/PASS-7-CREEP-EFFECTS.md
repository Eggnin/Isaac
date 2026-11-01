# Pass 7: creep damage, movement effects and player gates

The J460 Effect Update at `0x5D4380` is a very large function; a whole-function
Ghidra decompile timed out. `effect-update-j460.asm` records its address-bearing
original binary disassembly. Helpers used below were decompiled separately into
`ghidra-effect-creep-helpers/`, `ghidra-effect-player-immunity/` and
`ghidra-effect-timer/`. No tests, gameplay, replay or measured validation were
run.

## Recovered branches

- `0x5EB88C..0x5EBBD7`: variants 22, 23, 24 and unfriendly 169 can invoke player
  TakeDamage. Variants 22/23/24 are not excluded merely because the effect has
  a friendly flag; variant 169 has its own friendly-flag branch.
- `0x5EBBE1..0x5EBFA6`: variants 25, 26 and 56 invoke AddSlowing `0x6AD750` in
  this branch, with factors 0.75 for 25 and 0.85 for 26/56. This branch is a
  status effect rather than the damage call above.
- `0x5EBFB0..0x5EC272`: variant 94 applies Entity flag `0x08000000`
  (slippery physics) and footprint interaction, not that damage call.
- These branches require a live player with nonzero EntityCollisionClass and
  EntityGridCollisionClass 5; they skip Callus trinket 14 and Socks collectible
  571. Entity flag `0x10000` on the effect bypasses the processing block.
  The damage/slow branches additionally call player immunity helper `0x7DBA30`;
  Evil Charm collectible 632 and its `+0x26D0` counter can suppress them while
  the counter is less than 30. The slippery branch does not call that helper.
- The initial circular range check is
  `distance(effect,player) < effect.Size * Sprite.Scale.x + player.Size`.
  It then samples the active animation layer's texture/color at the overlap and
  requires returned alpha greater than 0.5. The circle is therefore an outer
  bound, not the complete damage footprint.
- Effect timeout `+0x45C` is decremented at `0x606E88` when positive; reaching
  zero marks the effect dead. Certain unparented slow/slippery effects whose
  timeout starts at zero initialize a random value below 30 first.

## Connected functionality

Effect sprite scale is captured at Entity `+0xE4/+0xE8` and sent through JSON
and the offline adapter. Reader also captures the selected player's native grid
collision state and derives common Callus/Socks/Evil Charm immunity from the
native inventory, held and smelted trinket records, temporary trinket state and
item-mimic fields. A variant-1 child resolves its inventory owner as the native
gate does. The offline adapter supplies the same ordinary fields.

Planner uses the live scaled collision radius for known effect layouts, retains
the older fallback for older captures and applies the native ground/immunity
gates. Red/green/yellow/static damage variants remain hard threats; white,
black, brown and slippery effects are soft movement hazards, so their status
does not count as a direct hit. GUI displays both kinds of ground hazard.

## Remaining scope

The full native HasCollectible/HasTrinket behavior includes temporary item
effects, random trinkets, special characters and co-op branches not completely
reconstructed by the ordinary inventory interpretation. Unrecognized immunity
can still produce a warning. The texture alpha/layer transform is not read by
the external process; range is a conservative circle, not measured pixel-level
damage geometry. The later Pass 8 connects the recovered slowing friction and
duration to future player motion; slippery changes remain soft route cost.
Other effect
variants, expiration branches, non-ground hazards and the broader mechanism
backlog remain active.
