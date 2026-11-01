# J460 全敌人机制识别与 Gamebot 运行时接入

日期：2026-10-29

## 结论

本轮完成了从状态语义数据库到 Gamebot 实时威胁输入的代码链路：

- 794 条 Boss 候选转换边已批量分类，并写入条件文字、依赖、调用效果、预警候选、
  静态证据、运行验证和未解决原因。
- 新增 653 身份的运行时语义库 `gamebot_runtime_semantics.json`。
- C++ 新增 `MechanismSemantics`，逐帧输出敌人身份、State、动作、Boss 阶段、
  Invincible、狂暴、攻击类型、目标、威胁几何、预测帧、来源和置信度。
- Eye、Bloat、Brimstone Head 三条已验证前摇规则从数据库生成威胁并交给现有
  `Planner`；其余 State 编号或静态候选不会直接生成攻击预测。
- 高价值 Boss 的 5 个 2,400 帧离线探针全部成功运行。真实外部字段读取仍缺少
  一次带新字段的实机会话。

## 当前能力分层

| 层级 | 当前能力 | 证据 |
| --- | --- | --- |
| AI 静态恢复 | 956 / 958 个 Type 映射到 239 个具体 AI 函数 | PE 统一分发器、CFG、交叉引用 |
| State 语义 | 2,095 个身份-State 记录中 851 个有运行或静态动画证据 | 状态写入、ANIM2 调用、历史回调和离线探针 |
| 外部字段读取 | 25 个逻辑字段已进入 `Entity` 和 JSONL | `cpp/src/reader.cpp`、合成内存测试 |
| 离线引擎验证 | 9 个身份有定向探针，8 个有实际状态转换 | 原版引擎 WASM 工作器 |
| 真实外部读取 | 3 个非 Boss 身份的 Invincible 窗口已实机观察 | 99 份历史 `ReadProcessMemory` JSONL |
| 实时攻击类型 | 7 个精确身份配置可命名攻击；其中仅少量具备完整几何 | 运行动画映射 + 前摇规则 |
| 攻击前预警 | 3 个机制有离线验证，Eye 有明确 1..10 动画帧触发链 | 原版引擎策略回归 |

流程已打通为：

```text
ReadProcessMemory
  -> Entity/State/AI/Delirium 字段
  -> exact Type/Variant/Subtype 语义查找
  -> MechanismObservation / MechanismWarning
  -> Planner threat geometry
  -> 躲避决策与 JSONL
```

## 新增运行时字段解释

新增 AI 和 Boss 字段不是只写进 `Entity`：

- `ai_i2`：Matriarch 的 0..3 阶段索引，直接输出 `boss_phase`。
- `ai_i1`：Matriarch State 13 的 Rage 计时器，按每帧减 2 计算
  `predicted_action_end_frame`。
- `shield_strength`：作为独立字段输出；不把非零 ShieldStrength 等同 Invincible。
- `child`：用于 Fetal Demon 的静态条件诊断，并进入日志。
- `DeliriumState/TransformationTimer`：逐帧输出。
- `AttackID`：保留原始 32 位值，同时输出低 24 位；高字节不能当作攻击编号。
- `CycleID`：修正为 `0xbe0..0xbe7` 的 64 位打包值，并输出低 7 位、
  bit 15..24、bit 25..34。
- `ai_v1/ai_v2`、ProjectileDelay/Cooldown、Shield、BossColor：已采集和记录；
  尚未形成通用攻击条件解释。

`MechanismObservation` 数据源会区分：

- `external-memory:reader+state-semantics:*`
- `external-memory:reader;state-unmapped-for-exact-identity`
- `external-memory:reader;identity-unmapped`

无法解释的值使用 `Unknown` 或整数 `-1`，不按 Type 或 State 猜测。

## 794 条 Boss 候选边

数据库中的 `boss_phase_graphs[*].edges[*]` 现包含：

- `mechanism_classes`
- `primary_class`
- `condition_expression`
- `dependencies`
- `call_effects`
- `creates_projectile_or_entity`
- `preattack_signal`
- `verification_status`
- `unresolved_reasons`
- `static_evidence`

分类结果：

| 分类 | 数量 |
| --- | ---: |
| 普通行为状态转换候选 | 233 |
| 攻击准备或蓄力候选 | 61 |
| 混合攻击/特殊动作候选 | 44 |
| 投射物或实体攻击候选 | 33 |
| Boss 阶段转换候选 | 22 |
| Invincible 结束候选 | 13 |
| Invincible 开始候选 | 6 |
| Invincible 动态写入候选 | 4 |
| 死亡或终止 | 2 |
| 其他终止/哨兵状态候选 | 2 |
| 攻击执行或转换 | 3 |
| 攻击恢复 | 2 |
| 狂暴或强化候选 | 4 |
| 未确定 | 254 |

只有 1 条边能由现有离线报告证明为实际发生的精确
`源 State -> 目标 State` 转换；其余 793 条仍是候选。这个数值低是正确的，
不能再用“分类数量”替代运行确认数量。

## 高价值 Boss

### Matriarch `413.0.0`

2,400 帧探针观察到 AI I2 的 0、1、2、3 四个值：

| 帧 | HP / MaxHP | AI I2 | State/Animation |
| ---: | --- | ---: | --- |
| 1 | 700 / 700 | 0 | 1 / Idle |
| 797 | 559 / 700 | 1 | 7 / AirFlinch |
| 1,843 | 453.5 / 700 | 2 | 7 / AirFlinch |
| 2,309 | 329.5 / 700 | 3 | 5 / Flinch |
| 2,381 | 329.5 / 700 | 3 | 13 / RageBegin |

结论：

- AI I2 到阶段索引的运行映射成立。
- State 13、RageBegin、AI I1=400 已同时观察。
- `IsEnraged` 可在精确身份、State 13 和已验证据下返回 true。
- RageLoop/RageEnd 未在窗口内完成；HP 比例表与阶段索引的精确分支仍未完全证明。

### Fetal Demon / Vis Fatty 子体 `886.1.0`

2,400 帧探针只观察到 State 1、7，动画 Walk01、Rage、Walk02。
观测时 `Child=0`，但没有进入静态报告中写的 State 16。

结论：

- State 7 的 Rage 动画已实际出现。
- State 16 仍是未解决静态候选。
- Rage 动画不能单独把 `IsEnraged` 设为 true。
- 静态 State 16 分支与当前直接生成场景不一致，下一步需要用父体、子体链接和
  特定房间组合继续测试。

### Ultra Greed `406.0.0`

观察到 State 2、3、4、100、200、300、310、400、510、600。

- State 100：SlotStart / SlotSpinningFast / SlotSpinningOutcomes。
- State 400：GuardStart / Guarding / GuardEnd。
- State 510：SpinStart / SpinConstant / SpinEnd。
- State 600：ShootDown。
- ShieldStrength 在这些动作期间从 65 升到 130。
- Invincible 字段没有翻转。

结论：

- 动作可从精确身份、State 和动画识别。
- ShieldStrength 是单独可读的伤害相关字段。
- 当前证据不能证明 ShieldStrength=130 等于完整无敌，Boss 阶段边界也仍是 Unknown。

### Big Horn `411.0.0`

观察到 State 1、3、4、13；State 13 包含 PopUp、Charge、Charge2、Charge3。

- 目标在观察窗口内保持可受伤。
- Invincible 字段没有翻转。
- 静态代码仍有 State 5、8、9、10、11、13、16 附近的无敌写入候选。

结论：

- 攻击动作识别已具备。
- 真实无敌窗口、洞口阶段伤害免疫和伤害上限仍未验证。

### Delirium `412.0.0`

2,400 帧主探针和 600 帧字段探针均成功：

- 外部 State 只观察到 1、0；动画为 Idle、Blink。
- DeliriumState 观察到 16 和 8。
- TransformationTimer 随运行递减，RemainingAttacks 在 3/4 之间变化。
- AttackID 原始值在 Idle/Blink 间大幅变化；低 24 位仍存在多个候选值。
- CycleID 的 64 位值包含明显变化的 bit 15..24 和 bit 25..34。
- 反汇编 `0x4a6d6e`、`0x4a7722` 确认代码对相邻 64 位值做移位和掩码，
  因此旧的 32 位 CycleID 读取不完整。

结论：

- 字段布局、读取和编码结构已恢复。
- AttackID/CycleID 到具体攻击的映射尚未完成，`AttackType` 必须保持 Unknown。

## 覆盖率

数据来源：`validation/mechanism-coverage-20261029.json`。

| 指标 | 分子 / 分母 | 比例 |
| --- | ---: | ---: |
| 静态 AI 恢复 | 956 / 958 | 99.79% |
| State 编号语义恢复 | 851 / 2,095 | 40.62% |
| Boss 阶段转换确认 | 1 / 794 | 0.13% |
| 外部字段读取验证 | 8 / 25 | 32.00% |
| 攻击类型实时识别 | 7 / 653 | 1.07% |
| 攻击前预警 | 3 / 653 | 0.46% |
| 无敌窗口识别 | 0 / 203 | 0.00% |
| 狂暴条件识别 | 2 / 10 | 20.00% |
| 离线运行验证 | 8 / 653 | 1.23% |
| 真实外部读取机制验证 | 3 / 653 | 0.46% |

这些指标使用不同分母，不可相加或互相替代。

## 底层故障

- 当前 `reader.cpp` 不再直接返回 `Module enumeration failed`。
- Toolhelp 模块快照失败后，使用完整进程路径、`VirtualQueryEx` 和
  `K32GetMappedFileNameW` 定位 `MEM_IMAGE`。
- `mapped-image fallback` 两项测试通过，包括“拒绝不同 EXE 路径”。
- 特殊房间等待继续作为瞬时状态处理：房间尺寸/shape 未就绪时返回错误，
  GUI 显示“房间网格暂不可用…持续重试”，工作线程不终止连接。
- 12 个原版房间 shape 夹具全部通过。旧夹具缺少新增 NPC 尾部字段，已生成
  完整边界夹具；读取器仍严格拒绝越界读取。

## 验证结果

- C++：99 项通过，0 失败；包含 12 个原版房间 shape 夹具。
- Matriarch、Fetal Demon、Big Horn、Ultra Greed、Delirium：
  5 / 5 个 2,400 帧离线探针成功。
- Matriarch AI 字段冒烟：600 帧成功。
- Delirium 字段探针：600 帧成功。
- 回放：20 帧无键盘输出；单帧真实记录回放成功加载运行时语义库。
- 高价值探针使用 debug 3 保活玩家，受击计数和危险帧不是无伤成绩。

## 真实外部读取边界

本轮没有可用运行中的 `isaac-ng.exe`，因此没有生成“新增 AI/Delirium 字段”的
新实机会话。

已有真实外部证据只覆盖：

- `96.0.0`：Invincible=true 窗口。
- `218.0.0`：Invincible=true 窗口。
- `302.0.0`：Invincible=true 窗口。

因此：

- C++ 新字段读取有合成内存测试和离线原版引擎交叉验证。
- Matriarch、Ultra Greed、Big Horn、Delirium 的新字段尚无“真实外部
  ReadProcessMemory”闭环证据。
- 当前不能声称全敌人机制已在正式游戏进程中实时验证。

## 当前盲区

- 793 条 Boss 边仍缺少精确 CFG 路径或运行转换证明。
- 254 条边没有足够静态条件，不能生成预测。
- Eye 有明确动画触发帧；Bloat 和 Brimstone Head 只有已验证的威胁几何，
  精确触发帧仍 Unknown。
- Invincible 只证明 `+0x3B0`；Shield、阶段减伤、伤害上限和来源免疫未统一建模。
- Fetal Demon State 16 未触发，且直接生成场景与静态条件存在冲突。
- Delirium AttackID/CycleID 攻击语义未完成。
- 现有普通敌人攻击规则仍有硬编码分支；它们不因本轮数据库接入自动升级证据等级。

## 后续策略接口

运行时输出位于每帧日志的 `mechanisms`：

```text
enemies[]:
  identity, state, state_frame, current_action, action_phase
  boss_phase, is_invincible, is_enraged
  ai_v1, ai_v2, ai_i1, ai_i2, shield_strength, child
  delirium_* raw/decoded fields
  attack_type, attack_target, predicted_trigger_frame
  predicted_action_end_frame, threat_geometry
  data_source, confidence, unknown_reason, last_updated_frame

warnings[]:
  source, rule_id, kind, shape, pos, end, vel, radius
  start, until, predicted_trigger_frame, uncertainty
  predictive, evidence_status, confidence
```

`MechanismWarning` 已直接转换为 `Planner::Threat`。新增已验证攻击时，先补
状态/动画/触发帧/几何证据，再写入运行时规则；未知攻击不会由 State 编号自动生成。

## 复现

```powershell
python research/mechanisms/analyze_state_semantics.py
python research/mechanisms/build_runtime_semantics.py
node research/offline/check_state_semantics.mjs --steps=2400 `
  --cases=413.0.0@s.boss.3702,886.1.0@s.boss.3702,411.0.0@s.boss.3702,406.0.0@s.boss.3702,412.0.0@s.boss.3414 `
  --output=state-semantics-high-value-20261029.json
node research/offline/extend_native_room_fixtures.mjs
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test `
  -NativeFixtures cpp/tests/fixtures/native-rooms
```
