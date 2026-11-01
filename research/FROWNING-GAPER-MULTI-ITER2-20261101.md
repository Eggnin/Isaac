# 10.0.0 皱眉裂口尸多敌人躲避迭代（第二轮，2026-11-01）

本轮接续 [第一轮记录](FROWNING-GAPER-MULTI-20261101.md)，只处理 `10.0.0 Frowning Gaper`，没有加入蜘蛛。所有数字仍来自隔离 J460 训练环境，不是桌面游戏实战成绩。

## 场景

| 场景 | 敌人 | 说明 |
| --- | ---: | --- |
| 原版普通房 `d.841` | 5 | 原版自然生成，玩家出生点随种子变化 |
| 横向大房 `s.boss.3700` 靠墙 | 6 | 受控原生实体，玩家初始距右墙约 30px |
| 横向大房 `s.boss.3700` 包围 | 6 | 受控原生实体，六个方向各约 125px |

评测入口不变：

```powershell
Set-Location D:/Gamebot/gamebot-training-engine-v0.1
powershell -NoProfile -ExecutionPolicy Bypass -File ./scripts/evaluate_frowning_gaper.ps1 -Layout natural -DodgeOnly
powershell -NoProfile -ExecutionPolicy Bypass -File ./scripts/evaluate_frowning_gaper.ps1 -Layout natural
powershell -NoProfile -ExecutionPolicy Bypass -File ./scripts/evaluate_frowning_gaper.ps1 -Layout encircled -Seed 'SWGF G7WV' -DodgeOnly
```

## 策略改动

1. **逃生空间优先排序**：普通房（`shape==1`）和所有 `DodgeOnly` 运行先比较可达逃生方向数、1.5 秒后的安全区域、边界余量，再比较局部威胁暴露；横向大房的自动攻击仍保持原来的“先攻击目标”排序，避免回退既有成绩。
2. **追击者转向预测**：`DodgeOnly` 的裂口尸群场景中，每个候选路线单独积分每只追击者的位置（按观测速度朝候选路线上的玩家位置转向），再用扫掠距离计算碰撞；其他威胁仍用直线外推。
3. **更长的躲避前瞻**：`DodgeOnly` 且至少两只接触威胁时，规划前瞻从 1.0 秒提高到 1.6 秒。
4. **诊断字段**：每个候选动作现在额外输出 `escape_directions`、`escape_area`、`edge_clearance`、`margin`，便于复核排序原因。

前两项是解决“贴墙被追上”的关键；单独延长前瞻、单独加墙边代价、单独预测追击都未达到效果。

## 原版普通房（5 只）

`DodgeOnly` 为 60 秒持续躲避，不攻击、不清房；自动攻击模式为清房即结束。损失单位为半心。

| 种子 | 躲避 60s 损失 | 自动攻击损失 / 清房 | 记录 |
| --- | ---: | --- | --- |
| `3JY1 6FLR`（训练） | 0 | 0 / 19.63s | [躲避](../validation/final3-natural-seed1-dodge-20261101/report.json) / [攻击](../validation/final3-natural-seed1-combat-20261101/report.json) |
| `7W3L P1Z9`（训练） | 0 | 0 / 23.30s | [躲避](../validation/final3-natural-seed3-dodge-20261101/report.json) / [攻击](../validation/final3-natural-seed3-combat-20261101/report.json) |
| `SWGF G7WV`（训练） | 0 | 0 / 27.80s | [躲避](../validation/final3-natural-heldout-dodge-20261101/report.json) / [攻击](../validation/final3-natural-heldout-combat-20261101/report.json) |
| `WE4Y Y4DM`（留出） | 0 | 0 / 12.33s | [躲避](../validation/final3-natural-heldout2-dodge-20261101/report.json) / [攻击](../validation/final3-natural-heldout2-combat-20261101/report.json) |
| `F2HZ 6ZVD`（留出） | **1（55.17s）**，存活满 60s | 0 / 15.77s | [躲避](../validation/final3-natural-heldout3-dodge-20261101/report.json) / [攻击](../validation/final3-natural-heldout3-combat-20261101/report.json) |

自动攻击在五个种子上都无伤清房。躲避模式在五个种子上都活满 60 秒，其中四个种子完全无伤；`F2HZ 6ZVD` 在 55.17 秒仍被一只从墙边夹击的裂口尸碰到一次。第一轮基线在 8.07–22.73 秒死亡，第一轮当前策略在 30.70–52.13 秒死亡；本轮没有死亡。

## 横向大房 6 只（受控压力场景）

自动攻击：

| 布局 | 种子 | 损失 | 清房 | 用时 | 记录 |
| --- | --- | ---: | --- | ---: | --- |
| 靠墙 | `3JY1 6FLR` | 1 | 是 | 9.77s | [report](../validation/final3-wall-seed1-combat-20261101/report.json) |
| 包围 | `3JY1 6FLR` | 0 | 是 | 17.13s | [report](../validation/final3-encircled-seed1-combat-20261101/report.json) |
| 靠墙 | `SWGF G7WV` | 0 | 是 | 11.57s | [report](../validation/final3-wall-heldout-combat-20261101/report.json) |
| 包围 | `SWGF G7WV` | 0 | 是 | 16.43s | [report](../validation/final3-encircled-heldout-combat-20261101/report.json) |

`DodgeOnly` 在这些受控六敌人布局中仍未达到无伤，全部死亡：

| 布局 | 种子 | 结果 | 记录 |
| --- | --- | --- | --- |
| 靠墙 | `3JY1 6FLR` | 7.17s 死亡 | [report](../validation/final3-wall-seed1-dodge-20261101/report.json) |
| 靠墙 | `SWGF G7WV` | 35.50s 死亡 | [report](../validation/final3-wall-heldout-dodge-20261101/report.json) |
| 包围 | `3JY1 6FLR` | 35.33s 死亡 | [report](../validation/final3-encircled-seed1-dodge-20261101/report.json) |
| 包围 | `SWGF G7WV` | 22.57s 死亡 | [report](../validation/final3-encircled-heldout-dodge-20261101/report.json) |

这两个布局是刻意构造的包围/贴墙压力，不是自然生成房间；不能据此声称对所有六敌人组合都无伤，也不能把普通房结果外推过去。

## 结论与边界

- 原版普通房 5 只裂口尸：自动攻击 5/5 无伤清房；持续躲避 5/5 活满 60 秒，其中 4/5 完全无伤，留出种子 `F2HZ 6ZVD` 有 1 次受击。
- 受控六敌人靠墙/包围的自动攻击为 3/4 无伤清房；`DodgeOnly` 未通过。
- 所有结果都是隔离 J460 引擎离线结果，不是真实游戏无伤；仍受角色属性、房间布局和种子限制。
- 本轮未运行桌面游戏，未修改游戏安装、存档、选项或 Mod；未使用蜘蛛、传送或生成测试房间的旧入口。

## 构建与验证

- `powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test`：176 项通过，0 失败。
- `research/external-validation/build.ps1`：本机 Reader 重建。
- `python research/build_planner_policy.py`：离线 Wasm 策略重建（Emscripten 6.0.5）。
- `bin/IsaacGamebot.exe`、`ExternalReader.exe`、`planner_policy.wasm` 均由当前源码生成。
- 普通房躲避平均单帧规划 25.8ms（1800 帧），自动攻击 13.1ms。比第一轮更重，但在 30Hz 隔离评测预算内；未在本轮声明桌面游戏实时性能。
- 表中的 Reader 哈希是实际参与这些验证运行的二进制。相同源码再次构建得到的 Reader 可能因本机构建产物不同而哈希不同，策略行为以 `cpp/src/planner.cpp` 哈希为准。

## 本次产物 SHA-256

- `cpp/src/planner.cpp`: `A64A2E4442AC849357BFF60E33649BCE808A9324BB84021C905B447BFE970E07`
- `cpp/include/gamebot/planner.hpp`: `2566191D217D8956678D2038B6105B8A44BBF8EA0C0D5FA7DA465C56939FC52E`
- `cpp/include/gamebot/model.hpp`: `FE7D821A3B208C303A4D19C3A64CF205E94D062B1A1CBCBB06B092E592724242`
- `bin/IsaacGamebot.exe`: `237B9A84AD761304CD025EF165190F58776768CBF92D0CA928FD68EF28F2BCD5`
- `research/external-validation/ExternalReader.exe`: `E2ED48D3F59D10B7E226D4C059D6B60054C559C2F0E233DF2CAC2BC834C8951D`
- `research/offline/planner_policy.wasm`: `9DFF4B828AA604D3B0971FAD8E0F997B2CE5CD01D530AC87DB7A6593E9C1C7BE`
