# 原版逻辑静态重编译验证

验证日期：2026-10-28。范围为评估现有公开工具能否处理本机游戏、是否适合作为离线训练环境的基础；本轮没有改动 Gamebot 的策略与启动入口。

## 结论

工具能够处理本机 J460 游戏中的真实函数。基础函数已转换、编译，并分别在 Windows 和 WebAssembly/WASI 中执行；敌人发弹及 AI 函数已转换并编译成两种目标文件。完整游戏启动、敌人战斗、逐帧训练接口及并行加速尚未验证。因此，可以继续评估原版逻辑离线运行路线，不能把当前成果称为可用训练环境。

## 固定输入

- 主候选：https://github.com/chiikabu/the-browsing-of-isaac
- 本地克隆：`D:/Isaac/research/the-browsing-of-isaac`
- 固定提交：`e346ce66a2cc6e8285258153e5583d5b55a412d8`
- 函数命名参考：https://github.com/TeamREPENTOGON/REPENTOGON
- 参考提交：`2a4e3a5fc01f5a58fca3d4f1f62740af0c0c16a3`
- 原始游戏：`D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe`
- 大小：9,362,440 字节。
- SHA-256：`7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F`。
- 上游指定解包文件 SHA-256：`5129DF723E645DAAEA59514394195F3EA1DCE1671BB0433D724648A845017200`。不是本地原始 EXE 的哈希。

没有对游戏安装目录、选项、存档或 Mod 写入。所有生成物保存在 `D:/Isaac/research/`。上游文档中的部署和游戏修改步骤没有作为本轮操作指令执行。

## 本机实际结果

| 验证 | 结果 | 证据范围 |
| --- | --- | --- |
| 本地 PE 布局与上游常量比较 | x86、映像基址、三段起始地址、代码段虚拟大小、IAT 地址及大小一致；入口和映像大小不同 | 布局高度对应，不能据此断言两个文件完全等价 |
| 建立本地 EXE 专属索引 | 2,082,517 条指令，19,038 个候选函数起点，622 个导入 | 按本地实际哈希生成；线性扫描候选不等于全部已准确恢复的函数 |
| 首批上游测试 | 72 通过，0 失败，4 跳过 | 包括资源传输、解码及部分源代码结构检查；不能计作游戏运行 |
| 本地编译执行分发测试 | 8 通过，0 失败，0 跳过 | 实际使用 Zig C 编译器，不是只匹配源码文本 |
| 本地基础函数转换 | 3 个成功 | 字符串比较、角色类型 getter、受伤冷却 getter |
| Windows 执行语义核对 | 60,000 组，0 失败 | 与独立的字符串比较/字段读取预期核对，同时检查返回地址和栈指针；不是原游戏整帧对照 |
| WebAssembly/WASI 执行语义核对 | 同样 60,000 组，0 失败 | Node WASI 运行转换代码；不是 Emscripten 完整游戏运行 |
| 本地 NPC 签名定位 | 3 个唯一命中，1 个未命中 | 未命中的 CheckPlayerProximity 不作已定位处理 |
| 真实敌人函数转换 | 请求 3 个，成功 3 个，失败 0 个 | 见下表；不包含运行时行为验证 |
| 真实敌人函数编译 | Windows `.obj` 和 WebAssembly `.o` 均成功 | 目标文件未链接成完整可执行战斗环境 |
| 上游完整 host 自测 | 未构建 | 实际入口报告 `emcc not found`；SDK 下载尝试未完成可用配置 |

### 本地已转换的真实敌人函数

名称来自公开 REPENTOGON 的字节签名，在本地可执行代码段中唯一命中：

| 函数 | 本地 VA | 转换规模 |
| --- | --- | --- |
| `Entity_NPC::Hornfel_UpdateAI` | `0x004b92e0` | 1,676 条指令，7,601 字节 |
| `Entity_NPC::FireProjectiles` | `0x006cb2e0` | 1,821 条指令，6,853 字节 |
| `Entity_NPC::FireBossProjectiles` | `0x006ccdd0` | 345 条指令，1,587 字节 |

合计 3,842 条指令、16,041 字节机器码，生成 21,676 行 C。它是保留寄存器、内存偏移和控制流的机械转换代码，不是恢复了原变量名的官方 C++ 源码。

该次转换报告仍有 57 个未包含的直接被调函数、10 处间接调用，其中 3 处常量间接调用未解析。对象构造、引擎全局状态、资源、动画、随机数、弹幕实体生成及分发器仍需接入。没有用空函数替代这些依赖来宣称敌人已经正常运行。

## 对训练用途的判断

已有基础：SLEIGH 转换器、函数分发器、键盘事件队列、虚拟地址内存读取、帧计数和固定时间种子接口。Web 前端读取角色及游戏状态，原始发弹/敌人逻辑也可被工具转换。

尚缺：本地完整启动复现；动作与逻辑帧严格同步的 `step`；初始化/重置与确定性复现；完整战斗观测及伤害记录；移除渲染和实时等待后的正确性；多实例隔离、吞吐与内存实测。浏览器自动化中的 `headless` 仍可能运行图形渲染，不能当成已经实现纯逻辑环境。

优先推进顺序：先复现一个完整房间的原版逻辑运行，接入单帧动作与状态，再验证重复种子的结果，然后做无渲染和并行加速。当前不据此承诺任何加速倍数或无伤率。

## 复现与产物

工具配置仅限本轮研究目录：Python 3.12 venv + pypcode 3.3.3；Capstone 5.0.7；Node 24.22.1；Zig 0.16.0 提供 C 编译器。未修改上游已跟踪源码。

从 `D:/Isaac` 执行：

```powershell
python research/verify_wasm_candidate.py
python research/check_npc_signatures.py
# 下面的索引步骤会重建研究目录中同一哈希的分析索引。
python research/build_local_wasm_index.py
```

执行基础函数的 WebAssembly 核对：

```powershell
node research/run_lifted_wasi.mjs
```

转换命令完整记录在 `wasm-lift-smoke/summary.json` 与 `wasm-npc-lift/summary.json`。运行转换器时，使用 `wasm-validation-env/Scripts/python.exe`，并将现有 Capstone 的 site-packages 加入该进程的 `PYTHONPATH`；没有向全局 Python 安装 pypcode。

主要证据：

- `wasm-local-pe-check.json`：原始文件哈希、段表、启动差异。
- `wasm-index-build.txt`：本地索引构建日志。
- `wasm-upstream-checks.txt`、`wasm-dispatch-check.txt`：上游定向检查结果。
- `wasm-lift-harness.c`：独立语义核对程序。
- `wasm-lift-execution.json`、`wasm-lift-wasi-execution.txt`：Windows/WASI 执行结果。
- `npc-signature-check.json`：命名签名与本地唯一匹配地址。
- `wasm-npc-lift/lifted.c`：本地原版敌人函数的机械转换代码，仅作为本机研究生成物。
- `wasm-npc-lift/summary.json`：转换成功数、依赖及间接调用统计。
- `wasm-npc-native-compile.txt`、`wasm-npc-wasm-compile.txt`：目标文件编译日志。
- `wasm-full-build-prerequisite.txt`：完整 host 自测的实际前置条件失败。

这些结果支持继续做原版引擎离线化。它们尚不支持“完整游戏已经移植成功”“所有攻击机制都已提取”或“策略已完成实战验证”的结论。
