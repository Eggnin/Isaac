# Intent-Driven Combat Movement（Phase 6.1）

日期：2026-11-03。目标：只在移动能带来明确战术收益时移动。射击、MPC 评分、
CombatIntelligence、Beam、搜索预算和 SafetyGate 均未修改。

## 1. 原始 MPC 抖动审计

### 2026-11-03 实机死亡日志修正

最新日志 `sessions/native-20261103-125740-171` 中，玩家在 clock 3180 死亡。
逐帧检查发现：

- clock 3128 的实际弹幕 `pos={230.3,206.7}`、`radius=5`、
  `height=-26.5`、`height_known=true`；
- 玩家 `pos={226.7,189.8}`，弹幕与玩家间隙约 `2.3 px`；
- 原生 `projectile_can_damage()` 的判定是 `height >= -50` 仍可伤害；
- MovementIntent 旧实现却把 `height < -5` 当作“地面/无害”跳过，导致
  `threat_clearance=84.2`、`hold`，直到 3129 弹幕已死亡/命中后才看到危险。

修复：弹幕可见性不再使用猜测的 `-5` 阈值，而是直接调用原生
`projectile_can_damage(entity, entity.height, room_type)`。

修复后对 clock 3128 重新审计：

```text
projectiles_seen=8
damageable_projectiles=5
nearest_projectile_clearance=2.31
threat_clearance=-15.0
movement_intent=escape
requested_move=6
```

新增诊断字段：
`projectiles_seen`、`damageable_projectiles`、`nearest_projectile_clearance`。
这起死亡不是“Temporal Escape 没找到路线”，而是弹幕在进入评估器前被错误
过滤；现在评估器会在命中前进入 Escape。

### 源码证据

1. `MpcCombatPlanner::plan()` 最终直接取选中 Beam 叶子的首段：
   ```cpp
   result.first = selected.segments.empty()
       ? baseline_first : selected.segments.front().action;
   result.decision.move = result.first.move;
   ```
   这里没有“保持上一帧方向”的滞回，也没有移动成本或切换阈值。

2. Beam 的 `better_node` 在比较 `value` 之前先比较：
   - `safety.corner_risk`
   - `safety.reachable_area`
   - `safety.mobility_routes`
   - `safety.escape_directions`
   - `safety.maneuverability`
   - `combat.*` 与 `score.damage_dealt`

   多处使用 `>1e-9` / `>1e-6` 的极小容差。局部 BFS 面积的微小差异即可让一个方向
   排在另一个方向之前，即使两者的实际战术收益几乎相同。

3. `mpc_composite_value()` 包含：
   ```text
   + escape_weight * escape_space
   + maneuver_weight * maneuverability
   + survival_time_weight * frames
   ```
   但没有“每段移动成本”或“方向切换成本”。继续移动/改变方向不会被惩罚。

4. `root_candidates()` 枚举 9 个移动方向，并保留
   `distinct_directions` 个不同方向；Beam 的 `stable_sort` 在近似分数下容易让
   不同方向轮流成为首段。

5. `override_margin` 只用于“是否覆盖 baseline 首段”，不是相邻移动方向之间的
   滞回；`previous_` 只做 warm start，不锁定移动方向。

6. `Decision.move` 由 `Controller::apply()` 直接映射到按键，中间没有移动意图层。

### 实测审计

新增：

```text
IsaacGamebot.exe --movement-audit <input.jsonl> <output.jsonl>
```

它逐帧运行原始 MPC，并输出：
- 原始 `decision.move`
- 当前 `movement_intent`
- evaluator 请求的移动
- stabilizer 执行后的移动
- 原始 MPC 方向切换次数
- 候选 `value` / `safety` / `branch` 差异
- 抑制原因
- evaluator + stabilizer 耗时

`validation/phase61-movement-20261103/`：

| 输入 | 帧数 | 原始 MPC 方向切换 | 执行后方向切换 | Hold | Preemptive | Escape | 抑制 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `sessions/native-20261103-083319-596` 片段 | 39 | 21 | 0 | 17 | 8 | 14 | 0 |
| `cpp/samples/combat-and-clear.jsonl` | 20 | 0 | 0 | 15 | 5 | 0 | 0 |

真实片段里原始 MPC 在 39 帧内发生 21 次非零方向切换；移动意图层执行后为
0 次。该片段危险帧较多，14 帧进入 escape，因此这不是“安静房间”的抖动样本，
但能确认方向抖动确实存在，并且新层会改变输出。

## 2. MovementIntentEvaluator

文件：`cpp/include/gamebot/movement_intent.hpp`、
`cpp/src/movement_intent.cpp`。

四种意图：

| 意图 | 条件 |
| --- | --- |
| `hold` | 无可靠威胁、无目标或候选收益不足 |
| `reposition` | 存在明确的攻击角度、距离、安全间隙、地形或机动空间收益 |
| `preemptive_dodge` | 预测到即将发生的弹幕/激光/蓄力/接近，不需要等到受伤 |
| `escape` | 当前已在危险中，或碰撞即将发生 |

### Hold

优先级最高。安静房间、无敌人攻击、无可攻击目标和候选收益低于阈值时返回
`hold`。`hold` 只把移动改为 `stay`，不改 `decision.fire`。玩家惯性仍由
`advance_native_player_motion` 的真实运动模型处理，`stay` 不会瞬间清零速度。

### Reposition

只使用原始 MPC 已产生的 `plan.candidates` 和 `plan.safety` / `plan.combat`，
不额外跑完整搜索。候选收益由以下明确项组成：

- 安全间隙增加；
- 未来可达面积增加；
- 逃生方向数量增加；
- `corner_risk` 降低；
- 攻击可达性/攻击机会提高；
- 目标距离改善；
- 站位收益提高、暴露成本降低。

默认 `reposition_threshold=8.0`；目标超出射程、射击线被挡或
`objective.need_reposition` 时阈值降低到 60%。单纯“MPC 下一帧换了方向”
不足以触发 reposition。

### Preemptive Dodge

使用当前 `WorldStateSnapshot` 的一步几何预测：

- 弹幕：相对速度最近接近时间 + 半径间隙；
- 激光/危险区：当前或未来激活窗口内的几何间隙；
- 敌人：接触闭合速度、`charge/laser/projectile` 意图的 `trigger_time` 与 reach；
- 可选 `TemporalDanger`：当前 danger / warning 直接进入对应意图。

危险在 `escape_horizon_frames` 内会触发 `escape`；在
`preemptive_horizon_frames` 内触发 `preemptive_dodge`。移动方向用现有 9 方向 +
`advance_native_player_motion` 做短时投影，选择最大间隙方向，不修改物理模型。

### Escape

- 复用 Phase 5 的 `TemporalRoutePolicy::escape`：`select_temporal_route(...)`。
- GUI 只在 evaluator 报告 `escape` 时，按 6 帧最小间隔运行一次有界
  `TemporalReachability`（默认 horizon 18、3 层、每层最多 8 个状态、总状态 128）。
- 没有可用 temporal route 时，才使用 MPC emergency 首段或局部 evasive fallback。
- Escape 期间每 6 帧最多重算一次；Escape 解除后清空“已搜索”状态，下一次危险
  重新规划。

## 3. MovementStabilizer

文件同上。规则：

- Escape 直接绕过锁，立即执行，并清除普通方向锁。
- `hold` 返回 `stay`，但保留方向锁；短暂停顿后重新启动仍要满足切换阈值。
- 当前锁定方向仍可通行时继续执行；`min_lock_frames=6`。
- 反向切换需要 `predicted_movement_benefit >= locked_benefit + switch_margin`；
  默认 `switch_margin=6.0`。
- 路线阻塞、真实危险或 Escape 立即解除锁定。
- 不把左右方向平均成 `stay`；冲突时要么保持锁定方向，要么切换到收益足够的
  另一方向。

## 4. 射击与移动分离

- `MovementIntentEvaluator` 只读 `Decision`/`MpcPlan`；不写 `fire` 或 `target`。
- GUI 只执行 `decision.move = movement.executed_move`。
- `decision.fire`、MPC `plan`、`MpcSequence` 和 SafetyGate 均保持原值。
- 测试 `movement intent holds a quiet room and preserves MPC fire` 明确检查
  `decision.fire` 不变。

## 5. 真实输出接入

`cpp/src/gui_win32.cpp` 在 MPC 分支中：

1. 原 `RealtimeMpcController::step()` 和 `MpcPlan` 不变。
2. 构造 `MovementIntentInput`，读取 `controller.snapshot()`。
3. `MovementIntentEvaluator::evaluate()`。
4. 如果 `escape`，按间隔运行有界 temporal escape，并
   `apply_temporal_escape()`。
5. `MovementStabilizer::stabilize()`。
6. `decision.move = movement.executed_move`，随后交给原有 `Controller::apply()`。

默认开启；设置 `GAMEBOT_MOVEMENT=0` 可临时关闭移动意图层做 A/B 实机对比，
不会影响射击或 MPC 搜索。

日志新增：

```text
movement.movement_intent
movement.requested_move
movement.executed_move
movement.movement_suppressed
movement.suppression_reason
movement.direction_switch_count
movement.predicted_movement_benefit
timings.movement_ms
```

`--movement-audit` 也输出这些字段和候选评分差异，便于实机确认无意义移动是否消失。

## 6. 测试

新增 9 项移动测试：

1. 安静房间保持 `hold`，且 MPC 射击不变。
2. 反向小幅收益不切换，方向锁生效。
3. Escape 绕过方向锁，Escape 后重新建立普通移动。
4. 激光预警阶段提前 `preemptive_dodge`。
5. 立即弹幕碰撞进入 `escape`，`requires_escape` 为真。
6. 冲刺敌人 intent 提前触发 `preemptive_dodge`。
7. 明确攻击位置收益触发 `reposition`。
8. `apply_temporal_escape` 复用 Phase 5 `TemporalRoutePolicy::escape`。
9. 既有物理/碰撞测试保持不变（真实玩家运动、墙体、惯性由原模型覆盖）。

完整测试：

```text
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test
322 passed, 0 failed
```

## 7. 额外耗时

`--movement-audit` 的 evaluator + stabilizer：

- 真实 39 帧片段：平均 **0.0043 ms**，最大 **0.0128 ms**。
- `combat-and-clear` 20 帧：平均 **0.0023 ms**，最大 **0.0058 ms**。

条件 temporal escape 只在真实危险且最多每 6 帧运行一次；其有界搜索约为
Phase 4 审计同配置的毫秒级成本（horizon 18 / 3 层 / cap 8），不在普通帧运行。
Escape 搜索耗时通过 `timings.movement_ms` 在实机日志中单独记录。

## 8. 未修改确认

- MPC 评分公式：未改。
- `CombatIntelligence`：未改。
- 攻击权重：未改。
- Beam Width / 搜索深度 / 预算：未改。
- `SafetyGate`：未改。
- `ForwardSimulator` 物理模型：未改。
- 键盘映射：未改。
- 未引入 PPO、强化学习、A*、ORCA、RVO2、APF。
- 未在每帧运行完整 TemporalReachability；只在 escape 条件满足时按间隔运行。

## 9. 限制

- `hold` 的“停止”仍受玩家惯性影响；它不承诺立即静止。
- Reposition 使用 MPC 候选摘要，不保证找到全局最佳攻击位置。
- Preemptive Dodge 使用一步几何预测，不是完整轨迹规划。
- 合成/离线审计不能替代实机验证；需要等待实机测试确认无意义移动减少，
  且攻击输出没有下降。
