# 自动战术策略优化验证 · 2026.11.02

版本：`2026.11.02-v0.9.1`

## 构建与单元测试

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test
```

结果：`242 passed, 0 failed`。新增覆盖：

- 场景分类：投射物密度、多方向、Boss、未知/低 HP 标签由状态派生
- 参数边界：Profile 不改变 MPC 时域/Beam/根候选数，不降低 SafetyGate 限制
- 运行时：稳定帧后才切换，随后平滑混合
- Strategy Memory：保存、比较参数、回滚版本
- Replay Corpus：从 JSONL 提取快照、实体关系、train/holdout 划分
- Optimizer：评估次数有界；无真实采集或降低 emergency sensitivity 时拒绝晋升
- MPC 注入：Profile 出现在 `mpc.strategy`，搜索宽度与时域保持基础配置

## 只读场景分类

真实会话 `sessions/native-20261102-180806-818/frames-0001.jsonl`：

```json
{
  "classified": 311,
  "primary_counts": {"normal_room": 309, "ranged_pressure": 2},
  "profile_counts": {"normal-room": 311}
}
```

真实会话 `sessions/native-20261102-174025-410/frames-0001.jsonl`：

```json
{
  "classified": 494,
  "primary_counts": {
    "melee_pressure": 179,
    "normal_room": 292,
    "ranged_pressure": 23
  },
  "profile_counts": {
    "melee-pressure": 165,
    "normal-room": 292,
    "ranged-pressure": 37
  }
}
```

同一会话 `frames-0010.jsonl` 中出现 `multi_direction_pressure`，说明标签会随实时状态变化，而不是固定敌人表。

## Replay Corpus

同一会话 `frames-0001.jsonl`：

```json
{
  "records": 10,
  "train": 8,
  "holdout": 2,
  "real_captures": 10,
  "by_scenario": {"normal_room": 10}
}
```

语料只包含采集快照；分类、机制置信度、未知风险和预测误差随记录保存。

## 优化器

在上述 10 条语料上运行 `--strategy-optimize`：

```json
{
  "scenario": "normal_room",
  "evaluations": 145,
  "promoted": false,
  "reason": "no candidate passed the holdout and evidence gate"
}
```

其余场景因训练样本不足未晋升。该结果符合门禁设计：小样本/无 holdout 改善时不会把模拟分数写成策略收益。

## MPC 注入 Smoke

使用 `cpp/samples/combat-and-clear.jsonl` 和 `GAMEBOT_STRATEGY=1`：

```json
{
  "frames": 20,
  "fallbacks": 0,
  "strategy_enabled": true,
  "profile": "ranged-pressure",
  "primary": "ranged_pressure",
  "beam_width": 6,
  "horizon_frames": 96
}
```

基础配置 `beam_width=8`、`horizon_frames=96`；Profile 没有扩大搜索规模。

## 证据边界

- 以上分类来自真实采集帧；优化评估来自 `ForwardSimulator` 离线回放。
- 没有任何结果被描述为实机无伤成绩。
- 晋升门禁要求真实采集占多数、holdout、机制置信度和预测误差阈值；仅模拟器分数不能晋升。
- `emergency_sensitivity` 只能提高 SafetyGate 严格度，不能降低。
