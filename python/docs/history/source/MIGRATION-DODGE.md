# External dodge migration

This note maps the read-only Python dodge helpers to the existing in-game Lua
logic. They do not read process memory themselves and do not write game state.

## Interfaces

`EngineMotion` in `engine_motion.py` owns the temporal fit and entity tracks.

- `reset()` clears the room and player fits.
- `observe(frame, velocity, input_vector, nominal_speed, eligible=True, position=None)` learns player inertia and position integration. Player velocity, input, and nominal speed are in engine units per physical frame. The result includes `speed_per_second`, `inertia`, `position_a`, and `position_b` for the Planner adapter.
- `update(snapshot, player, input_vector=None, nominal_speed=None, eligible=True)` returns `{inertia, speed_per_frame, speed_per_second, position_a, position_b, models, hazards}`. Merge `hazards` with `EngineWorld` bodies. `models` contains per-entity acceleration, turn rate, position scale, and sudden-change uncertainty for future richer Planner use.

`EngineRetreat.prepare(walkable, bodies, player_radius, speed, origin=(40,120), horizon_frames=24, escape_frames=24, margin=8)` returns `RetreatField` or `None` if no grid nodes are available. `RetreatField.cost(position, elapsed=0)` returns a soft endpoint penalty based on future safe connectivity and open area. `speed` is pixels per second and `elapsed` is seconds. The field does not reject movement; the Planner's near-term collision evaluation must remain authoritative.

## Migrated behavior

- `motion.lua`: bounded 48-row least-squares estimates for inertia and free speed, nominal-speed change resets, residual and fit bounds, and the separate two-velocity position integration fit. The external caller supplies actual keyboard intent; motion is never guessed from screen pixels.
- `world.lua` / `prediction.lua`: observed entity displacement calibrates raw engine velocity scale when it matches position deltas. Consecutive snapshots estimate acceleration and angular change. Abrupt velocity changes add conservative short-range side corridors; jump/hop/land animations reserve a landing region, including ordinary spider pounces when their animation exposes that phase.
- `world.lua`: Dingle `BeforeSlide` / low-speed slide preparation emits a soft committed lane. During the native slide, observed momentum and braking frame produce a sustained rush capsule. Other charge/dash windups use `target_position`; targets beyond room bounds still produce a soft lane spanning the room.
- `retreat.lua`: a full, uncapped grid graph is evaluated across five future time layers. Hazard-blocked cells and edges reduce future route depth and branching capacity. Safe candidate endpoints in narrow cul-de-sacs receive a larger advisory cost, while unknown or disconnected topology adds no penalty.
- `navigation.lua`: the future field uses 40-pixel neighboring walkable centers and checks the full player radius along each edge. The existing `EngineWorld.walkable` mask supplies room shape, pits, objects, walls, spikes, and button exclusions.

## Sources and limits

- `online/assist-source/motion.lua`: inertia fit, residual thresholds, rolling sample windows, and position-integration fit.
- `online/assist-source/prediction.lua`: short-window acceleration, turning and homing extrapolation, swept danger bounds.
- `online/assist-source/retreat.lua`: four future layers, pressure geometry, component capacity, backward depth/space value, and advisory endpoint cost.
- `online/assist-source/navigation.lua`: four-neighbor walk graph, segment clearance, and radius-aware movement.
- `online/assist-source/planner.lua`: urgency ordering, escape counts, and use of retreat cost only after safety ties.
- `online/assist-source/world.lua`: observed velocity scaling, abrupt-movement handling, jumps, rush/charge lanes, Dingle momentum, and pursuit models.
- Matching reference modules: `isaac-access-assist/motion.lua`, `prediction.lua`, `retreat.lua`, `navigation.lua`, `planner.lua`, and `world.lua`.

The old source has no separately named spider-only predictor. Spider pounces are covered only when their engine animation/state exposes the generic `jump`, `hop`, or `land` phase; other spiders rely on observed velocity and sudden-change corridors. NPC collision classes and exact charge onset still depend on the snapshot fields being present and correctly decoded. The current external `Planner` consumes `Body` geometry; it does not yet consume the returned acceleration/turn model map, so these models are available for an explicit later integration rather than silently changing current planner semantics. Door-aware retreat requires door positions in snapshots, which this reader does not currently provide.
