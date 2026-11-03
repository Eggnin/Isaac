# Hard Safety Gate / Emergency Escape / Local Clearance (v0.9)

日期：2026-11-02。在现有 `MpcCombatPlanner`、`ForwardSimulator`、
`UnknownThreatManager`、`CombatIntelligence` 之上增加“先判断能不能活，再判断打得好不好”的
安全层。不替换 MPC、Reader、机制库或 `PredictionErrorMonitor`，只改变候选的排序方式和
日志内容。

## 1. 模块

| 文件 | 内容 |
| --- | --- |
| `cpp/include/gamebot/safety.hpp`、`cpp/src/safety.cpp` | `SafetyGateConfig`、`SafetyMetrics`、局部危险密度/可用面积/边界余量/逃生方向 |
| `cpp/include/gamebot/mpc.hpp`、`cpp/src/mpc.cpp` | 硬安全门、紧急逃生排序、候选评分分解、多时域安全指标 |
| `cpp/include/gamebot/forward_sim.hpp`、`cpp/src/forward_sim.cpp` | 特殊弹幕字段、转向不确定包络、危险图扩展 |
| `cpp/include/gamebot/projectile_motion.hpp`、`cpp/src/projectile_motion.cpp` | 共享特殊弹幕运动模型（曲线/轨道/多阶段/SMART/STASIS） |
| `cpp/include/gamebot/prediction_monitor.hpp`、`cpp/src/prediction_monitor.cpp` | 预测帧/实际帧叠加字段 |
| `cpp/include/gamebot/session_review.hpp`、`cpp/src/session_review.cpp` | 历史会话方向切换/反转/边界停留/紧急帧/预测误差复盘 |
| `cpp/src/gui_win32.cpp` | 预测轨迹（蓝）与实际轨迹（灰绿）叠加显示 |
| `cpp/src/main.cpp` | `--mpc-review` 只读复盘入口 |

## 2. 算法来源与对应关系

### `th06nc-autododge`

只参考其**决策结构**，不复制其固定像素/帧参数，也不把东方的场地尺寸、自机判定或
激光数量直接搬到以撒。

| 参考实现 | 本工程对应 |
| --- | --- |
| `plan()` 的 `scores[name] = min(gap)` 安全分 | `SafetyGateConfig` + `MpcConfig::hard_safety_gate` |
| `top < comfort` 时只让安全分参与排序 | 未通过安全门的节点 `combat_value=0`，且 `better_node` 先比较 `gate_passed` |
| `ESCAPE_RANK`：九向全负时按“第几帧脱出判定圈”排序 | `MpcCombatPlanner::plan` 的 `emergency_mode` + `better_node`：先比首次命中帧，再比逃生方向/机动性/最小间隙 |
| `clearance_cost()` + `clear_area_frac()`：局部弹密度按可用面积归一 | `evaluate_safety()` 的 `local_density` / `available_area` |
| `edge_cost()`：只在贴边时惩罚 | `boundary_clearance` 与 `maneuverability` 的边界项 |
| `LASER_HORIZON` 长前瞻、普通弹短前瞻 | `SafetyGateConfig::laser_warning_frames` 与 `clearance_horizon_frames` / `collision_horizon_frames` 分离 |
| `bullet_paths()` / `_advance()`：加速、连续转向、定时转向、瞄准转向 | 已覆盖加速与瞄准追踪；未验证的定时/曲线/轨道转向改为有界不确定包络 |

### `touhou_ai`

只参考工程组织，不引入 YOLO、PPO、CNN 或训练网络：

- 普通策略与紧急生存策略分离 → `Emergency` 策略模式与独立排序键。
- 预测路径与实际轨迹叠加 → `PredictionErrorReport` 的 `overlay_*` 字段 + GUI 双轨迹。
- 候选评分分解 → `MpcPlan::candidates` 输出每个根动作的 `value`、`combat_value`、
  `safety` 和完整 `score`。
- 方向切换/反转/边界停留 → `--mpc-review` 输出 `direction_switches`、`reversals`、
  `boundary_frames`、`emergency_frames`、`safety_failures` 和逐帧时间线。
- 会话复盘 → `--mpc-review` 读取已有日志，输出 JSON 时间线；不做新的输入或控制。

### `TouhouRL-AI`

只采用“普通策略 / 紧急生存策略分离”的思想。没有引入强化学习、CNN 或训练流程。

## 3. 硬安全门

`MpcCombatPlanner` 每展开一个节点：

1. `ForwardSimulator` 推进该分支。
2. 读取该段产生的 `SimEvent`，定位首次 `projectile-hit` / `contact-hit` /
   `hazard-hit` / `player-death`。
3. `SafetyGate::assess()` 计算当前分支的危险状态。
4. `gate_passed` 必须同时满足：
   - 累计伤害为 0；
   - 玩家未死亡；
   - 当前没有进入危险距离（in_danger）；
   - 分支内没有已经发生的命中（first_hit_frame < 0）；
   - 已跨过 `collision_horizon_frames`。

`escape_directions == 0`、`reachable_area` 低或 `corner_risk` 高都是机动性信号，不单独否决分支。
只有真实碰撞、累计伤害、死亡和当前危险几何会关闭硬安全门。

未通过安全门的分支：

- `combat_value = 0`（战斗收益不参与排序）；
- 不参与“安全候选”的优先池；
- 仍保留在搜索中，因为后续动作可能把它带出危险。

安全门不是另一个综合分。它是排序键的第一位：安全候选永远排在下一个安全候选之前，
只有安全候选之间才比较 `value`。

## 4. 紧急逃生排序

当所有候选都未通过安全门时，`emergency_mode` 打开。排序改为：

```text
首次命中帧更晚（没有命中视为最晚）
→ 可用逃生方向更多
→ 局部机动性更高
→ 最小间隙更大
→ 最后才比较普通 value
```

这与普通攻击评分完全分离。`Decision.strategy_mode` 写为 `Emergency`，
`Decision.reason` 追加 `emergency-escape`，`MpcPlan::emergency` 与
`MpcSearchStats::emergency` 同步记录。

## 5. 局部空旷度与机动性

`evaluate_safety()` 不使用固定东方场地矩形，而是：

- 用当前 `Grid` 的 `native_min/native_max`（可用时）或网格边界计算 `boundary_clearance`；
- 在落点周围采样，统计落在房间内且可行走的比例 `available_area`；
- 对弹幕、危险区、接触敌人按距离做线性核，得到 `local_density`；
- 对 9 个移动方向做扫掠探测，统计 `escape_directions`（当前几何下的局部机动性）；
- 对激光/预警使用独立的 `laser_warning_frames` 时域，得到 `laser_pressure`。

### 5.1 静态连通性与动态威胁

`reachable_cells` / `reachable_area` / `mobility_routes` 使用静态 BFS：

- 墙壁、岩石、房间形状、原生 danger 格：静态不可通行，仍会阻挡 BFS；
- 移动敌人、弹幕、动态 hazard：不写入 BFS 掩码，避免当前位置把一个静态连通区域永久切成碎片；
- 敌人位置仍进入 `local_density`、`encirclement_risk`、`escape_directions` 和硬安全门的碰撞/危险判断。

因此，同样的地形只增加一个移动敌人时，静态可达面积和路线数不会因此归零；但真实接触、弹幕命中和危险距离仍会触发硬安全失败。

最终 `maneuverability` 是以上四项的加权和，并受 `in_danger` 与激光压力压制：

```text
0.40 * 方向数/9
+ 0.25 * 可用面积
+ 0.20 * 边界余量
+ 0.15 * (1 - 局部密度)
```

它不是新增的攻击奖励；`MpcConfig::maneuver_weight` 默认 8，低于 1 HP 伤害惩罚（100）
和战斗收益上限（60），并且只在安全门通过后参与。

## 6. 多时域

| 时域 | 默认 | 用途 |
| --- | --- | --- |
| `collision_horizon_frames` | 18 帧（0.30 s） | 硬安全门、首次命中 |
| `clearance_horizon_frames` | 12 帧（0.20 s） | 落点局部密度 |
| `escape_horizon_frames` | 18 帧（0.30 s） | 9 方向逃生探测 |
| `laser_warning_frames` | 42 帧（0.70 s） | 激光/预警提前量 |

这些参数都在 `MpcConfig::safety` 中，按 60 Hz 模拟帧表达，可逐项关闭或调整；
没有直接复制东方弹幕游戏的固定帧数或像素值。

## 7. 特殊弹幕

现有覆盖：

- 加速/减速弹：`ACCELERATE` / `DECELERATE` / `ACCELERATE_EX`，共享模型推进。
- 瞄准转向/追踪：`SMART` / `SMART_PERFECT`，已有。
- 定时速度/位图变化：`CHANGE_VELOCITY_AFTER_TIMEOUT` /
  `CHANGE_FLAGS_AFTER_TIMEOUT`，已有。
- 曲线：`CURVE_LEFT` / `CURVE_RIGHT` / `TURN_HORIZONTAL` /
  `SINE_VELOCITY` / wiggle 系列。
- 轨道：`ORBIT_CW` / `ORBIT_CCW` / `ORBIT_PARENT`，使用 `projectile_orbit_distance`
  收敛半径。
- 多阶段：`STASIS` 释放和位图交换。

仍未被机制库证明或未建模的运动：

- `BOOMERANG`；
- `SLOWED`；
- `TRIANGLE`。

这些字段存在时，`SimProjectile::maneuver_uncertain=true`，仿真器：

- 不猜测转向方向；
- 在 `maneuver_uncertainty` 中按速度和时间增长一个有界包络；
- 危险图使用该包络扩展；
- `SimulationScore::uncertain_maneuvers` 与现有 `unknown_uncertainty` 记录。

已建模的曲线/轨道/多阶段不再增加未知包络。详见
[特殊弹幕运动](PROJECTILE-MOTION.md)。

## 8. 预测/实际叠加与复盘

`PredictionErrorReport` 新增：

- `overlay_valid`、`overlay_frame`、`overlay_clock`；
- `predicted_player`、`actual_player`。

它们来自现有预测 trace 与下一次真实 Reader 快照，不另建 `PredictionErrorMonitor`。

GUI 绘制：

- 绿色粗线：本次决策路径；
- 蓝色细线：新预测轨迹；
- 灰绿细线：最近实际自机轨迹。

`--mpc-review <input.jsonl> <output.json>` 读取 `--mpc`、`--mpc-loop` 或 GUI 会话日志，
输出：

- `direction_switches`、`reversals`；
- `boundary_frames` / `boundary_frame_rate`；
- `emergency_frames`、`safety_failures`；
- `mean_maneuverability`、`mean_prediction_error`；
- 逐帧 `timeline`（动作、安全状态、边界余量、预测/实际点）。

它仍然只读日志，不创建键盘输出。

## 9. 与现有模块的关系

- `Planner`：不变，仍产生路线束和原始决策。
- `TopKJointPlanner`：不变，仍产生联合候选和快照。
- `ForwardSimulator`：增加特殊弹幕字段与不确定包络；推进、碰撞和分叉接口不变。
- `CombatIntelligence`：不变；其 `combat_value` 现在必须先通过安全门。
- `UnknownThreatManager`：不变；未知风险仍走原有 `unknown_uncertainty`。
- `PredictionErrorMonitor`：只增加叠加字段，不重复实现误差监控。
- `RealtimeMpcController`：不需要改接口；`MpcPlan` 新增字段自动进入日志。

## 10. 验证

```text
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test
257 passed, 0 failed
```

新增测试覆盖：

- 安全门把房间边界与局部弹密度分开计算；
- 空旷房间的静态可达性；
- 单个移动敌人、窄走廊两侧两个移动敌人不破坏静态连通性；
- `escape_directions == 0` 但无真实碰撞时仍可通过硬安全门；
- 即将碰撞、累计伤害、命中事件、已处于 danger 区域时仍不能通过硬安全门；
- 静态墙壁仍正确阻挡 BFS；
- Emergency 排序仍携带并使用机动性指标；
- 特殊弹幕改变字段进入有界不确定包络，而不是伪造转向；
- 所有首步都受伤时 MPC 进入 `Emergency` 排序；
- 会话复盘统计方向反转、边界停留、紧急帧和预测/实际误差。

## 11. 证据边界

- 这些是模拟器内的预测，不是实机无伤结果。
- 不确定转向包络不会把 `unknown` 升级成精确轨迹。
- `--mpc-review` 只能复盘日志中实际存在的数据；缺失字段被跳过，不补造。
- 实时入口仍是实验开关；实机验收尚未完成。
