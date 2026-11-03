# Damage-Aware Combat Arbitration · v0.9.1.1.2

本版在 v0.9.1.1.1 的 Combat Progress / Anti-Stalemate 之上，修正“只要预测受伤就把战斗收益清零”的决策冲突。MPC、ForwardSimulator、CombatIntelligence、SafetyGate 和 PredictionErrorMonitor 的主体不变。

## 1. 两层候选

### Tier A

保留现有零伤害 SafetyGate：

- `gate_passed = no_damage && safety.safe && elapsed >= collision_horizon`
- 只要任一候选通过 Tier A：
  - 其余未通过候选不能因为战斗收益更高而继续留在当前 beam 竞争中；
  - Tier B 不启用。

### Tier B

仅当 Tier A 不存在，且至少经过一个碰撞时域后启用：

1. 排除 `player_dead` 分支；若存在存活替代，不继续比较必死分支。
2. 计算所有存活候选的累计预测伤害 `score.damage_taken`。
3. 取最低预测伤害 `minimum_damage`。
4. 只保留 `damage_taken <= minimum_damage + tier_b_damage_tolerance` 的最低风险集合。
5. 只在集合内比较后续威胁、逃生空间、威胁削减、真实进展和输出。

新增配置：

```cpp
MpcConfig config;
config.damage_aware_arbitration = true; // 默认
config.tier_b_damage_tolerance = 0.25;  // 默认：同一伤害档
```

Tier B 的 `combat_value` 来自已经累计的分支战斗项，但 `damage_taken` 永远在它前面比较。额外伤害不能被输出收益抵消。

## 2. Damage-Aware Emergency 顺序

未通过 Tier A 的候选按以下顺序比较：

1. 是否存活
2. 累计预测伤害
3. 后续累计威胁（剩余敌人 HP）
4. 未来逃生空间（corner / reachable area / routes / escape / maneuverability）
5. 威胁削减（`threat_removal` / `kill_priority`）
6. 实际进展（`progress_gain` / `reachability` / `approach`）
7. 输出与击杀收益（`output_efficiency` / `damage_dealt` / `kill_sequence`）

预测伤害不同超出 tolerance 时，低伤害候选直接胜出，不进入战斗项比较。

## 3. Threat Reduction

复用现有 CombatObjective / `CombatCandidateTerms`：

- `threat_removal`
- `kill_priority`
- `kill_sequence`
- `target_position_gain`
- `expected_kill_gain`

MPC 在 Tier B 内比较“击杀后剩余敌人 HP”和后续威胁，不新增另一套威胁评分。

## 4. Progress Evidence

`CombatProgressState` 现在区分：

- `fire_commands`：本帧提交了射击方向
- `projectile_spawns`：观察到新的己方投射物
- `target_hp_deltas`：真实目标 HP 下降
- `confirmed_kills`：目标 HP 归零/死亡，或 lifecycle `died`
- `entity_lost`：实体消失但没有确认死亡
- `unconfirmed_kills`：实体消失但证据不足
- `phase_transition`：Boss/机制阶段变化

实体消失不再自动算作击杀。没有可靠证据时保留 `unknown / unconfirmed`。

## 5. 未来累计风险

MPC 已经使用分支累计 `SimulationScore.damage_taken`，本版将其提升为 Tier B 的第一排序项，并同时使用：

- 剩余敌人 HP / 后续威胁
- `corner_risk` / `reachable_area` / `mobility_routes`
- 击杀削减和 `kill_sequence`
- 实际 CombatProgress 证据

因此不会因为短期零碰撞而长期停在无法结束战斗的位置。

## 6. 日志

`mpc.arbitration`：

```json
{
  "damage_aware": true,
  "tier_b_used": true,
  "tier_a_candidates": 0,
  "tier_b_candidates": 3,
  "tier_b_min_damage": 1.0,
  "damage_tolerance": 0.25
}
```

`mpc.stats` 同步包含 `tier_a_candidates / tier_b_candidates / tier_b_min_damage`。`MpcSequence.damage_aware` 标记最终选择的 Tier B 序列。

## 7. 保持不变

- 不重写 MPC、ForwardSimulator、CombatIntelligence、SafetyGate。
- 不引入强化学习、CEM。
- 不改变只控制移动和射击的范围。
- 不放宽 Tier A 的原始零伤害安全标准。
- Tier B 仍首先比较存活和伤害，不允许输出收益覆盖额外伤害。
- 合成回放仍不能冒充实机成绩。

## 8. 验证

```text
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test
248 passed, 0 failed
```

新增测试覆盖：

- 所有候选均受伤时 `tier_b_used=true`，使用最低伤害集合
- Tier B 序列保留非零 `combat_value`
- `mpc.arbitration` 与 `mpc.stats` 输出 Tier B 证据
- 实体消失（despawn）计入 `entity_lost`，不计入 `confirmed_kills`
- Tier A 存在时不启用 Tier B
