# Counterfactual Closed-Loop Policy Validation（Phase 5）

日期：2026-11-03。Phase 5 验证一个反事实问题：

> 在连续滚动决策中，Temporal Escape 是否真的比当前 MPC 更少受伤，同时仍能
> 保持足够攻击输出？

结论是：**在 8 个合成场景、3 个确定性种子、每种策略 24 次运行中，Temporal
Escape 的累计伤害、死亡数和攻击输出都优于当前 MPC；但单追击敌人场景暴露了
“只逃不打”的代价。** 这些是离线合成闭环结果，不是实机无伤证据。

## 1. 实现位置

| 文件 | 内容 |
| --- | --- |
| `cpp/include/gamebot/policy_validation.hpp` | 三策略、场景、指标和报告结构 |
| `cpp/src/policy_validation.cpp` | 独立世界闭环、快照转换、逐帧指标、聚合 |
| `cpp/src/main.cpp` | `--policy-validation` CLI |
| `cpp/tests/core_tests.cpp` | 三世界一致性、确定性复现测试 |

```text
IsaacGamebot.exe --policy-validation <output.json> [seeds] [max_steps] [step_frames] [scenario_limit]
```

示例：

```text
.\bin\IsaacGamebot.exe --policy-validation validation/phase5-counterfactual-20261103/policy-validation.json 3 80 6 0
```

无键盘输出；不读取游戏进程。

## 2. 三组策略

| 策略 | 移动 | 开火 |
| --- | --- | --- |
| `original-mpc` | 当前 `MpcCombatPlanner` 的首段移动 | 当前 MPC 的首段开火 |
| `temporal-safest` | 时间扩展树中最深、最低风险的局部安全叶子 | 同一个 MPC 根决策的开火命令 |
| `temporal-escape` | 时间扩展树中完成半程时域后离根最远的安全叶子 | 同一个 MPC 根决策的开火命令 |

三组都使用：

- 同一个初始 `SimWorld` 和相同的 `temporal_world_signature`；
- 独立的 `ForwardSimulator`；敌人按各自世界里的真实玩家位置逐帧追击；- 相同的 `ForwardSimConfig`、敌人/弹幕/危险区初始条件；
- 相同的 `step_frames=6`、总步数和决策频率；
- 相同的 MPC 搜索参数：horizon 24、segment 6、beam 3、`max_simulations=512`；
- 相同的开火来源：不改写 MPC，只把它的根决策开火方向用于时间扩展移动；
- 相同的时间扩展参数：horizon 24、4 层、每层最多 10 个状态；
- 离线确定性：MPC `time_budget_ms=0`、`max_simulations=512`，时间扩展
  `max_seconds=0`，不使用墙钟截断；种子只用于场景抖动。

“完全相同的根快照”指每个场景/种子的**初始根**；之后三组是独立的反事实世界，
根状态随各自玩家移动自然分化，否则敌人无法“根据每组玩家的实际移动重新追击”。

当时间扩展没有完整安全叶子时，Phase 5 允许选择最低风险的 warning/danger
叶子，而不是回退到 MPC。`temporal_unsafe_routes` 记录这种选择；`fallbacks`
只统计连 warning/danger 都不可用、真正回退到 MPC 的步数。

## 3. 场景

每个场景使用 28×16 房间，3 个种子，80 个决策步 × 6 帧 = 480 帧（8 秒）：

1. `single-chaser`：单个接触追击敌人。
2. `multi-encirclement`：8 个敌人环形包围。
3. `dense-projectile-corridor`：狭窄走廊 + 24 个实际弹幕。
4. `laser-warning`：激光敌人 + 5 个定时预警/激活激光。
5. `wall-corner`：墙角口袋 + 周期危险区 + 3 个追击敌人。
6. `charging-chaser`：两个冲刺敌人。
7. `unknown-attack`：类型 999 未知攻击 + 周期未知危险区。
8. `mixed-pressure`：接触/激光/冲刺/未知敌人 + 20 个弹幕 + 4 个激光。

## 4. 总结果

运行：8 场景 × 3 种子 × 3 策略 = **72 次独立闭环**；每种策略 24 次。
耗时约 63.6 秒（离线）。

| 指标 | Original MPC | Temporal Safest | Temporal Escape |
| --- | --- | --- | --- |
| 运行次数 | 24 | 24 | 24 |
| 累计伤害 | 64 | 99 | **46** |
| 平均每次伤害 | 2.67 | 4.12 | **1.92** |
| 死亡次数 | 3 | 14 | **0** |
| 清房次数 | 0 | 3 | 0 |
| 累计输出伤害 | 501 | **696** | 630 |
| 平均每次输出 | 20.88 | **29.00** | 26.25 |
| 击杀 | 6 | **20** | 15 |
| 射击 / 命中 | 336 / 145 | 316 / 205 | **468 / 185** |
| DPS | 2.59 | **3.99** | 3.26 |
| 平均轨迹长度 | 714 | 109 | 520 |
| 净位移比 | 0.52 | 0.24 | **0.68** |
| 曲率 | 0.0286 | 0.0592 | **0.0135** |
| 重复访问 | 174 | 27 | **67** |
| 平均单次规划 | 6.57 ms | 13.99 ms | 14.25 ms |
| 最大单次规划 | 16.82 ms | 36.69 ms | 36.79 ms |
| 峰值时间扩展内存 | 0 | 188,616 B | 188,616 B |
| 安全路线 / 非安全路线 | — | — | — |
| `temporal_unsafe_routes` | 0 | 752 / 1666 步 | 240 / 1920 步 |
| 真正回退 MPC | 0 | 8 | 0 |

核心结论：

- **Temporal Escape：伤害 46 vs MPC 64，死亡 0 vs 3，输出 630 vs 501，
  击杀 15 vs 6。** 生存和战斗输出同时改善。
- **Temporal Safest：伤害 99、死亡 14，明显最差。** 它经常停在原地
  （平均轨迹长度 109），形成局部安全小圈/静止；虽然输出和击杀更高，但
  在激光、墙角、未知攻击和混合压力下死亡。
- **Temporal Escape 的小圈指标更好**：曲率 0.0135 vs 0.0286，净位移比
  0.68 vs 0.52；虽然总轨迹更短，但更直接地离开危险区。
- **时间扩展没有回退到 MPC**：Escape 的 1920 步全部由时间扩展给出移动，
  其中 240 步只能选 warning/danger 叶子；Safest 有 8 步真正回退。

## 5. 分场景结果

每格为 3 个种子的平均值；`伤害/死亡/输出/击杀`。

| 场景 | Original MPC | Temporal Safest | Temporal Escape |
| --- | --- | --- | --- |
| single-chaser | 0 / 0 / 12 / 0 | 0 / 0 / **20** / 1 | 0 / 0 / 4 / 0 |
| multi-encirclement | 0 / 0 / 11 / 0 | 0 / 0 / **55** / 2 | 0 / 0 / 28 / 1 |
| dense-projectile-corridor | **2.33** / 0 / 23 / 0 | 3.33 / 0 / **30** / 1 | 3.0 / 0 / **30** / 1 |
| laser-warning | 4.0 / 0 / 24 / 0.3 | 6.0 / 3 / **50** / 1 | 4.33 / **0** / 33 / 0 |
| wall-corner | 6.0 / 3 / 0 / 0 | 6.0 / 3 / 0 / 0 | **1.0 / 0 / 4 / 0** |
| charging-chaser | 4.67 / 0 / 48 / 0.7 | 5.67 / 2 / 42 / 1 | **4.67 / 0 / 53 / 1** |
| unknown-attack | 0 / 0 / 3.7 / 0 | 6.0 / 3 / 0 / 0 | **0 / 0 / 1.3 / 0** |
| mixed-pressure | 4.33 / 0 / 45 / 1 | 6.0 / 3 / 35 / 0.7 | **2.33 / 0 / 57 / 2** |

重点：

- **Wall-corner 和 Unknown-attack**：MPC 和 Safest 各死亡 3 次，Escape 0 次。
- **Mixed-pressure**：Escape 伤害 2.33 vs MPC 4.33，输出 57 vs 45，击杀 2 vs 1。
- **Laser-warning**：Safest 3 次死亡；Escape 0 次死亡，输出 33 vs MPC 24。
- **Charging-chaser**：Escape 与 MPC 伤害相同，但输出和击杀更高。
- **Single-chaser**：Escape 只输出 4，MPC 输出 12。它通过远离敌人
  换来 0 伤害，但射击方向没有持续对准目标；这是 Phase 5 暴露的真实代价。
- **Dense-projectile-corridor**：Escape 伤害 3.0 vs MPC 2.33，略差；但输出
  30 vs 23，击杀 1 vs 0。密集弹幕走廊仍是三种策略的弱项。

## 6. 关键回答

**Temporal Escape 能否在减少受伤的同时维持攻击输出？**

总体上可以：累计伤害下降 28%，死亡从 3 降到 0，输出伤害增加 26%，
击杀从 6 增加到 15，射击/命中都增加。它不是“只会逃跑不攻击”的策略。

但答案有条件：

- 单个追击敌人时，Escape 会过度远离，输出从 12 降到 4；没有击杀。
- 狭窄弹幕走廊中，Escape 伤害略高于 MPC；它用更高输出换取了一点风险。
- Escape 有 12.5% 的决策步没有完整安全叶子，只能选 warning/danger 叶子；
  它仍然保持 0 死亡，但这不是“安全路线始终存在”的证明。

## 7. 验收对照

| 要求 | 证据 |
| --- | --- |
| 三种策略公平对照 | 同一初始 `SimWorld` 签名；三份独立 `ForwardSimulator` |
| 连续滚动决策 | 每 6 帧重新规划，执行首段；共 80 步 |
| 敌人按实际移动追击 | `ForwardSimulator` 每帧用各分支玩家位置更新敌人 |
| 相同开火策略 | 三组都使用未修改 MPC 根决策的首段开火命令 |
| 相同模拟时长 | 80×6=480 帧；死亡导致提前结束，报告中保留实际 frames |
| 多确定性种子 | 3 个种子，场景抖动只由种子决定 |
| 不修改 MPC | `better_node`、CombatIntelligence、权重、Beam、深度均未改 |
| 不接入实时决策 | 仅 CLI 离线运行；无键盘输出 |
| 不引入强化学习 | 仅规则化时间扩展选择与确定性闭环 |

## 8. 限制与证据边界

- 所有场景都是合成 `SimWorld`，不是实机房间；结果不能当作实机无伤成绩。
- 敌人攻击脚本是合成参数，不等同于真实怪物 AI 的全部状态机。
- 规划快照是从实际 `SimWorld` 转换的简化快照；实际执行世界是连续的，但
  MPC/时间扩展看到的攻击意图是近似值。
- 基准组调用未修改的 `MpcCombatPlanner::plan()`（相同的评分、Beam、SafetyGate
  和 CombatIntelligence），但输入是合成根快照；Reader 侧的实时 progress /
  anti-stalemate 状态不会被伪造，因此它不等于带完整 Reader 反馈的实机决策。
- 开火命令来自 MPC 根决策；移动改变朝向/命中机会，因此“相同开火策略”
  不保证相同命中率。
- 时间扩展没有完整安全叶子时允许选 warning/danger；比例已单独报告。
- 80 步（8 秒）只是短时闭环；更长时间可能出现不同结果。
- 规划耗时是离线本机测量，`time_budget_ms=0` 是为了确定性，不代表实时性能。
