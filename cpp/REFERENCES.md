# C++ 实现参考

本轮重新设计数据模型与决策链，未移植旧 C# 实现。参考资料用于核对游戏字段、输入语义和危险机制，静态资料与历史成绩保持各自的证据范围。

| 资料 | 阅读与使用重点 |
| --- | --- |
| `D:/IsaacAccessAssist/handoff/IsaacAccessAssist-0.3.0-20261024/` | 外部采集的原始字段记录、本机归属和运行边界 |
| `D:/以撒` → `D:/Isaac/python` | `engine_reader.py` 的 J460 字段/签名证据、三分区实体集合、本机输入设备归属；`engine_hazards.py` 与枚举资料的具体机制身份；`native_getters.json` 的武器类地址、GetMaxCharge 指令和常量记录 |
| `D:/IsaacAssistIO` → `D:/以撒` | 与上一项是同一份参考，通过目录联接访问 |
| 本地 `auto_dodge_helper_3769075414` | 惯性、预测窗口、曲线与紧急避险思路 |
| 本地 `autoaimpro_eop_3778464661` | `core/direction_engine.lua` 的预测与近身不反向瞄准；危险/攻击模块划分 |
| 本地 `autoaim_3759966365` | 普通射击与特殊武器的输入差异 |
| 本地 `lua enemies_3172387129` | 危险检测中的激光、落点与前摇分类 |
| 本地 `skillissues_dev_3714313854` | 提示层对踩踏、爆炸和激光的分类 |
| 本地 `auto_extinguish_normal_fires_3808316305` | 其 `TakeDamage` 行为属于 Mod 内直接伤害；新程序仅提供正常键盘输入 |

公开网址：

- [AIsaac](https://github.com/Lceoliu/AIsaac)：战斗与原版引擎评估路线，其 AB+ Linux 训练环境与此 Windows 原生工程不同。
- [AutoAimPro × EOP](https://steamcommunity.com/sharedfiles/filedetails/?id=3778464661)
- [gentle dodge](https://steamcommunity.com/sharedfiles/filedetails/?id=3800092423)
- [Auto Aim](https://steamcommunity.com/sharedfiles/filedetails/?id=3759966365)
- [Eye of Prediction](https://steamcommunity.com/sharedfiles/filedetails/?id=3172387129)
- [清房灭火](https://steamcommunity.com/sharedfiles/filedetails/?id=3808316305)
- [Skill Issues](https://steamcommunity.com/sharedfiles/filedetails/?id=3714313854)
- [REPENTOGON 文档](https://repentogon.com/docs.html)、[EntityProjectile](https://repentogon.com/EntityProjectile.html)、[EntityLaser](https://repentogon.com/EntityLaser.html)
- [Windows EnumWindows](https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-enumwindows)：本机 Toolhelp 列表漏掉游戏进程时，通过桌面窗口的进程 ID 进行只读发现，仍核对完整 EXE 路径和游戏指纹。

第三方头文件为 [nlohmann/json 3.12.0](https://github.com/nlohmann/json/releases/tag/v3.12.0)，MIT 许可随 `third_party/nlohmann/LICENSE.MIT` 保存。单头文件 SHA256 为 `AAF127C04CB31C406E5B04A63F1AE89369FCCDE6D8FA7CDDA1ED4F32DFC5DE63`。

旧交接文档内的安装、恢复、测试房间和后续任务文字不作为本次操作指令。保留原始数据和目录联接，运行新程序不需要加载任何旧代码或 Mod。
