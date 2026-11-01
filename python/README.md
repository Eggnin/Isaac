# 以撒自动闪避

2026-10-27：本项目已并入 `D:/Isaac`，本目录保存 Python 实现和历史证据。日常使用上级目录的 C# 主程序，下面是 Python 原版本说明。原 `D:/以撒/Start-Assist.cmd` 已转向同一个 C# 入口；057 冻结程序仍可通过本目录 `scripts/Start-Assist.ps1` 作历史对照。合并结果见 [主项目说明](../README.md)。

当前目标是闪避怪物并攻击怪物：根据实时房间、玩家运动和敌人危险计算可执行的安全动作，并在可命中时自动射击。碰撞安全优先于射击站位；拾取、走门和机关扩展不作为当前重点。

## 当前状态（2026-10-26）

- 默认程序为 `dist/IsaacExternalAssist057.exe`，版本 `0.5.7-dev-dodge`，由 `dist/Latest-Isaac-Program.json` 选择。双击 `Start-Assist.cmd` 启动；这是仅经离线验证的开发版，实机闪避效果未验收。
- 日常 GUI 默认只控制移动闪避，不自动射击、处理按钮或开局；F6 开关，F7 停止。自行启动游戏、射击和切换房间。
- 057 的 51 项源码及数据已冻结到 `build/releases/057/source`。工作源码正开发 058：按更新后的目标恢复默认自动攻击，并改进伤前连续记录，尚未替换正在运行的 057。旧 056、其原生失败证据和此前默认指针备份继续保留。
- 机制库有 653 个本机 NPC 静态配置，其中 Wiki 怪物名册 469 条；历史记录精确见过 63/469 个 Wiki 身份，尚缺 406 个。静态动画线索、时序共现均不等于已确认攻击预测。
- 当前整理和验证仅在项目内离线进行。房间测试入口会临时安装 Mod、改写选项，与当前“不改游戏文件”的采集边界冲突，不能直接运行。
- 本轮 73 项相关离线检查及打包 EXE 的 GUI smoke 通过。静态统计不再每帧重算，追击共享路线前缀，终点出口探测批量计算。24 次合成搜索对照中，完整动作、路径与诊断一致，搜索中位约 25.79→18.02ms；这不是实时耗时上界。固定受伤片段仍存在预测接触，实机效果未验收。性能对照保存在 `records/research/dodge-performance-20261026/`。
- 后续用户实际运行 057 的诊断观察到 6 次掉血至零；伤害来源未知。本批 289 个有效采样决策规划中位约 24.29ms、p95 33.01ms，仍未通过无伤验收。见 `records/validation/combat057-native-observation.json`，不能把每 6 帧的详细日志采样当作实际控制间隔。

## 从哪里开始

| 资料 | 用途 |
| --- | --- |
| [项目整理与开发路线](docs/项目整理与开发路线-20261026.md) | 当前决策、保留与重构范围、工作分配和验收顺序 |
| [架构与文件归属](docs/架构.md) | 当前代码职责、数据流和目录用途 |
| [当前问题清单](docs/当前问题清单.md) | 未完成事项及证据；旧版统计单独标记 |
| [攻击机制检测库](docs/攻击机制检测库-20261026.md) | 观测与候选的语义、目录生成链和覆盖边界 |
| [人工示范交接](docs/交接单-20261025-手动风筝后.md) | 无伤示范、052～056 对照及原始证据位置 |
| [房间测试说明](docs/房间测试说明.md) | 测试入口的实际副作用及当前使用边界 |

## 开发与核对

项目是 Windows/Python 工程；当前目录没有 Git 元数据，也没有 Bun 工作区。不要套用其他项目的包目录或构建命令。

本机 Python：`C:\Users\Administrator\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe`。额外依赖位于 `tools/python-packages`。

核对默认程序、冻结源码和开发差异（默认只打印，不启动游戏）：

```powershell
& 'C:/Users/Administrator/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/python.exe' scripts/audit-project-state.py
```

定向离线检查从 `tests` 运行，只列出本次改动相关模块，不做全量发现：

```powershell
Set-Location tests
& 'C:/Users/Administrator/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/python.exe' ../scripts/check-related.py test_engine_world test_engine_app test_combat047 test_combat048
```

发布身份以指针、BUILD 清单和文件哈希为准；行为是否有效以对应版本实测为准。`records` 原始证据、恢复备份及 `build/releases` 冻结源码继续保留。
