# Live fields used by attack and motion prediction

This change extends the production C++ Reader and the offline layout adapter. No live game, replay, test suite or combat validation was run.

| Entity / field | Native offset | Consumer |
|---|---|---|
| NPC state timer | 0x410 | Existing per-mechanism state-timer clocks |
| NPC projectile cooldown / delay | 0xBA0 / 0xBA4 | Existing emission clocks |
| Target position | 0x334 / 0x338 | Existing target-position origins and directional rules |
| Entity motion friction | 0x36C | State-dependent 261 and 220 motion predictions |
| Entity logic age | 0x3A4 | Effect damage timing |
| Projectile future flags | 0x450 / 0x454 | Simulated flag swaps and damage-enabled intervals |
| Projectile change velocity | 0x458 | Timed native velocity resize, converted to pixels per second |
| Projectile change timeout | 0x45C | Native periodic age-boundary trigger |
| Effect state | 0x450 | Smoke explosion stage |
| Effect timeout | 0x45C | Positive finite effect countdown |
| Effect lifespan | 0x460 | Raw initial lifetime reference preserved in frames/logs |

The projectile update checks age-period boundaries, resizes velocity when flag 33 is active, and swaps current/future flags when flag 32 is active. Existing curve/orbit/acceleration prediction now consumes the simulated flags after each switch. Player-hit-disabled intervals are omitted from the projectile threat timeline. The launch-center extrapolator uses the same timed switch helper.

Effect 147 attempts damage at native ages 2 and 4; these are now separate predicted damage windows. Effect 141 state 1 enters its immediate explosion/removal branch. Positive finite effect timers limit the prediction lifetime. Timeout zero is not treated as a universal expiration signal, and lifespan is not substituted for remaining time.

A target vector stored by the game can be read live. A target computed only in local variables at emission still requires the recovered AI formula; it cannot be obtained as a generic persistent field.

Evidence: local J460 Projectile Update at 0x653070, Effect Update at 0x5D4380 (periodic flag operations around 0x65A621 and 0x65A8F5; generic effect countdown at 0x606E88); EntityEffect layout reference; native 261 and 220 AI exports. Changes are implementation evidence, not new measured prediction accuracy.
