# 存活且零伤害目标处理记录

## `156` 个超时的构成

`monster-random-coverage-final.json` 的 2400 帧随机构建中，156 项达到步数上限。它们不是统一的“没有攻击”：

- 115 项目标 HP 实际下降。其中 74 项目标消失但房间未清，另有 41 项目标仍存活。
- 41 项目标 HP 完全未下降。其中 35 项存活，6 项在 HP>0 时消失或转换。
- 运行记录中，154 项至少出现过 `type 2` 泪弹实体；只有 `Vis Versa 836.0.0` 和 `Level 2 Willo 838.0.0` 在两场历史超时中没有该实体。

因此，115 项属于有过有效伤害但未在时限内完成房间；74 项的目标不是清房阻断点，剩余敌人或分裂物才是。41 项零伤害里，35 项需要修瞄准、目标选择或射位；另外 6 项不是被 DPS 杀死。只有“目标仍存活且已掉血但 HP 未归零”的 41 项可以直接描述为输出不足以在时限内完成击杀。

## 本轮改动

以下改动已冻结到 `research/policy-candidates/zero-damage-bfs-20261028/snapshot/`，尚未进入正式默认。当前工作区源码和手测程序已恢复为 v3。

- BFS 搜索射击位时始终使用当前目标的 `aim_at()`，避免为了一个更容易攻击的杂兵改算射位。
- 导航升级且当前不能开火时，为每个目标搜索最近可达射击格，选择最近目标并保持 120 帧。
- 没有任何格子可直接开火时，fallback 增加射线被墙阻挡的代价，不再只比较 miss 和射程差。
- 路点保持允许最多 `48px` 的瞬时 aim miss 容差，避免移动目标每帧令物理路点失效。
- 主目标只有当前确实可开火时才获得 1000 分加成；不可射时允许先攻击其他敌人。
- 当前目标获得 100 分粘性；HP 不高于 7 时提高到 300。主目标初始 HP 超过 100 的 Boss 房关闭提高后的粘性。
- 定向测试可配置 `primary_target_type/variant/subtype`，避免把房间里的高 HP 杂兵误当成主目标。

## 34 项精确复跑

历史剩余 34 个“目标存活、初版报告零伤害”项目，按原房间、原种子和无敌受击校准复跑 2400 帧。

| 指标 | v3 | 当前实验 |
| --- | ---: | ---: |
| 数据通过 | 34 | 34 |
| 目标已掉血 | 16 | 22 |
| 目标仍零伤害 | 18 | 12 |
| 清房 | 11 | 24 |
| 零受击清房 | 6 | 16 |
| 超时 | 23 | 10 |
| 技术错误 | 0 | 0 |

当前报告：`no-damage-recheck-reachhold.json`。

12 个仍零伤害的项目中，11 项已原生清房或目标已消失；`Gaping Maw`、`Stone Grimace`、`Triple Grimace`、`Slide`、`Bomb Grimace`、`Danny`、`Vis Versa`、`Grudge` 等房间已清。唯一仍存活、HP 未降且超时的是 `Ultra Death Head 951.42.0`，它启动即 `invulnerable=true`，不能按普通可伤害目标验收。

其余超时目标均已掉血：

- `Holy Mulligan 22.2.0`、`Mama Guts 57.1.0`、`Mama Fly 61.4.0`、`Bishop 805.0.0`、`Dead Isaac 912.20.0` 等。
- Bishop 原种子 HP 从 18 降到 11；留出种子使用目标身份过滤后从 18 降到 4。

## Vis Versa

`Vis Versa 836.0.0 / d.409` 的原始失败来自两处：

- 当前目标不可射时，BFS 曾用不限定目标的 `aim()`，把角色导向能攻击左侧 Static 的位置。
- 无直接可射格时，fallback 选择了 `miss≈0` 但射线穿墙的右侧格子。

修复后，原种子在 1650 帧清房，14 次无敌受击；新种子 `SWGF G7WV` 在 1436 帧清房，15 次无敌受击。证据：`vis-original-reachhold.json`、`vis-holdout-reachhold.json`。

## 混合危险回归

当前实验参数在 12 个混合危险房、两个原种子上通过数据校验：

| 指标 | v3 | 当前实验 |
| --- | ---: | ---: |
| 数据通过 | 28/28 | 28/28 |
| 正常模式清房 | 12/14 | 12/14 |
| 零受击清房 | 8/14 | 8/14 |
| 死亡 | 0 | 0 |
| 受击次数 | 11 | 10 |
| Cage 超时 | 2 | 2 |

当前报告：`mixed-reachhold.json`。新种子只复测 Cage、Gurdy Jr. 和 Cross Stoney：6/6 数据通过，0 死亡；Gurdy Jr. 和 Cross Stoney 清房，Cage 超时并受击 5 次。证据：`mixed-reachhold-holdout.json`。

## 默认状态

正式默认和 `bin/IsaacGamebot.exe` 仍对应 v3。实验候选已单独构建为 `bin/IsaacGamebot-zero-damage-exp.exe`，SHA256 为 `BC38EAB45BA3F4D045DD8451171AFD2D0E7EF314FC50546ACBC08F978BA09BE5`，手测入口为仓库根目录的 `Start-Assist-zero-damage-exp.cmd`。

候选仍保留 Cage 超时、部分受伤和 Holy Mulligan 留出种子未清房等限制，不能描述为正式 Gamebot 已全面通过。实验快照和哈希见 `research/policy-candidates/zero-damage-bfs-20261028/`。
