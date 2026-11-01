# Isaac Gamebot J460 引擎与敌人机制分析

日期：2026-10-29

## 结论

本机游戏是 `1.9.7.17.J460` x86 PE32，主程序哈希
`7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F`。
本地资源包含 653 个 NPC EntityConfig、604 个 ANM2、4,148 个动画和
2,210 个带帧号事件触发点。公开 REPENTOGON 名称与本机 PE 交叉定位后，确认
`Entity_NPC::FireProjectiles`、`Entity_NPC::FireBossProjectiles` 和实体生成链
被至少 150 个调用函数复用。

本次没有伪造“全量攻击已恢复”。实际完成的是：

1. 建立覆盖 653 个本机 NPC 配置的统一证据库。
2. 保留 2,210 个静态攻击事件候选及每个候选的未知阶段。
3. 合并 80 个历史运行身份档案、78 个机制档案和 38 个攻击对象档案。
4. 完成 653/653 精确身份生成探针和 365 个非 Boss 自然战斗探针。
5. 将当前 C++ 外部读取契约与新增 P2 字段写入数据库。
6. 修复 C++ 读取器遗漏的 NPC 目标指针、射击冷却、射击延迟和 Boss 标记。

完整数据在
[`isaac_j460_mechanism_db.json`](../data/mechanisms/isaac_j460_mechanism_db.json)，
校验记录在
[`mechanism-db-check.json`](../validation/mechanism-db-check.json)。

## 引擎与训练环境

### 实际文件

| 项目 | 结果 |
| --- | --- |
| 游戏版本 | `1.9.7.17.J460`；`changelog.txt` 原版最新记录为 `v1.7.9b`，J460 是 Repentance+ beta 构建号 |
| 文件 | `isaac-ng.exe`，9,362,440 字节，无版本资源，未签名 |
| 格式 | PE32，x86，原生 MSVC 机器码，无 CLR 数据目录 |
| Entry | PE header 指向 `.bind` 包装区 `0x00cfe310`；原始引擎启动入口在 `.text` `0x00aefc46` |
| 依赖 | OpenAL、EOS SDK、Steam API、Lua 5.1/5.3、libcurl、Theora/Vorbis 等 |
| 游戏 PDB | 未发现 |
| 现有 PDB | 仅属于 Gamebot、测试探针和验证工具 |
| 本地 Mod | 12 个目录；当前 `options.ini` 为 `EnableMods=0` |
| Mod 新增敌人 | 未发现。Skill Issues 仅新增 Type 1000 预警效果 variants `8745..8752` |

训练环境不是第二份修改版 EXE。它从本机原始 J460 代码和数据转换为
WebAssembly，使用独立训练资源和进程边界；为 Node/JSPI、宿主布局和资源根路径
做了训练适配，没有改写敌人 AI、攻击函数、碰撞或伤害逻辑。

训练构建：

- Boot Wasm：
  `research/the-browsing-of-isaac/output/recomp/lift/boot-training-fast/boot.wasm`
- SHA-256：
  `69116FA92A0675D4D13C5EA2399A59A010E8FB69445824AD957426BC54DF225E`
- 原始内存镜像来自当前 EXE；
  `research/runtime-inputs/host/memimage-verify.json` 为 `pass: true`。
- 上游重编译提交：`e346ce66a2cc6e8285258153e5583d5b55a412d8`。

### 资源证据

- 653/653 个 NPC EntityConfig 匹配。
- 604/604 个 ANM2 成功解析。
- 4,148 个静态动画。
- 2,210 个带帧号事件触发点，覆盖 423/653 个身份。
- 1,932 个事件有事件名或动画名词面线索，278 个未分类。
- 550 个基础接触伤害候选，268 个 Champion 接触伤害候选。

静态 XML/ANM2 给出实体定义、动画、事件名、帧号和循环属性。它不包含完整的
NPC Update 分支、状态编号含义、目标选择、冷却写回和每次攻击的生成对象。

## 引擎调用关系

以下关系来自本机 PE 的直接 `call rel32`/call-slot census：

| 函数 | VA | 直接复用范围 |
| --- | ---: | --- |
| `Entity_NPC::FireProjectiles` | `0x006cb2e0` | 150 个调用函数，294 个直接调用点 |
| `Entity_NPC::FireBossProjectiles` | `0x006ccdd0` | 61 个调用函数，86 个直接调用点 |
| 实体生成 relay | `0x00428b20` | 448 个调用函数，1,807 个直接调用点 |
| Entity create dispatcher | `0x006fe410` | 283 个调用函数，521 个直接调用点 |
| `Isaac::genrand_int32` | `0x006eef60` | 871 个调用函数 |

`FireProjectiles` 内部直接调用生成 relay 32 次、RNG 35 次。
`FireBossProjectiles` 直接调用实体 create dispatcher。
`Hornfel_UpdateAI` 在 `0x004b9a3e` 调用 `FireBossProjectiles`，并直接调用生成
relay 7 次。这给出了一个已确认的
`个体 AI -> 公共 Boss 发弹/生成 -> Entity` 路径。

生成 relay 同时服务门、商店、环境、奖励和攻击系统，不能把所有调用都归为敌人
攻击。数据库只在来源指针或历史来源关系可证明时把对象归给 NPC。

当前还不能为 653 个身份逐一填写准确的原生 AI 函数地址。`Entity_NPC::Update`
的公共虚表签名已确认，但本机地址没有在本次分析中命名；状态编号也常被多个敌人
复用，不能按数值直接推断语义。因此数据库将每个身份的 `ai_update` 保持为公共
更新路径已知、个体函数和状态语义未完整恢复。

## 统一机制数据库

数据库格式：`isaac-monster-mechanism-db-v1`。

条目分布：

| 角色 | 条目 |
| --- | ---: |
| 普通怪 | 337 |
| 迷你 Boss | 22 |
| Boss | 110 |
| Wiki 未列出的 Boss 部件/环境 NPC | 184 |
| 合计 | 653 |

每个条目包含：

- `Type.Variant.SubType` 与 EntityConfig 名称。
- 接触伤害静态候选和 Champion 允许字段。
- 2,210 个静态事件中的动画、事件名、帧号、动画长度、循环属性、词面线索。
- 静态事件的准备、预警、执行、持续和结束阶段；没有证据的阶段明确为 `unknown`。
- 历史回调中的 State/动画动作、StateFrame 范围、对象签名、来源指针关联。
- 653 个窄房/长房精确身份探针结果。
- 364 个精确匹配随机战斗结果；`Siren Minion 3.220.0` 作为无 EntityConfig 的
  动态身份单独保留。
- 外部内存字段、当前专用预警规则和证据等级。

运行覆盖：

| 证据 | 数量 |
| --- | ---: |
| 历史运行身份档案 | 80 |
| 有机制证据的档案 | 78，其中 11 个为唯一 Variant 回退 |
| 有攻击对象的档案 | 38，其中 6 个为唯一 Variant 回退 |
| 653 身份探针 | 653 个身份在两个原版房间均可发射/观察 |
| 自然房间非 Boss 战斗 | 365/365 精确加载；364 个目录内身份加 1 个动态身份 |

Variant 回退只表示该运行档案可以映射到唯一的 Type/Variant EntityConfig，
不表示不同 SubType 的 AI 等价。

## 外部内存对应

正式读取器仍使用 `ReadProcessMemory`，没有注入、写内存或图像识别回退。

| 信息 | 当前 C++ | 证据状态 | 能力 |
| --- | --- | --- | --- |
| Type/Variant/SubType | 已读 | 实机外部读取与离线探针 | 可稳定识别身份 |
| 位置、速度、半径、碰撞类、HP、伤害 | 已读 | 实机外部读取 | 可计算当前接触与目标状态 |
| Parent/Spawner | 已读 | 实机外部读取 | 可还原部分生成关系 |
| Target | 本次新增 | REPENTOGON 布局、Python 参考、合成读取测试 | 可读，尚无新增字段的实机复测 |
| State/StateFrame | 已读 | 实机外部读取 | 可观察，逐敌人语义未全恢复 |
| 动画名/AnimationFrame | 已读 | 实机外部读取 | 可对齐 ANM2 候选 |
| ProjectileCooldown/ProjectileDelay | 本次新增 | REPENTOGON 布局、本机 lifted attack code、合成读取测试 | 可读，尚不能据此解释所有攻击 |
| Boss 标记 | 本次新增 | REPENTOGON 布局、Python 参考、合成读取测试 | 可读，尚无新增字段的实机复测 |
| 投射物/泪弹/激光/炸弹/Effect | 已读 | 实机外部读取 | 危险对象出现后可识别 |
| 攻击前预警 | 部分规则 | C++ 规则加离线回归 | 19 个身份有专用规则；0 个身份完成实机外部攻击前证明 |

外部读取能力必须按以下等级解释：

1. 引擎中存在攻击逻辑。
2. 运行时证据确认该身份拥有某机制。
3. 当前 State/动画/计时器可读。
4. 专用规则能在危险生成前识别前摇。
5. 规则能计算危险区域和反应时间并通过实机外部验证。

本次数据库达到 1、部分 2 和 3。19 个身份在代码和离线测试中达到 4/5 的计算
路径，但没有任何身份完成“实机外部读取先于真实危险对象”的独立证明。

## 已完成的离线验证

- C++：79 项通过，0 失败。
- 数据库：10 项交叉检查全部通过。
- 653/653 个身份在两个原版房间各完成身份探针。
- 365/365 个非 Boss 目标精确加载；148 个随机房无伤清房，209 个清房，
  156 个达到 2,400 帧上限。
- 12 个特殊战斗房、2 个种子共 24 场：24/24 数据通过，14 场清房，
  13 场无伤，0 场死亡，10 场超时。
- 固定种子、逐帧步进、批量轨迹、渲染开关和宿主自测已有历史记录。

这些是原版逻辑重编译环境和外部只读采集/合成测试的证据。它们不是对所有敌人的
均衡实战验收，也不把静态候选算作实测机制。

## 当前盲区

### P0

当前没有已复现的进程枚举、模块基址、实体分区或 448 格房间 P0 错误。新增的
Target、ProjectileDelay、ProjectileCooldown、Boss 字段需要下一次游戏运行时做
短时只读采样，确认实机值范围。

### P1

- 未知 EntityEffect variant 仍可能代表伤害区域、生成器或纯视觉对象。
- 激光中点/方向异常的兜底规则会保守覆盖多个方向，但不是精确几何。
- 地面危险、下落物和特殊召唤物仍依赖具体 variant 表。
- 生成 relay 是共享函数，单凭调用不能证明攻击来源。

### P2

- 406 个 Wiki 名册身份没有精确历史回调档案。
- 78 个有机制档案不等于完整攻击清单。
- 653 个身份只完成短窗口身份探针，不是完整状态机采样。
- `ProjectileDelay` 是公共 NPC 调度字段，不能单独证明下一次攻击类型。
- 只有 19 个身份有当前专用预警规则。
- Boss 阶段、无敌窗口、狂暴条件和攻击循环结束条件大部分未建表。

### P3

- 召唤物与 Boss 本体的目标选择仍需按威胁、HP 和可射击时间调度。
- 同一敌人的多条攻击路径、多个状态和多对象来源需要继续按关系保留。

## 最小必要修复

本次只修改读取契约，不改变自动躲避或攻击策略：

- `Entity.target`：`+0x3C4`，读取当前目标实体指针。
- `Entity.projectile_cooldown`：`+0xBA0`。
- `Entity.projectile_delay`：`+0xBA4`。
- `Entity.is_boss`：`+0xC3D`。

对应实现位于
[`reader.cpp`](../cpp/src/reader.cpp)，测试位于
[`core_tests.cpp`](../cpp/tests/core_tests.cpp)。新增字段会进入逐帧 JSONL，
后续策略可按明确语义使用，不需要重写采集架构。

## 下一阶段数据接口

建议策略层只消费结构化机制，不直接读取数据库文件：

```text
EnemyKey
  type, variant, subtype, champion, is_boss

RuntimeMechanismState
  state, state_frame, animation, animation_frame
  projectile_cooldown, projectile_delay
  target, target_pos
  active_attack_objects[]

AttackWarning
  family
  evidence_level
  preparation_start / warning_start / execution_start / active_until
  direction, target, geometry, uncertainty
  rule_id, rule_version
```

下一条高价值路径是先给 `v1/v2/i1/i2` 和 Delirium 字段建立逐敌人对照，再对
19 个已有规则做实机只读时序验证。没有逐敌人证据前，不应把
`ProjectileDelay > 0` 统一解释为“任何攻击即将发射”。

## 复现

```powershell
python D:/Isaac/research/mechanisms/build_mechanism_db.py
powershell -NoProfile -ExecutionPolicy Bypass `
  -File D:/Isaac/cpp/build.ps1 -Test
```

生成器会重新计算输入哈希，生成数据库和
`validation/mechanism-db-check.json`；任何条目数、事件数、运行档案数或读取字段
不一致都会失败。
