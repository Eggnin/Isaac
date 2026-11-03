# 五怪物纯躲避修正：LEECH / CYCLOPIA（2026-11-01）

针对 `FIVE-MONSTER-DODGE-SCREEN-20261101.md` 里最快死亡的两类做修正。结论：**没有再出现 10 秒级死亡，但 5 只 LEECH 仍未达到无伤，60 秒内仍会死亡**。这里把“改善”和“通过”分开写。

## 修改内容

1. **高风险接触怪的墙边优先指标**：房间里同时有至少 3 只 `55.0.0 LEECH` 或 `284.0.0 CYCLOPIA` 时，路线排序先比较第一段结束墙距和整段最小墙距，再比较逃生方向/区域。只对这两类生效，不改 5 只 `10.0.0` 普通房的排序。
2. **这两类的躲避前瞻从 1.6s 延长到 2.5s**，让规划器在进入墙角前更早看到墙。
3. 未采用：给 LEECH 额外接触半径、给 LEECH 单独启用“暴露优先”排序、对这两类启用追击转向预测。它们要么无效果，要么让首次受击更早。

## 结果（`test5` 五只环形，30 秒）

| 类型 | 修正前 | 修正后 |
| --- | --- | --- |
| `55.0.0` LEECH | 9.97s 死亡，3 次受击 | **30s 存活，2 次受击 / 4 半心** |
| `284.0.0` CYCLOPIA | 25.73s 死亡，6 次受击 | **30s 存活，3 次受击 / 3 半心** |

记录：[LEECH/CYCLOPIA 30s](../validation/fix-release-ring-20261101/report.json)

## 60 秒与公平起手

| 场景 | 类型 | 结果 |
| --- | --- | --- |
| `test5` 环形，60s | LEECH | 42.93s 死亡，6 次受击 |
| `test5` 环形，60s | CYCLOPIA | 50.00s 死亡，6 次受击 |
| `test5line` 上方一线，30s | CYCLOPIA | **0 伤害，30s 存活** |
| `test5line` 上方一线，30s | LEECH | 15.27s 死亡，6 次受击 |

- CYCLOPIA 在更公平的一线起手里能做到 30 秒无伤；环形起手仍会在 50 秒死亡。
- LEECH 在环形起手里从“10 秒死亡”变成“30 秒存活”，但 60 秒仍死亡；一线起手反而 15 秒死亡。它是本轮唯一没有明显改善到可接受程度的类型。
- 60 秒记录：[60s ring](../validation/fix-wallmetric-leech-cyclopia-60s-20261101/report.json)；一线记录：[test5line](../validation/fix-final-line-20261101/report.json)。

## 为什么 LEECH 还不行

- 实测 LEECH 速度可到约 246px/s，玩家上限 260px/s，几乎同速；5 只同时追击时无法靠“跑得更快”拉开。
- 每次接触伤害是 **2 个半心**，3 次接触就清空 6 半心；即使受击频率不高，容错也很小。
- 剩余受击仍发生在贴墙/墙角。把 LEECH 的接触半径放大或让它单独走“暴露优先”排序，都会让首次受击更早，已撤销。
- 因此不能把 30 秒存活写成“修好”；LEECH 仍是待解决项。

## 回归检查

- 原版 `10.0.0` 5 只普通房：`7W3L P1Z9` 仍 0 伤害；`F2HZ 6ZVD` 仍 1 次受击。修正只对 55/284 生效。
- C++ 测试：176 项通过，0 失败。
- 主程序、Reader、离线 Wasm 已重建。

## 产物 SHA-256

- `cpp/src/planner.cpp`: `1136460C7FE0FC4D5A77BDFF7DDD8AF1C2D90C69E55A99E74735E0D48C8EAD69`
- `cpp/include/gamebot/planner.hpp`: `CE00AAA39A1C42FA09D1A85BC0DA3DF6053929463ADBA774B769B885CCF3837B`
- `cpp/include/gamebot/model.hpp`: `C79C77F0BE7E46E4BFFEFB6D83FD18A37E11CE92ED923A73338CB1ADF7DD63A3`
- `bin/IsaacGamebot.exe`: `1298F2AFAA52F5B1A7B40931E08DF176D1EC7AC6871103543B5F32E643DE6826`
- `research/external-validation/ExternalReader.exe`: `FBAB58F1A1D2F923CC546BB3291F053971730D8589A8B32E559D14EB99720B15`
- `research/offline/planner_policy.wasm`: `D276AF7F23B980862C31BD257F9533BBBEA785E364C67DE562A9249144255271`
