# Native seed setup probe

The baseline original-engine Node build accepts the typed sequence
`seed 3JY1 6FLR;goto s.boss.1010`. Two cold processes reproduced the first
177 ready logic frames of the resulting Monstro room exactly within the
observer's structured state. This includes 55 logic frames containing native
projectiles. The first 60 frames also match.

## Reproduce

```powershell
python D:\Isaac\research\determinism\probe.py --label another-cold-pair
```

Use a new label for each pair. The launcher creates two independent empty save
directories and private instance directories under its output directory. Each
instance has a resources junction to
`D:\Isaac\research\runtime-instance\resources`; it does not include the existing
instance's save store. Each process runs with its private instance as cwd, so
native Lua can find the same resource scripts. Resource files are read through
the existing engine callbacks. Persistent writes go to each private `saves/`.

The launcher's environment removes inherited `ISAAC_*` settings, then supplies:

| Setting | Value |
| --- | --- |
| `ISAAC_EPOCH` | `1793118193` |
| `ISAAC_MAX_FRAMES` | `3000` presented frames per process |
| `ISAAC_YIELD` | `0` |
| `ISAAC_DRIVE` | `explore` |
| `ISAAC_CONSOLE_MODE` | `typed` |
| `ISAAC_CONSOLE_DELAY` | `90` frames after the explorer starts its run |
| `ISAAC_CONSOLE` | `seed 3JY1 6FLR;goto s.boss.1010` |
| `ISAAC_OBSERVER_MODULE` | existing `research/offline/record_episode.mjs` |

Node is launched with `--no-wasm-tier-up`. The frame limit can be selected with
`--frames` between 2500 and 3500. The existing explorer supplies ordinary input;
the probe adds no health, damage, item, or invulnerability changes.

## Baseline identity

The launcher imports the existing `boot-fast/boot_integration.mjs` and its
`boot.mjs`, without copying or editing the build. It checks that `boot.wasm`
is 94,385,068 bytes and records hashes of the Wasm, JS driver, input helpers,
observer, and segmented image before both runs, then checks those inputs again
afterward. The separate parent training build is outside this probe.

| Input | SHA-256 |
| --- | --- |
| `boot-fast/boot.wasm` | `D7E652D8339A40A29F21318F9F796A528F3E3EF40DC8585B7B1AA17A5E278949` |
| `boot-fast/boot.mjs` | `58B452EA11AEC44CBAA1390E8C2A04464ED618AB511DB3CE54B28FFE8A34EE80` |
| `boot-fast/boot_integration.mjs` | `2AA3953F0B8B779170D61A4398D8C6CDF6B25AEF66004703F958B9D831C2302F` |
| `runtime-inputs/host/isaac.segs.bin` | `A15C0DEADD692850E9AE39F0B09432682C3478F307BE752570DF7DBC3F813C37` |

`inputs.json` contains the full input list. `probe.json` records Node's version,
launcher/comparator hashes, resource source, and frame limit. The resources
are the shared immutable copy specified for this experiment; their contents
are not included in the build-input hash list.

## Native command evidence and comparison

Evidence is under `research/determinism/native-seed-final/`. Both engine logs
show the same sequence:

1. Initial unrequested seed: `7W3L P1Z9 (3814578467)`.
2. At presented frame 480 the console line exactly reads `seed 3JY1 6FLR`
   and Enter is sent. The engine logs
   `RNG Start Seed: 3JY1 6FLR (3318088168) [New, 1]`.
3. The typed driver confirms the seed command at frame 481. Seed restarts the
   native run and closes the console; the driver reopens it at frame 526.
4. The console line exactly reads `goto s.boss.1010` at frame 600; the driver
   confirms execution at frame 601. It finishes 2/2 commands with no failures,
   line mismatches, or retypes, and closes the console at frame 660.
5. The engine logs `Room 5.1010(Monstro)`. The first ready observation is
   presented frame 870, native logic frame 0, room index -3, with live type-20
   Monstro. Both processes finish with `RESULT: main returned 0`.

The comparator selects the first ready, live-Monstro observation in room -3
after goto execution, then records distinct ready logic frames of that first
room episode. Frames 0 through 176 are contiguous in both runs. It compares
all structured observer fields, including player position/velocity/health,
damage cooldown, controls, fire delay, NPC positions/HP/seeds/flags, tears,
projectiles, grid cells, room clear state, stage, and native logic frame.
Entity partition order is preserved. Numbers are exact, with no rounding or
tolerance. It excludes only the recorder's `elapsedMs` and `presented` fields
and allocation keys `address`, `pointer`, `managerPointer`, `descriptor`, and
`parent` (the latter is a raw parent pointer). Raw captures retain these fields.

| Measured result | Both runs |
| --- | --- |
| Matching first 60 logic frames | yes |
| Matching complete captured ready episode | 177/177 frames |
| Projectile-containing logic frames | 55 |
| Peak observed projectile entities | 18 |
| Monstro HP range | 250 down to 218.5 |
| Player health values observed | 6, 5, 4, 3, 2, 1 |
| First mismatch | none |

The observed health loss and boss damage are native gameplay. This probe does
not establish a boss clear. The match covers the exposed observer fields and
this input sequence; it does not prove equivalence of hidden RNG state, other
seeds, longer episodes, or the parent's JSPI build. Pinning epoch alone is not
the determinism claim: success also requires the native seed log, both typed
commands, room entry, and matched trajectories.

## Files

- `determinism/probe.py`: launches the two cold processes, isolated saves, and
  comparison. Exits unsuccessfully if setup or first-60 comparison fails.
- `determinism/compare.py`: replays the structured comparison from existing logs.
- `determinism/native-seed-final/comparison.json`: exact comparison and setup results.
- Each `cold-N/`: `run.json`, `engine.log`, `observations.jsonl`, recorder summary,
  `monstro-normalized.json`, private `instance/resources` junction, and `saves/`.
- `native-seed-pair-v1/`: initial measured pair, retained. Its engine runs passed;
  its launcher reached comparison before `compare.py` had been created. Running
  that comparator afterward confirmed the same 177-frame match.
- `native-seed-pair/`: initial junction-creation failure, before an engine launch.

Recompare the finalized evidence without launching the engine:

```powershell
python D:\Isaac\research\determinism\compare.py D:\Isaac\research\determinism\native-seed-final
```
