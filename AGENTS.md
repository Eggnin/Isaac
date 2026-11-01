# 项目入口

- 当前主程序为独立的 C++20 / Win32 Gamebot，工程在 `cpp/`；入口为 `Start-Assist.cmd`，产物为 `bin/IsaacGamebot.exe`。
- 不引入、编译、调用或迁回旧 C# / Go 主程序及其决策逻辑。新实现独立使用原始参考资料、游戏字段证据与通用几何算法。
- 构建及定向验证：`powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test`。也提供 `cpp/CMakeLists.txt`。
- 主程序只读采集游戏内存并发送普通移动/射击键；默认关闭控制。CLI 的 observe、shadow、replay 不创建键盘输出。
- 不修改游戏安装文件、Mod、选项、存档或角色数值，不运行安装 Mod、传送或生成测试房间的旧入口。
- `python/` 与 `data/npc/` 是用户指定的参考资料，不是新程序运行依赖。`D:/以撒`、`D:/IsaacAssistIO` 的目录联接保持有效；修改 Python 资料前阅读其 `AGENTS.md`。
- Python 原始资料、日志、冻结记录和目录联接作为参考保留。旧 C# 主工程及其迁出目录已由用户手动清理，当前正式工程仅保留独立 C++ 实现。
- 静态怪物动画/事件候选不能算成实测危险预测；合成模拟不能算成真实无伤成绩。
- 默认按各自适用范围应用 `C:/Users/Administrator/.codex/skills/stop-that-shit/SKILL.md` 与 `C:/Users/Administrator/.codex/skills/stss/SKILL.md`。
