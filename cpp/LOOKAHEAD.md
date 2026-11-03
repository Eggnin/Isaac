# Top-K 联合前瞻 Planner

日期：2026-11-02。保留现有 `Planner` 的决策链不变，在其外层新增离线 Top-K
候选动作搜索、多步轨迹推演与移动/射击联合评分。本轮没有启动游戏，也没有发送按键。

## 实现位置

- `cpp/include/gamebot/lookahead.hpp`、`cpp/src/lookahead.cpp`：`TopKJointPlanner`。
- `cpp/include/gamebot/enemy_intent.hpp`、`cpp/src/enemy_intent.cpp`：攻击意图识别与
  动作条件化预测； `cpp/include/gamebot/attack_forecast.hpp`、
  `cpp/src/attack_forecast.cpp`：通用攻击原语和虚拟威胁生成。详见
  [`ENEMY-INTENT.md`](ENEMY-INTENT.md)。
- `cpp/include/gamebot/unknown_threat.hpp`、`cpp/src/unknown_threat.cpp`：未知实体/
  未知攻击/不确定危险区域管理。详见 [`UNKNOWN-THREAT.md`](UNKNOWN-THREAT.md)。
- `cpp/include/gamebot/benchmark.hpp`、`cpp/src/benchmark.cpp`：确定性闭环对比。
- `cpp/include/gamebot/planner.hpp`：新增 `PlannerConfig::record_candidates` 和
  `Planner::candidates()`。默认关闭，只记录 `decide()` 已经算出的最终路线束，
  不改变原有排序、目标选择或按键输出。
- `cpp/src/main.cpp`：新增 `--joint` 和 `--compare` 两个只读 CLI 入口。

## 决策流程

1. 原 `Planner::decide()` 完整运行一次，得到 `Decision`、威胁集合和最终候选路线。
2. `TopKJointPlanner` 读取其中最多 `seed_candidates` 条不同的首步候选路径。
3. 对每条候选路径按 1/60 s 逐段推演：
   - 用 `Threat::clearance` 计算未来伤害和暴露；
   - 用 `Planner::aim_at(..., time_offset)` 计算未来射击机会；
   - 输出 `CandidatePreview`，包含完整路径和预计伤害/攻击。
4. 以候选首步为种子，在后续 `epochs * epoch_frames` 内搜索 `9 Move × 5 Fire`
   的联合动作序列；每个状态保留得分最高的 K 条（`top_k`）。
5. 评分以预测伤害为主、暴露为次、可造成伤害为收益。命中玩家一次按 100 权重计，
   致命危险按 1000 计，射击收益按 1.5/点计。
6. 输出原 `Decision` 的副本，只覆盖 `move`、`fire`、`path` 和 `planning_ms`；
   `baseline` 字段保留原 Planner 的完整结果，便于逐帧审计。

## CLI

```text
IsaacGamebot.exe --joint <input.jsonl> <output.jsonl>
IsaacGamebot.exe --compare <report.json>
```

- `--joint`：逐帧回放日志，输出 baseline、联合决策、候选路径预览和耗时，不创建键盘输出。
- `--compare`：运行内置确定性场景矩阵，对新旧策略使用相同种子和相同弹幕计划，
  汇总掉血、死亡、输出伤害和计算耗时。

本次结果保存在 `validation/lookahead-topk-comparison-20261102/comparison.json`；
`validation/` 的原始 JSON 默认不纳入版本控制，可用上面的命令重新生成。

## 确定性闭环对比

> 以下 6 场景是加入 `EnemyIntentPredictor` 之前的 v0.3.3 对照；当前 8 场景结果见
> [`ENEMY-INTENT.md`](ENEMY-INTENT.md)。

场景：普通 15×9 房间，2 个 Gaper（40 HP）或 4 个 Gaper 加固定种子弹幕；
控制频率 30 Hz；伤害与弹幕、接触均按实际位置判定。种子 1 和 2 各跑一次；
每个场景另外用 120 帧短跑两次检查结果计数可复现。

| 场景 | 种子 | baseline 掉血/死亡/伤害/平均ms | Top-K 掉血/死亡/伤害/平均ms | 移动/射击覆盖次数 | 可复现 |
| --- | --- | --- | --- | --- | --- |
| gaper-duo-1 | 1 | 0 / 0 / 80 / 11.79 | 0 / 0 / 80 / 12.52 | 0 / 29 | 是 |
| gaper-duo-2 | 2 | 0 / 0 / 80 / 10.98 | 0 / 0 / 80 / 11.70 | 0 / 21 | 是 |
| gaper-crossfire-1 | 1 | 0 / 0 / 40 / 13.10 | 0 / 0 / 40 / 13.95 | 0 / 13 | 是 |
| gaper-crossfire-2 | 2 | 1 / 0 / 40 / 12.55 | 1 / 0 / 40 / 13.45 | 0 / 5 | 是 |
| gaper-swarm-1 | 1 | 0 / 0 / 89 / 18.78 | 0 / 0 / 93 / 20.06 | 0 / 45 | 是 |
| gaper-swarm-2 | 2 | 1 / 0 / 67 / 18.55 | 1 / 0 / 65 / 19.90 | 1 / 46 | 是 |
| **合计** |  | **2 / 0 / 396 / 44.19 s** | **2 / 0 / 398 / 47.21 s** | **1 / 159** | 是 |

结论：

- 掉血和死亡数没有增加；总输出伤害从 396 提升到 398。
- 总规划耗时从 44.19 s 增至 47.21 s，约 1.068 倍；这是保留原 Planner 再叠加
  预览和 Top-K rollout 的代价。实际耗时随机器负载有数个百分点波动。
- 联合层主要改变射击方向（159 帧），移动只在 1 帧改变。现有 Planner 的安全路线
  在简单场景中已经接近最优，因此帧级移动覆盖很少；`gaper-swarm-2` 中 Top-K
  以少 2 点总伤害换取了 1 个额外击杀，原因是目标聚焦减少了溢出伤害。
- 该对比是合成闭环，不是实机无伤成绩。它只能证明两种策略在同一确定性输入下的
  行为差异，不能替代真实游戏验证。

## 验证

`powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test`：

- 182 项通过，0 失败。
- 新增覆盖：候选路线导出、候选路径预览、移动/射击联合结果、攻击关闭、
  多步预测、同帧确定性、同种子闭环计数复现。

## 2026-11-02 前向世界模拟

Top-K 之后新增 `SimulationPlanner` 阶段：构造一次 `WorldStateSnapshot`，
为每个候选首步 fork 一个独立模拟分支，逐帧更新玩家、敌人攻击状态机、
弹幕、激光/冲撞/爆炸、碰撞与死亡，再用生存优先的指标做最终覆盖：

- 玩家受伤、死亡风险、敌人受伤、击杀、清房时间、危险区、逃生空间、
  未知机制不确定性。
- 默认 36 帧（0.6 s）、10 个分支；明显劣势分支提前终止。
- 同一快照只 restore 一次，候选使用 `fork()`，缓存键为世界签名 + 动作计划。
- 只执行最优首段动作，下一帧重新读取真实状态。

WASM 后端检查结论：原版引擎能保存/恢复自身运行内存并 fork，但没有把实时
Reader 快照写入原生实体/房间/RNG 的路径，因此不声称完整状态恢复。
`WasmSimulationBackend::restore()` 会显式失败并给出原因。

详见 [`FORWARD-SIM.md`](FORWARD-SIM.md)，CLI 新增 `--snapshot`、`--simulate`、
`--sim-backend`。
