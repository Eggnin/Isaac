# 以撒 Gamebot · C++

这是重新实现的 Windows 原生自动战斗助手。采集、战斗模型、路径搜索、攻击判断、界面和按键输出均为 C++，运行不依赖 C#、.NET 或 Python。

## 获取与启动

需要 Windows、受支持的《以撒的结合》J460 游戏版本和 Zig C++ 工具链，或使用 CMake 配合 MSVC / Clang / MinGW 编译。从仓库根目录双击 **`Start-Assist.cmd`**：首次启动或源码更新后会尝试自动构建，随后启动助手并请求管理员权限。程序自动只读连接唯一的 `isaac-ng.exe`，自动控制默认关闭。也可以先在 PowerShell 中运行：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\cpp\build.ps1 -Test
.\Start-Assist.cmd
```

[`cpp/`](cpp/) 是独立 C++ 主程序，`data/` 保存其机制数据；[`research/`](research/) 包含研究脚本和报告。配套的离线训练适配器在 [Gamebot 仓库](https://github.com/Eggnin/Gamebot)。它需要另外准备本机 J460 游戏资源、WASM 和运行时文件，不能仅靠这两个仓库直接运行完整训练环境。

仓库保存源码、研究文档和部分数据；构建产物、原始运行日志与大型实验结果、游戏运行资源、第三方工具及嵌套的第三方检出目录不会上传，原文件仍留在本机。`validation/` 只纳入 Markdown 报告。上游训练引擎的本地源码修改另外保存于 [`research/upstream-patches/`](research/upstream-patches/)。部分历史报告中的本机路径和原始结果仅在原电脑上有效。

以下记录以 **2026.10.29** 的整理版为基线，并包含后续研究进展。数据源仍是外部进程内存，窗口中的地图是采集数据的绘制结果。Dogma 研究保留在 `research/boss-lab/`，按用户要求暂停策略优化。

J460 引擎与敌人机制证据已汇总到 [分析报告](research/ENGINE-ANALYSIS-20261029.md) 和 [统一机制数据库](data/mechanisms/isaac_j460_mechanism_db.json)。数据库覆盖 653 个本机 NPC 配置、2,210 个静态事件候选、653 个身份探针及现有历史运行证据；它是分析期数据，不作为主程序运行时依赖。

已加入银按钮、红色击杀按钮对策：银按钮逐块踩下，读取全部 `state=3` 与房间解除标志；红按钮优先导航，按下后继续避让残留攻击。653 指本机 EntityConfig 的精确 Type/Variant/Subtype 组合，其中25项已标为陷阱机关，包含 Brimstone Head。见 [陷阱目录](data/npc/TRAP-ROOM-CATALOG.md) 和 [两种按钮的原版验证](research/BUTTON-TRAP-INTEGRATION-20261030.md)。

2026.10.30 已将 Boss 高伤场景优化编入当前 `bin/IsaacGamebot.exe`：补充跳落、激光首帧、挥击、敌方烟云与火柱避让，修正地形重叠恢复和已摧毁红粪便的残留危险，并给追踪炸弹增加提前拉开距离的偏好。已完成的42个高风险场景对照中，掉血213→191个半心，死亡26→25次；按用户要求停止其余测试，每场上限60秒。3项掉血回退及逐场结果见 [专项记录](research/BOSS-STRATEGY-OPTIMIZATION-20261030.md)。

同日追加修正落点漂移、敌对者激光与大乞丐宝挥击的减速外推、生成者消失后的敌方效果归属、近墙重叠滑行和追踪炸弹接近通道。仅新增一场30秒原版短测：大乞丐宝存活，3次受伤、掉3个半心，比上一版相同场景前30秒多1个半心；本次未证明实战收益提升，详见 [30秒追加记录](research/BOSS-STRATEGY-FOLLOWUP-30S-20261030.md)。

已接续普通怪方向弹流工作：新增浮肿尸 `879.0.0` 的8个AI方向分支，以及 `87.0.0`、`857.0.0` 的三条瞄准包络，并修正原有径向、瞄准和扇形预警在发射前提前移动的问题。正式模式现为33条、18个普通怪身份；仍有38个运行时参数型身份缺少发射前模式。主程序、离线Wasm与外部Reader已重建，本轮仅新增一场约30秒的87／857同场接入探针，见 [接续记录](research/DIRECTIONAL-STREAM-TAKEOVER-20261030.md)。

全量补齐目标正在继续：第一批新增18个身份，当前为57条规则、36个身份，尚余20个。已接入冷却、状态计时器、叠层动画与玩家镜像射击，主程序、Wasm和Reader已编译；按用户要求取消短测和重复检验。剩余机制的实际实现线索记录在 [工作账](research/REMAINING-GAPS-WORK.md)。

逐敌人状态和 Boss 阶段恢复见 [专项报告](research/STATE-BOSS-RECOVERY-20261029.md) 与 [状态语义数据库](data/mechanisms/isaac_j460_state_semantics.json)。当前覆盖 956 个 Type、239 个具体 AI 函数和 110 个 Boss 身份；阶段边保留静态候选与离线验证等级。

2026.11.02 新增前向世界模拟：统一 `WorldStateSnapshot`（每个字段标记 exact / estimated / unknown）、Reader + 机制帧 + 未知威胁桥接、Hybrid C++ 模拟后端、快照分叉、逐帧战斗状态更新、Top-K 模拟评分与安全覆盖。原版 WASM 引擎只支持自身运行内存快照，不支持实时游戏快照的完整状态恢复，检测结果与能力边界见 [前向模拟说明](cpp/FORWARD-SIM.md)。新增 CLI：`--snapshot`、`--simulate`、`--sim-backend`。

2026.11.02 v0.6 新增长时域 MPC 战斗规划：`MpcCombatPlanner` 在现有 `TopKJointPlanner` 结果与 `WorldStateSnapshot` 之上执行 9 移动 × 5 射击的联合 Beam Search，每个分支独立推进敌人瞄准、追击、冷却、前摇、触发、多敌人威胁与 Boss 阶段。只执行首段动作，下一帧重新读取并规划；支持上一轮一致性复用、自适应 Beam、状态签名/转置缓存、无望分支终止、时间预算与 Top-K 回退，以及动作序列的保存、恢复和比较。见 [MPC 说明](cpp/MPC.md)。新增 CLI：`--mpc`、`--mpc-compare`。实时入口默认关闭，设置 `GAMEBOT_MPC=1` 后 GUI 使用 MPC 决策（仍需 F8 开启控制，尚未完成实机无伤验收）。

2026.11.02 v0.6.1 新增实时闭环控制器：Reader → `WorldStateBridge` → `MpcCombatPlanner` → 首段动作 → 真实游戏 → Reader。新增 `PredictionErrorMonitor`，逐帧对比玩家、敌人、子弹、危险区、Boss 阶段和未知危险区域，区分 Reader / 时间同步 / 模型误差；高误差时标记低可信机制、扩大未知威胁范围、缩短预测时域并回退 Top-K。新增 `RealtimeMpcController`、运行时保护和 P50/P95/P99 性能记录。F10 可随时切回原 Planner；`GAMEBOT_MPC=1` 控制默认模式。见 [闭环说明](cpp/CLOSED-LOOP.md)。新增 CLI：`--mpc-loop`。

2026.11.02 v0.7 新增失败驱动机制发现：`FailureAnalyzer` 关联预测误差，`BehaviorDiscovery` 从连续帧提取状态/前摇/攻击间隔/弹幕规律，`MechanismClustering` 复用攻击原语，`FormulaRecovery` 结合反编译时序与几何证据生成 `candidate`/`inferred` 公式，`MechanismLibraryUpdater` 版本化保存候选并支持回滚/比较。新模型可编译为 ForwardSimulator 几何规则，通过 `GAMEBOT_DISCOVERED_PATTERNS` 显式加载；自动流程不会把统计结果直接晋升为 verified。见 [机制发现说明](cpp/DISCOVERY.md)。新增 CLI：`--discover`、`--mechanism-rollback`、`--mechanism-compare`。

2026.11.02 v0.8 新增 Combat Intelligence：`ThreatPrioritizer` 用距离、攻击触发时间、范围、伤害、频率、移动空间和未知风险逐帧评分；`TargetSelector` 结合 HP、击杀时间、命中机会、输出窗口、攻击成本和击杀后危险变化，并带目标保持滞后；`AttackWindowDetector` 优先使用已验证机制触发/结束帧、意图和原生冷却，动画名不能单独证明可伤害；`PredictiveAiming` 用原生实体运动与四方向眼泪拦截预测移动目标；`CombatObjectiveManager` 将生存、输出收益和脱离条件作为 MPC 评分引导。每个 MPC 候选分支独立计算威胁消除、击杀、窗口、预测命中和输出效率，收益上限低于 1 HP 伤害惩罚，生存仍优先。见 [战斗决策说明](cpp/COMBAT.md)。`GAMEBOT_COMBAT=0` 可复现 v0.7 搜索用于对照。

2026.11.02 v0.9 新增硬安全门与紧急逃生：候选先通过 `SafetyGate` 的碰撞/危险/逃生方向判断，未通过的分支不能获得战斗收益；全部候选都不安全时切换到 `Emergency` 排序，按首次命中时间、逃生方向、局部机动性和最小间隙排序，而不是继续比较攻击评分。局部空旷度使用以撒房间边界、可用面积、弹幕密度和 9 方向逃生探测，碰撞/局部密度/逃生/激光预警使用各自时域。特殊弹幕的加速与追踪已覆盖；定时/曲线/轨道转向字段没有机制库逐位语义时只增加有界不确定包络，不伪造转向。新增预测/实际轨迹叠加、MPC 候选评分分解与会话复盘。见 [安全门说明](cpp/SAFETY-GATE.md)。新增 CLI：`--mpc-review`。

2026.11.02 v0.9.1 新增自动战术策略优化：`CombatScenarioClassifier` 从 WorldState/MechanismFrame 派生 `normal_room`、`melee_pressure`、`ranged_pressure`、`dense_projectiles`、`multi_direction_pressure`、`boss_combat`、`unknown_high_risk` 多标签场景；`StrategyProfileRuntime` 选择并平滑混合有界 Profile；`TacticalParameterOptimizer` 用 Bounded Grid Sweep、候选消除和 Coordinate Descent 优化现有评分参数，按死亡、伤害、清房时间、输出和无效切换/反转分层排序。`ScenarioCorpusBuilder` 从真实日志提取训练/保留评估快照；Strategy Memory 版本化保存、比较和回滚。晋升门禁要求真实采集、holdout、机制置信度和预测误差，不能只凭模拟器分数；`emergency_sensitivity` 只能提高 SafetyGate 严格度。实时 MPC 的 Beam Width、时域、分支数和硬安全约束不变。见 [策略优化说明](cpp/STRATEGY.md)。新增 CLI：`--strategy-classify`、`--strategy-corpus`、`--strategy-optimize`、`--strategy-list`、`--strategy-compare`、`--strategy-rollback`；设置 `GAMEBOT_STRATEGY=1` 后 GUI/MPC 读取 `data/strategies/current.json`。

2026.11.02 v0.9.1.1 新增 Combat Progress 与 Anti-Stalemate：`CombatProgressTracker` 只用真实 Reader 敌人 HP/敌人消失/玩家生命下降判断进展，区分未射击、射击未命中、目标无敌、无角度、距离过远、被障碍阻挡和长期停滞；停滞时释放无效目标保持、标记安全重新站位，并通过仅对已过 SafetyGate 的分支启用的 `progress_gain`、`reachability`、`approach` 项推进战斗。目标存在但 predictive aim 无解时保留 `fallback_fire`，避免射击被持续抑制。`SafetyGate` 新增路径级 mobility：可达安全面积、独立逃生路线、到达开阔区时间、出口封锁、未来包围和死胡同风险，`corner_risk` 进入 MPC 评分。硬安全门、Emergency Escape、UnknownThreatManager、ForwardSimulator 和预测误差监控保持。见 [进展与反停滞说明](cpp/ANTI-STALEMATE.md)。

2026.11.02 v0.9.1.1.2 新增 Damage-Aware Combat Arbitration：Tier A 保留零伤害 SafetyGate；Tier B 仅在无 Tier A 候选时启用，先排除必死分支、计算最低累计预测伤害并只在最低风险集合内比较威胁削减、逃生空间、真实进展和输出。未通过 Tier A 的候选按存活、预测伤害、后续威胁、未来逃生、威胁削减、实际进展、输出/击杀顺序比较；额外伤害不能被攻击收益抵消。CombatProgress 证据进一步区分 `fire_command`、`projectile_spawn`、`target_hp_delta`、`confirmed_kill`、`entity_lost`、`unconfirmed_kill` 和 Boss 阶段变化，实体消失不再自动算击杀。见 [伤害感知仲裁说明](cpp/DAMAGE-ARBITRATION.md)。

2026.11.02 v0.8.2 特殊弹幕运动恢复：把既有 Planner 中的弹幕运动分支提取为共享 `ProjectileMotionModel`，覆盖直线、加速/减速、定时速度/位图切换、曲线、连续转向、轨道、SMART/SMART_PERFECT、STASIS、bounce、continuum 和多阶段切换，并接入 `ForwardSimulator` 的独立分支状态。`ProjectileFlags` 位值来自本地 J460 枚举；`projectile_curve` 与 `projectile_orbit_distance` 使用已恢复公式。仍未恢复的 `BOOMERANG`、`SLOWED`、`TRIANGLE` 保留有界不确定包络。原始字段偏移、枚举来源、公式和 candidate/inferred/verified 状态保存在 `data/mechanisms/projectile_motion_models.json`。见 [特殊弹幕运动](cpp/PROJECTILE-MOTION.md)。

本版修正 `28×16=448` 格房间被 447 格上限拒绝的问题，读取原版 12 种房间形状，并把窄房外侧和 L 形缺角设为不可通行；支持普通、横竖窄房、横竖双房、四格大房及四种 L 形。房间类型不设普通房或 Boss 房白名单。模块枚举增加 `ERROR_BAD_LENGTH` 重试，失败后用只读内存映射与完整路径定位实际基址。连接失败会记录 Windows 错误并自动重试。

- **F8**：开关自动控制；**F9**：急停。
- **F10**：在 MPC 与原 Planner 之间切换；切换会先释放按键并重置规划器。
- **F6**：独立开关自动攻击。关闭后只躲避，不追怪、不清障，可以自己按方向键攻击。
- **F7**：切换前台键盘／后台窗口输出；切换时释放旧后端的按键并关闭控制，再按 F8 或点击“开启 / 关闭”启动。后台开启时可直接在助手窗口点击启动按钮，不需要先切回游戏。
- 游戏前台按住 **Shift** 或移动键时交还手动控制；攻击关闭时，自己射击不会打断自动躲避。在其他应用打字不会接管后台模式。

暂停、失焦暂停、卡顿或数据暂不可用时，程序持续运行并监测，自动控制开关保持原状态。暂时释放旧按键，游戏帧恢复后自动继续，不必重新按 F8。前台模式失焦时等待，后台模式失焦后仍可向游戏窗口发送输入；后台模式同样需要游戏自身的逻辑帧保持更新。

## 日志位置

每次运行记录位于 **`D:/Isaac/sessions/native-日期-时间/`**。界面显示本次完整路径，可点击“打开日志文件夹”。

- `session.json`：实现、输入方式与快捷键说明，启动时立即写入。
- `connection-events.jsonl`：连接、断开和初始化失败记录；即使尚未成功采集，也会留下原因。
- `frames-0001.jsonl` 等：逐帧状态、决策、提交的按键、攻击开关、输入后端及游戏前台状态；MPC 模式下另含世界快照、完整动作序列、威胁/目标/攻击窗口/预测瞄准、逐帧预测、预测误差、低可信来源、生命下降原因和性能分解；每份约 64 MiB 后分段。
- `summary.json`：正常退出时写入本次帧数、观察到的生命下降次数、释放状态和 P50/P95/P99 性能汇总。
- `performance.json`：运行中每 300 帧刷新及退出时的 Reader / WorldStateBridge / Prediction monitor / MPC / Action / 总决策耗时与超时、回退、安全停止计数。
- `prediction-failures/`：高预测误差时保存根快照、预测未来、实际快照、误差报告和来源，用于后续 ForwardSimulator 与机制逆向分析。

启用 `GAMEBOT_STRATEGY=1` 时，MPC 日志的 `mpc.strategy` 另含本帧场景标签、选中/目标 Profile、切换与混合进度、实际应用参数。`data/strategies/current.json` 与 `strategy-vN.json` 保存策略版本；优化输出中的 `simulated=true` 表示离线回放评估，不是实机无伤成绩。

MPC 日志的 `mpc.progress` 与 `--mpc-loop`/GUI 的 `closed_loop.progress` 记录真实战斗进展：`kind`、`shots`、`hits`、`confirmed_kills`、`entity_lost`、`unconfirmed_kills`、`projectile_spawns`、`phase_transitions`、`frames_since_progress`、`need_reposition`、`need_target_switch`。这些计数来自 Reader 快照，不来自 ForwardSimulator 预测。`mpc.arbitration` 记录本次是否使用 Tier B、最低预测伤害和风险集合大小。

`control.applied` 记录输入提交，不等于游戏已执行。判断实际攻击需要同时查看玩家眼泪的生成或其他攻击对象。只读 CLI 测试记录在指定输出路径；最近一次只读测试目录见 `validation/latest-live-readonly.txt`。

## 战斗实现

- 四段短时路径搜索，每段可选择停留或八方向移动；玩家加速、阻尼和松键惯性按 J460 原生顺序推演。
- 保留原四阶段束搜索；`--joint`/`--compare` 可在外层读取其候选路径，做 Top-K 多步推演并联合选择移动与射击方向。
- 先比较预测碰撞，再比较危险间隙与攻击站位；连续检查相对运动，避免高速弹幕穿过采样点。
- 安全路线使用两帧方向保护和小幅风险死区，减少无意义左右抖动；预计碰撞升高时立即改向。
- 普通弹幕读取原生年龄、相位、曲率和环绕距离，覆盖匀速、摆动、增强摆动、左右曲线、锯齿和环绕运动。
- 激光支持原生直线、圆环和采样折线几何；同时处理接触、炸弹与爆炸连锁、爆炸型 NPC 消失保留、地面液体及部分落点/前摇规则。
- 四方向眼泪拦截预测；检查目标阵营、可瞄准性、射程和地形遮挡，通过网格搜索寻找攻击位置。
- 普通眼泪按受控探针实测的 `0.6 × 玩家速度` 继承发射；`PredictiveAiming` 与 `ForwardSimulator` 共用该模型，并按实际弹速、射程和飞行时间计算拦截。瞄准记录包含目标/发射点/弹速/拦截点/预计飞行帧，命中与未命中由真实友方弹幕与敌人 HP 下降关联，不按射击方向推断。
- v0.8 MPC 模式下额外进行动态威胁排序、目标保持/切换、输出窗口识别和移动目标预测瞄准；每个候选动作独立计算战斗收益，战斗收益上限低于 1 HP 伤害惩罚。
- v0.9.1 可按场景标签选择战术 Profile；Profile 只调整现有评分参数，不改变 MPC 搜索规模或 SafetyGate 硬约束。Emergency Sensitivity 只能使安全门更严格。
- v0.9.1.1 增加真实 HP 进展跟踪、防停滞重新站位、fallback fire 和路径级 anti-corner 评分；所有进攻收益仍排在 SafetyGate 之后。
- v0.9.1.1.2 增加 Tier A/Tier B 伤害感知仲裁：Tier A 零伤害安全门不降低；Tier B 只在没有 Tier A 时比较最低风险集合，并且预测伤害先于任何战斗收益。
- 读取普通眼泪、硫磺火、科技激光、妈刀、Monstro's Lung、科技 X、骨头与剑的武器状态，按 J460 字段模型控制蓄力和释放。普通眼泪可先清除射击通道中的粪便和普通火堆。
- 清房后继续避让残留攻击并释放射击键；威胁消失后待命。
- 原生窗口绘制房间、敌人、危险和候选路径；运行记录保存在 `sessions/`。

房间识别不等于无伤战斗通过。未知武器、炸弹/火箭射击和 Ludovico 等需要额外控制模型的武器保持手动攻击，仍可自动躲避。所有怪物、角色与道具组合的适配没有完成；真实无伤表现需要实机验收。

## 构建

需要 Windows 和 Zig C++ 工具链，或通过 CMake 使用 MSVC / Clang / MinGW。

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File D:/Isaac/cpp/build.ps1 -Test
# 显式指定工具链
powershell -NoProfile -ExecutionPolicy Bypass -File D:/Isaac/cpp/build.ps1 -Compiler C:/path/to/zig.exe -Test
```

产物为 `bin/IsaacGamebot.exe` 和 `bin/GamebotTests.exe`。CMake 入口为 `cpp/CMakeLists.txt`。

## 只读工具

```powershell
# 核对当前游戏 EXE 的 SHA256、PE 与独立字段签名
./bin/IsaacGamebot.exe --inspect 'D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe'
# 只读采集或影子决策，不发送按键
./bin/IsaacGamebot.exe --observe 30 observation.jsonl
./bin/IsaacGamebot.exe --shadow 30 shadow.jsonl
# 离线重算原生 C++ 格式的记录
./bin/IsaacGamebot.exe --replay shadow.jsonl replay.jsonl
./bin/IsaacGamebot.exe --joint shadow.jsonl joint.jsonl
./bin/IsaacGamebot.exe --mpc shadow.jsonl mpc.jsonl
./bin/IsaacGamebot.exe --mpc-loop shadow.jsonl mpc-loop.jsonl
./bin/IsaacGamebot.exe --mpc-review mpc-loop.jsonl review.json
./bin/IsaacGamebot.exe --mpc-compare a.json b.json
./bin/IsaacGamebot.exe --temporal-reachability shadow.jsonl temporal.jsonl 36 6 12 6
./bin/IsaacGamebot.exe --mpc-temporal shadow.jsonl mpc-temporal.jsonl 36 6 12 6
./bin/IsaacGamebot.exe --policy-validation policy-validation.json 3 80 6 0
./bin/IsaacGamebot.exe --movement-audit shadow.jsonl movement-audit.jsonl
./bin/IsaacGamebot.exe --discover shadow.jsonl discovery.json
./bin/IsaacGamebot.exe --strategy-classify shadow.jsonl strategy-classify.json
./bin/IsaacGamebot.exe --strategy-corpus sessions/<run> corpus.json
./bin/IsaacGamebot.exe --strategy-optimize corpus.json strategy-optimize.json data/strategies
./bin/IsaacGamebot.exe --strategy-list data/strategies
./bin/IsaacGamebot.exe --strategy-compare a-profile.json b-profile.json
./bin/IsaacGamebot.exe --strategy-compare data/strategies 1 2
./bin/IsaacGamebot.exe --strategy-rollback data/strategies 2
./bin/IsaacGamebot.exe --mechanism-rollback data/mechanisms/discovered 2
./bin/IsaacGamebot.exe --mechanism-compare a-library.json b-library.json
./bin/IsaacGamebot.exe --compare comparison.json
# 原 Planner 与 MPC 的短时高压力合成对照（无键盘输出）
./bin/IsaacGamebot.exe --mpc-pressure mpc-pressure.json [seconds] [scenario_limit]
# 无需游戏的合成记录
./bin/IsaacGamebot.exe --replay cpp/samples/combat-and-clear.jsonl sample-result.jsonl
# 查询发布版本与数据来源
./bin/IsaacGamebot.exe --version
```

当前字段识别限定于本机 J460 原版/汉化版两个已知 SHA256；其他构建会明确拒绝读取。程序没有写游戏内存、注入 DLL、安装 Mod 或修改数值的路径。

## 专家策略数据集（Phase 1，2026-11-03）

现有 MPC 现在可以脱离桌面游戏，在离线 J460 引擎里作为"专家教师"逐帧跑并产出训练数据。链路是：生产 `Reader` 通过 `ReadProcessMemory` 读取训练引擎的 WASM 堆 → `RealtimeMpcController → MpcCombatPlanner`（决策逻辑未改）→ 由配套 Gamebot 训练仓的 `collect_expert_dataset.mjs` 把动作送回同一引擎并记录 `(observation, expert action, outcome)`。

- 外部桥：`research/external-validation/reader_main.cpp` 新增 `policy:"mpc"`（`policy:"quick"` 保留原 Planner 作对照）、每回合 `reset`、玩家坐标输出；`build.ps1` 链接 MPC 全栈；新增 `address.mjs` 只取堆地址，避免 `externalTruth` 因瞬时非有限字段中断采集。
- 离线时钟 30 Hz，专家 `dt=1/30`、`horizon_frames=48`（等价 1.6 s），墙钟预算置 0 以便同一 seed 重放；Beam、模拟上限和评分参数保持默认。
- 已运行：12 回合 × 900 帧（10800 样本，0 错误）+ 3 个长局 3/3 清房（4966 帧，合计 1 半心掉血）；原 Planner 对照同场景同种子（含长局 3/3 清房）。四份数据集的质量门禁全部通过，固定种子重放共 24249 帧逐帧一致。
- 完整数据、逐回合指标、命中率口径、已知缺陷与 Phase 2 计划见 [Phase 1 报告](validation/EXPERT-DATASET-PHASE1-20261103.md)。原始数据集（约 1.5 GB）保存在本机 `D:/Isaac/validation/expert-dataset-*`，不进仓库；每份数据内含 `provenance/` 归档，重建二进制后仍可校验。

复现命令（Gamebot 训练仓）：

```powershell
cd D:\Gamebot\gamebot-training-engine-v0.1
node .\scripts\collect_expert_dataset.mjs --scenes=monstro,theBloat --seeds='3JY1 6FLR' --frames=900 --output=D:/Isaac/validation/expert-dataset-new
node .\scripts\check_expert_dataset.mjs --dataset=D:/Isaac/validation/expert-dataset-new
node .\scripts\verify_expert_replay.mjs --dataset=D:/Isaac/validation/expert-dataset-new
```

## Behavior Cloning（Phase 2，2026-11-03）

同一个 `ActorCriticNetwork` 用专家动作做监督训练：新增 `updateSupervised()`（双头交叉熵，复用 Adam/主干，`updatePPO` 未改），训练脚本按战斗种子切分 train/val/test，并内置泄漏检查。

- 数据：train `3JY1 6FLR`（10366 帧）、val `7W3L P1Z9`（5400 帧）、test `SWGF G7WV`（3215 帧，含专家自己死亡的回合）。
- Teacher-forced：test 射击方向 0.85、移动 0.40、联合 0.35（多数类基线 0.09）。
- 闭环（held-out 4 场景 × 900 帧）：随机 4 死/122 输出，未训练 Actor 3 死/65 输出，BC 2 死/319 输出，MPC 1 死/519 输出。
- 结论：BC 已具备基础射击能力，但移动模仿和生存仍明显低于 MPC，**不替换原策略、不接实机**，只作为 PPO 初始化；下一步是 DAgger + 短时历史，达标后再进 Phase 3。
- DAgger 已试两轮（`scripts/collect_dagger.mjs`）：BC↔MPC 一致率 5.0%→9.7%，但只改善训练种子、在闭环验证集上变差；按验证集选出的最佳仍是 `bc-balanced-20261103`（val 1 死/13 掉血/308 输出，held-out 2 死/19 掉血/319 输出）。下一轮 DAgger 必须多训练种子并保留更高比例专家状态。
- PPO 已从 BC 权重跑通（`scripts/train_ppo_from_bc.mjs`，真实战斗奖励 + 抗停滞项，复用现有 `PPOTrainer`/GAE/断点续训）：12,288 帧、15 回合 0 清房；验证集 PPO 2–3 死/21–23 掉血/307–332 输出，**不如 BC（1 死/13/308）**，critic 解释方差 ≈0。按纪律不替换、不接实机；下一步先修 BC 的移动表示并预热 Critic。
- 可复现：两次训练的 `best-policy.json` 哈希完全一致；闭环评估与 DAgger 采集重复运行结果逐位一致。详见 [Phase 2 报告](validation/BC-PHASE2-20261103.md) 与 [Phase 3 报告](validation/PPO-PHASE3-20261103.md)。

## 目录

| 目录 | 内容 |
| --- | --- |
| `cpp/include/`、`cpp/src/` | 独立 C++ 实现 |
| `cpp/tests/` | 几何、规划、原生字段、输入、合成闭环测试 |
| `cpp/third_party/` | nlohmann/json 3.12.0 单头文件与 MIT 许可 |
| `python/`、`data/npc/` | 用户指定的原始参考与历史证据，运行时不加载 |
| `data/mechanisms/` | J460 机制研究库；其中运行时语义、普通怪几何及弹幕模式 JSON 由主程序加载 |
| `data/strategies/` | 版本化 Strategy Profile；由策略优化器写入，缺失时使用内置 Profile |
| `research/mechanisms/` | 机制库分析期生成与校验脚本 |
| `validation/` | 本轮构建与验证结果 |

参考网址和本地项目的使用说明见 [参考资料](cpp/REFERENCES.md)。旧 C# 主工程、源码副本和发布程序及其迁出目录已清理；当前正式入口仅启动 C++。

历史重构与原版战斗覆盖结果见 [验证记录](cpp/VERIFICATION.md)。

原生物理接入的代码、测试和证据边界见 [专项记录](research/NATIVE-PHYSICS-INTEGRATION-20261029.md)。

动作保护期和三种子、多敌人外部内存复测见 [保护期记录](research/ACTION-HYSTERESIS-20261029.md)。
