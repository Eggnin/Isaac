# J460 本机 EntityConfig 精确身份目录

共 **653** 个 Type/Variant/Subtype 组合，包含普通怪物、头目、陷阱机关及其他 NPC 配置。网格和炸弹另列，不混入653。

分类数量：{'monster': 322, 'unlisted_npc': 174, 'boss': 132, 'trap': 25}。陷阱标记是身份/机制归类，不表示该身份已经逐一通过攻击或战斗测试。

严格攻击识别和严格攻击预测来自 `data/mechanisms/gamebot_runtime_semantics.json`，不等于完整攻击覆盖或危险几何。迷你 Boss 与 Boss 的逐项依据见 [BOSS-STRICT-ATTACK-CATALOG.md](BOSS-STRICT-ATTACK-CATALOG.md)。

`role=monster` 中 42 个只有 AI 函数调用且无动画事件 cue 的身份已归为 `contact_only` 或 `no_object_attack_evidence`，详见 [MONSTER-STRICT-ATTACK-CATALOG.md](MONSTER-STRICT-ATTACK-CATALOG.md)。

| 精确身份 | 中文名/陷阱名 | EntityConfig 名称 | 分类 | 严格攻击识别 | 严格攻击预测 | 银按钮解除 |
| --- | --- | --- | --- | --- | --- | --- |
| `10.0.0` | 皱眉裂口尸 | #FROWNING_GAPER | monster | 否 | 否 |  |
| `10.1.0` | 裂口尸 | #GAPER | monster | 是 | 否 |  |
| `10.2.0` | 燃烧裂口尸 | #FLAMING_GAPER | monster | 否 | 否 |  |
| `10.3.0` | 腐烂裂口尸 | #ROTTEN_GAPER | monster | 否 | 否 |  |
| `10.3.1` |  | #ROTTEN_GAPER | unlisted_npc | 否 | 否 |  |
| `10.3.2` |  | #ROTTEN_GAPER | unlisted_npc | 否 | 否 |  |
| `10.3.3` |  | #ROTTEN_GAPER | unlisted_npc | 否 | 否 |  |
| `10.3.4` |  | #ROTTEN_GAPER | unlisted_npc | 否 | 否 |  |
| `10.3.5` |  | #ROTTEN_GAPER | unlisted_npc | 否 | 否 |  |
| `11.0.0` | 喷血尸 | #GUSHER | monster | 是 | 否 |  |
| `11.1.0` | 漫步尸 | #PACER | monster | 否 | 否 |  |
| `12.0.0` | 呕血头 | #HORF | monster | 是 | 是 |  |
| `13.0.0` | 苍蝇 | #FLY | monster | 否 | 否 |  |
| `14.0.0` | 狙击蝇 | #POOTER | monster | 是 | 是 |  |
| `14.1.0` | 超级狙击蝇 | #SUPER_POOTER | monster | 是 | 是 |  |
| `14.2.0` | 堕化狙击蝇 | #TAINTED_POOTER | monster | 是 | 否 |  |
| `15.0.0` | 肉团 | #CLOTTY | monster | 是 | 是 |  |
| `15.1.0` | 焦油团 | #CLOT | monster | 是 | 是 |  |
| `15.2.0` | 以撒肉团 | #IBLOB | monster | 是 | 否 |  |
| `15.3.0` | 烤肉团 | #GRILLED_CLOTTY | monster | 是 | 否 |  |
| `16.0.0` | 棉花怪 | #MULLIGAN | monster | 是 | 是 |  |
| `16.1.0` | 灰棉花怪 | #MULLIGOON | monster | 是 | 否 |  |
| `16.2.0` | 炸弹棉花怪 | #MULLIBOOM | monster | 否 | 否 |  |
| `17.0.0` |  | Shopkeeper | unlisted_npc | 否 | 否 |  |
| `17.1.0` |  | Secret Room Keeper | unlisted_npc | 否 | 否 |  |
| `17.2.0` |  | Error Room Keeper | unlisted_npc | 否 | 否 |  |
| `17.3.0` |  | Special Shopkeeper | unlisted_npc | 否 | 否 |  |
| `17.4.0` |  | Special Secret Room Keeper | unlisted_npc | 否 | 否 |  |
| `18.0.0` | 红苍蝇 | #ATTACK_FLY | monster | 否 | 否 |  |
| `19.0.0` | 拉里子虫 | #LARRY_JR | boss | 否 | 否 |  |
| `19.1.0` | 空心虫 | #THE_HOLLOW | boss | 否 | 否 |  |
| `19.2.0` | 灰岩子虫 | #TUFF_TWIN | boss | 否 | 否 |  |
| `19.3.0` | 枯壳虫 | #THE_SHELL | boss | 否 | 否 |  |
| `20.0.0` | 萌死戳 | #MONSTRO | boss | 是 | 否 |  |
| `21.0.0` | 蝇蛆 | #MAGGOT | monster | 否 | 否 |  |
| `22.0.0` | 蝇巢 | #HIVE | monster | 否 | 否 |  |
| `22.1.0` | 溺水蝇巢 | #DROWNED_HIVE | monster | 否 | 否 |  |
| `22.2.0` | 神圣棉花怪 | #HOLY_MULLIGAN | monster | 否 | 否 |  |
| `22.3.0` | 堕化棉花怪 | #TAINTED_MULLIGAN | monster | 否 | 否 |  |
| `23.0.0` | 冲刺蝇蛆 | #CHARGER | monster | 否 | 否 |  |
| `23.0.1` |  | My Shadow | unlisted_npc | 否 | 否 |  |
| `23.1.0` | 溺水冲刺蝇蛆 | #DROWNED_CHARGER | monster | 否 | 否 |  |
| `23.2.0` | 阴湿冲刺蝇蛆 | #DANK_CHARGER | monster | 是 | 否 |  |
| `23.3.0` | 腐蛆公主 | #CARRION_PRINCESS | monster | 否 | 否 |  |
| `24.0.0` | 血红尸 | #GLOBIN | monster | 否 | 否 |  |
| `24.1.0` | 窥眼血红尸 | #GAZING_GLOBIN | monster | 否 | 否 |  |
| `24.2.0` | 阴湿血红尸 | #DANK_GLOBIN | monster | 否 | 否 |  |
| `24.3.0` | 诅咒血红尸 | #CURSED_GLOBIN | monster | 否 | 否 |  |
| `25.0.0` | 炸弹苍蝇 | #BOOM_FLY | monster | 是 | 否 |  |
| `25.1.0` | 红色炸弹苍蝇 | #RED_BOOM_FLY | monster | 否 | 否 |  |
| `25.2.0` | 溺水炸弹苍蝇 | #DROWNED_BOOM_FLY | monster | 否 | 否 |  |
| `25.3.0` | 龙头苍蝇 | #DRAGON_FLY | monster | 否 | 否 |  |
| `25.3.1` |  | #DRAGON_FLY_X | unlisted_npc | 否 | 否 |  |
| `25.4.0` | 骷髅苍蝇 | #BONE_FLY | monster | 是 | 是 |  |
| `25.5.0` | 病态炸弹苍蝇 | #SICK_BOOM_FLY | monster | 否 | 否 |  |
| `25.6.0` | 堕化炸弹苍蝇 | #TAINTED_BOOM_FLY | monster | 否 | 否 |  |
| `26.0.0` | 大嘴头 | #MAW | monster | 是 | 否 |  |
| `26.1.0` | 红色大嘴头 | #RED_MAW | monster | 否 | 否 |  |
| `26.2.0` | 灵能大嘴头 | #PSYCHIC_MAW | monster | 是 | 是 |  |
| `27.0.0` | 寄居骷髅 | #HOST | monster | 是 | 是 |  |
| `27.1.0` | 血肉寄居骷髅 | #RED_HOST | monster | 是 | 否 |  |
| `27.3.0` | 化石寄居骷髅 | #HARD_HOST | monster | 是 | 否 |  |
| `28.0.0` | 胖蛆 | #CHUB | boss | 否 | 否 |  |
| `28.1.0` | 查德 | #CHAD | boss | 否 | 否 |  |
| `28.2.0` | 腐蛆女王 | #THE_CARRION_QUEEN | boss | 否 | 否 |  |
| `29.0.0` | 跳跳尸 | #HOPPER | monster | 否 | 否 |  |
| `29.1.0` | 跳蛛 | #TRITE | monster | 否 | 否 |  |
| `29.2.0` | 卵囊跳跳尸 | #EGGY | monster | 是 | 是 |  |
| `29.3.0` | 堕化跳跳尸 | #TAINTED_HOPPER | monster | 是 | 是 |  |
| `30.0.0` | 脓液囊 | #BOIL | monster | 是 | 是 |  |
| `30.1.0` | 吐根脓液囊 | #GUT | monster | 是 | 是 |  |
| `30.2.0` | 卵囊 | #SACK | monster | 是 | 是 |  |
| `31.0.0` | 吐血蝇蛆 | #SPITTY | monster | 是 | 是 |  |
| `31.1.0` | 堕化吐血蝇蛆 | #TAINTED_SPITTY | monster | 是 | 是 |  |
| `32.0.0` | 脑子 | #BRAIN | monster | 否 | 否 |  |
| `33.0.0` |  | Fire Place | unlisted_npc | 否 | 否 |  |
| `33.1.0` | 红色火堆 | Red Fire Place | **陷阱机关** | 否 | 否 | 是 |
| `33.2.0` |  | Blue Fire Place | unlisted_npc | 否 | 否 |  |
| `33.3.0` | 紫色火堆 | Purple Fire Place | **陷阱机关** | 否 | 否 | 是 |
| `33.4.0` |  | White Fire Place | unlisted_npc | 否 | 否 |  |
| `33.10.0` |  | Moveable Fireplace | unlisted_npc | 否 | 否 |  |
| `33.11.0` |  | #COAL | unlisted_npc | 否 | 否 |  |
| `33.11.1` |  | Coal | unlisted_npc | 否 | 否 |  |
| `33.11.2` |  | Coal | unlisted_npc | 否 | 否 |  |
| `33.11.3` |  | Coal | unlisted_npc | 否 | 否 |  |
| `33.12.0` |  | Moveable Blue Fireplace | unlisted_npc | 否 | 否 |  |
| `33.13.0` |  | Moveable Purple Fireplace | unlisted_npc | 否 | 否 |  |
| `34.0.0` | 飞跃尸 | #LEAPER | monster | 是 | 是 |  |
| `34.1.0` | 黏性飞跃尸 | #STICKY_LEAPER | monster | 是 | 是 |  |
| `35.0.0` | 大嘴头尸的身体 | #MR_MAW | monster | 否 | 否 |  |
| `35.1.0` |  | #MR_MAW_HEAD | unlisted_npc | 否 | 否 |  |
| `35.2.0` | 红色大嘴头尸的身体 | #MR_RED_MAW | monster | 否 | 否 |  |
| `35.3.0` |  | #MR_RED_MAW_HEAD | unlisted_npc | 否 | 否 |  |
| `35.10.0` |  | Mr. Maw Neck | unlisted_npc | 否 | 否 |  |
| `36.0.0` | 肉山 | #GURDY | boss | 否 | 否 |  |
| `38.0.0` | 宝宝 | #BABY | monster | 是 | 是 |  |
| `38.1.0` | 天使宝宝 | #ANGELIC_BABY | monster | 是 | 是 |  |
| `38.1.1` |  | Angelic Baby (small) | unlisted_npc | 否 | 否 |  |
| `38.2.0` | 究极傲慢宝宝 | #ULTRA_PRIDE_BABY | boss | 否 | 否 |  |
| `38.3.0` | 皱皮宝宝 | #WRINKLY_BABY | monster | 是 | 是 |  |
| `39.0.0` | 开膛怪 | #VIS | monster | 是 | 是 |  |
| `39.1.0` | 双向开膛怪 | #DOUBLE_VIS | monster | 是 | 是 |  |
| `39.2.0` | 蛆虫开膛怪 | #CHUBBER | monster | 是 | 是 |  |
| `39.3.0` | 结痂双向开膛怪 | #SCARRED_DOUBLE_VIS | monster | 是 | 是 |  |
| `39.22.0` |  | Chubber Projectile | unlisted_npc | 否 | 否 |  |
| `40.0.0` | 脏团 | #GUTS | monster | 否 | 否 |  |
| `40.1.0` | 结痂脏团 | #SCARRED_GUTS | monster | 是 | 否 |  |
| `40.2.0` | 沥青脏团 | #SLOG | monster | 是 | 否 |  |
| `41.0.0` | 假面骑士 | #KNIGHT | monster | 否 | 否 |  |
| `41.1.0` | 忘我骑士 | #SELFLESS_KNIGHT | monster | 否 | 否 |  |
| `41.2.0` | 漏脑骑士 | #LOOSE_KNIGHT | monster | 否 | 否 |  |
| `41.3.0` | 无脑骑士 | #BRAINLESS_KNIGHT | monster | 否 | 否 |  |
| `41.4.0` | 黑骑士 | #BLACK_KNIGHT | monster | 是 | 否 |  |
| `42.0.0` | 石鬼面 | #STONE_GRIMACE | **陷阱机关** | 否 | 否 | 是 |
| `42.1.0` | 呕吐鬼面 | #VOMIT_GRIMACE | **陷阱机关** | 否 | 否 | 是 |
| `42.2.0` | 三发鬼面 | #TRIPLE_GRIMACE | **陷阱机关** | 否 | 否 | 是 |
| `43.0.0` | 萌死戳II | #MONSTRO_II | boss | 是 | 是 |  |
| `43.1.0` | 吉什 | #GISH | boss | 是 | 否 |  |
| `44.0.0` | 刺块 | #POKY | **陷阱机关** | 否 | 否 | 是 |
| `44.1.0` | 滑块 | #SLIDE | **陷阱机关** | 否 | 否 | 是 |
| `45.0.0` | 妈妈 | #MOM | boss | 是 | 否 |  |
| `45.10.0` |  | Mom Stomp | unlisted_npc | 否 | 否 |  |
| `46.0.0` | 懒惰 | #SLOTH | boss | 是 | 否 |  |
| `46.1.0` | 超级懒惰 | #SUPER_SLOTH | boss | 否 | 否 |  |
| `46.2.0` | 究极傲慢 | #ULTRA_PRIDE | boss | 否 | 否 |  |
| `47.0.0` | 色欲 | #LUST | boss | 否 | 否 |  |
| `47.1.0` | 超级色欲 | #SUPER_LUST | boss | 否 | 否 |  |
| `48.0.0` | 愤怒 | #WRATH | boss | 否 | 否 |  |
| `48.1.0` | 超级愤怒 | #SUPER_WRATH | boss | 否 | 否 |  |
| `49.0.0` | 暴食 | #GLUTTONY | boss | 是 | 否 |  |
| `49.1.0` | 超级暴食 | #SUPER_GLUTTONY | boss | 否 | 否 |  |
| `50.0.0` | 贪婪 | #GREED | boss | 否 | 否 |  |
| `50.1.0` | 超级贪婪 | #SUPER_GREED | boss | 否 | 否 |  |
| `51.0.0` | 嫉妒 | #ENVY | boss | 否 | 否 |  |
| `51.1.0` | 超级嫉妒 | #SUPER_ENVY | boss | 否 | 否 |  |
| `51.10.0` |  | Envy (big) | unlisted_npc | 否 | 否 |  |
| `51.11.0` |  | Super Envy (big) | unlisted_npc | 否 | 否 |  |
| `51.20.0` |  | Envy (medium) | unlisted_npc | 否 | 否 |  |
| `51.21.0` |  | Super Envy (medium) | unlisted_npc | 否 | 否 |  |
| `51.30.0` |  | Envy (small) | unlisted_npc | 否 | 否 |  |
| `51.31.0` |  | Super Envy (small) | unlisted_npc | 否 | 否 |  |
| `52.0.0` | 傲慢 | #PRIDE | boss | 是 | 否 |  |
| `52.1.0` | 超级傲慢 | #SUPER_PRIDE | boss | 是 | 是 |  |
| `53.0.0` | 分身 | #DOPLE | monster | 否 | 否 |  |
| `53.1.0` | 邪恶分身 | #EVIL_TWIN | monster | 否 | 否 |  |
| `54.0.0` | 燃烧跳跳尸 | #FLAMING_HOPPER | monster | 否 | 否 |  |
| `55.0.0` | 水蛭 | #LEECH | monster | 否 | 否 |  |
| `55.1.0` | 神风水蛭 | #KAMIKAZE_LEECH | monster | 否 | 否 |  |
| `55.2.0` | 神圣水蛭 | #HOLY_LEECH | monster | 是 | 否 |  |
| `56.0.0` | 肿块 | #LUMP | monster | 是 | 是 |  |
| `57.0.0` | 大脑 | #MEMBRAIN | monster | 是 | 是 |  |
| `57.1.0` | 大脏团 | #MAMA_GUTS | monster | 是 | 是 |  |
| `57.2.0` | 腐烂大脏团 | #DEAD_MEAT | monster | 是 | 是 |  |
| `58.0.0` | 咬咬虫 | #PARABITE | monster | 否 | 否 |  |
| `58.1.0` | 结痂咬咬虫 | #SCARRED_PARABITE | monster | 否 | 否 |  |
| `59.0.0` | 弗莱德 | #FRED | monster | 是 | 是 |  |
| `60.0.0` | 眼睛 | #EYE | monster | 是 | 是 |  |
| `60.1.0` | 血丝眼 | #BLOODSHOT_EYE | monster | 是 | 否 |  |
| `60.2.0` | 圣眼 | #HOLY_EYE | monster | 是 | 否 |  |
| `61.0.0` | 吸血蚊 | #SUCKER | monster | 是 | 否 |  |
| `61.1.0` | 吐根吸血蚊 | #SPIT | monster | 否 | 否 |  |
| `61.2.0` | 吸魂蚊 | #SOUL_SUCKER | monster | 否 | 否 |  |
| `61.3.0` | 吸墨蚊 | #INK | monster | 否 | 否 |  |
| `61.4.0` | 母体苍蝇 | #MAMA_FLY | monster | 否 | 否 |  |
| `61.5.0` | 吸电蚊 | #BULB | monster | 否 | 否 |  |
| `61.6.0` | 嗜血蚊 | #BLOODFLY | monster | 否 | 否 |  |
| `61.7.0` | 堕化吸血蚊 | #TAINTED_SUCKER | monster | 否 | 否 |  |
| `62.0.0` | 钉头虫 | #PIN | boss | 否 | 否 |  |
| `62.1.0` | 头节虫 | #SCOLEX | boss | 否 | 否 |  |
| `62.2.0` | 脆皮虫 | #THE_FRAIL | boss | 否 | 否 |  |
| `62.3.0` | 茵陈 | #WORMWOOD | boss | 否 | 否 |  |
| `63.0.0` | 饥荒骑士 | #FAMINE | boss | 否 | 否 |  |
| `64.0.0` | 瘟疫骑士 | #PESTILENCE | boss | 否 | 否 |  |
| `65.0.0` | 战争骑士 | #WAR | boss | 否 | 否 |  |
| `65.1.0` | 征服骑士 | #CONQUEST | boss | 否 | 否 |  |
| `65.10.0` |  | War without horse | unlisted_npc | 否 | 否 |  |
| `66.0.0` | 死亡骑士 | #DEATH | boss | 否 | 否 |  |
| `66.10.0` |  | Death Scythe | unlisted_npc | 否 | 否 |  |
| `66.20.0` |  | Death Horse | unlisted_npc | 否 | 否 |  |
| `66.30.0` |  | Death without horse | unlisted_npc | 否 | 否 |  |
| `67.0.0` | 苍蝇公爵 | #THE_DUKE_OF_FLIES | boss | 否 | 否 |  |
| `67.1.0` | 尸壳 | #THE_HUSK | boss | 否 | 否 |  |
| `68.0.0` | 嘘嘘怪 | #PEEP | boss | 否 | 否 |  |
| `68.1.0` | 充血怪 | #THE_BLOAT | boss | 是 | 是 |  |
| `68.10.0` |  | Peep Eye | unlisted_npc | 否 | 否 |  |
| `68.11.0` |  | Bloat Eye | unlisted_npc | 否 | 否 |  |
| `69.0.0` | 洛基 | #LOKI | boss | 否 | 否 |  |
| `69.1.0` | 分身洛基 | #LOKII | boss | 否 | 否 |  |
| `71.0.0` | 瘘管团 | #FISTULA | boss | 否 | 否 |  |
| `71.1.0` | 畸胎瘤 | #TERATOMA | boss | 否 | 否 |  |
| `72.0.0` |  | Fistula Medium | unlisted_npc | 否 | 否 |  |
| `72.1.0` |  | Teratoma Medium | unlisted_npc | 否 | 否 |  |
| `73.0.0` |  | Fistula Small | unlisted_npc | 否 | 否 |  |
| `73.1.0` |  | Teratoma Small | unlisted_npc | 否 | 否 |  |
| `74.0.0` | 囊胚 | #BLASTOCYST | boss | 否 | 否 |  |
| `75.0.0` |  | Blastocyst Medium | unlisted_npc | 否 | 否 |  |
| `76.0.0` |  | Blastocyst Small | unlisted_npc | 否 | 否 |  |
| `77.0.0` | 胚胎 | #EMBRYO | monster | 否 | 否 |  |
| `78.0.0` | 妈妈的心脏 | #MOMS_HEART | boss | 否 | 否 |  |
| `78.1.0` | 它还活着 | #IT_LIVES | boss | 否 | 否 |  |
| `78.10.0` |  | #MOMS_GUTS | unlisted_npc | 否 | 否 |  |
| `79.0.0` | 连体双子 | #GEMINI | boss | 否 | 否 |  |
| `79.1.0` | 史蒂文 | #STEVEN | boss | 否 | 否 |  |
| `79.2.0` | 凋零双子 | #THE_BLIGHTED_OVUM | boss | 是 | 否 |  |
| `79.10.0` | 双子宝宝 | #GEMINI_BABY | boss | 否 | 否 |  |
| `79.11.0` | 史蒂文宝宝 | #STEVEN_BABY | boss | 否 | 否 |  |
| `79.12.0` | 凋零双子宝宝 | #THE_BLIGHTED_OVUM_BABY | boss | 是 | 否 |  |
| `79.20.0` |  | Umbilical Cord | unlisted_npc | 否 | 否 |  |
| `80.0.0` | 连体苍蝇 | #MOTER | monster | 是 | 否 |  |
| `81.0.0` | 堕落恶魔 | #THE_FALLEN | boss | 否 | 否 |  |
| `81.1.0` | 坎卜斯 | #KRAMPUS | boss | 否 | 否 |  |
| `82.0.0` | 无头骑士 | #HEADLESS_HORSEMAN | boss | 否 | 否 |  |
| `83.0.0` | 无头骑士的头 | #HEADLESS_HORSEMANS_HEAD | boss | 否 | 否 |  |
| `84.0.0` | 撒但 | #SATAN | boss | 否 | 否 |  |
| `84.10.0` |  | Satan Stomp | unlisted_npc | 否 | 否 |  |
| `85.0.0` | 蜘蛛 | #SPIDER | monster | 否 | 否 |  |
| `86.0.0` | 店主 | #KEEPER | monster | 是 | 是 |  |
| `87.0.0` | 吐根尸 | #GURGLE | monster | 是 | 是 |  |
| `87.1.0` | 吐火尸 | #CRACKLE | monster | 是 | 是 |  |
| `88.0.0` | 行走脓液囊 | #WALKING_BOIL | monster | 是 | 是 |  |
| `88.1.0` | 行走吐根脓液囊 | #WALKING_GUT | monster | 是 | 是 |  |
| `88.2.0` | 行走卵囊 | #WALKING_SACK | monster | 是 | 是 |  |
| `89.0.0` | 跟屁虫 | #BUTTLICKER | monster | 否 | 否 |  |
| `90.0.0` | 上吊店主 | #HANGER | monster | 是 | 是 |  |
| `91.0.0` | 蝇团 | #SWARMER | monster | 否 | 否 |  |
| `92.0.0` | 心脏 | #HEART | monster | 是 | 是 |  |
| `92.1.0` | 半边心脏 | #HALF_HEART | monster | 是 | 是 |  |
| `92.1.1` |  | #HALF_HEART | unlisted_npc | 否 | 否 |  |
| `93.0.0` | 假面 | #MASK | monster | 否 | 否 |  |
| `93.1.0` | 假面Ⅱ | #MASK_II | monster | 否 | 否 |  |
| `94.0.0` | 大蜘蛛 | #BIG_SPIDER | monster | 是 | 否 |  |
| `96.0.0` | 永恒苍蝇 | #ETERNAL_FLY | monster | 否 | 否 |  |
| `97.0.0` | 耻辱假面 | #MASK_OF_INFAMY | boss | 否 | 否 |  |
| `98.0.0` | 耻辱之心 | #HEART_OF_INFAMY | boss | 否 | 否 |  |
| `99.0.0` | 小肉山 | #GURDY_JR | boss | 否 | 否 |  |
| `100.0.0` | 灰寡妇蛛 | #WIDOW | boss | 否 | 否 |  |
| `100.1.0` | 伤痕寡妇蛛 | #THE_WRETCHED | boss | 否 | 否 |  |
| `101.0.0` | 长腿蛛父 | #DADDY_LONG_LEGS | boss | 是 | 否 |  |
| `101.1.0` | 三腿蜘蛛 | #TRIACHNID | boss | 否 | 否 |  |
| `102.0.0` | 以撒 | #ISAAC | boss | 否 | 否 |  |
| `102.1.0` | ??? | #BLUEBABY | boss | 否 | 否 |  |
| `102.2.0` |  | ??? (Alt) | unlisted_npc | 否 | 否 |  |
| `201.0.0` | 石眼（补充联动机关） | #STONE_EYE | **陷阱机关** | 否 | 否 | 是 |
| `202.0.0` | 常时石质发射器 | #CONSTANT_STONE_SHOOTER | **陷阱机关** | 否 | 否 | 是 |
| `202.10.0` | 十字石质发射器 | #CROSS_STONE_SHOOTER | **陷阱机关** | 否 | 否 | 是 |
| `202.10.1` | 十字石质发射器 | #CROSS_STONE_SHOOTER | **陷阱机关** | 否 | 否 | 是 |
| `202.11.0` | 十字石质发射器 | Cross Stone Shooter (always on) | **陷阱机关** | 否 | 否 | 是 |
| `202.11.1` | 十字石质发射器 | Cross Stone Shooter (always on) | **陷阱机关** | 否 | 否 | 是 |
| `203.0.0` | 硫磺火头 / Brimstone Head | #BRIMSTONE_HEAD | **陷阱机关** | 是 | 是 | 是 |
| `204.0.0` | 行走寄居骷髅 | #MOBILE_HOST | monster | 否 | 否 |  |
| `205.0.0` | 蜘蛛巢 | #NEST | monster | 是 | 否 |  |
| `206.0.0` | 生崽长腿蛛 | #BABY_LONG_LEGS | monster | 是 | 否 |  |
| `206.1.0` | 小生崽长腿蛛 | #SMALL_BABY_LONG_LEGS | monster | 是 | 是 |  |
| `207.0.0` | 疯狂长腿蛛 | #CRAZY_LONG_LEGS | monster | 是 | 是 |  |
| `207.1.0` | 小疯狂长腿蛛 | #SMALL_CRAZY_LONG_LEGS | monster | 是 | 是 |  |
| `208.0.0` | 肥仔 | #FATTY | monster | 否 | 否 |  |
| `208.1.0` | 苍白肥仔 | #PALE_FATTY | monster | 是 | 是 |  |
| `208.2.0` | 燃烧肥仔 | #FLAMING_FATTY | monster | 是 | 否 |  |
| `209.0.0` | 充血肥仔 | #FAT_SACK | monster | 是 | 是 |  |
| `210.0.0` | 无头肥仔 | #BLUBBER | monster | 否 | 否 |  |
| `211.0.0` | 半身肥仔 | #HALF_SACK | monster | 否 | 否 |  |
| `212.0.0` | 死人头骨 | #DEATHS_HEAD | monster | 否 | 否 |  |
| `212.1.0` | 阴湿死人头骨 | #DANK_DEATHS_HEAD | monster | 否 | 否 |  |
| `212.2.0` | 诅咒死人头骨 | #CURSED_DEATHS_HEAD | monster | 否 | 否 |  |
| `212.3.0` | 硫磺死人头骨 | #BRIMSTONE_DEATHS_HEAD | monster | 否 | 否 |  |
| `212.4.0` | 红色头骨 | #REDSKULL | monster | 否 | 否 |  |
| `213.0.0` | 妈妈的手 | #MOMS_HAND | monster | 否 | 否 |  |
| `214.0.0` | 二级苍蝇 | #LEVEL_2_FLY | monster | 否 | 否 |  |
| `215.0.0` | 二级蜘蛛 | #LEVEL_2_SPIDER | monster | 否 | 否 |  |
| `216.0.0` | 甩头尸的身体 | #SWINGER | monster | 是 | 是 |  |
| `216.1.0` |  | #SWINGER_HEAD | unlisted_npc | 否 | 否 |  |
| `216.10.0` |  | Swinger Neck | unlisted_npc | 否 | 否 |  |
| `217.0.0` | 粪滴 | #DIP | monster | 否 | 否 |  |
| `217.1.0` | 玉米粪滴 | #CORN | monster | 否 | 否 |  |
| `217.2.0` | 布朗尼玉米粪滴 | #BROWNIE_CORN | monster | 否 | 否 |  |
| `217.3.0` | 大玉米粪滴 | #BIG_CORN | monster | 否 | 否 |  |
| `218.0.0` | 靠墙刺块 | #WALL_HUGGER | **陷阱机关** | 否 | 否 | 是 |
| `219.0.0` | 巫鬼 | #WIZOOB | monster | 是 | 是 |  |
| `220.0.0` | 粪团 | #SQUIRT | monster | 否 | 否 |  |
| `220.1.0` | 阴湿粪团 | #DANK_SQUIRT | monster | 是 | 是 |  |
| `221.0.0` | 肉包虫 | #COD_WORM | monster | 否 | 否 |  |
| `222.0.0` | 环绕苍蝇 | #RING_FLY | monster | 否 | 否 |  |
| `223.0.0` | 粪堆 | #DINGA | monster | 是 | 是 |  |
| `224.0.0` | 乌伯 | #OOB | monster | 是 | 是 |  |
| `225.0.0` | 黑口怪 | #BLACK_MAW | monster | 否 | 否 |  |
| `226.0.0` | 皱脸尸 | #SKINNY | monster | 是 | 否 |  |
| `226.1.0` | 腐脸尸 | #ROTTY | monster | 否 | 否 |  |
| `226.2.0` | 脆脸尸 | #CRISPY | monster | 否 | 否 |  |
| `227.0.0` | 骷髅仔 | #BONY | monster | 是 | 是 |  |
| `227.1.0` | 神圣骷髅仔 | #HOLY_BONY | monster | 是 | 是 |  |
| `228.0.0` | 畸婴 | #HOMUNCULUS | monster | 否 | 否 |  |
| `228.10.0` |  | Homunculus Cord | unlisted_npc | 否 | 否 |  |
| `229.0.0` | 肿瘤 | #TUMOR | monster | 是 | 否 |  |
| `229.1.0` | 行星肿瘤 | #PLANETOID | monster | 是 | 是 |  |
| `230.0.0` | 小卡米洛 | #CAMILLO_JR | monster | 是 | 否 |  |
| `231.0.0` | 神经末梢 | #NERVE_ENDING | monster | 否 | 否 |  |
| `231.1.0` | 神经末梢2 | #NERVE_ENDING_2 | monster | 否 | 否 |  |
| `234.0.0` | 独牙蝙蝠 | #ONE_TOOTH | monster | 否 | 否 |  |
| `235.0.0` | 张口大嘴 | #GAPING_MAW | **陷阱机关** | 否 | 否 | 是 |
| `236.0.0` | 损坏的张口大嘴 | #BROKEN_GAPING_MAW | **陷阱机关** | 否 | 否 | 是 |
| `237.0.0` | 肉山幼崽 | #GURGLING | monster | 是 | 是 |  |
| `237.1.0` | 肉山幼崽头目 | #GURGLING_BOSS | boss | 否 | 否 |  |
| `237.2.0` | 粪山幼崽 | #TURDLING | boss | 否 | 否 |  |
| `238.0.0` | 喷毒尸 | #SPLASHER | monster | 是 | 否 |  |
| `239.0.0` | 幼虫 | #GRUB | monster | 否 | 否 |  |
| `239.100.0` |  | #CORPSE_EATER | unlisted_npc | 否 | 否 |  |
| `239.101.0` |  | #CARRION_RIDER | unlisted_npc | 否 | 否 |  |
| `240.0.0` | 爬墙蛛 | #WALL_CREEP | monster | 是 | 否 |  |
| `240.1.0` | 豆奶爬墙蛛 | #SOY_CREEP | monster | 是 | 否 |  |
| `240.2.0` |  | #RAG_CREEP | unlisted_npc | 否 | 否 |  |
| `240.3.0` | 堕化豆奶爬墙蛛 | #TAINTED_SOY_CREEP | monster | 是 | 否 |  |
| `241.0.0` | 愤怒爬墙蛛 | #RAGE_CREEP | monster | 是 | 是 |  |
| `241.1.0` |  | #SPLIT_RAGE_CREEP | unlisted_npc | 否 | 否 |  |
| `242.0.0` | 盲眼爬墙蛛 | #BLIND_CREEP | monster | 是 | 是 |  |
| `243.0.0` | 连体吐血蝇蛆 | #CONJOINED_SPITTY | monster | 是 | 否 |  |
| `244.0.0` | 圆头虫 | #ROUND_WORM | monster | 是 | 是 |  |
| `244.1.0` | 管头虫 | #TUBE_WORM | monster | 是 | 否 |  |
| `244.2.0` | 堕化圆头虫 | #TAINTED_ROUND_WORM | monster | 是 | 是 |  |
| `244.2.1` |  | Tainted Round Worm Butt | unlisted_npc | 否 | 否 |  |
| `244.3.0` | 堕化管头虫 | #TAINTED_TUBE_WORM | monster | 是 | 否 |  |
| `245.0.0` |  | Poop | unlisted_npc | 否 | 否 |  |
| `246.0.0` | 绷带蜘蛛 | #RAGLING | monster | 否 | 否 |  |
| `246.1.0` |  | Rag Man's Ragling | unlisted_npc | 否 | 否 |  |
| `247.0.0` | 血肉行走寄居骷髅 | #FLESH_MOBILE_HOST | monster | 否 | 否 |  |
| `248.0.0` | 灵能呕血头 | #PSYCHIC_HORF | monster | 否 | 否 |  |
| `249.0.0` | 丰满苍蝇 | #FULL_FLY | monster | 否 | 否 |  |
| `250.0.0` | 炸弹蜘蛛 | #TICKING_SPIDER | monster | 是 | 否 |  |
| `251.0.0` | 受生恶魔 | #BEGOTTEN | monster | 否 | 否 |  |
| `251.10.0` |  | Begotten Chain | unlisted_npc | 否 | 否 |  |
| `252.0.0` | 虚影恶魔 | #NULLS | monster | 否 | 否 |  |
| `253.0.0` | 灵能肿瘤 | #PSY_TUMOR | monster | 是 | 是 |  |
| `254.0.0` | 飘浮骑士 | #FLOATING_KNIGHT | monster | 否 | 否 |  |
| `255.0.0` | 夜行圆头虫 | #NIGHT_CRAWLER | monster | 是 | 是 |  |
| `256.0.0` | 尖头苍蝇 | #DART_FLY | monster | 否 | 否 |  |
| `257.0.0` | 连体肥仔 | #CONJOINED_FATTY | monster | 是 | 否 |  |
| `257.1.0` | 死寂连体肥仔 | #BLUE_CONJOINED_FATTY | monster | 是 | 否 |  |
| `258.0.0` | 胖蝙蝠 | #FAT_BAT | monster | 是 | 是 |  |
| `259.0.0` | 小恶魔 | #IMP | monster | 是 | 是 |  |
| `260.0.0` | 大恶灵 | #HAUNT | boss | 否 | 否 |  |
| `260.10.0` | 小恶灵 | #LIL_HAUNT | monster | 是 | 否 |  |
| `261.0.0` | 坨坨 | #DINGLE | boss | 否 | 否 |  |
| `261.1.0` | 滑坨坨 | #DANGLE | boss | 否 | 否 |  |
| `262.0.0` | 超级大嘴头 | #MEGA_MAW | boss | 否 | 否 |  |
| `263.0.0` | 守门骷髅 | #THE_GATE | boss | 否 | 否 |  |
| `264.0.0` | 超级肥仔 | #MEGA_FATTY | boss | 否 | 否 |  |
| `265.0.0` | 大肥笼 | #THE_CAGE | boss | 否 | 否 |  |
| `266.0.0` | 母体肉山 | #MAMA_GURDY | boss | 是 | 否 |  |
| `266.1.0` |  | Mama Gurdy Left Hand | unlisted_npc | 否 | 否 |  |
| `266.2.0` |  | Mama Gurdy Right Hand | unlisted_npc | 否 | 否 |  |
| `267.0.0` | 黑暗恶魔 | #DARK_ONE | boss | 否 | 否 |  |
| `268.0.0` | 敌手 | #THE_ADVERSARY | boss | 是 | 是 |  |
| `269.0.0` | 多头畸胎 | #POLYCEPHALUS | boss | 否 | 否 |  |
| `269.1.0` | 骨堆畸胎 | #THE_PILE | boss | 否 | 否 |  |
| `270.0.0` | 大弗莱德 | #MR_FRED | boss | 否 | 否 |  |
| `271.0.0` | 乌列 | #URIEL | boss | 否 | 否 |  |
| `271.1.0` | 堕落乌列 | #FALLEN_URIEL | boss | 否 | 否 |  |
| `272.0.0` | 加百列 | #GABRIEL | boss | 否 | 否 |  |
| `272.1.0` | 堕落加百列 | #FALLEN_GABRIEL | boss | 否 | 否 |  |
| `273.0.0` | 羔羊 | #THE_LAMB | boss | 否 | 否 |  |
| `273.10.0` |  | Lamb Body | unlisted_npc | 否 | 否 |  |
| `274.0.0` | 超级撒但 | #MEGA_SATAN | boss | 否 | 否 |  |
| `274.1.0` |  | Mega Satan's Right Hand | unlisted_npc | 否 | 否 |  |
| `274.2.0` |  | Mega Satan's Left Hand | unlisted_npc | 否 | 否 |  |
| `275.0.0` | 超级撒但2 | #MEGA_SATAN_2 | boss | 否 | 否 |  |
| `275.1.0` |  | Mega Satan 2's Right Hand | unlisted_npc | 否 | 否 |  |
| `275.2.0` |  | Mega Satan 2's Left Hand | unlisted_npc | 否 | 否 |  |
| `276.0.0` | 肥圆虫 | #ROUNDY | monster | 是 | 否 |  |
| `277.0.0` | 黑色骷髅仔 | #BLACK_BONY | monster | 是 | 是 |  |
| `278.0.0` | 黑色血红尸 | #BLACK_GLOBIN | monster | 否 | 否 |  |
| `279.0.0` | 黑色血红尸的头 | #BLACK_GLOBINS_HEAD | monster | 否 | 否 |  |
| `280.0.0` | 黑色血红尸的身体 | #BLACK_GLOBINS_BODY | monster | 否 | 否 |  |
| `281.0.0` | 苍蝇群 | #SWARM | monster | 否 | 否 |  |
| `282.0.0` | 大肉团 | #MEGA_CLOTTY | monster | 是 | 是 |  |
| `283.0.0` | 骸骨骑士 | #BONE_KNIGHT | monster | 是 | 否 |  |
| `284.0.0` | 独眼尸 | #CYCLOPIA | monster | 是 | 否 |  |
| `285.0.0` | 红色巫鬼 | #RED_GHOST | monster | 是 | 是 |  |
| `286.0.0` | 血肉死人头骨 | #FLESH_DEATHS_HEAD | monster | 否 | 否 |  |
| `287.0.0` | 妈妈的死手 | #MOMS_DEAD_HAND | monster | 是 | 是 |  |
| `288.0.0` | 小苍蝇公爵 | #DUKIE | monster | 是 | 是 |  |
| `289.0.0` | 溃疡 | #ULCER | monster | 是 | 否 |  |
| `290.0.0` | 肉球 | #MEATBALL | monster | 是 | 否 |  |
| `291.0.0` | 陷阱 / Pitfall | Pitfall | **陷阱机关** | 否 | 否 | 是 |
| `291.1.0` |  | Suction Pitfall | unlisted_npc | 否 | 否 |  |
| `291.2.0` |  | Teleport Pitfall | unlisted_npc | 否 | 否 |  |
| `292.0.0` | 炸药桶 | Movable TNT | **陷阱机关** | 否 | 否 | 是 |
| `292.1.0` |  | Movable TNT (Mine Crafter) | unlisted_npc | 否 | 否 |  |
| `293.0.0` |  | Ultra Greed Coin (Spinner) | unlisted_npc | 否 | 否 |  |
| `293.1.0` |  | Ultra Greed Coin (Key) | unlisted_npc | 否 | 否 |  |
| `293.2.0` |  | Ultra Greed Coin (Bomb) | unlisted_npc | 否 | 否 |  |
| `293.3.0` |  | Ultra Greed Coin (Heart) | unlisted_npc | 否 | 否 |  |
| `294.0.0` |  | Ultra Greed Door | unlisted_npc | 否 | 否 |  |
| `295.0.0` | 玉米粒地雷 | #CORN_MINE | monster | 否 | 否 |  |
| `296.0.0` | 死寂苍蝇 | #HUSH_FLY | monster | 否 | 否 |  |
| `297.0.0` | 死寂裂口尸 | #BLUE_GAPER | monster | 否 | 否 |  |
| `298.0.0` | 死寂脓液囊 | #BLUE_BOIL | monster | 是 | 是 |  |
| `299.0.0` | 贪婪裂口尸 | #GREED_GAPER | monster | 否 | 否 |  |
| `300.0.0` | 蘑菇 | #MUSHROOM | monster | 是 | 否 |  |
| `301.0.0` | 剧毒脑子 | #POISON_MIND | monster | 否 | 否 |  |
| `302.0.0` | 石肥仔 | #STONEY | monster | 否 | 否 |  |
| `302.10.0` |  | #CROSS_STONEY | unlisted_npc | 否 | 否 |  |
| `303.0.0` | 水疱跳蛛 | #BLISTER | monster | 是 | 否 |  |
| `304.0.0` | 怪形爬墙蛛 | #THE_THING | monster | 否 | 否 |  |
| `305.0.0` | 迷你萌死戳 | #MINISTRO | monster | 是 | 否 |  |
| `306.0.0` | 黑洞 | #PORTAL | monster | 否 | 否 |  |
| `306.1.0` | 小黑洞 | #LIL_PORTAL | monster | 否 | 否 |  |
| `307.0.0` | 焦油小子 | #TAR_BOY | monster | 是 | 是 |  |
| `307.0.1` |  | #TAR_BOY_MOUTH | unlisted_npc | 否 | 否 |  |
| `308.0.0` | 小瘘管 | #FISTULOID | monster | 是 | 是 |  |
| `309.0.0` | 焦油囊 | #GUSH | monster | 是 | 否 |  |
| `310.0.0` | 麻风怪 | #LEPER | monster | 否 | 否 |  |
| `310.0.1` |  | #LEPER_STAGE_2 | unlisted_npc | 否 | 否 |  |
| `310.0.2` |  | #LEPER_STAGE_3 | unlisted_npc | 否 | 否 |  |
| `310.0.3` |  | #LEPER_STAGE_4 | unlisted_npc | 否 | 否 |  |
| `310.1.0` | 麻风怪的血肉 | #LEPER_FLESH | monster | 否 | 否 |  |
| `311.0.0` | 水雷头 | #MR_MINE | monster | 是 | 是 |  |
| `311.10.0` |  | Mr. Mine Neck | unlisted_npc | 否 | 否 |  |
| `401.0.0` | 血痕畸胎 | #THE_STAIN | boss | 否 | 否 |  |
| `402.0.0` | 布朗尼 | #BROWNIE | boss | 否 | 否 |  |
| `403.0.0` | 被遗弃者 | #THE_FORSAKEN | boss | 否 | 否 |  |
| `404.0.0` | 小角恶魔 | #LITTLE_HORN | boss | 否 | 否 |  |
| `404.1.0` |  | Dark Ball | unlisted_npc | 否 | 否 |  |
| `405.0.0` | 绷带人 | #RAG_MAN | boss | 是 | 是 |  |
| `405.1.0` |  | Rag Man's Head | unlisted_npc | 是 | 否 |  |
| `406.0.0` | 究极贪婪 | #ULTRA_GREED | boss | 是 | 否 |  |
| `406.1.0` | 究极大贪婪 | #ULTRA_GREEDIER | boss | 否 | 否 |  |
| `407.0.0` | 死寂 | #HUSH | boss | 否 | 否 |  |
| `408.0.0` |  | Hush (Skinless) | unlisted_npc | 否 | 否 |  |
| `409.0.0` | 超级绷带人 | #RAG_MEGA | boss | 否 | 否 |  |
| `409.1.0` |  | Purple Ball | unlisted_npc | 否 | 否 |  |
| `409.2.0` |  | Rag Mega's Rebirth Pillar | unlisted_npc | 否 | 否 |  |
| `410.0.0` | 开膛姐妹 | #SISTERS_VIS | boss | 否 | 否 |  |
| `411.0.0` | 巨角恶魔 | #BIG_HORN | boss | 是 | 否 |  |
| `411.1.0` |  | Small Hole | unlisted_npc | 否 | 否 |  |
| `411.2.0` |  | Big Hole | unlisted_npc | 否 | 否 |  |
| `412.0.0` | 精神错乱 | #DELIRIUM | boss | 否 | 否 |  |
| `413.0.0` | 胖蛆族母 | #THE_MATRIARCH | boss | 是 | 否 |  |
| `802.0.0` | 嗜血小宠 | #BLOOD_PUPPY | monster | 否 | 否 |  |
| `802.1.0` |  | #BLOOD_PUPPY | unlisted_npc | 否 | 否 |  |
| `803.0.0` |  | Blind Bat | unlisted_npc | 否 | 否 |  |
| `804.0.0` | 震地鬼面 | #QUAKE_GRIMACE | **陷阱机关** | 否 | 否 | 是 |
| `804.0.1` | 震地鬼面 | Quake Grimace | **陷阱机关** | 否 | 否 | 是 |
| `804.0.2` | 震地鬼面 | Quake Grimace | **陷阱机关** | 否 | 否 | 是 |
| `804.0.3` | 震地鬼面 | Quake Grimace | **陷阱机关** | 否 | 否 | 是 |
| `805.0.0` | 主教像 | #BISHOP | monster | 否 | 否 |  |
| `806.0.0` | 充水肥仔 | #BUBBLES | monster | 是 | 否 |  |
| `807.0.0` | 隐鬼 | #WRAITH | monster | 否 | 否 |  |
| `808.0.0` | 萤火苍蝇 | #WILLO | monster | 是 | 是 |  |
| `809.0.0` |  | #BOMB_GRIMACE | unlisted_npc | 否 | 否 |  |
| `810.0.0` | 小水蛭 | #SMALL_LEECH | monster | 否 | 否 |  |
| `811.0.0` | 潜水裂口尸 | #DEEP_GAPER | monster | 否 | 否 |  |
| `811.0.1` |  | Deep Gaper | unlisted_npc | 否 | 否 |  |
| `811.0.2` |  | Deep Gaper | unlisted_npc | 否 | 否 |  |
| `811.0.3` |  | Deep Gaper | unlisted_npc | 否 | 否 |  |
| `811.0.4` |  | Deep Gaper | unlisted_npc | 否 | 否 |  |
| `811.0.5` |  | Deep Gaper | unlisted_npc | 否 | 否 |  |
| `811.0.6` |  | Deep Gaper | unlisted_npc | 否 | 否 |  |
| `812.0.0` | 水栖呕血头 | #SUB_HORF | monster | 是 | 否 |  |
| `812.1.0` | 堕化水栖呕血头 | #TAINTED_SUB_HORF | monster | 否 | 否 |  |
| `813.0.0` | 蓄水裂口尸 | #BLURB | monster | 否 | 否 |  |
| `814.0.0` | 水蜘蛛 | #STRIDER | monster | 否 | 否 |  |
| `815.0.0` | 骷髅鱼 | #FISSURE | monster | 否 | 否 |  |
| `816.0.0` | 捣蛋小鬼 | #POLTY | monster | 否 | 否 |  |
| `816.1.0` | 灵能小鬼 | #KINETI | monster | 否 | 否 |  |
| `817.0.0` | 水蛭棉花怪 | #PREY | monster | 否 | 否 |  |
| `817.1.0` | 棉花鬼 | #MULLIGHOUL | monster | 否 | 否 |  |
| `818.0.0` | 石头蜘蛛 | #ROCK_SPIDER | monster | 否 | 否 |  |
| `818.0.1` |  | #ROCK_SPIDER | unlisted_npc | 否 | 否 |  |
| `818.0.2` |  | #ROCK_SPIDER | unlisted_npc | 否 | 否 |  |
| `818.0.3` |  | #ROCK_SPIDER | unlisted_npc | 否 | 否 |  |
| `818.1.0` | 标记石头蜘蛛 | #TINTED_ROCK_SPIDER | monster | 否 | 否 |  |
| `818.1.1` |  | #TINTED_ROCK_SPIDER | unlisted_npc | 否 | 否 |  |
| `818.1.2` |  | #TINTED_ROCK_SPIDER | unlisted_npc | 否 | 否 |  |
| `818.1.3` |  | #TINTED_ROCK_SPIDER | unlisted_npc | 否 | 否 |  |
| `818.2.0` | 火炭蜘蛛 | #COAL_SPIDER | monster | 否 | 否 |  |
| `818.2.1` |  | #COAL_SPIDER | unlisted_npc | 否 | 否 |  |
| `818.2.2` |  | #COAL_SPIDER | unlisted_npc | 否 | 否 |  |
| `818.2.3` |  | #COAL_SPIDER | unlisted_npc | 否 | 否 |  |
| `819.0.0` | 苍蝇炸弹 | #FLY_BOMB | monster | 否 | 否 |  |
| `819.1.0` |  | #ETERNAL_FLY_BOMB | unlisted_npc | 否 | 否 |  |
| `820.0.0` | 丹尼 | #DANNY | monster | 是 | 是 |  |
| `820.1.0` | 火炭小子 | #COAL_BOY | monster | 是 | 是 |  |
| `821.0.0` | 爆破者 | #BLASTER | monster | 是 | 是 |  |
| `822.0.0` | 充气怪 | #BOUNCER | monster | 否 | 否 |  |
| `823.0.0` | 地震肥仔 | #QUAKEY | monster | 是 | 是 |  |
| `824.0.0` | 肉轮 | #GYRO | monster | 否 | 否 |  |
| `824.1.0` | 烤肉轮 | #GRILLED_GYRO | monster | 是 | 否 |  |
| `825.0.0` | 火焰圆头虫 | #FIRE_WORM | monster | 是 | 是 |  |
| `826.0.0` | 化石粪团 | #HARDY | monster | 否 | 否 |  |
| `827.0.0` | 无脸尸 | #FACELESS | monster | 否 | 否 |  |
| `827.1.0` | 堕化无脸尸 | #TAINTED_FACELESS | monster | 否 | 否 |  |
| `828.0.0` | 死灵骷髅头 | #NECRO | monster | 是 | 是 |  |
| `829.0.0` | 鼹鼠 | #MOLE | monster | 是 | 是 |  |
| `829.1.0` | 堕化鼹鼠 | #TAINTED_MOLE | monster | 是 | 是 |  |
| `830.0.0` | 肥骷髅仔 | #BIG_BONY | monster | 是 | 是 |  |
| `830.10.0` |  | Big Bone | unlisted_npc | 否 | 否 |  |
| `831.0.0` | 流肠肥仔 | #GUTTED_FATTY | monster | 是 | 否 |  |
| `831.10.0` |  | Gutted Fatty Eye | unlisted_npc | 否 | 否 |  |
| `831.20.0` | 溃烂脏团 | #FESTERING_GUTS | monster | 是 | 否 |  |
| `832.0.0` |  | #EXORCIST | unlisted_npc | 否 | 否 |  |
| `832.1.0` | 狂信徒 | #FANATIC | monster | 否 | 否 |  |
| `833.0.0` | 烛台鬼 | #CANDLER | monster | 是 | 是 |  |
| `834.0.0` | 鞭笞怪 | #WHIPPER | monster | 否 | 否 |  |
| `834.1.0` | 长鞭怪 | #SNAPPER | monster | 否 | 否 |  |
| `834.2.0` | 狂鞭怪 | #FLAGELLANT | monster | 否 | 否 |  |
| `835.0.0` | 窥眼肥仔 | #PEEPING_FATTY | monster | 是 | 是 |  |
| `835.10.0` |  | Peeping Fatty Eye | unlisted_npc | 否 | 否 |  |
| `836.0.0` | 追踪开膛怪 | #VIS_VERSA | monster | 是 | 是 |  |
| `837.0.0` |  | #HENRY | unlisted_npc | 否 | 否 |  |
| `838.0.0` | 二级萤火苍蝇 | #LEVEL_2_WILLO | monster | 是 | 是 |  |
| `839.0.0` |  | #STRIFER | unlisted_npc | 否 | 否 |  |
| `840.0.0` | 跳跳脑 | #PON | monster | 是 | 是 |  |
| `841.0.0` | 还魂骷髅 | #REVENANT | monster | 否 | 否 |  |
| `841.1.0` | 四脸还魂骷髅 | #QUAD_REVENANT | monster | 否 | 否 |  |
| `842.0.0` |  | #NIGHTWATCH | unlisted_npc | 否 | 否 |  |
| `843.0.0` |  | Canary | unlisted_npc | 否 | 否 |  |
| `843.1.0` |  | Foreigner | unlisted_npc | 否 | 否 |  |
| `844.0.0` | 轰炸怪 | #BOMBGAGGER | monster | 是 | 否 |  |
| `850.0.0` | 二级裂口尸 | #LEVEL_2_GAPER | monster | 否 | 否 |  |
| `850.1.0` | 二级呕血头 | #LEVEL_2_HORF | monster | 否 | 否 |  |
| `850.2.0` | 二级喷血尸 | #LEVEL_2_GUSHER | monster | 否 | 否 |  |
| `851.0.0` | 跳蛛尸 | #TWITCHY | monster | 否 | 否 |  |
| `852.0.0` | 刺球 | #SPIKEBALL | **陷阱机关** | 否 | 否 | 是 |
| `853.0.0` | 小蝇蛆 | #SMALL_MAGGOT | monster | 否 | 否 |  |
| `854.0.0` | 水蛭成虫 | #ADULT_LEECH | monster | 是 | 否 |  |
| `855.0.0` | 二级冲刺蝇蛆 | #LEVEL_2_CHARGER | monster | 否 | 否 |  |
| `855.1.0` | 精英水蛭 | #ELLEECH | monster | 否 | 否 |  |
| `856.0.0` | 毒气囊 | #GASBAG | monster | 是 | 否 |  |
| `857.0.0` | 血红团 | #COHORT | monster | 是 | 是 |  |
| `858.0.0` |  | #VESSEL | unlisted_npc | 否 | 否 |  |
| `859.0.0` | 飘浮寄居骷髅 | #FLOAST | monster | 是 | 是 |  |
| `860.0.0` | 死胎 | #UNBORN | monster | 否 | 否 |  |
| `861.0.0` | 脓疱 | #PUSTULE | monster | 否 | 否 |  |
| `862.0.0` | 囊肿 | #CYST | monster | 是 | 否 |  |
| `863.0.0` | 流星锤 | #MORNINGSTAR | monster | 否 | 否 |  |
| `863.0.1` |  | #MORNINGSTAR | unlisted_npc | 否 | 否 |  |
| `863.0.2` | 流星锤 | #MORNINGSTAR | monster | 否 | 否 |  |
| `864.0.0` | 嘲弄眼 | #MOCKULUS | monster | 否 | 否 |  |
| `865.0.0` | 内脏开膛怪 | #EVIS | monster | 是 | 否 |  |
| `865.10.0` |  | Evis Guts | unlisted_npc | 否 | 否 |  |
| `866.0.0` | 堕化以扫 | #DARK_ESAU | boss | 否 | 否 |  |
| `866.0.1` |  | #DARKER_ESAU | unlisted_npc | 否 | 否 |  |
| `866.1.0` |  | Dark Esau's Pit | unlisted_npc | 否 | 否 |  |
| `867.0.0` | 母亲的暗影 | #MOTHERS_SHADOW | boss | 否 | 否 |  |
| `868.0.0` | 苍蝇队 | #ARMY_FLY | monster | 否 | 否 |  |
| `869.0.0` | 头瘤蜘蛛 | #MIGRAINE | monster | 否 | 否 |  |
| `870.0.0` | 粪球 | #DRIP | monster | 否 | 否 |  |
| `871.0.0` | 浮粪团 | #SPLURT | monster | 否 | 否 |  |
| `872.0.0` | 便便肉团 | #CLOGGY | monster | 是 | 是 |  |
| `873.0.0` | 蝇巢浮尸 | #FLY_TRAP | monster | 是 | 否 |  |
| `874.0.0` | 毒气棉花怪 | #GAS_DWARF | monster | 否 | 否 |  |
| `875.0.0` | 屁雷 | #POOT_MINE | monster | 否 | 否 |  |
| `876.0.0` | 便便鼻涕虫 | #DUMP | monster | 是 | 否 |  |
| `876.1.0` | 便便鼻涕虫的头 | #DUMP_HEAD | monster | 是 | 否 |  |
| `877.0.0` | 怨恨 | #GRUDGE | **陷阱机关** | 否 | 否 | 是 |
| `878.0.0` | 阴湿跟屁虫 | #BUTT_SLICKER | monster | 否 | 否 |  |
| `879.0.0` | 浮肿尸 | #BLOATY | monster | 是 | 否 |  |
| `880.0.0` | 血处女 | #FLESH_MAIDEN | monster | 否 | 否 |  |
| `881.0.0` | 小钉虫 | #NEEDLE | monster | 否 | 否 |  |
| `881.1.0` | 白骨虫 | #PASTY | monster | 否 | 否 |  |
| `882.0.0` | 尘鬼 | #DUST | monster | 否 | 否 |  |
| `883.0.0` | 受生恶魔宝宝 | #BABY_BEGOTTEN | monster | 是 | 是 |  |
| `884.0.0` | 蜘蛛群 | #SWARM_SPIDER | monster | 否 | 否 |  |
| `885.0.0` | 邪教徒 | #CULTIST | monster | 是 | 否 |  |
| `885.1.0` | 血腥邪教徒 | #BLOOD_CULTIST | monster | 是 | 是 |  |
| `885.10.0` |  | Bone Trap | unlisted_npc | 否 | 否 |  |
| `886.0.0` | 开膛肥仔 | #VIS_FATTY | monster | 否 | 否 |  |
| `886.1.0` | 魔胎 | #FETAL_DEMON | monster | 否 | 否 |  |
| `887.0.0` | 尘埃死人头骨 | #DUSTY_DEATHS_HEAD | monster | 否 | 否 |  |
| `888.0.0` | 暗影肥仔 | #SHADY | monster | 是 | 是 |  |
| `889.0.0` | 嘎吱骨 | #CLICKETY_CLACK | monster | 否 | 否 |  |
| `890.0.0` | 漫步木乃伊 | #MAZE_ROAMER | monster | 是 | 是 |  |
| `890.0.1` |  | #MAZE_ROAMER | unlisted_npc | 否 | 否 |  |
| `891.0.0` | 山羊 | #GOAT | monster | 否 | 否 |  |
| `891.1.0` | 黑山羊 | #BLACK_GOAT | monster | 是 | 是 |  |
| `892.0.0` | 胀血团 | #POOFER | monster | 否 | 否 |  |
| `893.0.0` | 链球 | #BALL_AND_CHAIN | monster | 否 | 否 |  |
| `900.0.0` | 裂面爬墙蛛 | #REAP_CREEP | boss | 否 | 否 |  |
| `901.0.0` | 小水泡 | #LIL_BLUB | boss | 否 | 否 |  |
| `902.0.0` | 造雨人 | #RAINMAKER | boss | 否 | 否 |  |
| `903.0.0` | 锁链假面 | #THE_VISAGE | boss | 否 | 否 |  |
| `903.1.0` |  | Visage Mask | unlisted_npc | 否 | 否 |  |
| `903.10.0` |  | Visage Chain | unlisted_npc | 否 | 否 |  |
| `903.20.0` |  | Visage Plasma | unlisted_npc | 否 | 否 |  |
| `904.0.0` | 塞壬 | #SIREN | boss | 否 | 否 |  |
| `904.1.0` |  | Siren's Skull | unlisted_npc | 否 | 否 |  |
| `904.10.0` |  | Siren Helper Projectile | unlisted_npc | 否 | 否 |  |
| `905.0.0` | 大异端 | #THE_HERETIC | boss | 是 | 是 |  |
| `906.0.0` | 岩角恶魔 | #HORNFEL | boss | 否 | 否 |  |
| `906.1.0` |  | Hornfel Decoy | unlisted_npc | 否 | 否 |  |
| `907.0.0` | 大基甸 | #GREAT_GIDEON | boss | 否 | 否 |  |
| `907.0.1` |  | Great Gideon (defeated) | unlisted_npc | 否 | 否 |  |
| `908.0.0` | 糖梅宝宝 | #BABY_PLUM | boss | 否 | 否 |  |
| `909.0.0` | 鞭刃怪 | #THE_SCOURGE | boss | 否 | 否 |  |
| `909.10.0` |  | The Scourge (chain) | unlisted_npc | 否 | 否 |  |
| `910.0.0` | 嵌体怪 | #CHIMERA | boss | 否 | 否 |  |
| `910.1.0` |  | Chimera (body) | unlisted_npc | 否 | 否 |  |
| `910.2.0` |  | Chimera (head) | unlisted_npc | 否 | 否 |  |
| `911.0.0` | 腐脏巨面 | #ROTGUT | boss | 否 | 否 |  |
| `911.1.0` |  | Rotgut (maggot) | unlisted_npc | 否 | 否 |  |
| `911.2.0` |  | Rotgut (heart) | unlisted_npc | 否 | 否 |  |
| `912.0.0` | 母亲 | #MOTHER | boss | 否 | 否 |  |
| `912.10.0` |  | Mother 2 | unlisted_npc | 否 | 否 |  |
| `912.20.0` | 僵尸以撒 | #DEAD_ISAAC | monster | 否 | 否 |  |
| `912.30.0` |  | Mother Worm | unlisted_npc | 否 | 否 |  |
| `912.100.0` |  | Mother Ball | unlisted_npc | 否 | 否 |  |
| `912.100.1` |  | Mother Ball (Medium) | unlisted_npc | 否 | 否 |  |
| `912.100.2` |  | Mother Ball (Small) | unlisted_npc | 否 | 否 |  |
| `913.0.0` | 冥明火灵 | #MIN_MIN | boss | 否 | 否 |  |
| `914.0.0` | 拦路屎 | #CLOG | boss | 否 | 否 |  |
| `915.0.0` | 焦皮小子 | #SINGE | boss | 否 | 否 |  |
| `915.1.0` |  | Singe's Ball | unlisted_npc | 否 | 否 |  |
| `916.0.0` | 大乞丐宝 | #BUMBINO | boss | 是 | 是 |  |
| `917.0.0` | 结肠造口袋 | #COLOSTOMIA | boss | 是 | 否 |  |
| `918.0.0` | 虫形大便 | #TURDLET | boss | 否 | 否 |  |
| `919.0.0` |  | #RAGLICH | unlisted_npc | 否 | 否 |  |
| `919.1.0` |  | Raglich Arm | unlisted_npc | 否 | 否 |  |
| `920.0.0` | 魔角兄弟 | #HORNY_BOYS | boss | 否 | 否 |  |
| `921.0.0` | 附身邪鬼 | #CLUTCH | boss | 否 | 否 |  |
| `921.1.0` |  | Clutch Orbital | unlisted_npc | 否 | 否 |  |
| `950.0.0` | 教条 | #DOGMA | boss | 否 | 否 |  |
| `950.1.0` |  | Dogma's TV | unlisted_npc | 否 | 否 |  |
| `950.2.0` |  | Dogma Angel | unlisted_npc | 否 | 否 |  |
| `950.10.0` |  | Dogma Angel Baby | unlisted_npc | 否 | 否 |  |
| `951.0.0` | 祸兽 | #THE_BEAST | boss | 否 | 否 |  |
| `951.1.0` |  | Stalactite | unlisted_npc | 否 | 否 |  |
| `951.2.0` |  | Beast Rock Projectile | unlisted_npc | 否 | 否 |  |
| `951.3.0` |  | Beast Soul | unlisted_npc | 否 | 否 |  |
| `951.10.0` | 究极饥荒骑士 | #ULTRA_FAMINE | boss | 否 | 否 |  |
| `951.11.0` |  | Ultra Famine Fly | unlisted_npc | 否 | 否 |  |
| `951.20.0` | 究极瘟疫骑士 | #ULTRA_PESTILENCE | boss | 否 | 否 |  |
| `951.21.0` |  | Ultra Pestilence Fly | unlisted_npc | 否 | 否 |  |
| `951.22.0` |  | Ultra Pestilence Maggot | unlisted_npc | 否 | 否 |  |
| `951.23.0` |  | Ultra Pestilence Fly Ball | unlisted_npc | 否 | 否 |  |
| `951.30.0` | 究极战争骑士 | #ULTRA_WAR | boss | 否 | 否 |  |
| `951.31.0` |  | Ultra War Bomb | unlisted_npc | 否 | 否 |  |
| `951.40.0` | 究极死亡骑士 | #ULTRA_DEATH | boss | 否 | 否 |  |
| `951.41.0` |  | Ultra Death Scythe | unlisted_npc | 否 | 否 |  |
| `951.42.0` |  | Ultra Death Head | unlisted_npc | 否 | 否 |  |
| `951.100.0` |  | Background (Beast) | unlisted_npc | 否 | 否 |  |
| `951.101.0` |  | Background (Famine) | unlisted_npc | 否 | 否 |  |
| `951.102.0` |  | Background (Pestilence) | unlisted_npc | 否 | 否 |  |
| `951.103.0` |  | Background (War) | unlisted_npc | 否 | 否 |  |
| `951.104.0` |  | Background (Death) | unlisted_npc | 否 | 否 |  |
| `960.0.0` |  | Generic Prop | unlisted_npc | 否 | 否 |  |
| `960.1.0` |  | Mom's Dresser | unlisted_npc | 否 | 否 |  |
| `960.2.0` |  | Mom's Vanity | unlisted_npc | 否 | 否 |  |
| `960.3.0` |  | Couch | unlisted_npc | 否 | 否 |  |
| `960.4.0` |  | TV | unlisted_npc | 否 | 否 |  |
| `963.0.0` |  | Frozen Enemy | unlisted_npc | 否 | 否 |  |
| `964.0.0` |  | Dummy | unlisted_npc | 否 | 否 |  |
| `965.0.0` |  | Minecart | unlisted_npc | 否 | 否 |  |
| `966.0.0` |  | Siren Helper | unlisted_npc | 否 | 否 |  |
| `967.0.0` |  | Hornfel Door | unlisted_npc | 否 | 否 |  |
