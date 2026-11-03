# Isaac Gamebot — Final Combat Integration (2026-11-03)

本轮只完善现有战斗链路，没有新增 Phase、版本分支、强化学习、寻路算法或大规模对照实验。MPC Beam Width、搜索预算、ForwardSimulator 主体和 TemporalReachability 均未重写。

## 1. 攻击链路审计结论

按 `Target Selection → Aim Direction → Fire Decision → Projectile Spawn → Projectile Movement → Collision → Projectile Hit Event` 检查后，确认的实际问题：

1. **弹道模型漏掉玩家速度继承。** `research/tear-velocity-probe.json` 的受控 J460 探针测得：静止时普通眼泪主轴速度为 300；玩家移动时眼泪包含约 `0.6 × player.velocity`（横向比值 0.59–0.60，例如向右 243.7 时主轴 444.5）。旧 `ForwardSimulator` 和 `PredictiveAiming` 都按 `direction × tear_speed` 发射，玩家移动时预测与实际弹道不一致。
2. **瞄准飞行时间被固定 0.85 s 截断。** 远距离或玩家后退时，眼泪实际需要 1.1–1.9 s；旧上限会把可达目标判成 miss，抑制射击。
3. **根瞄准与分支评分模型不一致。** 根节点用原生运动投影，分支评分用 O(1) 匀速外推；目标在 windup/charge 或飞行时间较长时，根节点认为能命中、分支却认为不能，导致射击决策抖动。
4. **无解时的 fallback fire 会在射程外继续发射。** 这些射击在回放中全部是 miss，拉低命中率。
5. **命中事件只按敌人 HP 下降计数，没有和真实友方弹幕关联。** 无法区分“发射了但没命中”和“没发射”。

## 2. 修改内容

### 2.1 弹道与瞄准

- `model.hpp`：新增共享常量/函数 `native_tear_inheritance = 0.6`、`native_tear_spawn_offset = 12`、`native_tear_velocity()`。
- `forward_sim.cpp`：友方眼泪发射速度改为 `direction × tear_speed + 0.6 × player.vel`；寿命按实际发射速度计算，保持射程是“飞行距离”而不是“固定时间”。
- `combat.cpp`：
  - `solve_projection()` 使用实际发射点、实际弹速、实际射程和完整目标投影路径；逐段检查地形遮挡。
  - `check()` 的分支匀速拦截也使用同一继承模型。
  - 新增 `evaluate()`：只评估一个实际 fire 键，用于日志和分支评分。
  - `score_branch()` 对移动目标使用原生运动投影；对 windup/charge/静止目标保留 O(1) 精确匀速检查，避免无必要的逐分支投影开销。
  - `project_snapshot()`/`project_sim()` 不再把 windup/charge 的敌人当作追击者投影。
  - `CombatIntelligence::evaluate()` 可由 MPC 传入已恢复的根 `SimWorld`，使瞄准使用模拟器自己的 windup/charge/chase 状态。
  - `aim_horizon` 从 0.85 s 调整为 1.5 s；仍按武器实际 `tear_range / tear_speed` 截断。
- `planner.cpp`：旧 Planner 的 `aim_at()` 同样使用继承弹道和二维拦截；`DecisionAnalysis` 增加发射点、弹速、目标位置/速度、预计飞行帧、命中半径和预测命中。
- `mpc.cpp`：`combat_aim` 只在 `predicted_hit` 时进入攻击动作；fallback fire 只在目标当前在射程内时进入根动作；反停滞的 `fallback_fire_valid` 信号保留。
- `benchmark.cpp`：策略验证的眼泪发射同步使用继承模型。

### 2.2 命中诊断

- `PredictiveAimSolution` 新增：`target_position`、`spawn_position`、`projectile_velocity`、`estimated_travel_frames`、`hit_radius`、`tear_speed`、`inheritance`。
- `MpcPlan` 新增 `shot`：按实际首段 fire 键重新计算，不会把根瞄准方向误报成实际发射方向。
- `CombatProgressState` 新增：
  - `projectile_hits` / `projectile_misses` / `projectile_hit_rate`
  - `attributed_damage` / `elapsed_seconds` / `damage_per_second`
  - `last_shot`：目标、玩家位置、目标位置/速度、发射点、弹速、实际瞄准方向、预测拦截点、预计飞行帧、预测命中。
- 命中关联规则：只把**上一帧真实存在的友方弹幕**按扫掠线段与**本帧敌人 HP 下降**做几何关联；没有关联的弹幕消失计为 miss，不根据 fire 键推断命中。
- `gui_win32.cpp`：MPC 每帧日志新增 `mpc.combat`、`mpc.shot`；`mpc.progress` 已包含上述计数器。非 MPC 模式继续记录 `decision.analysis` 的新增瞄准字段。

## 3. 修改文件

| 文件 | 内容 |
| --- | --- |
| `cpp/include/gamebot/model.hpp` | 继承常量/函数、`Aim`/`DecisionAnalysis` 诊断字段与序列化 |
| `cpp/include/gamebot/forward_sim.hpp` | `tear_inheritance`、`tear_spawn_offset` |
| `cpp/src/forward_sim.cpp` | 友方眼泪继承发射、按实际速度计算射程寿命 |
| `cpp/include/gamebot/combat.hpp` | 瞄准配置、诊断字段、`evaluate()`/`shot()`、根 `SimWorld` 瞄准入口 |
| `cpp/src/combat.cpp` | 继承弹道、完整飞行时间、windup/charge 投影、分支原生评分、fallback 射程门控 |
| `cpp/src/planner.cpp` | 旧 Planner 瞄准与诊断 |
| `cpp/src/mpc.cpp` | 根模拟器瞄准、实际 shot 诊断、`predicted_hit` 门控、fallback 射程门控 |
| `cpp/src/benchmark.cpp` | 策略验证弹道同步 |
| `cpp/include/gamebot/combat_progress.hpp` | 弹幕级命中/未命中、DPS、last_shot 字段 |
| `cpp/src/combat_progress.cpp` | 真实友方弹幕与 HP 下降的几何关联 |
| `cpp/src/gui_win32.cpp` | 日志接入 `mpc.combat`、`mpc.shot` |
| `cpp/src/policy_validation.cpp` | 仅验证工装：windup 快照与模拟器恢复值对齐 |
| `cpp/tests/core_tests.cpp` | 继承弹道、预测一致性、弹幕命中关联测试 |
| `README.md` | 战斗实现说明 |

## 4. 修改前后对照

### 4.1 单个追击敌人（确定性合成闭环，3 seeds × 80 steps）

场景：`--policy-validation ... 3 80 6 1`，单个接触追击敌人，玩家与敌人同场，ForwardSimulator 闭环。  
数据：`research/attack-before-final-single-chaser-20261103.json`、`research/attack-final-single-chaser-20261103.json`。

| 指标 | 修改前 | 修改后 |
| --- | ---: | ---: |
| 射击次数（实际眼泪） | 35 | 22 |
| 命中次数 | 16 | 18 |
| 命中率 | 45.7% | 81.8% |
| 实际输出伤害（内部 HP） | 54 | 60 |
| DPS | 2.25 | 2.50 |
| 玩家受到伤害 | 0 | 0 |
| 清房 | 2 / 3 | 3 / 3 |
| 死亡 | 0 | 0 |

逐种子：

| seed | 修改前 shots/hits/dmg/DPS/clear | 修改后 shots/hits/dmg/DPS/clear |
| ---: | --- | --- |
| 1 | 23 / 4 / 14 / 1.75 / 否 | 8 / 6 / 20 / 2.50 / 是 |
| 2 | 6 / 6 / 20 / 2.50 / 是 | 7 / 6 / 20 / 2.50 / 是 |
| 3 | 6 / 6 / 20 / 2.50 / 是 | 7 / 6 / 20 / 2.50 / 是 |

seed 1 是玩家持续移动的场景：修改前 23 发只有 4 发命中；修改后停止无效远射，8 发 6 中并清房。

### 4.2 六个现有场景回归（3 seeds × 80 steps × 6 scenarios）

数据：`research/attack-before-final-all6-20261103.json`、`research/attack-final-all6-20261103.json`。

| 指标 | 修改前 | 修改后 |
| --- | ---: | ---: |
| 射击次数 | 266 | 254 |
| 命中次数 | 165 | 191 |
| 命中率 | 62.0% | 75.2% |
| 实际输出伤害 | 568 | 653 |
| DPS | 3.99 | 4.59 |
| 玩家受到伤害 | 55 | 53 |
| 清房 | 2 | 5 |
| 死亡 | 3 | 3 |
| 平均规划耗时 | 5.19 ms | 3.95 ms |
| 最大规划耗时 | 13.92 ms | 9.50 ms |

结论：命中率、输出、DPS、清房数上升，玩家总受伤从 55 降到 53，死亡数不变，规划耗时没有退化。逐场仍有两个小回退：`dense-projectile-corridor` seed 2 受伤 2→3，`charging-chaser` seed 3 受伤 4→5；同时 `multi-encirclement` seed 1 从 4 降到 0。这两个 +1 是实机复核时应重点观察的生存点。

## 5. 测试

```
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test
325 passed, 0 failed; 18147 ms
Built: D:/Isaac/bin/IsaacGamebot.exe
```

新增测试：

- `native tear inherits player velocity at launch`
- `predictive aim matches the native inherited tear model`
- `progress tracker attributes real projectiles to HP drops`

保留并运行了全部现有测试，没有删除或放宽断言。

## 6. GUI 接入

MPC 模式每帧日志（`sessions/<run>/frames-*.jsonl`）新增：

- `mpc.combat.aim`：目标、目标位置/速度、玩家位置、发射点、实际弹速、瞄准方向、预测拦截点、预计飞行帧、miss、confidence。
- `mpc.shot`：按实际首段 fire 键重新计算的同一组诊断；可与 `mpc.combat.aim` 对照，检查“预测瞄准方向”和“实际发射方向”是否一致。
- `mpc.progress`：`projectile_spawns`、`projectile_hits`、`projectile_misses`、`projectile_hit_rate`、`enemy_hp_lost`、`attributed_damage`、`damage_per_second`、`elapsed_seconds`、`last_shot`。

非 MPC 模式：`decision.analysis` 新增 `firing_spawn`、`firing_velocity`、`firing_target_position`、`firing_target_velocity`、`firing_travel_frames`、`firing_hit_radius`、`firing_predicted_hit`。非 MPC 路径没有闭环弹幕跟踪器，因此 `projectile_hits/misses` 只在 MPC 日志中提供。

## 7. 证据边界

- **真实测量**：`research/tear-velocity-probe.json` 和 `research/CAGE-FINDINGS.md` 的 0.6 玩家速度继承；这是 J460 受控输入探针，不是合成推测。
- **合成闭环**：第 4 节的命中率、DPS、伤害和清房来自确定性 `ForwardSimulator` + `MpcCombatPlanner` 的 `--policy-validation`，不是实机无伤成绩，也不是实机命中率。
- **未验证**：本轮没有重新运行真实游戏对局；实机命中率、实机 DPS 和最终无伤表现等待用户最终实机验收。
- 第 4 节场景的接触敌人 windup 在验证工装中对齐到模拟器恢复上限（240 帧），仅用于消除快照/模拟器的 windup 不一致；这不是游戏行为改动。
