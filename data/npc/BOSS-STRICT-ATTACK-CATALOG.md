# 迷你 Boss 与 Boss 严格攻击识别 / 严格攻击预测目录

范围：当前 `data/npc/engine_npc_entity_catalog.tsv` 中 `category=boss` 的 132 个精确身份，其中 `role=miniboss` 22 个、`role=boss` 110 个。

本目录只登记有来源链、严格 State/动画映射或已验证预警规则的严格结果；没有这些证据的静态候选仍保持候选，不升级为严格识别或严格预测。

## 判定口径

- **严格攻击识别**：精确 `Type/Variant/Subtype` + 实际 `State/Animation`，并且满足以下任一项：原版回调中经 `parent/spawner` 来源链观察到攻击对象且对象生成延迟不超过 1 帧；已有严格 State/动画映射；已有跨种子独立验证的预警规则。
- **严格攻击预测**：在严格识别基础上，同一 `State/Animation` 的触发动画帧在 0/1 帧误差内稳定，至少有两次观察并覆盖两个运行种子，生成对象与机制一致。它只表示“动画帧到攻击对象生成”的时点，不表示已知完整危险区域或命中范围。
- **候选识别**：反编译 State 调用、State 动画名、ANM2 事件或完整 AI 函数调用等静态线索。候选只用于运行时 `attack_type`，不创建 Planner 威胁。
- **单运行/同种子 provisional 时点模型**：动画帧稳定但只覆盖一个运行种子，不能算严格预测。

## 汇总

| 项目 | boss | miniboss | 合计 |
| --- | ---: | ---: | ---: |
| 精确身份 | 110 | 22 | 132 |
| 严格攻击识别 | 17 | 4 | 21 |
| 严格攻击预测 | 6 | 1 | 7 |
| 单运行/同种子 provisional 预测 | 6 | 3 | 9 |
| 仅有静态攻击候选 | 90 | 18 | 108 |
| 没有攻击候选 | 3 | 0 | 3 |

## 严格攻击识别身份

| 精确身份 | 名称 | 角色 | EntityConfig | 识别依据 | 严格 State | 来源链对象组 |
| --- | --- | --- | --- | --- | --- | --- |
| `20.0.0` | 萌死戳 | boss | #MONSTRO | 原版回调来源链攻击对象 | 7,8 | state7:JumpDown:projectile_emission:9.0.0@f33[+1]x180/1; state8:Taunt:projectile_emission:9.0.0@f20[+1]x91/1 |
| `43.0.0` | 萌死戳II | boss | #MONSTRO_II | 原版回调来源链攻击对象 | 7,8 | state7:JumpDown:projectile_emission:9.0.0@f35[+0]x48/1; state7:JumpDown:summon_or_split_relation:61.0.0@f35[+0]x52/2; state8:Taunt:laser_emission:7.1.0@f22[+0]x7/2 |
| `43.1.0` | 吉什 | boss | #GISH | 原版回调来源链攻击对象 | 7 | state7:JumpDown:attack_effect:1000.26.0@f35[+0]x1/1 |
| `45.0.0` | 妈妈 | boss | #MOM | 原版回调来源链攻击对象 | 10 | state10:Fat01:summon_or_split_relation:18.0.0@f8[+0]x1/1; state10:Fat01:summon_or_split_relation:21.0.0@f8[+0]x1/1 |
| `46.0.0` | 懒惰 | miniboss | #SLOTH | 原版回调来源链攻击对象 | 8,9 | state8:Attack:summon_or_split_relation:23.0.0@f4[+1]x5/1; state9:Attack:projectile_emission:9.0.0@f4[+1]x2/1 |
| `49.0.0` | 暴食 | miniboss | #GLUTTONY | 原版回调来源链攻击对象 | 8,9 | state8:FatAttack:projectile_emission:9.0.0@f11[+1]x16/1; state9:Attack01Horiz:laser_emission:7.1.0@f27[+1]x15/1 |
| `52.0.0` | 傲慢 | miniboss | #PRIDE | 原版回调来源链攻击对象 | 8,9 | state8:Attack01:laser_emission:7.4.0@f21[+0]x4/1; state9:Attack02:bomb_emission:4.3.0@f7,12,17,22[+0]x8/1 |
| `52.1.0` | 超级傲慢 | miniboss | #SUPER_PRIDE | 原版回调来源链攻击对象 | 8,9 | state8:Attack01:laser_emission:7.4.0@f21[+0]x40/2; state8:Attack01:projectile_emission:9.0.0@f21[+0]x60/2; state9:Attack02:bomb_emission:4.4.0@f7,12[+0]x12/3 |
| `68.1.0` | 充血怪 | boss | #THE_BLOAT | 已验证预警规则 | - | - |
| `79.2.0` | 凋零双子 | boss | #THE_BLIGHTED_OVUM | 原版回调来源链攻击对象 | 4 | state4:WalkHori:attack_effect:1000.22.0(CREEP_RED)@f0,2,3,4,5,7,10,11,12,14,17,18,19[+1]x17/1; state4:WalkVert:attack_effect:1000.22.0(CREEP_RED)@f1,2,3,4,9,10,11,16,18[+1]x11/1 |
| `79.12.0` | 凋零双子宝宝 | boss | #THE_BLIGHTED_OVUM_BABY | 原版回调来源链攻击对象 | 8 | state8:Attack01:laser_emission:7.1.0@f14[+1]x2/1 |
| `101.0.0` | 长腿蛛父 | boss | #DADDY_LONG_LEGS | 原版回调来源链攻击对象 | 4 | state4:Down:projectile_emission:9.0.0@f7[+0]x16/1 |
| `266.0.0` | 母体肉山 | boss | #MAMA_GURDY | 原版回调来源链攻击对象 | 8,10 | state8:Shoot:projectile_emission:9.0.0@f32,34,35,36,37,38,40,42,44,48[+0]x184/1; state10:Puke:projectile_emission:9.0.0@f1,44,46,48,50,52,54,56,58,60,62,64,66[+0]x339/1 |
| `268.0.0` | 敌手 | boss | #THE_ADVERSARY | 原版回调来源链攻击对象 | 8,13 | state8:Attack2Down:laser_emission:7.1.0@f27[+0]x1/1; state8:Attack2Left:laser_emission:7.1.0@f27[+0]x6/2; state8:Attack2Right:laser_emission:7.1.0@f27[+0]x2/1; state8:Attack2Up:laser_emission:7.1.0@f27[+0]x6/1; state13:Attack1:summon_or_split_relation:85.0.0@f27[+0]x17/2 |
| `405.0.0` | 绷带人 | boss | #RAG_MAN | 原版回调来源链攻击对象 | 3,8,13 | state3:WalkNoHeadLeft:projectile_emission:9.0.0@f0[+1]x1/1; state3:WalkNoHeadRight:projectile_emission:9.0.0@f6,11[+1]x2/1; state3:WalkNoHeadVert:projectile_emission:9.0.0@f2,7,11,14,16[+1]x5/1; state8:Shooting1:projectile_emission:9.0.0@f3[+1]x5/3; state8:Shooting3:projectile_emission:9.0.0@f3,9,15[+1]x6/1; state8:Shooting5:projectile_emission:9.0.0@f3,9,15,21,27[+1]x10/2; state13:HeadThrowLeft:summon_or_split_relation:405.1.0@f16[+1]x5/2; state13:HeadThrowRight:summon_or_split_relation:405.1.0@f16[+1]x4/3 |
| `406.0.0` | 究极贪婪 | boss | #ULTRA_GREED | 严格 State/动画映射 | 100,200,300,310,400,510,600 | - |
| `411.0.0` | 巨角恶魔 | boss | #BIG_HORN | 严格 State/动画映射 | 13 | - |
| `413.0.0` | 胖蛆族母 | boss | #THE_MATRIARCH | 严格 State/动画映射 | 8,9,10 | - |
| `905.0.0` | 大异端 | boss | #THE_HERETIC | 原版回调来源链攻击对象 | 8,15,6,10,14 | state6:Summoning:summon_or_split_relation:832.1.1@f2[+0]x4/2; state6:Summoning:summon_or_split_relation:832.1.2@f2[+0]x4/2; state6:Summoning:summon_or_split_relation:832.1.3@f2[+0]x4/2; state6:Summoning:summon_or_split_relation:832.1.4@f2[+0]x4/2; state6:Summoning:summon_or_split_relation:832.1.5@f2[+0]x4/2; state8:Attack1:laser_emission:7.1.0@f27[+0]x25/2; state10:ChargeEndLeft:summon_or_split_relation:905.0.1@f17[+0]x3/1; state10:ChargeEndRight:summon_or_split_relation:905.0.1@f17[+0]x1/1; state14:Attack2:projectile_emission:9.0.0@f13[+0]x7/1; state15:Divebomb:attack_effect:1000.147.1@f48,50,52,54,56,58,60,62,64,66,68,70,72[+0]x89/2; state15:Divebomb:attack_effect:1000.148.1@f46[+0]x16/2 |
| `916.0.0` | 大乞丐宝 | boss | #BUMBINO | 原版回调来源链攻击对象 | 5,9 | state5:Dizzy:projectile_emission:9.9.0@f2,4,6,8,10,12,14,16,18,20,22,24,26[+0]x26/1; state5:WallImpact:projectile_emission:9.9.0@f1,3,5,7,9,11,13,15,17,19,21,22[+0]x68/2; state9:GroundSlam:attack_effect:1000.72.0@f21[+0]x60/2; state9:GroundSlam:projectile_emission:9.9.0@f21[+0]x120/2 |
| `917.0.0` | 结肠造口袋 | boss | #COLOSTOMIA | 原版回调来源链攻击对象 | 8 | state8:ChargeEndHori:attack_effect:1000.141.1@f1[+0]x1/1; state8:ChargeEndHori:projectile_emission:9.3.0@f1[+0]x2/1; state8:ChargeLoopHori:attack_effect:1000.141.1@f0,1,3,4,5,6,7[+0]x20/1; state8:ChargeLoopHori:projectile_emission:9.3.0@f0,1,3,4,5,6,7[+0]x40/1; state8:ChargeLoopUp:attack_effect:1000.141.1@f1,6[+0]x2/1; state8:ChargeLoopUp:projectile_emission:9.3.0@f1,6[+0]x4/1 |

## 严格攻击预测身份

| 精确身份 | 名称 | 严格时点键 | 证据摘要 |
| --- | --- | --- | --- |
| `43.0.0` | 萌死戳II | 43.0.0:7:JumpDown,43.0.0:8:Taunt | 43.0.0:7:JumpDown@f35[samples=100,runs=2]; 43.0.0:8:Taunt@f22[samples=7,runs=2] |
| `52.1.0` | 超级傲慢 | 52.1.0:8:Attack01 | 52.1.0:8:Attack01@f21[samples=100,runs=2] |
| `68.1.0` | 充血怪 | 68.1.0:9:AttackAlt01,68.1.0:10:AttackAlt02 | 68.1.0:9:AttackAlt01@f11[samples=12,seeds=2]; 68.1.0:10:AttackAlt02@f11[samples=6,seeds=2] |
| `268.0.0` | 敌手 | 268.0.0:8:Attack2Left,268.0.0:13:Attack1 | 268.0.0:8:Attack2Left@f27[samples=6,runs=2]; 268.0.0:13:Attack1@f27[samples=17,runs=2] |
| `405.0.0` | 绷带人 | 405.0.0:8:Shooting1,405.0.0:13:HeadThrowLeft,405.0.0:13:HeadThrowRight | 405.0.0:8:Shooting1@f3[samples=5,runs=3]; 405.0.0:13:HeadThrowLeft@f16[samples=5,runs=2]; 405.0.0:13:HeadThrowRight@f16[samples=4,runs=3] |
| `905.0.0` | 大异端 | 905.0.0:6:Summoning,905.0.0:8:Attack1,905.0.0:15:Divebomb | 905.0.0:6:Summoning@f2[samples=20,runs=2]; 905.0.0:8:Attack1@f27[samples=25,runs=2]; 905.0.0:15:Divebomb@f46[samples=16,runs=2] |
| `916.0.0` | 大乞丐宝 | 916.0.0:9:GroundSlam | 916.0.0:9:GroundSlam@f21[samples=180,runs=2] |

严格预测仍不等于几何预测。上述身份不会因为存在时点键而自动获得 Planner 威胁；只有独立验证过的几何模型才会进入威胁。

## 未达到严格识别的分布

| 原因 | 数量 |
| --- | ---: |
| 仅有 State 攻击调用候选 (`static_state_attack_call_only`) | 52 |
| 仅有 ANM2 攻击事件候选 (`static_anm2_animation_event_only`) | 29 |
| 仅有完整 AI 函数攻击调用候选 (`static_ai_function_attack_call_only`) | 16 |
| 仅有 State 攻击动画候选 (`static_state_animation_only`) | 11 |
| 单运行/同种子稳定时点模型 (`single_run_timing_model_only`) | 7 |
| 有来源链对象但时序不稳定 (`source_linked_object_without_stable_cross_seed_timing`) | 4 |
| 没有可确认的攻击候选 (`no_attack_candidate_identified`) | 3 |
| 严格状态动画映射没有攻击对象时点 (`strict_state_animation_mapping_without_attack_object_timing`) | 3 |

## 逐项状态

| 精确身份 | 名称 | 角色 | 严格识别 | 严格预测 | 识别依据 | 严格时点键 | 未严格原因 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `19.0.0` | 拉里子虫 | boss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `19.1.0` | 空心虫 | boss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `19.2.0` | 灰岩子虫 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `19.3.0` | 枯壳虫 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `20.0.0` | 萌死戳 | boss | 是 | 否 | 原版回调来源链攻击对象 | - | 单运行/同种子稳定时点模型 |
| `28.0.0` | 胖蛆 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `28.1.0` | 查德 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `28.2.0` | 腐蛆女王 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `36.0.0` | 肉山 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `38.2.0` | 究极傲慢宝宝 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `43.0.0` | 萌死戳II | boss | 是 | 是 | 原版回调来源链攻击对象 | 43.0.0:7:JumpDown,43.0.0:8:Taunt | 已有严格攻击时点预测 |
| `43.1.0` | 吉什 | boss | 是 | 否 | 原版回调来源链攻击对象 | - | 有来源链对象但时序不稳定 |
| `45.0.0` | 妈妈 | boss | 是 | 否 | 原版回调来源链攻击对象 | - | 有来源链对象但时序不稳定 |
| `46.0.0` | 懒惰 | miniboss | 是 | 否 | 原版回调来源链攻击对象 | - | 单运行/同种子稳定时点模型 |
| `46.1.0` | 超级懒惰 | miniboss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `46.2.0` | 究极傲慢 | miniboss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `47.0.0` | 色欲 | miniboss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `47.1.0` | 超级色欲 | miniboss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `48.0.0` | 愤怒 | miniboss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `48.1.0` | 超级愤怒 | miniboss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `49.0.0` | 暴食 | miniboss | 是 | 否 | 原版回调来源链攻击对象 | - | 单运行/同种子稳定时点模型 |
| `49.1.0` | 超级暴食 | miniboss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `50.0.0` | 贪婪 | miniboss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `50.1.0` | 超级贪婪 | miniboss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `51.0.0` | 嫉妒 | miniboss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `51.1.0` | 超级嫉妒 | miniboss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `52.0.0` | 傲慢 | miniboss | 是 | 否 | 原版回调来源链攻击对象 | - | 单运行/同种子稳定时点模型 |
| `52.1.0` | 超级傲慢 | miniboss | 是 | 是 | 原版回调来源链攻击对象 | 52.1.0:8:Attack01 | 已有严格攻击时点预测 |
| `62.0.0` | 钉头虫 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `62.1.0` | 头节虫 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `62.2.0` | 脆皮虫 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `62.3.0` | 茵陈 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `63.0.0` | 饥荒骑士 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `64.0.0` | 瘟疫骑士 | boss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `65.0.0` | 战争骑士 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `65.1.0` | 征服骑士 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `66.0.0` | 死亡骑士 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `67.0.0` | 苍蝇公爵 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `67.1.0` | 尸壳 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `68.0.0` | 嘘嘘怪 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `68.1.0` | 充血怪 | boss | 是 | 是 | 已验证预警规则 | 68.1.0:9:AttackAlt01,68.1.0:10:AttackAlt02 | 已有严格攻击时点预测 |
| `69.0.0` | 洛基 | boss | 否 | 否 | - | - | 仅有 State 攻击动画候选 |
| `69.1.0` | 分身洛基 | boss | 否 | 否 | - | - | 仅有 State 攻击动画候选 |
| `71.0.0` | 瘘管团 | boss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `71.1.0` | 畸胎瘤 | boss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `74.0.0` | 囊胚 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `78.0.0` | 妈妈的心脏 | boss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `78.1.0` | 它还活着 | boss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `79.0.0` | 连体双子 | boss | 否 | 否 | - | - | 没有可确认的攻击候选 |
| `79.1.0` | 史蒂文 | boss | 否 | 否 | - | - | 没有可确认的攻击候选 |
| `79.2.0` | 凋零双子 | boss | 是 | 否 | 原版回调来源链攻击对象 | - | 有来源链对象但时序不稳定 |
| `79.10.0` | 双子宝宝 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `79.11.0` | 史蒂文宝宝 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `79.12.0` | 凋零双子宝宝 | boss | 是 | 否 | 原版回调来源链攻击对象 | - | 单运行/同种子稳定时点模型 |
| `81.0.0` | 堕落恶魔 | boss | 否 | 否 | - | - | 仅有 State 攻击动画候选 |
| `81.1.0` | 坎卜斯 | miniboss | 否 | 否 | - | - | 仅有 State 攻击动画候选 |
| `82.0.0` | 无头骑士 | boss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `83.0.0` | 无头骑士的头 | boss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `84.0.0` | 撒但 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `97.0.0` | 耻辱假面 | boss | 否 | 否 | - | - | 仅有完整 AI 函数攻击调用候选 |
| `98.0.0` | 耻辱之心 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `99.0.0` | 小肉山 | boss | 否 | 否 | - | - | 仅有 State 攻击动画候选 |
| `100.0.0` | 灰寡妇蛛 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `100.1.0` | 伤痕寡妇蛛 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `101.0.0` | 长腿蛛父 | boss | 是 | 否 | 原版回调来源链攻击对象 | - | 单运行/同种子稳定时点模型 |
| `101.1.0` | 三腿蜘蛛 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `102.0.0` | 以撒 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `102.1.0` | ??? | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `237.1.0` | 肉山幼崽头目 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `237.2.0` | 粪山幼崽 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `260.0.0` | 大恶灵 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `261.0.0` | 坨坨 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `261.1.0` | 滑坨坨 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `262.0.0` | 超级大嘴头 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `263.0.0` | 守门骷髅 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `264.0.0` | 超级肥仔 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `265.0.0` | 大肥笼 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `266.0.0` | 母体肉山 | boss | 是 | 否 | 原版回调来源链攻击对象 | - | 有来源链对象但时序不稳定 |
| `267.0.0` | 黑暗恶魔 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `268.0.0` | 敌手 | boss | 是 | 是 | 原版回调来源链攻击对象 | 268.0.0:8:Attack2Left,268.0.0:13:Attack1 | 已有严格攻击时点预测 |
| `269.0.0` | 多头畸胎 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `269.1.0` | 骨堆畸胎 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `270.0.0` | 大弗莱德 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `271.0.0` | 乌列 | miniboss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `271.1.0` | 堕落乌列 | miniboss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `272.0.0` | 加百列 | miniboss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `272.1.0` | 堕落加百列 | miniboss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `273.0.0` | 羔羊 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `274.0.0` | 超级撒但 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `275.0.0` | 超级撒但2 | boss | 否 | 否 | - | - | 仅有 State 攻击动画候选 |
| `401.0.0` | 血痕畸胎 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `402.0.0` | 布朗尼 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `403.0.0` | 被遗弃者 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `404.0.0` | 小角恶魔 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `405.0.0` | 绷带人 | boss | 是 | 是 | 原版回调来源链攻击对象 | 405.0.0:8:Shooting1,405.0.0:13:HeadThrowLeft,405.0.0:13:HeadThrowRight | 已有严格攻击时点预测 |
| `406.0.0` | 究极贪婪 | boss | 是 | 否 | 严格 State/动画映射 | - | 严格状态动画映射没有攻击对象时点 |
| `406.1.0` | 究极大贪婪 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `407.0.0` | 死寂 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `409.0.0` | 超级绷带人 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `410.0.0` | 开膛姐妹 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `411.0.0` | 巨角恶魔 | boss | 是 | 否 | 严格 State/动画映射 | - | 严格状态动画映射没有攻击对象时点 |
| `412.0.0` | 精神错乱 | boss | 否 | 否 | - | - | 没有可确认的攻击候选 |
| `413.0.0` | 胖蛆族母 | boss | 是 | 否 | 严格 State/动画映射 | - | 严格状态动画映射没有攻击对象时点 |
| `866.0.0` | 堕化以扫 | miniboss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `867.0.0` | 母亲的暗影 | miniboss | 否 | 否 | - | - | 仅有 State 攻击动画候选 |
| `900.0.0` | 裂面爬墙蛛 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `901.0.0` | 小水泡 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `902.0.0` | 造雨人 | boss | 否 | 否 | - | - | 仅有 State 攻击动画候选 |
| `903.0.0` | 锁链假面 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `904.0.0` | 塞壬 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `905.0.0` | 大异端 | boss | 是 | 是 | 原版回调来源链攻击对象 | 905.0.0:6:Summoning,905.0.0:8:Attack1,905.0.0:15:Divebomb | 已有严格攻击时点预测 |
| `906.0.0` | 岩角恶魔 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `907.0.0` | 大基甸 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `908.0.0` | 糖梅宝宝 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `909.0.0` | 鞭刃怪 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `910.0.0` | 嵌体怪 | boss | 否 | 否 | - | - | 仅有 State 攻击动画候选 |
| `911.0.0` | 腐脏巨面 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `912.0.0` | 母亲 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `913.0.0` | 冥明火灵 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `914.0.0` | 拦路屎 | boss | 否 | 否 | - | - | 仅有 State 攻击动画候选 |
| `915.0.0` | 焦皮小子 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `916.0.0` | 大乞丐宝 | boss | 是 | 是 | 原版回调来源链攻击对象 | 916.0.0:9:GroundSlam | 已有严格攻击时点预测 |
| `917.0.0` | 结肠造口袋 | boss | 是 | 否 | 原版回调来源链攻击对象 | - | 单运行/同种子稳定时点模型 |
| `918.0.0` | 虫形大便 | boss | 否 | 否 | - | - | 仅有 State 攻击动画候选 |
| `920.0.0` | 魔角兄弟 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `921.0.0` | 附身邪鬼 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `950.0.0` | 教条 | boss | 否 | 否 | - | - | 仅有 State 攻击调用候选 |
| `951.0.0` | 祸兽 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `951.10.0` | 究极饥荒骑士 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `951.20.0` | 究极瘟疫骑士 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `951.30.0` | 究极战争骑士 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |
| `951.40.0` | 究极死亡骑士 | boss | 否 | 否 | - | - | 仅有 ANM2 攻击事件候选 |

## 边界

- 132 个身份中严格识别 21 个，严格预测 7 个；其余 125 个没有跨种子稳定的攻击对象时点。
- 静态 ANM2 事件、State 攻击调用和完整 AI 函数调用只是候选，不能当作已确认攻击。
- 其余静态候选的未验证假设层见 [BOSS-STATIC-STRICT-HYPOTHESIS.md](BOSS-STATIC-STRICT-HYPOTHESIS.md)；该表不改变本目录的严格字段，也不能进入运行时或 Planner。
- Boss 阶段边、无敌窗口、攻击几何和持续时间仍需各自的运行验证；本目录不改变这些结论。
- 数据来源：`data/mechanisms/gamebot_runtime_semantics.json`、`data/mechanisms/gamebot_attack_strict_validation.json`、`data/npc/engine_npc_entity_catalog.tsv`。
