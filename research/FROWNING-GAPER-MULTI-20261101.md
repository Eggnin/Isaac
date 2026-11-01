# 10.0.0 皱眉裂口尸多敌人迭代（2026-11-01）

> 第二轮的躲避结果和当前产物见 [FROWNING-GAPER-MULTI-ITER2-20261101.md](FROWNING-GAPER-MULTI-ITER2-20261101.md)。六敌人纯躲避的后续尝试见 [FROWNING-GAPER-SIX-DODGE-20261101.md](FROWNING-GAPER-SIX-DODGE-20261101.md)。本文件保留第一轮对照。

本次只测试 `10.0.0 Frowning Gaper`，没有加入蜘蛛。原版地下室 `d.841` 为自然生成的 5 只；`s.boss.3700` 是原版横向大房，在隔离训练进程内布置 6 只，分靠墙和包围两种布局。后者是受控实体组合，不代表自然生成房间。

所有结果均为隔离 J460 训练环境，不是桌面游戏实战。默认角色初始 6 个半心、无无敌、补血或属性修改，逐帧决策，最多 60 秒，死亡或清房提前结束。脚本检查房间、敌人精确身份与数量、出生地形、初始血量；生命变化与原生伤害回调核对。不符合条件或出错的运行不计入通过。对照组的种子、敌人身份、位置、血量一致；新增运行记录包含不含地址的初始状态指纹。

## 自动攻击与躲避

损失单位为半心；清房后的剩余时间不继续计入。结果不是所有种子、布局和敌人的保证。

| 场景 | 种子 | 基线损失 | 当前损失 | 当前清房 | 当前耗时 | 对照记录 |
| --- | --- | ---: | ---: | --- | ---: | --- |
| 原版普通房 5只 | `3JY1 6FLR` | 0 | 0 | 是 | 15.93s | [基线](../validation/chaser-10-baseline-natural-20261101/report.json) / [当前](../validation/chaser-10-release-natural-20261101/report.json) |
| 原版普通房 5只 | `7W3L P1Z9` | 1 | 1 | 是 | 24.20s | [基线](../validation/chaser-10-seed3-combat-baseline-natural-20261101/report.json) / [当前](../validation/chaser-10-seed3-combat-candidate-natural-20261101/report.json) |
| 横向大房 靠墙 6只 | `3JY1 6FLR` | 1 | 1 | 是 | 9.77s | [基线](../validation/chaser-10-baseline-wall-valid-20261101/report.json) / [当前](../validation/chaser-10-release-wall-20261101/report.json) |
| 横向大房 包围 6只 | `3JY1 6FLR` | 1 | 0 | 是 | 17.23s | [基线](../validation/chaser-10-baseline-surround-valid-20261101/report.json) / [当前](../validation/chaser-10-release-surround-20261101/report.json) |
| 横向大房 靠墙 6只 | `SWGF G7WV` | 3 | 0 | 是 | 16.83s | [基线](../validation/chaser-10-heldout-baseline-wall-20261101/report.json) / [当前](../validation/chaser-10-release-heldout-wall-20261101/report.json) |
| 横向大房 包围 6只 | `SWGF G7WV` | 1 | 0 | 是 | 16.87s | [基线](../validation/chaser-10-heldout-baseline-surround-20261101/report.json) / [当前](../validation/chaser-10-release-heldout-surround-20261101/report.json) |

在本组 6 场中，当前策略 4 场零伤清房，另外 2 场仍各受伤一次。普通房的第三个种子与基线一样受伤一次；横向大房的第一个靠墙种子也未消除受击。

## 纯躲避（攻击决策和射击均关闭）

这是持续生存测试，不以时间截断称为清房。表内为首次掉血时间与死亡时间；3 场均失去全部 6 个半心而死亡。

| `d.841` 种子 | 基线首次受伤 → 死亡 | 当前首次受伤 → 死亡 | 对照记录 |
| --- | ---: | ---: | --- |
| `3JY1 6FLR` | 3.07s → 8.07s | 19.90s → 52.13s | [基线](../validation/chaser-10-f6-baseline-natural-seed1-20261101/report.json) / [当前](../validation/chaser-10-release-natural-dodge-20261101/report.json) |
| `SWGF G7WV` | 4.90s → 9.90s | 10.03s → 37.90s | [基线](../validation/chaser-10-f6-baseline-natural-heldout-20261101/report.json) / [当前](../validation/chaser-10-f6-v4-natural-heldout-20261101/report.json) |
| `7W3L P1Z9` | 4.80s → 22.73s | 2.50s → 30.70s | [基线](../validation/chaser-10-seed3-f6-baseline-natural-20261101/report.json) / [当前](../validation/chaser-10-seed3-f6-candidate-natural-20261101/report.json) |

前两个种子的首次受伤延后；第三个种子由 4.80 秒提前至 2.50 秒，尽管死亡时间延后。纯躲避没有达到无伤，应继续处理提前受击和贴墙包围，不能把存活时间延长说成目标完成。

## 实现与复现

- 正式 C++ Planner 在横向大房内有至少两只邻近 `10.0.0` 时，对群体接近和贴墙增加软代价，仍将预测碰撞排在首位。普通房纯躲避使用房间尺度对应的墙边与群体代价，并在贴墙静止时减少朝墙起步；自动攻击的普通房维持原有排序。
- 修正离线观察器遗漏房间形状的问题；Planner 适配器拒绝缺失的形状及形状与网格尺寸不符的状态。训练引擎公开观察也包含房间形状；`reset({scene:'frowningGaperGroup'})` 可直接选择原版五敌人房，保持 Boss 自动轮换不变。
- `D:/Isaac/bin/IsaacGamebot.exe`、外部 Reader 及策略 Wasm 已按当前源码重建；本地 Emscripten SDK 为 6.0.5。Wasm 和正式 Reader 在 `d.841` 的一个纯躲避运行中，6 次扣血帧与死亡帧一致；[对照文件](../validation/gaper-wasm-reader-parity-20261101.json)只比较这些帧，不证明全部字段或其他场景一致。
- 构建验证：C++ 176 项通过；离线观察器 10 项通过；训练引擎 5 项通过；[14 次场景重置](../validation/gaper-engine-auto-reset-final-20261101.json)、[五敌人场景快照／并行分支](../validation/gaper-engine-fork-smoke-20261101.json)及 stdio smoke 通过。PPO 的 16 帧试运行只验证训练接口，不代表完成策略训练。测试不计作实战证据。

```powershell
Set-Location D:/Gamebot/gamebot-training-engine-v0.1
powershell -NoProfile -ExecutionPolicy Bypass -File ./scripts/evaluate_frowning_gaper.ps1 -Layout natural
powershell -NoProfile -ExecutionPolicy Bypass -File ./scripts/evaluate_frowning_gaper.ps1 -Layout encircled -Seed 'SWGF G7WV'
powershell -NoProfile -ExecutionPolicy Bypass -File ./scripts/evaluate_frowning_gaper.ps1 -Layout wall -DodgeOnly
```

每场结果写入新的 `D:/Isaac/validation/gaper-*`；引擎运行记录写入 `D:/Gamebot/gamebot-training-engine-v0.1/runs/frowning-gaper/`。未运行桌面游戏，也未修改游戏安装、存档、选项或 Mod 文件。

## 本次产物 SHA-256

- `cpp/src/planner.cpp`: `51F0F70FD1DDCA2597CD75828E4F70E840C87CFD9541DA5A72D9F8761F8760F1`
- `bin/IsaacGamebot.exe`: `FBAC224B120EB16471CE2649F7A7949F03EBB40E212E231C9E37A48C7CC87CC5`
- `research/external-validation/ExternalReader.exe`: `D1853A1B559775AA7E7560021DC477A055AB62B63C2F3E515FA354C487C5AC78`
- `research/offline/planner_policy.wasm`: `738CB80102BE9581CAC4245472AFD6321A3BEBF19E9FD4145CFC09E38FB48225`
