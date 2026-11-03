# 原 Planner / MPC 短时高压力对照（2026-11-03）

本轮按“MCP”理解为仓库中的 **MPC**（`MpcCombatPlanner`），与原始 `Planner::decide()`
在同一个确定性合成闭环、同一场景种子和同一弹幕计划下对照。只读离线运行，不读取
游戏进程，不发送键盘输入。

## 1. 运行方式

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test
.\bin\IsaacGamebot.exe --mpc-pressure validation/mpc-pressure-20261103/mpc-pressure.json
```

原始结果：`validation/mpc-pressure-20261103/mpc-pressure.json`。

## 2. 场景与配置

4 个高压力场景，每场 200 tick（30 Hz，约 6.7 秒），4 个确定性种子。玩家 6 HP。

| 场景 | 内容 |
| --- | --- |
| `mpc-pressure-swarm-1` | 6 个追击敌人，每 18 tick 一发种子弹，敌人每 45 tick 意图射击 |
| `mpc-pressure-swarm-2` | 同上，不同种子 |
| `mpc-pressure-crossfire-1` | 4 个追击敌人，每 13 tick 一发，敌人每 35 tick 射击 |
| `mpc-pressure-unknown-1` | 5 个未知类型敌人 + 周期未知爆炸，每 20 tick 弹幕 |

两组使用完全相同的 `Frame`、敌人初值、种子弹幕和开火冷却；只有决策层不同：

- **Original Planner**：`Planner::decide()`，四阶段束搜索。
- **MPC**：`MpcCombatPlanner::decide()`，内部仍以原 Planner/Top-K 结果为根，再做
  24 帧时域、3 层 Beam、最多 512 次分支模拟。离线对照关闭墙钟预算
  （`time_budget_ms=0`、`max_total_ms=0`），保证可复现。

## 3. 汇总结果

| 指标 | Original Planner | MPC | 差值 |
| --- | ---: | ---: | ---: |
| 总掉血 | 4 | **3** | -1 |
| 死亡 | 0 | 0 | 0 |
| 输出伤害 | 152 | **205** | +53 |
| 击杀 | 0 | **3** | +3 |
| 射击 / 命中 | 80 / 43 | 80 / **60** | +17 命中 |
| 清房 | 0 / 4 | 0 / 4 | 0 |
| 平均单次规划 | 26.0 ms | 33.2 ms | 约 1.28 倍 |

MPC 在 4/4 场景输出更高，在 2/4 场景掉血更少；总掉血从 4 降到 3，击杀从 0 增到 3。
没有出现死亡，双方也都没有在 200 tick 内清房。

## 4. 分场景结果

`掉血 / 输出 / 击杀 / 命中(发射)`：

| 场景 | Original Planner | MPC |
| --- | --- | --- |
| `mpc-pressure-swarm-1` | **0** / 32 / 0 / 9(20) | 1 / 47 / 1 / 14(20) |
| `mpc-pressure-swarm-2` | 1 / 53 / 0 / 15(20) | **0** / 58 / 1 / 17(20) |
| `mpc-pressure-crossfire-1` | 2 / 32 / 0 / 9(20) | **0** / 51 / 1 / 15(20) |
| `mpc-pressure-unknown-1` | **1** / 35 / 0 / 10(20) | 2 / 49 / 0 / 14(20) |

需要注意的不是“MPC 全面更好”：

- 在两个 swarm/crossfire 场景，MPC 用更高输出换到 0 或 1 点掉血；
- `mpc-pressure-unknown-1` 中 MPC 反而多掉 1 点血，且没有击杀；
- `mpc-pressure-swarm-1` 中 MPC 也多用 1 点血换取 1 个击杀和更高输出。

## 5. 可复现性与性能

- 4 个场景的 90 tick 探针均报告 `deterministic=true`。
- 完整 200 tick 对照重复运行时，所有掉血、输出、击杀、命中计数完全一致；只有
  墙钟耗时随机器负载有少量波动。
- MPC 的总规划时间为 26.53 秒，Original Planner 为 20.76 秒，约 1.28 倍。
  这是离线确定性回放耗时，不是实时帧预算结论。
- MPC 全程未触发回退（`mpc_fallbacks=0`），共复用上一轮序列 735 次。

## 6. 证据边界

- 场景是合成 `Frame`/闭环，不是实机房间，也不是实机无伤成绩。
- 敌人攻击是基准程序生成的确定性弹幕/意图，不代表真实怪物 AI 的全部状态机。
- 200 tick 只是短测；更长时间、清房压力和激光/墙体场景可能改变结论。
- 本轮没有启动游戏，没有发送按键，也没有验证 `GAMEBOT_MPC=1` 的实时表现。
