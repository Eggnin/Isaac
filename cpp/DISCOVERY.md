# Failure-Driven Mechanism Discovery (v0.7)

日期：2026-11-02。利用 v0.6.1 的 `PredictionErrorMonitor`、完整运行日志、
`WorldStateSnapshot`、MPC 预测序列和现有反编译机制库，自动生成可审查的机制
候选。自动流程只生成 `candidate` / `inferred`，不会自动把统计结果提升为
`verified`。

## 1. Failure Analyzer

读取：

- `prediction-failures/*.json`
- 完整 `frames-*.jsonl`
- `mpc.prediction` / `mpc.feedback`
- `damage_event`

识别并关联：

| 类型 | 证据 |
| --- | --- |
| `enemy_movement` | 敌人位置/速度预测误差 |
| `state_transition` | State 或 Boss 阶段不一致 |
| `projectile_trajectory` | 弹幕数量、位置、速度、age 误差 |
| `attack_timing` | 危险区激活时间误差 |
| `collision_radius` | 危险区几何/半径或敌人 HP 误差 |
| `spawn_despawn` | 敌人数量变化遗漏 |
| `damage_prediction` | 玩家 HP 下降与预测原因 |
| `death_event` | 死亡记录 |
| `unknown_attack` | 实际 danger 格超出所有预测危险区 |
| `unknown_entity` | 未匹配实体或未识别攻击来源 |

同一 `identity + kind + field` 的连续误差会合并为一条 finding，记录首次/最后
帧、出现次数、均值/最大值、置信度和日志文件。

## 2. Behavior Discovery

从连续 `Frame` 日志提取：

- State / StateFrame / Animation 变化
- 状态持续时间
- 敌人速度与追击比例
- 由某个实体生成的弹幕
- 弹幕数量、速度、方向
- 弹幕是否瞄准玩家 / 是否径向 / 是否扇形
- 攻击间隔、前摇估计
- 攻击前后状态

输出 `BehaviorProfile` 与 `BehaviorPattern`。它描述“观察到什么”，不直接
声称“原版公式是什么”。

## 3. Mechanism Clustering

将不同身份的行为模式按以下维度聚类：

- `AttackPrimitive`
- `AttackTargeting`
- 速度容差
- 前摇容差

生成共享的 `MechanismCluster`：

- members（多个敌人身份）
- 共享速度/前摇/攻击间隔
- 每个成员的参数差异
- 样本数和置信度

这样相同攻击可以复用同一个 `aimed_projectile`、`radial_projectile`、
`spread_projectile` 等原语，而不是为每个敌人复制一套逻辑。

## 4. Formula Recovery

`MechanismReferenceLoader` 读取现有反编译/验证资料：

- `gamebot_runtime_semantics.json`（统一 AI 分发器、State 与攻击调用候选）
- `gamebot_phase4_timing.json`
- `gamebot_monster_geometry_patterns.json`

恢复内容：

- 攻击前摇（从状态进入到弹幕生成的帧数）
- 攻击间隔
- 弹幕速度
- 数量
- 目标选择（瞄准/径向/扇形）
- 状态/动画关联

每个公式保存：

- `parameters`：观测参数与范围
- `observation`：样本数、瞄准比例、径向比例、追击比例
- `source_refs`：静态反编译/验证来源
- `evidence_status`：`candidate` / `inferred`
- `can_promote_verified`：是否具备晋升所需的静态证据与样本量

只有同时具备静态证据、足够样本和回放验证时才允许人工晋升为 `verified`。

## 5. Mechanism Library Updater

库格式：

```text
data/mechanisms/discovered/
  current.json
  library-v1.json
  library-v2.json
```

每个 `MechanismCandidate` 包含：

- identity
- attack primitive / targeting
- state / animation
- trigger / geometry / timing / parameters
- confidence
- evidence / source_refs
- `runtime_loadable`

状态：

```text
unknown → candidate → inferred → verified
```

自动更新：

- 默认只写入 `candidate` / `inferred`
- `verified` 不会被自动生成或自动覆盖
- 已存在的 `verified` 候选不会被低置信度新结果替换
- 每次更新递增版本并保存 `current.json`
- `history` 记录原因和 diff
- 支持 `--mechanism-rollback` 回滚到指定版本
- 支持 `--mechanism-compare` 比较两个库

## 6. ForwardSimulator 集成

`MechanismModelCompiler` 将候选编译为
`isaac-gamebot-monster-geometry-patterns-v1` 规则：

```json
{
  "target_identity": "10.0.0",
  "kind": "projectile",
  "source_state": 4,
  "source_animation": "Shoot",
  "trigger_animation_frame": 12,
  "pattern": "stream",
  "direction": "aimed",
  "count": 1,
  "speed": 200,
  "evidence_status": "inferred"
}
```

`MechanismSemantics::load_discovered_patterns(path, include_inferred)` 可把
这些规则合并到运行时几何模型。默认只加载 `verified`；传入
`include_inferred=true` 才加载 `inferred`。候选不会替换已有的可靠模型。

GUI / CLI 可通过环境变量启用：

```text
GAMEBOT_DISCOVERED_PATTERNS=<path-to-runtime-pattern-json>
```

## 7. 自动改进闭环

```text
实机 / 回放日志
→ Failure Analyzer
→ Behavior Discovery
→ Mechanism Clustering
→ Formula Recovery
→ Mechanism Candidate
→ Mechanism Library
→ 回放 / ForwardSimulator 验证
→ 人工或证据审核晋升
→ 下一次预测更准确
```

自动流程不会把“统计相关”当作“原版公式”。未完成验证的模型继续以
`candidate` / `inferred` 保存，并保留未知威胁回退。

## 8. CLI

```text
IsaacGamebot.exe --discover <log-or-dir> <output.json> [library_dir]
IsaacGamebot.exe --mechanism-rollback <library_dir> <version>
IsaacGamebot.exe --mechanism-compare <a.json> <b.json>
```

`--discover` 读取文件或目录，生成完整报告并更新发现库。默认参考目录为
`data/mechanisms`，默认库目录为 `data/mechanisms/discovered`。

## 9. 本轮验证

`powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test`：
**220 项通过，0 失败**。新增覆盖：

- Prediction error 按 identity / mechanism / field 关联。
- 连续帧行为发现：状态转换、弹幕生成、瞄准/速度/攻击间隔。
- 跨身份机制聚类。
- 静态时序证据关联与 `can_promote_verified`。
- 候选编译为 ForwardSimulator 几何规则。
- `MechanismSemantics::load_discovered_patterns` 合并候选。
- 发现库版本写入、读取、diff 与回滚。

## 10. 证据边界
- 行为发现只基于 Reader 可见字段和日志，不反编译新代码。
- `verified` 仍必须来自现有反编译/验证证据或独立的原版引擎回放验证。
- 统计样本、聚类和自动公式是候选知识，不是原版行为证明。
- 新候选默认不替换可靠旧机制；运行时只通过显式路径和 opt-in 加载。
- `prediction-failures` 的实际状态仍可能包含 Reader 不可见字段，必须保留
  `unknown` 溯源。
