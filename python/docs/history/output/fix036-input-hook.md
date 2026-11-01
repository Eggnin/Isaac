# 0.3.6 输入桥接崩溃修复

用户实测会话 20261024-230221-5441f7 在第一条快照后发生原生崩溃，外部表现为 WinError 10054 / room_test_runtime_error，并非角色死亡。恢复记录确认 47 条文件记录已恢复。

根因是 room_test_bridge.lua 的 MC_INPUT_ACTION 回调参数顺序写反：正确为 (_, entity, hook, action)。旧回调会让 GET_ACTION_VALUE 返回布尔值。转储帧链到 isaac-ng.exe+0x464e3e；其前一条 call [0xb18324] 对应当前 EXE 导入 Lua5.3.3r.dll!luaL_checknumber，随后进入 Lua 错误/终止路径，最终 ucrtbase.dll 0xc0000409 / 参数 7。连接重置是游戏退出后的结果。

036 修正参数顺序，在边界包中标明 bridge_revision=input-hook-abi-036；错误记录增加 Python traceback 和可取得的游戏进程退出状态，启动器直接打印 fatal_error。

本次 4 项相关离线检查通过。新增检查实际在 Lua 5.3 执行原桥接回调（用模拟游戏和模拟 socket），覆盖全部八个移动/射击动作的 GET_ACTION_VALUE 数值与 pressed/triggered 布尔契约，以及非玩家、远端控制器、多玩家不接管；旧签名可稳定复现类型检查失败，修复后通过。另保留模拟开门切房、受伤继续到死亡及历史汇总检查。仅语法检查无法发现本次回调契约错误。

最新版指针与原桌面“以撒房间加速测试”已更新为 036；继续双击同一个 Start-Room-Tests.cmd。没有启动游戏重测，因此不声称实际整局/加速/切房已验证。035 的旧 EXE 和原始失败记录保留，后续按版本区分日志。
