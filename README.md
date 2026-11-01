# 以撒 Gamebot · C++

这是重新实现的 Windows 原生自动战斗助手。采集、战斗模型、路径搜索、攻击判断、界面和按键输出均为 C++，运行不依赖 C#、.NET 或 Python。

## 获取与启动

需要 Windows、受支持的《以撒的结合》J460 游戏版本和 Zig C++ 工具链，或使用 CMake 配合 MSVC / Clang / MinGW 编译。从仓库根目录双击 **`Start-Assist.cmd`**：首次启动或源码更新后会尝试自动构建，随后启动助手并请求管理员权限。程序自动只读连接唯一的 `isaac-ng.exe`，自动控制默认关闭。也可以先在 PowerShell 中运行：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\cpp\build.ps1 -Test
.\Start-Assist.cmd
```

[`cpp/`](cpp/) 是独立 C++ 主程序，`data/` 保存其机制数据；[`research/`](research/) 包含研究脚本和报告。配套的离线训练适配器在 [Gamebot 仓库](https://github.com/Eggnin/Gamebot)。它需要另外准备本机 J460 游戏资源、WASM 和运行时文件，不能仅靠这两个仓库直接运行完整训练环境。

仓库保存源码、研究文档和部分数据；构建产物、原始运行日志与大型实验结果、游戏运行资源、第三方工具及嵌套的第三方检出目录不会上传，原文件仍留在本机。`validation/` 只纳入 Markdown 报告。上游训练引擎的本地源码修改另外保存于 [`research/upstream-patches/`](research/upstream-patches/)。部分历史报告中的本机路径和原始结果仅在原电脑上有效。

以下记录以 **2026.10.29** 的整理版为基线，并包含后续研究进展。数据源仍是外部进程内存，窗口中的地图是采集数据的绘制结果。Dogma 研究保留在 `research/boss-lab/`，按用户要求暂停策略优化。

J460 引擎与敌人机制证据已汇总到 [分析报告](research/ENGINE-ANALYSIS-20261029.md) 和 [统一机制数据库](data/mechanisms/isaac_j460_mechanism_db.json)。数据库覆盖 653 个本机 NPC 配置、2,210 个静态事件候选、653 个身份探针及现有历史运行证据；它是分析期数据，不作为主程序运行时依赖。

已加入银按钮、红色击杀按钮对策：银按钮逐块踩下，读取全部 `state=3` 与房间解除标志；红按钮优先导航，按下后继续避让残留攻击。653 指本机 EntityConfig 的精确 Type/Variant/Subtype 组合，其中25项已标为陷阱机关，包含 Brimstone Head。见 [陷阱目录](data/npc/TRAP-ROOM-CATALOG.md) 和 [两种按钮的原版验证](research/BUTTON-TRAP-INTEGRATION-20261030.md)。

2026.10.30 已将 Boss 高伤场景优化编入当前 `bin/IsaacGamebot.exe`：补充跳落、激光首帧、挥击、敌方烟云与火柱避让，修正地形重叠恢复和已摧毁红粪便的残留危险，并给追踪炸弹增加提前拉开距离的偏好。已完成的42个高风险场景对照中，掉血213→191个半心，死亡26→25次；按用户要求停止其余测试，每场上限60秒。3项掉血回退及逐场结果见 [专项记录](research/BOSS-STRATEGY-OPTIMIZATION-20261030.md)。

同日追加修正落点漂移、敌对者激光与大乞丐宝挥击的减速外推、生成者消失后的敌方效果归属、近墙重叠滑行和追踪炸弹接近通道。仅新增一场30秒原版短测：大乞丐宝存活，3次受伤、掉3个半心，比上一版相同场景前30秒多1个半心；本次未证明实战收益提升，详见 [30秒追加记录](research/BOSS-STRATEGY-FOLLOWUP-30S-20261030.md)。

已接续普通怪方向弹流工作：新增浮肿尸 `879.0.0` 的8个AI方向分支，以及 `87.0.0`、`857.0.0` 的三条瞄准包络，并修正原有径向、瞄准和扇形预警在发射前提前移动的问题。正式模式现为33条、18个普通怪身份；仍有38个运行时参数型身份缺少发射前模式。主程序、离线Wasm与外部Reader已重建，本轮仅新增一场约30秒的87／857同场接入探针，见 [接续记录](research/DIRECTIONAL-STREAM-TAKEOVER-20261030.md)。

全量补齐目标正在继续：第一批新增18个身份，当前为57条规则、36个身份，尚余20个。已接入冷却、状态计时器、叠层动画与玩家镜像射击，主程序、Wasm和Reader已编译；按用户要求取消短测和重复检验。剩余机制的实际实现线索记录在 [工作账](research/REMAINING-GAPS-WORK.md)。

逐敌人状态和 Boss 阶段恢复见 [专项报告](research/STATE-BOSS-RECOVERY-20261029.md) 与 [状态语义数据库](data/mechanisms/isaac_j460_state_semantics.json)。当前覆盖 956 个 Type、239 个具体 AI 函数和 110 个 Boss 身份；阶段边保留静态候选与离线验证等级。

本版修正 `28×16=448` 格房间被 447 格上限拒绝的问题，读取原版 12 种房间形状，并把窄房外侧和 L 形缺角设为不可通行；支持普通、横竖窄房、横竖双房、四格大房及四种 L 形。房间类型不设普通房或 Boss 房白名单。模块枚举增加 `ERROR_BAD_LENGTH` 重试，失败后用只读内存映射与完整路径定位实际基址。连接失败会记录 Windows 错误并自动重试。

- **F8**：开关自动控制；**F9**：急停。
- **F6**：独立开关自动攻击。关闭后只躲避，不追怪、不清障，可以自己按方向键攻击。
- **F7**：切换前台键盘／后台窗口输出；切换时释放旧后端的按键并关闭控制，再按 F8 或点击“开启 / 关闭”启动。后台开启时可直接在助手窗口点击启动按钮，不需要先切回游戏。
- 游戏前台按住 **Shift** 或移动键时交还手动控制；攻击关闭时，自己射击不会打断自动躲避。在其他应用打字不会接管后台模式。

暂停、失焦暂停、卡顿或数据暂不可用时，程序持续运行并监测，自动控制开关保持原状态。暂时释放旧按键，游戏帧恢复后自动继续，不必重新按 F8。前台模式失焦时等待，后台模式失焦后仍可向游戏窗口发送输入；后台模式同样需要游戏自身的逻辑帧保持更新。

## 日志位置

每次运行记录位于 **`D:/Isaac/sessions/native-日期-时间/`**。界面显示本次完整路径，可点击“打开日志文件夹”。

- `session.json`：实现、输入方式与快捷键说明，启动时立即写入。
- `connection-events.jsonl`：连接、断开和初始化失败记录；即使尚未成功采集，也会留下原因。
- `frames-0001.jsonl` 等：逐帧状态、决策、提交的按键、攻击开关、输入后端及游戏前台状态；每份约 64 MiB 后分段。
- `summary.json`：正常退出时写入本次帧数、观察到的生命下降次数与释放状态。

`control.applied` 记录输入提交，不等于游戏已执行。判断实际攻击需要同时查看玩家眼泪的生成或其他攻击对象。只读 CLI 测试记录在指定输出路径；最近一次只读测试目录见 `validation/latest-live-readonly.txt`。

## 战斗实现

- 四段短时路径搜索，每段可选择停留或八方向移动；玩家加速、阻尼和松键惯性按 J460 原生顺序推演。
- 先比较预测碰撞，再比较危险间隙与攻击站位；连续检查相对运动，避免高速弹幕穿过采样点。
- 安全路线使用两帧方向保护和小幅风险死区，减少无意义左右抖动；预计碰撞升高时立即改向。
- 普通弹幕读取原生年龄、相位、曲率和环绕距离，覆盖匀速、摆动、增强摆动、左右曲线、锯齿和环绕运动。
- 激光支持原生直线、圆环和采样折线几何；同时处理接触、炸弹与爆炸连锁、爆炸型 NPC 消失保留、地面液体及部分落点/前摇规则。
- 四方向眼泪拦截预测；检查目标阵营、可瞄准性、射程和地形遮挡，通过网格搜索寻找攻击位置。
- 读取普通眼泪、硫磺火、科技激光、妈刀、Monstro's Lung、科技 X、骨头与剑的武器状态，按 J460 字段模型控制蓄力和释放。普通眼泪可先清除射击通道中的粪便和普通火堆。
- 清房后继续避让残留攻击并释放射击键；威胁消失后待命。
- 原生窗口绘制房间、敌人、危险和候选路径；运行记录保存在 `sessions/`。

房间识别不等于无伤战斗通过。未知武器、炸弹/火箭射击和 Ludovico 等需要额外控制模型的武器保持手动攻击，仍可自动躲避。所有怪物、角色与道具组合的适配没有完成；真实无伤表现需要实机验收。

## 构建

需要 Windows 和 Zig C++ 工具链，或通过 CMake 使用 MSVC / Clang / MinGW。

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File D:/Isaac/cpp/build.ps1 -Test
# 显式指定工具链
powershell -NoProfile -ExecutionPolicy Bypass -File D:/Isaac/cpp/build.ps1 -Compiler C:/path/to/zig.exe -Test
```

产物为 `bin/IsaacGamebot.exe` 和 `bin/GamebotTests.exe`。CMake 入口为 `cpp/CMakeLists.txt`。

## 只读工具

```powershell
# 核对当前游戏 EXE 的 SHA256、PE 与独立字段签名
./bin/IsaacGamebot.exe --inspect 'D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe'
# 只读采集或影子决策，不发送按键
./bin/IsaacGamebot.exe --observe 30 observation.jsonl
./bin/IsaacGamebot.exe --shadow 30 shadow.jsonl
# 离线重算原生 C++ 格式的记录
./bin/IsaacGamebot.exe --replay shadow.jsonl replay.jsonl
# 无需游戏的合成记录
./bin/IsaacGamebot.exe --replay cpp/samples/combat-and-clear.jsonl sample-result.jsonl
# 查询发布版本与数据来源
./bin/IsaacGamebot.exe --version
```

当前字段识别限定于本机 J460 原版/汉化版两个已知 SHA256；其他构建会明确拒绝读取。程序没有写游戏内存、注入 DLL、安装 Mod 或修改数值的路径。

## 目录

| 目录 | 内容 |
| --- | --- |
| `cpp/include/`、`cpp/src/` | 独立 C++ 实现 |
| `cpp/tests/` | 几何、规划、原生字段、输入、合成闭环测试 |
| `cpp/third_party/` | nlohmann/json 3.12.0 单头文件与 MIT 许可 |
| `python/`、`data/npc/` | 用户指定的原始参考与历史证据，运行时不加载 |
| `data/mechanisms/` | J460 机制研究库；其中运行时语义、普通怪几何及弹幕模式 JSON 由主程序加载 |
| `research/mechanisms/` | 机制库分析期生成与校验脚本 |
| `validation/` | 本轮构建与验证结果 |

参考网址和本地项目的使用说明见 [参考资料](cpp/REFERENCES.md)。旧 C# 主工程、源码副本和发布程序及其迁出目录已清理；当前正式入口仅启动 C++。

历史重构与原版战斗覆盖结果见 [验证记录](cpp/VERIFICATION.md)。

原生物理接入的代码、测试和证据边界见 [专项记录](research/NATIVE-PHYSICS-INTEGRATION-20261029.md)。

动作保护期和三种子、多敌人外部内存复测见 [保护期记录](research/ACTION-HYSTERESIS-20261029.md)。
