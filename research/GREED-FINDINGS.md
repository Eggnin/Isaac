# 困难贪婪第一层记录

## 原版模式入口

`ugg` 不是 Greedier 模式开关。原版二进制中的 `ugg` 只是控制台宏：执行 `stage 11a`、`goto s.boss.6000`、发放测试道具并开启 `debug 3`。它不会创建 Greedier run。

可复现的真实困难贪婪入口：

1. 使用完整原版菜单，种子 `7W3L P1Z9`。
2. 在角色选择页依次输入 `Right`、`Down`、`Down`。
3. `Enter` 开始。

已观察结果：

| 字段 | 值 |
| --- | --- |
| `Game+0x269c8` 难度 | `3`，Greedier |
| Stage | `1` |
| StageType | `2` |
| 初始房间 | `1.1018`，15×16，Greed Arena |
| `Game+0x18334` 波次索引 | 从 `0` 开始 |
| `Room+0x723c` 波次计时 | 未激活时为 `-1` |

原版模式加载记录为 Burning Basement 与 Special Rooms 的 `mode 1`。测试存档使用用户存档的只读副本并通过现有 `make_unlocked_save.mjs` 在副本中解锁全部成就，未修改 `D:/以撒`、Mod、选项或原始存档。

## 中心开关

Greed Arena 的中心开关是 `GridEntityType.GRID_PRESSURE_PLATE`（`20`），当前房间为 variant `2`。

原版规则：

- `Room+0x723c == -1` 表示波次计时停止，开关地刺收起。
- `Room+0x723c >= 0` 表示波次计时运行或正在生成下一波，开关地刺处于危险状态。
- 普通波次会自动接续。计时运行期间再次踩下开关会扣半颗红心并停止后续自动波次。
- 每层只在普通波开始前和普通波清完后的 Boss 波开始前需要安全踩一次开关；不能逐波重复踩。
- 失落系角色改为扣除下一波 1 枚金币。
- Greedier 一共推进到波次索引 `11`。

当前策略处理：

- 正式 C++ 采集器在 `Room+0x723c >= 0` 时把 `20.2.0` 压力板写入 `Cell.danger`，规划器的地形碰撞禁止进入该格。
- 离线观察器使用同一危险条件；离线策略在计时运行且玩家距开关中心不足 56px 时强制向外撤离。
- `greedWaveAssist` 只允许普通波开局和 Boss 波开局各踩一次；启动后不再尝试接近开关。
- 伤害快照记录开关格、玩家位置、上一帧决策和实体危险。

## 当前第一层结果

| 配置 | 步数上限 | 波次进度 | 结果 | 剩余问题 |
| --- | ---: | ---: | --- | --- |
| 初版波间自动踩开关 | 12,000 | 6 | 存活，1 点伤害 | 会停在波间，存在重复踩刺风险 |
| 短触后立即后退 | 12,000 | 6 | 存活，1 点伤害 | 第 6 波停在底部 `Sack 30.2.0` |
| 同上，延长运行 | 18,000 | 6 | 存活，3 点伤害 | 仍无法清除底部 `Sack` |
| `debug 3` 原版波次基线 | 20,000 | 5 | 8 点生命未减少，4 次无敌受击 | 5 个 `Sack` 未清 |
| 目标停滞后轮换 | 8,000 | 9 | 正常生命，6 点伤害 | 能推进波次，但受伤明显增加 |

开关地刺修复后，12,000 帧真实生命复测推进到第 9 波，过程中没有再次踩下开关；3 次伤害均来自普通敌人，开关格在伤害快照中保持 `state 0`。第一层后续 Boss 波和 `Sack 30.2.0` 清房仍未完成。

## 证据

- `research/offline/check_greed_mode.mjs`
- `research/offline/engine_worker.mjs`
- `research/offline/engine_environment.mjs`
- `research/policy-baselines/policy-20261029-v4/manifest.json`
- `research/greedier-floor1-switch-guard-realhealth-12000.json`
- `research/greedier-floor1-safe-switch-assist-12000.json`
- `research/greedier-floor1-safe-switch-assist-18000.json`
- `research/greedier-floor1-debug3-v3-20000.json`
- `research/greedier-floor1-drop-stalled-8000.json`
- `research/greedier-floor1-sack-priority-8000.json`

