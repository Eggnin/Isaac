# Pass 17: native Bomb explosion radius (2026-10-31)

## Native field and formula evidence

Bomb vtable Init `0x6A2050` sets explosion damage `+0x418` to 100, fuse
`+0x410` to 45, Bomb scale `+0x434` to 1 and the separate explosion radius
scale `+0x44C` to 1. Variant 15 changes damage to 10; variants 17 and 20 set it
to 300. Bomb Update `0x6A24D0` passes damage `+0x418` and radius scale `+0x44C`
to Explosion `0x700060`; it passes `+0x434` through other Bomb state/effect
paths, not as that Explosion radius argument.

Explosion `0x700060` chooses the standard base radius from its damage argument:

- damage at or below 140: radius 75;
- damage above 140 and below 175: radius 90;
- damage at or above 175: radius 105.

It multiplies that radius by its radius-scale argument before calling
ExplosionDamage `0x6FF2A0`. The latter applies the already recovered owner and
trinket-63 radius adjustment. The special radius mask at `0xC347D0..DC` has
words `(0,0,0,0x00800000)`, which is TearFlags bit 119, `TEAR_GIGA_BOMB`.
Bomb Update explicitly ORs this mask for variants 17 and 20; any bomb carrying
that flag also uses radius 130 before `+0x44C` scaling.

## Integration

Reader, Entity JSON and the offline adapter now expose Bomb damage `+0x418`,
Bomb scale `+0x434`, and the native explosion radius scale `+0x44C`. Model
computes the standard damage-band radius and retains the old captured radius
only for inputs that lack these native fields. Planner uses the computed radius
for bomb warnings, explosion-owner scaling and homing-bomb approach space;
native fields take precedence over geometry-model radius guesses.

Variants 17 and 20 and the `TEAR_GIGA_BOMB` flag use the native 130-unit
override, replacing the former unsupported 200-unit floor for variant 17.
Other damage/visual flag effects remain incomplete. Future explosive target
damage to non-bomb targets, collision eligibility and cross-entity update order
remain incomplete. Type-4 baseHP zero prevents generic ExplosionDamage from
queuing bomb damage. No tests, gameplay, replay or measured validation were run
in this pass.
