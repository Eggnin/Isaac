# 五种其他怪物纯躲避快速筛查（2026-11-01）

对 `D:\Isaac` 当前 C++ Planner 做一次快速筛查：每种普通怪物 5 只，纯躲避、不攻击，30 秒；对 30 秒内受伤但未死亡的组合再补到 60 秒。目的是找出“目前还会很快死亡”的类型，不是完整平衡测试。

## 场景

- 原版 `d.841` 普通房，玩家在房间中心。
- 使用训练引擎的受控 `test5` 布局：清空原房间 NPC，再在玩家周围 5 个固定位置生成 5 只同类怪物。位置校验精确类型、变体和数量。
- 初始 6 个半心，无无敌/回血/属性修改；`--no-fire=true`，所以只有移动躲避。
- 默认种子 `3JY1 6FLR`；对出现死亡的组合再用 `SWGF G7WV` 复测。
- 所有数字是隔离 J460 引擎离线结果，不是桌面游戏实战。

复现命令：

```powershell
Set-Location D:/Isaac
node research/external-validation/session-damage-quick.mjs `
  --ids=10.1.0,10.2.0,11.0.0,13.0.0,14.0.0,15.0.0,16.0.0,18.0.0,21.0.0,23.0.0,24.0.0,26.0.0,29.0.0,34.0.0,41.0.0,55.0.0,60.0.0,80.0.0,87.0.0,96.0.0,220.0.0,284.0.0 `
  --layout=test5 --seconds=30 --workers=3 --no-fire=true `
  --output=D:/Isaac/validation/five-monster-dodge-30s-20261101 `
  --worker=D:/Gamebot/gamebot-training-engine-v0.1/src/engine_worker.mjs `
  --run-root=D:/Gamebot/gamebot-training-engine-v0.1/runs/five-dodge
```

## 主要发现

### 30 秒内死亡

| 类型 | 名称 | 首次受伤 | 死亡 | 复测 |
| --- | --- | ---: | ---: | --- |
| `55.0.0` | LEECH / 水蛭 | 4.00s | **9.97s** | `SWGF G7WV`：30s 内 2 次受击、4 半心，未死亡 |
| `284.0.0` | CYCLOPIA / 独眼 | 20.73s | **25.73s** | `SWGF G7WV`：首次 1.93s，**16.73s 死亡** |

- **LEECH** 的接触伤害是每次 **2 个半心**（1 整心）。默认种子下 4.00 / 7.33 / 9.97s 各一次，三次就清空 6 半心。复测种子只掉了 4 半心，但仍不是无伤；它是最危险的快速死亡类型之一。
- **CYCLOPIA** 的首次伤害来自它发射的 `type 9` 血弹（native oracle 显示 `source_type=9, spawner_type=284`）；随后在底墙被贴住，接触伤害每 1 秒一次，从 20.7s 连续掉到 25.7s 死亡。复测种子首次 1.93s 就受伤，16.7s 死亡。

两次死亡都发生在 `y=150` 或 `y=409` 的墙边，和六敌人测试里的“贴墙被收口”是同一类失败。

### 30 秒内受伤但未死亡（补测到 60 秒仍存活）

| 类型 | 名称 | 30s 伤害 | 60s 伤害 | 首次受伤 |
| --- | --- | ---: | ---: | ---: |
| `87.0.0` | GURGLE / 呕 | 2 | 2 | 4.97s |
| `14.0.0` | POOTER / 便便蝇 | 3 | 4 | 8.37s |
| `10.2.0` | FLAMING_GAPER / 燃烧裂口尸 | 1 | 5 | 17.63s |
| `10.1.0` | GAPER / 裂口尸 | 1 | 3 | 20.83s |
| `220.0.0` | SQUIRT / 喷射 | 1 | 3 | 24.77s |
| `16.0.0` | MULLIGAN / 木乃伊 | 2 | 2 | 24.90s |

这些组合能活满 60 秒，但不是无伤；早期首次受伤（GURGLE 4.97s、POOTER 8.37s）值得作为下一批修正目标。

### 30 秒无伤

`11.0.0` GUSHER、`13.0.0` FLY、`15.0.0` CLOTTY、`18.0.0` ATTACK_FLY、`21.0.0` MAGGOT、`23.0.0` CHARGER、`24.0.0` GLOBIN、`26.0.0` MAW、`29.0.0` HOPPER、`34.0.0` LEAPER、`41.0.0` KNIGHT、`80.0.0` MOTER。

这只是 30 秒单种子筛查；没有做长时或多布局保证。

### 未能测量

- `60.0.0` EYE：Reader 报 `nonfinite native field 153ea164`，本场景未得到有效帧。
- `96.0.0` ETERNAL_FLY：场景内没有出现对应的精确身份（`Exact target identity not present`），可能是该类型不按 `96.0.0` 生成或被房间逻辑移除。

这两项需要在修复读取/生成问题后单独测，不计入“无伤”结论。

## 初步判断

- 最优先处理：`55.0.0` LEECH（高单次接触伤害 + 快速贴身）和 `284.0.0` CYCLOPIA（远程血弹打中后被贴墙连续接触）。
- 次优先：GURGLE、POOTER 的 5 秒级首次受伤。
- 蜘蛛未加入本批筛查（沿用之前“不要蜘蛛”的要求）；如需把蜘蛛作为单独组，可以另开一批，不混进本表。

## 证据

- 30s 主批：`validation/five-monster-dodge-30s-20261101/report.json`
- 30s 复测：`validation/five-monster-dodge-30s-swgf-20261101/report.json`
- 60s 补测：`validation/five-monster-dodge-60s-hurt-20261101/report.json`
- `test5` 布局代码：`research/external-validation/session-damage-quick.mjs`
