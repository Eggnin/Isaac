# Pass 20: Monstro projectile height and fall law (2026-10-31)

## Native spawn fields

Projectile Init `0x652B90` sets Type-9 height `+0x410` to `-23`, FallAccel
`+0x418` to 0, and starts FallSpeed `+0x414` near zero. Monstro calls
FireBossProjectiles `0x6CCDD0` with config from `0x43EF30`; for both relevant
states the launch parameter is 0. The helper sets:

- initial height to `-23` (config `+4` is 0);
- FallAccel to `0 * 0.1 + 0.32 = 0.32` (config `+0x0C` is 0);
- FallSpeed to `5 - U * 30 * 0.8 - 0`, or `5 - 24U`, where
  `U = unsigned(RNG32) * 2^-32` (`0xBAA784=5`, `0xBAA8D0=30`,
  `0xBAA3A4=0.8`, `0xBA9FF4=2^-32`). Thus the initial speed spans just above
  `-19` through `5` native units per update.
- The projectile scale at `+0x420` is also randomized:
  `((RNG32&1)*0.4 + 0.9 + U*0.05) * sourceScale`, with `sourceScale=0.8` when
  source flag bit 22 is set and 1 otherwise. Whether this multiplier changes
  collision size remains untraced; the pre-spawn envelope uses configured
  Type-9.0 collision radius 5.

## Update and damage window

Projectile Update `0x653070` passes coefficient 0.8 and entity time scale to
`0x684CB0`. The helper returns `x` at scale 1 and otherwise
`x / (x + scale - x * scale)`. With `s` the projectile time scale, `v` the old
FallSpeed, `a` FallAccel, and `h` height, each update does:

```text
d = 0.8                         if s == 1
d = 0.8 / (0.8 + s - 0.8*s)    otherwise
v = d*v + s*(a + 0.1)
h = h + s*v
```

On ordinary rooms the native projectile update ends a tear when height exceeds
`-5`; the projectile damage filter accepts height at or above `-50`, or the
specific projectile flag that bypasses that lower cutoff. The shared observed-
projectile predictor now uses the native 0.8 FallSpeed damping; `ANY_HEIGHT_ENTITY_HIT`
(projectile flag bit 17) bypasses the lower cutoff. At time scale 1,
height after `n` updates as a function of the random `U` is:

```text
h_n(U) = -23 + 2.1*n + (2.9 - 24*U)*4*(1 - 0.8^n)
```

For each update 1 through 48 there is a nonempty interval of `U` values whose
projectiles remain alive and within the damage band. At update 49 even the
lowest initial FallSpeed has crossed the `-5` removal threshold. Model caps the
pre-spawn warning at this worst-case lifetime in ordinary rooms. It still uses
the union of possible random height trajectories: individual shots that fall
below `-50` can become temporarily non-damaging and later re-enter the damage
band. The 18/13-shot volleys sample only finitely many `U` values, so the union
envelope is conservative. Room type 16 has a distinct native height branch and
is not capped by this ordinary-room lifetime bound.

## Evidence and limits

The formulas come from `ghidra-emitters/HELPER_Projectile_Update_00653070.c`,
`ghidra-fuse-init/HELPER_Projectile_Init_00652b90.c`, and
`ghidra-helpers/HELPER_Entity_NPC_FireBossProjectiles_006ccdd0.c`. No tests,
gameplay, replay or measured validation were run.
