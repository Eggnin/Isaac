# 循环脚本交付与验证

已交付 Start-Loop-Runs.cmd / Start-Loop-Runs.ps1、Stop-Loop-Runs.cmd 和 Run-Native-Session.ps1，使用 Latest-Isaac-Program.json 指向的最新 EXE（当前 0.3.3）。脚本逐局重新解析并校验构建哈希，默认不限局数、不设整局总时限；受伤后继续打，死亡或卡住超时后保存日志并重开。

首层 Boss 清房后继续等待并走向实际观察到的下层入口；不再使用 boss_room_clear_hold。GRID_TRAPDOOR=17 与 GRID_STAIRS=18 在 [IsaacDocs 原始枚举](https://github.com/wofsauge/IsaacDocs/blob/main/docs/enums/GridEntityType.md)中区分，脚本不把普通爬行空间楼梯当下一层。续层逻辑经过相关离线检查，本次实机尚未实际到达 Boss 下层入口，不能宣称已验证完整换层。

实测会话 191147-eae1e0 做了两局有界验证：第一局受伤 1 次后继续，最终 stuck_timeout；恢复 29 条路径后自动启动第二局。第二局受伤 3 次仍继续战斗，达到验证专用的 180 秒总时限后停止，恢复通过。默认交付配置 MaxRunSeconds=0，没有该验证时限。此前因其他游戏操作而中断的会话也独立保留，包含启动窗口超时和人工停止记录。

23 项相关检查通过，覆盖死亡而非首次受伤结束、卡住判定、Boss 清房等待/寻找原生入口、多局摘要与累计记忆；编译版原生版本识别、两局重开和停止后恢复也已实测。没有全量或视觉验证，没有 Computer Use。本次未实测自然死亡结束，死亡分支由相关检查验证。

每局保存 events.jsonl、完整不轮换的战斗/输入/受伤日志、卡点/死亡快照、游戏日志及随机种子、实际版本/源码哈希和恢复结果。loop-runs/runs-history.jsonl 为累计摘要，loop-memory.json 聚合各结束原因和重复失败位置，支持后续检索排查；不声称脚本会自行训练或修改代码。

默认连续 30 秒无有效进展重开；单房总时限 600 秒，可配置。F7 或 Stop-Loop-Runs.cmd 请求停止，先落盘和恢复，再退出循环。现有游戏/辅助在运行时拒绝启动第二份循环；存档恢复失败时停止自动重开。

已通过真实 Windows PowerShell 双击入口启动默认无限循环。启动器为它创建的进程设置 RemoteSigned，并优先使用该 PowerShell 宿主自己的内置模块路径，以兼容从 PowerShell 7 启动 Windows PowerShell 的场景；没有修改系统级执行策略。当前会话目录和 PID 见 loop-validation.json / loop-runs/current-session.json。

编码修复：此前 Windows PowerShell 5 将中文 UTF-8 日志按系统 ANSI 解码，一局结束后 ConvertFrom-Json 失败，导致循环退出。现两份脚本全部显式按 UTF8 读取。已用真实失败报告复现并确认修复，且在同一 Windows PowerShell 宿主实测连续两局（每局仅验证用 12 秒），日志解析、自动开下一局和恢复均通过；默认配置仍为整局无限时。固定证据见 loop-utf8-fix.json。
