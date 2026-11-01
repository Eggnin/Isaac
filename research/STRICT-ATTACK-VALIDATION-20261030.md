# 严格攻击识别与时点预测（2026-10-30）

## 结果

- 候选攻击识别：`620/653`
- 严格攻击识别：`178/653`
- 严格时点预测：`102/653`
- 运行时时序模型：`124`；其中来源链严格时序模型 `120`
- 单运行/同种子 provisional 时序模型：`46`
- 严格几何预测：`1/653`，仍只有 Eye `60.0.0:8:Shoot`
- 可生成 Planner 威胁的前摇规则：`3`

本轮没有运行无伤或清关测试。

## 晋升标准

严格攻击识别要求：

- 精确 `Type/Variant/Subtype`
- 实际 State 和 Animation
- 原版引擎回调观察到攻击对象
- 攻击对象通过 `parent/spawner` 链接到该敌人
- 动画帧到对象生成的间隔不超过 1 帧

严格时点预测额外要求：

- 同一 State/Animation 下动画帧固定在 0 或 1 帧误差内
- 至少两次观察
- 至少覆盖两个运行种子
- 生成对象和机制一致

只有几何模型独立通过验证后，才会设置 `geometry_verified` 和 `planning_validated`。

## 严格识别新增身份

以下 39 个身份来自原版回调的攻击对象来源链：

```text
10.1.0 11.0.0 12.0.0 14.0.0 14.1.0 15.0.0 15.2.0 15.3.0
16.0.0 16.1.0 20.0.0 25.0.0 26.0.0 27.1.0 30.2.0
46.0.0 49.0.0 61.0.0 79.2.0 79.12.0 80.0.0 94.0.0
205.0.0 206.0.0 207.0.0 208.2.0 226.0.0 229.0.0
238.0.0 240.0.0 243.0.0 244.0.0 250.0.0 284.0.0
300.0.0 305.0.0 405.0.0 405.1.0 812.0.0
```

其中 7 个原严格身份与这 39 个合并后，运行时严格识别总数为 46。2026-10-30 追加从已有全帧日志挖掘的 11 个来源链身份后为 57：

```text
43.0.0 43.1.0 45.0.0 52.0.0 52.1.0 101.0.0
266.0.0 268.0.0 905.0.0 916.0.0 917.0.0
```

这 11 个身份来自已存在的 `sessions/` 与 `validation/boss-opt-*-windows-*` 全帧日志；没有启动新游戏、没有安装 Mod、没有传送或生成测试房间。严格识别只要求来源链对象和 0–1 帧延迟，因此不受单一种子限制。

## 严格时点预测身份

```text
12.0.0 呕血头
14.0.0 狙击蝇
14.1.0 超级狙击蝇
15.0.0 肉团
16.0.0 棉花怪
30.2.0 卵囊
60.0.0 眼睛
68.1.0 充血怪
203.0.0 硫磺石像射手
207.0.0 疯狂长腿蛛
244.0.0 圆头虫
405.0.0 绷带人
```

严格时点预测表示可以计算“动画帧到达某值时生成攻击对象”的帧，不表示已经知道完整危险区域。

## Boss 与迷你 Boss 的明确状态

132 个 `category=boss` 精确身份已逐项写入
`data/npc/BOSS-STRICT-ATTACK-CATALOG.md` 与
`data/npc/boss_strict_attack_catalog.tsv`：

- 严格攻击识别：`21/132`，其中 Boss `17`、迷你 Boss `4`。
- 严格攻击预测：`7/132`，为萌死戳II `43.0.0`、超级傲慢 `52.1.0`、
  充血怪 `68.1.0`、敌手 `268.0.0`、绷带人 `405.0.0`、大异端 `905.0.0`、
  大乞丐宝 `916.0.0`。
- 单运行/同种子 provisional 时点：`9/132`，包括萌死戳 `20.0.0`、
  懒惰 `46.0.0`、暴食 `49.0.0`、傲慢 `52.0.0`、凋零双子宝宝 `79.12.0`、
  长腿蛛父 `101.0.0`、敌手 `268.0.0`、大异端 `905.0.0`、结肠造口袋 `917.0.0`。
  其中 `268.0.0` 与 `905.0.0` 同时有已跨种子确认的其它时点键。
- 仅有静态攻击候选：`108/132`；没有攻击候选：`3/132`
  （连体双子 `79.0.0`、史蒂文 `79.1.0`、谵妄 `412.0.0`）。

这 11 个新增严格识别中，有 5 个（`43.0.0`、`52.1.0`、`268.0.0`、
`905.0.0`、`916.0.0`）最初只覆盖固定种子 `3JY1 6FLR`，因此先记为
provisional。随后用第二种子 `7W3L P1Z9` 重新跑原版全帧窗口，动画帧仍稳定，
才升级为严格预测。第二种子运行只用于补齐跨种子证据，没有改角色数值、Mod 或
存档；控制台 `seed` / `goto` 由用户明确授权。

逐项原因、严格 State/Animation、来源链对象和严格时点键见该目录。
`data/npc/engine_npc_entity_catalog.tsv` 与 `ENTITY-CATALOG.md` 也已增加
`strict_attack_recognition` / `strict_attack_prediction` 两列。

108 个剩余静态攻击候选另生成未验证假设层
`data/npc/BOSS-STATIC-STRICT-HYPOTHESIS.md`：108 个可形成静态识别假设，
76 个有动画帧可形成静态时点假设，32 个只有调用、没有动画帧。该层严格字段
仍为 `no`，不进入运行时，不作为严格识别或严格预测计数。

## role=monster 的明确状态

322 个 `role=monster` 精确身份已逐项写入
`data/npc/MONSTER-STRICT-ATTACK-CATALOG.md` 与
`data/npc/monster_strict_attack_catalog.tsv`：

- 严格攻击识别：`155/322`。
- 严格攻击预测：`94/322`。
- 单运行/同种子 provisional 时点：`24/322`。
- 仍有静态攻击候选：`156/322`；没有攻击候选：`11/322`。
- 其中 `42` 个只有 AI 函数调用且无动画事件 cue：`contact_only` 37 个、
  `no_object_attack_evidence` 5 个，不再作为批量补测候选。

Planner 威胁覆盖审计见 `data/npc/PLANNER-THREAT-COVERAGE.md`：37 个
`contact_only` 全部已有 `planning_validated` 接触模型；94 个严格预测身份中
30 个已有预生成威胁覆盖，64 个仍缺攻击几何。该审计只读现有模型，不新增威胁。

本轮先用已有日志筛出 277 个候选，再对其中可生成的对象做两段原版宽房补测：
第一段 `SWGF G7WV` 覆盖静态动画候选和状态/调用候选，第二段 `7W3L P1Z9`
只补第一段中动画帧稳定的身份。控制台 `seed` / `goto` 由用户明确授权；
使用 `--no-fire` 保持目标存活，不修改角色数值、存档或安装 Mod。

本轮已有日志挖掘结果保存在
`data/mechanisms/gamebot_session_attack_associations.json` 与
`validation/boss-existing-log-strict-promotions-20261030.json`。第一段只读
已有 `sessions/` 与 `validation/**/*windows*.jsonl`；第二段经用户明确授权，
只对 5 个同种子稳定身份运行原版全帧窗口，使用控制台 `seed 7W3L P1Z9` 与
`goto` 进入原版 Boss 房。没有安装 Mod、修改角色数值或存档。

## 运行时字段

`MechanismObservation` 新增或使用：

- `attack_type`
- `attack_type_evidence`
- `attack_timing_verified`
- `predicted_trigger_frame`
- `behavior_model.strict_attack_objects`
- `behavior_model.attack_timing_prediction`

严格时点预测只进入敌人观测，不自动创建 `MechanismWarning`。Planner 继续只消费已验证几何的 warning。

## 文件

- 严格验证数据：`data/mechanisms/gamebot_attack_strict_validation.json`
- 严格验证副本：`validation/attack-strict-validation-20261030.json`
- Boss 严格目录：`data/npc/BOSS-STRICT-ATTACK-CATALOG.md`
- Boss 严格明细：`data/npc/boss_strict_attack_catalog.tsv`
- Boss 严格校验：`validation/boss-strict-attack-catalog-20261030.json`
- 自动晋升器：`research/mechanisms/promote_attack_candidates.py`
- Boss 目录生成器：`research/mechanisms/build_boss_strict_attack_catalog.py`
- 运行时生成器：`research/mechanisms/build_runtime_semantics.py`
- 运行时语义实现：`cpp/src/semantics.cpp`
- C++ 测试：`cpp/tests/core_tests.cpp`
