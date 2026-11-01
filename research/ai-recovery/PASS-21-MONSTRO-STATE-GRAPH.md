# Pass 21: Monstro state selector and jump attack chain (2026-10-31)

## Scope and source

This note describes the `20.0.0` identity handled by NPC AI `0x0046C0A0`.
That dispatcher also handles Type 43 identities; the selector below is not a
complete description of those branches.

Primary evidence:

- `ghidra-export/AI_0046c0a0_0046c0a0.c`, especially the State-3 selector
  (lines 351-480), State-6/State-7 handoff (lines 721-1001), and State-8 exit
  (lines 482-562).
- `ghidra-export/AI_0046c0a0_0046c0a0.asm`, including the historical-event gate
  at `0x0046D7F4` and the State-7 write at `0x0046D815`.
- `boss-lab/data/animations/020.000_Monstro.anm2`.
- Animation helpers `0x0040AE70`, `0x0040ADD0`, `0x0040B030`, and
  `0x0040B090`.

## State-3 selection for Monstro 20.0.0

On a State-3 update, the Type-20 path calls the native RNG and computes
`uVar5 = RNG32 % 3`. Entity subtype is at `+0x30` in this branch. If subtype is
2 and the draw is 2, the result is changed to 1. A later override sets the
result to 0 when both conditions hold:

```text
(Entity[+0x16C] & 0x10000000) != 0
&& (*(byte *)(*(int *)(*(int *)(DAT_00C71678 + 0x18300) + 4) + 0x44) & 1) != 0
```

The selected value is stored at Entity `+0xBC4`. When target mode `+0xF1C` is
`-1`, the mapping is:

| Selector | State | Animation/action |
|---:|---:|---|
| 0 | 4 | Walk; selects the walk/movement branch |
| 1 | 8 | Taunt; `Shoot` event emits 13 projectiles |
| 2 | 6 | Starts JumpUp; `Jump` event leads to State 7 |

Thus for subtype 0, absent the flag/room override, the source code makes one
modulo-3 draw and immediately selects one of those three branches. The RNG draw
is not available from the captured target-mode field alone, so State 3 is a
branch candidate rather than a deterministic attack forecast.

When `+0xF1C != -1`, the code does not apply that selector mapping. It still
stores the random result, then selects State 6 when a local boolean is set;
otherwise it selects State 8 or State 4 when one of two target-derived vector
lengths exceeds global `DAT_00BAA2D0`. If neither comparison selects a branch,
State 3 remains active. Those local vector inputs and the global threshold have
not yet been assigned gameplay names, so keep them as raw fields/constants.

The branch runs on the State-3 update. State 8 returns to State 3 when its
animation component is absent or Entity `+0x8C` is clear; the next native AI
update then runs the selector again. State 4's Walk path is separate from the
jump attack chain.

## State 6 to State 7 jump chain

Selector result 2 enters State 6 and requests `JumpUp`. While State 6 is active,
the AI writes `+0x188 = 4` and `+0x184 = 5`, then checks whether animation event
`Jump` has already been recorded. This is `FUN_0040AE70` (`WasEventTriggered`),
which reads the animation state's historical event mask; it is not the
current-frame predicate `FUN_0040ADD0` used by `FUN_0040B030`.

If the `Jump` event is recorded, the AI writes State 7 at `+0xB64`, clears the
destination fields `+0x334/+0x338` to the invalid-position sentinels, and
requests `JumpDown`. The local ANM2 timing is:

| Animation | Frame | Event | Native consequence |
|---|---:|---|---|
| JumpUp | 10 | Jump | State 6 → State 7; request JumpDown |
| JumpDown | 32 | Land | State-7 landing-event branch |
| JumpDown | 34 | Shoot | `FireBossProjectiles(18, zero direction, 0, config)` at `0x0046DD6A` |

The two animation events put the JumpDown volley 44 animation frames after the
JumpUp animation begins (10 + 34), subject to the native update/event handoff.
The asset declares 30 FPS; do not treat this conversion as measured wall-clock
timing under slowdown or animation time scaling.

## State 8 timing and remaining boundaries

State 8 requests non-looping `Taunt`. Its `Shoot` event at ANM2 frame 21 calls
`FireBossProjectiles(13, target position, 0, config)` at `0x0046CEF8`. Event
predicate `FUN_0040B030` requires a non-null animation component and then tests
the current event mask through `FUN_0040ADD0`.

The selector and event timing are source-derived. Model now follows an observed
State-6/JumpUp `Jump` event through JumpDown `Shoot@34`; it does not guess which
branch the State-3 RNG will choose. Forecasting directly from State 3 would
still require the RNG state and the raw room override. State-4 movement,
State-6 `+0x188/+0x184` semantics, Type-43 selector branches, and the raw
non-player target threshold remain unresolved. This note does not turn the
random selector into a measured prediction. No tests, gameplay, replay, or
validation were run.
