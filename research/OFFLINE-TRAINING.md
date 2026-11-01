# 原版引擎离线训练

2026-10-28：完整战斗房间、严格逐帧控制、并行加速参数搜索均已运行验证。正式 Gamebot 的 C++ 决策代码直接编译为策略 Wasm；环境运行从本地 J460 EXE 转换的原版逻辑，包括敌人 AI、弹幕、输入、碰撞、伤害和房间清空。

不需要启动桌面游戏。各环境拥有独立 Node 进程、内存和研究目录存档，资源来自 `research/runtime-instance/resources` 的独立副本。游戏安装文件未因训练改动。

## 2026-10-29 机关实体与压力板快照

当前策略快照为 `policy-baselines/policy-20261029-v11/`，综合哈希
`6BC1E6EF564AFA4DBF0D4219C8515F69E2AE55C423A6DB4BCA133227FE8BFBA0`。

- Reader 分离 `cleared` 与 `pressure_plates_triggered`，保留完整 `clear_flags`。
- Planner 在 bit1 未置位时导航压力板；`203.0.0` 永不作为目标，bit1 后抑制其自身威胁。
- 压力板未全部触发时暂停自动射击，先把机关踩完；bit1 置位后恢复索敌。
- 当前无敌的机关 NPC 与可受伤敌人分离，不进入索敌，也不触发久未掉血的导航升级。
  已实测 `42/201/202/203/212/235` 系列；状态性无敌的 `27/204` 仍按实时字段恢复索敌。
- Brimstone Head 四个朝向均生成前摇预警，威胁半径使用实测碰撞宽度 `16`。
- 已观察地刺格在本房间内持久记忆，避免收起帧误入、展开后被困。
- `d.315` 无 debug：558 帧零伤清房，四板 `state=3`，`clearFlags=0x43`。
- 地刺安全余量只在当前房间已观察到网格危险时启用；Monstro 三种子保持
  1,904 / 1,871 / 1,583 帧零伤清房，没有普通战斗性能回退。
- C++ 测试 113/113；详情见 `PRESSURE-PLATE-MECHANISMS-20261029.md` 与
  `MECHANISM-ENTITIES-20261029.md`。

## 2026-10-29 原生物理策略快照

历史策略快照为 `policy-baselines/policy-20261029-v5/`。正式 C++ 与离线策略默认启用
J460 原生玩家运动、特殊弹道和折线激光几何；旧近似模型仅作为显式基线开关。

- 新模型 Monstro 对照：2,297 帧零伤清房，结果在
  `native-policy-native-physics.json`。
- C++ 测试 115/115；跨进程 Eye/Bloat/Brimstone/Mixed 的 180/600 帧矩阵共
  9,990 帧零扣血。
- 可用 `node research/offline/check_native_policy.mjs --steps=3000` 选择较长回放。
- 接入与证据边界见 `NATIVE-PHYSICS-INTEGRATION-20261029.md`。

## 2026-10-29 动作保护期快照

历史策略快照为 `policy-baselines/policy-20261029-v6/`。Planner 增加两帧方向保持、
风险死区和逃生余量门槛，预计碰撞仍优先于评分。

- Monstro 三种子全部零伤清房；总帧数 7,560 → 5,358，方向切换率下降 41.2%。
- 外部内存 Eye/Bloat 两种子、600 帧四场零伤；历史 `Brimstone` 场次因把无敌机关当
  可清目标而作废。
- C++ 测试 116/116。
- 详情见 `ACTION-HYSTERESIS-20261029.md`。

## 2026-10-29 状态与 AI 参数字段探针

`planner_frame.mjs` 已增加 MaxHP、SpeedMultiplier、AI V1/V2、AI I1/I2、
ProjectileDelay/Cooldown、Child/Target、ShieldStrength、BossColor 和 Delirium
原始/解码字段。高价值 5 个 2,400 帧探针全部运行成功：

- Matriarch：AI I2 实际出现 0..3；帧 2,381 进入 State 13 / RageBegin。
- Fetal Demon `886.1.0`：State 7 出现 Rage/Walk02，Child=0；State 16 未出现。
- Ultra Greed：Slot/Spin/Guard 期间 ShieldStrength 从 65 升到 130；
  Invincible 字段未翻转。
- Big Horn：State 13 的 Popup/Charge 动画可读；Invincible 未翻转。
- Delirium：DeliriumState、TransformationTimer 可读；CycleID 为
  `0xbe0..0xbe7` 的 64 位打包值，AttackID 攻击语义仍是 Unknown。

详细字段、证据边界和运行目录见
`validation/high-value-mechanism-validation-20261029.json`。

## 当前手测候选 `policy-20261028-v3`

当前策略快照在 `policy-baselines/policy-20261028-v3/`。manifest 记录 C++ 策略源码、离线适配层、构建脚本、`bin/IsaacGamebot.exe`、planner Wasm、实际生效参数和所有报告哈希；源码与产物也复制到同目录 `snapshot/`。综合哈希为 **`A286D84CD03018170660D43C586B800753B460BE9840B7B8EBFBE1AAC44D96C9`**。手测入口和步骤见 `MANUAL-TEST-v3.md`。

正式默认参数：`horizon=1.0`、`stages=5`、`beam_width=48`；450 帧无敌人血量进展后使用 `navigation_horizon=1.2`、`navigation_stages=6`、`navigation_beam_width=64`；`navigation_waypoint_hold=true`、`navigation_waypoint_priority=true`、`navigation_waypoint_frames=30`。`contact_margin=8`、`projectile_burst_margin=32`、`projectile_burst_prediction=true`；诊断和旧的持久导航开关默认关闭。

| v3 检查 | 结果 | 证据 |
| --- | --- | --- |
| 原 7 房混合矩阵，2 种子 | 28/28 数据通过；正常模式 12/14 清房、8/14 零受击清房、6 场受击、2 场超时、**0 死亡**、11 次受击 | `mixed-v3-final-default.json` |
| Cage 第二种子延长观察 | 6,000 帧仍受击 4 次且未清房；该上限只用于观察，不作为通过标准 | `cage-v3-seed2-6000.json` |
| C++ | 70 passed，0 failed | `bin/test-results.json` |

v2 历史基线仍保留在 `policy-baselines/policy-20261028-v2/`。其原 7 房混合矩阵正常模式为 11/14 清房、8/14 零受击清房、6 场受击、3 场超时、0 死亡、18 次受击。

已进入正式默认策略的修正：

- Eye `60` 的 `Shoot` 前摇从动画帧 1 到 10 后生成激光；现在按开始时的玩家速度和剩余前摇保存固定目标锁线，并带 10px 移动预测不确定度。
- Cross Stoney `302.10` 在激活后第 7 帧首次发射，此后每 29 帧从当前位置发四向弹幕；现在记录实际发射周期，并在下一轮前建立四条定时胶囊危险，同时保留 32px 出生禁入带。
- 动态目标处于不可射击状态时，导航保存下一条物理路点 30 帧；路点到达、过期、目标切换或地形阻挡时重算。零受击、零 exposure 的候选先向保持路点前进，再比较末端余量。
- 导航无进展改为按实体 identity 跟踪 HP，避免召唤物消失或 Boss 暂时不可选中被误判为真实掉血。
- 研究诊断默认关闭。启用后可记录每个初始动作的地形淘汰数、最终安全叶子、被 beam 剪掉的安全叶子、最佳候选路线和具体 `no-safe` 原因。

仍只在实验中、未进入默认策略的开关：`persistent_navigation`、`navigation_goal_priority`、`navigation_progress_weight` 和 `navigation_static_speed`。它们固定最终射击位，在动态目标或混合房中仍会造成回退，因此默认关闭。

当前未解决的代表性失败：

- The Cage 两个种子在 3,600 帧均超时并分别受击 4、3 次；第二种子延长到 6,000 帧仍受击 4 次且未清房。攻击保持实验可降低首种子受击，但会让窄房和 Gurdy Jr. 新增受击，已移除。
- Cage 的弹道、射击脉冲和组合诊断见 `CAGE-FINDINGS.md`。正确弹道模型和射击线实验仍默认关闭；手测版本保持 v3。
- The Bloat、Loki、Pestilence 的 12 房正常模式仍各有两个超时；Chub、Famine、Gurdy Jr.、Widow 仍会受伤。
- 当前 v3 的 Bloat/Loki/Pestilence 复测和目标锁定实验见 `BOSS-REMAINING-FINDINGS.md`；最高 HP 目标锁定仍默认关闭。
- 历史零伤害目标的最新 34 项精确复跑、`156` 超时构成、源格死区、可达射击位搜索和目标专用 BFS 见 `NO-DAMAGE-FINDINGS.md`。当前实验为 22 项掉血、24 项清房、10 项超时；11/12 个仍零伤害的项目已清房或消失，剩余一项启动即无敌。`Vis Versa` 两个种子均已清房，相关开关仍为实验配置。

## 365 个自然生成怪物随机房覆盖

以下是上一阶段的全量覆盖证据，生成于 `policy-20261028-v1` 之前，不能拼作 v2 的全面通过结果。它仍用于说明 365 个身份都能进入原版战斗并产出危险与受击证据。

Fandom Monster List 的 367 行去掉 2 个 Boss 后，365 个非 Boss 身份已全部进入原版普通地下层房间战斗。每项使用固定种子 `3JY1 6FLR`、2400 帧、`debug 3` 和已校准的受伤冷却检测；房间从 1,199 个含敌对实体的原版房配置中确定性选取。最终报告 `monster-random-coverage-final.json` 逐项记录精确身份、房间、危险帧、受击快照、上一帧决策、剩余敌人和运行目录。

| 指标 | 结果 |
| --- | ---: |
| 目标精确加载 | 365/365 |
| 数据完整性通过 | 365/365 |
| 清房 | 209 |
| 无伤清房 | 148 |
| 清房但受击 | 61 |
| 达到 2400 帧上限 | 156 |
| 目标仍存活 | 76 |
| 目标消失但房间未清 | 80 |
| 发生受击的运行 | 109 |
| 估计受击次数 | 274 |
| 技术错误 | 0 |

这组结果验证了原版 AI、弹幕、伤害和清房流程能在不同敌人与普通房间中运行。`debug 3` 下生命不变，所以 274 是“若未无敌会受到的伤害次数”估计，不是 365 场正常生命结算。209 场清房也不等于所有组合都能清房：156 场超时中，76 场目标仍存活，80 场目标已消失但留下了其他敌人或分裂物；115 项目标 HP 已下降，41 项完全未下降。

全量首轮完成后有 1 项父实体技术失败：`Death Scythe 66.10.0` 在两个随机房没有由 `66.0.0` 生成。定向重跑在 `d.980` 精确观察到该身份并通过数据校验。Eye 激光预警修正后又独立重跑 `60.0.0` 与 `60.1.0`。最终报告合并这 3 条定向结果，合并来源写在 `repairs` 字段。

高受击案例集中在站桩激光、弹幕和持续接触：本轮最终数据中 Eye 为 38 次、Bloodshot Eye 为 3 次，Cross Stoney 为 21 次，Mama Fly 为 12 次，Ultra Death Head 为 10 次。它们说明危险字段和受伤证据已经可读，但策略仍有明确的躲避与清房缺口。

## 653 个项目录逐项覆盖

目录中的 653 个精确 NPC 配置已逐项放入两个原版战斗房：高窄房 `s.boss.3702`（15×16）和长条房 `s.boss.3700`（28×9）。直接探针使用原版控制台生成精确三元组并观察 60 帧；直接生成不稳定或依赖父实体阶段的项目，再用 1,200 帧父实体探针验证。所有运行都校验了房间尺寸、原版实体身份、危险字段和运行目录。

| 房间 | 直接精确 | 归一化后同一变体 | 父实体生成 | 未发射 | 可发射合计 | 直接危险观测 |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 窄房 15×16 | 626 | 12 | 15 | 0 | 653/653 | 540 |
| 长条房 28×9 | 624 | 14 | 15 | 0 | 653/653 | 638 |

逐项结论和每个身份对应的运行目录在 `npc-coverage-final.json`。直接证据来自 `npc-coverage/direct-000-580.json` 与 `direct-581-653.json`；父实体证据来自 `npc-horny-boys-child.json`、`npc-child-observe-final.json`、`npc-champion-sweep-observe.json` 和对应定向报告。`npc_coverage.test.mjs` 会检查 653 个键无遗漏、两个房间均完整，并拒绝缺失运行证据的已发射项。

父实体链已验证以下生成关系：

| 父状态 | 生成身份 |
| --- | --- |
| `66.0.0` | `66.10.0` |
| `78.0.0` / `78.1.0` | `78.10.0` |
| `266.0.0` | `266.1.0`, `266.2.0` |
| `307.0.0` Champion 18（窄房）或 Champion 2（长条房） | `307.0.1` |
| `865.0.0` | `865.10.0` |
| `903.0.0` | `903.1.0`, `903.10.0` |
| `904.0.0` | `904.10.0`, `966.0.0` |
| `909.0.0` | `909.10.0` |
| `912.0.0` | `912.30.0` |
| `951.40.0` 死亡阶段 | `951.42.0` |
| `10.0.0` / `14.0.0` Champion 17 或 25 | `96.0.0` |
| `920.0.0` | `819.1.0`（每组三只，围绕其 Boom Fly） |

`903.1.0` 不能在直接生成后稳定渲染：补入 `0x00624DD0` 后已越过此前宿主陷阱，但窄房和长条房仍会在渲染入口 `0x00931050` 触发越界；由 `903.0.0` 自然生成时同一身份可正常观察。该项按父实体证据验收，不把渲染崩溃记为敌人更新逻辑通过。

`819.1.0` `/ #ETERNAL_FLY_BOMB` 不是普通 `819.0.0` 的 Champion 变体。正确原版来源是 `920.0.0` 魔角兄弟：生成后它会召唤围绕 Boom Fly 的三只 Eternal Fly Bomb，两间房都在 `npc-horny-boys-child.json` 中观察到精确身份。此前对 `819.0.0` Champion 1–25、自爆和直接编号写法的失败扫描保留为排除证据，不再作为主验收路径。

## 多敌人覆盖

测试已从 Monstro 扩展到 12 个特殊战斗房，覆盖冲撞、激光、爆炸分裂、召唤、跳跃落地、接触、弹幕和地面危险。两个固定种子共运行 24 场，24 场都加载了目标原版 NPC，并记录了敌人身份、危险帧、逐次受伤快照和策略决策。

| 房间 | 目标 NPC | 主要机制 | 两个种子清房 | 无伤场次 | 总受伤 | 死亡 |
| --- | ---: | --- | ---: | ---: | ---: | ---: |
| Monstro `s.boss.1010` | 20 | 接触、弹幕、跳跃落地 | 2/2 | 2/2 | 0 | 0 |
| Larry Jr. `s.boss.1020` | 19 | 多体节冲撞 | 2/2 | 2/2 | 0 | 0 |
| Chub `s.boss.1030` | 28 | 冲撞、跳跃、小怪 | 2/2 | 0/2 | 8 | 0 |
| Duke of Flies `s.boss.2010` | 67 | 召唤、苍蝇群 | 2/2 | 2/2 | 0 | 0 |
| Gurdy Jr. `s.boss.3280` | 99 | 高速冲撞、墙面反弹 | 2/2 | 1/2 | 1 | 0 |
| The Bloat `s.boss.3300` | 68 | 宽激光、跳跃、血泊、弹幕爆发 | 0/2 | 0/2 | 0 | 0 |
| Blastocyst `s.boss.2040` | 74 | 爆炸分裂、接触 | 1/2 | 1/2 | 0 | 0 |
| Loki `s.boss.2030` | 69 | 弹幕、爆炸小怪、召唤物 | 0/2 | 0/2 | 4 | 0 |
| Widow `s.boss.3340` | 100 | 跳跃、召唤、地面危险 | 1/2 | 0/2 | 3 | 0 |
| Famine `s.boss.4010` | 63 | 高速冲撞、弹幕 | 2/2 | 1/2 | 2 | 0 |
| Pestilence `s.boss.4020` | 64 | 冲撞、弹幕、小怪 | 0/2 | 0/2 | 1 | 0 |
| The Cage `s.boss.5060` | 265 | 跳跃、翻滚、激光、血泊、岩屑波 | 0/2 | 0/2 | 9 | 0 |

汇总：**24/24 采集通过，14/24 清房，9/24 无伤清房，11/24 受伤，0/24 死亡，10/24 达到 4,800 步上限，总计 28 点生命伤害**。当前证据在 `policy-baselines/policy-20261028-v2/boss-baseline.json`；每个结果保留完整伤害帧、受伤前危险快照、受伤后危险快照、上一帧决策、实际出现的敌人身份和原版运行目录。

`enemy-coverage.json` 保留 lift 前完整矩阵，`enemy-coverage-default.json` 保留早期基线，`enemy-coverage-current-2.json` 与 `enemy-coverage-current-3.json` 保留 v2 之前的历史结果。12 房完整矩阵仍是 v2 证据；v3 只对混合矩阵和 Cage 做了同源码复测，不能把 v2 的 12 房结果拼成 v3 全面通过。

这组 12 房矩阵验证机制类别和策略表现；653 项目录矩阵验证身份发射、归一化和父实体链，365 随机房矩阵验证普通敌人分布在普通房中的组合表现。The Bloat、Loki、Pestilence 和 The Cage 在本轮两个种子内均未清房；Chub、Gurdy Jr.、Famine、Widow 仍会受伤。

多敌人测试推动了以下策略修正：

- 离线逻辑时钟为 30 Hz，Wasm 决策同时按 30 Hz 推演。常规躲闪使用 1.0 秒、5 段、beam 48；450 帧没有敌方总血量进展时，导航切换为 1.2 秒、6 段、beam 64，并保持到房间结束。
- 玩家被冲撞压进可破坏石块或其他碰撞半径时，允许沿“碰撞余量增大”的方向逐帧脱离，不再直接停止并等死。
- 激光危险使用原生光束宽度；The Bloat 的 `AttackAlt01` 垂直激光和 `AttackAlt02` 水平激光会在实体出现前建立预警。
- Brimstone Head `203` 的 `Shoot*` 动画和 Eye `60` 的 `Shoot/Rotate` 原生角度会提前建立激光带；Eye 的 `60.1.0` 定向受击由 49 次降到 3 次。
- The Cage 的 `Landing` 会从落点建立 30–300px 环形岩屑波前，同时记录 `type1000 variant62` 的 Break 和 `variant4` 的 rubble。第二种子 5,000 帧复测由 6 次受伤、死亡变为 4 次受伤、存活。
- 空中跳跃敌人建立落点威胁；Famine/Gurdy Jr. 的冲撞蓄力建立前向胶囊威胁。
- 接触威胁增加 8 px 安全余量；高速 Cage 仅在其自身攻击阶段增加额外余量，避免把该余量泛化到 Gurdy Jr.

剩余受伤主要分两类：一类是决策已经给出负余量，但在高速敌人、多个体节和墙边空间同时压迫时找不到可行路线；另一类是攻击在单帧内生成或扩张，前摇数据尚未完整覆盖。Cage 剩余 4 次 5,000 帧受击、Chub 的 8 点伤害和各高受击随机房都属于尚未解决的策略失败；“没有死亡”不等于已经稳定无伤。

## 实测结果

| 检查 | 实测结果 | 证据（相对本目录） |
| --- | --- | --- |
| 完整战斗 | 默认 C++ 策略无伤击败 Monstro，1,343 逻辑帧，血量保持 6，原生房间清空 | `native-policy-check.json` |
| 逐帧控制 | 连续 60 次 step 每次恰好 +1 帧；等待动作 150ms，直接读取的状态保持相同 | `native-step-check.json` |
| 固定种子重置 | 两次冷启动各 180 帧观测逐帧一致，均含 86 帧原生弹幕 | `native-reset-check.json` |
| 单步与批量 | 同种子、同一组 180 个动作，逐帧观测一致 | `native-batch-parity.json` |
| 可选关闭渲染 | 完整 1,343 帧战斗与保留渲染时观测逐帧一致，均无伤清空 | `native-render-parity.json` |
| 参数训练 | 两个独立环境完成 6 组参数搜索，随后另用两种子选参和留出测试 | `training-results/parameter-search.json`、`parameter-validation.json` |
| 365 随机怪覆盖 | 365/365 精确加载与数据通过；209 清房、148 无伤清房、156 超时、274 次估计受击 | `monster-random-coverage-final.json` |
| 12 房正常模式（v2） | 24/24 数据通过；14 清房、9 无伤清房、28 点伤害、0 死亡 | `policy-baselines/policy-20261028-v2/boss-baseline.json` |
| 混合危险回归（v3） | 28/28 数据通过；正常模式 12/14 清房、8/14 零受击、0 死亡 | `mixed-v3-final-default.json` |
| 宿主和观察器 | 最终镜像/导入表下 730 项宿主检查通过；当前 68 项 C++ 测试和 17 项基线/观察器/目录/365 覆盖测试通过 | `wasm-host-selftest-final-inputs.txt`、`offline/policy_baseline.test.mjs` 等 |

一致性比较排除分配地址等裸指针，保留位置、速度、血量、实体状态、网格和清空状态等观测值；不是隐藏内存全等证明。渲染对照只覆盖固定种子 Monstro 战斗；其他敌人的战斗结果由上述覆盖套件记录。

单环境默认策略最终复测的战斗计算耗时约 **3.51 秒**，相当于约 44.8 秒游戏时间，约 **12.8 倍实时速度**；冷启动另计。最近一次渲染对照为保留渲染约 4.02 秒、关闭渲染约 3.79 秒，关闭渲染约快 5.5%。并行负载会影响速度；两个 worker 的结果证明可独立并发，不代表吞吐翻倍。

## 参数优化

首轮训练种子为 `3JY1 6FLR`，6 组参数均清空房间，其中 5 组无伤。单种子最快的 `margin=4` 在第二种子受伤 2 点，因此另做验证集排序，按“全部清空、总受伤量、总帧数”选择。

选出的研究参数是 **`{"response":0.14}`**，保存在 `training-results/validated-parameters.json`。

| 种子 | 用途 | 逻辑帧 | 受伤量 | 清空 |
| --- | --- | ---: | ---: | --- |
| `3JY1 6FLR` | 搜索 | 1,356 | 0 | 是 |
| `7W3L P1Z9` | 选参验证 | 1,353 | 0 | 是 |
| `SWGF G7WV` | 留出测试 | 1,213 | 0 | 是 |

这三场均为 Monstro，且产生于多敌人扩展之前。默认参数在前两个种子也无伤；选出参数的前两场总帧数为 2,709，默认为 2,730，改善很小。结果只说明 Monstro 上的参数搜索流程，不构成其他敌人或无伤保证。当前混合证据以 v3 报告为准，其余 Boss 仍引用 v2 历史报告。

## 直接运行

在 `D:/Isaac` 执行，使用当前已构建模块与本地资源：

```powershell
# 完整默认策略战斗
node research/offline/check_native_policy.mjs

# 严格单步、冷重置、批量轨迹对照
node research/offline/check_native_step.mjs
node research/offline/check_native_determinism.mjs
node research/offline/check_batch_parity.mjs

# 可选关闭渲染的完整战斗对照
node research/offline/check_render_parity.mjs

# 两环境参数搜索；这些旧参数结果只覆盖 Monstro
node research/offline/train_parameters.mjs 2
node research/offline/validate_parameters.mjs 2

# 多敌人覆盖：2 个 worker、两个种子、每场最多 4,800 步
node research/offline/check_enemy_coverage.mjs --workers=2 --steps=4800 --seeds="3JY1 6FLR,7W3L P1Z9" --output=policy-baselines/policy-20261028-v2/boss-baseline.json

# 混合危险房：正常模式与无敌校准逐次对照
node research/offline/check_mixed_failures.mjs --workers=2 --steps=3600 --output=policy-baselines/policy-20261028-v2/mixed-baseline.json
node research/offline/check_mixed_failures.mjs --workers=2 --steps=3600 --seeds="SWGF G7WV" --output=policy-baselines/policy-20261028-v2/mixed-seed2.json

# 单个失败帧的候选路线诊断
node research/offline/check_mixed_failures.mjs --workers=1 --steps=3600 --seeds="3JY1 6FLR" --scenario=mixed-spiders-explosion-laser-jump --parameters="{\"diagnostics\":true}" --record-decisions=true --output=explosion-timeout-trace-v18.json

# 365 个非 Boss 怪物、每项一个确定性随机原版房
node research/offline/check_monster_random_coverage.mjs --workers=6 --steps=2400 --output=monster-random-coverage-full.json

# 定向补跑并合并最终 365 报告
node research/offline/check_monster_random_coverage.mjs --workers=1 --ids=66.10.0 --output=monster-random-death-scythe.json
node research/offline/check_monster_random_coverage.mjs --workers=1 --steps=2400 --ids=60.0.0 --room=d.396 --output=eye-after-warning.json
node research/offline/check_monster_random_coverage.mjs --workers=1 --steps=2400 --ids=60.1.0 --room=d.971 --output=bloodshot-eye-after-warning.json
node research/offline/aggregate_monster_random_coverage.mjs --repairs=monster-random-death-scythe.json,eye-after-warning.json,bloodshot-eye-after-warning.json --output=monster-random-coverage-final.json

# v2 代表敌人：干净房复现与双种子
node research/offline/check_monster_random_coverage.mjs --workers=1 --steps=2400 --run-seed="3JY1 6FLR" --ids=60.0.0 --room=d.980 --isolate=true --output=policy-baselines/policy-20261028-v2/eye-seed1.json
node research/offline/check_monster_random_coverage.mjs --workers=1 --steps=2400 --run-seed="SWGF G7WV" --ids=60.0.0 --room=d.980 --isolate=true --output=policy-baselines/policy-20261028-v2/eye-seed2.json
node research/offline/check_monster_random_coverage.mjs --workers=1 --steps=2400 --run-seed="3JY1 6FLR" --ids=302.10.0 --room=d.985 --output=policy-baselines/policy-20261028-v2/cross-stoney-seed1.json
node research/offline/check_monster_random_coverage.mjs --workers=1 --steps=2400 --run-seed="SWGF G7WV" --ids=302.10.0 --room=d.985 --output=policy-baselines/policy-20261028-v2/cross-stoney-seed2.json

# policy v2 固定基线与 manifest 记录
node research/offline/capture_policy_baseline.mjs --id=policy-20261028-v2 --reports=policy-baselines/policy-20261028-v2/mixed-baseline.json,policy-baselines/policy-20261028-v2/mixed-seed2.json,policy-baselines/policy-20261028-v2/boss-baseline.json,policy-baselines/policy-20261028-v2/eye-seed1.json,policy-baselines/policy-20261028-v2/eye-seed2.json,policy-baselines/policy-20261028-v2/cross-stoney-seed1.json,policy-baselines/policy-20261028-v2/cross-stoney-seed2.json

# 653 项目录直接探针；903.1.0 由父实体报告验收
node research/offline/check_npc_catalog.mjs --start=0 --limit=580 --observe=60 --output=npc-coverage/direct-000-580.json
node research/offline/check_npc_catalog.mjs --start=581 --limit=72 --observe=60 --output=npc-coverage/direct-581-653.json

# 父实体身份、Champion 变体和最终聚合
node research/offline/check_npc_children.mjs --observe=1200 --debug=3 --attack=false --output=npc-child-observe-final.json
node research/offline/check_npc_variants.mjs --rooms=narrow,long --observe=1200 --debug=3 --attack=false --output=npc-champion-sweep-observe.json
node research/offline/aggregate_npc_coverage.mjs

# 观察器定向合成测试
node --test research/offline/policy_baseline.test.mjs research/offline/mixed_failure_scenarios.test.mjs research/offline/training_observer.test.mjs research/offline/enemy_suite.test.mjs research/offline/monster_random_coverage.test.mjs
node --test research/offline/npc_catalog.test.mjs research/offline/npc_parent_cases.test.mjs research/offline/npc_coverage.test.mjs
```

每次运行产生 `research/training-runs/<时间戳-进程-序号>/`，包含 `configuration.json`、`engine.log`、私有 `saves/`，批量执行另有 `rollout.json`。汇总验证文件写入上表路径。`elapsedMs` 是战斗执行耗时；搜索报告的 `wallMs` 包括多次冷启动。

训练目录会快速占用磁盘。`research/offline/prune_training_runs.ps1` 默认只做 dry-run，扫描 `research` 下的 JSON、Markdown 和文本报告并保留被引用的运行目录；确认输出后使用 `-Execute` 删除未被引用的生成目录。脚本拒绝非 `training-runs` 直属子目录和重解析点。

`check_enemy_coverage.mjs` 支持 `--workers`、`--steps`、`--seeds`、`--parameters`、`--scenario` 和 `--output`。`--parameters` 使用 JSON，例如 `--parameters="{\"contact_margin\":0}"`；`--scenario` 可用逗号选择场景名。脚本只有原版房加载或危险证据结构不完整时才返回失败；受伤、死亡和超时作为战斗结果保留在报告中。

`check_monster_random_coverage.mjs` 支持 `--workers`、`--steps`、`--ids`、`--room`、`--isolate`、`--start`、`--limit`、`--attempts`、`--random-seed`、`--run-seed`、`--parameters`、`--record-decisions`、`--record-entities` 和 `--output`。`--room` 用于按原版房配置名做定向复现；`--isolate` 会反复清除其他敌对类型，用于区分目标自身行为与房间杂兵。parent-derived 项目在随机房失败后会回到 `s.boss.3700` 与 `s.boss.3702` 两个已校准探针房。

`check_npc_catalog.mjs` 支持 `--rooms`、`--start`、`--limit`、`--observe` 和 `--output`。`check_npc_children.mjs` 支持 `--rooms`、`--targets`、`--observe`、`--debug`、`--attack=false` 和 `--output`；`check_npc_variants.mjs` 可批量扫描父实体 Champion 编号。目录探针中的受伤与清房字段不用于无伤评价。

## 环境 API

在 `research/offline/` 下的 `.mjs` 文件中使用：

```javascript
import { EngineEnvironment } from './engine_environment.mjs';

const env = new EngineEnvironment({
  seed: '3JY1 6FLR', room: 's.boss.1010', targetNPC: 20,
  maxSteps: 1800, noRender: false,
});
try {
  const initial = await env.reset();
  const result = await env.step({ moveX: 1, moveY: 0, fire: 'up' });
  console.log(initial.frame, result.observation.frame); // 0, 1
  const current = await env.peek(); // 等待动作时读取实际内存

  await env.reset();
  const episode = await env.rollout({
    steps: 1800, parameters: { response: 0.14 }, attack: true,
  });
  console.log(episode.summary);
} finally {
  await env.close();
}
```

`moveX/moveY` 使用 -1、0、1，也可用 `move: 'none'|'up'|'right'|'down'|'left'`；`fire` 使用同样方向名称。`rollout({attack:false})` 关闭策略射击。`terminated` 表示死亡或房间清空，`truncated` 表示达到步数限制。结束后须 reset。同一实例按顺序发送 step/rollout；并行时创建多个实例。

`reset()` 使用新进程冷启动，走原生 `seed`、`goto` 设置固定战斗，再在可操作的第 0 逻辑帧等待。目标实体的出现状态会锁存，房间控制恢复后才进入可操作状态。设置命令仅作用于研究环境。未采用内存快照复位。批量 rollout 内部仍逐逻辑帧执行策略和原生引擎，省去逐步跨进程请求。

`noRender:true` 在进入战斗后跳过 Manager::Render；原始函数体保留供对照，默认关闭此优化。逻辑时钟为 30Hz，step 不按显示帧计数。等待动作使用 JSPI 挂起 Wasm 调用栈。

## 重建

本地工具链：Node 24.22.1（支持 JSPI）、Emscripten 6.0.5、Python 3.12、研究 venv 的 pypcode 3.3.3，以及已编译的 Lua 5.3.3。工具和输入均在研究目录。

```powershell
python research/prepare_runtime_inputs.py --phase all
python research/build_original_engine.py inventory
python research/build_original_engine.py lift --jobs 3
python research/build_original_engine.py mechanics
python research/build_original_engine.py training --jobs 3
python research/build_planner_policy.py
```

`training` 会幂等安装可选渲染入口包装，并使用 JSPI、Wasm longjmp 的独立宿主构建。原始渲染函数体保留。策略直接使用 `cpp/src/model.cpp`、`planner.cpp`、`weapons.cpp`，适配层在 `offline/planner_bridge.cpp` 与 `planner_frame.mjs`。

离线适配层现在把模式表中明确登记的普通怪弹幕几何传给 Planner；没有 pattern
登记的模型不会注入旧策略，避免离线验收被未验证的运行时模型扰动。正式程序仍由
`MechanismSemantics` 加载完整几何库。

引擎参考上游 `chiikabu/the-browsing-of-isaac`，基线提交 `e346ce66a2cc6e8285258153e5583d5b55a412d8`，本地适配分支 `codex/decomp`。输入 EXE SHA256：`7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F`。当前 inventory 得到 28,425 个候选起点，lift 得到 30,261 个函数（17 个 rescued，0 failed），`mechanics` 的 `check_lifted` 为 0 个问题，训练版 Wasm 链接 30,261 个导出。新增起点 `0x00624DD0` 的字节证据为 `55 8b ec`；所有构建使用 `--no-lift-patches`，不应用上游另一份 EXE 的游戏逻辑替换。具体输入和启动证据见 `RUNTIME-INPUT-NOTES.md`；早期过程见 `WASM-VALIDATION-20261028.md`。

观察器已修正 28×16 房间的 448 格上限，并加入测试；正式 Windows 采集器仍有旧的 447 格限制，本次未改动该程序。迁移到实机时需单独修正并核对采集字段，随后用相同 C++ 策略配置实测。653 项目录矩阵证明身份能由原版引擎发射或被父实体生成；12 房矩阵验证机制战斗和正常生命伤害；365 随机房矩阵验证普通敌人的广泛覆盖、受击估计和清房分布。三者都不是桌面游戏实机无伤结果。
