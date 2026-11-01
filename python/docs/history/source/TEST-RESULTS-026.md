# Offline regression results for 0.2.6

## Scope

This pass covers the geometric retreat-direction count and the optimized `HazardAtlas.measure` path. All cases use generated arrays and synthetic `Body` records. No game, UI, Computer Use, or real input was used. These checks do not establish gameplay safety or guarantee a no-damage run.

## Test run

From `external/`, using the configured Python runtime and dependency paths:

```powershell
$env:PYTHONPATH='D:\IsaacAccessAssist\build-tools;D:\IsaacAccessAssist\vendor'
& 'C:\Users\Administrator\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe' -m unittest -v test_regressions_025 test_regressions_026 test_engine_app test_engine_weapons test_engine_world test_engine_warnings test_planner test_native_getters
```

**Result: 78 tests passed, 0 failures, 0 errors.** The run completed in 0.338 seconds. This includes the previous 67 selected offline tests and all eleven 0.2.6 regression tests. `test_win_platform` was excluded because it may send real input.

The escape-direction tests check that same-direction points and wall-slide results collapse to one geometric exit; input order does not change the count; perpendicular and opposing directions remain distinct; and different inputs whose traces converge under inertia count once. A narrow corridor remains escapable, and the wall-corner scenario still selects movement without rejecting all routes.

The `HazardAtlas` parity tests compare all seven outputs from `measure(..., reference=False)` against `measure(..., reference=True)`. Integer hit counts and first-hit frames match exactly; the other five arrays match at `rtol=1e-11, atol=1e-10`. Fixed-seed cases include high-speed crossings, delayed and expired bodies, blast-sized hazards, warnings, obstacles, signed zero and stationary paths, observed trajectories, latency padding, exact tangency, and mixed moving line, expanding ring, and circular hazards. No hazard is removed from either comparison.

Opaque-body shot tests check an intervening blocker, bodies behind the target, and off-ray bodies. A normal tear is rejected through a blocker; the same firing position receives an added position cost, while a side position outside the blocker segment does not. Brimstone and Tech laser shots retain their body-piercing behavior. Navigation no longer treats a same-line grid cell behind a Stoney as a zero-cost shot seed; nearby unobstructed firing lanes remain reachable. An inert `ControlWorker.process_snapshot` integration case confirms the app passes blocker records through planner guidance and aim checks without raising.

The first version of the navigation test expected the blocked cell to become unreachable. The observed field correctly retained a route from an adjacent open firing lane, so the assertion was narrowed to verify that the blocked cell loses its zero-cost seed status while remaining reachable by rerouting. No production code change was needed for that test adjustment.

## Local planning timings

The timing scene matches the prior 0.2.5 report: 560×640 all-walkable map, one distant enemy, and 30, 100, or 250 stationary ordinary projectiles. Each row is three consecutive `Planner.decide` calls using the same fixed scene. The counts below include the enemy. Every synthetic hazard remains in the input; there is no timing pass threshold.

| Projectiles + enemy | Previous run (ms) | Current run (ms) |
|---:|:---:|:---:|
| 30 + 1 (31 hazards) | 54.94, 39.98, 39.68 | 52.32, 37.10, 36.80 |
| 100 + 1 (101 hazards) | 99.64, 87.93, 81.46 | 84.08, 69.45, 67.48 |
| 250 + 1 (251 hazards) | 156.22, 142.67, 138.53 | 132.72, 118.28, 110.34 |

These are local synthetic compute timings, not gameplay or online frame-rate measurements. Hardware load and scenario geometry can change the result.
