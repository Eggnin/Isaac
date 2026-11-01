# 普通怪严格几何采集

## 当前口径

当前 `data/npc/engine_npc_entity_catalog.tsv` 已把 25 个机关类身份从 `monster`
分出，因此当前普通怪口径是 `322` 个，而不是早期的 `337` 个。

本轮模型只导出当前 `role=monster` 的身份。旧的全量报告仍包含早期 `337` 口径，
仅作为采集来源保留。

## 已完成

- 全量采集：早期 `337` 个身份、`674` 场双种子运行、`808,126` 帧。
- 三号种子补充：`86` 个未稳定身份、`86` 场。
- 主动射击探针：`20` 个静止未触发身份，补齐 `Dople`、`Evil Twin`、
  `Mom's Hand`、`Leper` 等场景。
- 瞬态零等待探针：验证短暂生成形态不会因为滚动前等待而丢失。
- 当前普通怪模型：`316` 个身份至少有 1 个已验证几何组，`530` 个模型组。
- 六种子证据回灌：`monster-geometry-models-multiseed-20261030.json` 已同步到
  当前模型和运行时模型；`530` 个模型 ID 不变，仅 `310.0.0`、`310.1.0`、
  `61.6.0`、`874.0.0` 相关 `6` 个组增加种子/样本统计，所有 gate 与
  `planning_validated` 状态不变。
- 身份完整度：`316` 个身份有已验证模型，`6` 个身份没有观察到目标自身危险，
  `0` 个 runtime-only、`0` 个 partial/provisional。
- 模型参数：`467` 个组通过前摇参数稳定性，`63` 个组是运行时参数型几何，
  `0` 个 runtime 模型。
- 运行时参数型弹幕分类：`63` 个组、`56` 个普通怪身份；已有时间线中 `56`
  个身份能直接看到爆发，分类为 `single`、`radial-4/6/8/12`、`parallel-3/4`
  和 `unknown`。分类只说明弹幕结构，不自动提升为严格前摇预测。
- 当前正式弹幕模式表：`57` 条规则覆盖 `36` 个普通怪身份；其余组仍保持
  runtime-parametric，不冒充严格前摇。
- 归因审计：排除 `32` 个来自伴随敌人、独立子身份或目标消失后的危险组，避免把
  `14.0.0`、`18.0.0`、`211.0.0`、`238.0.0` 等来源误算到目标身份。
- 重复观察合并：`284.0.0`、`823.0.0`、`857.0.0` 的缺失 source 副本按危险实体
  地址合并到同一生命周期；`229.1.0` 的高位 flag 副本合并到同源 `Shoot` 模型，
  记录在 `duplicate_runtime_models`。

“运行时参数型”表示危险对象出现后，位置、速度、端点或生命周期来自原版实体字段；
它不等于可以提前预测所有发射参数。

## 仍为 runtime-only 的身份

当前没有 runtime-only 身份。`284.0.0`、`823.0.0`、`857.0.0` 的缺失 source
观察已按危险实体地址合并到同一生命周期；`229.1.0` 的瞬时高位 flag 副本也已
合并到同源 `Shoot` 模型。`61.7.0`、`306.0.0`、`861.0.0`、`16.0.0` 和
`817.1.0` 已通过目标自身接触、近目标危险组或短窗口推断归因。

`13.0.0`、`311.0.0`、`61.5.0`、`802.0.0`、`825.0.0` 在隔离、接近和主动攻击
探针中没有观察到目标自身危险。其中 `311.0.0`、`802.0.0`、`825.0.0` 的静态
`EntityConfig collisionDamage` 为正，但运行时没有观察到目标自身碰撞类或实际接触
几何，因此保留为 `no_target_hazard_observed`，不能当成安全证明。

## 未完成

- 接触模型已经生成 `planning_validated` contact warning；Planner 还会按来源地址
  查询 projectile、laser、bomb、creep、cage-rock-wave 与 falling-impact 模型，
  并采用模型半径、持续时间和几何验证状态。
- 当前没有 runtime-only 身份；`63` 个已验证模型仍采用运行时参数，前摇几何依赖
  实际发射字段，不能夸大为全部攻击都已精确前摇预测。
- 运行时参数型弹幕对应 `56` 个普通怪身份；正式前摇模式目前覆盖其中 `36`
  个，仍有 `20` 个身份没有正式发射前模式。当前全量补齐目标保持进行中，
  机制与剩余实现线索见 [实现工作账](REMAINING-GAPS-WORK.md)。
- 运行时参数型弹幕仍有 `63` 个组未通过发射前参数稳定性；其中 `18` 个身份在
  365 个非 Boss 自然战斗探针中出现过 debug 受击，需优先按弹幕族复核。
- `13.0.0`、`61.5.0`、`311.0.0`、`802.0.0`、`817.1.0`、`825.0.0` 只能说明当前隔离探针
  没有观察到目标自身危险，不能直接宣称为混合场景安全。
- 尚未运行全量正常生命无伤、清房、混合房和留出种子验收；只完成了一个 5 场
  `5/5 player.damageTaken=0` 的子集复检，不能替代全量验收。
- 独立原版碰撞 oracle 还没有对全部新几何组批量验证。
- 尝试的第四种子 `N3W1 5EED` 被原版启动器拒绝，日志实际仍为
  `7W3L P1Z9`，因此该批不作为新种子证据。

## 证据文件

- 采集器：`research/offline/check_monster_geometry.mjs`
- 跨种子分析器：`research/offline/analyze_monster_geometry.mjs`
- 模型构建器：`research/offline/build_monster_geometry_models.mjs`
- 弹幕爆发分类器：`research/offline/classify_projectile_bursts.mjs`
- 弹幕爆发分类结果：`research/monster-projectile-burst-classification-20261030.json`
- 补采后分类结果：`research/monster-projectile-burst-classification-missing3-6runs-20261030.json`
- 隔离房无来源弹幕归因结果：`research/monster-projectile-burst-classification-missing3-attributed3-20261030.json`
- 11 个缺口身份三 seed 补采：`research/monster-geometry-missing-bursts-3seed-20261030.json`
- 补采后分析：`research/monster-geometry-analysis-missing3-20261030.json`
- 补采后模型快照：`research/monster-geometry-models-missing3-20261030.json`
- 归因修正分析：`research/monster-geometry-analysis-attributionfix-20261030.json`
- 归因修正模型快照：`research/monster-geometry-models-attributionfix-20261030.json`
- 当前弹幕分类：`research/monster-projectile-burst-classification-current-20261030.json`
- 310 六 seed 补采：`research/monster-geometry-310-d27-multiseed-20261030.json`
- 310.1 六 seed 补采：`research/monster-geometry-310.1-d27-multiseed-20261030.json`
- 61.6 六 seed 补采：`research/monster-geometry-61.6-d27-multiseed-20261030.json`
- 874 六 seed 补采：`research/monster-geometry-874-d27-multiseed-20261030.json`
- 当前模型：`research/monster-geometry-models-20261030.json`，来源分析为
  `research/monster-geometry-analysis-61x-20261030.json`
- 61x 合并模型快照：`research/monster-geometry-models-61x-20261030.json`
- 最终分析：`research/monster-geometry-analysis-all47-20261030.json`
- 最终模型快照：`research/monster-geometry-models-final8-20261030.json`
- 运行时模型：`data/mechanisms/gamebot_monster_geometry.json`
- 运行时弹幕模式：`data/mechanisms/gamebot_monster_geometry_patterns.json`
- 251 径向模式复检：`research/monster-251-radial-restored-20261030.json`
- 228 径向模式复检（未晋升）：`research/monster-228-radial-20261030.json`
- 228 无规则对照：`research/monster-228-no-rule-20261030.json`
- 823 径向模式移除后复检：`research/monster-823-no-rule-20261030.json`
- 209 径向模式复检：`research/monster-209-radial-20261030.json`
- 29.3 Idle2 径向模式复检：`research/monster-29.3-radial-20261030.json`
- 29.3 Idle2 第二种子复检：`research/monster-29.3-radial-newseed-20261030.json`
- 25.4 瞄准模式复检：`research/monster-25.4-aimed-20261030.json`
- 298 瞄准模式复检：`research/monster-298-aimed-20261030.json`
- 808 瞄准模式复检：`research/monster-808-aimed-20261030.json`
- 827.1 有界触发窗口 policy 探针：`research/monster-827-bounded-policy-20261030.json`
- 61.6/61.7 四种子 policy 补采：`research/monster-61x-bounded-policy-20261030.json`
- 61.6/61.7 补采分析：`research/monster-61x-analysis-20261030.json`
- 61.6/61.7 弹幕分类：`research/monster-61x-bursts-20261030.json`
- 61.7 有界规则 policy 复测：`research/monster-617-rule-policy-20261030.json`
- 61.7 窗口 1..7 policy 复测：`research/monster-617-rule-window7-20261030.json`
- 61.6 双分支规则 policy 复测：`research/monster-616-rule-policy-20261030.json`
- 829.1 瞄准扇形 policy 复测：`research/monster-829-spread-policy-newbin-20261030.json`
- 14.2 瞄准四发扇形 policy 复测：`research/monster-142-spread-policy-20261030.json`
- 38.1/27 瞄准三发扇形 policy 复测：`research/monster-381-270-spread-policy-20261030.json`
- 240.3 非均匀扇形 policy 复测：`research/monster-240-nonuniform-policy-20261030.json`
- 归因接近探针：`research/monster-geometry-attribution-approach-20261030.json`
- 归因主动探针：`research/monster-geometry-attribution-active-20261030.json`
- 静态接触探针：`research/monster-geometry-static-contact-20261030.json`
- 5/10 seed 补采：`research/monster-geometry-partial-active-5seed-20261030.json`、
  `research/monster-geometry-partial-active-10seed-20261030.json`
- 817 专项探针：`research/monster-geometry-817-active-20261030.json`
- 16/817 十 seed 补采：`research/monster-geometry-runtime-only-10seed-20261030.json`
- 284 十五 seed 双实体补采：`research/monster-geometry-284-final-20261030.json`
- 34 场零伤害候选复检：`research/monster-geometry-no-damage-all34-final8-20261030.json`
- 混合失败场景真实生命复检：`research/mixed-failure-final8-20261030.json`
- 默认策略混合回归：`research/mixed-failure-default-14-20261030.json`
- 默认策略混合回归最终轮：`research/mixed-failure-final-round3-20261030.json`
- 5 场零伤害子集复检：`research/monster-geometry-no-damage-recheck-final6b-20261030.json`
- 全量原始报告：`research/monster-geometry-coverage-20261030.json`
- 第三种子补充：`research/monster-geometry-supplement-3seed-20261030.json`
- 主动触发探针：`research/monster-geometry-trigger-probe-20261030.json`
- 主动触发双种子：`research/monster-geometry-trigger-probe-2seed-20261030.json`
- 接近/双实体探针：`research/monster-geometry-approach-probe-20261030.json`
- 未解决身份深挖：`research/monster-geometry-unresolved-deep-20261030.json`
- 额外有效种子补采：`research/monster-geometry-valid-extra-seeds-20261030.json`
- 最终有效种子补采：`research/monster-geometry-final-seeds-20261030.json`
- 最后有效种子补采：`research/monster-geometry-last-seeds-20261030.json`
- 补充有效种子补采：`research/monster-geometry-extra-final-seeds-20261030.json`

## 复现命令

```powershell
node research/offline/check_monster_geometry.mjs --steps=1200 --workers=10 --output=monster-geometry-coverage-20261030.json
node research/offline/analyze_monster_geometry.mjs --input=monster-geometry-coverage-20261030.json,monster-geometry-supplement-3seed-20261030.json,monster-geometry-trigger-probe-20261030.json,monster-geometry-trigger-probe-2seed-20261030.json,monster-geometry-unresolved-deep-20261030.json,monster-geometry-valid-extra-seeds-20261030.json,monster-geometry-final-seeds-20261030.json,monster-geometry-last-seeds-20261030.json,monster-geometry-extra-final-seeds-20261030.json,monster-geometry-bulb-mixed-20261030.json,monster-geometry-remaining-mixed-20261030.json,monster-geometry-attribution-approach-20261030.json,monster-geometry-attribution-active-20261030.json,monster-geometry-static-contact-20261030.json,monster-geometry-partial-active-20261030.json,monster-geometry-partial-active-5seed-20261030.json,monster-geometry-partial-active-10seed-20261030.json,monster-geometry-817-active-20261030.json,monster-geometry-runtime-only-10seed-20261030.json,monster-geometry-284-final-20261030.json --output=monster-geometry-analysis-all47-20261030.json
node research/offline/build_monster_geometry_models.mjs --analysis=monster-geometry-analysis-all47-20261030.json --output=monster-geometry-models-final8-20261030.json
node research/offline/classify_projectile_bursts.mjs --output=monster-projectile-burst-classification-20261030.json
```

## 验证

最新追加 `87.0.0` 的瞄准抛射及 `857.0.0` 的 `Attack1/Attack2` 瞄准包络，
实现 `stream/direction=aimed`，方向随玩家位置变化。主程序、Wasm和外部Reader已编译；
仅新增两敌人同场的一次900步上限（约30秒）接入探针，记录899帧、7,480个危险样本，
无技术错误。本轮未重跑单元集合或完整性比对。详情见下方接续记录的最新追加部分。

前一批已完成方向弹流和未来发射位置的时间对齐修正，当时检查结果为 C++ `154/154`、
定向 Node 几何检查 `8/8`；原版 `879.0.0` 单场900步上限（约30秒）接入探针
记录899帧，数据与隔离检查通过，`projectile-stream` 决策威胁出现145帧。
该探针使用伤害校准模式，不作为正常生命无伤成绩。详情见
[接续记录](DIRECTIONAL-STREAM-TAKEOVER-20261030.md)；以下保留此前批次的历史结果。

- 本轮定向 Node 几何测试：`8 passed, 0 failed`；连同训练观察器为
  `17 passed, 0 failed`。更大范围的离线集合为 `40 passed, 1 failed`，
  唯一失败是下方已知的 v6 冻结快照哈希。
- `cpp/build.ps1 -Test`：`139 passed, 0 failed`，并重新构建
  `bin/IsaacGamebot.exe`。
- 34 场候选无伤复检：`34/34` 场 `player.damageTaken=0`，7 场清房，
  27 场超时，39 次受击事件被处理。
- 默认策略混合场景真实生命复检：14/14 数据通过，10 场零伤害、4 场受伤、
  0 死亡；`mixed-cross-stoney-laser-jump` 两个 seed 各 1 点，
  `known-cage-death` 两个 seed 分别 5 点和 3 点。模型覆盖不等于实际无伤。
- `251.0.0 Begotten` 专项：旧 365 报告为 4 次 debug 受击且没有
  `projectile-burst` 威胁；新径向模式复检为 2 次受击，并出现 `40` 帧
  `projectile-burst` 前摇威胁。第二个种子为 1 次受击。
- 已知 `policy_baseline.test.mjs` 的 v6 冻结快照仍与当前
  `cpp/include/gamebot/model.hpp` 哈希不一致（实际 `29304`，快照 `26915`），
  和本轮几何归因无关。
- 本轮新增有界触发窗口、加载器和扫掠包络测试均通过；C++ `139 passed, 0 failed`。

## 本轮旁支修正

混合场景中的 `302.10.0 Cross Stoney` 不属于普通怪 `role=monster`，但它是
`mixed-cross-stoney-laser-jump` 的稳定干扰源。原实现只预测四向弹幕；实际时间线
显示它在激活后第 `7` 帧首发，之后每 `29` 帧交替发射四向和斜向弹幕，四发共用
同一爆发中心。Planner 已保留方向状态，并在漏掉观测时按周期翻转方向；该行为
通过 `projectile_burst_alternating` 显式开启，默认关闭，因为完整混合回归显示
提前覆盖斜向弹幕会把路线推向跳跳尸和蜘蛛接触。

离线 Wasm 桥接层还移除了已经不存在于 `PlannerConfig` 的
`pressure_plate_dwell_frames` 字段，否则多进程原版引擎会继续使用旧策略二进制。
离线桥接现在只注入显式登记在模式表中的弹幕模型，不把全部运行时模型一次性注入，
避免旧策略因无关模型的半径/持续时间变化产生回归。

## 本轮普通怪弹幕模式

当前模式表登记了 `251.0.0` 的径向 6 向、`881.1.0` 的径向 4 向、
`209.0.0` 的径向 6 向、`29.3.0` 的 4/6/8/12 向 AI 门控变体，以及
`25.4.0`、`298.0.0`、`808.0.0` 的单发瞄准弹，以及 `827.1.0`、
`61.7.0`、`61.6.0` 的有界触发窗口径向弹，和 `829.1.0`、`14.2.0`、
`38.1.0`、`27.0.0` 的瞄准扇形，以及 `240.3.0` 的非均匀瞄准扇形。
新增 `879.0.0` 的8个 `ai_i2` 方向弹流分支，覆盖速度120～240和±10°偏差；
连续发射窗口23～29不因一发已被观察到就停止预警，时序保持有界、非精确标记。
`29.3.0` 的 `Idle2/ai_i1=1`、`Idle/ai_i1=2`、`Idle2/ai_i1=3` 和
`Hop2/ai_i1=0` 分别登记为 4/6/8/12 向，不能共用同一个模式。
径向模式支持中心锚点、固定/有限相位采样、速度和持续时间；瞄准模式使用发射前的
玩家位置和速度预测方向。有界触发窗口会用一条随时间移动的胶囊覆盖窗口内所有
可能发射位置，并明确保持 `timing_verified=false`。

- `251.0.0`：旧 365 报告为 4 次 debug 受击，无 `projectile-burst` 威胁；
  新径向模式复检为 2 次受击，并有 40 帧 `projectile-burst` 威胁。
- `25.4.0`：新瞄准模式复检为 0 次受击，出现 30 帧 `projectile-burst` 威胁。
- `298.0.0`、`808.0.0`：同一自然房间复检为 0 次受击，规则已加载但该次运行
  没有触发到可观测的发射阶段。
- `209.0.0`：径向 6 向复检为 0 次受击，出现 25 帧 `projectile-burst` 威胁。
- `827.1.0`：`WalkHori`/`WalkVert` 的 11 次径向 6 向爆发覆盖 2 个种子，
  相位固定为 `-180°`、速度 `240`，触发帧窗口 `1..32`。`d.27` policy 探针
  `2/2` 数据通过、`2/2` 隔离，共 `2,398` 帧和 `16,271` 个危险样本；这证明
  规则能加载并产生几何，不是无伤成绩。规则加载和扫掠包络另有 C++ 测试。
- `61.7.0`：`Fly/ai_i1=0` 的径向 6 向爆发在 4 个种子、24 个样本中保持
  `-180°` 相位、`240` 速度和自身中心；合并后的 projectile 生命周期把触发
  窗口定为 `1..7`。`d.27` policy
  探针 `4/4` 数据通过且隔离；加入正式规则后的两个种子复测也为 `2/2`
  数据通过、`2/2` 隔离。同报告的 300 速度弹幕被归为无关来源。
- `61.6.0`：`Appear/ai_i1=24` 在动画帧 `10` 精确触发，`Dash` 分支使用
  `0..7` 有界窗口；两者都是自身中心径向 4 向、速度 `300`、相位 `-90°`。
  4 个种子产生 4 次爆发，正式规则加入后的 policy 探针为 `2/2` 数据通过、
  `2/2` 隔离。
- `829.1.0`：原始时间线确认 3 发窄扇形的中间弹道等于发射帧指向玩家的方向，
  两侧各偏 `16.0241°`；规则使用窗口 `4..10`、速度上界 `295.5`。加入规则后的
  新 Wasm 的 `d.27` policy 探针为 `2/2` 数据通过、`2/2` 隔离。
- `14.2.0`：`Attack/ai_i1=0` 的 4 发扇形在 3 个种子、120 个样本中保持
  以玩家方向为中心、相邻间隔 `18.5544°`，触发帧固定为 `7`，速度上界
  `210.84`。加入规则后的 `d.27` policy 探针为 `2/2` 数据通过、`2/2` 隔离。
- `38.1.0`、`27.0.0`：两者都是瞄准 3 发扇形，分别使用 `15.9553°` 和
  `16.0241°` 间隔、速度上界 `310.54` 和 `269.65`。各 3 个种子补采后，
  `d.27` policy 探针合计 `6/6` 数据通过、`6/6` 隔离。
- `240.3.0`：`AttackStart` 窗口 `12..15`、`AttackLoop` 窗口 `0..3`，两者
  共用非均匀偏移 `[-41.6880,-15.6852,+15.6852,+41.6880]`，速度上界
  `317.25`。加入规则后的 `d.27` policy 探针为 `2/2` 数据通过、`2/2` 隔离。
- `29.3.0`：4/6/8/12 向的 AI 门控分支已由 C++ 单元测试覆盖；两个自然种子
  都是 0 次受击，但没有进入可观测的 `projectile-burst` 阶段，`d.27` 定向 setup
  会提前结束 episode，因此仍需可用触发探针。
- 11 个缺口身份的三 seed 补采：`31/33` 场数据通过，`39,567` 帧；
  `874.0.0` 两个种子没有危险样本，一个种子有 `26` 个危险样本。
- `310.0.0` 六 seed：`4/6` 数据通过；`310.1.0`：`6/6`；`61.6.0`：`6/6`；
  `874.0.0`：仅 `1/6` 有危险。它们仍因触发帧/生成偏移不稳定，暂不晋升为严格
  前摇规则。
- 隔离房归因修正后，`306.1.0`、`310.0.0`、`310.1.0`、`61.6.0`、
  `61.7.0`、`822.0.0`、`874.0.0` 都能看到目标自身弹幕；但 State/AI/触发帧
  或速度仍不稳定，暂不晋升。`817.1.0` 的弹幕来源明确指向 `808.0.0`，不能归给
  817.1；修正后 817.1 归入无目标危险身份，`808.0.0` 仍保留直接来源模型。
- `888.0.0` 的单发 aimed 候选未晋升：当前无规则对照为 3 次受击，加入局部规则
  后为 2 次，但仍受未建模的多弹/接触阶段影响，不能把局部规则当成完整模型。
- `228.0.0` 的径向 6 向候选未晋升：当前有无规则的对照都为 2 次受击，无法证明
  收益，因此不进入正式表。
- `823.0.0` 的径向 8 向候选未晋升：加入规则后为 2 次受击，移除后恢复 0 次。
