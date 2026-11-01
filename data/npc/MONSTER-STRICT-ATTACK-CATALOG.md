# role=monster 的严格攻击识别 / 严格攻击预测目录

范围：`data/npc/engine_npc_entity_catalog.tsv` 中 `role=monster` 的 322 个精确身份。

本目录只登记有来源链、严格 State/动画映射或已验证预警规则的严格结果；没有这些证据的静态候选仍保持候选。严格预测只表示动画帧到攻击对象生成的时点，不是几何预测，也不会自动创建 Planner 威胁。

## 汇总

| 项目 | 数量 |
| --- | ---: |
| 精确身份 | 322 |
| 严格攻击识别 | 155 |
| 严格攻击预测 | 94 |
| 单运行/同种子 provisional 时点 | 24 |
| 仅有静态攻击候选 | 156 |
| 没有攻击候选 | 11 |
| 归为 contact_only | 37 |
| 归为 no_object_attack_evidence | 5 |

## 严格攻击识别身份

| 精确身份 | 名称 | EntityConfig | 识别依据 | 严格 State | 来源链对象组 |
| --- | --- | --- | --- | --- | --- |
| `10.1.0` | 裂口尸 | #GAPER | 原版回调来源链攻击对象 | 4 | state4:WalkHori:projectile_emission:9.0.0@f0,3,7,11,12,16,21[+0]x8/1; state4:WalkVert:projectile_emission:9.0.0@f0,21[+0]x3/1 |
| `11.0.0` | 喷血尸 | #GUSHER | 原版回调来源链攻击对象 | 4 | state4:WalkHori:attack_effect:1000.23.0(CREEP_GREEN)@f0,1,2,3,4,6,7,8,9,10,11,14,15,16,17,18[+0]x34/1; state4:WalkHori:projectile_emission:9.0.0@f0,1,3,4,5,6,7,8,9,11,12,16,17,19,21[+1]x28/2; state4:WalkVert:attack_effect:1000.23.0(CREEP_GREEN)@f0,1,2,3,4,6,8,9,10,11,13,15,17,18,20[+0]x29/1; state4:WalkVert:projectile_emission:9.0.0@f0,1,2,3,4,5,9,10,11,12,13,14,15,16,17,18,19,20,21[+1]x34/2 |
| `12.0.0` | 呕血头 | #HORF | 原版回调来源链攻击对象 | 0 | state0:Attack:projectile_emission:9.0.0@f3[+1]x133/8 |
| `14.0.0` | 狙击蝇 | #POOTER | 原版回调来源链攻击对象 | 3,4,8 | state3:Fly:attack_effect:1000.23.0(CREEP_GREEN)@f0,1[+0]x9/1; state3:Fly:summon_or_split_relation:96.0.0@f0[+0]x1/1; state4:Attack:summon_or_split_relation:18.0.0@f13[+0]x1/1; state4:Fly:attack_effect:1000.23.0(CREEP_GREEN)@f0,1[+0]x98/1; state8:Attack:attack_effect:1000.23.0(CREEP_GREEN)@f3,10[+0]x10/1; state8:Attack:projectile_emission:9.0.0@f5[+1]x54/6 |
| `14.1.0` | 超级狙击蝇 | #SUPER_POOTER | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f5[+1]x24/2 |
| `14.2.0` | 堕化狙击蝇 | #TAINTED_POOTER | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f6,7,12[+0]x36/1 |
| `15.0.0` | 肉团 | #CLOTTY | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f9[+1]x144/3 |
| `15.1.0` | 焦油团 | #CLOT | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f11[+0]x152/2 |
| `15.2.0` | 以撒肉团 | #IBLOB | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f9[+1]x48/1 |
| `15.3.0` | 烤肉团 | #GRILLED_CLOTTY | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f2[+1]x272/1 |
| `16.0.0` | 棉花怪 | #MULLIGAN | 原版回调来源链攻击对象 | 4,5 | state4:WalkHori:summon_or_split_relation:13.0.0@f0[+1]x8/2; state4:WalkVert:summon_or_split_relation:13.0.0@f0,1,9,13,14,20[+1]x31/3; state4:WalkVert:summon_or_split_relation:14.0.0@f0,9,13[+1]x5/2; state4:WalkVert:summon_or_split_relation:18.0.0@f0,9,13,14,20[+1]x8/3; state5:WalkVert:projectile_emission:9.0.0@f6,10[+1]x8/1; state5:WalkVert:summon_or_split_relation:13.0.0@f6,10[+1]x5/1; state5:WalkVert:summon_or_split_relation:14.0.0@f10[+1]x1/1; state5:WalkVert:summon_or_split_relation:18.0.0@f6,10[+1]x2/1 |
| `16.1.0` | 灰棉花怪 | #MULLIGOON | 原版回调来源链攻击对象 | 4,5 | state4:WalkHori:bomb_emission:4.3.0@f0[+1]x1/1; state4:WalkHori:projectile_emission:9.0.0@f0[+1]x4/1; state4:WalkVert:bomb_emission:4.3.0@f0[+1]x3/1; state4:WalkVert:projectile_emission:9.0.0@f0[+1]x12/1; state5:WalkHori:bomb_emission:4.3.0@f10[+1]x1/1; state5:WalkHori:projectile_emission:9.0.0@f10[+1]x8/1 |
| `23.2.0` | 阴湿冲刺蝇蛆 | #DANK_CHARGER | 原版回调来源链攻击对象 | 8 | state8:Attack Down:attack_effect:1000.26.0@f0,1,2[+0]x26/1; state8:Attack Hori:attack_effect:1000.26.0@f0,1,2[+0]x56/1; state8:Attack Up:attack_effect:1000.26.0@f0,1,2[+0]x21/1 |
| `25.0.0` | 炸弹苍蝇 | #BOOM_FLY | 原版回调来源链攻击对象 | 4 | state4:Fly:attack_effect:1000.1.0(BOMB_EXPLOSION)@f0,1[+1]x2/1 |
| `25.4.0` | 骷髅苍蝇 | #BONE_FLY | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.1.0@f6[+0]x17/2 |
| `26.0.0` | 大嘴头 | #MAW | 原版回调来源链攻击对象 | 8 | state8:Shoot:projectile_emission:9.0.0@f3[+1]x29/1 |
| `26.2.0` | 灵能大嘴头 | #PSYCHIC_MAW | 原版回调来源链攻击对象 | 8 | state8:Shoot:projectile_emission:9.0.0@f5[+0]x12/2 |
| `27.0.0` | 寄居骷髅 | #HOST | 原版回调来源链攻击对象 | 8 | state8:Shoot:projectile_emission:9.0.0@f25[+0]x15/2 |
| `27.1.0` | 血肉寄居骷髅 | #RED_HOST | 原版回调来源链攻击对象 | 8 | state8:Shoot:projectile_emission:9.0.0@f23[+1]x5/1 |
| `27.3.0` | 化石寄居骷髅 | #HARD_HOST | 原版回调来源链攻击对象 | 8 | state8:Shoot:attack_effect:1000.72.2@f55[+0]x1/1 |
| `29.2.0` | 卵囊跳跳尸 | #EGGY | 原版回调来源链攻击对象 | 4 | state4:Hop:attack_effect:1000.25.0@f18[+0]x12/2 |
| `29.3.0` | 堕化跳跳尸 | #TAINTED_HOPPER | 原版回调来源链攻击对象 | 4 | state4:Hop2:projectile_emission:9.0.0@f18[+0]x72/2 |
| `30.0.0` | 脓液囊 | #BOIL | 原版回调来源链攻击对象 | 8 | state8:Shoot:projectile_emission:9.0.0@f13[+0]x22/2 |
| `30.1.0` | 吐根脓液囊 | #GUT | 原版回调来源链攻击对象 | 8 | state8:Shoot:projectile_emission:9.0.0@f13[+0]x4/2 |
| `30.2.0` | 卵囊 | #SACK | 原版回调来源链攻击对象 | 8 | state8:Shoot:summon_or_split_relation:85.0.0@f11[+1]x6/2 |
| `31.0.0` | 吐血蝇蛆 | #SPITTY | 原版回调来源链攻击对象 | 9 | state9:Attack Down:projectile_emission:9.0.0@f7[+0]x1/1; state9:Attack Hori:projectile_emission:9.0.0@f7[+0]x11/2 |
| `31.1.0` | 堕化吐血蝇蛆 | #TAINTED_SPITTY | 原版回调来源链攻击对象 | 4,9 | state4:Move Down:projectile_emission:9.0.0@f7[+0]x17/2; state4:Move Hori:projectile_emission:9.0.0@f7[+0]x246/3; state4:Move Up:projectile_emission:9.0.0@f7[+0]x7/1; state9:Attack Down:projectile_emission:9.0.0@f7[+0]x20/1; state9:Attack Hori:projectile_emission:9.0.0@f1,7[+0]x204/3 |
| `34.0.0` | 飞跃尸 | #LEAPER | 原版回调来源链攻击对象 | 7 | state7:BigJumpDown:projectile_emission:9.0.0@f23[+0]x16/2 |
| `34.1.0` | 黏性飞跃尸 | #STICKY_LEAPER | 原版回调来源链攻击对象 | 4,7 | state4:Hop:attack_effect:1000.26.0@f18[+0]x43/3; state7:BigJumpDown:attack_effect:1000.26.0@f23[+0]x4/2; state7:BigJumpDown:projectile_emission:9.0.0@f23[+0]x24/2 |
| `38.0.0` | 宝宝 | #BABY | 原版回调来源链攻击对象 | 4 | state4:Attack:projectile_emission:9.0.0@f6[+0]x5/2 |
| `38.1.0` | 天使宝宝 | #ANGELIC_BABY | 原版回调来源链攻击对象 | 4 | state4:Attack:projectile_emission:9.0.0@f6[+0]x24/2 |
| `38.3.0` | 皱皮宝宝 | #WRINKLY_BABY | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f12[+0]x18/2 |
| `39.0.0` | 开膛怪 | #VIS | 原版回调来源链攻击对象 | 9 | state9:Attack01Down:laser_emission:7.1.0@f29[+0]x1/1; state9:Attack01Horiz:laser_emission:7.1.0@f29[+0]x5/2 |
| `39.1.0` | 双向开膛怪 | #DOUBLE_VIS | 原版回调来源链攻击对象 | 9 | state9:Attack02Horiz:laser_emission:7.1.0@f31[+0]x12/2 |
| `39.2.0` | 蛆虫开膛怪 | #CHUBBER | 原版回调来源链攻击对象 | 10 | state10:Attack03Horiz:summon_or_split_relation:39.22.0@f19[+0]x8/2 |
| `39.3.0` | 结痂双向开膛怪 | #SCARRED_DOUBLE_VIS | 原版回调来源链攻击对象 | 9 | state9:Attack04Horiz:laser_emission:7.1.0@f31[+0]x24/2 |
| `40.1.0` | 结痂脏团 | #SCARRED_GUTS | 原版回调来源链攻击对象 | 4 | state4:Roll:attack_effect:1000.22.0@f0,2,4,6,8,10,12,14,16,18,20,22[+0]x138/1 |
| `40.2.0` | 沥青脏团 | #SLOG | 原版回调来源链攻击对象 | 4 | state4:Roll:attack_effect:1000.26.0@f0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23[+0]x124/1 |
| `41.4.0` | 黑骑士 | #BLACK_KNIGHT | 原版回调来源链攻击对象 | 4 | state4:Hori:attack_effect:1000.147.0@f0,2,4,6,8,10,12,14,16,18,20[+0]x44/1; state4:Hori:attack_effect:1000.148.0@f10,20[+0]x6/1 |
| `55.2.0` | 神圣水蛭 | #HOLY_LEECH | 原版回调来源链攻击对象 | 1 | state1:Hori:summon_or_split_relation:96.0.0@f0[+0]x1/1 |
| `56.0.0` | 肿块 | #LUMP | 原版回调来源链攻击对象 | 8 | state8:Spit:projectile_emission:9.0.0@f5[+0]x27/2 |
| `57.0.0` | 大脑 | #MEMBRAIN | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f30[+0]x48/2 |
| `57.1.0` | 大脏团 | #MAMA_GUTS | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f30[+0]x48/2 |
| `57.2.0` | 腐烂大脏团 | #DEAD_MEAT | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f30[+0]x48/2 |
| `59.0.0` | 弗莱德 | #FRED | 原版回调来源链攻击对象 | 6,8 | state6:JumpDownHead:projectile_emission:9.0.0@f30[+0]x56/3; state6:JumpUpHead:projectile_emission:9.0.0@f30[+0]x12/2; state8:Attack:projectile_emission:9.0.0@f8[+0]x2/2 |
| `60.0.0` | 眼睛 | #EYE | 已验证预警规则 | 8 | - |
| `60.1.0` | 血丝眼 | #BLOODSHOT_EYE | 严格 State/动画映射 | 8 | - |
| `60.2.0` | 圣眼 | #HOLY_EYE | 原版回调来源链攻击对象 | 8 | state8:Attack:attack_effect:1000.19.2@f10,17,24,31[+0]x8/1 |
| `61.0.0` | 吸血蚊 | #SUCKER | 原版回调来源链攻击对象 | 3 | state3:Fly:projectile_emission:9.0.0@f0,1[+1]x8/1 |
| `80.0.0` | 连体苍蝇 | #MOTER | 原版回调来源链攻击对象 | 3 | state3:Fly:summon_or_split_relation:18.0.0@f0,1[+1]x8/1 |
| `86.0.0` | 店主 | #KEEPER | 原版回调来源链攻击对象 | 8 | state8:ShootDown:projectile_emission:9.0.0@f6[+0]x10/2 |
| `87.0.0` | 吐根尸 | #GURGLE | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f6[+0]x5/2 |
| `87.1.0` | 吐火尸 | #CRACKLE | 原版回调来源链攻击对象 | 4,8 | state4:Attack:attack_effect:1000.147.0@f31[+0]x13/2; state8:Attack:attack_effect:1000.147.0@f1,3,5,7,9,11,13,15,17,19,21,23,25,26,27,28,29,30,31[+0]x94/3; state8:Attack:attack_effect:1000.148.0@f7,23,24,27,31[+0]x32/3; state8:Attack:projectile_emission:9.0.0@f6[+0]x16/3 |
| `88.0.0` | 行走脓液囊 | #WALKING_BOIL | 原版回调来源链攻击对象 | 8 | state8:Shoot:projectile_emission:9.0.0@f13[+0]x21/2 |
| `88.1.0` | 行走吐根脓液囊 | #WALKING_GUT | 原版回调来源链攻击对象 | 8 | state8:Shoot:projectile_emission:9.0.0@f13[+0]x6/2 |
| `88.2.0` | 行走卵囊 | #WALKING_SACK | 原版回调来源链攻击对象 | 8 | state8:Shoot:summon_or_split_relation:85.0.0@f13[+0]x11/2 |
| `90.0.0` | 上吊店主 | #HANGER | 原版回调来源链攻击对象 | 1,8 | state1:Head01:summon_or_split_relation:96.0.0@f0[+0]x4/2; state1:Head03:summon_or_split_relation:96.0.0@f1[+0]x2/1; state8:AttackHead01:projectile_emission:9.0.0@f7[+0]x84/2; state8:AttackHead03:projectile_emission:9.0.0@f7[+0]x42/1 |
| `92.0.0` | 心脏 | #HEART | 原版回调来源链攻击对象 | 8 | state8:HeartAttack:projectile_emission:9.0.0@f13[+0]x24/2 |
| `92.1.0` | 半边心脏 | #HALF_HEART | 原版回调来源链攻击对象 | 8 | state8:HeartAttack:projectile_emission:9.0.0@f13[+0]x80/2 |
| `94.0.0` | 大蜘蛛 | #BIG_SPIDER | 原版回调来源链攻击对象 | 4 | state4:Idle:summon_or_split_relation:85.0.0@f0[+1]x2/1; state4:Walk:summon_or_split_relation:85.0.0@f0,3[+1]x6/1 |
| `205.0.0` | 蜘蛛巢 | #NEST | 原版回调来源链攻击对象 | 4,8 | state4:WalkHori:summon_or_split_relation:29.1.0@f0[+1]x1/1; state4:WalkHori:summon_or_split_relation:94.0.0@f8[+1]x1/1; state4:WalkVert:summon_or_split_relation:94.0.0@f0[+1]x1/1; state8:WalkHori:summon_or_split_relation:85.0.0@f11,12,17,18[+1]x4/1; state8:WalkVert:summon_or_split_relation:85.0.0@f14[+1]x1/1 |
| `206.0.0` | 生崽长腿蛛 | #BABY_LONG_LEGS | 原版回调来源链攻击对象 | 8 | state8:Lay Egg:summon_or_split_relation:85.0.0@f25[+1]x8/1 |
| `206.1.0` | 小生崽长腿蛛 | #SMALL_BABY_LONG_LEGS | 原版回调来源链攻击对象 | 8 | state8:Lay Egg:attack_effect:1000.25.0@f27[+0]x5/2; state8:Lay Egg:summon_or_split_relation:30.2.0@f27[+0]x5/2 |
| `207.0.0` | 疯狂长腿蛛 | #CRAZY_LONG_LEGS | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f21[+1]x32/2 |
| `207.1.0` | 小疯狂长腿蛛 | #SMALL_CRAZY_LONG_LEGS | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f23[+0]x60/2 |
| `208.1.0` | 苍白肥仔 | #PALE_FATTY | 原版回调来源链攻击对象 | 8 | state8:AttackHori:projectile_emission:9.0.0@f22[+0]x24/2 |
| `208.2.0` | 燃烧肥仔 | #FLAMING_FATTY | 原版回调来源链攻击对象 | 4,8 | state4:WalkHori:summon_or_split_relation:33.10.0@f0[+1]x1/1; state4:WalkVert:summon_or_split_relation:33.10.0@f0,7[+1]x2/1; state8:AttackHori:summon_or_split_relation:33.10.0@f20[+1]x1/1; state8:AttackVert:summon_or_split_relation:33.10.0@f20[+1]x2/1 |
| `209.0.0` | 充血肥仔 | #FAT_SACK | 原版回调来源链攻击对象 | 7 | state7:Land:attack_effect:1000.22.0@f6[+0]x15/2; state7:Land:projectile_emission:9.0.0@f6[+0]x18/2 |
| `216.0.0` | 甩头尸的身体 | #SWINGER | 原版回调来源链攻击对象 | 1 | state1:Body:summon_or_split_relation:216.1.0@f1[+0]x2/2; state1:Body:summon_or_split_relation:216.10.0@f1[+0]x24/2 |
| `219.0.0` | 巫鬼 | #WIZOOB | 原版回调来源链攻击对象 | 8 | state8:ShootDown:projectile_emission:9.0.0@f14[+0]x31/2 |
| `220.1.0` | 阴湿粪团 | #DANK_SQUIRT | 原版回调来源链攻击对象 | 4,8 | state4:Attack01:attack_effect:1000.26.0@f39[+0]x8/2; state4:Slide:attack_effect:1000.26.0@f0,1,3,4[+0]x169/3; state8:Attack01:attack_effect:1000.26.0@f38,39[+0]x12/3 |
| `223.0.0` | 粪堆 | #DINGA | 原版回调来源链攻击对象 | 8 | state8:Attack:summon_or_split_relation:217.0.0@f30[+0]x10/2 |
| `224.0.0` | 乌伯 | #OOB | 原版回调来源链攻击对象 | 13 | state13:Spawn:summon_or_split_relation:32.0.0@f28[+0]x4/2 |
| `226.0.0` | 皱脸尸 | #SKINNY | 原版回调来源链攻击对象 | 4 | state4:WalkHori:attack_effect:1000.22.0(CREEP_RED)@f0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21[+1]x266/3; state4:WalkVert:attack_effect:1000.22.0(CREEP_RED)@f0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21[+1]x193/3 |
| `227.0.0` | 骷髅仔 | #BONY | 原版回调来源链攻击对象 | 8 | state8:AttackHori:projectile_emission:9.1.0@f5[+0]x29/3; state8:AttackUp:projectile_emission:9.1.0@f5[+0]x6/1 |
| `227.1.0` | 神圣骷髅仔 | #HOLY_BONY | 原版回调来源链攻击对象 | 8 | state8:AttackDown:projectile_emission:9.1.0@f5[+0]x2/2; state8:AttackLeft:projectile_emission:9.1.0@f5[+0]x2/2; state8:AttackRight:projectile_emission:9.1.0@f5[+0]x4/2 |
| `229.0.0` | 肿瘤 | #TUMOR | 原版回调来源链攻击对象 | 4 | state4:ShootUp:projectile_emission:9.0.0@f8[+1]x54/1 |
| `229.1.0` | 行星肿瘤 | #PLANETOID | 原版回调来源链攻击对象 | 4 | state4:Shoot:projectile_emission:9.0.0@f10[+0]x15/2 |
| `230.0.0` | 小卡米洛 | #CAMILLO_JR | 原版回调来源链攻击对象 | 4 | state4:ShootDown:laser_emission:7.2.0@f18[+0]x1/1 |
| `237.0.0` | 肉山幼崽 | #GURGLING | 原版回调来源链攻击对象 | 3,8 | state3:Stop:attack_effect:1000.22.0@f1,2,5[+0]x4/2; state3:Stop:projectile_emission:9.0.0@f8[+0]x30/2; state8:ChargeDown:attack_effect:1000.22.0@f0,1,2,3[+0]x6/2; state8:ChargeLeft:attack_effect:1000.22.0@f0,1,2,3[+0]x17/2; state8:ChargeRight:attack_effect:1000.22.0@f0,1,2,3[+0]x15/2 |
| `238.0.0` | 喷毒尸 | #SPLASHER | 原版回调来源链攻击对象 | 4 | state4:WalkHori:projectile_emission:9.0.0@f4,6,7,14,15,16,19[+1]x7/1; state4:WalkVert:projectile_emission:9.0.0@f1,10,11[+1]x4/1 |
| `240.0.0` | 爬墙蛛 | #WALL_CREEP | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f9,12,15[+1]x12/1 |
| `240.1.0` | 豆奶爬墙蛛 | #SOY_CREEP | 原版回调来源链攻击对象 | 8 | state8:AttackLoop:projectile_emission:9.4.0@f1,3[+0]x84/1; state8:AttackStart:projectile_emission:9.4.0@f11,13,15[+0]x6/1 |
| `240.3.0` | 堕化豆奶爬墙蛛 | #TAINTED_SOY_CREEP | 原版回调来源链攻击对象 | 8 | state8:AttackLoop:projectile_emission:9.4.0@f0,1,2,3[+0]x224/1; state8:AttackStart:projectile_emission:9.4.0@f12,15[+0]x16/1 |
| `241.0.0` | 愤怒爬墙蛛 | #RAGE_CREEP | 原版回调来源链攻击对象 | 8 | state8:Attack:laser_emission:7.1.0@f17[+0]x6/2 |
| `242.0.0` | 盲眼爬墙蛛 | #BLIND_CREEP | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f11[+0]x36/2 |
| `243.0.0` | 连体吐血蝇蛆 | #CONJOINED_SPITTY | 原版回调来源链攻击对象 | 9 | state9:Attack Down:projectile_emission:9.0.0@f5[+1]x6/1; state9:Attack Hori:projectile_emission:9.0.0@f5[+1]x12/1 |
| `244.0.0` | 圆头虫 | #ROUND_WORM | 原版回调来源链攻击对象 | 8 | state8:DigOut:projectile_emission:9.0.0@f37[+1]x14/3 |
| `244.1.0` | 管头虫 | #TUBE_WORM | 原版回调来源链攻击对象 | 8 | state8:DigOut:projectile_emission:9.0.0@f48,49,50,51,52,53,54,55,56,57[+0]x20/1 |
| `244.2.0` | 堕化圆头虫 | #TAINTED_ROUND_WORM | 原版回调来源链攻击对象 | 6,8 | state6:DigIn:projectile_emission:9.0.0@f5,6[+0]x32/2; state8:DigOut:projectile_emission:9.0.0@f39[+0]x4/2 |
| `244.3.0` | 堕化管头虫 | #TAINTED_TUBE_WORM | 原版回调来源链攻击对象 | 8 | state8:DigOut:projectile_emission:9.0.0@f59,64,69,74[+0]x8/1 |
| `250.0.0` | 炸弹蜘蛛 | #TICKING_SPIDER | 原版回调来源链攻击对象 | 4 | state4:Walk:projectile_emission:9.0.0@f4[+0]x8/1 |
| `253.0.0` | 灵能肿瘤 | #PSY_TUMOR | 原版回调来源链攻击对象 | 4 | state4:ShootDown:projectile_emission:9.0.0@f10[+0]x42/2; state4:ShootUp:projectile_emission:9.0.0@f10[+0]x48/2 |
| `255.0.0` | 夜行圆头虫 | #NIGHT_CRAWLER | 原版回调来源链攻击对象 | 8 | state8:DigOut:projectile_emission:9.0.0@f15[+0]x24/2 |
| `257.0.0` | 连体肥仔 | #CONJOINED_FATTY | 原版回调来源链攻击对象 | 8 | state8:AttackHori:attack_effect:1000.23.0@f22,23,24,25,26,27,28[+0]x7/1 |
| `257.1.0` | 死寂连体肥仔 | #BLUE_CONJOINED_FATTY | 原版回调来源链攻击对象 | 8 | state8:AttackHori:projectile_emission:9.0.0@f22[+0]x1/1 |
| `258.0.0` | 胖蝙蝠 | #FAT_BAT | 原版回调来源链攻击对象 | 4 | state4:Shooting:projectile_emission:9.0.0@f7[+0]x4/2 |
| `259.0.0` | 小恶魔 | #IMP | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f1[+0]x22/2 |
| `260.10.0` | 小恶灵 | #LIL_HAUNT | 原版回调来源链攻击对象 | 4 | state4:Shoot:projectile_emission:9.0.0@f5[+0]x1/1 |
| `276.0.0` | 肥圆虫 | #ROUNDY | 原版回调来源链攻击对象 | 8 | state8:DigIn:attack_effect:1000.61.0@f16[+1]x5/1; state8:DigOut:attack_effect:1000.61.0@f1[+0]x78/3; state8:DigOut:projectile_emission:9.0.0@f38,39[+0]x79/3 |
| `277.0.0` | 黑色骷髅仔 | #BLACK_BONY | 原版回调来源链攻击对象 | 8 | state8:AttackHori:projectile_emission:9.1.0@f5[+0]x21/2 |
| `282.0.0` | 大肉团 | #MEGA_CLOTTY | 原版回调来源链攻击对象 | 8 | state8:Attack:attack_effect:1000.22.0@f30[+0]x4/1; state8:Attack:projectile_emission:9.0.0@f30[+0]x54/2; state8:Attack:summon_or_split_relation:15.0.0@f30[+0]x2/1 |
| `283.0.0` | 骸骨骑士 | #BONE_KNIGHT | 原版回调来源链攻击对象 | 4,8 | state4:Down:attack_effect:1000.22.0@f2,3,9,10,16,17[+0]x6/1; state4:Hori:attack_effect:1000.22.0@f0,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,18,19,20,21[+0]x22/1; state8:Hori:attack_effect:1000.22.0@f1,2,3,9,10,16,17[+0]x8/1; state8:Up:attack_effect:1000.22.0@f7,14,21[+0]x3/1 |
| `284.0.0` | 独眼尸 | #CYCLOPIA | 原版回调来源链攻击对象 | 4,8 | state4:WalkHori:attack_effect:1000.22.0(CREEP_RED)@f0,1,2,3,4,5,6,8,9,12,13,16,20[+1]x18/1; state4:WalkVert:attack_effect:1000.22.0(CREEP_RED)@f0,1,2,3,5,7,8,9,10,11,14,15,16,17,18,21[+1]x26/1; state8:WalkHori:attack_effect:1000.22.0(CREEP_RED)@f10[+1]x1/1; state8:WalkHori:projectile_emission:9.0.0@f11[+1]x1/1; state8:WalkVert:attack_effect:1000.22.0(CREEP_RED)@f1,2,4,12,17,19[+1]x6/1; state8:WalkVert:projectile_emission:9.0.0@f14,15[+1]x2/1 |
| `285.0.0` | 红色巫鬼 | #RED_GHOST | 原版回调来源链攻击对象 | 8 | state8:ShootDown:laser_emission:7.1.0@f15[+0]x4/2 |
| `287.0.0` | 妈妈的死手 | #MOMS_DEAD_HAND | 原版回调来源链攻击对象 | 7 | state7:JumpDown:attack_effect:1000.72.0@f13[+0]x7/2 |
| `288.0.0` | 小苍蝇公爵 | #DUKIE | 原版回调来源链攻击对象 | 8 | state8:Cough:summon_or_split_relation:256.0.0@f4[+0]x5/2 |
| `289.0.0` | 溃疡 | #ULCER | 原版回调来源链攻击对象 | 8 | state8:DigOut:projectile_emission:9.0.0@f43[+0]x1/1; state8:DigOut:summon_or_split_relation:256.0.0@f43[+0]x1/1 |
| `290.0.0` | 肉球 | #MEATBALL | 原版回调来源链攻击对象 | 8,9 | state8:Shoot1:projectile_emission:9.0.0@f7,9,11,13,15,17,19,21,23,25,27[+0]x11/1; state9:Shoot2:attack_effect:1000.22.0@f7,8,9,10,11,12[+0]x6/1 |
| `298.0.0` | 死寂脓液囊 | #BLUE_BOIL | 原版回调来源链攻击对象 | 8 | state8:Shoot:projectile_emission:9.0.0@f13[+0]x19/2 |
| `300.0.0` | 蘑菇 | #MUSHROOM | 原版回调来源链攻击对象 | 8,9 | state8:Reveal:projectile_emission:9.0.0@f2[+1]x40/1; state9:Reveal:projectile_emission:9.0.0@f2[+1]x40/1 |
| `303.0.0` | 水疱跳蛛 | #BLISTER | 原版回调来源链攻击对象 | 8 | state8:Attack:summon_or_split_relation:404.1.0@f7[+0]x1/1 |
| `305.0.0` | 迷你萌死戳 | #MINISTRO | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f9[+1]x10/1 |
| `307.0.0` | 焦油小子 | #TAR_BOY | 原版回调来源链攻击对象 | 6,8 | state6:TeleportEnd:attack_effect:1000.26.0@f5,6,13,14[+0]x4/2; state8:Attack:attack_effect:1000.26.0@f3,4,6,11,12,14,19,20,22,27,28,30,35,36,38[+0]x21/2; state8:Attack:projectile_emission:9.0.0@f19[+0]x24/2 |
| `308.0.0` | 小瘘管 | #FISTULOID | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.0.0@f10[+0]x9/2 |
| `309.0.0` | 焦油囊 | #GUSH | 原版回调来源链攻击对象 | 3,1 | state1:Spew:attack_effect:1000.26.0@f0[+0]x1/1; state3:Spew:attack_effect:1000.26.0@f1,2,3,5,6,7,8,9[+0]x15/1 |
| `311.0.0` | 水雷头 | #MR_MINE | 原版回调来源链攻击对象 | 6 | state6:DigOut:summon_or_split_relation:311.10.0@f1[+0]x16/2 |
| `806.0.0` | 充水肥仔 | #BUBBLES | 原版回调来源链攻击对象 | 8 | state8:AttackHori:projectile_emission:9.3.0@f3,22,23,24,25,26,27,28,29,30,31,32[+0]x25/1; state8:AttackVert:projectile_emission:9.0.0@f22,23,24,25,26,27,28,29,30,31,32[+0]x12/1 |
| `808.0.0` | 萤火苍蝇 | #WILLO | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.4.0@f25[+0]x33/2 |
| `812.0.0` | 水栖呕血头 | #SUB_HORF | 原版回调来源链攻击对象 | 3 | state3:Shake01:projectile_emission:9.0.0@f1[+1]x1/1; state3:Shake03:projectile_emission:9.0.0@f1,2[+1]x2/1; state3:Shake07:projectile_emission:9.0.0@f0[+1]x1/1; state3:Shake08:projectile_emission:9.0.0@f2[+1]x1/1; state3:Shake10:projectile_emission:9.0.0@f0[+1]x1/1; state3:Shake11:projectile_emission:9.0.0@f2[+1]x1/1 |
| `820.0.0` | 丹尼 | #DANNY | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.9.0@f13[+0]x14/2; state8:Attack:summon_or_split_relation:818.0.3@f13[+0]x2/2; state8:Attack:summon_or_split_relation:818.0.1@f13[+0]x2/2 |
| `820.1.0` | 火炭小子 | #COAL_BOY | 原版回调来源链攻击对象 | 8 | state8:Attack:summon_or_split_relation:33.11.2@f13[+0]x3/2; state8:Attack:summon_or_split_relation:33.11.1@f13[+0]x6/2; state8:Attack:summon_or_split_relation:33.11.3@f13[+0]x5/2; state8:Attack:summon_or_split_relation:818.2.3@f13[+0]x1/1; state8:Attack:summon_or_split_relation:818.2.2@f13[+0]x1/1 |
| `821.0.0` | 爆破者 | #BLASTER | 原版回调来源链攻击对象 | 8 | state8:Attack:summon_or_split_relation:819.0.0@f17[+0]x6/2 |
| `823.0.0` | 地震肥仔 | #QUAKEY | 原版回调来源链攻击对象 | 8 | state8:Jump:projectile_emission:9.9.0@f20[+0]x32/2 |
| `824.1.0` | 烤肉轮 | #GRILLED_GYRO | 原版回调来源链攻击对象 | 8 | state8:DashLeft:summon_or_split_relation:33.10.0@f1,3,5,7[+0]x7/1; state8:DashLeftDown:summon_or_split_relation:33.10.0@f7[+0]x1/1; state8:DashLeftUp:summon_or_split_relation:33.10.0@f3,7[+0]x2/1; state8:DashUp:summon_or_split_relation:33.10.0@f1,3,5[+0]x3/1 |
| `825.0.0` | 火焰圆头虫 | #FIRE_WORM | 原版回调来源链攻击对象 | 6 | state6:DigOut:summon_or_split_relation:33.10.1@f39[+0]x6/2 |
| `828.0.0` | 死灵骷髅头 | #NECRO | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.1.0@f9[+0]x12/2 |
| `829.0.0` | 鼹鼠 | #MOLE | 原版回调来源链攻击对象 | 8 | state8:Shoot:projectile_emission:9.0.0@f5[+0]x18/2 |
| `829.1.0` | 堕化鼹鼠 | #TAINTED_MOLE | 原版回调来源链攻击对象 | 6,8 | state6:DigOut:attack_effect:1000.61.0@f7[+0]x4/2; state8:Shoot:projectile_emission:9.0.0@f5[+0]x48/2 |
| `830.0.0` | 肥骷髅仔 | #BIG_BONY | 原版回调来源链攻击对象 | 8 | state8:AttackHori:summon_or_split_relation:830.10.0@f13[+0]x4/2 |
| `831.0.0` | 流肠肥仔 | #GUTTED_FATTY | 原版回调来源链攻击对象 | 8 | state8:Attack:summon_or_split_relation:831.20.0@f29[+0]x1/1 |
| `831.20.0` | 溃烂脏团 | #FESTERING_GUTS | 原版回调来源链攻击对象 | 4,13,6 | state4:Land:attack_effect:1000.22.0@f1[+0]x1/1; state6:Spin:attack_effect:1000.22.0@f0,2,4,6,8,10[+0]x11/1; state13:Spawn:summon_or_split_relation:23.0.0@f17[+0]x1/1 |
| `833.0.0` | 烛台鬼 | #CANDLER | 原版回调来源链攻击对象 | 3 | state3:Attack:summon_or_split_relation:33.10.0@f13[+0]x7/2 |
| `835.0.0` | 窥眼肥仔 | #PEEPING_FATTY | 原版回调来源链攻击对象 | 8 | state8:AttackLeft:projectile_emission:9.0.0@f22[+0]x24/3; state8:AttackRight:projectile_emission:9.0.0@f22[+0]x18/2 |
| `836.0.0` | 追踪开膛怪 | #VIS_VERSA | 原版回调来源链攻击对象 | 9 | state9:Attack01Horiz:laser_emission:7.1.0@f31[+0]x6/2 |
| `838.0.0` | 二级萤火苍蝇 | #LEVEL_2_WILLO | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.4.0@f27[+0]x6/2 |
| `840.0.0` | 跳跳脑 | #PON | 原版回调来源链攻击对象 | 4 | state4:Hop:attack_effect:1000.22.0@f18[+0]x26/2 |
| `844.0.0` | 轰炸怪 | #BOMBGAGGER | 原版回调来源链攻击对象 | 8 | state8:AttackLeft:bomb_emission:4.17.0@f19[+0]x1/1 |
| `854.0.0` | 水蛭成虫 | #ADULT_LEECH | 原版回调来源链攻击对象 | 3 | state3:MoveHori:projectile_emission:9.0.0@f2,3,8,10[+0]x48/1 |
| `856.0.0` | 毒气囊 | #GASBAG | 原版回调来源链攻击对象 | 8 | state8:Attack:summon_or_split_relation:868.0.0@f37,43,49,55[+0]x8/1 |
| `857.0.0` | 血红团 | #COHORT | 原版回调来源链攻击对象 | 8,9 | state8:Attack1:projectile_emission:9.0.0@f15[+0]x3/2; state9:Attack2:projectile_emission:9.0.0@f32[+0]x36/2; state9:Attack2:projectile_emission:9.11.0@f32[+0]x2/2; state9:Attack2:summon_or_split_relation:24.1.0@f55[+0]x1/1 |
| `859.0.0` | 飘浮寄居骷髅 | #FLOAST | 原版回调来源链攻击对象 | 8 | state8:Shoot:projectile_emission:9.0.0@f25[+0]x15/2 |
| `862.0.0` | 囊肿 | #CYST | 原版回调来源链攻击对象 | 4 | state4:Roll:projectile_emission:9.0.0@f2,5,8,9,12,15,19,22[+0]x8/1 |
| `865.0.0` | 内脏开膛怪 | #EVIS | 原版回调来源链攻击对象 | 8 | state8:Attack01Horiz:summon_or_split_relation:865.10.0@f17[+0]x1/1 |
| `872.0.0` | 便便肉团 | #CLOGGY | 原版回调来源链攻击对象 | 8 | state8:Attack:projectile_emission:9.3.0@f12[+0]x96/2 |
| `873.0.0` | 蝇巢浮尸 | #FLY_TRAP | 原版回调来源链攻击对象 | 8 | state8:Attack01:summon_or_split_relation:18.0.0@f7[+0]x1/1 |
| `876.0.0` | 便便鼻涕虫 | #DUMP | 原版回调来源链攻击对象 | 16 | state16:Fade:attack_effect:1000.94.0@f6,14,15[+0]x4/1; state16:Spout0:attack_effect:1000.94.0@f1,3,5,7,9[+0]x6/1; state16:Spout0:attack_effect:1000.155.0@f1[+0]x2/1; state16:Spout0:projectile_emission:9.3.0@f0,1,2,3,4,5,7,9[+0]x22/1; state16:Spout1:attack_effect:1000.94.0@f0,1,3,5[+0]x5/1; state16:Spout1:projectile_emission:9.3.0@f1,2,3,4,5,6,7,8,9[+0]x16/1; state16:Spout2:attack_effect:1000.94.0@f0,1,4,5,8,9[+0]x7/1; state16:Spout2:projectile_emission:9.3.0@f0,1,2,4,5,6,7,8,10,11[+0]x14/1; state16:Spout3:attack_effect:1000.94.0@f2,8,10[+0]x5/1; state16:Spout3:projectile_emission:9.3.0@f1,2,4,5,8,9,13[+0]x10/1; state16:Spout4:attack_effect:1000.94.0@f1,2,7,8,9,10[+0]x6/1; state16:Spout4:projectile_emission:9.3.0@f0,2,6,7,8,13[+0]x8/1; state16:Spout5:attack_effect:1000.94.0@f0,1,6,7,8,9[+0]x6/1; state16:Spout5:projectile_emission:9.3.0@f2,3,12,13[+0]x4/1 |
| `876.1.0` | 便便鼻涕虫的头 | #DUMP_HEAD | 原版回调来源链攻击对象 | 4,8 | state4:Reference:attack_effect:1000.94.0@f3,9[+0]x5/1; state8:Reference:attack_effect:1000.94.0@f0,1,2,3,4,5,6,7,8,9,10,11[+0]x55/1 |
| `879.0.0` | 浮肿尸 | #BLOATY | 原版回调来源链攻击对象 | 8 | state8:AttackUpRight:attack_effect:1000.23.0@f22,23,24,25,26,27,28,29[+0]x8/1; state8:AttackUpRight:projectile_emission:9.0.0@f23,25,27,29[+0]x4/1 |
| `883.0.0` | 受生恶魔宝宝 | #BABY_BEGOTTEN | 原版回调来源链攻击对象 | 8 | state8:AttackRight:laser_emission:7.1.0@f17[+0]x4/2 |
| `885.0.0` | 邪教徒 | #CULTIST | 原版回调来源链攻击对象 | 8 | state8:Attack:summon_or_split_relation:409.1.0@f13[+0]x1/1 |
| `885.1.0` | 血腥邪教徒 | #BLOOD_CULTIST | 原版回调来源链攻击对象 | 3,8 | state3:Attack:attack_effect:1000.22.0@f32[+0]x3/2; state3:Attack:projectile_emission:9.0.0@f32[+0]x3/2; state8:Attack:attack_effect:1000.22.0@f13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32[+0]x116/2; state8:Attack:projectile_emission:9.0.0@f13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32[+0]x116/2 |
| `888.0.0` | 暗影肥仔 | #SHADY | 原版回调来源链攻击对象 | 8,9 | state8:Jump:attack_effect:1000.72.10@f20[+0]x8/2; state8:Jump:projectile_emission:9.0.0@f1,9,17,25,33[+0]x15/1; state9:AttackHori:projectile_emission:9.0.0@f22,30[+0]x9/2 |
| `890.0.0` | 漫步木乃伊 | #MAZE_ROAMER | 原版回调来源链攻击对象 | 9 | state9:AttackDown2:projectile_emission:9.16.0@f5[+0]x6/2; state9:AttackLeft2:projectile_emission:9.16.0@f5[+0]x13/2; state9:AttackRight2:projectile_emission:9.16.0@f5[+0]x1/1 |
| `891.1.0` | 黑山羊 | #BLACK_GOAT | 原版回调来源链攻击对象 | 9 | state9:Attack2:laser_emission:7.1.0@f32[+0]x16/2 |

## 严格攻击预测身份

| 精确身份 | 名称 | 严格时点键 | 证据摘要 |
| --- | --- | --- | --- |
| `12.0.0` | 呕血头 | 12.0.0:0:Attack | 12.0.0:0:Attack@f3[samples=133,runs=8] |
| `14.0.0` | 狙击蝇 | 14.0.0:8:Attack | 14.0.0:8:Attack@f5[samples=54,runs=6] |
| `14.1.0` | 超级狙击蝇 | 14.1.0:8:Attack | 14.1.0:8:Attack@f5[samples=24,runs=2] |
| `15.0.0` | 肉团 | 15.0.0:8:Attack | 15.0.0:8:Attack@f9[samples=144,runs=3] |
| `15.1.0` | 焦油团 | 15.1.0:8:Attack | 15.1.0:8:Attack@f11[samples=152,runs=2] |
| `16.0.0` | 棉花怪 | 16.0.0:4:WalkHori | 16.0.0:4:WalkHori@f0[samples=8,runs=2] |
| `25.4.0` | 骷髅苍蝇 | 25.4.0:8:Attack | 25.4.0:8:Attack@f6[samples=17,runs=2] |
| `26.2.0` | 灵能大嘴头 | 26.2.0:8:Shoot | 26.2.0:8:Shoot@f5[samples=12,runs=2] |
| `27.0.0` | 寄居骷髅 | 27.0.0:8:Shoot | 27.0.0:8:Shoot@f25[samples=15,runs=2] |
| `29.2.0` | 卵囊跳跳尸 | 29.2.0:4:Hop | 29.2.0:4:Hop@f18[samples=12,runs=2] |
| `29.3.0` | 堕化跳跳尸 | 29.3.0:4:Hop2 | 29.3.0:4:Hop2@f18[samples=72,runs=2] |
| `30.0.0` | 脓液囊 | 30.0.0:8:Shoot | 30.0.0:8:Shoot@f13[samples=22,runs=2] |
| `30.1.0` | 吐根脓液囊 | 30.1.0:8:Shoot | 30.1.0:8:Shoot@f13[samples=4,runs=2] |
| `30.2.0` | 卵囊 | 30.2.0:8:Shoot | 30.2.0:8:Shoot@f11[samples=6,runs=2] |
| `31.0.0` | 吐血蝇蛆 | 31.0.0:9:Attack Hori | 31.0.0:9:Attack Hori@f7[samples=11,runs=2] |
| `31.1.0` | 堕化吐血蝇蛆 | 31.1.0:4:Move Down,31.1.0:4:Move Hori | 31.1.0:4:Move Down@f7[samples=17,runs=2]; 31.1.0:4:Move Hori@f7[samples=246,runs=3] |
| `34.0.0` | 飞跃尸 | 34.0.0:7:BigJumpDown | 34.0.0:7:BigJumpDown@f23[samples=16,runs=2] |
| `34.1.0` | 黏性飞跃尸 | 34.1.0:4:Hop,34.1.0:7:BigJumpDown | 34.1.0:4:Hop@f18[samples=43,runs=3]; 34.1.0:7:BigJumpDown@f23[samples=28,runs=2] |
| `38.0.0` | 宝宝 | 38.0.0:4:Attack | 38.0.0:4:Attack@f6[samples=5,runs=2] |
| `38.1.0` | 天使宝宝 | 38.1.0:4:Attack | 38.1.0:4:Attack@f6[samples=24,runs=2] |
| `38.3.0` | 皱皮宝宝 | 38.3.0:8:Attack | 38.3.0:8:Attack@f12[samples=18,runs=2] |
| `39.0.0` | 开膛怪 | 39.0.0:9:Attack01Horiz | 39.0.0:9:Attack01Horiz@f29[samples=5,runs=2] |
| `39.1.0` | 双向开膛怪 | 39.1.0:9:Attack02Horiz | 39.1.0:9:Attack02Horiz@f31[samples=12,runs=2] |
| `39.2.0` | 蛆虫开膛怪 | 39.2.0:10:Attack03Horiz | 39.2.0:10:Attack03Horiz@f19[samples=8,runs=2] |
| `39.3.0` | 结痂双向开膛怪 | 39.3.0:9:Attack04Horiz | 39.3.0:9:Attack04Horiz@f31[samples=24,runs=2] |
| `56.0.0` | 肿块 | 56.0.0:8:Spit | 56.0.0:8:Spit@f5[samples=27,runs=2] |
| `57.0.0` | 大脑 | 57.0.0:8:Attack | 57.0.0:8:Attack@f30[samples=48,runs=2] |
| `57.1.0` | 大脏团 | 57.1.0:8:Attack | 57.1.0:8:Attack@f30[samples=48,runs=2] |
| `57.2.0` | 腐烂大脏团 | 57.2.0:8:Attack | 57.2.0:8:Attack@f30[samples=48,runs=2] |
| `59.0.0` | 弗莱德 | 59.0.0:6:JumpDownHead,59.0.0:6:JumpUpHead,59.0.0:8:Attack | 59.0.0:6:JumpDownHead@f30[samples=56,runs=3]; 59.0.0:6:JumpUpHead@f30[samples=12,runs=2]; 59.0.0:8:Attack@f8[samples=2,runs=2] |
| `60.0.0` | 眼睛 | 60.0.0:8:Shoot | 60.0.0:8:Shoot@f12[samples=36,seeds=2] |
| `86.0.0` | 店主 | 86.0.0:8:ShootDown | 86.0.0:8:ShootDown@f6[samples=10,runs=2] |
| `87.0.0` | 吐根尸 | 87.0.0:8:Attack | 87.0.0:8:Attack@f6[samples=5,runs=2] |
| `87.1.0` | 吐火尸 | 87.1.0:4:Attack,87.1.0:8:Attack | 87.1.0:4:Attack@f31[samples=13,runs=2]; 87.1.0:8:Attack@f6[samples=16,runs=3] |
| `88.0.0` | 行走脓液囊 | 88.0.0:8:Shoot | 88.0.0:8:Shoot@f13[samples=21,runs=2] |
| `88.1.0` | 行走吐根脓液囊 | 88.1.0:8:Shoot | 88.1.0:8:Shoot@f13[samples=6,runs=2] |
| `88.2.0` | 行走卵囊 | 88.2.0:8:Shoot | 88.2.0:8:Shoot@f13[samples=11,runs=2] |
| `90.0.0` | 上吊店主 | 90.0.0:1:Head01,90.0.0:8:AttackHead01 | 90.0.0:1:Head01@f0[samples=4,runs=2]; 90.0.0:8:AttackHead01@f7[samples=84,runs=2] |
| `92.0.0` | 心脏 | 92.0.0:8:HeartAttack | 92.0.0:8:HeartAttack@f13[samples=24,runs=2] |
| `92.1.0` | 半边心脏 | 92.1.0:8:HeartAttack | 92.1.0:8:HeartAttack@f13[samples=80,runs=2] |
| `206.1.0` | 小生崽长腿蛛 | 206.1.0:8:Lay Egg | 206.1.0:8:Lay Egg@f27[samples=10,runs=2] |
| `207.0.0` | 疯狂长腿蛛 | 207.0.0:8:Attack | 207.0.0:8:Attack@f21[samples=32,runs=2] |
| `207.1.0` | 小疯狂长腿蛛 | 207.1.0:8:Attack | 207.1.0:8:Attack@f23[samples=60,runs=2] |
| `208.1.0` | 苍白肥仔 | 208.1.0:8:AttackHori | 208.1.0:8:AttackHori@f22[samples=24,runs=2] |
| `209.0.0` | 充血肥仔 | 209.0.0:7:Land | 209.0.0:7:Land@f6[samples=33,runs=2] |
| `216.0.0` | 甩头尸的身体 | 216.0.0:1:Body | 216.0.0:1:Body@f1[samples=26,runs=2] |
| `219.0.0` | 巫鬼 | 219.0.0:8:ShootDown | 219.0.0:8:ShootDown@f14[samples=31,runs=2] |
| `220.1.0` | 阴湿粪团 | 220.1.0:4:Attack01,220.1.0:8:Attack01 | 220.1.0:4:Attack01@f39[samples=8,runs=2]; 220.1.0:8:Attack01@f38[samples=12,runs=3] |
| `223.0.0` | 粪堆 | 223.0.0:8:Attack | 223.0.0:8:Attack@f30[samples=10,runs=2] |
| `224.0.0` | 乌伯 | 224.0.0:13:Spawn | 224.0.0:13:Spawn@f28[samples=4,runs=2] |
| `227.0.0` | 骷髅仔 | 227.0.0:8:AttackHori | 227.0.0:8:AttackHori@f5[samples=29,runs=3] |
| `227.1.0` | 神圣骷髅仔 | 227.1.0:8:AttackDown,227.1.0:8:AttackLeft,227.1.0:8:AttackRight | 227.1.0:8:AttackDown@f5[samples=2,runs=2]; 227.1.0:8:AttackLeft@f5[samples=2,runs=2]; 227.1.0:8:AttackRight@f5[samples=4,runs=2] |
| `229.1.0` | 行星肿瘤 | 229.1.0:4:Shoot | 229.1.0:4:Shoot@f10[samples=15,runs=2] |
| `237.0.0` | 肉山幼崽 | 237.0.0:3:Stop | 237.0.0:3:Stop@f8[samples=30,runs=2] |
| `241.0.0` | 愤怒爬墙蛛 | 241.0.0:8:Attack | 241.0.0:8:Attack@f17[samples=6,runs=2] |
| `242.0.0` | 盲眼爬墙蛛 | 242.0.0:8:Attack | 242.0.0:8:Attack@f11[samples=36,runs=2] |
| `244.0.0` | 圆头虫 | 244.0.0:8:DigOut | 244.0.0:8:DigOut@f37[samples=14,runs=3] |
| `244.2.0` | 堕化圆头虫 | 244.2.0:6:DigIn,244.2.0:8:DigOut | 244.2.0:6:DigIn@f6[samples=32,runs=2]; 244.2.0:8:DigOut@f39[samples=4,runs=2] |
| `253.0.0` | 灵能肿瘤 | 253.0.0:4:ShootDown,253.0.0:4:ShootUp | 253.0.0:4:ShootDown@f10[samples=42,runs=2]; 253.0.0:4:ShootUp@f10[samples=48,runs=2] |
| `255.0.0` | 夜行圆头虫 | 255.0.0:8:DigOut | 255.0.0:8:DigOut@f15[samples=24,runs=2] |
| `258.0.0` | 胖蝙蝠 | 258.0.0:4:Shooting | 258.0.0:4:Shooting@f7[samples=4,runs=2] |
| `259.0.0` | 小恶魔 | 259.0.0:8:Attack | 259.0.0:8:Attack@f1[samples=22,runs=2] |
| `277.0.0` | 黑色骷髅仔 | 277.0.0:8:AttackHori | 277.0.0:8:AttackHori@f5[samples=21,runs=2] |
| `282.0.0` | 大肉团 | 282.0.0:8:Attack | 282.0.0:8:Attack@f30[samples=60,runs=2] |
| `285.0.0` | 红色巫鬼 | 285.0.0:8:ShootDown | 285.0.0:8:ShootDown@f15[samples=4,runs=2] |
| `287.0.0` | 妈妈的死手 | 287.0.0:7:JumpDown | 287.0.0:7:JumpDown@f13[samples=7,runs=2] |
| `288.0.0` | 小苍蝇公爵 | 288.0.0:8:Cough | 288.0.0:8:Cough@f4[samples=5,runs=2] |
| `298.0.0` | 死寂脓液囊 | 298.0.0:8:Shoot | 298.0.0:8:Shoot@f13[samples=19,runs=2] |
| `307.0.0` | 焦油小子 | 307.0.0:8:Attack | 307.0.0:8:Attack@f19[samples=24,runs=2] |
| `308.0.0` | 小瘘管 | 308.0.0:8:Attack | 308.0.0:8:Attack@f10[samples=9,runs=2] |
| `311.0.0` | 水雷头 | 311.0.0:6:DigOut | 311.0.0:6:DigOut@f1[samples=16,runs=2] |
| `808.0.0` | 萤火苍蝇 | 808.0.0:8:Attack | 808.0.0:8:Attack@f25[samples=33,runs=2] |
| `820.0.0` | 丹尼 | 820.0.0:8:Attack | 820.0.0:8:Attack@f13[samples=18,runs=2] |
| `820.1.0` | 火炭小子 | 820.1.0:8:Attack | 820.1.0:8:Attack@f13[samples=14,runs=2] |
| `821.0.0` | 爆破者 | 821.0.0:8:Attack | 821.0.0:8:Attack@f17[samples=6,runs=2] |
| `823.0.0` | 地震肥仔 | 823.0.0:8:Jump | 823.0.0:8:Jump@f20[samples=32,runs=2] |
| `825.0.0` | 火焰圆头虫 | 825.0.0:6:DigOut | 825.0.0:6:DigOut@f39[samples=6,runs=2] |
| `828.0.0` | 死灵骷髅头 | 828.0.0:8:Attack | 828.0.0:8:Attack@f9[samples=12,runs=2] |
| `829.0.0` | 鼹鼠 | 829.0.0:8:Shoot | 829.0.0:8:Shoot@f5[samples=18,runs=2] |
| `829.1.0` | 堕化鼹鼠 | 829.1.0:6:DigOut,829.1.0:8:Shoot | 829.1.0:6:DigOut@f7[samples=4,runs=2]; 829.1.0:8:Shoot@f5[samples=48,runs=2] |
| `830.0.0` | 肥骷髅仔 | 830.0.0:8:AttackHori | 830.0.0:8:AttackHori@f13[samples=4,runs=2] |
| `833.0.0` | 烛台鬼 | 833.0.0:3:Attack | 833.0.0:3:Attack@f13[samples=7,runs=2] |
| `835.0.0` | 窥眼肥仔 | 835.0.0:8:AttackLeft,835.0.0:8:AttackRight | 835.0.0:8:AttackLeft@f22[samples=24,runs=3]; 835.0.0:8:AttackRight@f22[samples=18,runs=2] |
| `836.0.0` | 追踪开膛怪 | 836.0.0:9:Attack01Horiz | 836.0.0:9:Attack01Horiz@f31[samples=6,runs=2] |
| `838.0.0` | 二级萤火苍蝇 | 838.0.0:8:Attack | 838.0.0:8:Attack@f27[samples=6,runs=2] |
| `840.0.0` | 跳跳脑 | 840.0.0:4:Hop | 840.0.0:4:Hop@f18[samples=26,runs=2] |
| `857.0.0` | 血红团 | 857.0.0:8:Attack1,857.0.0:9:Attack2 | 857.0.0:8:Attack1@f15[samples=3,runs=2]; 857.0.0:9:Attack2@f32[samples=38,runs=2] |
| `859.0.0` | 飘浮寄居骷髅 | 859.0.0:8:Shoot | 859.0.0:8:Shoot@f25[samples=15,runs=2] |
| `872.0.0` | 便便肉团 | 872.0.0:8:Attack | 872.0.0:8:Attack@f12[samples=96,runs=2] |
| `883.0.0` | 受生恶魔宝宝 | 883.0.0:8:AttackRight | 883.0.0:8:AttackRight@f17[samples=4,runs=2] |
| `885.1.0` | 血腥邪教徒 | 885.1.0:3:Attack | 885.1.0:3:Attack@f32[samples=6,runs=2] |
| `888.0.0` | 暗影肥仔 | 888.0.0:8:Jump | 888.0.0:8:Jump@f20[samples=8,runs=2] |
| `890.0.0` | 漫步木乃伊 | 890.0.0:9:AttackDown2,890.0.0:9:AttackLeft2 | 890.0.0:9:AttackDown2@f5[samples=6,runs=2]; 890.0.0:9:AttackLeft2@f5[samples=13,runs=2] |
| `891.1.0` | 黑山羊 | 891.1.0:9:Attack2 | 891.1.0:9:Attack2@f32[samples=16,runs=2] |

## 未达到严格识别的分布

| 原因 | 数量 |
| --- | ---: |
| 仅有完整 AI 函数攻击调用候选 (`static_ai_function_attack_call_only`) | 61 |
| 仅有 State 攻击调用候选 (`static_state_attack_call_only`) | 61 |
| 有来源链对象但时序不稳定 (`source_linked_object_without_stable_cross_seed_timing`) | 40 |
| 单运行/同种子稳定时点模型 (`single_run_timing_model_only`) | 20 |
| 仅有 ANM2 攻击事件候选 (`static_anm2_animation_event_only`) | 19 |
| 仅有 State 攻击动画候选 (`static_state_animation_only`) | 15 |
| 没有可确认的攻击候选 (`no_attack_candidate_identified`) | 11 |
| 严格状态动画映射没有攻击对象时点 (`strict_state_animation_mapping_without_attack_object_timing`) | 1 |

## 剩余 AI-only 无事件 cue 的分类

这些身份只有完整 AI 函数调用，没有任何 State/动画事件 cue；它们不再作为可继续批量补测的候选，按接触候选或缺少对象证据归档。

| 精确身份 | 名称 | 分类 |
| --- | --- | --- |
| `11.1.0` | 漫步尸 | contact_only |
| `18.0.0` | 红苍蝇 | contact_only |
| `32.0.0` | 脑子 | contact_only |
| `35.0.0` | 大嘴头尸的身体 | contact_only |
| `35.2.0` | 红色大嘴头尸的身体 | contact_only |
| `40.0.0` | 脏团 | contact_only |
| `41.0.0` | 假面骑士 | contact_only |
| `41.1.0` | 忘我骑士 | contact_only |
| `41.2.0` | 漏脑骑士 | contact_only |
| `41.3.0` | 无脑骑士 | contact_only |
| `89.0.0` | 跟屁虫 | contact_only |
| `210.0.0` | 无头肥仔 | contact_only |
| `211.0.0` | 半身肥仔 | contact_only |
| `214.0.0` | 二级苍蝇 | contact_only |
| `217.0.0` | 粪滴 | contact_only |
| `217.1.0` | 玉米粪滴 | contact_only |
| `217.2.0` | 布朗尼玉米粪滴 | contact_only |
| `217.3.0` | 大玉米粪滴 | contact_only |
| `226.1.0` | 腐脸尸 | contact_only |
| `226.2.0` | 脆脸尸 | contact_only |
| `228.0.0` | 畸婴 | contact_only |
| `249.0.0` | 丰满苍蝇 | contact_only |
| `251.0.0` | 受生恶魔 | contact_only |
| `254.0.0` | 飘浮骑士 | contact_only |
| `256.0.0` | 尖头苍蝇 | contact_only |
| `279.0.0` | 黑色血红尸的头 | contact_only |
| `280.0.0` | 黑色血红尸的身体 | contact_only |
| `281.0.0` | 苍蝇群 | contact_only |
| `301.0.0` | 剧毒脑子 | contact_only |
| `818.0.0` | 石头蜘蛛 | contact_only |
| `818.1.0` | 标记石头蜘蛛 | contact_only |
| `818.2.0` | 火炭蜘蛛 | contact_only |
| `819.0.0` | 苍蝇炸弹 | contact_only |
| `870.0.0` | 粪球 | contact_only |
| `878.0.0` | 阴湿跟屁虫 | contact_only |
| `887.0.0` | 尘埃死人头骨 | contact_only |
| `893.0.0` | 链球 | contact_only |
| `13.0.0` | 苍蝇 | no_object_attack_evidence |
| `53.0.0` | 分身 | no_object_attack_evidence |
| `53.1.0` | 邪恶分身 | no_object_attack_evidence |
| `306.0.0` | 黑洞 | no_object_attack_evidence |
| `861.0.0` | 脓疱 | no_object_attack_evidence |

## 数据

- 逐项明细：`data/npc/monster_strict_attack_catalog.tsv`
- 主目录：`data/npc/ENTITY-CATALOG.md`
- 运行时语义：`data/mechanisms/gamebot_runtime_semantics.json`
- 严格验证：`data/mechanisms/gamebot_attack_strict_validation.json`

仍有静态候选没有来源链攻击对象；它们需要新的原版观察才能升级，不能由静态字段直接推导。
