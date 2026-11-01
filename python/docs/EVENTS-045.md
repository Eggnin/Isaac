# 045 全回调捕获

已发布版本：0.4.5-external-core。由根目录 Start-Room-Tests.cmd 启动临时测试桥接，日常 Start-Assist.cmd 不自动安装该桥接。

启动脚本热修订 045-ascii-io-1：首次用户测试因 Lua 的窄字符文件接口无法打开 UTF-8 中文目录而在启动阶段失败，尚未捕获游戏观测；该局恢复成功。现在将采集路径转换为 D:\IsaacAssistIO 英文联接，文件仍位于 D:\以撒。新增真实 Lua 文件创建与结束验证，不能只检查字符串转义。EXE 和采集器、战斗代码保持原哈希，原生游戏复测仍由用户启动。

## 捕获范围

运行时枚举全部可注册 ModCallbacks，包括每实体每帧更新；当前本机声明有 74 个不同回调 ID。每次调用逐条保存，不采样、不聚合、不按实体过滤。观察器在较早优先级执行并始终返回 nil，不替换正常游戏处理结果。

参数保存数量、顺序、typed nil/false、64 位整数、表引用、实体身份与公开字段、EntityRef。原生 userdata 不等同完整 C++ 堆转储；未知字段、失效引用和读取错误明确记录。范围是 Lua 暴露并注册的回调，不是所有内部 C++ 函数调用。

## 每局文件

| 文件 | 用途 |
| --- | --- |
| engine-events.jsonl | 完整逐条原始回调流与结束尾部 |
| engine-damage-events.jsonl | 伤害回调副本索引，保留源 EntityRef、amount、flags、countdown |
| engine-event-status.json | 写入状态、注册目录、序号/计数和错误 |
| damage-source-links.jsonl | 按玩家、帧窗口、房间和种子关联实际血量/冷却变化 |
| engine-event-capture-summary.json | 结束确认、计数及尾部完整性结果 |

旧 damage-NNNN.json 增加 engine_damage_evidence。唯一候选、多候选与未匹配分别保存。MC_ENTITY_TAKE_DMG 是应用前请求，来源引用不能单独证明最终实际伤害因果，applied_damage_source_confirmed 保持 false。

捕获起点为临时观察器注册完成，终点为确认的 finish_capture 或引擎退出回调。该边界之外没有完整事件保证。收尾握手、计数、最后尾部、索引残行和写入错误均检查；不完整时结束循环并保留原数据。空间不足停止，不轮换删除旧记录。

## 验证与版本边界

33 项相关 Python/Lua 检查通过，离线执行本机 74 类回调与额外 1000 次高频回调；Windows PowerShell 5 的 3 项语法和中文/引号路径检查通过。未启动游戏、未做视觉或全量测试。实际原生绑定、性能、落盘与关联仍由用户首次测试确认。

045 固定源码位于 build/releases/045/source。工作源码保留未发布的受伤冷却避险补丁；045 战斗核心与 044 哈希一致。打包清单明确记录此差异。

旧日志没有记录过的事件不能补回。详细发布核对在 records/validation/event045-validation.json。

2026-10-25 用户复测后补充：会话 20261025-140624-cb74b6 的前 3 局完成原生采集，共 3,039,468 条回调且 seen=written，结束校验通过。19 次伤害中的 7 次关联漏配已经只读定位为时间窗口下界排除上一帧回调，当前关联代码尚未修正；详细证据在 records/research/20261025/045-first3-event-timing.json。原生全回调存在可见性能代价，仍需分类测量。
