# J460 敌人状态、Boss 阶段、无敌与狂暴恢复

日期：2026-10-29

## 结果摘要

本轮复用现有 J460 PE 索引、REPENTOGON 布局、资源目录、机制数据库和离线训练
程序，没有重新解包或全量重编译。

核心结论：

1. 已定位统一敌人 AI 分发器 `0x006c2990`。它按 `Type - 10` 查询 958 项映射，
   跳到 242 个 case，再调用具体 AI 函数。
2. 956 个 Type 已映射到 239 个具体 AI 函数。
3. 232 个 AI 函数直接读写 `State +0xB64`，共 1,253 个写入点。
4. 147 个 AI 函数直接读写 `StateFrame +0x410`，共 782 个写入点。
5. 55 个 AI 函数直接写 `Invincible +0x3B0`，共 104 个写入点。
6. 110 个 Boss 身份全部进入阶段图数据库；99 个已从状态写入和邻近分支恢复出
   至少一条候选阶段边，共 794 条边；69 个 Boss 函数包含 HP/MaxHP 条件。
7. 247 个身份已有从 State 写入窗口到公共攻击/生成函数的关联。
8. 8 个定向离线探针全部运行成功，7 个目标记录到状态转换。
9. Matriarch 的 `State 13 RageBegin` 已通过离线运行验证。
10. 外部内存日志已直接观察到 3 个实体的 `Invincible=true`，但这些不是 Boss，
    且内部触发原因仍需结合静态代码。

主数据库：
[`isaac_j460_state_semantics.json`](../data/mechanisms/isaac_j460_state_semantics.json)

校验：
[`state-semantics-check.json`](../validation/state-semantics-check.json)

## 2026-10-29 运行时接入补充

本报告原始结论之后已完成以下工作，详细证据见
[`RUNTIME-MECHANISM-INTEGRATION-20261029.md`](RUNTIME-MECHANISM-INTEGRATION-20261029.md)：

- 794 条 Boss 候选边已批量分类并加入条件文字、依赖、调用效果、预警候选、
  静态证据和未解决原因。只有 Monstro `8 -> 4` 一条边能由现有离线报告精确匹配。
- C++ 已接入运行时语义解释层，主程序实际加载
  `data/mechanisms/gamebot_runtime_semantics.json`。
- Matriarch 的 AI I2 在 2,400 帧探针中实际出现 0..3；State 13 / RageBegin
  在帧 2,381、HP 329.5、AI I1 400 时出现。
- Fetal Demon `886.1.0` 直接生成时观察到 `Child=0`、State 7、Rage/Walk02，
  未进入 State 16。State 16 仍是未解决静态候选。
- Ultra Greed 的 ShieldStrength 在 Slot/Spin/Guard 中从 65 升到 130；
  Invincible 字段未翻转。不能把 ShieldStrength 改写为 Invincible。
- Big Horn 观察到 State 13 的 PopUp/Charge/Charge2/Charge3，但没有运行中
  Invincible 翻转。
- Delirium 的 CycleID 实际由 `0xbe0..0xbe7` 的 64 位打包值组成；旧的 32 位
  读取不完整。AttackID 低 24 位与高 8 位需分开保留，攻击映射仍未完成。
- 新增 C++ 测试为 99 项通过、0 失败，其中 12 项是原版房间 shape 夹具。
- 本轮没有运行中的游戏进程，新增 AI/Delirium 字段尚未完成新的真实外部读取验证。

## 公共 AI 分发器

`0x006c2990` 的本机机器码：

```text
mov eax, [edi+0x28]       ; Entity.Type
sub eax, 10
cmp eax, 0x3bd
movzx eax, byte [eax+0x6c45a4]
jmp dword [eax*4+0x6c41dc]
```

证据：

- 分发器范围：`0x006c2990..0x006c4a90`，2,302 条指令。
- Type 空间：`10..967`。
- 映射字节表：`0x006c45a4`，958 项。
- case 跳转表：`0x006c41dc`，242 项。
- 241 个不同 case 代码地址，实际映射到 239 个不同 AI 函数。
- 已校验 Monstro、Widow、The Cage、Cross Stoney、Delirium 的映射。

这一步把“逐个敌人找入口”变成“统一表驱动恢复”。Variant 和 SubType 仍由
具体 AI 函数内部处理，不能把同一 Type 的所有变体视为同一行为。

## 逐敌人状态语义

数据库为 653 个 EntityConfig 分别保留：

- Type/Variant/SubType。
- 映射到的 AI 函数。
- State 写入地址、目标值或动态目标。
- 邻近 State 比较、Variant/SubType 比较、StateFrame 和 HP 条件。
- 邻近动画调用。
- `FireProjectiles`、`FireBossProjectiles`、实体生成 relay 和 create dispatcher
  调用。
- Invincible、SpeedMultiplier、ProjectileDelay/Cooldown 的邻近写入。
- 历史回调或离线运行中实际出现的 State/动画。
- 每条证据的等级。

### 已由离线原版引擎观察的状态

| 身份 | 已观察 State | 对应动画 |
| --- | --- | --- |
| Monstro `20.0.0` | 1, 3, 4, 6, 7, 8 | Appear/Walk/Taunt/JumpUp/JumpDown |
| Widow `100.0.0` | 1, 4, 6, 8, 9 | Idle/Jump/Attack01/Attack02 |
| Matriarch `413.0.0` | 1, 3, 5, 6, 7, 8, 9, 10, 13 | Appear/Idle/Flinch/AirFlinch/Jump/Attack1/Attack2/Attack3/RageBegin |
| Gemini `79.0.0` | 1, 3, 4, 8 | Appear/Pant/WalkHori/WalkVert |
| Vis Fatty `886.1.0` | 1, 7 | Walk01/Rage/Walk02 |
| Big Horn `411.0.0` | 1, 3, 4, 13 | Appear/Idle/PopDown/PopUp/Charge/Charge2/Charge3/BigHoleOpen/Close |
| Ultra Greed `406.0.0` | 2, 3, 4, 100, 200, 300, 310, 400, 510, 600 | Hanging/Tantrum/Slot/Guard/Spin/ShootDown/移动 |

这些映射来自实际 State/Animation 同帧变化，不再只是资源名词面候选。

### State 语义的边界

数据库中的 `label` 只使用可见证据：

- 有实际动画：记录动画名并给出粗分类。
- 有明确静态写入但无运行动画：`static_candidate`。
- 无写入、无运行动画：`unknown`。
- 同一 State 在不同 Variant 下出现多个动画时保留全部，不强行合并成一个名字。

状态编号不存在全引擎统一 Enum。`0`、`3`、`4` 等数值在不同 AI 函数中含义不同。

## Boss 阶段图

阶段图位于数据库 `boss_phase_graphs`：

- 110 个 Boss 身份。
- 794 条候选边。
- 99 个 Boss 至少有一条候选边。
- 69 个 Boss 函数包含 HP/MaxHP 条件窗口。
- 每条边保留源 State 候选、目标 State、写入地址、StateFrame 条件、HP 条件、
  Variant/SubType 门、速度写入和 Invincible 写入。

“候选边”表示代码中存在目标 State 写入，且相邻控制流窗口包含源状态/生命值条件。
它不是完整的 CFG 路径证明。数据库没有把这类边标为运行已验证。

### Matriarch `413.0.0`

已确认字段和代码：

- AI：`0x004c59d0`。
- 阶段索引：`AI I2 +0xBC4`，范围由代码限定为 `0..3`。
- 阶段计时/延迟：`AI I1 +0xBC0`。
- 生命值：`+0x380`；最大生命：`+0x384`。
- 最大生命比例表：`0xB60170..0xB6017C = 0.80, 0.65, 0.50, 0.35`。
- 表引用：`0x004c5a7d`。
- 阶段索引更新：`0x004c5f17..0x004c5f2c`。
- 阶段索引重置：`0x004c5f5b`。

狂暴：

- 进入点：`0x004c61d0..0x004c6223`。
- 条件：`AI I1 > 300`、`AI I2 > 2`、RNG `% 5 == 0`。
- 动作：State 13、StateFrame 0、AI I1 400、播放 `RageBegin`。
- 持续：`RageLoop`，StateFrame 增长，AI I1 每帧减 2。
- 结束：AI I1 小于等于 0 后播放 `RageEnd`，State 回到 3。

离线验证：

- 报告中第 2,381 帧从 State 3 进入 State 13。
- 动画为 `RageBegin`。
- 当时 HP 为 329.5。

结论：

- 字段、状态和 RageBegin/Loop/End 路径：控制流确认。
- 进入条件：静态确认。
- 实际 State 13 进入：离线运行已验证。
- HP 比例表与阶段索引的精确对应语义：仍是静态候选，因为触发比较同时涉及
  `Entity+0x14`，该字段的原始业务含义尚未命名。

### Vis Fatty / Fetal Demon `886`

AI：`0x004ea3d0`。

- Variant 1 在 `0x004ea413` 进入独立状态机，State 分发范围为 `0..8`。
- State 16 对应 `RageStart`。
- 进入条件在 `0x004ead10..0x004ead1d`：
  - State 为 4；
  - Child `+0x3C0` 为空；
- 进入效果：
  - State 16；
  - ProjectileDelay 设为 0；
  - 播放 `RageStart`；
  - 播放 SFX 138。
- `0x004eb589` 根据纵向朝向在 `RageDown`/`RageUp` 间选择。
- `RageEnd` 分支把 State 设回 4，并设置 60..89 帧的射击冷却。

离线验证：

- `886.1.0` 在 2,400 帧内只观察到 State 1 和 7。
- 目标在 322 帧消失，未进入 State 16。
- `886.0.0` 生成出 `886.1.0` 子体，但采集器只跟踪了 Variant 0，因此没有
  Variant 1 的状态时间线。

结论：

- `RageStart` 的静态进入条件：控制流确认。
- State 16 行为：静态确认。
- 离线 State 16：尚未验证。

### Gemini / Steven `79`

资源中存在 `RageBody`、`Rage`，但运行中同时出现 `79.0.0` 父体、
`79.10.0` 和 `79.20.0` 子体。

当前结论：

- `Rage*` 动画资源存在。
- 运行 States 为 1、3、4、8。
- 父体和子体生成关系存在。
- 尚不能把这些动画认定为“限时狂暴”，它们也可能属于分裂/受击转换。

数据库将其保留为未确认狂暴样例，不填入触发条件。

### Delirium `412.0.0`

AI：`0x004a6500`。

已加入外部读取契约的独立字段：

| 字段 | 偏移 | 类型 |
| --- | ---: | --- |
| BossType | `0xBC8` | uint32 |
| BossVariant | `0xBCC` | uint32 |
| TransformationTimer | `0xBD0` | uint16 |
| RemainingAttacks | `0xBD2` | uint8 |
| DeliriumState | `0xBD3` | uint8 |
| AttackID | `0xBD8` | uint32 |
| AttackAngle | `0xBDC` | uint8 |
| CycleID | `0xBE0..0xBE7` | packed uint64 |

字段布局由 REPENTOGON、本机实体结构和反汇编共同确认。`0x004a6d6e` 与
`0x004a7722` 对 `0xbe0/0xbe4` 组成的 64 位值做移位和掩码，因此 CycleID
不能按单独 32 位整数解释；当前输出 low 7、bit 15..24、bit 25..34 的原始解码。
攻击 ID 对应的具体攻击清单仍需继续按 Cycle/State 分支恢复，当前不依据字段名
生成攻击预测。

## 无敌与伤害免疫

### 公共伤害过滤

已定位：

- `Entity::TakeDamage`：`0x006ace60`，342 条指令。
- 伤害前过滤函数：`0x006ac560`。

`0x006ac560` 直接读取：

- `EntityCollisionClass +0x188`；
- `Invincible +0x3B0`；
- `Dead +0x173`；
- Entity flags `+0x168/+0x16C`。

公共过滤确认：

- 只有 NPC 类型范围参与敌人伤害路径；
- CollisionClass 必须处于有效攻击碰撞类别；
- `Invincible != 0` 拒绝伤害；
- `Dead != 0` 拒绝伤害；
- 友方/来源关系存在额外过滤，不能只用“没掉血”推断无敌。

具体位置和上下文保存在数据库
`invincibility.damage_model` 与 `ai_functions.*.invincible_writes`。

### 静态 AI 无敌写入

- 55 个 AI 函数直接写 `Invincible +0x3B0`。
- 共 104 个写入点。
- 数据库记录每个写入地址、字面值、邻近 State 条件和所属身份。
- 25 个 Boss 身份具有直接 Invincible 写入点。

这些是窗口候选，不等于窗口已经执行。

### 外部内存实际观察

对 11 份包含 `"invulnerable":true` 的 Gamebot 帧日志做了流式扫描：

| 身份 | 名称 | State | 动画 | 实例窗口 | 观察时钟长度 |
| --- | --- | --- | --- | ---: | --- |
| `96.0.0` | 永恒苍蝇 | 4 | Fly | 3 | 623..10,311 |
| `218.0.0` | 贴墙刺块 | 4 | Spikes/No-Spikes | 4 | 161..339 |
| `302.0.0` | 石肥仔 | 1, 4, 16, 18 | Walk/Pant/Death | 9 | 169..602 |

证据：
[`external-invincibility-20261029.json`](state-semantics/external-invincibility-20261029.json)

能力边界：

- `Invincible` 字段可通过当前外部内存稳定读取：已实机验证。
- 这三个身份的“内部为什么无敌”尚未由运行日志证明。
- 本次 8 个 Boss 定向探针没有观察到 Boss 的 `Invincible` 翻转，因此不能把
  Big Horn、Ultra Greed 等静态写入当作已验证 Boss 无敌窗口。

## 狂暴

数据库 `enrage_candidates` 只保留有 Rage 命名动画或明确 Rage 分支的 10 条身份
记录。另有 19 条 SpeedMultiplier + HP/StateFrame 候选单独放在
`speed_change_candidates`，避免把普通速度变化误称狂暴。

已确认级别：

| 身份 | 触发条件 | 行为 | 验证 |
| --- | --- | --- | --- |
| Matriarch `413` | AI I1 > 300、AI I2 > 2、RNG %5 | State 13、RageBegin/Loop/End | 静态确认；State 13 离线验证 |
| Fetal Demon `886.1` | State 4、Child 为空 | State 16、RageStart | 静态确认；State 16 未运行验证 |
| Gemini `79` | 未知 | Rage/RageBody 动画及子体 | 只确认资源和状态，不能确认狂暴 |

## 状态与攻击机制关系

247 个身份在 State 写入窗口内关联到以下至少一个公共调用：

- `Entity_NPC::FireProjectiles 0x006cb2e0`
- `Entity_NPC::FireBossProjectiles 0x006ccdd0`
- 实体 spawn relay `0x00428b20`
- entity create dispatcher `0x006fe410`
- NPC projectile helper `0x006bec40`

这种关联基于固定指令距离，属于“状态写入窗口内的调用候选”，不是 CFG 执行证明。

离线运行补足了部分直接关系：

- Ultra Greed State 510：SpinStart/SpinConstant/SpinEnd；
- State 100：SlotStart/Spin/Outcomes；
- State 400：GuardStart/Guarding/GuardEnd；
- State 600：ShootDown；
- Big Horn State 13：PopUp/Charge/Charge2/Charge3；
- Matriarch State 8/9/10：Attack1/Attack2/Attack3；
- Monstro State 6/7/8：JumpUp/JumpDown/Taunt。

## Gamebot 外部读取对应

本轮保留现有 `ReadProcessMemory` 架构，并增加以下只读字段：

| 字段 | 偏移 | 用途 |
| --- | ---: | --- |
| MaxHealth | `0x384` | HP 比例、阶段阈值 |
| SpeedMultiplier | `0x39C` | 狂暴/速度变化候选 |
| AI V1/V2 | `0xBB0/0xBB8` | 逐敌人通用 AI 向量 |
| AI I1/I2 | `0xBC0/0xBC4` | 逐敌人通用 AI 整数、阶段索引、计时器 |
| Invincible | `0x3B0` | 全局伤害免疫标志 |
| ShieldStrength | `0xC40` | 非二元护盾 |
| BossStatusEffectCooldown | `0x238` | Boss 状态效果冷却 |
| Delirium 字段 | `0xBC8..0xBE0` | 变身、剩余攻击、内部 State、Attack/Cycle ID |
| BossColor | `0xC78` | Boss 配色/变体辅助 |

C++ 测试：79 项通过，0 失败。

## 离线验证

新增统一探针：
[`check_state_semantics.mjs`](../research/offline/check_state_semantics.mjs)

两个报告：

- [`state-semantics-runtime-20261029.json`](state-semantics/state-semantics-runtime-20261029.json)
- [`state-semantics-invincibility-20261029.json`](state-semantics/state-semantics-invincibility-20261029.json)

8/8 场景运行成功：

- Monstro `20.0.0`
- Widow `100.0.0`
- Matriarch `413.0.0`
- Fetal Demon `886.1.0`
- Vis Fatty `886.0.0`
- Gemini `79.0.0`
- Big Horn `411.0.0`
- Ultra Greed `406.0.0`

未验证：

- Matriarch 的 RageLoop/RageEnd 未在 2,400 帧窗口内完成。
- Fetal Demon State 16 未触发。
- Gemini Rage 与分裂/转换的关系未恢复。
- 8 个探针均未观察到目标 Boss 的 Invincible 翻转。
- Delirium 未完成离线状态图验证。

## 当前盲区

P0：

- 新增 ReadProcessMemory 字段已完成合成测试，但尚未用运行中的真实游戏重新采集。

P1：

- `Invincible` 只说明伤害过滤会拒绝命中；护盾、阶段减免、伤害上限和部分来源
  免疫仍需逐分支分析。
- 7 个 AI 函数没有直接 State 引用，可能完全不使用 State，也可能通过间接/父实体
  路径更新，不能按“无引用”判定无状态。

P2：

- 794 条 Boss 阶段边大多是静态候选；只有一小部分 State/动画有离线证据。
- 阶段边的源状态仍可能标为 `entry_or_unresolved`，说明 CFG 源分支没有在局部窗口
  内解析到。
- HP 表的精确业务语义、伤害上限和无伤窗口仍需针对性控制流重建。
- Delirium AttackID/CycleID 尚未映射到具体攻击。

P3：

- 普通怪、精英和 Boss 的 State 多对多关系已保留，但策略层尚未消费。

## 下一阶段优先级

1. 对 794 条 Boss 阶段边按 HP 条件、StateFrame 条件和运行出现频率排序，先恢复
   Matriarch、Vis Fatty、Ultra Greed、Big Horn、Delirium。
2. 对 `Invincible` 写入点做状态 CFG 切片，区分初始化、受击闪烁、阶段变身和
   真持续免疫。
3. 在真实游戏外部读取中验证新增的 AI I1/I2、Shield、BossColor 和 Delirium 字段。
4. 将逐敌人 State 表编译成策略侧只读结构，先支持已验证的 State/动画/攻击关系。

## 复现

```powershell
python D:/Isaac/research/mechanisms/analyze_external_invincibility.py
python D:/Isaac/research/mechanisms/build_mechanism_db.py
python D:/Isaac/research/mechanisms/analyze_state_semantics.py
node D:/Isaac/research/offline/check_state_semantics.mjs --steps=2400
powershell -NoProfile -ExecutionPolicy Bypass -File D:/Isaac/cpp/build.ps1 -Test
```
