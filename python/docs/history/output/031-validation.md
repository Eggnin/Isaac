# 0.3.1 开发候选与验证记录（2026-10-24）

目标为多人联机只控制自己的角色，以无伤通关验收。用户已解除历史工作限制，仅保留不使用 Computer Use；本轮没有使用 Computer Use。

## 已完成的代码修复

1. `EngineReader._local_controllers`：网络设备向量非空、但暂未匹配当前玩家时，返回空本地集合，保留网络归属方法，不再回退 controller 0。离线空网络向量的既有路径保留。
2. `ControlWorker.process_snapshot`：重复引擎帧复用上一次完整观测结果，不再次观测运动、激光或世界；暂停不改写世界观测。失焦、停帧仍释放按键。房间/角色身份变化、帧回退和重新连接清理预测与规划状态；无效帧不进入规划。
3. `_room_details`：复现当前 EXE `Room::GetGridCollision` 的 StageId=35 且 Type=16 时返回 NONE 的前置分支。新增 `room_config`、`grid_collision_source`、各格原始 `grid_path` 字段；紧凑日志保留房间配置与碰撞来源。

没有削减危险集合、预测时长或搜索宽度，未改游戏 EXE 或角色数值。候选源码版本为 `0.3.1-external-core`；实际安装仍为 `D:\IsaacAccessAssist\release\IsaacExternalCore030`。

## 离线验证

旧实现运行新增测试时，11 项中 7 项失败，复现归属回退、重复/暂停帧重观测以及预测上下文未重置等问题。新增地形测试在修复前 3 项中 1 项失败。

最终运行：

```powershell
python -m unittest -q test_regressions_031 test_engine_app.EngineAppWorkerTests test_regressions_027.ControlWorkerPredictionOrderTests test_regressions_030.TearEffectTests test_engine_world
```

35 项通过，耗时约 0.075 秒。仅选取本轮相关范围；没有运行全量测试。输入及内存均为模拟对象，不能代替实战。

## 原生碰撞分支证据

针对原精确哈希 EXE 做静态核对：Lua 名称 `GetGridCollision` 在 VA `0x86c2ea` 注册原生函数 `0x7f0800`。函数读取 Room+4 的 descriptor、descriptor+0x10 的配置，配置 Type(+8)=16 且 StageId(+0)=35 时直接返回 0；其余分支使用 GridEntity+0x3c，或 Room+0x76c 的路径阈值。`GetGridEntity` VA `0x436060` 仍使用 Room+0x24。不是统一平移偏移。

## 历史现场发现与尚存问题

原安装日志的两个 combat 文件共 927 条记录均标记 `offline_keyboard_controller`，不能作为联机验证。904 条有决策，其中 743 条为 move=(0,0)、fire=null；这是采样日志统计，不是连续控制帧比例。

同一房间的初始快照 frame=2430 含 135 个格子，均无 GridEntity，碰撞值为 68 个 3 与 67 个 0。用此快照重建地图时，实际玩家位置 (320,400) 和后续受伤位置约 (70.0003,409.9671) 均被判为不可走；九种输入预测均停在原位。后续碰撞图可能变化，不能把初始地图视为受伤时的完整地图。

已证明旧控制器会在该地图输入下冻结，尚未证明历史快照属于 StageId 35 / Type 16，也未证明此次特殊分支修复已解决该现场。旧快照缺少 room_config 与原始 grid_path，不能从碰撞结果反推。需要新的原生快照核对，不能擅自清空碰撞图或强制随机移动。

## 启动、恢复与构建

共保留六次有记录的准备/启动尝试：前两次因不能创建 steam_appid.txt 中止；初次旧 WMI 清理也遭拒绝，已在无游戏进程时立即手动完成恢复，并修正脚本以免 WMI 阻断恢复。后续试过 Steam 启动、仅环境变量启动，以及取得目录创建权限后的临时 app-ID 启动，均未取得游戏窗口或快照。最后原生进程退出码为 53，根因尚未确认。不能将其归因为战斗失败、布局错误或网络问题。

全部观察计数/control_frames/shadow_planning_frames 均为 0，没有本版实战或联机验证。启动器现在将零观察明确报错，记录进程退出结果；观察器定期重新定位连接并保存首份完整快照。每次备份的 23 项配置/存档已恢复并核对哈希，临时 app ID 已移走。

进一步只读核对确认，命令的实际 Windows 身份为 `WIN-20250512IIR\codexsandboxoffline`，Steam PID 6112 的进程令牌属于 `WIN-20250512IIR\Administrator`，两者同处 Session 1 但不是同一用户。环境变量 USERNAME=Administrator 不能作为实际执行身份的证据。尚未证明退出码 53 的全部根因；当前命令身份不能代表正常登录 Steam 的用户。已提供 `RunNativeTest.cmd` / `RunNativeTest.ps1`，供正常 Steam 所属 Windows 用户启动同一有备份恢复的测试，无需手动进入房间。此脚本尚未在 Administrator 下执行。

PyInstaller 初次构建发现本机 Python 缺少可用 Tcl 数据，已从原 0.3.0 安装的 `_tcl_data` / `_tk_data` 设置 TCL_LIBRARY / TK_LIBRARY 重新构建。最终包含 tkinter，隐藏启动 2.5 秒未提前退出，随后关闭该测试进程。构建及辅助程序启动不是游戏战斗验证。没有替换原安装或桌面入口。

## 公开资料参考

- [AIsaac README](https://github.com/Lceoliu/AIsaac/blob/main/README.md)：当前主要为 AB+ 原生训练与整局决策研究，未将其当作可直接替换的忏悔+联机控制器，没有恢复训练或下载模型。
- [Isaac-Online-Modded README](https://github.com/xADDBx/Isaac-Online-Modded)：项目说明其为二进制补丁与联机模组兼容路线，且提示同步问题；本轮未安装该补丁。
- [REPENTOGON Room 定义](https://github.com/TeamREPENTOGON/REPENTOGON/blob/main/libzhl/functions/Room.zhl)：布局参考；实际采用字段已对当前 EXE 的对应函数核对。
