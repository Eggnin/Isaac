# Enemy Intent Predictor

日期：2026-11-02。在 v0.3.3 Top-K Joint Planner 上增加敌人攻击意图识别、动作条件化
攻击预测和虚拟威胁注入。原 `Planner` 的真实弹幕/碰撞预测保持不变。

## 模块

- `cpp/include/gamebot/enemy_intent.hpp`、`cpp/src/enemy_intent.cpp`
  - `EnemyIntentPredictor`：从 Reader 状态和 `MechanismFrame` 识别攻击意图。
  - `AttackForecast` 实例化：按候选玩家轨迹计算发射时目标。
- `cpp/include/gamebot/attack_forecast.hpp`、`cpp/src/attack_forecast.cpp`
  - 通用攻击原语、证据等级、攻击预测结构和 `VirtualThreatGenerator`。
- `cpp/include/gamebot/lookahead.hpp`、`cpp/src/lookahead.cpp`
  - Top-K rollout 接入意图预测；虚拟威胁参与未来危险和攻击机会评分。
- `cpp/include/gamebot/model.hpp`
  - `Threat` 新增 `virtual_threat` 和 `forecast_id`，用于区分真实威胁与虚拟威胁。

## Reader 字段覆盖

预测器只使用现有 Reader / 语义层已经提供的字段：

| 来源 | 字段 |
| --- | --- |
| `Entity` | Type/Variant/Subtype、State、StateFrame、Animation、AnimationFrame、AnimationSpeed、AnimationLength/Looping/Playing、Velocity、HP、Damage、Target、TargetPos、AI V1/V2、AI I1/I2、ProjectileCooldown、ProjectileDelay |
| `MechanismObservation` | identity/state semantics、attack_type、attack_type_evidence、predicted_trigger_frame、predicted_action_end_frame、attack_timing_verified、attack_target_semantics、behavior_model、confidence |
| `MonsterGeometryRef` | source state/animation/AI gate、pattern、pattern direction/center、trigger animation frame (min/max/mean)、speed、radius、count、spread/phase、duration、planning/pre-spawn/geometry evidence |
| `MechanismWarning` | source、shape、pos/end/vel、radius、start/until、predicted trigger/end frame、planning/timing evidence |

`IntentCoverage` 每帧统计敌人数、观察数、状态/动画/目标/速度/冷却/延迟/AI/时序/几何
可用数量，以及 verified/inferred/candidate/unknown 意图数量。`projectile_cooldown`
或 `projectile_delay` 为 0 时不区分“已就绪”和“未使用”，不会被当作精确倒计时。

## 攻击原语

`AttackPrimitive`：

- `aimed_projectile`
- `radial_projectile`
- `spread_projectile`
- `laser`
- `charge`
- `jump_landing`
- `summon`
- `self_explosion`
- `area_explosion`
- `unknown`

行为识别与执行机制分离。相同原语可由不同敌人/State/animation/geometry 规则复用。

## 证据等级与禁止伪造

- `verified`：机制模型同时标记 `planning_validated` 和 `pre_spawn_verified`，或机制
  warning 同时标记 `planning_validated` 和 `timing_verified`。
- `inferred`：有预生成几何/State+参数证据，但没有独立的完整时序验证。
- `candidate`：静态反编译、动画候选或通用动画提示；默认不实例化虚拟威胁。
- `unknown`：没有识别出原语；只计入 `IntentCoverage.unknown`，不生成威胁。

具体限制：

- 没有速度、半径或方向信息的投射物意图只记录，不生成轨迹。
- `Summon` 只生成软区域提醒，不假设召唤物的 Type/Variant/伤害。
- 爆炸半径优先使用 Reader 的 `blast_radius`；缺失时才使用保守默认值，并保持
  inferred/candidate 等级。
- 观察候选（`static_decompiled_*`）默认不进入 Top-K 虚拟威胁；需要显式打开
  `intent_include_candidate`。

## 动作条件化预测

`EnemyIntentPredictor::instantiate_path(intents, frame, path, dt)`：

1. 对每条候选路径，按 `trigger_time` 找到玩家在该时刻的位置；
2. `Aim`/`Charge`/`Jump` 等 targeting 为 `player_position` 的意图，瞄准该路径位置；
3. `source_target` 使用 Reader 的 TargetPos；
4. `fixed_direction` 使用模型指定的 AI 方向、朝向、速度或角度。

Top-K rollout 中，意图在 rollout 到达 `trigger_time` 时才实例化，目标位置使用
rollout 当前预测位置，而不是所有候选路线共用一个当前玩家坐标。

## 虚拟威胁

`VirtualThreatGenerator` 把预测事件转为 `Threat`：

| 原语 | 形状 | 类别 |
| --- | --- | --- |
| 瞄准/径向/扇形投射物 | 逐弹道 motion path | projectile |
| 激光 | capsule | laser |
| 冲撞 | 冲撞走廊 capsule | charge |
| 跳跃落点 | disc | jump |
| 自爆/区域爆炸 | disc | explosion |
| 召唤 | 软区域 disc | contact（`soft=true`） |

虚拟威胁统一设置：

- `virtual_threat=true`
- `predictive=true`
- `kind=intent-*`
- `forecast_id`
- `confidence`、`evidence_status`、`data_source`

真实威胁与虚拟威胁分别保存在 `JointPlan.real_threats`、`JointPlan.virtual_threats`
和 `JointPlan.selected_virtual_threats` 中。生成器只对“同为 predictive 且几何在
多个采样点重合”的真实威胁去重，避免把已经生成的真实弹幕重复计费；不会删除或改写
真实威胁。

## Top-K 集成

`TopKJointPlanner::decide` 流程：

1. 原 `Planner::decide` 先运行，保留原有真实威胁和候选路线；
2. `EnemyIntentPredictor` 识别意图并记录 `IntentCoverage`；
3. 对每条候选路径执行 `instantiate_path`，生成该路径专属的虚拟威胁；
4. 候选预览和 `9 Move × 5 Fire` rollout 同时评估真实威胁 + 虚拟威胁；
5. 只执行第一段动作；下一帧重新读取 Reader、重新预测、重新搜索。

`--joint` 输出新增：

- `intents`
- `intent_coverage`
- `selected_forecasts`
- `selected_virtual_threats`
- `real_threats` / `virtual_threats`

## 验证

`powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test`：

- **193 项通过，0 失败**（含 `UnknownThreatManager` 用例；未知机制细节见
  [`UNKNOWN-THREAT.md`](UNKNOWN-THREAT.md)）。
- 新增用例覆盖：
  - 几何时序识别预生成瞄准投射物；
  - 同一意图在左右两条候选路径上生成不同目标位置/方向；
  - 虚拟威胁标记、motion path 与真实 predictive 威胁去重；
  - 动画 cue 生成 candidate 冲撞意图，未知状态不生成意图；
  - Top-K 计划携带 selected forecasts 和 virtual threats。

确定性合成闭环（以下为加入 `UnknownThreatManager` 前的 8 场景；当前 10 场景见
[`UNKNOWN-THREAT.md`](UNKNOWN-THREAT.md)）：

| 场景 | baseline 掉血/死亡/伤害/ms | Top-K 掉血/死亡/伤害/ms | 意图/虚拟威胁 |
| --- | --- | --- | --- |
| gaper-duo-1 | 0 / 0 / 80 / 11.76 | 0 / 0 / 80 / 12.52 | 0 / 0 |
| gaper-duo-2 | 0 / 0 / 80 / 11.00 | 0 / 0 / 80 / 11.75 | 0 / 0 |
| gaper-crossfire-1 | 0 / 0 / 40 / 13.02 | 0 / 0 / 40 / 13.97 | 0 / 0 |
| gaper-crossfire-2 | 1 / 0 / 40 / 12.53 | 1 / 0 / 40 / 13.44 | 0 / 0 |
| gaper-swarm-1 | 0 / 0 / 89 / 18.64 | 0 / 0 / 93 / 20.22 | 0 / 0 |
| gaper-swarm-2 | 1 / 0 / 67 / 18.62 | 1 / 0 / 65 / 19.93 | 0 / 0 |
| gaper-intent-1 | 2 / 0 / 40 / 10.13 | 2 / 0 / 40 / 10.50 | 22 / 15 |
| gaper-intent-2 | 2 / 0 / 40 / 10.14 | 2 / 0 / 40 / 10.63 | 22 / 19 |
| **合计** | **6 / 0 / 476 / 约 56.2 s** | **6 / 0 / 478 / 约 59.8 s** | **44 / 34** |

结论：

- 预测管线确实运行：8 个场景共识别 44 个意图、生成 34 个虚拟威胁；意图场景产生
  5 次移动覆盖和 180 次射击覆盖。
- 本轮合成场景没有降低掉血或死亡；`gaper-intent` 的两次攻击均造成 2 点掉血。
  这说明“预测到攻击”不等于“简单场景中一定比现有 Planner 少掉血”，不能据此声称
  战斗收益。
- 总规划耗时约 1.06–1.07 倍 baseline（表格为单次运行示例，耗时有数个百分点波动）。
- `intent` 场景的几何模型是为验证动作条件化而构造的合成机制，不是实机机制验证。
- 该对比同样不是实机无伤成绩；真实收益必须在原版游戏中用同一批种子/场景复测。

本次报告：`validation/enemy-intent-20261102/comparison.json`（本机生成，默认不纳入
版本控制）。
