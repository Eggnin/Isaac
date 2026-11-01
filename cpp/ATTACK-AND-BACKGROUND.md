# 攻击开关、后台输出与持续监测

## 这次战斗日志

用户测试局保存在 `D:/Isaac/sessions/native-20261027-221129-187/`，正常关闭助手后已写入 `summary.json`。原始逐帧记录全部保留。

该局共 16,433 帧，其中 1,753 帧记录了持有射击方向键，但这些帧没有同时观察到玩家眼泪；其他帧共观察到 362 个玩家眼泪采样。这个结果支持“输入提交不等于游戏已响应”，不能据此把射击日志当作攻击成功。汇总见 `validation/attack-input-diagnosis.json`。

前台后端已改用非零硬件扫描码，方向键同时带扩展键标志；不再使用原来扫描码为零的虚拟键事件。该修复已完成离线检查，实际游戏接受程度仍要通过新眼泪生成与命中记录验证。

## 操作

- F8 或“开启 / 关闭”：总控制开关，程序启动时关闭。
- F6 或“自动攻击”：独立攻击开关，启动时开启。关闭后只躲避，不追怪、不清障；自己按射击键不会暂停躲避。
- F7 或“后台输出”：在前台扫描码和后台窗口消息之间切换。切换时释放旧按键并关闭控制，再用 F8 或窗口按钮开启。后台时可直接在助手窗口点击开启，不需要激活游戏。
- F9：主动急停，释放按键。F6/F7/F8 快捷键在游戏前台响应；后台时使用助手按钮，F9 仍可全局急停。

后台后端通过 HWND 投递键盘消息，不调用全局 SendInput 或激活游戏窗口。日志的 `control.input_backend` 区分 `window-messages` 和 `scan-codes`；`control.attack_enabled` 记录攻击开关，`control.game_foreground` 记录游戏是否在前台。

窗口消息提交成功并不证明游戏已经执行。已准备 `validation/background-input-check.exe` 作定向验证：只在未暂停、已清理、角色静止且存在短安全路线的房间中，短时发送移动和射击，核对位置变化和新生成的玩家眼泪；不传送、不生成敌人、不改数值。当前房间尚未就绪，输入效果验收仍待完成，准备检查没有发送按键。

## 游戏暂停或逻辑帧停止

逻辑帧超过 150ms 不变时，不退出程序、不关闭自动控制开关。程序持续监测，暂时释放基于旧状态的按键；游戏恢复有效帧后自动继续。暂停、失焦等待和暂时无效的快照同样保留已开启的控制偏好。

总控制也可在游戏暂停或房间暂未就绪时开启，随后等待恢复。前台模式失焦时释放键并等待；后台模式失焦后可以继续向游戏窗口投递输入，但不能让游戏引擎在真正暂停或卡死时继续模拟。

## 验证

当前 56 项 C++ 测试通过；相关用例覆盖即时关闭攻击释放射击键、保留移动、只躲避不追怪、恢复后重新攻击、暂停/失焦/无效帧后自动继续、WASD 和方向键扫描码，以及用户真实攻击帧的决策与按键输出。多敌人离线覆盖与当前限制见 `VERIFICATION.md`。

2026-10-29 起，主程序还加载
`data/mechanisms/gamebot_runtime_semantics.json`。Eye Shoot、Bloat Attack 和
Brimstone Head Shoot 的已验证前摇由数据库规则转换为 Planner 威胁；其他未验证
State 不会因为编号存在而自动生成攻击预测。最终判定以
`validation/mechanism-coverage-20261029.json` 和
`validation/high-value-mechanism-validation-20261029.json` 为准。

记录：`validation/attack-toggle-background-build.log`、`validation/attack-toggle-background-summary.json`、`validation/attack-toggle-ui-probe.log`。本次日志目录在 `validation/latest-gui-session.txt`，界面也显示路径并提供打开文件夹按钮。

Windows 接口依据：[KEYBDINPUT](https://learn.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-keybdinput)、[MapVirtualKeyW](https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-mapvirtualkeyw)。
