# Monster Planner 威胁覆盖审计

本审计只读现有几何模型、弹幕模式、预警规则和怪物严格目录；不新增威胁、不修改运行时语义。

## 汇总

| 项目 | 数量 |
| --- | ---: |
| role=monster 身份 | 322 |
| contact_only 身份 | 37 |
| contact_only 已有 planning_validated 接触模型 | 37 |
| 严格预测身份 | 94 |
| 严格预测已有预生成威胁覆盖 | 30 |
| 严格预测缺少攻击几何 | 64 |

## 接触型安全

37 个 `contact_only` 中，37 个已经有 `planning_validated` 接触模型；这部分不需要再补测试。

## 严格预测但缺攻击几何

| 精确身份 | 名称 | 覆盖状态 |
| --- | --- | --- |
| `12.0.0` | 呕血头 | reactive_geometry_only |
| `14.0.0` | 狙击蝇 | reactive_geometry_only |
| `14.1.0` | 超级狙击蝇 | reactive_geometry_only |
| `15.0.0` | 肉团 | reactive_geometry_only |
| `15.1.0` | 焦油团 | reactive_geometry_only |
| `16.0.0` | 棉花怪 | reactive_geometry_only |
| `26.2.0` | 灵能大嘴头 | reactive_geometry_only |
| `29.2.0` | 卵囊跳跳尸 | reactive_geometry_only |
| `30.2.0` | 卵囊 | no_attack_geometry |
| `31.0.0` | 吐血蝇蛆 | reactive_geometry_only |
| `31.1.0` | 堕化吐血蝇蛆 | reactive_geometry_only |
| `34.0.0` | 飞跃尸 | reactive_geometry_only |
| `34.1.0` | 黏性飞跃尸 | reactive_geometry_only |
| `38.0.0` | 宝宝 | reactive_geometry_only |
| `39.0.0` | 开膛怪 | reactive_geometry_only |
| `39.1.0` | 双向开膛怪 | reactive_geometry_only |
| `39.2.0` | 蛆虫开膛怪 | no_attack_geometry |
| `39.3.0` | 结痂双向开膛怪 | reactive_geometry_only |
| `57.0.0` | 大脑 | reactive_geometry_only |
| `57.1.0` | 大脏团 | reactive_geometry_only |
| `57.2.0` | 腐烂大脏团 | reactive_geometry_only |
| `59.0.0` | 弗莱德 | reactive_geometry_only |
| `86.0.0` | 店主 | reactive_geometry_only |
| `88.2.0` | 行走卵囊 | no_attack_geometry |
| `92.0.0` | 心脏 | reactive_geometry_only |
| `92.1.0` | 半边心脏 | reactive_geometry_only |
| `206.1.0` | 小生崽长腿蛛 | reactive_geometry_only |
| `207.0.0` | 疯狂长腿蛛 | no_attack_geometry |
| `207.1.0` | 小疯狂长腿蛛 | no_attack_geometry |
| `208.1.0` | 苍白肥仔 | reactive_geometry_only |
| `216.0.0` | 甩头尸的身体 | no_attack_geometry |
| `220.1.0` | 阴湿粪团 | reactive_geometry_only |
| `223.0.0` | 粪堆 | reactive_geometry_only |
| `224.0.0` | 乌伯 | no_attack_geometry |
| `227.0.0` | 骷髅仔 | reactive_geometry_only |
| `227.1.0` | 神圣骷髅仔 | reactive_geometry_only |
| `229.1.0` | 行星肿瘤 | reactive_geometry_only |
| `237.0.0` | 肉山幼崽 | reactive_geometry_only |
| `241.0.0` | 愤怒爬墙蛛 | reactive_geometry_only |
| `244.0.0` | 圆头虫 | reactive_geometry_only |
| `253.0.0` | 灵能肿瘤 | reactive_geometry_only |
| `255.0.0` | 夜行圆头虫 | reactive_geometry_only |
| `258.0.0` | 胖蝙蝠 | reactive_geometry_only |
| `259.0.0` | 小恶魔 | reactive_geometry_only |
| `277.0.0` | 黑色骷髅仔 | reactive_geometry_only |
| `282.0.0` | 大肉团 | reactive_geometry_only |
| `285.0.0` | 红色巫鬼 | reactive_geometry_only |
| `287.0.0` | 妈妈的死手 | reactive_geometry_only |
| `288.0.0` | 小苍蝇公爵 | no_attack_geometry |
| `308.0.0` | 小瘘管 | reactive_geometry_only |
| `311.0.0` | 水雷头 | no_attack_geometry |
| `820.1.0` | 火炭小子 | no_attack_geometry |
| `821.0.0` | 爆破者 | no_attack_geometry |
| `825.0.0` | 火焰圆头虫 | no_attack_geometry |
| `830.0.0` | 肥骷髅仔 | no_attack_geometry |
| `833.0.0` | 烛台鬼 | no_attack_geometry |
| `835.0.0` | 窥眼肥仔 | reactive_geometry_only |
| `836.0.0` | 追踪开膛怪 | reactive_geometry_only |
| `838.0.0` | 二级萤火苍蝇 | reactive_geometry_only |
| `840.0.0` | 跳跳脑 | reactive_geometry_only |
| `872.0.0` | 便便肉团 | reactive_geometry_only |
| `883.0.0` | 受生恶魔宝宝 | reactive_geometry_only |
| `890.0.0` | 漫步木乃伊 | reactive_geometry_only |
| `891.1.0` | 黑山羊 | reactive_geometry_only |

## 建议优先级

1. Boss 高伤害招式：`268.0.0`、`916.0.0`、`905.0.0`、`43.0.0`、`52.1.0`、`405.0.0`。
2. 普通怪高频弹幕：`12.0.0`、`14.0.0`、`14.1.0`、`15.0.0`、`15.1.0`、`207.0.0`、`244.0.0`。
3. `311.0.0`、`802.0.0`、`825.0.0` 有静态接触候选但无运行接触几何，先补接触测试。

这些缺口需要几何验证或预生成模式，不是继续补时点能解决的。
