# MPC Combat Planner (v0.6)

日期：2026-11-02。在 v0.5 `ForwardSimulator` 之上增加长时域滚动规划。
本模块不替换原有决策链：`Planner` 仍产生路线束，`TopKJointPlanner` 仍产生
联合候选，`EnemyIntentPredictor`、`AttackForecast`、`VirtualThreatGenerator`、
`UnknownThreatManager`、`WorldStateBridge` 和 `SimulationBackend` 继续负责
各自的状态与预测。`MpcCombatPlanner` 只在这些结果之上做搜索。

## 模块

| 文件 | 内容 |
| --- | --- |
| `cpp/include/gamebot/mpc.hpp` | `MpcConfig`、`MpcRootCandidate`、`MpcSequence`、`MpcPlan`、`MpcCombatPlanner` |
| `cpp/src/mpc.cpp` | 根节点构建、Beam Search、动态敌人分支、评分、缓存、复用、序列保存/恢复/比较 |
| `cpp/include/gamebot/combat.hpp`、`cpp/src/combat.cpp` | v0.8 威胁/目标/窗口/预测瞄准与逐候选战斗收益 |
| `cpp/src/lookahead.cpp` | `JointPlan` 保存 Top-K 使用的 `WorldStateSnapshot`，供 MPC 直接读取 |
| `cpp/src/forward_sim.cpp` | 每分支敌人追击、动态瞄准、冷却/前摇/触发、Boss 阶段；评分增加剩余敌人 HP |

## 1. 根节点与初始候选

`MpcCombatPlanner::decide(frame, attack_enabled, mechanisms)`：

1. 调用现有 `TopKJointPlanner::decide()`，不修改其内部逻辑。
2. 读取该结果已构建的 `WorldStateSnapshot`；没有时由自己的
   `WorldStateBridge` 重建。
3. 从以下来源生成根候选并去重：
   - `joint.decision`（最终联合决策）
   - `joint.baseline`（原 Planner 决策）
   - `joint.simulation.candidates`（Top-K 模拟首步）
   - `joint.move_sequence` / `joint.fire_sequence`（联合束首段）
   - `joint.previews`（路线预览）
   - 9 个根移动
   - 攻击可用时的 9 × 5 联合动作
4. 根候选默认上限 45，基线候选始终最先保留。

默认 `LookaheadConfig` 在 MPC 内关闭 Top-K 自己的短时前向模拟，避免对同一
状态重复消耗实时预算；调用方仍可显式传入 `forward_simulation=true` 的配置。

## 2. Beam Search

每个根候选在独立的 `ForwardSimulator` 分支中推进：

```text
root snapshot
  └─ fork → step(segment_frames) → score → child
       └─ fork → step(...) → score → child
            ...
```

- 每层从父分支 `fork()`，不重新 `restore`。
- 每层动作：9 种移动 × 射击集合。根层默认完整 9 × 5；深层默认使用
  “不射击 / 父分支射击方向 / 当前最近敌人方向 / 联合决策方向”并去重，
  同时也可配置为每层完整 45 个动作。
- 排序使用生存优先综合评分；Beam 保留最高分分支，同时至少保留
  `distinct_directions` 个不同移动方向。
- 始终保护“首段等于原联合决策”的分支，避免 MPC 用一个从未完整比较的
  分支覆盖已验证决策。
- 达到预测时域、模拟次数或时间预算即停止，返回当前最优完整/部分序列。
- 只有首段动作会进入 `Decision`；后续段保存在 `MpcSequence`，供审计和
  下一轮复用。

## 3. 联合动作空间

只规划移动与射击：

- `Move`：`stay`、8 个方向，共 9 种。
- `Fire`：`none` + 上/右/下/左，共 5 种。
- 不包含炸弹、卡牌、药丸、主动道具或交互键。
- 攻击关闭、无目标、房间已清、武器不支持或无法射击时，MPC 不会发明
  射击动作。

## 4. 动态敌人行为

每个模拟分支拥有独立 `SimWorld`，敌人不会共享固定未来轨迹：

- **动态瞄准**：`player_position`、`player_velocity_lead` 等在发射/前摇
  结束时读取当前分支的玩家位置和速度。
- **敌人追击**：`SimEnemy::chase` 只在以下证据下成立：实体本身是可接触的
  敌人，或机制 `behavior_model` 明确给出 `movement=chase/pursue` 或
  `chase=true`。追击速度逐帧按分支玩家位置重新计算。
- **攻击冷却**：发射后进入 `attack.period_frames`；Reader 的
  `projectile_cooldown` 仍用于恢复初始冷却。
- **攻击前摇与触发**：`windup` 递减，结束时才生成弹幕/危险区；前摇中的
  分支玩家位置变化会影响最终方向。
- **多敌人交叉威胁**：所有敌人、弹幕、危险区在同一个分支世界中更新；
  一个敌人死亡后其余敌人继续以当前玩家为目标。
- **Boss 阶段**：HP 跨过 50% / 25% 时在该分支切换阶段，缩短冷却并增加
  弹幕数量；阶段事件只写入该分支。

## 5. MPC 滚动规划

每次真实决策都重新读取游戏状态：

1. Reader 采集最新 `Frame`。
2. `WorldStateBridge` 构建 `WorldStateSnapshot`。
3. Beam Search 搜索未来动作序列。
4. 只执行序列第一段。
5. 下一帧重新读取、重新构建、重新规划。

上一轮结果可在满足一致性检查时复用：
- 同一房间；
- 帧号连续且不超过 `reuse_clock_tolerance`；
- 玩家 HP 不变；
- 玩家位置在容差内；
- 敌人数量、ID、HP 和位置在容差内。

不满足任一条件就丢弃上一轮序列。复用内容是上一轮最优动作序列的
warm start，而不是把旧世界内存直接当作新状态。

实时入口默认关闭。设置环境变量 `GAMEBOT_MPC=1` 后，GUI worker 使用
`MpcCombatPlanner::decide()` 替代原 `Planner::decide()`；自动控制仍需
按 F8 开启，关闭控制或急停时不会产生键盘输出。未设置该变量时仍走原
验证链。该实时入口尚未完成实机无伤验证。

## 6. 评分

`composite_value` 的顺序是生存优先：

```text
- death_penalty × 死亡
- damage_weight × 已受伤害
- death_risk_weight × 死亡风险
- unknown_weight × 模拟未知不确定性
- provenance_uncertainty_weight × 快照 estimated/unknown 字段比例
- enemy_hp_weight × 敌人剩余 HP
+ damage_dealt_weight × 输出伤害
+ kill_weight × 击杀
+ escape_weight × 逃生空间
- danger_weight × 危险区比例
+ clear_time_weight × 清房收益
+ survival_time_weight × 存活帧数
+ maneuver_weight × 局部机动性（仅通过硬安全门后）
+ combat_value（v0.8，见下）
```

v0.9 的 `SafetyGate` 在评分之前先判断候选是否安全；未通过安全门的分支
`combat_value=0`，且安全候选永远排在非安全候选之前。全部候选都不安全时进入
`Emergency` 逃生排序，而不是继续比较普通攻击收益。详见
[安全门说明](SAFETY-GATE.md)。

v0.8 的 `CombatIntelligence` 在每个 Beam 节点独立计算威胁消除、击杀优先级、输出窗口、
预测命中和输出效率，归一化后按 `MpcConfig::combat` 权重求和。`combat_value` 默认上限
60，低于 1 HP 的 100 分伤害惩罚；死亡分支战斗收益为 0。详见 [战斗决策说明](COMBAT.md)。

`SimulationScore` 保留原始分项和 `score`；MPC 只在其上应用可配置权重。
`Precision::unknown`、`Precision::estimated` 和未知攻击危险区不会在搜索
中被删除或升级为精确值。

## 7. 性能

- **分支复用**：父分支 `fork()`，子分支只推进 `segment_frames`。
- **自适应 Beam Width**：按剩余时间预算缩小 Beam。
- **动作剪枝**：深层限制射击集合，去重后仍覆盖 9 个移动方向。
- **状态签名/缓存**：每个子世界计算 `sim_world_signature`，转置表跳过
  已出现且不更优的状态；最终序列使用 `SimulationCache` 兼容的签名格式。
- **无望分支终止**：死亡或累计伤害达到 `hopeless_damage` 的分支不再扩展。
- **时间预算**：默认 8 ms；另有 `max_total_ms=20 ms` 的总预算，会把现有
  Planner/Top-K 种子耗时和 2 ms 评估余量计入。超时返回当前最优部分序列；
  若原决策链已耗尽总预算，则不再启动 MPC，直接返回原决策。
- **模拟次数上限**：默认 4096；达到上限只标记 `simulation_limit`，不误报
  为时间超时。
- **失败回退**：根节点无效、无法恢复、预算内没有任何可存活分支时，直接
  返回现有 `TopKJointPlanner` 决策。

在 `cpp/samples/combat-and-clear.jsonl`（20 帧，默认配置）上的本机结果：

| 指标 | 值 |
| --- | --- |
| 平均总规划 | 16.6 ms/帧（含现有 Planner + Top-K 种子） |
| 平均 MPC 搜索增量 | 4.4 ms/帧 |
| 平均搜索深度 | 16.0 段（约 1.6 s） |
| 平均节点 | 1303 |
| 复用轮次 | 18 / 20 |
| 覆盖首段 | 5 / 20 |

`Decision.planning_ms` 包含原 `Planner` 与 MPC 搜索；MPC 自身的时间预算只
约束搜索阶段。原 `Planner` 仍是 v0.5 已验证实现，本轮没有为 MPC 重写它。
这是确定性回放开销，不是实机实时性或无伤证据。

## 8. 序列保存、恢复与比较

`MpcSequence` 是独立 JSON：

- `segments`：`move`、`fire`、`shoot`、`frames`
- `trajectory`：逐段玩家位置
- `final_score`：完整 `SimulationScore`
- `value`：MPC 综合评分
- `root_signature`、`root_clock`、`root_room`、`root_player`、`root_health`、
  `root_enemies`：复用一致性元数据

API：

```cpp
sequence.save(path, &error);
auto loaded = MpcSequence::load(path, &error);
auto comparison = compare_mpc_sequences(a, b);
```

CLI：

```text
IsaacGamebot.exe --mpc <input.jsonl> <output.jsonl>
IsaacGamebot.exe --mpc-compare <a.json> <b.json>
IsaacGamebot.exe --mpc-review <input.jsonl> <output.json>
IsaacGamebot.exe --temporal-reachability <input.jsonl> <output.jsonl> [horizon] [step] [cap] [layers]
IsaacGamebot.exe --mpc-temporal <input.jsonl> <output.jsonl> [horizon] [step] [cap] [layers]
IsaacGamebot.exe --policy-validation <output.json> [seeds] [max_steps] [step_frames] [scenario_limit]
IsaacGamebot.exe --movement-audit <input.jsonl> <output.jsonl>
```

`--mpc` 每帧输出 `mpc` 对象（决策、首段、序列、评分、统计、联合摘要）；
`--mpc-compare` 输出 `value_delta`、`frames_delta`、`same_first_action`、
`same_segments` 和 `first_better`。`--temporal-reachability` 输出每帧完整时间
扩展树；`--mpc-temporal` 在原有 MPC 决策之后用同一根状态做安全路线对照，只写
诊断文件，不改变排序或按键输出。语义、来源剪枝和小圈专项见
[`TEMPORAL-REACHABILITY.md`](TEMPORAL-REACHABILITY.md)；三策略连续闭环验证见
[`COUNTERFACTUAL-POLICY-VALIDATION.md`](COUNTERFACTUAL-POLICY-VALIDATION.md)；移动意图
与方向稳定见 [`MOVEMENT-INTENT.md`](MOVEMENT-INTENT.md)。
所有 CLI 模式仍然只读日志，不创建键盘输出。

## 9. v0.8.3 逐分支战术目标

每个 Beam 节点现在调用 `CombatIntelligence::evaluate_branch()`，用该节点自己的
`SimWorld` 重算：

- 敌人威胁等级与剩余 HP；
- 可伤害状态和攻击窗口（模拟器 `windup/active/cooldown`）；
- TTK、击杀概率、攻击机会、暴露成本和站位成本；
- 该分支的最佳目标（以父分支目标为 sticky，但不写回根选择器）。

节点保存紧凑的 `BranchCombatSummary`；`MpcPlan::branch`、
`MpcCandidateSummary::branch`、`MpcSequence::branch_target/branch_mode` 和
`MpcSearchStats::branch_evaluations/branch_switches/focus_fire_nodes` 暴露这些
结果。`combat_value` 的分支缩放使用该分支自己的 `disengage`，不再只看根目标。

击杀顺序仍由 Beam 自然探索：`kill_sequence` 只评价分支世界中的剩余威胁、
目标 HP 比例和下一个目标的可达性，不枚举击杀排列。位置项只在分支通过
`SafetyGate` 后参与排序。完整说明见 [战术目标编排](OBJECTIVE.md)。

## 证据边界

- MPC 仍是离线/回放内的状态推演，不产生实机无伤证据。
- Hybrid 后端不能恢复 RNG、生成队列和未读取的 AI 内存；这些字段继续以
  `unknown` 标记，不能称为原版引擎重放。
- 动态追击只使用可接触实体或机制模型明确给出的行为；没有证据的敌人不会
  被假定会追击。
- 决策只执行首段；任何“长时域最优”都不等于游戏已经执行该序列。
- `GAMEBOT_MPC=1` 的实时入口是实验开关；未完成实机无伤验收。
- v0.6.1 的实时闭环、预测误差监控和 F10 回退见 [闭环说明](CLOSED-LOOP.md)。
