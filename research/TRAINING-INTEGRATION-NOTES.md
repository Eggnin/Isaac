# Full-room offline training integration for `the-browsing-of-isaac`

Implementation status (2026-10-28): JSPI step/reset, a complete native Monstro fight, batch parity, optional render bypass, and two-worker parameter search now run. A 12-room original-engine enemy coverage suite now checks contact, charge, laser, explosion/split, summon, jump-landing and projectile mechanics across two seeds; see `enemy-coverage.json` and `OFFLINE-TRAINING.md`. These earlier design notes include timing suggestions, not a record of applied patches.

## Result

Use the parent's complete lifted original-engine module in Node. The target is the installed J460 executable `D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe`, SHA-256 `7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F`. Do not train against the hand-translated `Game::Update` slice or the JavaScript frame-input bridge: the slice is partial, has 24 open boundaries, and has no keyboard fields. The complete lifted path already contains the original input manager, room/player updates, RNG, save handling, RNG-consuming entity logic, and room-clear/death behavior.

The smallest working integration is:

1. Boot the complete lifted engine once with its prepared `boot.mjs`, `boot.wasm`, `isaac.segs.bin`, and game-data root.
2. Keep the engine's own `main` loop and inject one normalized action per increment of `Game + 0x264f8` through the existing Win32-message input callback.
3. Read observations directly from guest memory after each logic update. Use the current Room entity vector, player vector, room descriptor, and room transition state.
4. Keep `ISAAC_YIELD` off and run the Node build in its default deterministic QPC mode. Set `[0x00c798e4] |= 0x200`; for an unthrottled training build also make the branch at `0x0093134f` return directly to `0x00931231`, because the fast-frame latch in `BL` can otherwise re-enable the 1/60-second limiter after a long uncapped burst.
5. Reproduce an episode with the native `seed <8 chars>` command, then select the same stage/room and wait for an idle transition plus an advancing `GameFrame`. Reloading a fresh module is the simplest exact reset. A same-instance reset through the native seed path is possible but has more host-side state to clear.

The direct step boundary is the normal Win32 input callback immediately before `Game::Update`: the engine calls `PeekMessageW`, then `InputManager::Update` at `0x00a1fc00`, then `Game::Update` at `0x006fadc0`. Therefore an action queued from that callback reaches the original input state before the same logic tick.

## Evidence Baseline

The local original-engine target and build assumptions are:

- `D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe`
- size 9,362,440 bytes
- SHA-256 `7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F`
- PE32 image base `0x00400000`
- PE entry `0x00cfe310` (Steam `.bind` wrapper)
- engine `main` at `0x00931050`
- engine initialization call at `0x009aa040`

Sources: `D:/Isaac/research/WASM-VALIDATION-20261028.md`; `D:/Isaac/research/wasm-local-pe-check.json`; `the-browsing-of-isaac/scripts/recomp/host/include/isaac_host.h:33-63`; `the-browsing-of-isaac/docs/HANDOFF.md:1300-1313`.

All VAs in this note come from the local hash-bound PE index at `the-browsing-of-isaac/output/decomp/7122ac287799/index/pe-index.sqlite`. Do not mix them with the upstream unpacked target's different hash or layout. The upstream `5129DF723E645DAAEA59514394195F3EA1DCE1671BB0433D724648A845017200` target remains a useful reference, but it is not the binary that produced this address map (`AGENTS.md:96`; `D:/Isaac/research/WASM-VALIDATION-20261028.md`).

The repository describes the static-recomp track as the full-engine route and hand translation as a slower verified-boundary track. The final frame path must not depend on x86 emulation (`AGENTS.md:6,41-61`).

At inspection time, `node scripts/decomp/status.mjs` reported the hand-decomp Update slice at ABI 101 with 24 open boundaries and 27 resolved boundaries. The parent has also generated the J460-specific import/function/shim inputs under `D:/Isaac/research/runtime-inputs`. The complete engine link is still a parent responsibility. It must supply:

- complete lifted `boot.wasm` and `boot.mjs`
- a matching J460 `isaac.segs.bin`
- packed archives and loose `resources/` tree
- complete lifted-object build and host shim objects
- Node 20+ and the Emscripten/Clang/Binaryen toolchain used by the parent

The parent reports the local J460 PE layout corresponds closely to the upstream image but has a different entry point, image size, and `.bind` section (`D:/Isaac/research/wasm-local-pe-check.json`). The local host source now carries the J460 image size, entry point, and a moved guest heap (`scripts/recomp/host/include/isaac_host.h:33-63,120-124`).

`third_party/REPENTOGON` is an uninitialized submodule here. It is not needed at training runtime, but its function catalogs are needed for future signature checks. The parent's pinned reference commit is recorded in `D:/Isaac/research/WASM-VALIDATION-20261028.md`.

## Original Runtime Order

The original frame loop is inside `main` at `0x00931231..0x00931453`:

1. Read the engine clock.
2. Call `0x009ab6d0`, which performs Steam/EOS callbacks and calls `Manager::Update(1)` at `0x00954cd0`.
3. Call `Manager::Render` at `0x009555c0`.
4. Present through the GLFW/`SwapBuffers` path.
5. Run Lua GC.
6. Test whether the window should close.
7. Optionally sleep/spin to the engine's 1/60-second deadline.

Source: `the-browsing-of-isaac/docs/HANDOFF.md:1300-1308`.

`Manager::Update` is half-rate. It tests bit 0 of `Manager + 0x4abbc`; on the odd pass it increments that word and returns before input and game update. On the even pass it runs input polling and reaches `Game::Update`:

- entry: `0x00954cd0`
- early return: `0x00954d2e..0x00954d4a`
- input/device polling: `0x00954f4d..0x00954f7d`
- `InputManager::Update`: `0x00a1fc00`
- `Game::Update`: `0x00955231 -> 0x006fadc0`

Source: `the-browsing-of-isaac/docs/recomp-architecture.md:8642-8646`; `the-browsing-of-isaac/docs/HANDOFF.md:1301-1305`.

`Game::Update` increments both `Game + 0x264fc` and `Game + 0x264f8` at `0x006fb9f7..0x006fba0b`. Use `Game + 0x264f8` as the training logic-frame counter. It does not advance while the game is paused (`docs/decomp-port.md:223`).

## Exact Per-Logic-Frame Input Hook

### Existing hook

The host's `PeekMessageW` shim calls `Module.isaacInputPoll(frame, out)` from `input_poll_page()`. Each poll returns one four-int32 event:

```text
[1, virtual_key, scancode | extended << 8, down]
[2, x, y, 0]
[3, mouse_button, down, 0]
```

The event becomes a real Win32 message. `PeekMessageW` drains it and `DispatchMessageW` calls the GLFW window procedure, which updates the original keyboard state. `TranslateMessage` supplies `WM_CHAR` for console text.

Sources:

- `the-browsing-of-isaac/scripts/recomp/host/src/host_shims_win.c:997-1115`
- `the-browsing-of-isaac/scripts/recomp/host/src/host_shims_win.c:1163-1233`
- `the-browsing-of-isaac/scripts/recomp/host/src/host_shims_win.c:1235-1347`
- `the-browsing-of-isaac/scripts/recomp/lift/boot_integration.mjs:239-323`

The existing drivers already prove this path in headless Node:

- scripted input: `scripts/recomp/lift/boot_integration.mjs`
- held-key state explorer: `scripts/recomp/lift/explore.mjs:294-297`
- typed engine console: `scripts/recomp/lift/console_typing.mjs`

### Logic-frame synchronization

The callback argument is the number of presented frames, not the game logic frame. In the normal Node loop that number advances by two between full `Manager::Update` passes:

```text
presented 0 -> Manager pass 0 -> GameFrame N -> present 1
presented 1 -> Manager odd pass -> early return -> present 2
presented 2 -> Manager pass 2 -> GameFrame N+1 -> present 3
```

The callback fires only after the odd-pass early return, so it observes `0, 2, 4, ...` in the ordinary unfiltered loop.

For a training adapter, read `Game + 0x264f8` in the callback and key the action queue by that value. At callback time for logic frame `N`, the counter still contains `N`; the action will be consumed by the same `Manager::Update` pass immediately before the update increments it to `N+1`.

Do not key actions by raw callback count if browser render skipping can be enabled. `ISAAC_RENDER_GATE` may suppress presents without suppressing the game tick. The headless Node build has no such gate (`host_shims_win.c:917-920`), and a game-frame keyed adapter remains correct in either environment.

### Action conversion

Keep an owned desired key-state set and emit only deltas:

```text
move: a/w/d/s
fire: left/up/right/down
actions: space/q/e/ctrl/tab/escape
```

The key table is in `scripts/recomp/lift/explore.mjs:68-95`. A keydown event remains effective until keyup, because GLFW maintains held state. This is suitable for per-tick movement vectors and continuous fire. For a one-tick tap, queue keydown for logic tick `N` and keyup before the input poll for logic tick `N+1`; do not send down and up inside one poll, because the engine would never observe the down state.

The current timeline implementation defaults to a two-present-frame hold and the console typist uses three presented frames (`boot_integration.mjs:255-259`; `console_typing.mjs:3-12`). That is adequate for menu/setup key edges. A training adapter should use queued held state rather than timing-specific taps.

## Memory-Based Observation Map

Guest virtual addresses are identity-mapped into the Wasm heap. The existing Node driver creates `HEAP32`/`HEAPU8` views and reads a guest VA directly (`scripts/recomp/lift/boot_integration.mjs:264-288`).

This map is sufficient for a memory-only full-room policy:

| Value | Address / offset | Type | Evidence |
|---|---:|---|---|
| Game pointer | `*(u32*)0x00c71678` | pointer | `scripts/recomp/lift/explore.mjs:35` |
| Manager pointer | `*(u32*)0x00c7169c` | pointer | `host_shims_win.c:753-754` |
| logic frame | `i32 Game+0x264f8` | signed counter | `game_update_slice.json:396-399`; increment at `0x006fb9f7..0x006fba0b` |
| room-transition state | `i32 Game+0x1b83c` | idle when `0` | `explore.mjs:33,38`; death gate at `0x009bb5df` |
| stage | `i32 Game+0x0` | stage id | `explore.mjs:37` |
| stage type | `i32 Game+0x4` | stage mode/type | `explore.mjs:37` |
| current Room | `u32 Game+0x18300` | pointer | `explore.mjs:38`; same object is render root in `docs/decomp-runtime-wiring.md:109-110` |
| room index | `i32 Game+0x18304` | current room id | `explore.mjs:38` |
| room width/height | `i32 Room+0x0c`, `Room+0x10` | grid dimensions | `explore.mjs:40` |
| entity vector base | `u32 Room+0x125c` | pointer array | `docs/decomp-runtime-wiring.md:109-110,143-145` |
| entity vector count | `u32 Room+0x1264` | entity count | `docs/decomp-runtime-wiring.md:109-110`; `room_pure_helpers.h:226-227` |
| room grid | array of `448 u32` pointers at `Room+0x24` | grid entities | `explore.mjs:40,263-275` |
| eight doors | `Room+0x724 + slot*4` | door pointers | `explore.mjs:40,308-316` |
| door state | `i32 Door+0x0c` | open is `2` | `explore.mjs:41-43,313-315` |
| door target room | `i32 Door+0x394` | target room id | `explore.mjs:42,314` |
| player vector | `[Game+0x1baa8, Game+0x1baac)` | pointer vector | `explore.mjs:39`; death walk `0x009bb5fb..0x009bb610` |
| player position | `f32 Player+0x33c`, `Player+0x340` | world position | `explore.mjs:43` |
| player dead | `u8 Player+0x173` | terminal death flag | `explore.mjs:54,324`; PlayerManager gate `0x009bb64c` |
| player flags | `u32 Player+0x168` | entity flags | `player_manager_update_pure_helpers.cpp:328-337` |
| player raw heart field | `i32 Player+0x1340` | raw health value | `explore.mjs:55-57` |
| entity type | `i32 Entity+0x28` | `1` player, `2` tear, `5` pickup, NPC range `10..1100` | `explore.mjs:47-54` |
| entity variant/subtype | `i32 Entity+0x2c`, `+0x30` | game entity identity | `explore.mjs:49-54` |
| entity position | `f32 Entity+0x33c`, `+0x340` | world position | `explore.mjs:54` |
| entity dead | `u8 Entity+0x173` | remove from live observations | `explore.mjs:54,239,257` |

The current-room vector is preferable to the explorer's one-time global heap scan by NPC vtable. It gives exactly the entities owned by the current room and naturally follows room changes. Read it only while the room transition is idle and the Room pointer/dimensions are stable.

Use `Room+0x125c` and `Room+0x1264` as the vector pair, cap the count to a training maximum, and validate every pointer. Entity slots with `dead != 0` are not live enemies. The room grid is useful for occupancy and obstacle features. Doors and the 448 grid slots are separate structures in the same Room object.

## Combat Readiness, Clear, and Death

### Ready

There is already a proven readiness predicate in the workload drivers:

- console closed
- Game and Room pointers valid
- non-empty player vector
- player `+0x173 == 0`
- room width and height in the normal range
- `Game+0x1b83c == 0`
- stage, stage type, room pointer, and room index stable
- `Game+0x264f8` advances between two reads

Sources: `scripts/recomp/web/drive_floors.mjs:143-149`; `scripts/recomp/web/profile_load.mjs:79-111,185-190`.

For training, require two advancing logic frames after the last setup command. This prevents the first observation from being captured while room entities are still being spawned.

### Cleared

`Room::TriggerClear(bool)` is exactly identified at `0x008068f0`. Its entry:

```text
desc = *(u32*)(Room + 0x4)
desc->flags_44 |= 1
desc->clear_count_4a += 1
```

Source: `native/decomp/room_pure_helpers.cpp:210-223`.

Therefore the engine's durable clear marker is:

```text
clear_flags = u32(*(Room + 0x4) + 0x44)
clear_count = u16(*(Room + 0x4) + 0x4a)
cleared = (clear_flags & 1) != 0
```

For an episode that starts uncleared, detect the rising edge of bit 0 or an increment of `clear_count`. A room can already have this bit from an earlier visit; such a room is not a valid fresh combat episode unless the episode intentionally studies a cleared room.

The clear delay is `Room+0x11ec`. It is set to 10 while enemies or a Greed wave remain, or 20 for room type `0x10`, subtype 3, then decremented (`room_pure_helpers.cpp:90-108`). Treat it as a post-combat delay feature, not the terminal marker.

For corroboration:

- live enemy counts use `Room+0x12c0` and `Room+0x12c4`
- the boss snapshot is `Room+0x7224`
- door state `2` means open

The boss counter update is `max(0, Room+0x12c8 + Room+0x12cc) -> Room+0x7224` (`room_pure_helpers.cpp:152-160`; machine `0x00801f1b..0x00801f2c`). `Room::TriggerBossDeath` is `0x007fec00` and logs the same live-boss count (`docs/recomp-architecture.md:4709-4711`).

### Dead

The terminal player flag is `u8 Player+0x173`. `PlayerManager::Update` at `0x009bb5d0` calls `Entity_Player::TriggerDeath(false)` at `0x007a1090` only when:

- `Game+0x1b83c == 0`
- `Game+0x1ba78 == 0`
- the player vector is non-empty
- `Player+0x173 != 0`
- death animation state is idle (`Player+0x7c == 0 || Player+0x8c == 0`)
- the twin, when present, is also idle

Source: `native/decomp/player_manager_update_pure_helpers.cpp:135-176`; `decomp/game-update-slice.json:35438-35448`; machine site `0x009bb5d0..0x009bb684`.

For training reward/termination, end on `Player+0x173 != 0`. That is earlier and simpler than waiting for the death animation or game-over screen. Do not enable console `debug 3` in training: `profile_load.mjs:391-397` explicitly turns on infinite HP for its benchmark.

## Deterministic Seed and Reset

### What the existing host already fixes

`QueryPerformanceCounter` is deterministic by default. Each call advances one 100 ns tick; it does not read wall time. `Sleep` advances that same deterministic clock and does not block in the non-Web build.

Sources:

- `scripts/recomp/host/src/host_shims_forward.c:345-387`
- `scripts/recomp/host/src/host_shims_forward.c:407-475`
- `docs/recomp-boot.md:681-708`

`ISAAC_EPOCH=<unix seconds>` pins `_time64` and `GetSystemTimeAsFileTime` to the same instant. Use a constant such as `1700000000`.

Sources:

- `scripts/recomp/host/src/host_shims_crt_time.c:47-72`
- `scripts/recomp/host/src/host_shims_misc.c:185-200`
- `tests/recomp-determinism.test.js:1-28`

### What `ISAAC_EPOCH` does not do

The repository explicitly records that `ISAAC_EPOCH` alone does not fix the run seed (`scripts/recomp/web/drive_floors.mjs:61`). It pins the time-derived inputs; the engine's native seed command is the authority.

Use the original debug console:

```text
seed 3JY1 6FLR
```

The existing web workload applies this command, waits for a new engine log line, and verifies:

```text
RNG Start Seed: 3JY1 6FLR (<numeric seed>) [New, ...]
```

Sources:

- `scripts/recomp/web/profile_load.mjs:373-390`
- `scripts/recomp/web/drive_floors.mjs:401-429`

After the seed restart, use:

- `stage N` to select the floor
- `goto x.<type>.<variant>` to select the same room on the generated floor
- `goto s.boss.<variant>` for a known special/boss room
- native `spawn` or Lua `Isaac.Spawn` only when the training fixture intentionally requires extra entities

The command analysis is in `docs/recomp-architecture.md:4683-4712`. The native room entry is `Level::DEBUG_goto_room` at `0x0073fa20`; `Level::Init` is `0x00744940`.

### Reset options

Use these in order:

1. **Cold reset, exact and simplest:** create a fresh engine module instance, place the same `isaac.segs.bin`, seed the same virtual file tree, boot, issue the same native seed, select the same room, and wait for readiness. All C statics, heap state, input state, and Lua state start clean.
2. **Warm reset through the engine:** keep the module, open the debug console, issue the same `seed`, `stage`, and `goto` sequence, and verify the new `[New]` seed log. This is already demonstrated by the drivers, but it pays console animation/setup frames.
3. **Post-setup state snapshot, optimization only:** clone the full Wasm linear memory after a quiescent room setup and restore it before the next episode. This can work because guest pointers are offsets in the same Wasm memory, but it has not been proven here for external JS queues, audio state, filesystem handles, or module globals. Do not make it the first training route.

`Game::SaveState` exists at `0x006f9000` and is used by save-state callers, but this sidecar contains no verified in-memory `LoadState` contract for training reset. Do not treat a serialized save blob as a deterministic full-room reset without a matching restore path and state-hash verification.

### Remaining determinism audit

Two host surfaces still read wall time outside the standard seed path:

- `BCryptGenRandom` seeds its own LCG from `time(NULL)` in `scripts/recomp/host/src/host_shims_gaps.c:343-352`. Its only direct guest call path is thunk `0x00af05c1` from `0x00aea6c6`. Assert it is not reached during room simulation or replace its seed through a host test hook.
- `GetLocalTime` and `GetFileTime` read the real clock in `host_shims_misc.c:202-219` and `host_shims_fs.c:1257-1266`. These are not on the established run-seed path, but pin or disable them if the training state hash includes UI/save metadata.

Audio playback is wall-clock based. Disable audio output for training or exclude audio state from the deterministic state/hash. It does not need to drive policy observations.

## Remove Real-Time Pacing

Use the headless Node build and keep `ISAAC_YIELD` unset. Interactive Web mode switches QPC to wall time and creates a JSPI wall-clock wait:

- `host_shims_win.c:702-716` enables WALL mode
- `host_shims_forward.c:442-458` performs the real browser sleep

The engine also has its own optional 1/60-second limiter. Setting bit `0x200` of `[0x00c798e4]`, the same bit written by `OptionsConfig::SetVSync(1)` at `0x00925ce0`, makes the normal 60 Hz path return from `0x00931351` to `0x00931231` and skip the Sleep/spin block at `0x00931361..0x00931453`.

Source: `docs/recomp-architecture.md:8608-8614,9298-9305`.

The VSync bit alone does not cover the fast-frame latch. At `0x009312af..0x009312d5`, the original sets `BL` after more than 30 successive passes above 1.1 x 60 fps. At the present boundary, `0x0093134d..0x0093135b` tests `BL` before testing the VSync bit. A headless run can legitimately exceed 66 passes per second and set `BL`, after which the limiter returns even with the VSync bit set.

For a dedicated training build, patch the lifted main-loop branch at `0x0093134f` to jump directly to `0x00931231` (or otherwise preserve `BL == 0` at the loop boundary). This removes the limiter path while leaving the rest of the original loop order intact.

For the smallest integration, set:

```text
u32[0x00c798e4] |= 0x200
```

at the first input callback after engine initialization. In a training-only build, also force the branch at `0x0093134f` back to the loop head. Do not change the `GameFrame`/presentation parity or delete `Manager::Render`; render-dependent effects and presentation-driven host duties still belong to the original frame.

`ISAAC_MAX_FRAMES=N` is only an exit mechanism. `SwapBuffers` counts presentations; once the count reaches `N`, `PeekMessageW` returns `WM_QUIT` and `main` exits normally (`host_shims_win.c:602-619,921-995,1163-1190`).

For a clean training API, add a host stop flag checked in `PeekMessageW`, or patch the main-loop continuation so the training host receives control after each complete pass. This is preferable to relying on a fixed frame cap.

## Smallest Implementation Route

### Phase 1: runnable proof

Create a Node driver beside `boot_integration.mjs` that:

1. Reuses its image placement, memory-image loading, RAM-FS seeding, input queue, and boot sequence.
2. Uses the parent's complete `boot.mjs` and `isaac.segs.bin`.
3. Installs `isaacInputPoll` as a game-frame-keyed action queue.
4. Installs an observation callback in the `SwapBuffers` host shim or reads memory at the next `isaacInputPoll`.
5. Sets `[0x00c798e4] |= 0x200` after initialization.
6. Starts a run, opens the native console, issues `seed`, `stage`, and `goto`, closes the console, and verifies the same readiness predicate as `drive_floors.mjs`.
7. Runs until `Player+0x173 != 0`, the RoomDescriptor clear bit/count changes, or a timeout.
8. On episode end, discard the module and repeat from the same binary/asset/seed for the first correctness runs.

This route changes no original game file, no `cpp/` bot runtime, and no upstream tracked source. It uses the complete original engine and sends only Win32-equivalent key messages inside the offline module.

### Phase 2: same-instance warm reset

After Phase 1 produces identical observations across at least two fresh-module runs:

- move reset into the native `seed -> stage -> goto -> ready` sequence;
- verify the `[New]` RNG log each episode;
- clear the host input owner set and audio state at the reset boundary;
- compare a hash of `GameFrame`, Room pointer/index, player vector, room entity vector, and relevant floats against the cold-reset baseline.

This avoids a full module reload while keeping reset semantics in the engine.

### Phase 3: step API, only if inference needs it

If the policy runs asynchronously or needs a single synchronous `obs, reward, done = step(action)` function, add a host export around the exact frame helpers rather than reimplementing update logic:

```text
enqueue action for GameFrame N
call 0x009ab6d0 with the original Manager state
repeat until Game+0x264f8 increments once
optionally call 0x009555c0 for the original render pass
read observations from guest memory
```

`0x009ab6d0` is the exact top-level helper called by `main` before render and already invokes `Manager::Update(1)`. The exported trainer must use the recompiler's guest-call mechanism and preserve the original CPU/stack contract. It must not call `Game::Update` in isolation, because that would skip `InputManager::Update` and the Manager gates.

This export needs a controlled way to enter the original initialized state before the infinite loop. That is more invasive than the Phase 1 callback and should follow a verified proof run.

## Existing Drivers

| Driver | Usable now | Training gap |
|---|---|---|
| `scripts/recomp/lift/boot_integration.mjs` | Best Node base: complete lifted boot, RAM-FS, input poll, console, finite frame cap, deterministic time defaults | Runs one `main` to completion; no structured step, reward, or warm reset |
| `scripts/recomp/lift/explore.mjs` | Best address/key/console map and real state-driven input example | Exploration policy scans global heap for NPCs; not a room-vector observation contract or trainer |
| `scripts/recomp/lift/console_typing.mjs` | Verified in-engine typed console commands through `WM_CHAR` | Setup only |
| `scripts/recomp/web/profile_load.mjs` | Closest full-room fixture: native seed, stage, items, enemy spawn, door removal, memory-state verification | Browser performance harness; enables infinite HP (`debug 3`); synthetic Host workload and optional door removal change the room |
| `scripts/recomp/web/drive_floors.mjs` | Verified native seed restart, stage changes, transition-idle/live-player/readiness checks | Not a combat loop |
| `scripts/decomp/frame-path.mjs` and `native/decomp/game_update_slice.*` | Useful for sparse field research | Partial Update port, not the complete original engine |

## Concrete Dependency and Address Summary

| Item | Address / value |
|---|---:|
| local J460 executable SHA-256 | `7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F` |
| image base | `0x00400000` |
| PE entry | `0x00cfe310` |
| `main` | `0x00931050` |
| engine init | `0x009aa040` |
| main loop | `0x00931231..0x00931453` |
| loop update helper | `0x009ab6d0` |
| Manager | `g_Manager = 0x00c7169c` |
| `Manager::Update` | `0x00954cd0` |
| Manager half-rate counter | `Manager+0x4abbc` |
| input manager update | `0x00a1fc00` |
| `Game::Update` | `0x006fadc0` |
| logic frame counter | `Game+0x264f8` |
| Game | `g_Game = 0x00c71678` |
| current Room | `Game+0x18300` |
| room transition | `Game+0x1b83c` |
| player vector | `Game+0x1baa8..Game+0x1baac` |
| `PlayerManager::Update` | `0x009bb5d0` |
| `Entity_Player::TriggerDeath` | `0x007a1090` |
| Room entity vector | `Room+0x125c`, count `Room+0x1264` |
| Room grid | `Room+0x24`, 448 pointer slots |
| RoomDescriptor | `Room+0x4` |
| clear flags / count | `RoomDescriptor+0x44` / `+0x4a` |
| `Room::TriggerClear` | `0x008068f0` |
| room clear delay | `Room+0x11ec` |
| boss count | `Room+0x7224` |
| `Room::TriggerBossDeath` | `0x007fec00` |
| `Level::Init` | `0x00744940` |
| `Level::DEBUG_goto_room` | `0x0073fa20` |
| Manager render | `0x009555c0` |
| Game render root called by render shell | `0x00806c20` |
| cap/loop-break flag | `[0x00c798e4] & 0x200` |
| QueryPerformanceCounter IAT | `0x00b18238` |
| Sleep IAT | `0x00b182d8` |
| BCryptGenRandom IAT | `0x00b1899c` |

## Verification Required Before Calling It Integrated

Run the smallest useful checks on the parent-built engine:

1. Two fresh modules with the same `ISAAC_EPOCH`, native seed, stage/goto sequence, and action sequence produce identical per-logic-frame observation hashes.
2. The seed log contains `[New, ...]` and the requested seed both before and after an episode reset.
3. A movement key delivered for GameFrame `N` changes the player state in GameFrame `N+1`, not one presented frame later.
4. Room clear appears in `RoomDescriptor+0x44` bit 0 and increments `+0x4a`; the first observation is not misclassified as a fresh clear.
5. Player death appears in `Player+0x173`; tests do not enable `debug 3`.
6. With the training limiter branch and VSync bit applied, wall time tracks compute cost rather than 1/60-second sleeps, while `Game+0x264f8` still advances one tick per two original loop passes.
7. No live game process or installed game directory is touched; inputs target only the Win32 queue inside the offline Wasm module.

The first four checks are the minimum for a trustworthy `reset -> observe -> act -> terminal` loop. FPS, throughput, and full training quality are separate results.
