# Combat Progress & Anti-Stalemate · v0.9.1.1

本版暂停 Universal Boss Intelligence，先解决“长期安全但没有输出、无法接近敌人、躲进死角”的问题。

## 1. 现有系统审计结论

### SafetyGate

- 硬安全门本身没有被削弱；`SafetyGate` 仍先于战斗收益。
- 但 MPC 的 `gate_passed` 要求分支在碰撞时域内零伤害，且 `evaluate_sequence` 在任一伤害/死亡时把 `combat_value` 置零。因此在无法完全无伤的分支上，战斗收益确实会长期为 0。
- 本版没有降低这个门槛。相反，新增的进攻价值只进入**已通过硬安全门**的分支；真正不安全的候选仍由 Emergency Escape 排序。

### combat_value

- `evaluate_sequence()` 中 `result.combat_value = safe ? combat_value : 0`。
- MPC beam 中 `node.combat_value` 在 `gate_passed` 前也为 0，只累计 `combat_pending`。
- 这解释了“连续选择安全动作但没有输出”：前几个 depth 只有生存项参与排序，战斗项要等碰撞时域通过后才出现。
- 本版保留该结构，增加安全接近、可达性和角落风险项，使已安全的分支更早体现“能否打到”和“是否会走进死胡同”。

### 射击被抑制

- `root_candidates()` / `plan()` 原来的 `can_attack` 依赖 Joint 决策的 `fire` 或有效 predictive aim。
- 新增 `CombatContext::fallback_fire`：目标存在且可伤害时，即使没有完美拦截解，也提供朝目标的主方向射击候选。
- 这不会绕过 MPC；射击方向仍作为候选由 MPC 比较。

### 缺少真实 HP 反馈

新增 `CombatProgressTracker`：

- 只使用 Reader 快照中的真实敌人 HP、敌人消失和玩家生命下降。
- 不使用 ForwardSimulator 的预测伤害作为“实际进展”。
- 区分：`no_target`、`not_firing`、`shot_no_hit`、`invulnerable_target`、`no_angle`、`out_of_range`、`blocked`、`target_lost`、`progressing`。
- 记录 `shots / hits / kills / damage_events / frames_since_progress`。

### 缺少安全接近和攻击可达性

新增 branch 字段：

- `target_distance`
- `target_line_clear`
- `attack_reachability`
- `need_reposition`

新增 candidate terms，仅在 `CombatProgressState::stalled` 时启用：

- `progress_gain`：分支是否到达/保持可射击位置
- `reachability`：距离、射线和角度是否可达
- `approach`：是否安全地缩短与目标的距离

这些项只在已通过 SafetyGate 的分支上进入 `combat_value`，不会无条件提高攻击权重。

### 当前安全但未来被封锁

`SafetyMetrics` 新增路径级机动性：

- `reachable_cells / local_walkable_cells / reachable_area`
- `mobility_routes`：独立可达出口数量
- `time_to_open`：到达开阔区域所需时间
- `exit_block_risk`
- `encirclement_risk`
- `dead_end_risk`
- `corner_risk`

`corner_risk` 进入 `SimulationScore`，MPC 通过 `MpcConfig::corner_weight` 扣分；Emergency 排序也会优先较低 corner risk 的方向。`escape_directions >= 1` 不再被当成机动性良好的充分条件。

## 2. Anti-Stalemate 行为

当真实进度停滞时：

1. 目标无效/无敌：释放 TargetSelector 的最小保持计时，允许重新选目标。
2. 目标存在但超出射程、被阻挡或无角度：标记 `need_reposition`，优先寻找安全射击位置。
3. 目标可达：保留输出目标，并只增加小的输出优先级。
4. 安全分支可以通过 `progress_gain / reachability / approach` 获得额外分数，但仍受 SafetyGate 和伤害惩罚约束。
5. 长时间不可达后进入 `need_target_switch`，而不是无限围绕同一个无法攻击的目标。

MPC 日志新增：

```json
"mpc": {
  "progress": {
    "stalled": true,
    "kind": "blocked",
    "shots": 24,
    "hits": 0,
    "frames_since_progress": 96,
    "need_reposition": true
  }
}
```

GUI / `--mpc-loop` 的 `closed_loop.progress` 同样记录该状态。

## 3. 保持不变

- 不引入强化学习、CEM 或神经网络。
- 不重写 MPC / ForwardSimulator。
- 不新增炸弹、卡牌、药丸或主动道具控制。
- 不绕过 MPC 直接发送移动按键。
- 不降低 SafetyGate；不为了零伤害而无限期放弃进攻，但也不允许攻击收益覆盖真实危险。
- 合成回放仍标注为离线模拟，不写成实机成绩。

## 4. 验证

新增测试覆盖：

- 真实 HP 无变化时识别 `shot_no_hit`，HP 下降后识别 `progressing`
- 无敌目标触发 `need_target_switch`
- `no_angle` 触发安全重新站位
- 目标存在时保留 fallback fire
- 开阔房间与死胡同的 `reachable_area / mobility_routes / corner_risk` 对比
- MPC 日志包含 `progress`

完整构建与测试命令：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test
```

本轮结果：`248 passed, 0 failed`。
