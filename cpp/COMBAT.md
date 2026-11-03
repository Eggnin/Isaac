# Combat Intelligence (v0.8, orchestrator v0.8.3)

日期：2026-11-02。在 v0.7 机制发现、v0.6 MPC 与 `ForwardSimulator` 之上增加战斗决策层。
本模块不重写 `Planner`、`TopKJointPlanner`、`ForwardSimulator`、`WorldStateBridge` 或
`UnknownThreatManager`，也不增加炸弹、卡牌、药丸或主动道具控制。它只读取现有快照、
机制观测、意图和模拟状态，为 MPC 提供威胁排序、目标选择、输出窗口和预测瞄准。

## 模块

| 文件 | 内容 |
| --- | --- |
| `cpp/include/gamebot/combat.hpp` | `CombatConfig`、`ThreatPrioritizer`、`TargetSelector`、`AttackWindowDetector`、`PredictiveAimer`、`CombatObjectiveManager`、`CombatIntelligence` |
| `cpp/src/combat.cpp` | 威胁评分、目标滞后、窗口判定、四方向预测拦截、逐分支收益计算 |
| `cpp/src/mpc.cpp` | 根候选注入、Beam 逐节点战斗收益、生存上限、决策与回退 |
| `cpp/include/gamebot/mpc.hpp` | `MpcConfig::combat`、`MpcPlan::combat`、`MpcSequence::combat_value` |

## 1. Threat Prioritizer

每个仍存活敌人得到 0..1 威胁分，输入全部来自当前 `WorldStateSnapshot`：

- 距离与敌人估算攻击范围；
- 距下一次攻击的时间（优先 `MechanismObservation::predicted_trigger_frame` +
  `attack_timing_verified`，其次 `EnemyIntent::trigger_time`，再次原生
  `projectile_cooldown/delay`）；
- 预计伤害（意图/实体伤害字段）；
- 攻击频率（意图或原生冷却）；
- 玩家移动空间限制：用房间网格、真实危险区、敌方弹幕和接触体探测八个方向；
- 未知机制风险：没有精确攻击模型或机制状态未知时保留显式惩罚。

没有固定敌人优先级表。威胁分和证据字符串逐帧重算，并写入 `mpc.combat.threats`。

## 2. Target Selector

目标评分使用：

- 威胁等级；
- 剩余 HP 与预计击杀时间（玩家射速 × 命中机会）；
- 当前预测命中机会；
- 输出窗口；
- 攻击成本（目标距离 / 射程）；
- 击杀后的整体危险变化：Boss、子生成体计数；机制给出死亡爆炸时不把击杀当成纯收益。

目标选择是状态化的：

- 新目标分数必须超过当前目标一个裕量；
- 切换后至少保持 `target_min_hold_frames`；
- 当前目标死亡、不可伤害或威胁压倒性升高时立即切换。

`mpc.combat.switched`、`objective.switch_target` 和目标 `reason` 会记录切换原因。

## 3. Attack Window Detector

窗口阶段为 `windup / active / recovery / invulnerable / idle / unknown`。

证据优先级：

1. 已验证机制触发帧与结束帧（`attack_timing_verified`）；
2. 机制几何/状态导出的 `EnemyIntent` 触发时间和持续时间；
3. 原生 `projectile_cooldown` / `projectile_delay` 倒计时；
4. 状态/动画阶段仅作为低置信度标签，不能单独证明可伤害。

可伤害性来自原生实体伤害过滤字段、`no_target` 和已恢复的无敌字段，不来自动画名。
`damageable_verified` 与 `window_open` 分开：目标可能可伤害，但攻击间隔未经验证时
`window_open=false`，不会凭动画宣称输出窗口。

## 4. Predictive Aiming

两套预测共用同一套原生实体运动公式：

- 根目标/动作剪枝使用 `advance_native_entity_motion` 推进敌人 30 Hz 原生轨迹，
  包含摩擦、速度倍率和机制明确给出的追击行为；对四个射击通道分别计算眼泪到达
  时间、拦截点、横向误差和地形遮挡，选择最早可命中的方向。
- Beam 内每个节点使用该分支自己的玩家位置和目标状态做 O(1) 常速度拦截检查；
  同一移动段内不同射击方向因此独立评分。根层方向仍由完整原生轨迹求解。

输出 `mpc.combat.aim`：`fire`、`aim_point`、`target_future_position`、
`intercept_time`、`miss_distance`、`predicted_hit`、`line_clear`、`confidence`。

## 5. Combat Objective Manager

`CombatObjective` 汇总：

- 当前首要威胁；
- 当前攻击目标；
- 生存优先级（固定最高）；
- 期望输出收益、期望威胁削减；
- 是否存在已验证输出窗口；
- 是否应暂时脱离输出（低血、移动空间严重受限、紧迫威胁且无输出窗口）。

该目标作为 MPC 评分/搜索引导：`disengage` 时战斗收益乘以 0.60，`target` 与 `aim`
决定根候选和深层射击剪枝；它不直接覆盖 MPC 最终动作。

## 6. MPC Integration

### 根候选

- 保留原 `joint`、`baseline`、Top-K 模拟、联合束和路线预览候选。
- `full_root_actions=false` 时加入“9 移动 × 预测瞄准方向”的 `combat-aim` 根候选。
- `full_root_actions=true` 时原 45 个联合动作已包含所有射击方向，不额外插入。

### 逐分支评分

每个节点比较父世界与子世界，独立计算：

| 项 | 来源 |
| --- | --- |
| `threat_removal` | 各威胁实际损失 HP / 自身 HP，按威胁分归一 |
| `kill_priority` | 本段击杀的威胁分占比 |
| `attack_window` | 已验证输出窗口；分支模拟器的 windup/cooldown 作为补充证据 |
| `aim_hit` | 该候选射击方向在当前分支的拦截检查 |
| `output_efficiency` | 目标实际损失 HP / 目标段前 HP |

最终：

```text
node.value = composite_value(...) + node.combat_value
```

`composite_value` 的死亡、受伤、死亡风险、未知风险和逃生空间项保持不变。战斗收益有
`candidate_max_value=60` 上限，低于现有 1 HP 的 100 分伤害惩罚；死亡分支战斗收益为
零。因此生存仍严格高于输出。

## 7. 开关与回退

- `MpcConfig::combat.enabled` 默认开启。
- `GAMEBOT_COMBAT=0` 可复现 v0.7 的无战斗引导搜索，用于对照。
- 预测误差监控触发回退、根无效、时间/总预算耗尽、无存活分支时，仍返回原
  `TopKJointPlanner`/baseline 动作；回退路径不依赖战斗层。
- 只执行 MPC 首段，下一帧重新读取并重算目标、窗口和瞄准。

## 8. 验证

```text
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test
235 passed, 0 failed
```

新增测试覆盖：

- 机制验证窗口、精确触发时间、可伤害标志；
- 动画名不产生可伤害/无敌结论；
- 移动目标预测拦截点与候选射击方向差异；
- 威胁消除和命中收益按候选动作独立计算；
- 目标保持与超时后切换；
- MPC 输出 `combat` 目标和客观目标；
- 同一根快照的不同模拟分支产生不同敌人数量、剩余 HP 和最佳目标；
- 分支评分输出 `kill_sequence / positioning / exposure`；
- 分支攻击窗口使用模拟器计数器且不声明已验证脆弱；
- MPC 输出 `branch` 摘要和分支评估计数。

在 `cpp/samples/combat-and-clear.jsonl`（20 帧、默认配置）上的本机确定性回放：

| 配置 | 平均搜索 | 平均节点 | 平均深度 |
| --- | --- | --- | --- |
| Combat 开 | 3.98 ms | 925 | 11.8 段 |
| `GAMEBOT_COMBAT=0` | 3.51 ms | 1064 | 12.9 段 |

差异在预算噪声范围内；战斗评分的主要开销来自根层原生轨迹预测和每节点常速度拦截，
不改变总时间预算。该表是确定性回放开销，不是实机实时性或无伤证据。

## 9. v0.8.3 Combat Objective Orchestrator

v0.8.3 在同一模块内增加逐分支战术目标，不替换本文件前面的威胁、窗口和瞄准
实现：

- `CombatObjective` 增加 `tactical_mode`、`expected_kill_gain`、
  `target_position_gain`、`exposure_cost`、`positioning_cost`、
  `kill_probability`、`time_to_kill`、`attack_opportunity`、
  `threat_reduction` 和 `branch_specific`。
- `TargetAssessment` 增加 `threat_reduction / expected_damage /
  kill_probability / time_to_kill / attack_opportunity / exposure_cost /
  positioning_cost / kill_gain / position_gain / hp_fraction`。
- `evaluate_branch()` 用分支自己的 `SimWorld` 重算威胁、窗口、剩余 HP、TTK
  和最佳目标；`TargetSelector::select_branch()` 只读取，不修改根选择器状态。
- `score_branch()` 增加 `kill_sequence / positioning / exposure` 和分支目标，
  仍受 `candidate_max_value=60` 和硬安全门限制。
- `AttackWindowDetector::detect(SimEnemy)` 使用模拟器 `windup/active/cooldown`
  计数器，按 60 Hz 分支帧换算；只标记 `estimated`，不声明已验证脆弱窗口。

完整说明见 [战术目标编排](OBJECTIVE.md)。

## 证据边界

- 动画/状态名不是伤害判定；`damageable` 只取原生字段。
- 未知机制仍保留 unknown 风险，不会被战斗层升级为精确值。
- 分支评分使用常速度拦截检查；完整原生轨迹用于根目标和根动作方向。两者都只是预测，
  不是游戏已执行命中。
- 不新增炸弹、道具、卡牌、药丸或交互控制。
- 战斗层只在 MPC 决策链内工作；`GAMEBOT_MPC` 未开启时仍走原 Planner。
- 尚未完成实机无伤验收；合成回放与单元测试不能替代实机结果。
