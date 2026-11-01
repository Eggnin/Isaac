# 动作保护期与风险死区（2026-10-29）

> 修正：本页最初的 `Brimstone` phase4 场景把无敌机关 `203.0.0` 当作可清目标，实际
> 射击落在原房 Type 62。相关 Brimstone 清房/HP 结论作废。修正后的压力板机制结果见
> `PRESSURE-PLATE-MECHANISMS-20261029.md`。

本轮处理高频改向和“安全但清房变慢”的问题。Planner 继续以预计碰撞为第一排序条件，只在该条件相同且路线仍有余量时启用方向保护。

## 实现

- `action_hold_frames=2`：新方向生效后短时间内保持；安全余量低于
  `action_hold_min_clearance=1px` 时不保持。
- `action_change_penalty=2.0`：仅影响同风险路线间的评分，不能覆盖 `hits` 为零的硬条件。
- `exposure_deadband=0.03`、`clearance_deadband=0.75`：忽略噪声级的风险差，避免每帧翻转。
- 玩家已与地形重叠时关闭保护期和死区，改用全部逃生余量排序，优先脱离地形。
- `DecisionAnalysis.action_held` 写入逐帧日志，可直接区分持续动作和重新决策。
- 原生离线驱动新增 `moveSwitches`、`moveSwitchesPer1000Frames` 指标。

代码入口：

- `cpp/src/planner.cpp`
- `cpp/include/gamebot/planner.hpp`
- `research/offline/planner_bridge.cpp`
- `research/offline/engine_worker.mjs`

## 三种子对照

同一 Monstro 房间、同一原版引擎和动作接口，关闭保护期与启用默认参数的差异如下。

| 种子 | 关闭保护期帧数 | 默认参数帧数 | 关闭切换数/千帧 | 默认切换数/千帧 |
| --- | ---: | ---: | ---: | ---: |
| `3JY1 6FLR` | 2,806 | 1,904 | 590.9 | 373.4 |
| `7W3L P1Z9` | 2,364 | 1,871 | 592.2 | 334.0 |
| `SWGF G7WV` | 2,390 | 1,583 | 577.4 | 327.2 |

六个用例全部零伤清房。默认参数将总清房帧数从 7,560 降到 5,358，减少 29.1%；
方向切换率平均从约 586.8 降到约 344.9 次/千帧，减少 41.2%。

结果文件：

- `native-policy-no-hysteresis.json`
- `native-policy-no-hysteresis-seed2.json`
- `native-policy-no-hysteresis-seed3.json`
- `native-policy-hysteresis-v1.json`
- `native-policy-hysteresis-seed2.json`
- `native-policy-hysteresis-seed3.json`

## 外部内存闭环

- Eye、Bloat 两种子、600 帧，phase4 四场全部零伤。
- 历史 `Brimstone` 场景不作为击杀或压力板机制证据；其“清房/未清房”标签均无效。
- 同批旧近似基线在 Eye `SWGF G7WV` 和 Bloat `3JY1 6FLR` 共发生 3 点伤害。
- 修正后 `d.315` 使用普通生命结算，558 帧零伤清房；四块板全部触发，
  `clearFlags=0x43`，Brimstone 从未被选为目标。

证据目录：

- `validation/phase4-hysteresis-600-20261029/`
- `validation/phase4-hysteresis-mixed-600-20261029/`
- `validation/phase4-pressure-d315-final-combat-gated-20261029/`

## 验证与快照

- C++：116/116 通过。
- 策略快照：`policy-baselines/policy-20261029-v6/`。
- 综合哈希：`5534A041613C635988F0517AA6630BEDB9CDEE5696560ED89B2CE75602D2928D`。
- 参数选择目前只覆盖 Monstro 三种子；外部矩阵用于安全回归，不能代替全敌人或 Greedier
  的最终验收。

下一步优先处理目标调度：保持零伤的同时先清理低血量、可命中和阻断射击的小怪，再回到
Boss；同时把保护期参数放到多敌人和 Greedier 矩阵上验证。
