# Offline regression results for 0.2.5

## Scope and authorization

The user explicitly authorized Luna to run a light offline regression pass. That instruction superseded the older “no further tests” note in `AGENTS.md` for this pass. Tests used constructed snapshots and temporary log directories only. Isaac was not started, Computer Use was not used, and no game input was sent. `test_win_platform` was excluded because it may send real input.

These checks do not establish gameplay behavior or guarantee that a run will take no damage.

## Final test run

From `external/`, with the requested Python runtime and dependency paths:

```powershell
$env:PYTHONPATH='D:\IsaacAccessAssist\build-tools;D:\IsaacAccessAssist\vendor'
& 'C:\Users\Administrator\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe' -m unittest -v test_regressions_025 test_engine_app test_engine_weapons test_engine_world test_engine_warnings test_planner test_native_getters
```

**Result: 67 tests passed, 0 failures, 0 errors.** The run completed in 0.301 seconds. Function-style tests in `test_engine_world.py` and `test_engine_warnings.py` were collected through their `load_tests` hooks. The Windows input test module was intentionally not run.

The added contracts cover stationary firing only when permitted, attack alignment versus extra stand-off, obstacle scoring and retreat connectivity, explosive reservations after entity disappearance, aim rejection reports, and diagnostic records for health loss and cooldown observations. Control-worker integration tests exercise both `normal_attack` and `no_safe_aim` using an inert input stub, then read queued log files after `close()`.

Diagnostics checks also cover unchanged health without a false damage report, duplicate-frame suppression, room-scoped history, observed-only source attribution, and asynchronous writer failure when the log directory path is a regular file. `process_snapshot` tests confirmed that `EngineDiagnostics.record` receives the aim and weapon-control context; they also verified those fields in both `combat.jsonl` and `engine.jsonl`. Queue writes were drained by closing the writer before assertions.

## Test data corrections and production fixes

Five earlier failures came from stale fixtures or expectations, not from production regressions. Projectile fixtures omitted `collision_class`; laser fixtures omitted positive `collision_damage` or an explicit endpoint; and the stone test expected no body even though stone now has the intended soft `obstacle` kind. The laser geometry test was updated to assert the two swept line segments represented by its three samples. These changes preserve the dangerous-projectile assertions while giving the fixtures the collision data required by the current classifier.

Other stale expectations found during integration were updated to match current contracts: the app fixture now supplies target coordinates and a Boolean shot mask, checks the current movement-speed conversion and compact targeting result; charge tests model a missing safe aim and the align-then-release sequence. No test was removed.

Two production fixes were separately exercised by regression tests:

- Brimstone tail state now requires a matching main-entity address when one is available; an unrelated type-3 laser with a Brimstone-like variant no longer holds the charge gate open.
- A charged weapon cannot release based on a cached direction when the current `fire` value is absent, including callers that omit `predicted_hit`.

## Retreat geometry parity

A fixed-seed (`20261023`) comparison tested the optimized `_blocked_batch` against `_blocked_batch_reference`. It compared the Boolean result for static and moving circles, active start/end windows, zero-length route segments, latency padding, an exact circle tangency, a route crossing a segment hazard, an expanding ring crossing, and mixed circle/line/ring inputs. Every result matched exactly. All hazards remained in each calculation.

## Local planning timings

The timing sample used a 560×640 all-walkable Boolean map, one distant enemy, and 30, 100, or 250 stationary ordinary projectiles. Each row is three consecutive `Planner.decide` calls on the same fixed scene. Hazard counts include the enemy. No body was truncated and no hard timing threshold was used.

| Projectiles + enemy | Before kernel optimization (ms) | After kernel optimization (ms) |
|---:|:---:|:---:|
| 30 + 1 (31 hazards) | 63.53, 48.65, 50.50 | 54.94, 39.98, 39.68 |
| 100 + 1 (101 hazards) | 126.64, 109.74, 110.06 | 99.64, 87.93, 81.46 |
| 250 + 1 (251 hazards) | 228.61, 216.75, 214.89 | 156.22, 142.67, 138.53 |

These are local synthetic planning timings, not gameplay or network frame-rate measurements. In this run, the 250-projectile case moved from above a 200 ms local computation budget to below it; machine load and other scenes can change the result.

Before optimization, one `cProfile` run of the 251-hazard scene took 0.258 seconds profiled. The main cumulative costs were `EngineRetreat.prepare` (0.142 s), its `_blocked_batch` calls (0.127 s cumulative / 0.079 s own time), and `BeamSearch.choose` (0.097 s). `HazardAtlas.measure` took 0.067 s cumulative / 0.046 s own time. This identified retreat batch geometry as the largest optimization target. The optimized path retains the same comparison semantics in the covered scenarios while avoiding large coordinate temporaries and square roots for circles.
