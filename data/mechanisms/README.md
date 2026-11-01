# J460 敌人机制数据库

`isaac_j460_mechanism_db.json` 是分析期证据库，由
`research/mechanisms/build_mechanism_db.py` 从本机 J460 资源候选、运行身份探针、
历史回调索引和现有 C++ 读取契约生成。主程序运行时不加载该脚本或数据库。

`isaac_j460_state_semantics.json` 是逐敌人 State、Boss 阶段边、Invincible、
SpeedMultiplier、Delirium 字段和状态攻击关联库，由
`research/mechanisms/analyze_state_semantics.py` 从 PE 索引、机制库、离线探针和
外部内存日志生成。

`gamebot_runtime_semantics.json` 是主程序实际加载的精简运行时库，由
`research/mechanisms/build_runtime_semantics.py` 从完整状态语义库生成。它包含
653 个精确 Type/Variant/Subtype 的状态规则、Matriarch/Ultra Greed/Big Horn/
Delirium 专用证据、已离线验证的前摇规则、字段映射、攻击身份候选和覆盖率。

攻击身份候选合并三类静态证据：反编译 State 内的攻击调用/动画、完整 AI 函数内
的攻击辅助调用、以及精确身份的 ANM2 攻击事件。候选只用于设置运行时
`attack_type` 和 `attack_type_evidence`，不会创建 Planner 威胁。明细写入
`validation/attack-recognition-coverage-20261030.json`。

`gamebot_attack_strict_validation.json` 记录原版回调中带 `parent/spawner` 来源链
的攻击对象。严格识别要求精确身份、State、Animation 和 0–1 帧对象生成关系；
跨两个运行种子且动画帧稳定的记录同时形成严格时点预测。严格时点预测仍不等于
几何预测，不会自动创建 Planner 威胁。汇总见
`research/STRICT-ATTACK-VALIDATION-20261030.md`。

132 个迷你 Boss / Boss 精确身份已逐项明确严格攻击识别与严格攻击预测：
21 个严格识别、7 个严格预测，其余身份按静态候选、单运行/同种子 provisional
时点或无攻击候选分别记录原因。其中 11 个新增严格识别来自已有全帧日志的离线
挖掘，5 个再用第二种子 `7W3L P1Z9` 补齐跨种子稳定时点后升级为严格预测；
固定种子 `3JY1 6FLR` 的其余稳定时点只记为 provisional。明细见
[`data/npc/BOSS-STRICT-ATTACK-CATALOG.md`](../npc/BOSS-STRICT-ATTACK-CATALOG.md)，
机器可读结果见 `validation/boss-strict-attack-catalog-20261030.json`。该目录不改变
任何运行时威胁，也不把时点预测解释为几何预测。

`role=monster` 的 322 个身份见
[`data/npc/MONSTER-STRICT-ATTACK-CATALOG.md`](../npc/MONSTER-STRICT-ATTACK-CATALOG.md)：
严格识别 155 个、严格预测 94 个、provisional 24 个、静态候选 156 个、
没有攻击候选 11 个。其中 42 个只有 AI 函数调用且没有动画事件 cue 的身份
归为 `contact_only`（37）或 `no_object_attack_evidence`（5）。批量补测使用
原版宽房原生生成和用户授权的控制台 `seed`/`goto`；未修改角色数值、存档或
安装 Mod。机器可读结果见 `validation/monster-strict-attack-catalog-20261030.json`。

`gamebot_monster_geometry.json` 是普通怪离线几何模型库。主程序启动时由
`MechanismSemantics` 加载，当前记录前摇/几何均验证的模型、运行时参数型模型、
运行时几何身份和无目标危险身份。当前导出覆盖 `322` 个普通怪身份：`316` 个有
至少一个已验证模型，`6` 个未观察到目标自身危险，`0` 个 runtime-only、
`0` 个 partial/provisional；当前有 `63` 个 runtime-parametric 组。接触模型会生成 `planning_validated` 的
contact warning；Planner 同时按来源地址和危险实体身份查询 projectile、laser、
bomb、creep、cage-rock-wave 与 falling-impact 模型，采用模型半径、持续时间和
几何验证状态；creep 使用跨 seed 的保守 `radius_bound`，而不是均值半径。

Planner 威胁覆盖审计见
[`data/npc/PLANNER-THREAT-COVERAGE.md`](../npc/PLANNER-THREAT-COVERAGE.md)：
37 个 `contact_only` 全部已有 `planning_validated` 接触模型；94 个严格预测身份中
30 个已有预生成威胁覆盖，64 个仍缺攻击几何。审计只读现有模型，不新增威胁。

`gamebot_monster_geometry_patterns.json` 补充普通怪弹幕的空间结构，包括径向
数量、相位、中心、触发动画帧、速度和持续时间，也支持以玩家方向为中心、
固定角间距的瞄准扇形。它只收录有来源链和跨种子时间线
证据的模式；相位不稳定时会记录有限相位覆盖，不把均值伪装成精确值。模式还可以
用 `source_ai_i1/ai_i2` 限定 AI 阶段，避免同一个 State/Animation 下的不同弹幕
族互相串用。触发帧不稳定但几何稳定时，可用
`trigger_animation_frame_min/max` 登记有界窗口；Planner 会用移动胶囊覆盖整个
可能发射区间，并保持 `timing_verified=false`，不能把它当成精确时点。

隔离房中的无 `source_identity` 弹幕只有在目标为唯一敌人时才按目标归因；指向
其他敌人的弹幕不会被继承。`817.1.0` 的弹幕来源明确属于其子实体 `808.0.0`，
因此 817.1 归入无目标危险身份，而不是继承子实体弹幕。

模型导出会拒绝没有目标直接来源、来源链或隔离目标推断的危险组。当前排除了
`32` 个来自伴随敌人、独立子身份或目标消失后的组；子身份应在自己的精确身份下建模，不能
把其弹道归给父怪物。

数据库按 653 个本机 NPC EntityConfig 精确 Type/Variant/Subtype 组合建立条目，包含
普通怪物、Boss、部件和机关。25 个陷阱身份已标记为 `category=trap / role=trap_mechanism`，
包括 `203.0.0 Brimstone Head`。完整身份与23类陷阱映射见
[身份目录](../npc/ENTITY-CATALOG.md) 和 [陷阱目录](../npc/TRAP-ROOM-CATALOG.md)。
地刺、红大便等网格和 Troll Bomb 实体另列，不增加653的计数。

其中 469 个属于 Wiki 怪物名册，
184 个是 Boss 部件或环境 NPC 等补充身份。每条记录保留静态资源、ANM2 候选、
运行机制、来源关系、外部内存字段和预警支持情况，不把候选合并成已确认攻击。

重新生成：

```powershell
python research/mechanisms/build_mechanism_db.py
python research/mechanisms/analyze_state_semantics.py
python research/mechanisms/trap_room_catalog.py
python research/mechanisms/mine_existing_attacks.py --role=boss --apply
python research/mechanisms/mine_existing_attacks.py --role=monster --apply
python research/mechanisms/promote_attack_candidates.py
python research/mechanisms/build_runtime_semantics.py
python research/mechanisms/build_boss_strict_attack_catalog.py
python research/mechanisms/build_monster_strict_attack_catalog.py
python research/mechanisms/build_boss_static_hypothesis.py
python research/mechanisms/audit_planner_threat_coverage.py
```

校验结果写入 `validation/mechanism-db-check.json`。生成器会核对条目数、事件数、
运行机制数、身份探针数和 C++ 新字段，源文件哈希同时记录在数据库内。

状态语义校验写入 `validation/state-semantics-check.json`。Boss 图、无敌和狂暴
候选均保留证据等级；`boss_phase_graphs` 中的边默认是静态候选，不能当作已运行验证。
边的批量分类和运行验证数写入 `validation/boss-edge-semantics-check.json`，
覆盖率写入 `validation/mechanism-coverage-20261029.json`，高价值 Boss 结论写入
`validation/high-value-mechanism-validation-20261029.json`。
