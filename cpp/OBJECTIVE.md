# Combat Objective Orchestrator (v0.8.3)

日期：2026-11-02。在 v0.8 `CombatIntelligence`、v0.6 `MpcCombatPlanner`、
`ForwardSimulator`、`SafetyGate` 之上增加统一战术目标层。它只回答“现在应该
优先处理谁、是否适合输出、朝哪个位置移动更有利”，最终移动和射击仍由 MPC
Beam 决定。

不重写目标选择、威胁分析、攻击窗口和预测瞄准的既有实现；v0.8.3 扩大它们的
输入范围，使每个 MPC 分支使用自己的模拟世界重新计算。

## 1. Combat Objective Manager

`CombatObjective` 现在同时输出：

- `primary_threat`：当前最高威胁；
- `target`：当前攻击目标；
- `tactical_mode`：`balanced / engage / focus-fire / reposition / disengage / escape`；
- `survival_priority`：固定为 1.0；
- `output_priority`、`attack_opportunity`、`kill_probability`、`time_to_kill`；
- `expected_threat_reduction`、`expected_dps`、`expected_kill_gain`；
- `target_position_gain`、`exposure_cost`、`positioning_cost`；
- `threat_reduction`、`threat_count`、`damageable_count`；
- `target_available`、`disengage`、`switch_target`、`unknown_risk`；
- `branch_specific`：该目标是否由分支自己的 `SimWorld` 重算。

模式由状态直接导出，不是脚本：

| 模式 | 条件 |
| --- | --- |
| `escape` | 硬安全失败且无逃生方向（MPC 仍走原逃生排序） |
| `disengage` | 1 HP、`in_danger`、无逃生方向，或紧迫威胁且无输出窗口 |
| `reposition` | 有威胁但没有可伤害/可命中目标 |
| `focus-fire` | 目标 HP 比例低于 `focus_fire_hp_fraction` |
| `engage` | 有目标且可输出 |
| `balanced` | 无有效战斗上下文 |

## 2. Dynamic Target Selection

每个可伤害敌人计算：

| 项 | 来源 |
| --- | --- |
| `Threat Reduction` | 该敌人威胁分 / 全部可伤害威胁分；击杀子生成体、Boss 和死亡爆炸另行修正 |
| `Expected Damage` | 眼泪伤害 × 射速 × 命中机会 |
| `Kill Probability` | 预计伤害 × `kill_probability_horizon` / 剩余 HP |
| `Time To Kill` | 剩余 HP / 预计 DPS |
| `Attack Opportunity` | 该分支的预测拦截置信度 |
| `Exposure Cost` | 目标攻击倒计时、伤害比例、距离共同形成的攻击通道风险 |
| `Positioning Cost` | 距离/射程、移动空间限制、射线遮挡 |

根目标与分支目标使用同一套归一化公式。目标切换仍有滞后：

- 新目标必须超过当前目标 `target_switch_margin`；
- 根部切换后至少保持 `target_min_hold_frames`；
- 分支使用 `branch_switch_margin` 与 `branch_sticky_bonus`；
- 当前目标死亡、不可伤害或威胁压倒性升高时立即切换。

## 3. Branch-Specific Objective（核心）

`CombatIntelligence::evaluate_branch(root, world, safety, preferred_target)`：

1. 用 `AttackWindowDetector::detect_all(SimWorld)` 读取该分支的
   `windup / active / cooldown / invulnerable` 计数器；
2. 用 `ThreatPrioritizer::assess(SimWorld)` 重算每个存活敌人的威胁分；
3. 用 `TargetSelector::rank(SimWorld, ...)` 重算 TTK、命中机会、暴露成本、
   站位成本与击杀收益；
4. 用 `select_branch()` 以父分支目标为 sticky 重新选择目标；
5. 生成该分支自己的 `CombatObjective`。

MPC 的每个节点都执行上述流程，因此同一深度的不同动作分支可以拥有不同的
最佳目标。`MpcPlan::branch`、`MpcCandidateSummary::branch`、
`MpcSearchStats::branch_evaluations/branch_switches/focus_fire_nodes` 记录这些
差异。分支目标不会写回根 `TargetSelector`。

## 4. Kill Sequence Optimization

不枚举所有击杀排列。Beam 通过动作分支自然产生不同的击杀顺序，评分只评价
该顺序产生的世界：

- `threat_removal`：本段实际削减的威胁；
- `kill_priority`：本段击杀带来的威胁削减；
- `kill_sequence`：目标剩余 HP 比例、剩余总威胁、下一个目标的可达性；
- `branch_target_killed`：是否完成当前分支目标；
- `candidate_sequence_weight` 控制权重。

因此“先杀低 HP 近敌”或“先杀高威胁 Boss”不是硬编码规则，而是由分支模拟
结果和权重比较得出。

## 5. Adaptive Attack Window

继续使用 `AttackWindowDetector`：

- 根快照：已验证机制触发帧 > 意图 > 原生冷却 > 低置信度动画；
- 分支：只使用模拟器机制计数器，`precision=estimated`，不把状态名升级为
  “已验证脆弱”；
- `invulnerable` 只来自原生/模拟实体无敌标志；
- Boss 脆弱窗口没有独立证据时不会被声明，`boss` 只提高击杀影响权重。

## 6. Tactical Positioning

`score_branch()` 的位置项组合：

- `SafetyGate` 的 `available_area`、`maneuverability`；
- 该分支目标方向的预测命中；
- `local_density`（越低越好）；
- 目标距离与射程、移动限制形成的 `positioning_cost`。

权重为 `position_escape_weight`、`position_maneuver_weight`、
`position_line_weight`、`position_surround_weight`。位置项只对通过硬安全门的
分支生效；生存项和 `SafetyGate` 永远先于它。

## 7. MPC 集成

- 根候选、深层射击剪枝、最终动作仍由 `MpcCombatPlanner` 产生；
- 保留 `SafetyGate`、`Emergency Escape`、`UnknownThreatManager`、
  `ForwardSimulator`、`PredictionErrorMonitor`；
- `CombatObjective` 只通过 `combat_value` 和 `combat_weight` 引导搜索；
- 战斗收益仍受 `candidate_max_value=60` 限制，低于 1 HP 的 100 分伤害惩罚；
- 死亡分支战斗收益为 0。

## 8. 验证

```text
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test
235 passed, 0 failed
```

新增覆盖：

- 同一根快照的两个模拟分支产生不同敌人数量、不同剩余 HP 和不同最佳目标；
- 分支评分输出 `kill_sequence / positioning / exposure`；
- 分支攻击窗口使用模拟器计数器且不声明已验证脆弱；
- MPC 输出 `branch` 摘要与分支评估计数。

在 `cpp/samples/combat-and-clear.jsonl`（20 帧，默认配置）上的确定性回放：

| 指标 | v0.8.3 |
| --- | --- |
| 平均 MPC 搜索 | 6.20 ms/帧 |
| 平均总规划 | 17.7 ms/帧（含现有 Planner + Top-K 种子） |
| 平均节点 | 649.4 |
| 平均深度 | 10.0 段 |
| 触发搜索预算 | 10 / 20 帧 |

逐节点分支重算增加了每节点成本，因此同样预算下节点数和深度低于 v0.8。
这是确定性回放开销，不是实机实时性或无伤证据；预算耗尽时仍返回当前最优
可存活序列或原联合决策。

## 证据边界

- 分支威胁、TTK、击杀概率和位置收益都是模拟预测，不是实机命中或击杀记录。
- 模拟器 `windup/cooldown` 的秒数按 60 Hz 分支帧换算，精确度受模拟步长限制。
- 没有原生反编译更新函数的机制仍保持 `inferred/candidate`。
- 不新增炸弹、主动道具、卡牌、药丸或交互控制。
- 尚未完成实机无伤验收；合成回放和单元测试不能替代实机结果。
