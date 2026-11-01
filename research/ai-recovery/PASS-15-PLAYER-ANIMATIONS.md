# Pass 15: Player leap animation timing (2026-10-31)

Read the installed `resources/packed/afterbirthp.a` animation archive with the
existing local archive reader; the archive and game installation were not
modified. The `gfx/001.000_Player.anm2` record is 100 and decodes to 258,304
bytes. Its event table maps ID 1 to `Poof`.

| Animation | Frames | Relevant events |
|---|---:|---|
| `LeapUp` | 11 | `Poof` at frame 7 |
| `SuperLeapUp` | 24 | `Poof` at frame 17 |
| `LeapDown` | 33 | `Poof` at frame 7; `Hit` at frame 21 |
| `SuperLeapDown` | 43 | `Poof` at frame 7; `Hit` at frame 31 |

The Type-1 Player Update at `0x7D4390` changes action State 3 to State 4 when
the up animation ends, then starts the matching down animation. State 4 checks
`Poof`; if the pointer at player `+0x1410` is a Type-4 bomb, it applies damage,
zeros countdowns `+0x410/+0x414`, and calls Bomb::Update. Thus a State-3 reader
sample can predict this held-bomb event as the remaining up-animation updates
plus seven down-animation frames at the native playback rate. A State-4 sample
uses the live event bit/trigger table.

Reader and the offline layout adapter already carry the needed animation
metadata and now expose player action state, held bomb and damage stat. Model
uses this timing to predict the held-bomb release. The player-centered
`ExplosionDamage` callback does not chain to other vanilla bombs because Type-4
base HP is zero; it also excludes its player source from its recipients. The
separate Player2 animation has no matching
leap animation names, so the cross-animation prediction is limited to the
common Player animation. Other player-specific animation overrides are not
covered. No tests, gameplay, replay or measured validation were run.
