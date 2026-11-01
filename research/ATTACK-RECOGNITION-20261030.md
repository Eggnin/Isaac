# 攻击身份识别扩展（2026-10-30）

## 范围

本轮只扩展攻击身份识别。没有运行无伤、清房、Boss 或留出种子验收，也没有把静态识别升级为 Planner 威胁。

## 结果

- 严格验证攻击识别扩展到 `178/653`。
- 带静态证据的攻击候选识别扩展到 `620/653`。
- 当前剩余 `33` 个身份没有任何已知攻击调用、攻击动画或有效 ANM2 事件线索，按卡点跳过。

`178/653` 是可用于高置信运行时语义的身份数；`620/653` 是“能从精确身份、State 或反编译 AI 函数确认存在攻击/召唤效果”的候选识别数。两者不能合并成同一个验证等级。

其中 11 个 Boss 新增严格识别来自已有全帧日志；`role=monster` 的 155 个严格识别和 94 个严格预测来自已有日志加两段原版宽房补测（种子 `SWGF G7WV`、`7W3L P1Z9`）。

## 证据层

- `178` 个身份：现有严格 State 动画映射、原版来源链攻击对象或离线预警规则。
- `247` 个身份：反编译 State 节点内直接关联 `FireProjectiles`、`FireBossProjectiles`、实体生成或投射物辅助调用。
- `165` 个身份：State 的静态或运行时动画名具有攻击/射击/冲锋/激光等语义。
- `337` 个身份：ANM2 资源中存在有效攻击事件候选，共接受 `1,394` 个事件；死亡动画、无攻击 cue 事件已排除。
- `593` 个身份：完整反编译 AI 函数内直接调用攻击或实体辅助函数；`212/239` 个 AI 函数含此类调用。

以上集合有重叠，最终并集为 `620`。

其中 `39` 个身份通过原版回调的来源链晋升为严格攻击识别；`12` 个身份具有跨种子稳定的严格时点预测。详见 `STRICT-ATTACK-VALIDATION-20261030.md`。

## 运行时行为

`MechanismSemantics` 按以下顺序识别：

1. 严格 State 攻击动画。
2. 反编译 State 攻击调用。
3. 反编译 State 攻击动画候选。
4. 精确身份 ANM2 攻击事件候选。
5. 精确 AI 函数级攻击调用候选。

`MechanismObservation.attack_type_evidence` 明确记录来源：

- `strict_state_animation_mapping`
- `static_decompiled_attack_call_candidate`
- `static_decompiled_state_animation_candidate`
- `static_anm2_attack_event_candidate`
- `static_decompiled_ai_function_call_candidate`

这些候选只设置 `attack_type`、置信度和证据信息，不创建 `MechanismWarning`，不改变 Planner 威胁。

Delirium `412.0.0` 仍保持攻击映射 Unknown。虽然其 AI 函数存在 `entity_spawn_relay`，但该调用不足以恢复 AttackID 对应的具体攻击，因此不计入攻击识别并集。

## 未解决身份

```text
17.0.0 17.1.0 17.2.0 17.3.0 17.4.0
79.0.0 79.1.0 79.20.0
93.0.0 93.1.0 96.0.0 201.0.0
231.0.0 231.1.0 296.0.0 408.0.0 412.0.0
811.0.0 811.0.1 811.0.2 811.0.3 811.0.4 811.0.5 811.0.6
814.0.0 815.0.0 839.0.0 864.0.0 868.0.0
963.0.0 964.0.0 966.0.0 967.0.0
```

这些身份可能需要继续追踪间接调用、共享 helper、内联分发器或父实体生成链，但不阻塞当前批次。

## 验证

- C++：`119 passed, 0 failed`。
- 新增测试覆盖 State 攻击调用、完整 AI 函数调用和 ANM2 动画事件三条运行时识别路径。
- 候选识别不产生威胁的约束由测试检查。
- `validation/state-semantics-check.json` 通过，包含攻击识别覆盖检查。

## 文件

- 运行时库：`data/mechanisms/gamebot_runtime_semantics.json`
- 攻击识别总表：`validation/attack-recognition-coverage-20261030.json`
- 生成器：`research/mechanisms/build_runtime_semantics.py`
- 运行时语义实现：`cpp/src/semantics.cpp`
- C++ 测试：`cpp/tests/core_tests.cpp`
