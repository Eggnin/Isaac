# 0.2.8 集中回归与引擎短测（2026-10-23）

## 修复依据

此前四敌房间失败时，系统提交了按键，但移动未正常响应。旧 combat 日志过滤了普通眼泪，因此不能仅凭该文件中没有眼泪来证明没有开火；旧报告中这部分推断已更正。

本轮只读核对当前 EXE 的 Lua 注册和原生实现：ControlsEnabled getter 0x6b84a0 读取玩家 +0x410；ControlsCooldown getter 0x85e250 读取 +0x414。键盘管理器位于 preferred VA 0xc57b18，设备引用表 +8/+12、步长 8；键盘 vtable 0xba1678，GetActionValue 0xa1ea20 使用 +0x10 的四键绑定表，RawKeyValue 0xa6c580 使用 0xc78c10 的 GLFW 键状态。所有地址继续受当前 EXE SHA256 门禁约束，没有执行这些游戏函数。

引擎读到默认 WASD/方向键绑定，但 IME 开启时系统已按下的 S 没有变成游戏移动动作。仅关闭游戏的默认 IME 窗口后，S 产生约 +130px 位移（碰到墙后停止），W 产生约 -215px 位移；扫描码攻击产生眼泪。虚拟键模式的方向键攻击没有获得同等验证，生产版保留扫描码方式。

输入法处理使用系统文档所述的 [ImmGetDefaultIMEWnd](https://learn.microsoft.com/en-us/windows/win32/api/imm/nf-imm-immgetdefaultimewnd) 及 WM_IME_CONTROL，仅作用于目标游戏窗口，释放控制时恢复其原先打开状态，不切换全局输入语言。每次消息限制 15ms，未确认关闭时释放控制并允许后续重试。另可参考 [GLFW 对 VK_PROCESSKEY 的处理](https://github.com/glfw/glfw/blob/master/src/win32_window.c)。

## 离线回归

在 external/ 使用现有运行时、vendor 与 build-tools：

```powershell
python -m unittest -q test_regressions_025 test_regressions_026 test_regressions_027 test_regressions_028 test_engine_app test_engine_weapons test_engine_world test_engine_warnings test_planner test_native_getters test_win_platform
```

最终 **105 项通过，0 失败，0 错误，0.399 秒**。包含先前 89 项、7 项 Windows 模拟测试和 9 项新增测试；没有把导入的 TestCase 再次计数。Windows 测试均模拟实际发送调用，不发送真实按键。

新增覆盖：扫描码/虚拟键编码及方向键扩展标志、按下/释放配对；OS 按键状态不冒充游戏接收；ControlsEnabled/ControlsCooldown 暂时阻止操作时释放但保留开关；眼泪进入日志；输入法只对游戏关闭一次及恢复原状态，关闭失败不假报成功；读取当前键盘绑定，越界绑定不标记为已验证。

同一规划中的完全相同坐标只计算一次射击站位成本，不量化、不缩短预测、不删危险。最终战斗日志的采样记录合计复用了 5,158 次站位评分，仍有 27,801 次独立评分。它们是日志采样合计，不是整场总数，也不等于 FPS 提升。

## 原生引擎测试

使用新外部测试脚本的 --load-room/--set-stage 入口。全程未使用 Computer Use、未安装模组、未注入 DLL、未写游戏内存、未改玩家数值。为了测试临时关闭失焦暂停/云保存，结束后还原配置、存档和临时启动文件。

| 证据目录（D:\IsaacAccessAssist\tests\ 下） | 结果 |
|---|---|
| external028-input-echo-20261023-214553 | 未处理 IME：扫描码攻击有 3 颗眼泪；两个阶段均无移动 |
| external028-input-echo-20261023-215044 | 额外只读核对真实绑定和引擎动作表，确认默认按键正确，S 未进入引擎动作 |
| external028-input-echo-20261023-215342 | 游戏 IME 处理后 S/W 正确移动，扫描码攻击仍工作；恢复原打开状态 |
| external028-combat-20261023-215516 | 四敌普通房间清空，血量 6→6 半心，伤害观测 0，16 颗眼泪，清房释放按键 |

最后一项共 318 个完整快照、267 个控制决策，无后台仅规划帧；最后战斗采样 frame 321 未见存活 NPC。规划耗时中位数 30.05ms、最大 45.65ms；读取中位数 0.674ms。启动阶段存在 156 次 WinError 299 和 6 次房间未就绪重试；另有一次 IME 窗口超时，释放后后续重试恢复，均如实留在 observer-result.json，未算作成功控制样本。

存档/配置备份 24 项还原核对通过；临时 app ID 文件归档到证据目录，游戏目录恢复原状态。最终日志 input_delivery.ime.status=restored，实际持有按键为空。EXE 与主 Lua 保持重装后的哈希。

## 结论边界

已验证本轮输入修复能让这个普通四敌房间的实际战斗无伤清房。尚未验证完整联机、Boss、全部武器组合、密集弹幕或完整通关，不能保证无伤。耗时是该短测的规划/读取耗时，不是游戏 FPS，也不能据此宣称所有性能问题解决。
