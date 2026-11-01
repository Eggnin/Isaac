# 0.3.2 开发进展与验收边界（2026-10-24）

完整目标仍为困难模式无伤通关，保留多人联机只控制自己的角色的原始范围。不使用 Computer Use。当前目标未完成；普通房间诊断、困难模式开局都不替代整局或联机验收。

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

## 未完成与下一步

- hard-start 单独场景仍只启动核实。whole-run 场景已自动走门、连续战斗，免费道具导航为开发新增，已确认一次原生背包获得，主动交换后的路由完成确认尚待实测；常规 UI/安装版尚未集成整局控制。
- 最新 100035 连续 90 秒、五个房间未观察到伤害，但时间结束仍在战斗，绝非整局完成。下一次应延长单次连续验证，保留首次伤害/停滞自动停止；不再把延长运行替换为另一个短房间成功。
- 最近战斗失败为 type208 追击时上墙/岩石边缘被困（094827，frame=718）；之后两次资源/导航诊断也失败（见表），不能把零受伤静止计作通过。目前仍不能稳定完成困难战斗房。需要依据完整伤害快照继续修正退路、动作预测和计算延迟，不能用不同随机房间的受伤次数归因。
- 继续实现可达资源选择、换层及最终战斗/结局识别。房间身份现已使用楼层、索引和原始地址；仍未有最终结局判断。
- 仍需连续的困难模式整局伤害与完成证据，以及官方多人本地角色验证。
- 已询问最终 Boss/路线终点，尚未取得答案；不能擅自把通关降为单房、单层或最早 Boss。

源码为 0.3.2 开发态；Core030 安装及此前 0.3.1 输出未更新。完整目标保持 active。
