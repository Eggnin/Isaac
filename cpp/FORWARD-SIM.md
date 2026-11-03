# Forward World Simulator

日期：2026-11-02。给现有 Reader、Mechanism Library、`EnemyIntentPredictor`、
`UnknownThreatManager` 和 `TopKJointPlanner` 增加统一世界状态与逐帧前向模拟。
不使用强化学习，不使用 CEM，不修改游戏文件，也不发送键盘输出。

## 模块

| 文件 | 内容 |
| --- | --- |
| `cpp/include/gamebot/world_state.hpp` | `WorldStateSnapshot`、`ProvenanceTable`、`WorldStateBridge` |
| `cpp/src/world_state.cpp` | Reader + MechanismFrame + UnknownAssessment → 快照 |
| `cpp/include/gamebot/projectile_motion.hpp`、`cpp/src/projectile_motion.cpp` | 共享弹幕运动模型：曲线、轨道、多阶段、SMART、STASIS、bounce |
| `cpp/include/gamebot/forward_sim.hpp` | `SimulationBackend`、`HybridSimulationBackend`、`WasmSimulationBackend`、`ForwardSimulator`、`SimulationPlanner`、`SimulationCache` |
| `cpp/src/forward_sim.cpp` | 逐帧模拟、分叉、评分、缓存、WASM 探测 |
| `cpp/src/lookahead.cpp` | Top-K 之后接入模拟评分与安全覆盖 |
| `cpp/include/gamebot/mpc.hpp`、`cpp/src/mpc.cpp` | v0.6 长时域 MPC Beam Search、动作序列保存/恢复/比较 |

## 1. 世界状态与精度

`WorldStateSnapshot` 包含 `PlayerState`、`EnemyStates`、`ProjectileStates`、
`HazardStates`、`RoomGeometryState`、`GameFrameState`、`EntityTimer`、
`AttackCooldown`、`RngState`、实体关系、`LifecycleTransition` 和溯源表。

`ProvenanceTable` 用点路径记录每个字段的 `Precision`：

- `exact`：本帧从游戏内存直接读取，例如实体地址/种子、位置、速度、HP、
  State、AI 向量、冷却字段、房间格子。
- `estimated`：由公式、动画更新或几何模型推导，例如未读取的碰撞半径、
  动画帧推进、激光长度、死亡爆炸半径（仅机制模型明确给出时）。
- `unknown`：Reader 不可见或没有证据，例如玩家无敌帧、剩余射击冷却、
  RNG、实体 AI 内部内存、Boss 内部阶段（没有机制模型时）。

规则：

- 不能把估计值写成精确值。`WorldStateSnapshot::recount()` 统计三类字段数，
  测试会检查这一点。
- `RngState.available` 默认 `false`，来源写为 Reader 未采集；快照不会伪造
  随机数状态。
- 房间格子的 `danger` 只是已知危险格；机制预警和未知攻击分别进入
  `HazardStates`，并带 `virtual_hazard=true` 与独立精度。

## 2. WorldStateBridge

`WorldStateBridge::build(frame, mechanisms, unknown)`：

1. 复制 Reader 玩家/敌人/弹幕/房间字段，保留地址、种子和
   parent/spawner/owner/child/target 关系。
2. 把 `MechanismFrame` 的观察、Boss 阶段、攻击标签按实体地址关联到
   `EnemyState`，并按实体保存 `EnemyIntent`。
3. 有精确攻击模型时 `has_precise_attack=true`；否则标记
   `unknown_mechanism`，交给未知威胁回退。
4. 跨帧分类生成/消失/死亡/复活/替换：`LifecycleTransition`。
5. 去重：真实弹幕只来自 `Frame.entities`；机制预警和未知攻击假设进入
   `hazards`。与同一来源、同一时间窗、同一几何已经识别出的 intent 重复的
   warning 会被丢弃，计入 `deduplicated_hazards`。两类列表从不混用。

## 3. 模拟后端

统一接口：`restore / fork / step / state / take_events / terminate`。

### Hybrid C++ Backend

已实现：

- 玩家运动直接调用 `advance_native_player_motion`，包含加速度、惯性、
  墙体扫掠与轴向滑动。
- 敌人运动使用 `advance_native_entity_motion` 的 30 Hz 阻尼/位移公式，
  模拟器按 60 Hz 推进时每两帧应用一次原生更新，中间帧按速度插值。
- 敌人攻击原语来自机制库：瞄准/径向/扇形弹幕、激光、冲撞、落地、
  自爆/区域爆炸、召唤、未知区域/走廊。
- 真实弹幕按 Reader 速度/摩擦/加速/追踪标志运动，并做扫掠碰撞。
- 弹幕运动由共享 `ProjectileMotionModel` 推进：直线、加速/减速、定时速度/位图切换、
  `CURVE_LEFT/RIGHT`、`TURN_HORIZONTAL`、`SINE_VELOCITY`、wiggle/mega/sawtooth、
  `ORBIT_CW/CCW/ORBIT_PARENT`、SMART/SMART_PERFECT、STASIS、bounce/continuum。
  `projectile_flags` / `projectile_change_flags` 的位值来自本地 J460 枚举，
  `projectile_curve` 与 `projectile_orbit_distance` 使用现有 Planner 已恢复的公式。
- 没有恢复的 `BOOMERANG`、`SLOWED`、`TRIANGLE` 仍只增加有界 `maneuver_uncertainty`
  包络，不伪造轨迹。
- 未知机制继续由 `UnknownThreatManager` 提供跟踪/不确定攻击，并保留
  `Precision::unknown`。

明确标记的近似：

- 敌人追击策略是估计（Reader 速度给出速度，朝向玩家是策略假设）。
- 原生碰撞、击退、Boss 内部状态机、生成队列和 RNG 未恢复。
- 激光一次命中按一次伤害计；持续/周期伤害只对 `periodic` 类型按 0.25 s
  节拍结算。
- `SimBackendCapabilities` 在运行时公开 `restore_scope` 和 `missing`。

### WASM Backend 检查结果

`probe_wasm_backend()` 读取 `research/boss-lab` 的真实产物并检查：

- `runtime/boot.wasm`、`runtime/boot.mjs` 存在。
- `offline/engine_worker.mjs` 有 quiescent frame mode、`saveFrameSnapshot`、
  `restoreFrameSnapshot`，且恢复方式是把整个 `HEAPU8` 复制回同一实例。
- 引擎自身的 snapshot-restore fork 已有验证证据：
  `validation/gaper-engine-fork-smoke-20261101.json`（8 个并行分支同帧匹配）
  和 `research/boss-lab/results/frame-snapshot-delirium.json`。
- 未发现把外部 Reader 状态写入原生实体/房间/RNG 结构的入口
  （`external_state_injection=false`）。

结论：原版 WASM 引擎支持**自己产生的**运行内存快照与 fork，但**不支持**
从实时游戏快照恢复完整内部状态。原因：

1. Reader 只读内存，没有反向写入原生实体表、房间和 RNG 的路径。
2. WASM 快照是同一实例的堆镜像，包含分配器地址，不能跨实例重建。
3. 引擎是 JS/WASM 宿主进程，不是链接进 C++ 主程序的库。
4. Reader 不采集 RNG，因此即使全量注入也无法复现下一次随机决策。

`WasmSimulationBackend::restore()` 因此返回失败并给出原因，
`capabilities().restore_live_capture=false`。它不会用 Reader 可见字段冒充
完整状态恢复。测试固定了这一行为。

## 4. ForwardSimulator 逐帧更新

每个模拟帧都从当前模拟世界取状态：

1. 玩家输入 → 原生玩家运动 → 墙体扫掠。
2. 玩家射击 → 友方弹幕（射速/射程/伤害）。
3. 弹幕推进 → 墙体/敌人/玩家扫掠碰撞。
4. 敌人状态机：冷却 → 前摇 → 攻击 → 冷却；冲撞持续帧；Boss 阶段
   在 50%/25% HP 跨阈值时切换并缩短冷却。
5. 攻击生成：瞄准目标在**本分支**的当前玩家位置重新计算；`player_velocity_lead`
   使用本分支玩家速度。
6. 危险区域/激光/爆炸按窗口结算，玩家无敌帧阻止重复命中。
7. 敌人受伤/死亡、击杀计数、死亡后其余敌人重新以当前玩家为目标。
8. 玩家死亡、房间清空、提前终止检查。

模拟不会重复使用初始帧的预测结果；每帧的方向、冷却和碰撞都由当前世界
状态决定。

## 5. 分支与评分

`SimulationPlanner` 只 `restore` 一次，随后每个候选 `fork()` 一个独立
`SimWorld` 副本，互不影响：

- 玩家位置/速度/生命
- 敌人位置/HP/冷却/前摇/Boss 阶段
- 弹幕与危险区域
- 游戏时间、事件、击杀
- 分支内重新瞄准的方向

测试 `branching re-aims an aimed attack from each branch player position`
验证同一敌人对向东/向西两个分支发出不同方向的弹幕。

`SimulationScore` 包含：玩家受伤、死亡风险、敌人受伤、击杀、清房时间、
未来危险区比例、逃生空间比例、未知机制不确定性和当前最小间距。
评分先保证生存：

```text
-100 * damage_taken - 1000 * dead - 200 * death_risk - 5 * unknown
+ 1 * damage_dealt + 25 * kills + 40 * escape_space - 30 * danger_area
+ clear_bonus
```

## 6. TopKJointPlanner 接入

`LookaheadConfig::forward_simulation` 默认开启：

1. 原有 `Planner`、候选路线、`EnemyIntentPredictor`、`VirtualThreatGenerator`、
   `UnknownThreatManager`、Top-K 保持不变。
2. Top-K 结束后构造一次 `WorldStateSnapshot`。
3. 候选：baseline 首步、Top-K 各 rollout 的首步，以及 9 个根移动
   （用 baseline 射击方向），去重后限制为 `simulation_branches`。
4. 每个候选模拟 `simulation_horizon_frames`（默认 36 帧 = 0.6 s）。
5. 只有模拟结果明显优于当前方案（`score` 差 > 1.0）才覆盖首步；
   `plan.simulation_override=true`，原因追加 `forward-sim override`。
6. 仍然只执行首段动作，下一帧重新读取真实游戏状态。
7. 保留原有约束：baseline 没有目标/房间已清/不能射击时不发明射击动作。

## 7. 性能

- 每个候选从同一个已恢复快照 fork，不重复初始化整个模拟器。
- `SimulationCache` 以「模拟世界签名 + 精确动作计划」为键，容量可配置；
  状态签名包含帧号、玩家/敌人/弹幕/危险区关键字段。
- 分支数与时间跨度均可配置（`simulation_branches`、
  `simulation_horizon_frames`）。
- 已有一个不差于当前最佳的分支时，后续分支一旦受伤超过最佳 + 1 就
  `terminate()`，计为 `pruned`。
- `SimulationBatch` 输出耗时、缓存命中/未命中、提前终止和裁剪数量。

在 `cpp/samples/combat-and-clear.jsonl` 上，默认 9–10 个分支 × 36 帧的
模拟耗时约 0.2–0.7 ms/帧（本机，`--simulate` 的 45 分支约 0.7 ms/帧）。

## 本轮验证

`powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test`：
**206 项通过，0 失败**。新增覆盖：

- 快照精确/估计/未知字段计数与 JSON 往返；
- 生成/死亡/消失分类；
- 未知攻击只进入虚拟危险区、不进入真实弹幕；
- 分支独立、同一敌人对两个分支重新瞄准；
- 弹幕伤害、无敌帧、玩家射击击杀与清房；
- 模拟缓存命中、提前终止；
- WASM 后端拒绝把实时快照冒充为原生状态；
- Hybrid 能力声明；
- Top-K 决策包含模拟批次；
- 模拟能从「停留必受伤」里选出躲避分支；
- 危险格危险区可安全序列化。

`IsaacGamebot.exe --compare <report.json>` 的合成闭环（10 场景、2 种子）：

| 指标 | baseline | Top-K + 模拟 |
| --- | --- | --- |
| 掉血（半心） | 7 | 6 |
| 死亡 | 0 | 0 |
| 输出伤害 | 556 | 685 |
| 移动覆盖帧 | — | 1089 |
| 射击覆盖帧 | — | 37 |
| 总规划耗时 | 68.14 s | 71.99 s（1.057×） |

这是确定性合成闭环，只证明同一输入下的策略差异和模拟阶段的开销，不是
实机无伤证据。

## CLI

```text
IsaacGamebot.exe --snapshot <input.jsonl> <output.json>
IsaacGamebot.exe --simulate <input.jsonl> <output.json>
IsaacGamebot.exe --sim-backend <output.json>
IsaacGamebot.exe --joint <input.jsonl> <output.jsonl>
IsaacGamebot.exe --mpc <input.jsonl> <output.jsonl>
IsaacGamebot.exe --mpc-loop <input.jsonl> <output.jsonl>
IsaacGamebot.exe --mpc-review <input.jsonl> <output.json>
IsaacGamebot.exe --mpc-compare <a.json> <b.json>
IsaacGamebot.exe --discover <log-or-dir> <output.json> [library_dir]
IsaacGamebot.exe --mechanism-rollback <library_dir> <version>
IsaacGamebot.exe --mechanism-compare <a.json> <b.json>
```

- `--snapshot`：逐帧输出快照、精度统计、bridge 报告和两个后端的能力。
- `--simulate`：对每帧枚举 `9 Move × 5 Fire`，输出各分支评分。
- `--sim-backend`：输出 WASM 探测结果与 Hybrid 能力声明。
- `--joint`：原有 Top-K 输出新增 `simulated`、`simulation_override`、
  `simulation_score` 和完整 `simulation` 批次。
- `--mpc`：长时域 MPC 输出决策、首段动作、完整动作序列、评分与搜索统计。
- `--mpc-compare`：比较两个独立保存的 `MpcSequence`。

所有 CLI 模式仍然只读日志，不创建键盘输出。

## 证据边界

- 该模拟是离线/回放内的状态推演，不产生实机无伤证据。
- 机制库没有覆盖的敌人仍使用保守假设；`Precision::unknown` 与
  `SimBackendCapabilities::missing` 会明确标出。
- 原版 WASM 的完整状态同步尚未实现；在实现外部状态注入之前，不应把
  Hybrid 结果称为「原版引擎重放」。
- 合成闭环对比只能说明策略在同一确定性输入下的差异，不能替代真实游戏
  验证。
