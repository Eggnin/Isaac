# Mechanism consumption record (2026-10-31)

Purpose: measure which recovered mechanisms actually reach a decision, instead
of assuming that a database entry or a decompiled function is in use.

## Tool

`IsaacGamebot.exe --consumption <frames.jsonl> <report.json>` replays a frame log
in-process. For every frame it recomputes `MechanismSemantics::evaluate` and the
default planner, then reports:

- identities present, with frame counts;
- every geometry/pattern model in the database with its `attached_frames`
  (a model is attached when its target identity exists in the frame and the
  semantics layer copies it to the runtime with a live source address);
- `never_attached_ids`;
- warning-rule counts;
- threat counts by kind and frames with predictive threats.

The inventory comes from `MechanismSemantics::geometry_inventory()`, which
exposes database provenance (`id`, `kind`, `pattern`, `pattern_rule`,
`planning_validated`, `pre_spawn_verified`) without adding those strings to
frame logs.

## Sample

`sessions/native-20261030-171209-765`, first six segments: 5561 frames, 5134
valid, ~3 minutes of play. Report: `validation/consumption-report.json`.

| metric | value |
| --- | --- |
| database models | 617 (530 geometry + 87 pattern refs) |
| identities present | 12 |
| distinct attached models | 11 |
| attachment instances | 32234 |
| never attached | 606 |
| warning rules fired | 1 (`monster-contact-geometry`, 26840) |
| threats | contact 27208, explosive-npc 1060, projectile 445, projectile-stream 997 |
| frames with predictive threats | 739 |

Per-identity detail for the identities that appeared:

| identity | frames | models | patterns | attached |
| --- | --- | --- | --- | --- |
| 85.0.0 | 11201 | 1 | 0 | 1 |
| 884.0.0 | 4246 | 1 | 0 | 1 |
| 217.0.0 | 3945 | 1 | 0 | 1 |
| 30.2.0 | 3271 | 1 | 0 | 1 |
| 10.0.0 | 2231 | 1 | 0 | 1 |
| 11.1.0 | 2037 | 1 | 0 | 1 |
| 10.1.0 | 1853 | 1 | 0 | 1 |
| 281.0.0 | 1125 | 1 | 0 | 1 |
| 11.0.0 | 1042 | 2 | 0 | 2 |
| 33.0.0 / .1 / .2 | 158-316 | 0 | 0 | 0 |

The 11 attached models are nine contact discs, one observed projectile model,
and one pattern ref: `310.0.0|projectile|*|projectile#pattern:stream`. All 997
`projectile-stream` threats in the session come from that single rule. Every
frequent identity in this session has exactly one database model and zero
patterns, so the mechanism layer cannot warn before their attacks spawn; those
identities are contact-only in the database.

## What this says

- The database is not "in use" in aggregate: 11 of 617 models were exercised,
  and 606 were never attached because their identities never appeared. That is
  expected for a single session, but it means global counts (506/617 models,
  87 rules) say nothing about coverage in a given fight.
- Within the identities that did appear, coverage is high (10 of 11 models
  attached). The gap is the other direction: the common enemies in this session
  have no attack models or patterns at all.
- The warning layer contributes contact geometry only. Contact models correct
  the frame radius but do not predict attacks; they are proximity duplicates.
- Pre-fire prediction in this session rests on one pattern rule. The observed
  emission envelope feature (Pass 10, default off) exists for exactly this gap
  but was not enabled for this run.

## Next work, derived from the data

1. Add attack models/patterns for the identities that actually appear:
   85.0.0 (11201 frames), 884.0.0, 217.0.0, 30.2.0, 10.x, 11.x, 281.0.0. The
   consumption report is now the priority list; pattern count per identity is
   zero for all of them.
2. For identities with no decompiled pattern, enable the observed emission
   envelope and measure it with `--audit` on sessions where those identities
   fire projectiles (this session has 16 hostile births, too few to learn).
3. Keep the contact layer, but stop counting it as attack prediction; the audit
   already separates `coverage_any` from `coverage_hazard`.

## Reader field map

`FIELD-MAP.md` (generated) lists 141 captured fields:

| category | fields |
| --- | --- |
| decision path | 98 |
| semantics/observation | 22 |
| model helpers | 14 |
| captured, unconsumed | 5 |

The five unconsumed fields are `bomb_countdown2`, `bomb_scale`, `damage_stat`,
`effect_lifespan`, `laser_shape_kind`. They stay captured for research but are
removed from compact logs. Two more (`active`, `exists`) are read by
`Entity::alive()`; the generator misses them because they appear in an inline
body.

## Log overhead

Measured on one real frame (`frames-0001.jsonl`, 9 entities): total 70.3 KB.

| block | bytes | share |
| --- | --- | --- |
| mechanisms.enemies | 22408 | 32% |
| frame.entities | 15389 | 22% |
| frame.grid | 11356 | 16% |
| mechanisms.geometry_models | 9841 | 14% |
| mechanisms.warnings | 4505 | 6% |
| decision | 3851 | 5% |
| frame.player | 2043 | 3% |

`GAMEBOT_LOG_DETAIL=compact` drops `geometry_models` and each enemy's
`behavior_model` (both recomputed by replay) and the five unconsumed entity
fields: about 17 KB per frame, 24%. `session.json` records the mode. The default
stays `full`, so existing research logs and external readers are unchanged.

## Modified files in this pass

- `cpp/include/gamebot/model.hpp`: `MonsterGeometryRef::id/pattern_rule` (not serialized).
- `cpp/include/gamebot/semantics.hpp`: `ModelInventory`, `geometry_inventory()`.
- `cpp/include/gamebot/runtime.hpp`: compact-log helpers.
- `cpp/src/semantics.cpp`: model provenance, stable ids for synthesized pattern refs, inventory.
- `cpp/src/planner.cpp`: restored source-owned gates for poison smoke and fire jets (lost in a concurrent refactor).
- `cpp/src/gui_win32.cpp`: compact-log support and `log_detail` in `session.json`.
- `cpp/src/main.cpp`: `--consumption`, compact-log support, help text.
- `cpp/tests/core_tests.cpp`: stale smoke kind, Pass 18 bomb-chain expectation, compact-log test.
- `research/ai-recovery/FIELD-MAP.md`, this file.

No gameplay or control run was performed. All numbers above are replay
measurements, not measured combat results.
