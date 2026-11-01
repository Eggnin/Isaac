# J460 NPC 静态参考

来源为 `python/src/engine_*catalog*` 与静态机制候选，原件仍保存在 Python 参考项目。本目录不参与新 C++ 程序的运行或编译。

包括 653 个本机 EntityConfig 精确 Type/Variant/Subtype 组合，覆盖怪物、头目、陷阱机关及其他 NPC；不是653种普通小怪。陷阱已在 TSV 的 category/role 和 trap_room 字段标出，原分类另存保留。

完整列表见 [653项身份目录](ENTITY-CATALOG.md)，银按钮的23类陷阱、精确身份及非NPC地形/炸弹见 [陷阱目录](TRAP-ROOM-CATALOG.md)。另保留469个 Wiki 怪物身份、4,614个身份与动画名条目和2,210个动画事件触发点。静态线索和陷阱归类不构成已确认攻击、伤害或实时危险预测。

迷你 Boss 22 个与 Boss 110 个的严格攻击识别、严格攻击预测及未达标原因，见 [迷你 Boss 与 Boss 严格攻击目录](BOSS-STRICT-ATTACK-CATALOG.md)。当前 132 个身份中严格识别 21 个、严格预测 7 个；本轮先用已有原版日志新增 11 个严格识别，其中 5 个又用第二种子 `7W3L P1Z9` 补齐跨种子稳定时点，升级为严格预测。其余稳定时点仍为同种子 provisional，不冒充严格预测。静态候选不自动生成 Planner 威胁。

`role=monster` 的 322 个身份见 [怪物严格攻击目录](MONSTER-STRICT-ATTACK-CATALOG.md)：严格识别 155 个、严格预测 94 个、provisional 24 个、仍为静态候选 156 个、没有攻击候选 11 个。其中 42 个只有 AI 函数调用且没有动画事件 cue 的身份已归为 `contact_only`（37）或 `no_object_attack_evidence`（5），不再作为可批量补测候选。批量补测使用原版宽房原生生成和控制台 `seed`/`goto`，未改角色数值或存档。

Planner 威胁覆盖审计见 [PLANNER-THREAT-COVERAGE.md](PLANNER-THREAT-COVERAGE.md)：37 个 `contact_only` 全部已有 `planning_validated` 接触模型；94 个严格预测身份中 30 个已有预生成威胁覆盖，64 个仍缺攻击几何。该审计只读现有模型，不新增威胁。

其中 108 个静态攻击候选的未验证假设层见 [静态严格识别/预测假设](BOSS-STATIC-STRICT-HYPOTHESIS.md)：108 个可形成静态识别假设，76 个有动画帧可形成静态时点假设，32 个只有调用、没有动画帧。该层严格字段仍为否，不进入运行时，不能当作严格识别或严格预测。
