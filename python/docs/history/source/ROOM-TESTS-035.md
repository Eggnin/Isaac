# 0.3.5 房间加速循环测试

双击 Start-Room-Tests.cmd，或桌面“以撒房间加速测试”。旧 Start-Loop-Runs.cmd 现在也默认进入同一模式。保持 Steam 登录，先关闭正在运行的以撒及辅助。此交付未由开发端启动游戏；请由用户启动实测。

流程：自动困难 Isaac 开局 → 原版战斗、躲避、必要的普通压力按钮 → 连续观察到门打开且没有必打目标 → 传送下一间实际生成的普通/小 Boss/Boss 房间。当前楼层候选用完后通过 stage 命令进入下一层，常规楼层 1–12 循环采样；并非所有支线、房间变体或最终结局均被覆盖。不自动拾取、不自动走门；不补血、不复活、不启用无敌。受伤继续，死亡保存后重开。未知机关、无进展和单房超时分别留证后重开；桥接/版本/恢复故障停止循环，避免重复无效启动。

默认无限局、每局无总时限。每个普通 step 推进 1 个游戏逻辑帧；切房后允许 2 帧过渡并记录 generation。卡住阈值按游戏时间 30 秒、单房 600 秒；位置新格子不再作为此模式的进展，敌人血量下降、清房和机关状态变化才算。未知闭门房间给 90 帧观察窗口；按钮尝试最多 180 帧，无效果记录 plate_no_effect，避免重复踩同一按钮。

加速仅用于单人测试：临时 Lua 桥接在 MC_POST_UPDATE 边界阻塞，接收现有外部规划器的移动/射击动作；MC_INPUT_ACTION 仅绑定唯一键盘角色（ControllerIndex=0，人数=1）。感知仍是原有只读内存，未改成 Lua 感知或新的战斗策略。测试专用 DLL 只 Hook 时钟、Manager 更新计时和渲染，使用虚拟时钟/跳渲染；不把墙钟计算耗时当成已流逝游戏时间。正常 GUI 仍使用窗口按键，保留本地耗时补偿与过时决策拒绝。同步加速成绩不能代替正常速度输入或官方联机验收。加速倍数尚未实测，observer-result.json 的 effective_game_speed 会记录实际游戏时间/采样墙钟时间。

测试开始前备份原存档、配置及现有模组 disable.it 标记，临时只启用测试桥接；结束退出本次游戏后恢复原文件和标记，移除本次创建的桥接。日常 GUI 不安装/注入这个测试适配器。加速层有 EXE 全文件 SHA256、PE 身份和三处函数字节匹配；不匹配时不启动。原程序、旧日志均保留。

F7 或 Stop-Loop-Runs.cmd 请求停止。请等脚本落盘和恢复完成再关闭窗口。日志仍在 loop-runs/<会话>/run-XXXX/external035-room-test-*；events.jsonl 记录任务、切房和结束，room-results.json 记录开门证据与每房伤害观察，evidence/decisions.jsonl 记录每个决策边界，damage-sequence-* / attack-no-progress-* 保留最多 180 次原始观测及决策。伤害候选仅是距离/状态证据，不冒充已确定伤害源；攻击无进展区分未发射与已发射但未观察到目标掉血。runs-history.jsonl 保留真实版本、模式、加速状态和每局统计。

需要关闭加速诊断时可运行：

    powershell -NoProfile -ExecutionPolicy RemoteSigned -File .\Start-Loop-Runs.ps1 -Mode room-test -NoTurbo

此选项仍用同步测试桥接，只关闭时钟/渲染加速；不等同于日常窗口按键实测。

离线验证：27 项相关 Python 检查通过（26 项按钮/六个旧卡点/房间导航/历史相关检查，加 1 项模拟开门传送、受伤继续到死亡的集成检查）；Lua 与 PowerShell 语法通过；本机 J460 PE/三处字节匹配；32 位非游戏宿主加载 DLL 后身份拒绝 status=2，manager/render 调用均为 0。没有启动游戏、没有视觉验证、没有全量测试。未验证实际加速、桥接回调、传送、临时模组隔离恢复或联机；打包不等于这些行为通过。

参考：
- https://github.com/Lceoliu/AIsaac/tree/1a0fd29e021849097305911da91dd9cc00f6a1e2/turbo
- https://github.com/Lceoliu/AIsaac/blob/1a0fd29e021849097305911da91dd9cc00f6a1e2/docs/L1_FEASIBILITY_PLAN.md
- https://wofsauge.github.io/IsaacDocs/rep/Game.html#changeroom
- https://isaacscript.github.io/isaac-typescript-definitions/enums/pressureplatevariant/

MinHook v1.3.4 原许可随 room-test-runtime/MINHOOK-LICENSE.txt 交付。时钟/桥接适配器是本项目独立实现，方法参考 AIsaac；未直接复制其战斗策略或训练模型。
