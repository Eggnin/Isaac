# Real-Time Closed-Loop Controller (v0.6.1)

日期：2026-11-02。在 v0.6 MPC 之上增加真实运行闭环、预测误差监控和运行时
保护。没有重写 `Planner`、`TopKJointPlanner` 或 `ForwardSimulator`。

## 1. 闭环

```text
Reader
  → WorldStateBridge::build
  → MpcCombatPlanner::plan
  → 只取 Decision 的第一段 move/fire
  → Controller / 键盘输出
  → 原版游戏
  → 下一次 Reader
  → PredictionErrorMonitor::observe
```

`RealtimeMpcController` 持有同一帧使用的 `WorldStateBridge`、`MpcCombatPlanner`
和 `PredictionErrorMonitor`，避免三者各自构建出不同的世界状态。

MPC 只执行第一段动作。完整动作序列只用于日志、预测和下一轮 warm start，
不会一次性提交给游戏。

## 2. Prediction Error Monitor

每次决策时：

1. 用最终动作序列在独立 `ForwardSimulator` 中逐帧推进。
2. 保存每一帧的玩家、敌人、弹幕、危险区和 Boss 状态。
3. 下一次 Reader 快照到达时，按游戏帧时钟找到对应预测帧。
4. 计算差异并保留到 `PredictionErrorReport`。

比较内容：

| 对象 | 比较字段 |
| --- | --- |
| 玩家 | 位置、速度、HP、死亡状态 |
| 敌人 | ID、位置、速度、HP、State、Boss 阶段 |
| 子弹 | 数量、最近位置、速度、age |
| 攻击/危险区 | 位置、范围、激活时间、未知危险覆盖 |
| 未知机制 | 实际 danger 格是否落在预测危险区之外 |
| 机制来源 | 每个实体 ID/Type/Variant/Subtype 的误差与低可信标记 |

误差被拆成三个报告字段：

- `reader_error`：实际快照中 estimated/unknown 字段比例，作为 Reader 不可见
  部分的误差上界。
- `time_sync_error`：实际帧时间与预测帧时间的偏差。
- `model_error`：去掉时间同步和 Reader 不确定性后的残余误差。

这些是用于定位问题的可解释估计，不是原版引擎的绝对真值。

## 3. Model Mismatch Handler

`PredictionFeedback` 根据平滑后的误差输出：

| 状态 | 行为 |
| --- | --- |
| 低误差 | 保持完整时域和未知威胁范围 |
| 超过 `warn_threshold` | 时域缩到约 70%，未知危险范围扩大到 1.5 倍 |
| 超过 `fallback_threshold` | 时域缩到约 50%，未知危险范围扩大到 2.2 倍，回退 Top-K |
| 房间/时钟不连续 | 丢弃旧预测，清空复用树 |
| 机制来源持续高误差 | 标记 `low_trust=true`，扩大未知危险范围 |

`MpcCombatPlanner::apply_feedback` 负责应用：

- `horizon_frames` 临时缩短，最低 `min_horizon_frames`。
- `ForwardSimConfig::unknown_radius_scale` 只扩大 `unknown` / `virtual` 危险区。
- `forced_fallback`：下一次决策直接使用原 `TopKJointPlanner` 决策。
- 高误差或时域变化时清空上一轮复用序列。

低可信来源按实体地址和静态 identity（Type/Variant/Subtype）记录。它不是
“已确认机制”，只是预测误差证据。

## 4. 失败状态保存

高误差时默认写入：

```text
sessions/<session>/prediction-failures/prediction-failure-<clock>.json
```

内容：

- 完整预测 trace（根快照、动作序列、逐帧预测）
- 当前实际 `WorldStateSnapshot`
- 对应预测帧
- `PredictionErrorReport`
- 低可信来源
- 预测伤害原因/来源

这些文件可以直接用于 `ForwardSimulator`、重放和机制逆向分析。

## 5. 运行时保护

- `GAMEBOT_MPC=1`：启动时默认使用 MPC；不设置则使用原 `Planner`。
- **F8**：原人工控制开关，行为不变。
- **F10**：在 MPC 与原 `Planner` 之间切换。切换时先 `control.stop()`，
  释放所有按键，再重置规划器和控制器。
- 暂停、菜单、房间切换、Reader 失败、无效网格、玩家死亡：
  `RealtimeMpcController` 返回 `safety_stop`，`Decision.stop=true`，
  `Controller::apply` 释放按键，不执行过期动作。
- 超时：MPC 返回当前最优部分序列；总预算耗尽时回退原决策。
- 无效快照：不执行旧动作。
- 控制权交接：F8/F10/急停都先释放旧按键。

## 6. 性能监控

每帧记录：

- Reader 耗时
- `WorldStateBridge` 耗时
- Prediction monitor 耗时（对比 + 预测 trace）
- MPC 搜索耗时
- Action Controller 耗时
- 总决策耗时

`RuntimePerformanceMonitor` 输出 P50/P95/P99、最大值、均值，以及：

- `timeouts`
- `fallbacks`
- `safety_stops`

日志：

- 每帧 `timings` 字段。
- 运行中每 300 帧刷新 `performance.json`。
- 退出时写入 `summary.json` 和 `performance.json`。

`cpp/samples/combat-and-clear.jsonl`（20 帧，`--mpc-loop`）本机结果：

| 指标 | 值 |
| --- | --- |
| 平均总决策 | 15.9 ms/帧 |
| 平均 MPC（含原 Planner/Top-K） | 15.85 ms/帧 |
| 平均 Prediction monitor | 0.05 ms/帧 |
| 平均 WorldStateBridge | 0.04 ms/帧 |
| 总决策 P95 | 19.3 ms |
| 总决策 P99 | 19.4 ms |

这是确定性回放开销，不是实机实时性证明。

## 7. 自动日志

完整模式每帧包含：

- `frame`：Reader 原始帧。
- `snapshot`：`WorldStateSnapshot`（含 provenance）。
- `decision` / `control`：实际执行的移动、射击和按键状态。
- `mpc.sequence`：MPC 最优完整动作序列。
- `mpc.predicted_future`：逐帧预测状态。
- `mpc.prediction`：与上一轮预测的误差报告。v0.9 起报告还包含
  `overlay_valid`、`overlay_frame`、`predicted_player` 和 `actual_player`，
  用于预测路径与实际轨迹叠加。
- `mpc.feedback`：时域、未知范围、回退和低可信反馈。
- `damage_event`：生命下降前后、执行动作、预测原因和误差报告。
- `timings`：本帧性能分解。

`GAMEBOT_LOG_DETAIL=compact` 时省略体积最大的 `snapshot` 和
`mpc.predicted_future`，但保留决策、序列、误差报告和 timing。

## 8. CLI

```text
IsaacGamebot.exe --mpc-loop <input.jsonl> <output.jsonl>
```

`--mpc-loop` 用 `RealtimeMpcController` 回放帧日志，逐帧输出：

- MPC 决策和完整序列
- 预测误差报告
- feedback
- 预测未来状态
- bridge/monitor/mpc 耗时

结束输出 performance summary。它仍然只读输入日志，不创建键盘输出。

## 本轮验证

`powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test`：
**217 项通过，0 失败**。新增覆盖：

- 预测未来状态与真实快照一致时不回退。
- 玩家/敌人/HP/State 偏差会触发高误差、低可信和回退。
- 闭环控制器首次无预测、第二次对比、第三次高误差回退 Top-K。
- 反馈缩短时域、扩大未知危险区和强制回退。
- 性能监控 P50/P95/P99 与超时/回退计数。

## 证据边界

- 闭环和预测误差仍是外部内存与 C++ 模型推断，不是原版引擎真值。
- `reader_error` 和 `model_error` 是分解估计，不是严格因果归因。
- `prediction-failures` 中的实际状态来自 Reader；机制未知字段仍标记 unknown。
- 实机无伤尚未验收；F10 回退和 F8 控制开关必须在真实游戏中操作验证。
