# 0.3.2 开发进展与验收边界（2026-10-24）

用户于 2026-10-24 明确当前阶段“先打到一层 boss 就行”：当前按困难模式从开局无伤完成首层 Boss 战验收，保留多人联机只控制自己的角色的原始范围，不使用 Computer Use。当前目标未完成；普通房间诊断、困难模式开局或单人结果都不替代当前阶段的连续联机证据。下文更早的整局/后续 Boss 计划为历史范围，已由本次澄清收敛。

## 本轮代码与实际推进

当前命令通过 whoami 核实为 Administrator，与 Steam 属于同一用户。此前 sandboxoffline 的退出 53 阻塞已解除。

1. 原生四敌房间取得真实前台控制。0.3.1 基线清房但两次受伤。
2. 修复墙边冻结：实际合法的 (569.9975,409.6591) 被保守像素中心图判为禁止，旧 `_trace` 从第一个样本起否决所有路线。现在仅对距离有效中心不超过 2 像素的初始前缀允许单调恢复；不跳跃、不向障碍深处移动，进入有效地形后不能再使用例外。整段仍参与危险评分。
3. 延迟补偿采用与位移预测一致的 position_a+position_b 倍率，以及观测速度、拟合自由速度和原生移动属性的位移上界，没有修改角色速度。具有实际目标引用且处于行走动画的敌人增加可能追踪的软分支；保留原始身体及其他分支，遵循观察到的本地/远端目标。
4. 增加原生游戏难度、楼层、房间索引及门记录，增加只读菜单观测和普通扫描码开局流程。没有安装 REPENTOGON、执行 Lua 或写入游戏进程。
5. 正常启动游戏后，用 Enter、方向键选定 Isaac、Hard。最终在 frame=15 验到 difficulty=1、stage=1、room_index=84、player_character=0，且已有真实门记录。不是只看菜单文字或 XML 房间难度。
6. `hard_run_route.py` 已接入 whole-run 原生测试：读取开放且玩家可通过的门，维护已清房间与前沿，安全靠近、有限时穿门并在清房后继续。困难原生实测已离开起始房，不能再记作“整局走门未实现”。生产 UI 默认入口尚未接入整局模式。
7. 修复真实 (320,380) 的门前持续等待：仅终点代价会使重规划每次都把移动推迟到未来。清房导航增加沿途目标代价，保留原碰撞评分、24 帧/6 段/宽度 12 与九条持键路线。复测实际穿门。
8. 蜘蛛 Idle 时已暴露的排队突进终点、Leaper Hop 的实际 target_position 增加预留；原始身体仍保留。普通蜘蛛的提前舒适距离设为 120px，依据已观察的约 110px 突进，不改变实际碰撞半径。
9. 玩家稳定移动的位移单位校准支持间隔 2–6 帧；加速积分系数仍只用相邻帧。仅同一本地玩家且无帧回退的换房保留已确认单位，其余轨迹/拟合样本全部重建，不能连接跨门传送位移。
10. 像素圆盘侵蚀改用重叠视图与一次边缘失效，避免每个偏移分配整张地图；长期退路仅缓存同一地形的节点/边，所有新危险仍每帧重算。缓存与无缓存的层、深度、空间逐项一致。
11. 清房后免费道具（原生 price=0、type=5/variant=100）优先于离房。仅所选免费底座解除意外拾取遮罩，原始地形与其他收费底座保留；90 引擎帧未收取则终止诊断。已观察到原生背包取得道具（095710，见下）；主动交换后的完成确认仍待专项实机复验。
12. 095112 暴露主动道具交换后又取回旧物的问题；现以原生 collectibles 增长确认所选道具取得，并记住同一底座/seed，避免反复交换。观察器也独立记录原生背包增量，不能仅把靠近底座当作收取成功。
13. 095336 抓到另一处真实冻结 (345.9981,256.1815)：原始中心在 floor，但完整圆盘侵蚀图外，超过旧 2px 例外。提供原始 terrain mask 时，初始恢复上限为 radius+2；每个中心样本必须留在原始可走区域，且单调靠近真实有效中心，进入有效区域后例外终止。没有原始 mask 的调用仍仅允许旧 2px。真实快照离线重放从九方向全停变成 move=(1,0)、最大位移 79.34px；不能把离线重放当作同一原生关卡已通过。

## 实机记录

目录均在 `D:\IsaacAccessAssist\tests` 下：

| 目录 | 范围与结果 |
|---|---|
| external031-combat-20261024-085137 | 0.3.1：368 次观察，323 个提交控制帧，清房，6→4 血、两次受伤。旧清理错误使用 ProcessId，已立即关闭本次进程并恢复 23 条路径，之后改为 Get-Process.Id |
| external031-combat-20261024-085548 | 墙边恢复后清房，仍两次受伤 |
| external031-combat-20261024-085956 | 位移单位补偿后清房，仍一次受伤，原生难度为 0 |
| external032-combat-20261024-091430 | 普通难度 0，255 次观察、211 个提交控制帧、无影子规划帧，6→6 血、零受伤观察，25 颗泪弹，清房。规划中位 56.29ms、最大 87.86ms，不是 FPS |
| external032-hard-start-20261024-090816 | 未跳过启动画面，超时，记录失败并恢复 |
| external032-hard-start-20261024-091001 | 首次进入原生 Hard；当时误把菜单角色 0 当 Isaac，实际触发随机轮盘。后续已改为菜单 1=Isaac，此次不作确定角色开局证据 |
| external032-hard-start-20261024-091605 | 固定 Isaac 开局，只采到初始化 frame=0；随后改为等待完整初始房间 |
| external032-hard-start-20261024-091703 | frame=15、困难 1、Isaac 0、stage=1、room_index=84，读到真实门 |
| external032-hard-start-20261024-092213 | 使用当前 Steam 用户原始进度副本复验固定 Isaac 困难开局及门记录；29 条备份/缺失路径恢复通过，本地临时 .dat 均归档移走 |
| external032-whole-run-20261024-093127 | 困难 1，84→71，首次战斗蜘蛛突进伤害，frame=159 停止，6→5；据此加入排队终点预测 |
| external032-whole-run-20261024-093638 | 困难 1，5316 个控制帧但始终在起始房间，(320,380) 选择先等待的未来路径；明确失败，随后修复沿途进度代价 |
| external032-whole-run-20261024-094112 | 已实际 84→97，Leaper 原生落点 (360,160) 附近 frame=76 受伤，6→5，立即停止；据此加入落点预留 |
| external032-whole-run-20261024-094611 | 困难 1，198 次观察、184 个控制帧、19 颗泪弹；墙边窄道被蜘蛛打中，frame=419 停止，6→5。规划中位 64.93ms / 最大 100.29ms |
| external032-whole-run-20261024-094827 | 困难 1，453 次观察、405 个控制帧、30 颗泪弹，经过 84/71/83/96；前两间战斗房保持 6 血，第三间 frame=718 被 type208 接触伤害，6→5 停止。规划中位 48.63ms / 最大 84.13ms；29 条恢复通过 |
| external032-whole-run-20261024-095112 | 困难 1，80 次观察、67 个控制帧，84→83 宝箱房，未受伤但主动道具/旧物重复交换，pickup_collection_timeout 停止；失败，不是通关。随后加入背包收取确认 |
| external032-whole-run-20261024-095336 | 困难 1，2260 次观察、2244 个控制帧，84→71 宝箱房，未受伤，但在岩石余量内静止至 120 秒到期；失败。另存 route-stall-snapshot.json（frame=3165），据此增加原始地形约束的连续恢复 |
| external032-whole-run-20261024-095710 | 困难 1，1349 次观察、1323 个控制帧、零受伤，经过 84/83/69，清过战斗房且原生背包取得 201，但门前 (337.0576,396.6295) 对齐等待至 90 秒到期；失败，不是通关。规划中位 70.40ms / 最大 101.88ms |
| external032-whole-run-20261024-100035 | 困难 1，90 秒，1462 次观察、1389 个控制帧，经过 84/97/71/70/69 五个房间，6→6 血，零受伤观察，原生背包确认取得 201。时间到时仍有敌人，未通关。规划中位 52.51ms / 最大 132.39ms；29 条恢复通过 |
| external032-whole-run-20261024-100413 | 原计划延长到 300 秒，实际 91 次观察后 navigation_no_progress 停止，起始房间开门边缘 (50.6744,270.0007) 卡住；未进入 Boss 房，零受伤不算通过。29 条恢复通过。已用原始快照复现并修正穿门对齐，尚待新实机复验 |

战斗尝试未固定同一随机种子，不能据受伤次数变化宣称同场景确定性收益。普通房间一次无伤不证明困难房间、Boss、整局或在线无伤。最终源码后来增加了门/楼层观测，最新战斗日志的 source_hashes 可区分当时读取器版本与之后的元数据修改。

095710 原生背包从 {105:1} 变成 {105:1,201:1}，frame=709、room=69 实际取得 201，道具取得发生在显式路由收取确认之前，因此 items_collected 为空，以 inventory_gains 为准。仍在对齐房门时卡住，不算整局通过。随后针对 (337.0576,396.6295) 增加清房地形内当前第一步的目标代价优先级：碰撞、舒适余量、警告与退路碰撞级别仍优先；初始在保守余量内时不使用当前一步代价，以允许先退出余量。

观察器新增 90 引擎帧无 2px 位移即 navigation_no_progress 停止，并保存完整 route-stall-snapshot.json；不会把长时间静止的零受伤记录计作成功。

## 离线检查

```powershell
python -m unittest -q test_regressions_032 test_hard_run_start test_regressions_031 test_regressions_027.ControlWorkerPredictionOrderTests test_regressions_026.HazardAtlasParityTests test_regressions_026.EscapeDirectionTests test_win_platform test_planner
```

上述早期批次 61 项通过，约 0.320 秒。最终相关批次为：

```powershell
python -m unittest -q test_regressions_032 test_hard_run_route test_regressions_031 test_hard_run_start test_regressions_027.ControlWorkerPredictionOrderTests test_regressions_027.PositionScaleCalibrationTests test_regressions_027.SafetyGuidanceTests test_regressions_026.HazardAtlasParityTests test_planner test_win_platform
```

85 项通过，约 0.617 秒。覆盖新增真实卡点、跳跃落点、跨帧单位、地形等价/缓存、免费道具收取确认及相关既有控制检查。非全量测试，没有视觉验证。新增缓存测试最初误用 layers 而实际字段为 _layers，修正后通过；不把该字段错误计为通过。早先不存在的 PerformanceEquivalenceTests 同样不计为通过。

## 原生字段核对

针对精确哈希保护的当前 EXE：

- 难度判断 0x6f8100 读取 Game+0x269c8。困难标记可包含 1/3，本目标要求 1，不能把 Greedier=3 混入。
- 菜单槽由独立签名定位到首选 VA 0xc72a20。派发读取 MenuManager+0x40，Game/Save/Character 分别为 +0xb90/+0x2f4/+0x1534，不是统一平移公开偏移。
- Lua GetStage 注册原生 0x40c3a0，读取 [ecx]；GetCurrentRoomIndex 注册 0x4360e0，读取 +0x18304。
- Lua Room.GetDoor 注册 0x436020，读取 +0x724；TargetRoomIndex getter/setter 0x60cfe0/0x738150 使用 Door+0x394，不能照搬旧 +0x280。当前/目标房间类型分别在 +0x15c/+0x160 注册。
- 真实起始房间门 collision=5、state=2，目标包括普通房间和献祭房。整局导航不能只把 collision=0 当作玩家可通过，也不能为无伤目标选择献祭通路。

参考：[Difficulty](https://wofsauge.github.io/IsaacDocs/rep/enums/Difficulty.html)、[CharacterMenu](https://repentogon.com/menus/CharacterMenu.html)、[MenuManager 定义](https://github.com/TeamREPENTOGON/REPENTOGON/blob/e2c5aecacbbb83bb5938cfa89c0a58b78e616a36/libzhl/functions/MenuManager.zhl)。仓库只稀疏读取相关参考文件，没有安装其运行组件。

## 存档恢复修正

旧脚本覆盖 Steam remote、remotecache、options 与临时 app ID，但没包含关闭 Steam Cloud 后正常开局生成的本地 .dat。四份文件创建时间为本轮测试的 09:10，已归档到 `external032-generated-local-recovery-20261024`，没有删除或冒充用户旧文件。

新脚本将本地三槽 persistentgamedata/gamestate 六个明确路径（含原来不存在的路径）加入备份，计 29 条记录。原文件按哈希恢复；新文件归档。原配置使用 SteamCloud=1 时，仅从 HKCU Steam ActiveProcess 指定账户读取原始 rep+persistentgamedata 副本供测试，源文件不修改，不增加解锁。092213 的 save-source.json/restoration.json 记录此过程。测试结束没有 isaac-ng 进程，原本不存在的本地 .dat 已恢复缺失。

## 当前首层 Boss 阶段新增

- `first-floor` 原生场景已接入，必须核实新开困难模式，记录实际 Boss 存活、原生清房标记与后续 15 引擎帧无伤，才报告首层 Boss 战通过。单人通过不会自动算官方多人通过；网络归属必须由原生 NetInputDevice 验证。
- Room.IsClear 注册 0x86c4b5 的 getter 0x436080 读取 RoomDescriptor+0x44 bit0，签名 `8b41048a40442401c3` 已在精确哈希 EXE 唯一命中。已有 is_boss 的 +0xc3d 字节 getter 0x6b8470 也已核对。
- 目标模式优先已发现 Boss 门；首 Boss 清房后留在房内确认，不进入下一层。100413 已位于开门格子、普通内室 mask 外的坐标，仅对该已验证开放门做有界向外穿门与横向对齐，不放宽其他房间外地形。
- 新相关批次：`python -m unittest -q test_first_floor_goal test_regressions_032 test_hard_run_route test_regressions_031 test_hard_run_start test_regressions_027.ControlWorkerPredictionOrderTests test_regressions_027.PositionScaleCalibrationTests test_regressions_027.SafetyGuidanceTests test_regressions_026.HazardAtlasParityTests test_planner test_win_platform`，97 项通过，0.620 秒；PowerShell 解析通过。100413 原始快照重放为 move=(-1,1)、crossing_verified_door。这些均非首 Boss 原生通过证据。验收还会检查健康字段完整性及观察空窗，房间切换时也保留伤害监测。
- 此处早先执行上下文为 codexsandboxonline / workspace-write，无法使用 Administrator 的 Steam 会话。该阻塞现已解除；最新账户、启动和测试证据见下方及 `LAUNCH-FLOW-032.md`，不能再将旧阻塞作为当前状态。

## 参考启动流程后的实测（2026-10-24 下午）

用户明确 AIsaac 用于参考别人怎样打开游戏测试。已只读其固定提交 `1a0fd29e021849097305911da91dd9cc00f6a1e2` 的相关启动源码，修正本项目 Steam/原生启动、实际游戏 PID、引擎就绪握手、早期退出和错误保留。默认 Steam 启动器现区分 launcher PID 与 game PID；本机 Steam 会话已恢复可用。未安装参考仓库 DLL、模组或训练环境。

| 目录尾部 | 范围及结果 |
|---|---|
| first-floor-143305 | 正常前台控制，534 次观察、509 个提交控制帧、0 个后台规划帧；frame=552，6→5 受伤停止，未到 Boss |
| hard-start-145420 | 原生启动，launcher/game PID=11344，6.281 秒引擎就绪；自动进入 Isaac 困难模式，frame=15 |
| hard-start-145637 | Steam 启动，launcher PID=36600、game PID=24372，6.922 秒引擎就绪；自动进入 Isaac 困难模式，frame=15 |
| first-floor-150101 | Steam 启动和困难开局成功，1175 次观察、999 个提交控制帧、60 个后台规划帧；失焦后继续空跑至受伤，不是有效的全程受控战斗证据 |
| first-floor-151051 | 默认 Steam 入口再次启动成功；launcher PID=3468、game PID=17012，7.219 秒引擎就绪；111 次观察、98 个提交控制帧、0 个后台规划帧，84→97、6→6 血，在道具收取超时后停止，未到 Boss |

上述测试均恢复 29 条存档与配置路径。完整目录在本机聊天 `work/launch-verification` 和 `work/first-floor-runs`，可审查摘要在 `outputs/launch-verification.md/json` 与 `first-floor-latest.json`。启动验证只说明启动/测试入口可用，未取得首层 Boss 或官方多人通过。

150101 促成测试失焦处理修复：不再令 `dry_control=True` 后继续计时；检测失去前台即释放按键，以 `input_focus_lost` 停止。单人测试临时开启 PauseOnFocusLost=1，结束恢复原配置。新增启动相关批次 27 项通过；该失焦修改后 10 项相关检查通过，覆盖重叠不累加。无全量、无关或视觉验证。

## 后台输入及首层通过一次（2026-10-24 16:10）

用户要求继续优化并询问后台测试。原生窗口消息探针 160257 在非前台状态移动约 130px、观察到 3 颗泪弹，原生键盘动作确认收到移动/射击。遂接入 windowmessage 后台测试输入：仅向已验证游戏 PID 所属窗口发送消息，保留普通扫描码方式，不安装模组、不改变全局输入法；后台诊断临时关闭失焦暂停并在结束恢复。

160539 首次完整后台自动困难开局成功，145 个提交控制帧均在后台，但受伤停止。根据真实日志进一步排除房间边界夹制对移动速度拟合的污染。此前已增加原生 grid_colliding 字段（getter 0x665a80、Entity+0x190、唯一签名），并为 type250 Jump 已暴露的 target_position 添加落点/通路预留。可选道具超时改为记录跳过后继续首层，未冒充取得。

160856 已完成困难模式单人首层 Boss 无伤一次：2459 次观察全在后台，2296 个后台提交控制帧、0 个干跑规划帧，132 颗己方泪弹，经过 84/97/110/109/123/124 六个房间，血量 6→6。Boss 房 [1,124] 曾观察两只 type237/variant1 Boss 存活，最后一只在 frame=2352 仍存活；2427 起原生清房，2442 继续无活 Boss、无伤，完成后续 15 帧确认。最大观察空窗 4 帧、无验收失败，29 条恢复通过。验收器另含结束帧的控制计数为 2297，观察器终止前计数为 2296，均保留原始值。

规划中位 27.726ms、最大 57.8765ms，不是游戏 FPS。本轮不同尝试未固定同一种子，不能以受伤次数归因收益；一次通过也不证明稳定通过。道具跳过分支本次未触发，目前仅有离线检查。相关批次 41/14/32/17 项分别通过，覆盖有重叠不累加；未运行全量、无关或视觉测试。完整范围、前台失败及固定摘要见 `BACKGROUND-TEST-032.md` 与本机输出 background-first-floor-result.md/json；原始目录 `work/first-floor-runs/external032-first-floor-20261024-160856`。

## 独立程序交付

用户要求 EXE 程序后，已将后台输入、响应 F7 的自动困难开局和首层走门接入窗口程序，并打包为单文件 `outputs/IsaacExternalAssist032.exe`。连接成功后才绑定窗口消息目标 PID，断线清除绑定；新开局重置走门历史。启动游戏时只修改失焦暂停选项并完整备份原配置，使用日常保存流程。桌面入口为“以撒辅助 0.3.2”，旧安装保留。

相关 `test_app_delivery_032 test_engine_app.EngineAppWorkerTests test_native_session` 共 19 项通过。EXE 隐藏窗口启动退出码 0；运行模块和两份 JSON 资源静态归档检查通过。没有全量或视觉测试，也没有新的编译版实机通关证据；160856 的首层通过仍是当时源码版本的历史证据。完整打包清单见 `outputs/IsaacExternalAssist032.BUILD.json`。

## 未完成与下一步

- hard-start 单独场景仍只启动核实。whole-run 场景已自动走门、连续战斗，免费道具导航为开发新增，已确认一次原生背包获得，主动交换后的路由完成确认尚待实测；常规 UI/安装版尚未集成整局控制。
- 160856 是单人后台首层通过一次，不能代表稳定性或官方多人通过。用户确认目前只有一个 Steam 账号，缺少第二名玩家；官方联机验证需要补齐该外部条件，不要求用户手动进局，也不使用单人或同机多人冒充。
- 143305 前台战斗受伤、150101 失焦空跑、155028 跳跃落点遗漏、160539 后台战斗受伤等失败证据保留。160856 一次通过不抹去这些问题的适用范围，需要具体复现才能判断各修复效果，不能用不同随机房间的受伤次数归因。
- 暂不扩展换层或后续结局。需完成用户已指定的首层 Boss 连续无伤与官方多人本地角色验证，常规 UI/安装版也尚未集成此次目标模式。

源码为 0.3.2 开发态；Core030 安装及此前 0.3.1 输出未更新。完整目标保持 active。

本轮状态复核：旧测试恢复记录当时通过；当前五处文件在测试结束后有更新，包括 Language=13 及较新的存档/Steam 缓存，均保留。下一次测试应重新备份当前状态，不能用旧备份回滚这些变化。本阶段摘要与同账户启动器在本机输出 first-floor-progress.md/json、Start-FirstFloor-Test.cmd。
