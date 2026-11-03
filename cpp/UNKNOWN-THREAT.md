# Unknown Threat Manager

日期：2026-11-02。统一管理未知敌人、未知攻击和不确定危险区域。目标不是“识别更多
敌人”，而是在识别失败时仍使用通用物理、空间关系和保守风险预测参与 Top-K 决策。

## 原则映射

1. **未知机制绝不被忽略**：每个敌对实体都会进入 `UnknownThreatManager`；无法识别
   原语时仍生成通用物理跟踪威胁。
2. **未知不代表无威胁**：未知实体的接触/运动轨迹始终参与评分。
3. **不能确认精确轨迹时生成保守包络**：使用 `uncertain_area` / `uncertain_corridor`，
   或实体自身的通用 motion path。
4. **置信度越低，范围越宽**：半径、持续时间和不确定性按 `1 - confidence` 放大；
   风险权重不会因为低置信度而下降。
5. **已出现的未知实体使用通用物理跟踪**：按 Reader 位置/速度/摩擦/速度倍率推演
   `motion_path`，不依赖 Type/Variant 识别。
6. **未知攻击参与 Top-K 路径评分**：未知攻击意图直接追加到活动意图列表，虚拟威胁
   进入候选预览和 `9 Move × 5 Fire` rollout。
7. **高风险未知攻击触发紧急规避**：`UnknownAssessment.emergency` 触发 `Attack` 权重
   缩放和 `UNKNOWN THREAT EMERGENCY` 决策原因。
8. **不能为输出伤害忽略高风险未知威胁**：未知威胁带 `risk_weight`，损伤/暴露评分
   按风险权重放大；紧急状态下攻击收益进一步缩放到 0.25。
9. **自动记录完整状态变化**：每个未知/未确认实体保留有界历史（位置、速度、State、
   StateFrame、Animation、AnimationFrame、AI、冷却、延迟、HP、精确性、分类修订）。
10. **新证据自动更新分类和预测模型**：`unknown → tracked → uncertain_attack →
    identified`；进入精确机制几何后，未知攻击包络自动退役。

## 模块

- `cpp/include/gamebot/unknown_threat.hpp`
- `cpp/src/unknown_threat.cpp`

`UnknownThreatManager::assess(frame, mechanisms)` 输出 `UnknownAssessment`：

- `entities`：未知/未确认实体记录、历史、假设和分类修订
- `attack_intents`：保守攻击意图（`uncertain_area` / `uncertain_corridor` / `summon`）
- `tracking_threats`：通用物理跟踪威胁
- `unknown_entities` / `tracked_entities` / `uncertain_attacks` /
  `identified_entities`
- `emergency` / `emergency_risk` / `emergency_reason`

## 分类

- `unknown`：没有 identity/state 证据
- `tracked`：有已知身体身份，但没有精确攻击模型；只记录，不重复生成身体接触威胁
- `uncertain_attack`：有攻击 cue，但没有精确几何/时序
- `identified`：机制 warning 或 geometry 标记 `planning_validated` /
  `pre_spawn_verified`

分类变化写入 `revisions`，例如：

```text
1200: uncertain_attack -> identified (precise mechanism geometry)
```

## 保守包络

| 条件 | 生成 |
| --- | --- |
| 任意未确认实体 | `unknown-tracking`，通用 motion path，半径随置信度变宽 |
| 近身攻击/爆炸/召唤 cue | `uncertain_area`，disc，半径 `base + (1-conf)*96` 量级 |
| 高速或冲撞/激光/近身攻击 cue | `uncertain_corridor`，capsule 或玩家条件化走廊 |
| 召唤 cue | `summon` 软区域，不假设召唤物身份 |

低置信度不会缩小危险；例如未知实体的跟踪半径约为
`max(8, radius) + 10 + (1-confidence)*20`，攻击包络的额外半径可达约 96。

## Top-K 集成

- 未知跟踪威胁加入 `base_threats`，与真实威胁一起进入候选预览和 rollout。
- 未知攻击意图追加到 `active_intents`，不经过 candidate/inferred 过滤。
- `VirtualThreatGenerator` 对 `unknown=true` 的预测绕过最低置信度和证据过滤，
  确保未知攻击永远不会因为“证据不足”被丢弃。
- `Threat` 新增 `unknown_threat`、`risk_weight`、`forecast_id`。
- rollout 的损伤和暴露按 `risk_weight` 加权。
- 紧急状态把 `attack_weight` 缩放到 `unknown_emergency_attack_scale`（默认 0.25），
  并在 `Decision.reason` 追加 `UNKNOWN THREAT EMERGENCY`。

## 验证

`powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test`：

- **193 项通过，0 失败**。
- 新增用例：
  - 未知实体始终产生通用物理跟踪威胁；
  - 低置信度包络严格宽于高置信度包络；
  - 未知攻击 cue 生成保守走廊/区域并触发 emergency；
  - 高速未知实体生成 corridor；
  - 精确几何出现后分类自动修订为 `identified`，未知攻击包络退役；
  - 未知攻击进入 Top-K 评分并产生紧急原因。

确定性合成闭环（10 场景，种子 1/2）：

| 场景 | baseline 掉血/死亡/伤害/ms | Top-K 掉血/死亡/伤害/ms | 未知实体/未知攻击/紧急帧 |
| --- | --- | --- | --- |
| gaper-duo-1 | 0 / 0 / 80 / 11.70 | 0 / 0 / 80 / 12.54 | 0 / 0 / 0 |
| gaper-duo-2 | 0 / 0 / 80 / 10.94 | 0 / 0 / 80 / 11.72 | 0 / 0 / 0 |
| gaper-crossfire-1 | 0 / 0 / 40 / 13.03 | 0 / 0 / 40 / 13.85 | 0 / 0 / 0 |
| gaper-crossfire-2 | 1 / 0 / 40 / 12.49 | 1 / 0 / 40 / 13.26 | 0 / 0 / 0 |
| gaper-swarm-1 | 0 / 0 / 89 / 18.65 | 0 / 0 / 93 / 20.07 | 0 / 0 / 0 |
| gaper-swarm-2 | 1 / 0 / 67 / 18.59 | 1 / 0 / 65 / 19.86 | 0 / 0 / 0 |
| gaper-intent-1 | 2 / 0 / 40 / 10.10 | 2 / 0 / 40 / 10.49 | 0 / 0 / 0 |
| gaper-intent-2 | 2 / 0 / 40 / 10.05 | 2 / 0 / 40 / 10.61 | 0 / 0 / 0 |
| unknown-blast-1 | 0 / 0 / 40 / 9.97 | 0 / 0 / 40 / 10.61 | 150 / 10 / 1 |
| unknown-blast-2 | 1 / 0 / 40 / 9.83 | 1 / 0 / 40 / 10.45 | 139 / 10 / 10 |
| **合计** | **7 / 0 / 556 / 约 68.0 s** | **7 / 0 / 558 / 约 72.4 s** | **289 / 20 / 11** |

结论：

- 未知实体计数 289（实体×帧）、未知攻击意图实例 20 个、紧急帧 11 个、通用跟踪
  威胁 309 个，证明未知攻击确实进入 Top-K。
- 总掉血 7→7、死亡 0→0；本轮合成场景仍然没有降低掉血，不能声称战斗收益。
- 伤害 556→558；规划耗时约 1.06 倍 baseline。
- `unknown-blast` 是构造的未知爆炸场景，不是实机机制验证；报告不能当作真实无伤成绩。
- 真实收益仍需在原版游戏中使用相同种子/场景和实际未知敌人复测。

本次报告：`validation/unknown-threat-20261102/comparison.json`（本机生成，默认不
纳入版本控制）。
