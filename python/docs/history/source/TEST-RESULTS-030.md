# 0.3.0 修复与验证（2026-10-23）

本轮修复 0.2.9 明确列出的穿墙／穿透传播、可达选敌和重复计算开销。外部只读读取、正常键盘输出、精确 EXE hash gate 保留；没有注入、改玩家数值、恢复旧内置文件或使用 Computer Use。

## 数据与实现

- 当前 EXE SHA256 为 `7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F`。文件反汇编中 VA 0x86a163 的 Lua 属性注册为 `push 1; push 0x1488; push "TearFlags"; ... call 0x883ab0`。从玩家 +0x1488 读取 16 字节；本地 resources/scripts/enums.lua 定义 spectral=TEARFLAG(0)、piercing=TEARFLAG(1)。原 engine_enums.json 未导出 BitSet128 表达式，不能用缺失的键判断没有效果。
- 射击、位置成本和导航共用每个发射通道的射程与独立 grid/body passage。普通穿墙眼泪仍检查墙壁；穿透眼泪不凭穿透属性穿过石头；玩家标志不推广至未知宝宝，也不从随机单颗眼泪推断永久属性。原光束、刀与 Tech X 类型例外保留。
- 所有候选敌人共享玩家起点导航距离场，比较可达射击位置和绕行距离，之后保留收尾、召唤优先级与保持目标。选中目标使用同一套射击种子生成引导场。粗图相邻边本身检查地形，避免仅凭端点跨细墙。
- 路线末端目标成本、3px 射线样本和敌人间距批量计算。保留全部危险、24 帧主搜索／后续退路、6 段、宽度 12、9 条 held-input 路线及安全等级顺序。

布局证据：`D:\IsaacAccessAssist\tests\external030-validation\tear-flags-layout.json`。

## 离线回归

```powershell
python -m unittest -q test_regressions_025 test_regressions_026 test_regressions_027 test_regressions_028 test_regressions_029 test_regressions_030 test_engine_app test_engine_weapons test_engine_world test_engine_warnings test_planner test_native_getters test_win_platform
```

124 项通过。新增 14 项覆盖：独立穿墙/穿透、墙壁限制、站位一致性、原生玩家作用域与随机眼泪隔离、穿透多目标、地形图不影响移动、128 位读取和相邻射程字段、不可达近敌与可达远敌比较、真实绕路成本比较、穿墙射击种子与移动分离、粗边不跨细墙、603 条射线的逐样本标量对照、200 个导航连接成本对照、四种标志共 400 个攻击成本的独立标量对照。已有全危险七项指标对照、输入释放、蓄力尾段和本地玩家绑定等回归也通过。所有离线输入为模拟对象。

## 冻结现场与性能

数据：`fixtures/stuck-large-room-028.json`，同一大房间旧卡住现场。

初始决策 move=(1,0)、fire=null，预测碰撞数 0，所选路径全部中心合法；起点攻击引导成本约 11.164，末端约 0.081。两只目标都可达，绕路距离约 177.37 和 49.09，选择后者。最初射线还被挡住，所以此时不发射；不能把冻结场景第一步当作已实机完成绕行。

本机冷启动约 38.34ms，40 次预热规划中位数 22.569ms，范围 22.198–24.893ms。此前 0.2.9 报告 40.70/40.83ms，相比约减少 45%。此前基线是上一轮记录，当前场景为冻结快照，**不是游戏 FPS、密弹幕整体加速比例或跨机器保证**。

数据：`D:\IsaacAccessAssist\tests\external030-validation\frozen-replay.json`。

## 本次独立游戏短测：未形成战斗验证

原生 fixture：`D:\IsaacAccessAssist\tests\external030-combat-20261023-224120`。

没有取得前台控制，control_frames=0、shadow_planning_frames=196；209 次有效观察，普通眼泪观察 0，角色最终死亡。只做了背景影子规划，没有辅助按键输出，**不能算作战斗通过，也不能据此说辅助打不过该场景**。影子规划中位数约 28.964ms；读取中位数约 0.695ms。另记录 WinError 299 重试 155 次、菜单/换房/不支持布局重试 69 次；未把重试当作成功读取。

测试进程退出后已恢复并核对 24 项原文件哈希，临时 app ID 归档到该测试目录；restoration.json 的 restored=true。没有重跑或强行夺取焦点。当前版尚未新增成功实战或多人联机验证，上一版 0.2.8 四敌无伤短测只属于历史证据。

## 安装

输出 `D:\IsaacAccessAssist\release\IsaacExternalCore030\IsaacExternalAssist.exe`，默认关闭，F6 开关／F7 关闭。桌面快捷方式更新到此版本；旧 Core029 保留供回退。打包及隐藏 GUI 启动结果记录在 BUILD.json，与游戏实战验证分别标注。
