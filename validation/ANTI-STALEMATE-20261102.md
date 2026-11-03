# Combat Progress & Anti-Stalemate 验证 · 2026.11.02

版本：`2026.11.02-v0.9.1.1`

## 构建与测试

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test
```

结果：`248 passed, 0 failed`。

新增定向测试：

- `real progress tracker distinguishes no hit, unreachable target and HP progress`
  - 真实敌人 HP 不变时记录 `shot_no_hit` / `attack_stalled`
  - 无角度时记录 `no_angle` / `need_reposition`
  - 敌人 HP 从 10 降到 9 后记录 `progressing`，清除 stalled
  - 目标无敌时记录 `invulnerable_target` / `need_target_switch`
- `anti-stalemate guidance creates reposition intent without bypassing safety`
  - 目标存在时保留 `fallback_fire`
  - stalled + unreachable 时 objective 进入 `reposition`
- `stalled branch scoring values progress and safe approach`
  - stalled 分支的 `progress_gain / reachability / approach` 至少一项为正
  - 仍通过现有 `CombatCandidateTerms::total()` 与 SafetyGate 进入 MPC
- `path mobility penalizes a safe-looking dead end`
  - 开阔房间 `reachable_area=1.0`、`mobility_routes=8`
  - 人为封死 3×3 区域只留一条北向出口后，`reachable_area`/`mobility_routes` 下降，`corner_risk` 上升
- `mpc logs real progress and keeps the fallback fire available`
  - `mpc.progress` 写入日志
  - 目标存在时 `fallback_fire_valid=true`

## MPC smoke

使用 `cpp/samples/combat-and-clear.jsonl` 的 20 帧合成回放（只用于接口/日志验证）：

```json
{
  "frames": 20,
  "fallbacks": 0,
  "mean_mpc_search_ms": 6.4,
  "mean_planning_ms": 18.3,
  "timed_out": 20
}
```

首帧 `mpc.progress`：

```json
{
  "kind": "shot_no_hit",
  "shots": 1,
  "hits": 0,
  "stalled": false,
  "enemy_count": 1,
  "need_reposition": false
}
```

首帧 `mpc.safety` 的路径级字段：

```json
{
  "reachable_area": 1.0,
  "mobility_routes": 8,
  "corner_risk": 0.0,
  "dead_end_risk": 0.0,
  "encirclement_risk": 0.116
}
```

## 结论与边界

- 真实 HP 反馈已经接入 Progress tracker 和 MPC 日志；模拟预测不会计入 `hits/kills`。
- 反停滞项只在真实停滞时启用，且只对通过 SafetyGate 的分支提供战斗收益。
- SafetyGate 的碰撞/伤害门槛没有降低；无安全候选时仍使用 Emergency Escape。
- anti-corner 使用房间网格 BFS 和有限的弹幕/敌人前瞻，不是完整寻路，也不声称覆盖所有房间形状。
- 本轮没有实机无伤成绩。合成回放只验证接口、日志和几何指标。
