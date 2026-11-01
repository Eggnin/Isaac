# 原版训练引擎外部内存验证

一条命令构建、运行八个场景、保存逐帧对照、生成机制窗口和更新字段矩阵：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File D:/Isaac/research/external-validation/Run-ExternalValidation.ps1
```

快速重现全链路：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File D:/Isaac/research/external-validation/Run-ExternalValidation.ps1 -Steps 30 -Cases '20.0.0,412.0.0'
```

默认场景为 Monstro、Matriarch、Vis Fatty、Ultra Greed、Big Horn、Delirium、Eye、Bloat，各推进 600 帧，包含初始帧共 601 次对照。训练副本使用 debug 3 保持观察角色存活，不计战斗成绩；不修改正式游戏文件、Mod、选项或存档。跟班由隔离控制台 `spawn 3.1.0` 提供 Owner 样本。首个场景还运行现有 probe 的 goto/reset 路径；报告分别记录房间实际变化、probe 生成是否成功、切换后 Reader 是否可读。

Phase 4 的 `Pressure` 场景使用 `d.315`，不再把 `203.0.0 Brimstone Head` 当可清目标。
压力板机制实跑使用普通生命结算；单独机制探针需要保活时会明确标出 `debug 3`。
`203.0.0` 的四向子类型、房间标志和 `d.315` 零伤闭环见
`../PRESSURE-PLATE-MECHANISMS-20261029.md`。

当前找到的完整离线引擎是 `node.exe` 承载的原版 J460 提升版本：

- 宿主：`C:/Program Files/nodejs/node.exe`。
- 原版逻辑：`research/the-browsing-of-isaac/output/recomp/lift/boot-training-fast/boot.wasm`。
- 启动驱动：同目录 `boot_integration.mjs`；输入镜像 `research/runtime-inputs/host/isaac.segs.bin`。
- 场景接口：已有 `EngineEnvironment.reset/step/probe`、固定种子和原版控制台。
- 正式 EXE 只用来校验 SHA256 和恢复全局槽签名，不启动、不修改。

`memory_address.node` 只返回训练进程中活跃 Wasm ArrayBuffer 的基址。`ExternalReader.exe` 是另一个进程，使用 `PROCESS_VM_READ | PROCESS_QUERY_INFORMATION` 打开目标，真实调用 `ReadProcessMemory(host_base + guest_address)`，复用正式 C++ `Reader::capture` 和 `decode_entity`。Reader 在同一映射内持续存活，每帧重建实体快照。测试不链接键盘输出代码。`truth.mjs` 在已有暂停边界通过内部观察器/DataView 独立取值，不接收 Reader 输出。原引擎实体布局和逻辑不变。

这个传输层验证训练引擎中的外部读取与解码，不覆盖正式 x86 EXE 的模块发现、ASLR 附加流程。内部真值与 Reader 共享已恢复偏移，不能用来独立证明偏移名称和攻击语义。`uint64` 真值用十进制字符串保留精度。

每次运行保存：

- `report.json/md`、`fields.tsv`、`identities.tsv`：逐字段结果、身份/状态和独立覆盖指标。
- `samples-*.jsonl`：每个帧的独立真值和外部快照、两个 PID、实体地址/seed、帧号、房间、RPM 次数和字节数。
- `events-*.jsonl`：字段变化、实体出现/消失。完整相邻帧可提供转换前/中/后窗口。
- `failures.jsonl`：发生值不一致时写入期望值与外部值；没有不一致则不生成。
- `mechanism-windows.json/md`：高价值场景实际观测状态、动画、生成身份；缺少独立事件断言时不计攻击验证通过。
- 每个场景的 `run_directory`：原引擎日志、完整配置、隔离资源和存档目录。启用切换检查时另有内部房间边界日志。

负对照包括错误基址导致真实 RPM 失败、零地址范围拒绝、比较器拒绝错误值以及目标进程退出后采集无效。正常消失实体只按当前快照移除，不把仍然可读的释放前地址当作有效关系。指针快照关系的通过率包含空指针；非零关系在原始样本中保留。尚未构造真正释放后悬空实体指针、全范围地址复用和每个身份的关系生命周期测试。

矩阵新增 `training_external_*` 列和独立统计。历史正式游戏行为验证仍是原口径；静态语义/Planner 列保持静态证据，数值匹配不会提升攻击机制、攻击预警或 Boss 阶段的验证数。

`unmodeled-analysis.json/md` 整理全部 126 个未接入偏移的读写位置、候选宽度和关联身份。缺少独立类型/真值的项保留待验证，不新增推测性的公共字段。

需要 Node、Python 3 和现有 Zig 工具链。可在 `build.ps1 -Compiler` 中指定其他 Zig 路径。场景参数支持 `身份@房间`，例如 `412.0.0@s.boss.3414`。每次选择新的输出目录，避免混合不同运行证据。

`boss-quick.mjs` 按当前 TSV 中的 `category=boss` 逐身份运行最多60秒。使用正式 C++
Planner 默认参数和自动攻击，初始生命6个半心单位，不开无敌、不补血。优先选原版
头目/小头目房；找不到房间配置时，在原版宽房中生成原生实体，并保留 `arena_spawn`
标记。部件、阶段和这种实体探针不能改称独立完整头目战。伤害下降与原版伤害回调核对，
无效场景不计入未受伤数。测试会冻结 Reader 可执行文件和运行时语义库。

```powershell
node research/external-validation/boss-quick.mjs --output=validation/boss-quick-60s-new --workers=3
python research/external-validation/summarize_boss_quick.py validation/boss-quick-60s-new
```

也可用 `--ids=20.0.0,68.1.0` 定向选择；它不改变每身份60秒的上限。输出包含逐身份
伤害、死亡/清房、实际观察时长和失败记录，以及 CSV 和汇总表。
