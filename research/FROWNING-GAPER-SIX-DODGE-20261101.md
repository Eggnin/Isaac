# 10.0.0 皱眉裂口尸六敌人纯躲避尝试（2026-11-01）

本轮只处理 `10.0.0 Frowning Gaper`，目标是无伤。结论先说：**六敌人同时存在的纯躲避仍未达到无伤**。原版普通房 5 只的无伤结果没有被这次六敌人实验破坏；六敌人最好的结果是活满 60 秒、但仍会受击 3 次。下面记录尝试、证据和原因，不把“存活 60 秒”当成“无伤通过”。

## 网上资料

- [Isaac Wiki: Gaper](https://bindingofisaacrebirth.wiki.gg/wiki/Gaper)：Gapers 会“以最直接的路线走向 Isaac”，并会绕过障碍和其他敌人；Frowning Gapers 看到 Isaac 后会永久获得额外速度。也就是说，它们不是固定路线弹幕，而是持续转向的追击者。
- 通用动作游戏建议（Quake Wiki / 讨论中的 circle-strafe、kiting）：面对追击者应绕圈保持速度，利用转向让追击者落后，避免把自己送进墙角或死路。六敌人时尤其要先穿过最大的空档，不能在墙边来回折返。

这些资料支持“持续绕圈 + 提前离开墙边”的方向，但没有给出可直接套用的六敌人无伤参数。

## 六敌人场景

保留第一轮的受控布局：

- `wall`：`s.boss.3700`，玩家距右墙约 30px，6 只裂口尸在西侧。
- `encircled`：`s.boss.3700`，玩家在中心，6 只在四周。

本轮新增 `d841six`：原版 `d.841` 内，玩家在下方，6 只裂口尸排在上方一线。它是受控实体组合，不是自然生成房间；加它是为了给六敌人一个比“走廊死角”更有 maneuver 空间的测试。

```powershell
Set-Location D:/Gamebot/gamebot-training-engine-v0.1
powershell -NoProfile -ExecutionPolicy Bypass -File ./scripts/evaluate_frowning_gaper.ps1 -Layout d841six -Seed '7W3L P1Z9' -DodgeOnly
powershell -NoProfile -ExecutionPolicy Bypass -File ./scripts/evaluate_frowning_gaper.ps1 -Layout wall -Seed '3JY1 6FLR' -DodgeOnly
```

## 本轮改动

1. **静止追击者按追击处理**：六敌人场景中，裂口尸刚出生、速度仍为 0 时，不再当成静态障碍，而按 140px/s 朝玩家转向预测。只在六敌人躲避模式生效，避免改变已验证的 5 只普通房。
2. **六敌人专用的墙边/逃逸排序**：`shape==6` 或房间内至少 6 只裂口尸时，加入贴墙帧数、路径最小墙距、第一段结束墙距、逃生方向数（上限从 3 提高到 9）和“局部威胁优先”排序；5 只普通房不使用这些规则。
3. **新增 `d841six` 布局**：在原版 `d.841` 中用受控位置放 6 只，保留精确数量/身份校验。

尝试但未保留的方案：

- 固定顺时针/逆时针轨道控制器：在窄走廊和六面包围中会撞人，已撤销。
- 方向粘滞（保持上一帧动作）：会锁死在坏方向上，已撤销。
- 单纯加大接触间距：六敌人下受击反而增加到 5 次，已撤销。
- 更长前瞻/更早的圈速控制：没有稳定降低受击数。

## 结果

### 原版普通房 5 只（未被六敌人实验破坏）

当前构建重新跑过，记录在 `final4-*`：

| 种子 | 躲避 60s | 自动攻击 |
| --- | --- | --- |
| `3JY1 6FLR` | 0 伤害 | 0 伤害，19.63s 清房 |
| `7W3L P1Z9` | 0 伤害 | 0 伤害，23.30s 清房 |
| `SWGF G7WV` | 0 伤害 | 0 伤害，27.80s 清房 |
| `WE4Y Y4DM`（留出） | 0 伤害 | 0 伤害，12.33s 清房 |
| `F2HZ 6ZVD`（留出） | **1 次受击（55.17s）**，存活 60s | 0 伤害，15.77s 清房 |

### 六敌人（全部仍未无伤）

| 场景 | 种子 | 结果 | 记录 |
| --- | --- | --- | --- |
| `d841six` 上方一线 | `7W3L P1Z9` | 60s，**3 次受击** | [report](../validation/final-six-line-seed3-dodge-20261101/report.json) |
| `d841six` 上方一线 | `F2HZ 6ZVD` | 60s，**3 次受击** | [report](../validation/final-six-line-heldout3-dodge-20261101/report.json) |
| 横向大房 靠墙 | `3JY1 6FLR` | 52.70s 死亡，6 次受击 | [report](../validation/final4-wall-seed1-dodge-20261101/report.json) |
| 横向大房 包围 | `SWGF G7WV` | 33.23s 死亡，6 次受击 | [report](../validation/final4-encircled-heldout-dodge-20261101/report.json) |

`d841six` 的第一次受击分别在第 14.2s / 10.7s，之后还能继续躲避，但无法把 60 秒内的接触次数降到 0。横向大房比第一轮有改善（靠墙从 7.17s 提高到 52.70s），但仍会死亡。

## 为什么六敌人无伤没有达成

- 横向大房 `s.boss.3700` 的可用区域不是完整 280px 高：网格第 1/7 行有大量 `collision==1` 的障碍，实际主要活动带只有第 2–6 行，约 160px 高。6 只裂口尸直径约 42px，横向铺开后可以封住整条走廊；玩家一旦跑到尽头，就没有从侧面绕过的空间。
- `d841six` 的 520×280 房间给了更多空间，6 只仍会从多个方向收口。当前预测把追击者按“朝玩家转向”处理，受击次数从第一轮的“很快死亡”降到 3 次/60 秒，但剩余的三次都发生在贴墙转身或迎面穿过收口时，现有排序还没能全部消除。
- 因此“存活 60 秒”不等于“无伤”。本轮不把 `d841six` 的 3 次受击写成通过，也不把横向大房的 52.7 秒写成通过。

## 下一步建议

1. 若必须坚持“六敌人同时存在 + 无伤”，需要换一个更宽的竞技场，或把六只的初始包围半径拉到不会在第一秒就形成接触面的程度；当前 `s.boss.3700` 的 160px 活动带不适合作为无伤基准。
2. 或者用训练引擎做 PPO/搜索策略，而不继续手调排序权重；当前手调已在 3 次受击附近进入平台。
3. 若接受“六敌人依次加入”，可以做 5 只已验证无伤 + 第 6 只延迟从远端加入的场景，但这不再是六只同时包围，必须单独标注。

## 构建与产物

- `cpp/build.ps1 -Test`：176 项通过，0 失败。
- 本机 Reader、离线 Wasm 已按当前源码重建。
- 所有数字仍是隔离 J460 引擎离线结果，不是桌面游戏实战无伤。

## 产物 SHA-256

- `cpp/src/planner.cpp`: `22A5CCA4C64884F5E35BD492A1DC5C254CC5E41A5EBFD3B1EB4B65AE05C67101`
- `cpp/include/gamebot/planner.hpp`: `A4FA38A1BB13B0FBE559720A964CC9DFA15C11FA7C52FBF0E0E6C94D9156329C`
- `cpp/include/gamebot/model.hpp`: `C79C77F0BE7E46E4BFFEFB6D83FD18A37E11CE92ED923A73338CB1ADF7DD63A3`
- `bin/IsaacGamebot.exe`: `444E716686AEB99CBA134C8E6932E8DE6D10EC9A915AFF8CAB10A3D6546C5C25`
- `research/external-validation/ExternalReader.exe`: `C7615008566F942BE9801172B9FB9464727F3807952D4D4886ECF11B385D95B2`
- `research/offline/planner_policy.wasm`: `BEE3735C8B78C0A4DEF780A41690057AC1AB611E6E1710F13639EEC656AC7F94`
