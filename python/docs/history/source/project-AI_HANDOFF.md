# 当前0.4.5：按用户要求全回调逐条捕获

用户选择所有回调逐条原样保存（包括每实体每帧），不得自行采样/聚合。045在测试入口临时桥接中运行时枚举并记录全部ModCallbacks；高优先级观察器始终nil，参数typed、实体/EntityRef保留身份与可读字段，未知/读取错误显式标记，不是全C++堆转储。全原始流、伤害索引、血量关联和完整性报告保留；伤害请求发生在应用前，唯一候选不等于已证明实际来源，多源/未匹配不猜最近实体。严格结束、计数/尾部校验，不完整停止循环。33项相关Python/Lua和3项PS5检查通过，无游戏/视觉/全量测试。独立runtime045，原脚本由用户启动，旧044资源保留，日常独立程序不自动装事件桥接。详见external/EVENTS-045.md与outputs/event045-validation.json。以下为历史。

# 历史0.4.4：043最新局的跳跃期间错误静止修复

见external/FIX-044.md及outputs/combat044-validation.json。043会话084847-8a6aa6/run-0001：6次伤后Widow房死亡、6次开门切房（含初始）、恢复成功，speed0.9971。发现无可攻击目标时调用自身位置导航，贴墙图连接失败直接零输入；044改为直接危险搜索，4份真实快照不再错误静止。另补215/250原生目标、215跳跃落点预约、Widow减速占位假设。83项相关离线检查通过；仍有预测风险，不是无伤证据，预约时间/占位需实测。未启动游戏，无视觉/全量测试，用户从原入口启动。实时、不加速不阻塞和043追击退路/归属门禁保留。以下为历史。

# 历史0.4.3：042本局记录与用户观察驱动的追击/退路修复

见external/FIX-043.md和outputs/combat043-validation.json。042会话082024-71bc9d/run-0001有9次开门切房、6次受伤后在Haunt房死亡，恢复成功，游戏速度0.9986。用户指出两个追击分身及多方向小怪把角色挤入无退路位置。043分离几何/延迟碰撞层，添加Haunt260/10候选路径追击、大蜘蛛94/Migraine869原生目标预约、受压首4帧退路优先与未知出口惩罚。78项相关检查通过，无游戏/视觉/全量测试。初期静态0碰撞在加入追击后已不成立，最终近身快照仍有风险，不能称已无伤。仍由用户启动原入口，实时不加速不阻塞；保留玩家归属与版本门禁，多人未知追击目标不强判本地。以下为历史。

# 历史0.4.2：共享命中几何、清障回退与Gluttony预警

用户要求继续改三处，042已发布最新指针：共享发射/拦截几何、去除普通泪弹误加8px范围、无路线时尝试10px导航和受限棕色便便清障、补普通Gluttony第29帧激光预警（3局13条时序）、受伤账本增加前序决策与输入证据。65项相关检查通过，5个冻结玩家模型找到3个预计敌人射击和2个便便射击机会，不是伤害或清房证据。尚有岩石/跳跃/清障后未通路等问题。默认实时、不加速/跳渲染/注入DLL，保留041开门判定、归属和时效门禁。没有自行启动游戏，用户启动原入口。详见external/FIX-042.md与交付outputs/combat042-validation.json。以下为历史。

# 历史0.4.1：根据040的116局修复重复卡点

见external/FIX-041.md和交付outputs/combat041-validation.json。040单独116局（87死亡、26卡住、3类其他各1，均恢复）；26卡点中5个门已开却被目标列表拦住、5个无射击路线、16个有路线但无预计命中。041测试切房不再要求目标列表为空；实际无预计命中且射击路线可达时，导航进展优先于软舒适距离。保留碰撞/预警/退路/出口检查、读取归属、机关、040泪弹校准和实时测试默认。44项相关离线检查通过，模型改善不证明实机清房或无伤。未自行启动游戏，用户从同一入口启动；仍有未解决卡点。以下为历史。

# 历史0.4.0：修复遮挡路线停滞与泪弹继承误判

040 已打包并指向最新程序。新增逻辑仅在射线被地形挡住、存在可达射击路线时提高安全导航进度；普通泪弹改用最近有效继承样本的中位数和玩家实际速度。8 项定向离线检查通过。run-0003 的 60 步冻结模型抵达延迟补偿下的安全边界仍未开火；run-0008 的 Hopper 阶段变化和伤害仍未验证。没有启动游戏、没有视觉验证、没有全量测试。保留原 `Start-Room-Tests.cmd` 由用户启动。详见 `external/FIX-040.md` 与 `outputs/combat040-validation.json`。以下为历史。

# 历史0.3.8：实时测试，不阻塞游戏

默认Start-Room-Tests.cmd现走实时窗口输入测试；Lua只非阻塞处理切房，无同步step、无加速/跳渲染DLL。战斗策略哈希与037一致；抽搐尚未修。11项Python/Lua和4项PS5离线检查通过，未启动游戏。旧000808循环已正常停止和恢复47条。详见external/REALTIME-ROOM-TESTS-038.md。以下是历史。

# 当前入口默认不加速、正常渲染

按用户最新要求暂停战斗改进。037 EXE和生产Python源码未变；脚本默认NoTurbo=true，不注入时钟/跳渲染DLL。原Start-Room-Tests.cmd仍可用；构建清单037.Visible，四项PS5离线检查通过，未启动游戏。已恢复上次第8局遗留并停止重复启动失败。见external/VISIBLE-ROOM-TESTS.md。以下为历史。

# 0.3.7 最新修复

未知闭门状态计时、死亡后开门等待和钻地 NPC 等待已修复；16项相关离线检查通过，无新游戏实测。原入口指向037，控制台有Progress。上次第三局未完成恢复现已按本局备份恢复并核对47条。见 external/FIX-037.md。以下为历史。

# 0.3.6 最新修复

首帧桥接崩溃已定位为 MC_INPUT_ACTION 参数顺序，已修复并通过实际 Lua 5.3 离线契约检查。用户实测旧 035 的 47 条恢复成功；新 036 未启动游戏。入口仍为 Start-Room-Tests.cmd，最新版指针为 IsaacExternalAssist036.exe。见 external/FIX-036.md。以下旧版本说明为历史。

# 当前交付：0.3.5 战斗/按钮辅助与房间加速测试

最新入口为 outputs/Start-Room-Tests.cmd；旧 Start-Loop-Runs.cmd 默认同模式。用户要求自己启动测试，因此本轮没有启动游戏。程序为 outputs/IsaacExternalAssist035.exe。GUI 仅自动战斗、躲避和必要的普通按钮，拾取/走门由用户操作。

房间测试通过临时 Lua 同步桥接和仅测试用时钟/跳渲染 DLL，保留原只读内存感知及外部战斗算法。门开后传送下一实际生成的战斗房间；常规楼层 1–12 跨层采样直到死亡。记录每个边界决策、180 次观测前序列、伤害候选及攻击无进展证据。27 项相关 Python 离线检查、Lua/PS 语法和原生身份拒绝检查通过；实际桥接/加速/传送/新增恢复流程均待用户实测。详见 external/ROOM-TESTS-035.md。下文均为历史交接记录，旧入口/范围/活动状态不能覆盖本节。

# 项目接管说明：独立程序 0.3.2 已交付，旧安装 0.3.0 保留

最新新增：用户要求最新版循环打到死亡，卡住超时重开，并明确首层 Boss 清房后继续下楼。已交付 0.3.3 `IsaacExternalAssist033.exe`、`Start-Loop-Runs.cmd/ps1`、`Stop-Loop-Runs.cmd`，默认无限循环、每局无总时限；每局重新解析最新版指针。日志永久保留在输出 loop-runs，跨会话索引与累计问题记忆为 runs-history.jsonl / loop-memory.json。F7/停止脚本先落盘、恢复后退出。详细证据及边界见 `external/LOOP-RUNS-033.md`。

23 项相关检查通过，编译版循环实测确认卡住后恢复并重开、受伤后继续及过程留存；两局验证设置了 180 秒单局预算，该上限不在默认交付配置中。本次未实际换层或自然死亡，不能把这些未验证项写成通过；下层入口及死亡结束规则已离线覆盖。

用户明确要可用程序后，已打包单文件 `outputs/IsaacExternalAssist032.exe`，桌面“以撒辅助 0.3.2”指向该文件。无需外置 Python；默认后台输入，窗口提供启动游戏并自动困难开局、F6/F7、首层自动走门开关。19 项相关检查及 EXE 隐藏启动检查通过，必要运行模块和 JSON 资源已核对；未做新实机或视觉测试。用户使用入口是该 EXE，不能再只给测试脚本。版本及文件哈希见 `IsaacExternalAssist032.BUILD.json`。

程序经 Steam URI 启动游戏；为日常后台使用将 PauseOnFocusLost 设为 0，原配置备份在程序旁 logs 中，此项保留。日常入口按游戏正常保存进度，不执行诊断脚本的存档回滚。D 盘旧安装未覆盖。

最新进展（2026-10-24 16:10，Asia/Macau）：已用外部程序在全程后台完成困难模式单人首层 Boss 无伤一次，160856，六个房间、2459 次后台观察、2296 个后台控制帧、0 个干跑规划帧，132 颗己方泪弹，6→6 血。实际 Boss 存活、原生清房及后续 15 帧无伤确认齐全，最大观察空窗 4 帧，29 条恢复通过。默认自动测试改用 windowmessage，不依赖前台、不安装模组，普通扫描码模式保留。详见 `external/BACKGROUND-TEST-032.md` 和本机输出 background-first-floor-result.md/json。

原目标中的官方多人验收尚未完成；用户已确认只有一个 Steam 账号，当前缺少第二名玩家。不要用单人成功或同机多人替代官方联机，不再要求用户手动进入对局。一次首层通过也不证明稳定性。安装版仍为 0.3.0，当前改动在源码及自动测试入口。

当前范围更新（2026-10-24）：用户已明确“先打到一层 boss 就行”，当前阶段按困难模式从开局无伤完成首层 Boss 战验收，保留官方多人只控制自己的角色。不要继续扩展换层或后续最终 Boss。已增加 first_floor_goal.py / first-floor 场景：需要实际 Boss 存活、原生 Room.IsClear、连续 15 帧无伤确认；单人结果与官方多人结果分别记录，97 项相关检查通过。输出 Start-FirstFloor-Test.cmd 默认通过 Steam 自动进入单人诊断，无需手动开局。

当前执行账户为 `WIN-20250512IIR\Administrator`、HKCU Steam ActiveUser=1236967141。AIsaac 用于参考启动流程，已修正真实 PID、原生就绪与错误分层，未移植训练组件。早先原生/Steam 启动及 151051 道具超时记录是历史阶段；最新后台输入及首层结果以上文为准。只有普通扫描码输入继续失焦停止，窗口消息输入可在后台工作。

用户提供 https://tieba.baidu.com/p/3225451919?pn=1；正文网页、移动版、普通 HTTP 均不可读（403），只读到同站 2014-08 精品索引摘要，不能声称读完整帖。已可选询问用户粘贴首层相关段落。

最新状态见 `external/TEST-RESULTS-032.md`。当前能自行启动原生游戏，未用 Computer Use。0.3.2 开发态已自动进入困难模式 Isaac、清房走门、连续战斗；094827 经过 84/71/83/96 四间房，前两间战斗保持 6 血，第三间 type208 接触受伤后停止。此前门前 (320,380) 反复等待已修复，新增蜘蛛排队终点、Leaper 落点及跨帧位移单位。免费道具导航已记录一次原生背包获得（095710），主动交换确认仍待复验，换层/结局及官方多人整局仍未验证，常规 UI/安装版未更新，完整目标仍 active。相关 85 项检查通过；原生脚本 29 条路径恢复通过。最新伤害原始快照在 D:\IsaacAccessAssist\tests\external032-whole-run-20261024-094827\logs\damage-snapshot-1-96-718.json。

历史补充：100035 原生困难 whole-run 连续 90 秒经过五个房间，6→6、零受伤观察、背包获得 201；时间结束仍在战斗，未通关。后续 143305 正常前台战斗受伤，150101 失焦后空跑受伤，均未达成首层目标。下一步依具体日志处理道具收取及战斗，继续首层 Boss 和官方多人本地角色验证，不扩展换层/后续结局。每次测试须备份当时当前状态。

## 以下为较早的交接基线（当前状态以上文为准）

2026-10-24 后续工作：当前源码 APP_VERSION 已为 0.3.1；D 盘已安装版仍为 0.3.0。0.3.1 修复非空网络设备表未匹配时回退 controller 0、重复帧重写预测状态、原生 StageId 35 / Type 16 碰撞查询分支缺失，并增加房间配置/原始路径诊断字段。35 项相关离线测试通过，候选构建和隐藏启动通过。原生房间启动尝试没有取得任何游戏快照，最后记录退出码 53；配置及存档恢复哈希核对通过。尚无新增战斗或联机通过证据，历史异常地形根因仍待新快照确认。详见 `external/TEST-RESULTS-031.md`。

交接日期：2026-10-24。本文取代旧内置 preview15 交接说明；旧文档归档在 `ai-handoff/AI_HANDOFF-before-external-030.md`，不能按旧文档恢复内置安装。

## 先读这些

1. 根目录 `AGENTS.md`：当前用户约束与已确认的易错点。
2. 本文，以及 `external/README.md`、`external/MIGRATION.md`。
3. `external/LEGACY-PARITY-AUDIT.md`、`external/TEST-RESULTS-030.md`。
4. 实际入口 `external/engine_app.py`，沿 `ControlWorker.process_snapshot` 追踪调用。

当前工作区：`C:\Users\Administrator\Documents\Codex\2026-10-16\x20`。
当前安装：`D:\IsaacAccessAssist\release\IsaacExternalCore030\IsaacExternalAssist.exe`。
桌面入口：“以撒外部辅助”；F6 开关、F7 关闭，默认关闭，清房后交还玩家走门、选道具。

版本权威顺序：`engine_app.py` 中 APP_VERSION + 实际安装目录 BUILD.json + 源码哈希。**工作区 external/BUILD.json 仍为历史 0.2.6，不代表当前安装**；旧 root AI_HANDOFF 曾指向 preview15，也已经过时。交付包的 `source/external/BUILD.json` 单独复制了当前安装清单，原工作区旧清单未被改写。

当前执行规则以根目录 `AGENTS.md` 的“当前执行规则（2026-10-24）”为准。用户已要求继续推进，旧交付阶段的测试及等待限制已经撤销，保留不使用 Computer Use。下文 124 项结果仍为历史记录，不代表本次新增验证。

## 用户真正需要的东西

为残障玩家提供自动战斗，重点是官方忏悔+在线多人模式只控制本地玩家。安全优先于攻击，不贴怪极限擦边，不越躲越被困；安全时尽快形成有效攻击，支持原先普通泪弹、蓄力、激光、硫磺火尾段、刀、Tech X、宝宝、莉莉丝等适配。

- 不修改玩家速度、伤害、无敌时间等数值。
- 不恢复内置注入、旧 EXE 补丁、Lua overlay 或 REPENTOGON 安装；用户已重装游戏，当前原版为准。
- 步行时地刺及开关地刺禁行；当前飞行规则见 World，不擅自改动既有行为。
- 性能优化不能靠丢弃危险、减少预测时长/方向/搜索宽度来换取。
- 不要求用户手动标记玩家、队友、障碍和房间。在线本地玩家不是 controller 0，也不能猜最低索引。
- 不自行恢复强化学习训练、本地大模型或大型依赖；之前训练环境因磁盘空间已要求停止清理。
- 当前授权、工作目标和验证条件见根目录 `AGENTS.md`；不沿用已撤销的交接阶段禁令。

## 当前技术方案

Windows 64位 Python 进程以只读权限读取 32位以撒引擎；在外部规划，用普通 scan-code SendInput 输出 WASD/方向键。没有引擎写入、DLL 注入或网络包修改。读取受精确 EXE SHA256 门禁保护。

游戏路径：`D:\Steam\steamapps\common\The Binding of Isaac Rebirth`。
当前 v1.9.7.17.J460 / Steam build 22878971。
EXE SHA256：`7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F`。
main.lua SHA256：`4849AAEF553FF30F2BCE6D44291491809CF87B519882275B69C2134270DEA631`。
偏移不能给新游戏版本照搬，更不能用一个统一偏移修正所有属性。

调用链：

`EngineReader.snapshot(details=True)` → 原始武器/角色 profile → Motion 拟合与预测副本 → World / Warnings / SpecialHazards → Targeting + Planner → EngineAim → EngineWeaponController → InputController。

| 文件（external 下） | 职责 |
|---|---|
| engine_reader.py / native_getters.py / native_getters.json | 只读布局、精确版本检查、武器原生最大蓄力表达式 |
| engine_app.py | 线程、F6/F7、暂停/失焦/缺帧释放、本地玩家绑定与实际控制调用链 |
| engine_world.py / engine_hazards.py / engine_warnings.py | 地形、敌人/弹幕、爆炸预留、激光/跳跃/冲锋等机制映射 |
| engine_motion.py / engine_targets.py | 速度单位拟合、惯性与目标引用；保留原始快照 |
| planner.py / firing_navigation.py | 选敌、全房间可达射击位置、绕路成本、精确像素连接 |
| engine_search.py / engine_retreat.py | 24 帧分段搜索、全部危险评分、未来实际退路和安全区域引导 |
| engine_weapons.py / engine_aim.py / shot_geometry.py | 原生通道、蓄力/尾段、预瞄、宝宝发射源、穿墙/穿透和共用射线 |
| engine_targeting.py | 收尾/召唤优先级与在途伤害估计，估计不冒充精确回调 |
| win_platform.py / input_ime.py | 普通按键与游戏窗口输入法临时关闭/恢复；不切换全局语言 |
| engine_diagnostics.py | 异步有界日志、伤害上下文、写入错误和丢弃计数 |

`app.py` / `vision.py` 是更早的视觉预览路线，不是当前入口。`restore_internal.py`、`restore_launch.py` 是旧恢复工具，交付包移入 legacy，不要运行。

## 0.3.0 最近完成的改动

- 从当前 EXE Lua EntityPlayer.TearFlags 注册核对 +0x1488 的 16 字节字段；本地 enums.lua 定义 spectral bit0、piercing bit1。原 engine_enums.json 漏导出了 BitSet128，缺键不能当作零效果。
- 普通穿墙与穿透分开，瞄准、位置成本和导航共用通道规则；穿墙保留墙壁限制，不影响移动地形。未知宝宝不套用玩家标志，随机单颗泪弹不升级为永久属性。
- 所有候选敌人比较可达射击位置和绕路距离，不再先按直线距离选一个再查路；保留召唤优先、残血收尾与目标保持。
- 批量计算射线、末端目标成本、导航连接和敌人间距，保留全部危险与原搜索规模。
- 0.2.9 的障碍旁零成本停留修复仍保留：精确位置可以接附近有效节点；不可达不会被忽略成零成本。

## 验证事实，不能扩写

最近集中离线命令（在 external 目录执行）：

```powershell
python -m unittest -q test_regressions_025 test_regressions_026 test_regressions_027 test_regressions_028 test_regressions_029 test_regressions_030 test_engine_app test_engine_weapons test_engine_world test_engine_warnings test_planner test_native_getters test_win_platform
```

记录为 **124 项通过**；不是所有 `test_*.py` 全覆盖。有些函数式 test_* 需要 load_tests/TestCase 才会被 unittest 收集，不能用空测试计数当成功。

- `fixtures/stuck-large-room-028.json` 是原地卡住现场的冻结数据。0.3.0 初始选 (1,0)、预测碰撞 0、整条玩家中心路径合法；只是冻结场景第一步，不是实机已清房。
- 同一快照 40 次预热规划中位数约 22.569ms，旧 0.2.9 报告约 40.70/40.83ms。约减少 45%，**不是游戏 FPS**，不是所有密弹幕场景的加速保证。
- 0.3.0 原生短测未取得前台：control_frames=0、shadow_planning_frames=196、无眼泪，角色死亡。没有辅助输出，既不是战斗通过，也不能说是辅助战斗失败。24 项配置/存档备份哈希已恢复。不要为制造通过而静默重跑或夺焦点。
- 0.2.8 历史四敌短测 6→6 血、16 颗眼泪、清房，只属于那一版及该场景。
- 0.3.0 PyInstaller 打包与隐藏 GUI 启动通过，**本版有效战斗验证和在线验证仍没有完成**。

## 明确尚未完成的部分

这些是缺口，不是已证明导致某次受伤的根因：

1. 完整原生碰撞胶囊尚未读取，当前主要以半径/SizeMulti 包围建模。
2. 未穷尽所有 Boss 的状态机、无前摇激光、离屏冲锋和未知爆炸类型。
3. 全部特殊武器交互、多发形状、逐眼临时效果、宝宝继承和伤害回调未完全等效；不要把“接入模块”写成“完整复制旧模组”。
4. 普通键盘为 8 向+停止，不能等效 16 向或半推杆控制。
5. 本地读取/计算耗时不等于网络延迟；真实 RTT 未验证，保持 null，见 NETWORK-NOTES.md。
6. 伤害来源仅观察血量/冷却和上下文，归因固定 unknown；按键日志不证明引擎已接收。
7. 图像未显示、未生成或未决定的技能不能靠读内存获得完整未来，当前是机制预测模型，不是引擎逐帧克隆。

建议接管先审查实际调用链、证据与上述差异，找到可复现问题后小批量修复；不要立即重写，或再次删去旧武器/闪避条件。

## 源码与历史参考

- 当前主源码：原工作区 `external/`；交付包 `source/external/`。
- 最后内置参考：原工作区 `online/assist-source/`，交付包 `legacy/online/assist-source/`。仅供核对逻辑，不安装；其 native-kernel.c 也是历史实现。
- 更早 Mod：原工作区 `isaac-access-assist/`；工坊版在 `workshop/isaac-access-assist/`，不能拿它们当当前外部入口。
- `online/ONLINE-FEASIBILITY-20261023.md`、`DESYNC-RESEARCH-20261023.md`：旧内置联机可行性与同步边界，不证明 Runtime Error 就是 desync。
- SOURCE_REVIEW.md 和 sources/ 保存参考审阅记录。第三方模组源目录曾位于工坊 `250900/<ID>`，本次检查 3759966365、3172387129、3778464661、3800092423 均已不存在；交付包不宣称包含这些原模组完整源码。
- 用户曾提供 https://github.com/Lceoliu/AIsaac；强化学习环境后来按用户要求停止清理。当前外部版不依赖模型权重或训练服务；不要冒称正在训练或重新下载大型环境。

## 运行与构建

本机 Python：`C:\Users\Administrator\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe`，Python 3.12.14 64位。
已用依赖：NumPy 2.3.5，PyInstaller 6.20.0。运行源码主要需要 NumPy 与 Python 标准库/tkinter；pefile 2024.8.26、capstone 5.0.9 用于离线布局审查，不是运行助手的必需项。
本机 vendor：`D:\IsaacAccessAssist\vendor`；构建工具：`D:\IsaacAccessAssist\build-tools`，通过 PYTHONPATH 使用。交付包不复制整套 Python/模型/训练缓存。

交付包提供 `run-source.ps1`、`build.ps1`、`offline-checks.ps1`，需用户或接手 AI 明确决定后手动执行；离线脚本必须显式指定与改动有关的测试模块，不默认运行全量。打包用的 spec 保持靠近源码；输出和缓存放 D 盘。不要把 PyInstaller 构建成功当测试成功。交付 spec 只将数据路径改为 SPECPATH，控制模块保持与已安装版本一致；本次交付整理没有重新构建或执行测试。

## 日志与证据

当前安装的运行日志：`D:\IsaacAccessAssist\release\IsaacExternalCore030\logs`。
优先看 control-state.json 的 enabled/foreground/暂停原因/持有键，再看 engine.jsonl、combat.jsonl、damage-events.jsonl 和 damage-context.json。详细字段见 LOGGING.md。数据轮换且可能正在写入，分析必须标明版本、会话、房间和截止帧。

0.3.0 冻结/布局证据：`D:\IsaacAccessAssist\tests\external030-validation`。
0.3.0 影子短测：`D:\IsaacAccessAssist\tests\external030-combat-20261023-224120`。
0.2.8 有效短测：`D:\IsaacAccessAssist\tests\external028-combat-20261023-215516`。
卡住现场原始文件：`D:\IsaacAccessAssist\tests\stuck028-live.json`。
交付包 evidence/ 包含相关报告和日志快照；不包含游戏本体、用户存档备份和临时 app ID。

## 可以直接给下一位 AI 的提示词

```text
请接手这个以撒外部自动战斗辅助项目。先读取 AGENTS.md、AI_HANDOFF.md、source/external/MIGRATION.md 和 TEST-RESULTS-030.md，再沿 engine_app.py 的实际控制调用链阅读源码。当前是 0.3.0 外部只读内存 + 正常键盘输入，旧内置 Lua 仅作参考，不要恢复安装。
用户最新目标与执行规则以根目录 AGENTS.md 为准；旧“只接管等待”和游戏测试禁令已撤销，不使用 Computer Use。沿实际调用链和证据继续推进，不凭离线测试数量宣称实机或联机无伤通关。工作区原路径和可运行版位置都在交接文档中。
```
