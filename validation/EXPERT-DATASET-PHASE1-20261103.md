# Phase 1 · 专家策略数据采集（2026-11-03）

本轮目标只有一个：让现有 Gamebot 专家策略在离线 J460 引擎中跑起来，产出可复现、可校验的专家数据集，并给出下一阶段（Behavior Cloning）的明确接口。没有实现 PPO 微调、Residual RL，也没有改动 MPC / SafetyGate / ForwardSimulator 的决策逻辑。

## 1. 审计结论

| 审计项 | 实际状态 | 证据 |
| --- | --- | --- |
| Actor-Critic 是否具备训练能力 | 具备 `forward` / `act` / `evaluateActions` / `updatePPO`（clipped PPO、Adam、梯度裁剪）/ `save` / `fromJSON`；**不具备监督式（BC）损失** | `src/actor_critic.mjs` L257-593；`training-results/ppo-v0.3.2-first-run/checkpoints/latest-training.json` 含 `model.layers` + Adam `optimizer.state` + `trainer` 计数 |
| 训练环境是否支持批量并行模拟 | 支持。`fork()` 共享快照顺序分支；`exportSnapshot()` + `forkParallel()` 把快照导入独立进程并行推进 | `src/environment.mjs`；`evidence/benchmark-results.json`：单实例 632.1 帧/秒（21.1× 实时），双实例合计 900.0 帧/秒 |
| 离线引擎能否提供完整状态与动作结果 | 30 Hz 原生逻辑帧；公开观察含玩家、敌人、投射物、激光、危险格与地形；`step` 返回 reward 分量、terminated/truncated；另有原生伤害回调 oracle | `src/environment.mjs` 的 `publicObservation`/`rewardDelta`；`research/offline/training_observer.mjs`；`research/external-validation/truth.mjs` |
| MPC 能否作为专家独立运行 | 本轮新增：`ExternalReader.exe` 支持 `policy:"mpc"`，走生产 `RealtimeMpcController → MpcCombatPlanner`，独立进程、只读内存、无键盘输出 | `research/external-validation/reader_main.cpp`；本文件第 3 节 |
| 是否已有采集 / 回放 / 模型保存模块 | 模型保存与断点续训已有（`ppo_trainer.mjs`）；**逐帧专家采集、数据集质量门禁、固定种子重放验证原本没有**，本轮补齐 | `scripts/collect_expert_dataset.mjs`、`check_expert_dataset.mjs`、`verify_expert_replay.mjs` |
| 动作空间是否支持移动与射击分离训练 | 支持。移动 9 类、射击 5 类，两个独立 Actor 头，联合 log-prob 为两头之和 | `src/actor_critic.mjs` L7-11、L296-302；`src/ppo_trainer.mjs` |

### 1.1 已确认的缺口

1. `ActorCriticNetwork` 没有 `updateSupervised()`：Phase 2 需要在同一网络、同一 Adam 状态上增加两个头部的交叉熵更新，并可选加 Critic 的回报回归。这是纯增量方法，不改现有 `updatePPO`。
2. 没有数据集加载器与按种子切分逻辑：Phase 2 需要 `manifest.plan` 级别的 train/val/test 划分（按 seed 分组，禁止同 seed 跨集合）。
3. `externalTruth` 每次都会构建完整 planner frame，游戏出现瞬时非有限字段时会直接抛错，曾让一个采集回合在第 240 帧中止。本轮新增只读地址的 `externalAddress`，采集只依赖它。
4. 场景目录只有 12 个已验证 Boss 房 + 皱眉裂口尸房；用户点名的 Eye / Brimstone 尚不在 `ROOM_SCENARIOS` 中（The Bloat 已存在，Matriarch 需要新增条目与初始条件校验）。这是 Phase 3/4 回归测试的前置工作，不是 Phase 1 阻塞项。
5. 观察里没有"未来攻击预测 / 危险区域"：Actor 的输入是原始状态（玩家、敌人、弹幕、地形）。专家的预测（`combat.windows`、`combat.targets`、`aim`、SafetyGate）记录在样本的 `expert` 字段，**不进入 Actor 输入**。Phase 2 先保持输入不变，用 BC 验证原始状态是否足够；若不足再讨论最小增量特征，而不是先改网络。

## 2. 最短实施路径

没有从零实现专家，也没有在 JS 里复刻 MPC：

```
C++ Reader (生产实现, 只读 ReadProcessMemory)
        ↓  Frame (同一 30 Hz 逻辑帧)
RealtimeMpcController → MpcCombatPlanner (生产实现，未改逻辑)
        ↓  Decision {move, fire, stop, valid}
ExternalReader.exe  (research/external-validation)
        ↓  JSON: decision + mpc{stats, combat, shot, progress, safety, sequence}
collect_expert_dataset.mjs
        ↓  env.step({move, fire})  → 同一 WASM 引擎推进 1 帧
(observation_t, expert_action_t, outcome_t, observation_{t+1})
```

关键取舍：

- **环境**：直接复用训练环境 `GamebotTrainingEnvironment`，观察就是 Actor 的输入，避免再做一层格式转换。
- **专家**：只给 `reader_main.cpp` 增加一个 policy 分支，MPC 内部参数只改两处与"时钟"有关的配置（`dt=1/30`、`horizon_frames=48`，等价于文档中的 1.6 s 时域），并把墙钟预算 `time_budget_ms/max_total_ms` 置 0。原因：离线逻辑是 30 Hz（`research/OFFLINE-TRAINING.md` L182/L328），带墙钟预算的专家每次运行截断的节点数不同，无法重放同一份数据集；`cpp/src/benchmark.cpp` 与 `policy_validation.cpp` 的离线评估同样是"无墙钟 deadline + 固定模拟上限"。
- **对齐**：采集循环每帧强制 `expert.clock === observation.frame`，并比较 Reader 解出的玩家坐标与观察坐标，发现错位立即中止该回合而不是写入脏样本。

## 3. 改动清单

| 文件 | 内容 |
| --- | --- |
| `research/external-validation/reader_main.cpp` | 新增 `policy:"mpc"` 分支（`RealtimeMpcController`，30 Hz 时钟，无墙钟预算）；输出 `decision`、`mpc`（去掉候选数组与轨迹）、`closed_loop`、`player_pos/player_vel`；支持每回合 `reset:true` |
| `research/external-validation/build.ps1` | ExternalReader 链接 MPC 全栈源码（forward_sim/combat/safety/lookahead/strategy/closed_loop 等），编译耗时约 31 s |
| `research/external-validation/address.mjs` | 只返回 `{pid, host_base, length}` 的地址桥，不构建 planner frame |
| `gamebot-training-engine-v0.1/src/engine_worker.mjs` | 新增 `externalAddress` 命令（仅 `externalValidation:true` 时可用） |
| `gamebot-training-engine-v0.1/src/environment.mjs` | 新增 `externalValidation` 选项与公开 `request(command, action)`；其余行为不变 |
| `gamebot-training-engine-v0.1/scripts/collect_expert_dataset.mjs` | 采集器：场景 × 种子 × 帧数，逐帧写样本、回合汇总、manifest、链式哈希 |
| `gamebot-training-engine-v0.1/scripts/check_expert_dataset.mjs` | 质量门禁：schema、时间对齐、动作域、记账、连续性、哈希、来源文件哈希 |
| `gamebot-training-engine-v0.1/scripts/verify_expert_replay.mjs` | 固定种子重放：同 scene/seed 重放动作，逐帧比对观察哈希 |
| `gamebot-training-engine-v0.1/scripts/summarize_expert_dataset.mjs` | 逐回合汇总（掉血/输出/DPS/估算命中率/回退率/耗时），本文件表格由它生成 |
| `gamebot-training-engine-v0.1/package.json` | `collect-expert` / `check-dataset` / `verify-replay` 快捷入口 |

没有修改 `cpp/` 的任何决策源码；`bin/IsaacGamebot.exe` 未重建，2026-11-03 记录的 325 passed 测试基线对应的是同一份源码。ExternalReader 是从这些未改动的源码单独编译的验证工装。

## 4. 数据集格式

```
<dataset>/
  manifest.json                 # 参数、专家时钟、文件哈希、逐回合汇总
  index.jsonl                   # 一回合一行
  provenance/                   # 采集时归档：ExternalReader.exe、engine_worker.mjs、
                                # environment.mjs、address.mjs、采集器自身
  quality-report.json           # check_expert_dataset.mjs
  replay-report.json            # verify_expert_replay.mjs
  episodes/<scene>-<seed>-<n>/
    samples.jsonl               # 每帧一条
    episode.json                # 结果、指标、专家统计、链式哈希
    diagnostics.jsonl           # 可选：--diagnostics 时写完整 Reader JSON
```

归档 `provenance/` 的原因：重新编译专家或改一行训练代码都会改变"活文件"的哈希，但已经采到的数据不应因此失效。门禁优先校验数据集内归档副本的哈希，再校验大型运行时文件（`boot.wasm`、游戏 EXE）的路径与哈希。

单条样本：

```json
{
  "v": 1, "episode": "...", "step": 41, "frame": 41, "next_frame": 42,
  "obs": { "schema": "gamebot-room-observation/1", "room": {...}, "player": {...},
           "entities": [...], "grid": [...], "terminal": {...} },
  "obs_sha256": "...", "next_obs_sha256": "...",
  "action": {"move": "right", "fire": "left"},
  "action_index": {"move": 3, "fire": 4},
  "expert": {
    "policy": "mpc", "clock": 41, "valid": true, "stop": false,
    "move": 3, "fire": 4, "target": 357678268, "reason": "...",
    "available": true, "timed_out": false, "used_fallback": false,
    "overridden": false, "reused": true, "emergency": false,
    "value": 12.5, "baseline_value": 8.0,
    "stats": { "nodes": 1107, "depth": 8, "safety_passed": 699, "...": 0 },
    "safety": { "safe": true, "min_clearance": 38.5, "escape_directions": 7, "...": 0 },
    "combat": { "aim": {...}, "windows": [...], "targets": [...], "objective": {...} },
    "shot": { "predicted_hit": true, "miss_distance": 8.4, "estimated_travel_frames": 26 },
    "sequence": { "segments": [...], "value": 12.5, "combat_value": 0.9, "final_score": {...} },
    "progress": { "projectile_hits": 3, "attributed_damage": 10.5, "last_shot": {...} },
    "closed_loop": { "timings": {...}, "prediction": {...}, "feedback": {...} }
  },
  "outcome": { "health_before": 6, "health_after": 6, "health_delta": 0,
               "enemy_hp_before": 246.5, "enemy_hp_after": 246.5, "enemy_damage": 0,
               "reward": -0.001, "reward_components": {...},
               "terminated": false, "truncated": false }
}
```

`episode.json` 额外记录：`metrics`（掉血、受伤次数、输出、命中帧、射击数、DPS、每秒射击、每发伤害）、`expert_stats`（fallback/override/reuse/timeout/tier-b/emergency/SafetyGate stop 计数、MPC 耗时、弹幕命中/未命中、动作直方图）、`integrity`（初始观察哈希、观察链哈希、动作序列哈希、最终观察哈希）、`quality`（success/death/timeout）与 `bc_weight`（1 / 0.25 / 0.6）。

## 5. 实际运行结果

四份数据集（MPC 专家两份、原 Planner 对照两份，同一套采集器、同一引擎，只是 policy / 帧数不同）：

| 数据集 | policy | 回合 | 帧 | 清房 | 掉血合计 | 输出合计 | 弹幕生成 | 估算眼泪命中率* | 存储 |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| `expert-dataset-20261103` | mpc | 12 | 10800 | 0 | 12 | 1768 | 963 | 52.5% | 887 MB |
| `expert-dataset-long-20261103` | mpc | 3 | 4966 | **3** | 1 | 804 | 427 | 53.8% | 336 MB |
| 合计 | mpc | 15 | 15766 | 3 | 13 | 2572 | 1390 | 52.9% | 1223 MB |
| `expert-dataset-quick-control-20261103` | quick | 3 | 2700 | 0 | 0 | 364.5 | - | - | 146 MB |
| `expert-dataset-quick-long-20261103` | quick | 3 | 5783 | 3 | 3 | 841 | - | - | 301 MB |

\* 估算命中率 = 实际敌人 HP 下降 ÷ 3.5（默认角色基础眼泪伤害）÷ 弹幕生成数。它来自真实伤害记账，不是 C++ 弹幕归因；后者在 30 Hz 桥接中失效（见第 7 节）。

主集逐回合（30 秒窗口，专家为 MPC）：

| 场景 | 种子 | 帧 | 结果 | 掉血 | 输出 | DPS | 弹幕 | 命中率* | 回退% | 覆盖% | MPC 均/最 (ms) | wall s |
| --- | --- | ---: | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- | ---: |
| Monstro | 3JY1 6FLR | 900 | timeout | 1 | 157.5 | 5.25 | 75 | 0.600 | 30.0 | 32.1 | 42.9/95.5 | 43.0 |
| Monstro | 7W3L P1Z9 | 900 | timeout | 1 | 119 | 3.97 | 76 | 0.447 | 51.3 | 31.1 | 40.3/106.4 | 40.4 |
| Larry Jr. | 3JY1 6FLR | 900 | timeout | 0 | 118.5 | 3.95 | 82 | 0.413 | 0.0 | 51.0 | 88.7/130.0 | 85.1 |
| Larry Jr. | 7W3L P1Z9 | 900 | timeout | 0 | 121 | 4.03 | 82 | 0.422 | 0.0 | 50.0 | 88.8/133.5 | 85.4 |
| Duke of Flies | 3JY1 6FLR | 900 | timeout | 0 | 151 | 5.03 | 82 | 0.526 | 0.0 | 29.2 | 80.1/111.6 | 77.2 |
| Duke of Flies | 7W3L P1Z9 | 900 | timeout | 1 | 142.5 | 4.75 | 82 | 0.497 | 0.0 | 31.8 | 80.4/131.5 | 77.3 |
| The Bloat | 3JY1 6FLR | 900 | timeout | 1 | 59.5 | 1.98 | 77 | 0.221 | 11.8 | 49.7 | 79.3/130.5 | 76.5 |
| The Bloat | 7W3L P1Z9 | 900 | timeout | 3 | 143.5 | 4.78 | 81 | 0.506 | 15.0 | 52.9 | 70.8/117.1 | 68.6 |
| The Cage | 3JY1 6FLR | 900 | timeout | 2 | 161 | 5.37 | 82 | 0.561 | 18.0 | 29.3 | 50.8/149.9 | 50.2 |
| The Cage | 7W3L P1Z9 | 900 | timeout | 3 | 192.5 | 6.42 | 81 | 0.679 | 6.9 | 35.9 | 54.9/95.6 | 53.8 |
| Gurdy Jr. | 3JY1 6FLR | 900 | timeout | 0 | 201 | 6.70 | 81 | 0.709 | 41.8 | 20.3 | 38.3/74.2 | 38.8 |
| Gurdy Jr. | 7W3L P1Z9 | 900 | timeout | 0 | 201 | 6.70 | 82 | 0.700 | 40.4 | 14.6 | 38.8/70.2 | 39.0 |

长局（同一采集器、同一 policy，允许跑到清房）：

| 场景 | 种子 | 帧 | 结果 | 掉血 | 输出 | DPS | 弹幕 | 命中率* | 回退% | 覆盖% | MPC 均/最 (ms) | wall s |
| --- | --- | ---: | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- | ---: |
| Monstro | 3JY1 6FLR | 1683 | **clear** | 1 | 250 | 4.46 | 132 | 0.541 | 39.5 | 29.9 | 40.3/102.4 | 76.0 |
| Larry Jr. | 3JY1 6FLR | 1580 | **clear** | 0 | 256.5 | 4.87 | 142 | 0.516 | 0.6 | 52.2 | 73.0/135.3 | 124.0 |
| Duke of Flies | 3JY1 6FLR | 1703 | **clear** | 0 | 297.5 | 5.24 | 153 | 0.556 | 0.1 | 30.5 | 83.8/152.4 | 152.9 |

### 5.1 与现有 Planner 的对照（相同场景、相同种子）

30 秒窗口（seed `3JY1 6FLR`）：

| 场景 | 策略 | 帧 | 掉血 | 输出 | DPS |
| --- | --- | ---: | ---: | ---: | ---: |
| Monstro | mpc | 900 | 1 | 157.5 | 5.25 |
| Monstro | quick | 900 | 0 | 140 | 4.67 |
| The Bloat | mpc | 900 | 1 | 59.5 | 1.98 |
| The Bloat | quick | 900 | 0 | 59.5 | 1.98 |
| The Cage | mpc | 900 | 2 | 161 | 5.37 |
| The Cage | quick | 900 | 0 | 165 | 5.50 |

长局（跑到清房）：

| 场景 | 策略 | 帧 | 掉血 | 输出 | 结果 |
| --- | --- | ---: | ---: | ---: | --- |
| Monstro | mpc | 1683 | 1 | 250 | clear |
| Monstro | quick | 1979 | 0 | 250 | clear |
| Larry Jr. | mpc | 1580 | 0 | 256.5 | clear |
| Larry Jr. | quick | 1521 | 0 | 232 | clear |
| Duke of Flies | mpc | 1703 | 0 | 297.5 | clear |
| Duke of Flies | quick | 2283 | 3 | 359 | clear |
| 合计 | mpc | 4966 | 1 | 804 | 3/3 |
| 合计 | quick | 5783 | 3 | 841 | 3/3 |

结论（必须如实记录）：

- 长局里 MPC 总计快 14%（4966 vs 5783 帧）且少受伤（1 vs 3），**在 Duke of Flies 上优势最大（快 25%、少 3 点掉血）**。
- 短局里原 Planner 在三个场景全部 0 掉血，而 MPC 合计掉 4；这说明 MPC 并非全面更强的教师。原因之一是这些场景里 MPC 有 30–51% 的帧触发 Top-K 回退（`UNKNOWN THREAT EMERGENCY`），回退后的行为更接近原 Planner，但代价是多了一点风险暴露。
- 因此数据集同时保留 `policy` 字段和 quick 对照集：Phase 2 的 BC 对象是 MPC，但评估必须同时对照原 Planner，不能只跟自己比。
- 30 秒内没有清房不是"专家失败"：250–450 HP 的 Boss 在 ~5 DPS 下需要 50–90 秒，这与第 7 节证据边界一致。

### 5.2 采集吞吐

- 归档数据集：主集 10800 帧耗时 735 s（14.7 帧/秒），长局 4966 帧耗时 353 s（14.1 帧/秒）。原 Planner 对照快得多：2700 帧 102 s（26.5 帧/秒）、5783 帧 179 s（32.3 帧/秒），因为不做 Beam 搜索。
- 同样的主集内容在当天更早的一次独立采集中只用了 552 s（19.6 帧/秒），长局 198 s（25.1 帧/秒）；专家单帧规划 40–90 ms、最大 152 ms。**墙钟受本机负载影响明显，帧内容不受影响**（见第 6 节跨进程哈希一致），所以吞吐只能作为量级参考，不能当作固定 benchmark。
- 存储：MPC 两份合计 1223 MB，其中 `samples.jsonl` 498 MB（334 + 164），其余主要是训练环境自己的 `trajectory.jsonl`（每步重复写两份观察）。后续并行采集时应同时关掉该重复日志。


## 6. 质量检查与重放验证

质量门禁（`scripts/check_expert_dataset.mjs`）：

| 数据集 | 回合 | 样本 | 错误 | 警告 | 来源文件哈希 | 结果 |
| --- | ---: | ---: | ---: | ---: | --- | --- |
| `expert-dataset-20261103` | 12/12 | 10800 | 0 | 0 | 归档 5/5 + 运行时 2/2 | **通过** |
| `expert-dataset-long-20261103` | 3/3 | 4966 | 0 | 0 | 归档 5/5 + 运行时 2/2 | **通过** |
| `expert-dataset-quick-control-20261103` | 3/3 | 2700 | 0 | 0 | 归档 5/5 + 运行时 2/2 | **通过** |
| `expert-dataset-quick-long-20261103` | 3/3 | 5783 | 0 | 0 | 归档 5/5 + 运行时 2/2 | **通过** |

固定种子重放（`scripts/verify_expert_replay.mjs`）：同一 scene/seed 从零重建，逐帧回放记录动作，比较每帧的观察哈希。

| 数据集 | 回合 | 回放帧数 | 完全一致 | 首个分歧 |
| --- | ---: | ---: | ---: | --- |
| `expert-dataset-20261103` | 12/12 | 10800 | **10800/10800** | 无 |
| `expert-dataset-long-20261103` | 3/3 | 4966 | **4966/4966** | 无 |
| `expert-dataset-quick-control-20261103` | 3/3 | 2700 | **2700/2700** | 无 |
| `expert-dataset-quick-long-20261103` | 3/3 | 5783 | **5783/5783** | 无 |

四个数据集合计 24249 帧、21 个回合，全部逐帧一致。

门禁反向验证：基准是 20 帧的 `expert-dataset-gate-smoke-20261103`（门禁通过）。复制一份后把第 10 帧 `frame` 改成 999，检查器返回非零、报出 4 个错误：`next_frame 11 does not follow frame 999`、`observation frame 10 differs from sample frame 999`、`expert clock 10 differs from sample frame 999 (time alignment)` 以及连带的一致性错误；此时归档副本与运行时来源文件哈希仍全部匹配，证明失败只来自数据损坏。损坏副本保留在 `expert-dataset-corrupt-test-20261103`。

其他检查：

- **跨进程重复采集**：Monstro/3JY1 6FLR 的 900 帧在两个不同时间、不同采集进程、不同专家进程 PID 的独立运行中产生完全相同的 `initial_observation_sha256`、`observation_chain_sha256`、`action_sequence_sha256` 和 `final_observation_sha256`（`0ed409b1…` / `c3f4a838…` / `869f0ce6…` / `027ca1f6…`），逐回合指标也完全一致。这说明 seed + 专家固定配置足以复现数据，而不只是回放已记录动作。
- `npm test`：5/5 通过（动作契约、观察去指针、场景目录），环境改动没有破坏既有接口。
- 逐帧对齐检查在采集时强制执行：`expert.clock === observation.frame` 且 Reader 玩家坐标与观察坐标一致（1e-3 px 容差）；全部 15766 帧无一次失败。
- 生命/伤害记账：门禁校验每步 `health_delta`、敌人 HP 差、观察链连续性、动作链哈希与观察链哈希；四个数据集全部一致。

已知问题（不隐瞒）：

- C++ `CombatProgressTracker` 的弹幕级归因在 30 Hz 桥接中失效：主集记录 `projectile_hits=1`、`projectile_misses=944`，而真实敌人伤害是 1768（约 505 次 3.5 伤害）。原因之一是 `combat_progress.cpp` 用 `delta/60.0` 估计单帧位移（真实离线帧是 1/30 s），扫掠线段只有实际的一半；另外归因依赖上一帧友方弹幕与当前帧 HP 下降的几何匹配。**因此本轮不把 `projectile_hits/misses` 当作命中率**，改用"真实 HP 下降 ÷ 3.5 ÷ 弹幕生成数"的估算值（52.9%）。修复它会改动已验证的战斗模块，留到 Phase 2 单独处理。
- 30 秒主集没有清房，`quality` 全部为 `timeout`（`bc_weight=0.6`）；清房轨迹来自长局（`bc_weight=1`）。两类都保留，训练时按权重采样。

## 7. 证据边界

- 全部数据来自本机 J460 离线 WASM 引擎与合成/受控房间，**不是实机对局**；`clear`/`death`/`DPS` 都是离线逻辑帧统计。
- 专家是现有 MPC（含 Top-K 回退），没有为数据集调参；但它并非"完美教师"：多个 30 秒片段没有清房，生存优先会主动拉开距离。失败轨迹保留并标记 `quality`，不当作正标签。
- MPC 在离线桥中关闭墙钟预算以保证可重放；这会让单帧规划耗时高于实时默认（本机实测 40–90 ms/帧，最大 152 ms）。它不影响决策算法本身，但与 GUI 实时模式的最坏延迟不同。
- 采集器当前串行使用一个引擎进程；并行 fork 能力已验证但尚未接进采集器（见第 8 节）。
- 逐候选轨迹的完整评分没有入库，只记录最终选中序列与分数；需要时用 `--diagnostics` 重采。

## 8. 下一阶段（Phase 2）具体计划

1. **网络改造（最小）**：在 `ActorCriticNetwork` 增加 `updateSupervised(transitions, options)`：
   - 两个头部分别对专家动作做交叉熵（`move` 9 类、`fire` 5 类），共享主干梯度相加；
   - 可选 `valueTarget` 回归（默认关闭），避免 BC 阶段污染 Critic；
   - 复用现有 Adam 状态与梯度裁剪，超参 `lr=1e-3`、`batch=256`、`epochs=3`。
2. **数据加载与切分**：`scripts/load_expert_dataset.mjs` 读 manifest + samples，按 **seed 分组**切分（同一 seed 只出现在一个集合）；默认训练 seed `3JY1 6FLR`，验证 `7W3L P1Z9`，测试用第三个独立种子；同时输出 `bc_weight` 供加权采样。
3. **评估协议**：同 scene/seed 下比较 BC / MPC / 未训练 Actor，指标用现有 `dps`、`damage_taken`、`clear`、`death`、动作一致率（BC 对 MPC 的逐帧一致率）和 K 步一致率；先验证 BC 能复现专家动作，再谈超越。
4. **通过门槛**：验证集动作一致率 ≥ 0.75（move）且 ≥ 0.70（fire），测试集清房率不低于 MPC 的 80%，平均受伤不高于 MPC；未达标不进入 PPO。
5. **随后才是 Phase 3**：从 BC 权重继续 PPO（不重新初始化），奖励直接使用本数据集已记录的真实 `enemy_damage` / `health_delta` / `clear` / `death` 分量，并补上"长时间无输出"与"无效移动"项；保存优化器状态与训练日志，按固定 held-out 种子比较。
6. **并行化**：采集器按 `--workers` 拆成多进程（每个进程独立 env + reader，已有 `forkParallel`/快照接口），把 12 回合的墙钟时间从 ~1 分钟/回合压到接近线性并行。
