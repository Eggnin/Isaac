# Gamebot 交接总账（2026-10-30）

## 最新接手续批

本页下方的116项测试、二进制哈希和预测覆盖数字是早期交接状态，当前状态以本节及
[普通怪几何总账](MONSTER-GEOMETRY-20261030.md) 为准。

- 已读取原规划聊天最后未完成的方向弹流任务并继续实现；读取时原聊天处于空闲状态。
- 当前普通怪口径322，316个有已验证几何组，530组；正式弹幕模式33条、18个身份。
- 新接入 `879.0.0` 的8个方向分支，方向取 `ai_i2 × 45°`，速度120～240、角偏差±10°。
- 修复未来发射预警把等待时间误算成子弹飞行时间的问题，覆盖原有径向、瞄准与扇形路径。
- 保留本聊天已完成的Boss避让、地形恢复与追踪炸弹修改；主程序、离线Wasm和外部Reader重新构建。
- 上批C++检查154通过、0失败，Node几何检查8通过、0失败；879单场接入探针有145帧弹流预警。
- 最新实现 `stream/direction=aimed`，新增87的Attack及857的Attack1／Attack2三条规则。当前产物已编译，本轮只新增一次约30秒的87／857同场接入探针，没有重跑测试集合或完整性比对。
- 56个runtime-parametric身份中仍有38个缺少正式发射前模式。857远端八向弹已与初始单发按标记分开，尚未新增其精确分裂时序。
- 前一批源码和产物绑定保留在 [方向弹流清单](../validation/directional-stream-takeover-20261030.json)；最新机制与运行记录见 [专项记录](DIRECTIONAL-STREAM-TAKEOVER-20261030.md)。

## 结论

当前目标“无论遇到什么敌人和攻击都能躲避”尚未完成。本轮完成了规划器统一危险窗口、严格路线排序、失败优先级聚合和原版反事实工具，但没有消除现有代表场景的受击，也没有冻结新的 v12 策略快照。

当前正式冻结策略仍为 `research/policy-baselines/policy-20261029-v11/`。本轮代码已构建，但未写入新的不可变快照，因此不能把当前二进制与 v11 混为一谈。

## 已落地

- [planner.cpp](../cpp/src/planner.cpp:32) 的路线排序改为严格固定键，不再使用会造成 A>C、C>B、B>A 的成对死区比较。
- 动作保持移出排序比较器，只在最终选择阶段作为安全滞回；正式默认仍为 2 帧，见 [planner.hpp](../cpp/include/gamebot/planner.hpp:15)。
- 所有危险在进入 Planner 前补齐可计算的 `start_frame/end_frame`、来源、证据状态、数据来源和结束条件。结构契约覆盖 21 类生产路径，包括 `death-blast`。
- `timing_verified`、`geometry_verified` 仍分别保留。窗口字段可计算不等于攻击时序或几何已经通过原版验证。
- [analyze_failure_priority.mjs](analyze_failure_priority.mjs) 可按实际血伤、零血伤碰撞、攻击族、危险组合和失败原因生成 JSON/Markdown 优先级。
- [analyze_mixed_counterfactual.mjs](analyze_mixed_counterfactual.mjs) 可复现混合场景首次受击，回溯指定帧数，执行九方向及途中转向的原版反事实搜索。
- 当前 `IsaacGamebot.exe` 已构建，SHA-256 为 `6D2E1667C8FD678C3815033FF8904E5399589BDF121D67FB0B64FBCA7108E35A`。
- 当前离线策略 Wasm 已构建，SHA-256 为 `7F6B4BDF7D80E3A225E36325F1B6F63E810BFCB48B1461F7A48E08A02B5F0F39`。
- C++ 测试为 116 通过、0 失败；测试结果明确标记 `gameplay_evidence=false`。

## 当前可复现证据

### 失败优先级

历史聚合共扫描 8 份记录、434 场运行，得到 350 次碰撞记录和 50 次真实血伤记录。该数据混合了不同策略版本，只能用于排序，不能当作当前版本成绩。

当前 6 场代表矩阵使用严格排序和默认 2 帧保持：

- 数据通过 6/6。
- 零死亡。
- 5/6 受伤。
- 累计 11 点血伤。
- `mixed-current-priority-diag-20261030.json` 的 13 次血伤中，12 次是“扩展搜索后仍无零伤候选”，1 次是决策报告 `safe=true` 但实际受伤。

### 反事实

三个代表受击均在前 30 帧找到了原版零伤反事实：

- Cage `7W3L P1Z9`：受击前 30 帧，原地不动连续 60 帧零伤。
- Cage `3JY1 6FLR`：受击前 30 帧，持续下移连续 60 帧零伤。
- Cross Stoney `7W3L P1Z9`：受击前 30 帧，持续东南移动连续 60 帧零伤。

三次反事实均在原版帧引擎中实际执行到 60 帧结束且未掉血。结论不是“没有路”，而是更早的动作选择和动作持续性不足。

### 被否决的实验

- 未来安全出口数直接进入路线排序：6/6 受伤，1 死亡，已完整撤回。
- 最终选择使用暴露/余量容差：零伤可以保持，但 Monstro 清房明显变慢，已撤回。
- 3 帧全局保持：完整 14 场混合矩阵零死亡、5/14 受伤，Monstro 也能清房，但切换率和部分种子清房时间变差，只保留为实验参数。
- 5 帧全局保持：6 场代表矩阵零死亡，但 Monstro 第二种子 3000 帧未清房，不能进入默认。
- 当前默认已恢复 2 帧。

## 未完成与卡点

### P0：当前目标的核心缺口

- 受击发生在更早的路线选择阶段。当前 Planner 每帧重新规划，但还没有“已验证连续安全动作段”机制，无法稳定保持反事实找到的安全动作。
- 现有 6 场结果存在运行间差异。相同代码和种子在不同进程、不同并行度下出现过 4 到 5 个受伤运行，甚至一次死亡。必须先建立可比重复性，再判断调参收益。
- 混合场景的危险归因存在多源重叠。受伤快照同时包含接触、血泊、翻滚、激光或弹幕时，当前聚合器只能确认“该攻击族出现在受伤帧”，不能证明它是最初伤害源。

### P1：攻击预测覆盖

- 运行时数据库覆盖 653 个身份，但只有 76 个身份有运行时状态观察，只有 7 个身份有已识别攻击。
- 当前只有 3 条运行时前摇规则：Eye、Bloat、Brimstone Head。
- 有 4 条已验证发射时点，但只有 Eye `60.0.0:8:Shoot` 的几何达到 `planning_validated=true`。
- 实时外部读取已经验证的是旧字段；新增 AI、Delirium 和 Boss 字段还没有新的实机外部读取闭环。
- Brimstone 运行时规则仍声明的 subtype 与 Planner fallback 覆盖的四向 subtype 不完全一致，需回查生成器和已验证证据后再统一。
- `safe=true` 但实际受伤的乐观安全样本仍需逐帧区分：危险未进入模型、时序错误、几何过小、执行时机偏差，或危险源归因错误。

### P2：覆盖与验收

- 365 随机怪报告是历史策略的校准无敌结果，不能当作当前策略正常生命无伤成绩；当前代码尚未重跑 365 全量。
- 24 特殊房和 103 Boss 名单也包含历史版本结果。Boss 名录已有 103 项，但只有 Delirium 被用户接受；其余 102 项仍需验收。
- Greedier 第一层仍至少有按钮重踩、中心机关伤害、`Sack 30.2.0` 停滞和波次推进问题。
- 事件 Boss、Greedier 后半、复合敌人、留出种子均未完成系统性验收。
- 还没有 v12 快照，也没有本轮最终代码与当前 6 场/14 场报告的单一哈希绑定。

### P3：工程与文档一致性

- 根目录不是 Git 仓库，本轮无法提供可靠提交级 diff 或回滚点。
- [OFFLINE-TRAINING.md](OFFLINE-TRAINING.md) 仍主要描述 v11、113 项测试和旧动作保护参数，落后于当前 116 项测试和默认 2 帧实现。
- [ACTION-HYSTERESIS-20261029.md](ACTION-HYSTERESIS-20261029.md) 记录了已删除的成对死区参数，应作为历史材料阅读。
- 多个实验报告名称包含 `final`、`hold3` 或 `strict-final`，但它们不是同一个冻结策略版本，不能横向拼接为总成绩。
- 项目要求默认读取的 `stop-that-shit` 与 `stss` 文件当前在指定路径不存在。AGENTS 指令仍保留，但技能本体无法重新读取。

## 文件入口

- 当前失败优先级：[FAILURE-PRIORITY-20261029.md](FAILURE-PRIORITY-20261029.md)
- 当前 6 场诊断优先级：[FAILURE-PRIORITY-CURRENT-DIAG-20261030.md](FAILURE-PRIORITY-CURRENT-DIAG-20261030.md)
- 当前严格排序 6 场报告：[mixed-strict-final-20261030.json](mixed-strict-final-20261030.json)
- 当前诊断 6 场报告：[mixed-current-priority-diag-20261030.json](mixed-current-priority-diag-20261030.json)
- Cage 第二种子反事实：[counterfactual-cage-seed2-back30-20261030.json](counterfactual-cage-seed2-back30-20261030.json)
- Cage 第一种子反事实：[counterfactual-cage-seed1-back30-20261030.json](counterfactual-cage-seed1-back30-20261030.json)
- Cross Stoney 反事实：[counterfactual-cross-stoney-seed2-back30-20261030.json](counterfactual-cross-stoney-seed2-back30-20261030.json)
- 正式排序代码：[planner.cpp](../cpp/src/planner.cpp)
- 正式配置：[planner.hpp](../cpp/include/gamebot/planner.hpp)
- 116 项测试：[core_tests.cpp](../cpp/tests/core_tests.cpp)
- 当前测试结果：[test-results.json](../bin/test-results.json)

## 下一位接手者应先做

1. 先建立可重复的单进程受击基线，固定同一报告哈希；不要继续并行比较不同版本矩阵。
2. 把反事实的安全动作段接入搜索，而不是继续全局拉长 `action_hold_frames`。
3. 对 `safe=true` 的伤害样本先做精确来源归因，再补前摇或几何规则。
4. 在所有代表失败消除后，重跑完整 14 场、Monstro 三种子和留出种子。
5. 只有报告、二进制、Wasm、源码和参数全部绑定后，再冻结 v12。
