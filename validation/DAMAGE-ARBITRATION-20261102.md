# Damage-Aware Combat Arbitration 验证 · 2026.11.02

版本：`2026.11.02-v0.9.1.1.2`

## 构建与测试

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test
```

结果：`248 passed, 0 failed`。

新增/更新的定向测试：

- `damage-aware tier B keeps the minimum-risk combat set when no safe action exists`
  - 所有候选均受伤时 `tier_b_used=true`
  - `tier_b_candidates>0`，`tier_b_min_damage>=0`
  - `mpc.arbitration` 输出 Tier B 证据
  - Tier B 序列保留非零 `combat_value`
- `real progress tracker distinguishes no hit, unreachable target and HP progress`
  - 目标 despawn 计入 `entity_lost`，不增加 `confirmed_kills`
  - 真实 HP 下降计入 `target_hp_deltas`
  - 目标无敌触发 `need_target_switch`
- `mpc emergency ranking is used when every first action takes damage`
  - 原有 Emergency 行为仍保留
- 既有 SafetyGate / anti-corner / strategy 测试全部通过

## Tier B 日志样例

来自定向测试的预期结构：

```json
{
  "arbitration": {
    "damage_aware": true,
    "tier_b_used": true,
    "tier_a_candidates": 0,
    "tier_b_candidates": 3,
    "tier_b_min_damage": 1.0,
    "damage_tolerance": 0.25
  },
  "stats": {
    "tier_b_used": true,
    "tier_b_candidates": 3,
    "tier_b_min_damage": 1.0
  }
}
```

## 结论与边界

- Tier A 的零伤害 SafetyGate 没有被降低；存在 Tier A 候选时仍优先 Tier A。
- Tier B 仅在无 Tier A 时启用，先存活、再累计预测伤害，再威胁/逃生/战斗进展/输出。
- 额外预测伤害不会因为更高 combat value 被抵消。
- 实体消失不再自动算作击杀；没有可靠证据时保留 `entity_lost/unconfirmed_kills`。
- 本轮验证使用合成回放和单元测试，没有实机无伤成绩。
