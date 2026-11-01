# Bomb chain tracing and accepted damage queues (2026-10-31)

See `PASS-18-BOMB-CHAIN-FILTERS.md` for the native target-filter evidence.
Vanilla Type-4 bombs have `baseHP=0`, so generic ExplosionDamage cannot queue
damage to them through shared Entity::TakeDamage. The proximity-only chain
envelope has been removed from Planner; direct contact fuses and source-owned
held-bomb events are handled separately.

## New native exports

`ghidra-bomb-chain/` follows the original Bomb vtable at `0xB670F4`: Update slot
`+0xC` is `0x6A24D0`, TakeDamage slot `+0x20` is the shared `0x6ACE60`, Kill
slot `+0x24` is `0x6AC920`, Remove slot `+0x28` is `0x6ACB00`.

TakeDamage checks the Lua callback gate `0x864560`, constructs a 56-byte damage
record (`0x6A8190` is its constructor, despite its initial working export name),
then appends it with `0x6B7DB0` to the vector at Entity `+8/+0xC/+0x10`.
The record contains amount at `+0` and 64-bit flags at `+8`.
Entity `+0x14` accumulates accepted damage; `+0x18/+0x1C` accumulates flag words.
These are pending damage, not a bomb fuse countdown.

Entity BaseUpdate `0x6AF5xx..0x6AF8E1` consumes positive queued amounts in order
when the entity is not invincible. It subtracts HP per record, clamps negative
HP for DAMAGE_NOKILL (bit 0), and calls Kill when an ordinary record reaches
zero HP. It then clears queue end, amount and flag accumulators. A bitwise OR
of aggregate flags alone does not reconstruct mixed ordinary/NOKILL ordering.

`0x703190`, called after ExplosionDamage by Explosion, creates effect 1000.18
and updates room visual history. Its export does not establish a fuse transition.

## Connected functionality

Reader, Entity JSON and the offline adapter now expose pending totals, flag
words and per-record amount/flags. Semantics includes the pending queue in
behavior observations. Death-emission prediction uses already accepted lethal
damage at the next native update, before considering additional visible tears;
nonlethal queued damage reduces the remaining HP used by the tear calculation.
Each NOKILL record is interpreted separately. This advances death-attack timing
without assuming that an attack candidate or a nearby explosion is lethal.

Reader/JSON/offline adapter also capture bomb hold state `+0x3FC`. Source-owned
held-bomb prediction connects Type 28 State 16's StateFrame 37 trigger and Type
62.3 State 5's live animation end. Their held trajectories follow the owner;
the native source trigger supplies the fuse event instead of a suspended
ordinary countdown. Explosive contact prediction excludes objects still in hold
state. Parent future movement remains extrapolated, and these rules are not
measured explosion-position/timing accuracy.

## Classified immediate-zero write candidates

`ghidra-bomb-chain-writes/` exports the containing functions for seven candidate
instruction addresses. These seed addresses are inside functions; exporter log
messages about resolving a containing entry are not decompilation failures.
The original seed Type 4 labels were search hypotheses, not recovered identities.

- `0x6B8D4F`, containing `0x6B8B20`: NPC initialization resets StateFrame.
- `0x6BE7CC`, containing `0x6BE760`: NPC death/state-17 transition resets
  StateFrame. This is not a bomb countdown write.
- `0x6C85DD`, containing `0x6C4B30`: NPC update transitions the NPC to State 18
  and resets StateFrame. This is not a bomb countdown write.
- `0x454597`, Big Horn Type 411 AI `0x453140`: resolves a Type 4 child, clears
  both countdowns, relocates it to the parent's position plus (0,2), then calls
  that bomb's Update. State 13's `BombExplode` animation event at `0x4544CC`
  performs this release; the existing export confirms the event predicate,
  clears the holder's `+0x3C0` link, moves the bomb to owner position +(0,2),
  zeros `+0x410/+0x414`, then calls Bomb::Update `+0xC`.
- `0x47BE94`, Type 28 AI `0x47A360`: State 16 reaches StateFrame 37, clears both
  countdowns on the held Type 4 object and calls its Update.
- `0x5B0891`, containing `0x5AF800`: Type 62 Variant 3 delegates here from
  `0x476860`. In State 5, on the owning animation's end, a held Type 4 object at
  owner `+0xBEC` has both countdowns cleared and Update called.
- `0x7D4E01`, containing `0x7D4390`: a player-owned object at `+0x1410` is checked
  for Type 4 in player action State 4. The `Poof` animation event first applies
  the action damage, then clears both bomb countdowns and calls Update. The
  same callback calls ExplosionDamage at the player's position with radius
  `max(10, 25 * Player+0x14F0)` and excludes the player source from its target
  list. Player action state `+0x1F2C`, bomb pointer `+0x1410` and damage stat
  `+0x14F0` are now read. State 4 uses the live event table; from State 3,
  ANM2 transition timing and the down-animation frame-7 `Poof` predict the event.

Generic ExplosionDamage invokes Entity::TakeDamage for eligible targets but
never writes either bomb countdown. Every Type-4 configuration in the local
`entities2.xml` has `baseHP=0`; Bomb::Init `0x6A2050` calls Entity base init and
does not assign MaxHP, while Entity::TakeDamage `0x6ACE60` queues only if
MaxHP `+0x384` is positive. Consequently ordinary ExplosionDamage cannot queue
damage to vanilla bombs, and proximity alone does not chain them. For the
general entity damage path, BaseUpdate consumes accepted queue records in
order: DAMAGE_NOKILL clamps HP and continues; an ordinary lethal record calls
Bomb Kill `0x6AC920`, which marks dead without an Explosion call. Planner keeps
this accepted-queue case for frames where it is present, but no longer treats
nearby bomb blasts as generic fuse resets.

Type 28, Type 62.3, Big Horn 411 State 13 and player State 4 triggers are
connected as source-owned held-bomb rules. Big Horn uses the native named event
table and predicts its +2 release position while following the holder. Player
State 4 uses `Poof` to force its held bomb's fuse to zero; the same callback
applies a player-centered ExplosionDamage pulse. Type-4 `baseHP=0` prevents
that area pulse from queuing damage to other vanilla bombs, and the player
source is excluded from its own targets. The common Player ANM2 lets State 3
predict through the up-animation end and into down-animation frame 7; alternate
player animation data remain unresolved. Generic proximity-based fuse chaining
has been removed. No tests, gameplay, replay or measured validation were run.

Pass 17 establishes the standard Bomb damage-to-radius formula and corrects
Planner to use `+0x418` damage and `+0x44C` radius scale. Variants 17 and 20
explicitly add `TEAR_GIGA_BOMB`; the same bit in any Bomb's TearFlags selects
base radius 130. The separate `+0x434` Bomb scale is not the Explosion
function's radius argument. Other flag effects, TNT and enemy death propagation
remain incomplete; see `PASS-17-BOMB-EXPLOSION-RADIUS.md`.

When a bomb's captured accepted damage queue is already lethal, Planner now
uses native queue order and the NOKILL flag to limit its blast envelope to the
next BaseUpdate and removes it from the predicted chain-source set. Bombs whose fuse is
due within that same update retain their native fuse event. This covers damage
already queued in the captured frame. In the vanilla configuration MaxHP is
zero, so this queue branch only applies if another native path has already
accepted damage; it does not model ordinary blast-to-bomb chain damage.
