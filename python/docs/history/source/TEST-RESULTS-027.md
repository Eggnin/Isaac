# Offline regression results for 0.2.7

## Scope

This pass checks position-scale calibration in `EngineMotion` and advisory roomy-region guidance in `EngineRetreat`, including the `Planner` handoff. The fixtures use synthetic snapshots, bodies, and walkability arrays. No game, UI, Computer Use, or real input was used. These checks do not establish gameplay safety or guarantee a no-damage run.

## Test run

From `external/`, using the configured Python runtime and dependency paths:

```powershell
$env:PYTHONPATH='.;D:\IsaacAccessAssist\build-tools;D:\IsaacAccessAssist\vendor'
& 'C:\Users\Administrator\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe' -m unittest -v test_regressions_025 test_regressions_026 test_regressions_027 test_engine_app test_engine_weapons test_engine_world test_engine_warnings test_planner test_native_getters
```

**Result: 89 tests passed, 0 failures, 0 errors.** This includes the previous 78 selected offline tests and eleven 0.2.7 regression tests. The final run completed in 0.394 seconds. `test_win_platform` was excluded because it may send real input.

The motion tests exercise calibrated scales 1 and 2 over frame gaps 2 through 6; reject reverse and lateral jumps; ensure duplicate frames do not add confidence; reset calibration when an address is reused with a different seed; and verify a changed unit estimate does not look like acceleration. They also compare calibrated Body and target velocities, confirm prediction snapshots preserve source records and retain `raw_velocity`, and check a Monstro landing reservation uses the same calibrated speed as the target representation.

The guidance tests confirm obstacle-only and unpressured scenarios do not activate guidance. Under nearby projectile pressure, the field favors the connected roomy region; an isolated undersized pocket receives the capped cost instead of an invented route across a wall. A 40-pixel corridor remains unblocked when the synthetic threat does not occupy it, confirming guidance does not itself prohibit the only narrow route. A Planner integration test captures the call into BeamSearch and verifies the active guidance callable is passed through. A `ControlWorker.process_snapshot` order test verifies motion fitting and prediction-snapshot creation precede exactly one `World.update` per snapshot, with calibrated velocity passed into that capture.

During fixture development, one first-pass approach test failed because its projectile genuinely blocked the corridor at the future layer. The fixture was changed to pressure the starting area while leaving the corridor open at that layer. The final assertions now separate hazard blocking from the soft guidance preference; no production code was changed.

## Local planning timings

Each row is three consecutive `Planner.decide` calls using one fixed 560×640 all-walkable Boolean map, player at `(100, 280)`, one stationary distant enemy, and the listed number of stationary ordinary projectiles. Projectiles are generated on a deterministic 21-column grid; the enemy is included in the hazard count. The same full list is passed to each call; no hazards are culled. There is no timing pass threshold. These measurements were recorded before the latest prediction-snapshot/World-update ordering integration and are retained as earlier local timing data; they are not a benchmark of the final integration revision.

| Projectiles + enemy | Previous 0.2.6 run (ms) | Current 0.2.7 run (ms) |
|---:|:---:|:---:|
| 30 + 1 (31 hazards) | 52.32, 37.10, 36.80 | 50.26, 40.12, 38.76 |
| 100 + 1 (101 hazards) | 84.08, 69.45, 67.48 | 74.07, 63.32, 63.44 |
| 250 + 1 (251 hazards) | 132.72, 118.28, 110.34 | 131.78, 122.10, 116.98 |

These are local synthetic compute timings, not gameplay or online frame-rate measurements. Machine load and scene geometry can change results.
