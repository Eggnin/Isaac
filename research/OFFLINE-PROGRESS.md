# 原版引擎离线训练进度

**2026-10-28 已完成：完整原版战斗、严格逐帧控制、冷重置复现、关闭渲染对照和两环境并行参数优化均已实测通过。使用方法与最终证据见 [OFFLINE-TRAINING.md](OFFLINE-TRAINING.md)。以下为早期推进记录，保留作历史参考。**

目标：先完成一个真实战斗房间，再提供严格逐帧控制和可测量的加速训练。

## 完成标准

1. 本地游戏原始逻辑完成初始化，进入有敌人的房间；记录原生敌人、玩家攻击、伤害及房间清空，不能只以编译或进菜单为成功。
2. `step(action)` 推进恰好一个游戏逻辑帧；等待动作时保持环境状态；固定种子重置可复现。
3. 关闭渲染/实时等待后，以同种子动作核对战斗结果；运行实际训练批次并记录吞吐、耗时和结果。

## 已有证据（2026-10-28）

- Emscripten 6.0.5 与 Lua 5.3.3 已在研究目录安装/编译。
- 本地 EXE 的独立启动输入和内存镜像已生成、验证，见 `RUNTIME-INPUT-NOTES.md`。
- 宿主层使用最终生成的导入表和真实镜像重新构建，执行 730 项检查，0 失败：`wasm-host-selftest-final-inputs.txt`。
- 第一轮完整模块成功链接为 56,550,348 字节的 Wasm。启动通过地址布局、IAT 和 TLS，停在未收录的静态初始化入口 `0x00aef9ff`，见 `offline-runs/20261028-004410-530/engine.log`。
- 已加入初始化/虚表中指向代码的地址，第二轮转换得到 28,232 个函数、0 转换失败、97.02% 代码字节覆盖，链接为 93,856,602 字节的 Wasm。
- 第二轮启动执行完全部 121 个初始化器，保护区完整：`offline-runs/20261028-005804-234/engine.log`。
- 完整主程序执行到 OpenGL/OpenAL、Lua 和资源初始化，报告 `Repentance+ v1.9.7.17.J460`；随后遇到未收录的代码函数指针 `0x00951130`：`offline-runs/20261028-005819-384/engine.log`。第三轮已加入指令中的地址逃逸引用，候选入口 28,424 个，转换得到 30,260 个函数、0 失败，正在重建。转换本身不证明所有动态调用可运行。
- 房间观察/键盘动作模块由子 agent 编写；独立记录器已接入研究版启动器。观察器的合成布局用例不计为战斗成绩。
- 第三轮模块已进入真实游戏并运行 6,000 显示帧，主函数正常返回。原生 Monstro 弹幕、玩家泪弹、受伤、死亡和重开均有记录：`offline-runs/20261028-011450-534/`。
- 按局重分组后，第二局房间 71 从未清空状态进入战斗，在逻辑帧 234 清空，玩家剩余 1 点血，场内 NPC 列表为空、原生 clearCount=1。该局后来死亡，不能计作无伤成绩；完整房间生命周期已跑通。证据：`observations.analysis.json`。
- 实机逻辑还暴露了观察器继承的 447 格上限错误：28x16 房间实际有 448 格，正在修正观察器。正式 Gamebot 未因此改动。

## 启动和复现

```powershell
python research/prepare_runtime_inputs.py --phase all
python research/build_original_engine.py inventory
python research/build_original_engine.py lift --jobs 4
python research/build_original_engine.py mechanics
python research/build_original_engine.py build --jobs 3
powershell -NoProfile -ExecutionPolicy Bypass -File research/Run-OfflineRoom.ps1 -Stage boot
```

所有运行实例、配置和存档写入研究目录，正式 Gamebot 和游戏安装文件保持独立。
