# 自动战术策略优化 · v0.9.1

本模块在现有 v0.8.3 Combat Objective Orchestrator、MPC、ForwardSimulator、SafetyGate 与机制库之上做**参数选择与离线优化**。它不重建战斗决策，也不改变实时搜索规模。

## 1. 战斗场景分类

`CombatScenarioClassifier` 只读取 `WorldStateSnapshot`（可选 `MechanismFrame`），不按 Type/Variant 查固定表。特征包括：

- 存活/可伤害敌人数量、Boss 标记与阶段
- 敌方投射物数量、玩家附近密度、激光/危险区数量
- 攻击方向覆盖的 8 扇区数、是否存在相反方向
- 玩家周围可行走面积与局部拥堵
- 机制置信度、inferred 机制数量、未知实体/未知状态
- 低 HP 状态

输出可同时包含多个标签：

```text
normal_room
melee_pressure
ranged_pressure
dense_projectiles
multi_direction_pressure
boss_combat
unknown_high_risk
```

标签由证据触发，例如“16 个从 8 个方向接近的投射物”会同时得到 `dense_projectiles` 和 `multi_direction_pressure`，而不是因为敌人是某个 Type 就固定分类。`tags[0]` 是主标签，用于选择 Profile；其他标签仍参与匹配。

分类器有状态版本 `update()`：主标签变化需要连续两帧确认，避免单帧噪声。运行时的 Profile 切换另有 `stable_frames` 延迟。

## 2. Strategy Profile

Profile 的 `parameter_values` 只包含有界战术参数，全部映射到现有配置：

| Profile 参数 | 现有配置 |
| --- | --- |
| `maneuver_weight` | `MpcConfig::maneuver_weight` |
| `target_switch_margin` | `CombatConfig::target_switch_margin` |
| `target_hold_frames` | `CombatConfig::target_min_hold_frames` |
| `engage_threshold` | `CombatConfig::engage_threshold`（新增门限） |
| `disengage_threshold` | `CombatConfig::disengage_threshold`（复用原 0.80 常量） |
| `focus_fire_bonus` | `CombatConfig::candidate_kill_weight` |
| `attack_window_bias` | `CombatConfig::candidate_window_weight` |
| `positioning_weight` | `CombatConfig::candidate_position_weight` |
| `emergency_sensitivity` | 只上调 SafetyGate 的碰撞/间隙/逃生/激光时域与边距 |

每个 Profile 记录 `profile_id / scenario_tags / parameter_values / version / source / confidence / performance_summary`。内置 Profile 只是起点，不是实测优越性的声明。

`strategy_config()` 从基础 `MpcConfig` 复制后应用参数。`strategy_preserves_safety()` 检查候选配置的每个硬安全限制不弱于基础配置。

## 3. 实时集成

`MpcCombatPlanner` 默认不启用 Profile。启用方式：

- 代码：`planner.set_strategy_enabled(true)`，可选 `set_strategy_profiles()` / `set_strategy_runtime_config()`
- 环境变量：`GAMEBOT_STRATEGY=1`
- GUI/CLI 会尝试读取 `data/strategies/current.json`；不存在时使用内置 Profile

每帧顺序不变：Reader → Top-K/Joint → `WorldStateSnapshot` → 场景分类 → Profile 选择/混合 → 现有 MPC Beam → SafetyGate → 首段动作。Profile 只改战术权重，不改变：

- MPC 主体、Beam Width、预测时域、分支数量
- SafetyGate 硬约束（`emergency_sensitivity` 只能更严格）
- Emergency Escape、UnknownThreatManager、PredictionErrorMonitor
- 超时回退原决策

场景切换需要目标 Profile 连续稳定 `stable_frames` 帧，然后在 `blend_frames` 内线性混合。TargetSelector 的保持状态在权重更新时保留。

MPC 日志的 `mpc.strategy` 记录本帧场景、选中/目标 Profile、是否切换、混合进度和实际应用参数。

## 4. Strategy Memory

`StrategyMemory` 维护：

```text
data/strategies/
  current.json
  strategy-v1.json
  strategy-v2.json
```

支持保存不同场景的 Profile、比较参数差异、回滚到旧版本、查看 history。优化器只有在通过晋升门禁后才写入 memory。

## 5. 场景回放语料

`ScenarioCorpusBuilder` 从真实 JSONL 日志提取代表性片段：

- `WorldStateSnapshot`（含 HP、房间几何、实体关系）
- `MechanismFrame`
- `UnknownAssessment`
- 实体关系、初始 HP、房间几何
- 机制置信度、未知风险、预测误差
- 来源文件/行号、seed、房间号、train/holdout 划分

划分按来源/房间/时钟/seed 的稳定哈希完成；优化只使用 `train`，`holdout` 只用于晋升判断。语料保存的是采集快照，优化成绩仍是离线模拟，不是实机无伤成绩。

## 6. 离线优化器

`TacticalParameterOptimizer` 只做有界搜索：

1. 一维 Bounded Grid Sweep（候选消除）
2. 保留表现最好的若干候选
3. Coordinate Descent（逐参数 ±step，限制总评估次数）
4. 对候选做 holdout 复核

不使用 PPO/DQN/CEM/神经网络。目标按字典序比较：

1. 死亡次数最少
2. 受到伤害最少
3. 清房时间最短
4. 输出伤害最高
5. 目标切换/方向反转最少

评估使用与实时 MPC 相同的 `mpc_composite_value()`、`CombatIntelligence` 评分、`SafetyGate` 和 `ForwardSimulator`，避免出现第二套目标函数。

## 7. 防止模拟器利用

- 优化器不能修改机制库、物理公式或 SafetyGate 下限
- `emergency_sensitivity` 只能 ≥ 1.0
- inferred/unknown 机制保留不确定性惩罚；未知风险进入评分和决策
- 场景预测误差降低 `ScenarioOutcome.confidence`
- 晋升 `strategy_promotion_gate()` 要求：真实采集、足够训练样本、holdout 样本、机制置信度、预测误差阈值和总体置信度
- 只有训练集改善且 holdout 不退化（死亡、伤害不增加）的候选才可能晋升
- 仅模拟器分数、无真实采集的候选会被拒绝

## 8. CLI

```powershell
# 查看日志中的场景分布和 Profile 选择
./bin/IsaacGamebot.exe --strategy-classify sessions/<run>/frames-0001.jsonl classify.json

# 从真实日志提取优化/保留评估语料
./bin/IsaacGamebot.exe --strategy-corpus sessions/<run> corpus.json

# 优化并写入 memory（第三个参数可覆盖目录）
./bin/IsaacGamebot.exe --strategy-optimize corpus.json optimize.json data/strategies

# 查看、比较、回滚
./bin/IsaacGamebot.exe --strategy-list data/strategies
./bin/IsaacGamebot.exe --strategy-compare a-profile.json b-profile.json
./bin/IsaacGamebot.exe --strategy-compare data/strategies 1 2
./bin/IsaacGamebot.exe --strategy-rollback data/strategies 2
```

所有 CLI 模式都不创建键盘输出。

## 9. 证据边界

- 场景标签是采集状态的派生结果，不是游戏原生枚举。
- `performance_summary` 的 `simulated=true` 与 `evidence_scope` 明确表示离线回放模拟。
- 优化结果只有在实机对照后才能称为实战收益；本模块不会自动把模拟成绩写成无伤记录。
- 保留评估集用于发现过拟合，不能反复用于调参。
