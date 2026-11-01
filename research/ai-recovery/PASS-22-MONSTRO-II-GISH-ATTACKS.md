# Pass 22: Monstro II and Gish attack branches (2026-10-31)

## Scope and evidence

NPC AI `0x0046C0A0` dispatches both Type `43.0.0` (Monstro II) and
`43.1.0` (Gish). Their shared ANM2 is
`boss-lab/data/043.000_Monstro II.anm2`; event IDs are `Shoot=3`, `Jump=4`,
`Land=5`. JumpUp raises Jump at frame 10; JumpDown raises Land at 32 and Shoot
at 34; Taunt raises Shoot at 21. The same State 6 → State 7 jump handoff
described in Pass 21 applies.

Primary source branches are `ghidra-export/AI_0046c0a0_0046c0a0.c` lines
351-480 (selector), 482-562 (Taunt), 721-962 (JumpDown and Shoot), plus the
helpers `AI_0043ef30`, `FireBossProjectiles 0x006CCDD0`,
`FireProjectiles 0x006CB2E0`, and `EntityAttackObjectCandidate 0x0096F310`.
Entity configuration evidence is in `boss-lab/data/entities2.xml`.

## State-3 selector differences

Entity fields used here are Type `+0x28`, Variant `+0x2C`, State `+0xB64`,
State auxiliary `+0xBC0`, last selector `+0xBC4`, and target mode `+0xF1C`.
For Type 43 Variant 0, the initial selector is based on absolute vertical
separation from the current player:

```text
if abs(boss.y - player.y) >= U * DAT_00BAA924 + DAT_00BAA87C:
    candidate = 0 or 2, selected from an RNG low bit
else:
    candidate = 1
```

Variant 1 instead starts with `RNG32 % 3`. For either variant, if the candidate
matches the previous value at `+0xBC4` and a second uniform draw is below
`DAT_00BAA3E0` (0.8), the AI advances to one of the other two values:

```text
candidate = (candidate + 1 + (RNG32 & 1)) % 3
```

The shared room/entity override can subsequently force candidate 0. In player
target mode (`+0xF1C == -1`), selector 0 chooses State 4/Walk, 1 chooses State
8/Taunt, and 2 chooses State 6/JumpUp. Non-player target mode uses the spatial
override already described in Pass 21; the RNG selector alone does not
determine that branch.

## State-7 JumpDown Shoot branches

The `Shoot` event at frame 34 reads `+0xBC0`:

| Identity | `+0xBC0` | Native action |
|---|---:|---|
| Monstro II `43.0.0` | 0 | `FireProjectiles` pattern 8 with input vector `(10, 0)` and config `+0x14 = 1.4` |
| Gish `43.1.0` | 0 | Spawn Effect `1000.26` (`Creep (Black)`) at the boss and link it to the boss |
| Monstro II `43.0.0` | 1 | If `FUN_004566B0() < 5`, spawn up to four Type `61.0` Suckers; subtype 1 changes the base count to two, and current Sucker count plus the `0x10000000` room filter can reduce it |
| Gish `43.1.0` | 1 | Two separately capped spawn attempts create Type `15.1` Clots with horizontal velocities `(+5, 0)` and `(-5, 0)` |

FireProjectiles pattern 8 emits exactly eight Type-9 Variant-0 projectiles: four
cardinal directions from the input magnitude, and four diagonals using
`DAT_00BAA36C` on each component. It ignores the input y component. Pattern 8
does not receive the helper's generic `FallSpeed=-3`/`FallAccel=0.1` rewrite;
the projectiles retain Type-9 initialization fall speed and zero fall
acceleration. Config `+0x14=1.4` is copied to projectile `+0x420`; whether that
scale changes collision radius remains unresolved. The projectile fall law is
still the Type-9 update from Pass 20, with initial
`FallSpeed=(U-DAT_00BAA2D0)*DAT_00BAA198`.

Gish's State-7 mode 0 uses the Black Creep configuration (Effect `1000.26`,
configured collision damage 0). Effect Update branch `0x5EBBE1..0x5EBFA6`
applies AddSlowing `0x006AD750` at factor `0.85`; it does not enter the creep
damage branch. It still uses the common player collision/grid, immunity,
range, and texture-alpha gates in Pass 7.

Gish writes itself to Effect parent `+0x3BC`. When a slow effect has timeout
`+0x45C == 0`, the native code assigns a random timeout below 30 only if
`+0x3BC == 0`. The shared countdown at `0x00606E88` decrements only positive
timeouts and marks the Effect dead when the value reaches zero. Therefore the
Gish-parented patch receives no such short timeout while that parent link is
present; exact cleanup on parent loss and the texture-alpha footprint remain
open. Model now predicts this as a soft slowdown patch from JumpDown
`Shoot@34`, using the existing 40-pixel fallback circle and the native player
gates.

In mode 1, Sucker count is additionally capped by current Type-61 count when
the special room predicate is active. Gish's Clot spawn checks
`FUN_004566B0() < 3` and, when its room predicate is active, Type-15.1 count
before each attempt; the native code also subtracts `DAT_00BAA784` from the
spawned NPC's `+0x380` field. The gameplay meaning of that field is not yet
established.

After the JumpDown sequence, the Type-43 path toggles `+0xBC0` with XOR 1.
Mode 0 advances to State 6 and starts another JumpUp; mode 1 returns to State
3. Thus the two mode-specific JumpDown events form an alternating pair before
the next State-3 selection.

## State-8 Taunt Shoot branches

At Taunt `Shoot@21`:

- Monstro II creates one Type-7 Variant-1 laser (`Laser (Thick Red)`) via
  `0x0096F310`, then immediately calls its update. The helper writes the
  candidate angle to laser `+0x418/+0x41C`, the `30`-update timeout to `+0x458`,
  and `(0,-20)` to `+0x34C/+0x350`; the caller writes `3000` to `+0x358`.
  The angle candidate is selected from facing/target fields, but its exact
  relation to final beam geometry is not yet recovered. Planner's windup
  currently encloses both horizontal directions as alternatives; it represents
  one laser entity, not two emitted lasers.
- Gish calls `FireBossProjectiles(1, target, 10, config)`. The base aimed
  velocity is the target direction at 7 units/update plus the helper's bounded
  random vector. Before caller overrides, parameter 10 yields FallSpeed
  `-5-24U` and FallAccel `1.32`. The caller ORs tear flags with `0xA`, changes
  FallAccel by subtracting `DAT_00BAA1F8`, changes FallSpeed to
  `old*DAT_00BAA354-DAT_00BAA83C`, and sets projectile scale `+0x420=1.6`.
  These final constants and the scale's collision effect remain unresolved.

State-8 returns to State 3 when its animation component is absent or its
`+0x8C` latch clears. No test, gameplay, replay, or validation was run. The
selector and attack candidates are source-derived; they are not measured
danger-prediction claims.
