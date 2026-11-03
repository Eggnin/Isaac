# Temporal Reachability 诊断层（Phase 4）

日期：2026-11-03。Phase 4 只新增离线诊断，不修改 MPC 的评分、Beam 宽度、时域、
SafetyGate 或实时按键输出。`search_temporal_reachability()` 与
`compare_temporal_routes()` 的结果不会回写 `MpcPlan` 或任何决策权重。

## 模块与 CLI

| 文件 | 内容 |
| --- | --- |
| `cpp/include/gamebot/temporal_reachability.hpp` | 时间扩展搜索、路线选择、路线对照 API |
| `cpp/src/temporal_reachability.cpp` | 分支条件化展开、物理/安全可达统计、剪枝审计、Route 评估 |
| `cpp/src/forward_sim.cpp` | `temporal_world_signature`、危险来源掩码、`TemporalPathAssessment` 来源帧统计 |
| `cpp/src/main.cpp` | `--temporal-reachability`、`--mpc-temporal` |

```text
IsaacGamebot.exe --temporal-reachability <input.jsonl> <output.jsonl> [horizon] [step] [cap] [layers]
IsaacGamebot.exe --mpc-temporal <input.jsonl> <output.jsonl> [horizon] [step] [cap] [layers]
```

两个入口都只读取 JSONL，不创建键盘输出。`--mpc-temporal` 对每一帧先运行原有
`MpcCombatPlanner::decide()`，再用**同一个根快照**运行时间扩展搜索；MPC 分支与
时间扩展分支各自独立模拟，互不共享危险图。

## Phase 4.1：可达性语义与完整性

### 物理可达与安全可达

每个 state 同时保留：

- `physically_reachable`：不是静态地形碰撞、也不是死亡；动态危险仍然可以物理抵达。
- `safe`：完整覆盖、无动态危险、无警告、无静态碰撞。
- `warning` / `danger` / `unknown` / `static_blocked` / `dead`：互斥的路径结论。

层与结果分别统计：

```text
physical_reachable_states / physical_reachable_cells
reachable_states           / reachable_cells        # safe
physically_reachable_unsafe_cells                    # physical - safe
physical_unreached_cells                             # static - physical
```

`earliest_arrival_frame` 仍表示安全到达；新增
`earliest_physical_arrival_frame`。这样“玩家走得到但会被打”和“走不到”不会混在
同一个数字里。

### World Signature 完整性

`sim_world_signature()` **保持原样**，MPC 的缓存键和转置表行为不变。时间扩展层
使用独立的 `temporal_world_signature()`，补充未来相关字段：

- 玩家：位置、速度、HP、无敌帧、冷却、朝向、飞行、速度倍率、slow 等。
- 敌人：状态机帧、接触/飞行/追击、冲撞方向与剩余、冷却、前摇、阶段、精度。
- 弹幕：高度、高度速度、homing/加速、change flags、curve/orbit、maneuver
  不确定度、生命周期、fidelity、motion kind。
- 危险区：形状、伤害类别/时序、精确度、速度、节点/路径、标签/证据、激活窗口。

`temporal_world_signature` 的测试逐项改变上述字段，要求签名变化。

### 去重审计

同一层内，合并键仍是“完整世界签名 + 首段动作”。新增计数器：

```text
duplicate_world_candidates       # 同签名再次出现
merged_same_world_same_route     # 同签名同首段，合并
kept_same_world_distinct_route   # 同签名不同首段，保留为不同路线
shared_world_signature_groups    # 一个签名对应多个首段的组数
distinct_world_same_cell         # 同一 (layer, cell) 保留了几个不同世界
```

测试同时检查：`(layer, first_action, signature)` 不重复，且同一格确实保留了不同
世界。不同未来世界不会被“格子相同”错误合并。

### 危险来源与剪枝

`DangerSlice` 新增 `cell_category`（`DangerSource` 位掩码）：
敌人、弹幕、危险区，以及 `danger_source_unknown`（未知/不确定攻击）。
`TemporalPathAssessment` 记录每类来源的危险帧和警告帧。

每层新增：

```text
danger_enemy_states / danger_projectile_states / danger_hazard_states / danger_unknown_states
warning_*_states
pruned_safe / pruned_warning / pruned_danger / pruned_static / pruned_unknown
pruned_danger_enemy / pruned_danger_projectile / pruned_danger_hazard / pruned_danger_unknown
```

测试直接产生一个覆盖根格的弹幕，确认 `pruned_danger_projectile > 0`，并检查
所有 pruned 分类之和等于 `pruned_states`。

真实帧审计（`validation/phase4-temporal-20261103/temporal-audit.jsonl`，8 帧）：
物理可达 32 格、安全可达 31 格、物理可达但动态不安全 1 格、剪枝 1032 个状态；
clock 166 的 `danger_enemy_states=9`，`distinct_world_same_cell` 为 8–11。
这组数字直接区分了“走得到”和“走得安全”，并保留了同一格的不同未来世界。

## Phase 4.2：真实 MPC 分支对照

`compare_temporal_routes(root, mpc_plan, temporal_plan, reachability)` 从同一个
`ForwardSimulator` 根分别：

1. `analyze_trajectory()` 实际推进 MPC 路线，记录真实碰撞事件、伤害、最小间隙、
   可达面积、曲率、重复访问、动作重复度。
2. 对 TemporalReachability 选出的安全路线做同样推进。
3. `capture_temporal_trajectory()` 为每条路线单独建立时间危险图，记录危险帧、
   警告帧、来源类别。
4. `collision_consistent` 对比两条独立模拟的碰撞事件数，防止危险图与真实碰撞
   判定漂移。

输出字段包括：

```text
mpc / temporal：damage_taken, damage_events, temporal_danger_frames,
                temporal_warning_frames, min_clearance, reachable_area_*,
                trajectory_curvature, repeat_visit_count,
                dominant_move_share, max_same_move_run
comparison：   damage_delta, danger_frame_delta, displacement_delta,
                escape_outside_mpc, physical/safe/unsafe cells
```

`--mpc-temporal` 的每帧记录保留 `plan.sequence`、`plan.stats` 和原决策，便于确认
诊断前后决策没有变化。该比较只用于审计，不参与 MPC 排序，也不会在每个 Beam
节点重复搜索；每次决策只在根状态运行一次时间扩展。

## Phase 4.3：小圈与逃生专项

新增 `TemporalRoutePolicy`：

- `safest`：安全前提下取最深、风险最低的叶子；可能是一个局部安全小圈。
- `escape`：要求至少完成一半层数，然后最大化离根位移，再看层数/开阔度/风险。

默认只选择 `safe` 叶子；Phase 5 的闭环实验会在没有安全叶子时显式允许选择
最低风险的 warning/danger 叶子，并单独统计该比例。

新增动作重复度指标：

```text
action_segments        # 非零时长动作段数
max_same_move_run      # 连续同一 Move 的最长帧数
dominant_move_share    # 占比最高的 Move 帧数 / 总动作帧数
```

真实回放（`sessions/native-20261103-083319-596`，39 帧，clocks 143–181，
horizon 36 / step 6 / cap 12 / 6 层）：

| 指标 | 结果 |
| --- | --- |
| 有效对照 | 38 / 39 |
| 时间扩展找到安全路线 | 35 / 38 |
| 时间扩展路线更远（> 24 px） | 5 帧 |
| MPC 路线含危险帧 | 约 33–40 帧次（MPC 时间预算分支会变化） |
| 时间扩展路线含危险帧 | 14 帧次 |
| MPC 实际伤害（逐帧根分别计） | 1 |
| 时间扩展实际伤害 | 0 |
| 碰撞事件不一致 | 0 |
| 平均 / 最大搜索耗时 | 8.63 / 9.41 ms |
| 最大估算内存 | 223,864 B |

小圈样例（同一根状态、同一比较时长 18 帧）：

| clock | `safest` 净位移 | `escape` 净位移 | MPC 净位移 |
| --- | --- | --- | --- |
| 143 | 5.7 | 47.3 | 9.5 |
| 144 | 5.5 | 46.3 | 1.2 |
| 145 | 7.0 | 46.8 | 6.6 |
| 146 | 2.8 | 48.0 | 12.6 |
| 147 | 0.9 | 49.5 | 63.5 |
| 148 | 2.0 | 51.2 | 67.1 |

`safest` 在这些帧只移动不超过 7 px，说明时间扩展树里确实存在“局部安全但长期不移动”的
分支；`escape` 在相同根状态和相同时长内能到达 46–51 px 外。MPC 有时也走得远，
但在 143–146 等帧，它选择了 1–13 px 的短位移路线，而时间扩展仍找到更远
的安全分支。这是诊断结果，不是对 MPC 的自动改写。

这些是逐帧根状态的反事实对照，不是连续实机无伤成绩；它们只说明在相同根状态
下，MPC 的短位移路线存在一个更远的安全分支，而 TemporalReachability 能找到它。

## Phase 4.4：性能与稳定性

测试矩阵（`reachability_frame`，28×16 房间，horizon 36，step 3/6/12，cap 12，
6 层上限）：

| 敌人 | 弹幕 | step | 耗时 ms | states | layers | 内存 B | 剪枝 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 4 | 16 | 3 | 9.45 | 192 | 4 | 211,432 | 158 |
| 4 | 16 | 6 | 11.24 | 192 | 4 | 211,432 | 158 |
| 4 | 16 | 12 | 0.76 | 10 | 1 | 1,360 | 0 |
| 8 | 32 | 3 | 14.37 | 192 | 4 | 211,432 | 158 |
| 8 | 32 | 6 | 19.73 | 192 | 4 | 211,432 | 158 |
| 8 | 32 | 12 | 1.78 | 10 | 1 | 1,360 | 0 |
| 16 | 64 | 3 | 25.27 | 192 | 4 | 211,432 | 158 |
| 16 | 64 | 6 | 35.59 | 192 | 4 | 211,432 | 158 |
| 16 | 64 | 12 | 41.64 | 192 | 4 | 211,432 | 149 |

状态上限（16 敌人 / 64 弹幕，step 6，12 层上限）：

| cap | 耗时 ms | states | layers | 内存 B | 剪枝 |
| --- | --- | --- | --- | --- | --- |
| 8 | 24.66 | 128 | 4 | 142,352 | 103 |
| 24 | 74.25 | 384 | 5 | 435,352 | 302 |
| 48 | 151.76 | 768 | 5 | 858,328 | 614 |

所有矩阵与真实回放都没有出现 `memory_limited`、`timed_out` 或碰撞事件不一致。

## 验收对照

| 验收项 | 证据 |
| --- | --- |
| 分支一致性 | `temporal_world_signature` 字段测试；同格不同世界测试；去重键唯一性测试 |
| 可达性语义 | `physical` / `safe` 独立字段与 `physically_reachable_unsafe_cells` 测试 |
| 动态阻塞 | 冲锋敌人离开、临时接触、弹幕通过后格子重新可达的既有测试 |
| 逃生能力 | `escape` 选择；真实回放中 5 帧发现更远安全分支；pincer/对比测试 |
| 剪枝 | `pruned_*` 分类计数；覆盖根格弹幕的 `pruned_danger_projectile` 测试 |
| 真实回放 | 38 组逐帧对照，`collision_mismatches=0` |
| MPC 不变 | `--mpc-temporal` 不写回；双 planner 对照测试；`sim_world_signature` 未改 |
| 性能 | 上述矩阵；39 帧真实回放平均 8.63 ms、最大 9.41 ms |

## 证据边界

- 这是离线/回放诊断，不产生实机无伤证据。
- `escape` 路线只是搜索树中的一个安全叶子，不代表完整游戏中的全局最优。
- 时间扩展仍然受 cap、层数、危险图 cell 分辨率和 Hybrid 后端未知字段限制。
- 真实回放中的“MPC 伤害”按每个根状态重新模拟，不是整局累计伤害。
