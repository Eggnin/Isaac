# C++ 离线重构验证

日期：2026-10-28。用户选择先完成离线重构与验证，本轮未启动游戏或发送实机战斗按键。

## 2026-10-29 动作保护期

- Planner 增加两帧方向保持、风险死区和逃生余量门槛；真实预计碰撞仍为第一排序条件。
- 三组 Monstro 原生种子全部零伤清房，总帧数从 7,560 降至 5,358，方向切换率下降 41.2%。
- `203.0.0 Brimstone Head` 已修正为无敌压力板机关，不是击杀目标。旧 Brimstone phase4
  场景实际打到原房 Type 62，不能作为 Brimstone 覆盖；该场景已替换为 `Pressure @ d.315`。
- 原版 `d.315` 无 debug 闭环：558 帧清房、0 扣血、0 受伤冷却命中；四块压力板全部
  触发，`clearFlags=0x43`，Brimstone 目标帧和 HP 下降均为 0。
- 机关 NPC 已与可受伤敌人分离：`42/201/202/203/212/235/236/804/809` 当前无敌时不会索敌，
  也不会触发“敌人久未掉血”的导航升级；原版 `d.118`、`d.381`、`d.582`、`d.588`
  外部闭环的目标帧和机关 HP 下降均为 0。
- C++ 最终测试：113 项通过、0 失败。
- 结果见 `research/ACTION-HYSTERESIS-20261029.md` 与
  `research/PRESSURE-PLATE-MECHANISMS-20261029.md`、
  `research/MECHANISM-ENTITIES-20261029.md`。

## 2026-10-29 原生物理接入

- `PlannerConfig` 默认启用 J460 原生玩家运动、特殊投射物模式和折线激光几何；旧近似
  运动保留为 `native_*=false` 的显式基线。
- Reader 新增投射物年龄/相位/曲率/环绕距离及激光采样折线读取；可选激光采样向量
  读取失败时回退到端点几何。
- C++ 最终测试：115 项通过、0 失败。
- 外部内存矩阵：180 帧 16 场和 600 帧 12 场共 9,990 帧，854 个危险实体全部识别，
  0 扣血；600 帧的 Eye 和 Brimstone 机制门槛通过，Bloat 保留一个未通过的几何样本用例。
- 原生引擎 Monstro：2,297 帧零伤清房。
- 代码与证据边界见 `research/NATIVE-PHYSICS-INTEGRATION-20261029.md`。

## 2026-10-29 运行时机制接入

- 新增 `MechanismSemantics`，主程序加载 `data/mechanisms/gamebot_runtime_semantics.json`。
- 每帧日志输出 `mechanisms.enemies[]` 与 `mechanisms.warnings[]`；未知值保持
  `Unknown` 或 `-1`。
- Matriarch 的 AI I2 输出 Boss 阶段，AI I1 输出 Rage 结束预测；State 13 仅在离线
  验证证据下返回 `is_enraged=1`。
- Ultra Greed 的 ShieldStrength、Big Horn 的 Invincible 字段和 Delirium 原始字段
  均独立输出，不互相替代。
- Eye Shoot、Bloat Attack、Brimstone Head Shoot 三条数据库规则转换为
  `Planner::Threat`；未验证 State 不生成攻击预警。
- `Entity.child` 与 64 位 Delirium CycleID 已接入 Reader。
- C++ 最终测试：99 项通过、0 失败，包含 12 个原版房间 shape 夹具。
- 结论与证据边界见 `research/RUNTIME-MECHANISM-INTEGRATION-20261029.md`。

## 2026-10-29 追加

- 读取器增加已验证的 `Entity.target`、`projectile_cooldown`、`projectile_delay`、`is_boss`、`max_hp`、`speed_multiplier`、AI `V1/V2/I1/I2`、`shield_strength`、`boss_status_cooldown`、`boss_color` 和 Delirium 专用字段；不改变控制策略。
- C++ 定向测试为 79 项通过、0 失败。
- J460 机制库覆盖 653 个 NPC 配置、2,210 个静态事件、653 个身份探针、80 个历史运行档案；数据库 10 项一致性检查通过。
- 证据分级、调用关系、外部内存对应和剩余盲区见 `research/ENGINE-ANALYSIS-20261029.md`，数据见 `data/mechanisms/isaac_j460_mechanism_db.json`。
- 状态、Boss 阶段、无敌和狂暴恢复见 `research/STATE-BOSS-RECOVERY-20261029.md` 与 `data/mechanisms/isaac_j460_state_semantics.json`。

## 当前结果

| 要求 | 当前证据与结论 |
| --- | --- |
| 原生 C++ 工程 | `cpp/src/`、`cpp/include/`、`cpp/CMakeLists.txt`、`cpp/build.ps1`；Zig 0.16.0 的 C++ 编译器构建成功，无编译警告/错误 |
| 独立实现战斗逻辑 | 新模型和四阶段束搜索位于 `model.cpp`、`planner.cpp`；只读采集、输入状态机、武器模型、Win32 界面均由本轮独立编写，没有调用或移植旧 C# 决策链 |
| 自动躲避与攻击 | 56 项 C++ 测试通过，含连续碰撞、碰撞重叠恢复、原生光束宽度、跳跃落点、冲撞前摇、爆炸保留/连锁、地形、拦截、清障、武器蓄力、输入释放和合成闭环；这是离线证据 |
| 653 项目录身份覆盖 | 窄房 15×16 与长条房 28×9 均逐项检查 653 个精确 NPC 配置；两个房间的 653 个身份都由原版引擎直接发射或由父实体生成。逐项状态、危险观测和运行目录在 `research/npc-coverage-final.json` |
| 多敌人原版战斗 | 12 个特殊房、2 个固定种子共 24 场全部采集通过；当前引擎复测为 18 场清房、8 场无伤、5 场死亡、1 场达到步数上限。汇总与逐次受伤证据在 `research/enemy-coverage-current.json` |
| 原生窗口 | 最终窗口标题为“以撒 Gamebot · C++”，创建成功，正常关闭，退出码 0；进程未加载 CLR |
| 无 .NET 运行依赖 | 最终 EXE 为 x64 PE32+，CLR 数据目录 RVA 为 0；实际加载模块见 `validation/final-gui-result.json` |
| 实际游戏构建识别与只读连接 | 当前 J460 汉化 EXE 的 SHA256、PE 和独立原生字段签名通过；后续进入房间后采集 257 帧，257 帧有效，影子决策无停止；未发送按键，字段语义和战斗效果仍需对照验收 |
| 回放入口 | 20 帧合成记录成功回放；验证了先射击、清房后只躲弹、危险消失后静默；全程不创建键盘输出 |
| 正式入口 | `Start-Assist.cmd` 启动 C++；原 `D:/以撒`、`D:/IsaacAssistIO` 与直接 Python 参考目录的三个兼容入口均核对为 C++ |
| 旧 C# 退出正式项目 | 旧主工程、测试、源码副本、发布程序与工具已清理；当前运行源码和构建入口没有旧主程序或 .NET 引用 |
| 移除旧 C# 文件 | **已核对完成**。用户手动清理后，`D:/Isaac-retired-reference-20261027` 及旧源码、测试、发布物和解决方案路径均已不存在；检查记录见 `validation/cleanup-verification.json` |

## 可复核文件

- `validation/build-and-tests.log`、`validation/post-cleanup-build.log`：保留清理阶段的历史 44 项构建/测试输出；当前 56 项结果以 `bin/test-results.json` 和本轮 `cpp/build.ps1 -Test` 输出为准。
- `validation/cleanup-verification.json`：旧迁出目录、源码、测试、发布物与解决方案均已不存在。
- `validation/latest-live-readonly.txt`：后续只读实机记录目录；其中 `live-summary.json` 汇总有效帧、角色、网格、武器、实体和耗时。`validation/process-probe.log` 与 `validation/window-process-probe.log` 记录此次进程列表漏项的定位证据。
- `bin/test-results.json`：测试数、失败数、耗时和 `gameplay_evidence=false`。
- `research/enemy-coverage-current.json`：当前 30,261 导出引擎下 12 个原版战斗房、两个种子的结果、逐次受伤证据和危险统计。
- `research/npc-coverage-final.json`：653 个 NPC 配置在窄房、长条房的逐项身份状态和证据来源。
- `research/npc-coverage/`、`research/npc-horny-boys-child.json`、`research/npc-child-observe-final.json`、`research/npc-champion-sweep-observe.json`：直接生成、归一化、父实体链和 Champion 证据。
- `research/native-policy-check.json`、`research/native-render-parity.json`：1,343 帧 Monstro 完整战斗与渲染开关一致性。
- `validation/final-replay-result.json`、`validation/final-sample-replay.jsonl`：20 帧原生格式回放。
- `validation/final-gui-result.json`：窗口、加载模块、正常关闭和退出码。
- `validation/executable-inspection.json`：当前游戏指纹与签名识别。
- `validation/native-binary.json`：最终程序类型、大小和 SHA256。
- `validation/project-audit.json`：旧主工程路径与运行源码引用检查。
- `validation/compatibility-launchers.json`：三个兼容入口的实际检查结果。

最终程序：`bin/IsaacGamebot.exe`，1,275,392 字节，SHA256：

```text
8CD7ABC8B545F2E5C5B6589F95911C8E74F80A5FC401790D649ADC3631A705DA
```

## 行为范围

新的躲避模型包括普通敌方投射物、由连续观测估计转向的弹幕、敌对 Familiar 来源眼泪、带安全余量的接触、原生宽度直线/圆环激光、移动来源激光、炸弹连锁、部分爆炸型 NPC 的死亡/消失保留、地面液体、跳跃落点，以及 Famine/Gurdy Jr. 冲撞前摇。离线逻辑按 30 Hz 推演；玩家被冲撞压入地形碰撞半径时会沿余量增大的方向恢复，而不是停止等待。

武器状态与蓄力模型已接入普通眼泪、硫磺火、科技激光、妈刀、Monstro's Lung、科技 X、骨头和剑。未确认的武器、炸弹/火箭射击、Ludovico 等保持手动攻击，躲避可继续。原生武器字段、速度/射程、所有角色道具组合和所有敌人的真实无伤表现尚未验收；Gurdy Jr. 和 The Cage 在当前离线矩阵中仍会死亡。

原始 Python 资料、怪物静态参考、日志、冻结记录和目录联接保持保留。新程序运行不加载 Python 或这些旧代码；静态候选没有被计作已确认攻击预测。
