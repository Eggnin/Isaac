# 当前执行规则（2026-10-25）

- 用户明确要求所有回调逐条原样记录，包含每实体每帧；不得自行改成采样/聚合。045在现有临时测试桥接中运行时枚举全部ModCallbacks，观察器始终nil；完整参数数量、typed nil/false/64位整数、实体身份/可读字段和EntityRef。原生userdata不能等同完整堆转储，未知/读取失败必须标记。
- 原始流engine-events.jsonl不采样，伤害索引engine-damage-events.jsonl与血量变化按帧/房间/种子关联；伤害回调是应用前请求，保留唯一/多源/未匹配区别，不把源引用与实际应用因果混为一谈。严格结束确认、计数和尾部校验；不完整停止循环，低空间不删/轮换日志。
- 最新045（0.4.5）与Latest045，独立room-test-runtime045保留044资源；用户启动原房间测试入口捕获，日常独立辅助不自动装桥接。33项相关Python/Lua、3项PS5检查通过，未启动游戏/Computer Use/视觉/全量测试。实际原生绑定、速度与来源关联仍需首局验证。见external/EVENTS-045.md与outputs/event045-validation.json。以下044及更早为历史。

- 用户要求根据最近受伤优化。044依据043会话084847-8a6aa6/run-0001（6次伤后Widow房死亡、6次开门切房含初始、恢复成功、speed0.9971），修复跳起后无目标进入自身位置导航、贴墙图连接失败便零输入的根因：RoomMechanism改直接危险搜索，不依赖导航目标。补215/250原生目标及215跳跃目标预约、Widow后半段减速占位假设。
- 83项相关离线检查通过；4份原错误静止快照已真实搜索并给出移动。模型仍有碰撞风险，不能称6次伤已解决或无伤通过；215第16帧预约由本次第18帧伤害观测估计，Widow占位是假设，均需实测。未自行启动游戏，无视觉/Computer Use/全量测试。
- 最新outputs/IsaacExternalAssist044.exe/Latest044；原入口由用户启动，保留实时、不加速不阻塞、043追击退路和归属/版本/时效门禁。见external/FIX-044.md与outputs/combat044-validation.json。以下043及更早为历史。

- 用户最新要求根据042刚测的一局修改并汇报，并补充Haunt双追击体、多方向小怪夹击与无退路站位。当前交付043：几何碰撞与延迟包络分层；Haunt260/10 FloatChase候选路径追击；大蜘蛛94/Migraine869原生目标预约；受压首段退路优先、无可确认出口不当成0成本。
- 042实测082024-71bc9d/run-0001：9次开门切房（含空房）、6次受伤后Haunt房死亡，游戏速度0.9986，恢复成功；不把最近危险当确认伤害来源。043有78项相关离线检查，没有游戏/视觉/全量测试。补齐追击后初版静态0碰撞结果不成立，最终Boss近身仍有预测危险，不能称无伤或已解决所有受伤。
- 最新outputs/IsaacExternalAssist043.exe与Latest043；用户从原入口启动，保留实时/不加速/不阻塞与本地归属门禁。多人未知追击目标只作软候选，确认远端不改为本地。详见external/FIX-043.md与outputs/combat043-validation.json。以下042及更早为历史。

- 用户要求把三处继续修改，当前交付042（0.4.2）：共享发射/拦截几何；去除普通泪弹多余8px范围；无路线时尝试10px导航与受限原生棕色便便清障目标；补普通Gluttony在Attack01第29帧激光前的预约（3局13条记录）；受伤账本增加上一预测/观察间隔/引擎输入证据。
- 65项相关检查及受伤账本定向复查通过，5个冻结玩家模型分别找到3个预计敌人射击、2个便便射击机会。模型没有敌人响应、伤害或地形销毁，不是实机清房/无伤证据。清障可能无效、岩石及跳跃转向仍有未解决情况；不降低危险或延迟约束。
- 最新outputs/IsaacExternalAssist042.exe与Latest指针042；仍由用户启动原测试入口，本轮没有游戏/Computer Use/视觉/全量测试。保留实时、不加速、不阻塞与041开门判定。见external/FIX-042.md和outputs/combat042-validation.json。以下041及更早为历史。

- 用户已循环一百多局并要求继续修改。041按040的116局分析：87死亡、26卡住、其余3类各1，均恢复；556次受伤只作观测，最近危险不是确认来源。26卡点为5开门已清房、5无射击路线、16有路线但无预计命中。
- 当前交付041（0.4.1）：修复开门后非空目标列表拦住测试切房；实际无预计命中且射击位可达时，导航进展优先于软舒适距离，保留碰撞/预警/退路/出口优先级与采样。44项相关离线检查通过，模型改善不替代实机无伤。仍有地形和瞄准卡点。
- 最新输出IsaacExternalAssist041.exe、Latest指针已更新；由用户启动原房间测试入口，本轮没有游戏/Computer Use/视觉/全量测试。保持实时、不加速、不阻塞。见external/FIX-041.md与outputs/combat041-validation.json。以下040及更早为历史。

- 用户“根据记录，对辅助进行代码修改”已授权战斗修改。当前交付 040：地形挡住当前射线时，安全地推进到可达射击位；普通泪弹继承速度使用稳健样本中位数及玩家实际速度。
- 8 项定向离线检查通过。run-0003 的 60 步冻结模型抵达延迟补偿下的安全边界但没有开火；run-0008 的 Hopper 阶段变化和实际伤害仍未验证。不得称为实机清房或伤害验证。详见 external/FIX-040.md 与输出 combat040-validation.json。
- 最新 outputs/IsaacExternalAssist040.exe，Latest-Isaac-Program.json 已指向 040；保留同一 Start-Room-Tests.cmd 供用户启动。本轮不启动游戏、不做视觉验证或全量测试。以下 039 及更早状态为历史。

本节为当前项目规则的 canonical 来源。用户最新指令覆盖下文及旧交接文档中的历史执行限制。

- 不使用 Computer Use。
- 当前038默认实时房间测试：Lua非阻塞轮询切房，游戏不等待外部规划；战斗沿用生产windowmessage和延迟门禁，默认不加速/跳渲染/注入DLL。旧037只是NoTurbo仍同步，实测规划33–109ms造成低帧。本次11项Python/Lua与4项PS5相关离线检查通过，未启动游戏。
- 用户又报告原地抽搐；037日志确有约1px内反复换向。按其先处理测试、不改进战斗要求，本次保持planner/search/aim/motion/hazards/机关策略哈希不变，不宣称抽搐已修。新模式记录AI频率与实际观察帧间隔；不是逐帧完整采样。见external/REALTIME-ROOM-TESTS-038.md。
- 000808-a6c8ad循环已正常请求停止，最后一局manual_stop、47条恢复成功；038由用户手动启动同一入口。
- 最新用户要求先不改进战斗，只处理测试，并接受不加速。当前默认NoTurbo=true：不注入时钟/渲染DLL，保留原时钟和渲染、同步房间循环与日志；战斗EXE及生产Python源码完全保持037哈希，未发布刚才的搜索策略试改。4项PS5相关离线检查通过，未启动游戏。最新构建清单IsaacExternalAssist037.Visible.BUILD.json；启动入口不变。
- 235910-3e6694因旧测试桥接残留重复启动失败已正常请求停止；永久准备错误现记preflight_failed并结束循环。232131-cf25cf第8局中断遗留已按本局有效备份恢复22条差异并核对47条，无后续文件改动，完整原日志保留。详见external/VISIBLE-ROOM-TESTS.md。
- 最新 037 修复会话 231216-3f1746 的两类 unknown_blocker：刚死亡的最后一怪等待原生开门、钻地圆虫等待恢复可攻击；未知计时改为连续状态90帧，不按房间年龄。16项相关离线检查通过，新增控制台Progress；未启动游戏。第三局外层中断残留已在确认PID均不存活且无后续变更后按本局备份恢复18条差异并核对47条，原始历史保留。见 external/FIX-037.md。
- 最新 036 修复用户会话 230221-5441f7 的首帧输入崩溃：MC_INPUT_ACTION 必须 (_,entity,hook,action)，数值查询不得返回 boolean；转储和 luaL_checknumber 导入支持此根因。035 该局恢复 47 条成功。4 项相关离线检查通过，含实际 Lua 5.3 回调契约与旧缺陷复现；036 未启动游戏，仍由用户启动同一房间测试脚本。见 external/FIX-036.md。

- 用户最新目标已收缩为战斗、躲避和必要的普通压力按钮；实战拾取、走门、探索由用户负责。GUI 035 默认 RoomMechanism，不再自动拾取/走门。
- 最新用户授权修改并交付，但明确不要自行启动测试游戏，由用户启动脚本；本轮只做相关离线检查/编译，不启动以撒，不做视觉验证或全量测试。
- 035 新测试入口 outputs/Start-Room-Tests.cmd（旧 Start-Loop-Runs.cmd 同模式）。在原版单人引擎中同步逐帧采样，开门后传送下一房，常规楼层 1–12 采样到死亡再开局；不限定首层。不补血/无敌/复活，不自动拾取。
- 加速测试临时安装 LuaSocket 同步/输入/切房桥接，并加载独立 C 时钟/跳渲染 DLL；只在测试脚本中启用，感知/战斗仍为外部原算法。备份恢复存档、配置与已有模组 disable.it，移除本次临时桥接；本轮未实测该新增恢复路径。与日常窗口按键控制、官方联机的证据严格区分。
- 035 已通过 27 项相关 Python 检查、Lua/PS 语法、J460 静态匹配及非游戏宿主身份拒绝检查，已打包；没有游戏实测、没有实际加速倍数。见 external/ROOM-TESTS-035.md。用户未启动前不要把旧 current-session 或历史成功当新模式结果。
- 034 历史修复了清房火焰必打、残留危险阻止导航、推迟当前移动及对角恢复；43 项相关检查和两局后台实测，第二局仍在压力按钮房卡住。035 增加该实际快照回归和 plate_no_effect 证据路径。

- 循环跨局故障已定位并修复：Windows PowerShell 5 的 Get-Content 默认 ANSI 将 Python UTF-8 中文 JSON 解坏，Native 会话和外层 summary 两次 ConvertFrom-Json 都可能失败，导致第一局后退出。输出 Start-Loop-Runs.ps1、Run-Native-Session.ps1 及源码 run-native-fixture.ps1 的读取现均显式 -Encoding UTF8。不能只确认第一局启动就宣称持续循环通过。
- 编码修复用原失败报告完成同宿主读取复验，并在真实 Windows PowerShell 5 连续运行两局通过（193509-badb42，每局仅验证用 12 秒，均恢复、error=null、确实自动进入第二局）。默认每局仍无总时限；详见输出 loop-utf8-fix.json。此次仅修脚本，033 EXE 无变化。当前活动会话仍须读 current-session.json，不沿用旧 PID。
- 用户最新新增循环耐久测试：使用最新版持续逐局运行，受伤后继续直到死亡；卡住超时自动重开，并永久保留每局过程。已明确首层 Boss 清房后继续下楼。本条扩展单人循环测试范围，不把受伤局或单人测试当作原官方多人无伤验收。
- 当前最新版为 `outputs/IsaacExternalAssist038.exe`（0.3.8），脚本每局读取 `Latest-Isaac-Program.json` 并核对对应 BUILD.json。入口 `Start-Loop-Runs.cmd`，F7 或 `Stop-Loop-Runs.cmd` 请求停止；默认不限局数/整局时长，30 秒无有效进展或单房 600 秒触发重开。脚本使用编译版观察器，不依赖外部 Python。
- 逐局完整事件/诊断/受伤/卡点快照在 `outputs/loop-runs`；`runs-history.jsonl`、`loop-memory.json` 保存跨会话历史，日志不轮换覆盖。保留每局真实版本、随机种子和备份恢复记录；已有游戏/辅助时不启动第二份，恢复失败不再重开。
- 历史无限循环曾按用户“重新打开”启动，现已停止；035 尚未启动，活动会话与 PID 以 `outputs/loop-runs/current-session.json` 为准，不凭旧 PID 关闭进程。Windows PowerShell 双击入口已实测：只对子进程设置 RemoteSigned，优先加载其 PSHOME/Modules，处理当前宿主从 PS7 继承的模块路径问题；没有更改系统级执行策略。按 F7 或停止脚本后须等日志落盘与恢复完成。
- 033 的 23 项相关检查通过。191147-eae1e0 两局有界实测：第一局受伤 1 次后继续，卡住超时，恢复 29 条路径并自动开第二局；第二局受伤 3 次后继续，验证专用 180 秒预算结束并恢复。交付默认无该预算。自然死亡结束与观察到的下层入口导航由相关检查覆盖，本次还没有实机换层/自然死亡证据。见 `external/LOOP-RUNS-033.md` 与输出 loop-validation.json。
- 用户已于 2026-10-24 明确当前阶段先打到第一层 Boss：按困难模式从开局无伤完成首层 Boss 战验收，保留官方多人联机中只控制自己的角色。暂不把换层、Mother/Beast 等后续结局作为本阶段要求。短房间或单人离线诊断不替代该阶段的连续联机证据；目前尚未达成。
- 用户允许自行启动游戏测试、修改或重写代码、搜索相关公开代码和资料。最新提供的执行规则明确禁止全量测试、无关测试、视觉验证及扩展边角；不使用 Computer Use。
- 不把移除工作限制理解为删除本地玩家归属检查、版本匹配检查或已有危险检测。这些仍服务于当前目标；实际方案变更以证据说明。
- 用户报告卡住、不攻击、不移动、躲避不及时，且无法手动进入联机对局。先利用已有证据和可复现问题推进，不依赖用户手动开局；无法取得的联机验证如实记录。
- 执行身份会随平台权限切换。此前 `codexsandboxoffline/online` 无 Steam 会话的阻塞已解除；2026-10-24 最新复核为 `WIN-20250512IIR\Administrator`、HKCU Steam ActiveUser=1236967141，并已实际启动测试。每轮仍应复核当前身份与 Steam 会话，不凭历史状态判断，也不绕过平台执行权限。
- 下文是历史问题和证据记录；其中旧测试授权、交付阶段禁令和等待指令不再作为当前执行限制，事实与验证边界仍有效。
- 已交付独立窗口程序 `outputs/IsaacExternalAssist032.exe`，桌面快捷方式“以撒辅助 0.3.2”；无需 Python，默认后台输入，包含自动困难开局及可关闭的首层走门。旧 D 盘 0.3.0 安装保留。新版 19 项相关检查、单文件 EXE 隐藏启动检查通过，运行模块及两份 JSON 资源已核对打包；没有把打包成功当作新的战斗通过。清单见输出 `IsaacExternalAssist032.BUILD.json`。
- 游戏启动按钮通过 Steam URI 开游戏，自动开局在 worker 中运行并响应 F7；窗口消息输入只绑定已成功连接的游戏 PID，断开后清除绑定。普通启动辅助默认关闭。启动游戏时将 PauseOnFocusLost 设置为 0，原配置完整备份在程序旁 logs，此项为日常后台使用保留；这个程序入口不执行测试脚本的存档回滚。
- 战斗状态见 `external/BACKGROUND-TEST-032.md`、`TEST-RESULTS-032.md`。已取得单人后台困难首层 Boss 无伤通过一次（160856），不能替代官方多人验收。用户确认目前只有一个 Steam 账号，缺少第二名玩家；不要反复要求用户手动开局或把本地单人/同机多人伪装成官方联机。
- 原生测试脚本必须覆盖 Steam remote 与本地 .dat；旧 23 条范围不足。现在覆盖 29 条明确路径并归档新生成文件，必要时按登录 Steam 的账户原样复制原进度供测试，不自行解锁。门当前目标索引为 +0x394；角色菜单 0 是随机，1 才是 Isaac。详见 0.3.2 记录。
- 新增 `first_floor_goal.py` 与 first-floor 原生测试场景；需要实际 Boss 存活观察、原生 Room.IsClear 标志、15 引擎帧无伤确认，离线完成与官方多人完成分别记录。Room.IsClear 当前 Lua 注册 0x86c4b5、getter 0x436080 读取 RoomDescriptor+0x44 bit0；现已读取并对版本签名核对。首层 Boss 目标模式优先已发现 Boss 门，清房后停在 Boss 房内完成验收。
- 最新 160856：2459 次观察全在后台，2296 个后台提交控制帧、0 个干跑规划帧，132 颗己方泪弹，经过六个房间，6→6 血。实际 Boss 房 [1,124]，两只 type237/variant1 Boss 曾存活，frame=2427 起原生清房，2442 确认，最大观察空窗 4 帧、无验收失败。29 条恢复通过。一次通过不说明稳定通过，官方多人仍未验收。
- 当前默认测试入口为输出 `Start-FirstFloor-Test.cmd`，Steam 启动、windowmessage 输入；向已验证游戏 PID 的窗口发送 WM_KEYDOWN/UP，不需要前台、不改变全局输入法、不使用模组。160257 空房后台探针确认约 130px 移动、3 颗泪弹及原生动作状态。普通 scancode 模式仍要求前台并失焦停止；后台诊断临时关闭 PauseOnFocusLost，结束恢复。不能把后台干跑当真实控制。参考 AIsaac 仅用于启动流程，未安装其 DLL/模组/训练环境。
- 后台输入与 worker 集成相关批次 32 项通过；地形受限校准相关批次 17 项通过；此前道具/启动/诊断 41 项、跳跃/原生字节 14 项通过，各批覆盖有重叠不相加。可选道具超时会记录跳过并继续首层，该分支目前仅离线检查，160856 未触发收取。type250 Jump 按原生 target_position 预留落点；CollidesWithGrid getter 0x665a80 读 Entity+0x190，签名唯一，不能误用 +0x172；房间边界夹制可能没有该标记，拟合还会排除原生地形约束的下一步。
- 100413 的恢复记录只证明测试当时恢复 29 条路径。之后 options.ini（Language=13）、三槽 rep+persistentgamedata 与 remotecache 在 11:16/11:25 有更新，均保留，不能用旧备份覆盖新进度。当前阶段的摘要以本机输出 first-floor-progress.md/json 为准，旧 032-progress.json 仅保留历史证据。
- 用户提供 https://tieba.baidu.com/p/3225451919?pn=1 供学习。网页/移动版/普通 HTTP 均未读到正文（HTTP 403）；只取得同站精品索引中 2014-08 的标题、简介及黑苍蝇无接触伤害的开头，不得宣称读完整帖。已请用户可选粘贴第一层相关段落，不影响独立修复。

# Project confusion points

- Online controllers are not controller zero. In the observed two-player
  session, controller IDs were 3 and 4, and only 4 was local (player index 1).
  Never fall back to the lowest player index or nearest player. EngineReader
  resolves NetInputDevice ownership using the embedded user reference IsLocal
  predicate at preferred VA 0xa5f260, reached from the local-input assertion at
  0x90299b. The predicate includes data[0]&1 fallback, not only connection+0x10
  comparison; omitting that fallback incorrectly marks both players remote.
  Net devices vector is gIsaac+0x4b3d8, device controller ID +0xc, embedded
  reference +0x370 / owner +0x374. Current EXE hash gate must remain enforced.
  Reported and diagnosed with read-only game data on 2026-10-23.

- Migration details are documented in external/MIGRATION.md. Do not call a
  PyInstaller build a successful gameplay test, or assume Python imports were
  all executed by packaging. Current execution scope is defined above; Computer
  Use is prohibited. Existing functionality is confirmed only for the
  earlier external build, not every newly ported weapon or boss mechanism.
- In external mode, one engine frame may be sampled twice. Dropping held input
  on every duplicate creates stop/start movement; retain it briefly while the
  engine frame is unchanged, with pause/focus/error checks still releasing it.
- Native GetBatteryCharge's old ZHL signature did not identify the right getter
  for this build. Current Lua registrations give GetActiveCharge at 0x505c80,
  charge offset 0x1588+slot*32; GetBatteryCharge at 0x6dad40, 0x158c+slot*32.
  Verify registration names as well as matching instruction bytes.
- Prediction branches and landing reservations must use Body kind hazard, not
  enemy; otherwise speculative landing centers become attack targets. Enemy
  immunity does not remove its possible contact damage. Reported during core
  migration on 2026-10-23.

- Esc is also used for normal game menus. Treating it as permanent assist-off
  made users find the toggle disabled after checking/unpausing a run. Keep the
  enabled preference through Esc/pause/focus changes; F7 explicitly disables.

- Engine app previously polled F6 only once per snapshot (every 0.5 s when
  disabled), missing short key taps. Poll commands/hotkeys separately during
  waits. A successful entity read does not prove enabled control: inspect
  logs/control-state.json for enabled, foreground, pause reason and held keys.
  Earlier engine.jsonl omitted these fields and cannot explain a null decision.
  Reported to the user on 2026-10-23.

- Published Entity_Player offsets do not uniformly match this Repentance+ build.
  The original external preview read 0x13d8 as a weapon pointer and encountered
  literal 0xf (string capacity). Correct current weapon array base is 0x13dc;
  player type is 0x13c0, controller index 0x1618, collectible vector 0x16c8.
  Stat offsets vary individually: verify Lua property registration immediates
  and native getter disassembly, do not apply one blanket shift. Current offsets
  and a successful read-only live snapshot were captured on 2026-10-23 in
  external/last-readonly-diagnostic.json. This verifies successful reads, not
  every gameplay meaning or online player ownership. Reported to the user.

- The external engine preview3 originally used incorrect absolute entity offsets
  for animation metadata (0x70) and animation frame (0x7c). On the current Isaac
  build, Entity.sprite is at 0x48, ANM2.animState is at 0x30, AnimationState.animData
  is at 0x4, and animFrame is at 0x10: entity offsets are 0x7c and 0x88 respectively.
  0x70 falls inside ANM2's default animation name, not an animation pointer. This
  caused Invalid read range errors and prevented all control because snapshots
  deliberately reject partial danger sets. Reported to the user on 2026-10-23.
  Current EXE ANM2::GetFrame at 0x40a780 checks [ecx+0x34], supporting the layout.
- PyInstaller spec and source paths on different drives can fail during makespec
  with ValueError from os.path.relpath. Keep the spec alongside the source on C:
  and put build/dist output on D:.
- Function-style test_* functions are not collected by unittest discover without
  load_tests or TestCase wrappers. Do not interpret its test count as covering
  those functions unless they are registered.

- `isaac-access-assist/` has a legacy `weapons.lua` but no `target.lua`; target-player binding behavior exists only in `online/assist-source/target.lua`. Do not assume the legacy folder provides target-selection semantics.

- Safety ranking used to cap minimum clearance at 12 pixels, allowing attack alignment to favor grazing routes once beyond that cap. 0.2.2 adds speed/type-based comfort exposure and range-aware stand-off before attack; do not reintroduce the 12-pixel equivalence. Comfort is soft: physical collision and emergency narrow escapes remain separate. Reported to the user on 2026-10-23; no gameplay test was requested or performed.

- Explosive NPC death may occur between snapshots; relying only on dead=True loses the blast reservation when the NPC has already left the entity list. 0.2.3 keeps a short room-scoped last-position reservation, conservatively treating disappearance as possible death. Living explosive stand-off uses blast radius rather than only body radius. Reported to the user on 2026-10-23; no behavior tests performed.

- Multiplayer predictions formerly aimed Eye windups and all pursuit branches at the local player even when Entity.target referenced another current player. Resolve observed target references, preserve actual danger paths, and keep unknown retargeting soft. A target reference is not proof all future attacks remain committed. Reported to the user on 2026-10-23.
- A future retreat node being safe does not imply its connecting segment is safe; 0.2.4 adds advisory hazard checks on that segment. Local read/compute age is not network RTT; RTT remains null until a build-specific source is verified (see external/NETWORK-NOTES.md). No gameplay tests performed.

- 0.2.4 logs showed safe_stationary_firing while predicted_hit_channels=0 and fire=null. A safe stop is not proof of a useful firing position. 0.2.5 requires current aim and previous hit feedback for special holding, and treats extra stand-off as tactical rather than an unlimited priority above effective shooting. Reported to user on 2026-10-23.
- Stoney's harmless body must be obstacle, not warning/hazard; otherwise it can push the route into a corner. Obstacles have soft obstruction cost only and do not block future hazard connectivity.
- Weapon profile built brim_main_entities but did not use it: unrelated continuous lasers could keep Brimstone's tail gate closed. Full charge plus a fallback old direction is not valid current aim. Both corrected in 0.2.5 and covered by offline regression.
- User explicitly authorized Luna low-effort OFFLINE tests for 0.2.5, superseding the earlier no-tests instruction for this batch. No game launch, Computer Use, real input, or gameplay test was authorized by that offline interpretation. TEST-RESULTS-025.md records actual coverage, not proof of no-hit online completion.
- Disk/log errors must not break the control loop. Detailed logs use an asynchronous bounded queue; dropped records/write errors are exposed in control-state.json. The 0.2.5 circle fast path is compared to _blocked_batch_reference; all hazards and time samples remain included.

- Different movement inputs can wall-slide or coast into the same geometric exit. Counting keyboard labels as escape branches overstates corner safety. 0.2.6 counts pairwise-separated actual displacement directions; it still permits emergency narrow/wall routes. Reported to user on 2026-10-23; offline coverage in TEST-RESULTS-026.md.
- Aim.choose rejected ordinary tears blocked by Stoney/immune bodies, while firing-position cost and navigation ignored those bodies. This could keep a player on a nonfunctional shot line. Shared shot_geometry.py now informs aiming and navigation; preserve beam/piercing exceptions. This is code-based evidence, not a newly observed 0.2.5 gameplay event (no 0.2.5 logs existed during this pass).
- The continued authorized Luna offline batch for 0.2.6 covers 78 tests, including seven-metric HazardAtlas reference comparisons and blocker navigation. Synthetic benchmark timings are not game FPS or proof of no-hit online completion.

- Old internal Runtime Errors have not been proven to be desyncs. VERIFY-preview18.json still has online_verified=false; multiplayerSafeMode only checks player count and filters some EID callbacks, while assist MC_INPUT_ACTION remains active. Treat pre-network vs post-network input ordering as an unverified risk, not an established root cause. A loader bypass or EID-only success does not prove one-sided assist compatibility. Current feasibility evidence and return-to-internal gates are in online/ONLINE-FEASIBILITY-20261023.md; no old game patches were restored during this audit.

- Web research found xADDBx/Isaac-Online-Modded explicitly documents an EID-specific adjustment allowing single-peer use, plus a Beast-end crash warning for unpatched EID. Its MCM Pure notes say opening the menu mid-run can desync even with matching mods. Do not infer that matching mod lists or a loader bypass proves runtime synchronization, or that all one-peer EID setups are impossible. Current-version compatibility remains unverified; see online/DESYNC-RESEARCH-20261023.md.
- Same-lobby restarts have a documented community stale-input-frame diagnosis and a targeted patch in Isaac-Online-Modded. Duplicate-packet strings alone do not prove that root cause: check old run transition frame, repeated frame IDs, immediate checksum divergence and first differing entity. No patch was installed in this research pass.

- External motion calibration used a displacement residual against unscaled velocity,
  effectively rejecting scale 2, and only applied fitted units to extra prediction
  branches. 0.2.7 requires two stable, collinear observations over actual frame gaps;
  World must capture a prediction-only copied snapshot after motion fitting so
  ordinary bodies, targets and special landing/blast reservations share units.
  Preserve the raw reader snapshot for weapon/player observations and diagnostics;
  do not call stateful World.capture twice on the same active frame. This was a
  code-audit finding, not evidence that every live enemy uses scale 2.

- Steam may replace the process initially returned by launching isaac-ng.exe.
  A read against that transient PID can yield WinError 299. Resolve the actual
  current window/process before diagnosing layout corruption; ControlWorker
  already reconnects by the observed window PID. Reported during the 0.2.7
  menu-only startup check; no combat test is implied.

- Native command-line fixtures can launch without Computer Use using --load-room
  and --set-stage, with original saves/options backed up and restored. Do not
  reuse old internal fixture launchers: they install Lua overlays. New external
  fixture 027 issued 163 control decisions with unchanged enemy health before
  player death. Its old filtered combat log cannot establish whether tears were
  emitted. SendInput success/held-key logs are not proof the engine consumed
  those actions; the later 0.2.8 fixture identified IME interception of letters.
  Stop-Process is asynchronous: wait for the owned process to exit before save
  restoration checks. The initial fixture's options were restored and all save
  hashes verified unchanged after this exit race; temporary app ID was archived.

- Earlier combat logs deliberately omitted type-2 tears. Their absence in that
  file does not prove no shots were fired. 0.2.8 includes tears/familiars/knives
  and input delivery diagnostics. Empty-room echo confirmed scan-code right
  shooting can produce tears, while movement and virtual-key left did not
  respond in that fixture; distinguish each action/encoding rather than declaring
  all injected input broken. Current controls getters are 0x6b84a0 (+0x410 byte)
  and 0x85e250 (+0x414 signed int), traced from Lua property registration.

- Chinese IME swallowed movement letters in the native fixture even though
  GetAsyncKeyState reported those keys pressed. The engine keyboard action map
  was the correct default WASD/arrows. Read-only KAGE keyboard state confirmed
  movement actions stayed zero. Game-window-only IME close made S move +130px
  (wall-limited) and W move -215px in the empty-room comparison; restoring its
  original open status is required on release/off/focus loss. No global input
  language change is needed. Scan-code attacks worked; virtual-key arrow
  encoding did not, so do not replace the default with virtual-key input.

- 0.2.8 live large-room stall: at (321.54,243.99), the legal player position
  rounded onto blocked coarse node (330,250), though neighboring firing routes
  were connected. _nav_cost returned infinity, goal_cost silently omitted it,
  and shooting-position scores ignored the rock blocking the ray. This assigned
  perfect zero cost to stopping with fire=None. 0.2.9 connects exact pixel
  positions to nearby reachable coarse nodes through valid terrain, retains an
  explicit unreachable penalty, and includes terrain occlusion in attack cost.
  Preserve safety tiers and beam/grid-pass exceptions; do not add random unsafe
  movement to mask this. Evidence: D:\IsaacAccessAssist\tests\stuck028-live.json.

- Remaining 0.2.9 code-review gaps (not newly observed gameplay failures):
  EngineAim derives grid/body-pass primarily from weapon type; ordinary tear
  spectral/piercing flags are not fully propagated through profile, aiming and
  navigation. Planner.target_cost ranks distance/finish/priority/stickiness
  before building a navigation field only for the selected target, so target
  selection does not yet compare reachability or detour cost between enemies.
  Treat these as explicit gaps, not evidence that a specific logged injury was
  caused by them. The ~41ms warm frozen-snapshot plan time is not game FPS.

- 0.3.0 resolves the above two 0.2.9 guidance gaps. Bundled engine_enums.json
  exports only TearFlags.TEAR_EFFECT_COUNT, because the flags are BitSet128
  expressions; absence of TEAR_SPECTRAL/TEAR_PIERCING keys is not a zero native
  flag. Current EXE EntityPlayer Lua registration at VA 0x86a163 registers
  TearFlags at +0x1488, 16 bytes. Bundled resources/scripts/enums.lua defines
  spectral bit 0 and piercing bit 1. Keep the exact EXE hash gate; do not infer
  permanent or familiar flags from an arbitrary observed random tear. Spectral
  grid passage and piercing body passage are separate; movement terrain remains
  unchanged. FiringNavigation is now the shared reachable-lane graph for every
  candidate target and the selected target's route; its edges check terrain.
  Batch rays preserve each ray's 3px samples; BeamSearch safety/hazard horizons
  and route counts were not reduced. Frozen replay ~22.57ms warm is not FPS.
- The 0.3.0 native fixture got no foreground control: control_frames=0,
  shadow_planning_frames=196, no tears, player died. This is not a combat pass
  or evidence the assistant fought and lost. Background shadow planning must
  never be reported as successful SendInput gameplay. All 24 backup hashes were
  restored; do not silently repeat launches or take focus to turn this into a
  passing test. TEST-RESULTS-030.md records this limitation.

- Handoff audit on 2026-10-24 found root AI_HANDOFF.md still describing the
  removed internal preview15, and workspace external/BUILD.json still naming
  external 0.2.6. AI_HANDOFF.md now describes external 0.3.0; its old copy is
  archived in ai-handoff/AI_HANDOFF-before-external-030.md. Determine the actual
  version from engine_app.APP_VERSION and the installed Core030/BUILD.json,
  checking source hashes. The original workspace BUILD.json is historical.
  Handoff packaging is documentation/file copying only, not new gameplay or
  regression validation. The no-testing/no-gameplay handoff restriction was
  superseded by the current execution scope above. Packaged test scripts must
  not run a full suite by default.
