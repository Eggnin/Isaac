# Pass 18: native bomb target filtering and chain behavior (2026-10-31)

## Recovered path

- Every Type-4 entry in the local `entities2.xml` has `baseHP="0"`.
  Bomb::Init `0x6A2050` calls Entity base initialization and does not assign
  MaxHP `Entity+0x384` afterward.
- ExplosionDamage `0x6FF2A0` performs its room-area query and sends eligible
  non-player, non-effect targets through the shared Entity::TakeDamage slot.
  Entity::TakeDamage `0x6ACE60` appends a damage record only when the target's
  MaxHP at `+0x384` is positive. Therefore ordinary ExplosionDamage cannot
  queue damage against a vanilla Type-4 bomb.
- Neither ExplosionDamage nor the Bomb Kill implementation `0x6AC920` writes
  the bomb fuse or calls Explosion. The native fuse writes recovered so far are
  direct contact/source actions: explosive-tear contact (`TEAR_EXPLOSIVE`, bit
  12), Big Horn State 13, Type 28 State 16, Type 62.3 State 5, and player State
  4 `Poof`.

## Integration

Planner's proximity-only explosion-to-bomb propagation loop has been removed.
It retains a bomb's own fuse event, native explosive-tear contact prediction,
and the classified owner-held-bomb releases. It can still consume a lethal
damage queue already present in a captured entity; that generic queue rule
applies to positive-MaxHP entities, while vanilla bombs normally fail the
TakeDamage MaxHP gate.

The self-source Poof explosion remains described by the animation/field
research, but it is not modeled as a soft chain threat: native area damage
excludes its player source, and vanilla bombs cannot accept its queued damage.
Planner models the held-bomb release itself. Future damage to other eligible
entity types remains outside this bomb-specific pass. No tests, gameplay,
replay or measured validation were run.
