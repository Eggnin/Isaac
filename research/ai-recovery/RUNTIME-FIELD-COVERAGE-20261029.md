# Isaac Gamebot 全敌人运行时字段外部读取覆盖审计

生成日期：2026-10-29

## 结论

当前 Reader 已覆盖公共 NPC 的 State、StateFrame、AI 四元浮点槽、AI I1/I2、生命值、速度倍率、Invincible、ShieldStrength、护盾历史容量、父子/目标指针、投射物计时器、Boss 公共标志及 Delirium 原始字段。
但这不等于 653 个身份的战斗语义已经恢复。旧真实外部内存日志只验证了基础字段；新增 AI/Delirium 字段的正式游戏进程行为验证尚未补齐。训练引擎的真实跨进程值对照若已提供，则在文末和 training_external_* 列单独统计；原有内部 API 探针仍只列为离线证据。
Delirium 专用槽只在 Type 412 下读取并标记为有效；其他 NPC 即使地址范围内有数据也不会被解释成 Delirium。

## 覆盖率

| 指标 | 覆盖 | 定义 |
|---|---:|---|
| 字段覆盖率（已读取/全部已恢复字段槽） | 52/178 (29.2%) | 已实现 Reader 的已恢复字段槽 / 全部已恢复字段槽；派生输出不计入。 |
| 身份精确 AI 处理体路由覆盖率 | 645/653 (98.8%) | Type/Variant/Subtype 有 delegate 或 inline AI 处理体的身份比例。 |
| 身份进入通用 NPC Reader 路径率 | 653/653 (100.0%) | Type 进入通用 NPC Reader 路径的身份比例；只表示读取能力。 |
| 身份真实外部内存观测率 | 51/653 (7.8%) | 历史真实外部内存 JSONL 中实际出现过的敌人身份比例。 |
| 身份真实 State 变化观测率 | 45/653 (6.9%) | 历史真实外部内存 JSONL 中实际观察到 State 变化的身份比例。 |
| 身份级机制识别率 | 7/653 (1.1%) | 已有身份+State+攻击/动画机制验证的身份比例。 |
| 已读取字段实机行为验证率 | 6/52 (11.5%) | 已实现字段中，真实外部值与已知变化或行为关联成功的比例。 |
| 已读取字段完整语义映射率 | 32/52 (61.5%) | 已实现字段中，字段级语义完整的比例；不等于每个身份的参数语义都完整。 |
| 已读取字段 Planner 消费率 | 24/52 (46.2%) | 已实现字段中被当前 Planner 或其威胁/预警路径实际消费的比例。 |

静态恢复：239/239 个 AI 函数有伪 C；242 个分发 case；645/653 个身份有精确 AI 处理体路由。
无有效处理体的身份：`408.0.0`, `803.0.0`, `839.0.0`, `842.0.0`, `843.0.0`, `843.1.0`, `858.0.0`, `963.0.0`。
字段矩阵：52 个具名公共字段、12 个派生字段、126 个直接 AI 偏移尚未建模（其中 14 个有 REPENTOGON 布局名但无 Reader/语义；35 个位于 `0xB40..0xC7C` NPC AI 槽区）。
真实外部日志：56 个文件、77531 个有效帧、51 个敌人身份。
另有 17 个实机身份键不在当前 653 路由表中：`17.0.2`, `17.0.5`, `17.0.6`, `17.0.8`, `33.0.1`, `33.0.2`, `33.1.1`, `33.1.2`, `33.2.1`, `33.2.2`, `62.3.1`, `62.3.2`, `62.3.3`, `62.3.4`, `62.3.5`, `62.3.6`, `884.0.4`。这些身份可以进入通用 Reader，但不能声称已有精确 AI 函数覆盖。

## 关键字段

| 字段 | 偏移 | 类型 | 实机行为验证 | 语义 | Planner | 最高状态 |
|---|---:|---|---|---|---|---|
| `type` | `0x28` | `int32` | 否 | 是 | 是 | 2 已实现外部读取 |
| `variant` | `0x2c` | `int32` | 否 | 是 | 是 | 2 已实现外部读取 |
| `subtype` | `0x30` | `int32` | 否 | 是 | 是 | 2 已实现外部读取 |
| `health` | `0x380` | `float32` | 是 | 是 | 是 | 5 已进入策略决策 |
| `max_health` | `0x384` | `float32` | 否 | 是 | 否 | 2 已实现外部读取 |
| `speed_multiplier` | `0x39c` | `float32` | 否 | 是 | 否 | 2 已实现外部读取 |
| `invincible` | `0x3b0` | `bool` | 是 | 否 | 是 | 3 已通过真实运行时读取验证 |
| `parent` | `0x3bc` | `EntityPtr` | 否 | 是 | 是 | 2 已实现外部读取 |
| `child` | `0x3c0` | `EntityPtr` | 否 | 否 | 否 | 2 已实现外部读取 |
| `target` | `0x3c4` | `EntityPtr` | 否 | 否 | 否 | 2 已实现外部读取 |
| `spawner` | `0x3c8` | `EntityPtr` | 否 | 是 | 是 | 2 已实现外部读取 |
| `owner` | `0x410` | `EntityPtr` | 否 | 是 | 是 | 2 已实现外部读取 |
| `state_frame` | `0x410` | `int32` | 是 | 是 | 是 | 5 已进入策略决策 |
| `projectile_cooldown` | `0xba0` | `int32` | 否 | 是 | 否 | 2 已实现外部读取 |
| `projectile_delay` | `0xba4` | `int32` | 否 | 是 | 否 | 2 已实现外部读取 |
| `ai_v1_x` | `0xbb0` | `float32` | 否 | 否 | 否 | 2 已实现外部读取 |
| `ai_v1_y` | `0xbb4` | `float32` | 否 | 否 | 否 | 2 已实现外部读取 |
| `ai_v2_x` | `0xbb8` | `float32` | 否 | 否 | 否 | 2 已实现外部读取 |
| `ai_v2_y` | `0xbbc` | `float32` | 否 | 否 | 否 | 2 已实现外部读取 |
| `ai_i1` | `0xbc0` | `int32` | 否 | 否 | 否 | 2 已实现外部读取 |
| `ai_i2` | `0xbc4` | `int32` | 否 | 否 | 否 | 2 已实现外部读取 |
| `state` | `0xb64` | `int32` | 是 | 是 | 是 | 5 已进入策略决策 |
| `delirium_boss_type` | `0xbc8` | `uint32` | 否 | 否 | 否 | 2 已实现外部读取 |
| `delirium_boss_variant` | `0xbcc` | `uint32` | 否 | 否 | 否 | 2 已实现外部读取 |
| `delirium_transformation_timer` | `0xbd0` | `uint16` | 否 | 否 | 否 | 2 已实现外部读取 |
| `delirium_remaining_attacks` | `0xbd2` | `uint8` | 否 | 否 | 否 | 2 已实现外部读取 |
| `delirium_state` | `0xbd3` | `uint8` | 否 | 否 | 否 | 2 已实现外部读取 |
| `delirium_attack_id` | `0xbd8` | `uint32` | 否 | 否 | 否 | 2 已实现外部读取 |
| `delirium_attack_angle` | `0xbdc` | `uint8` | 否 | 否 | 否 | 2 已实现外部读取 |
| `delirium_cycle_id` | `0xbe0` | `uint64 packed` | 否 | 否 | 否 | 2 已实现外部读取 |
| `is_boss` | `0xc3d` | `bool` | 否 | 是 | 否 | 2 已实现外部读取 |
| `shield_strength` | `0xc40` | `float32` | 否 | 否 | 否 | 2 已实现外部读取 |
| `shield_history_capacity` | `0xc44` | `int32` | 否 | 是 | 否 | 2 已实现外部读取 |
| `champion` | `0xc64` | `int32` | 否 | 是 | 是 | 2 已实现外部读取 |
| `boss_color` | `0xc78` | `int32` | 否 | 否 | 否 | 2 已实现外部读取 |

## 重点案例

### Matriarch `413.0.0`：RageBegin / RageLoop / RageEnd

证据状态：已从反编译代码恢复；已从控制流和交叉引用确认；已通过离线运行验证

`ghidra-export/AI_004c59d0_004c59d0.c:275` - RageBegin
```c
// ...
    else {
      FUN_0040a380("RageBegin",0);
      param_1[0x2d9] = (int *)0xd;
      param_1[0x104] = (int *)0x0;
      param_1[0x2f0] = (int *)0x190;
    }
```

`ghidra-export/AI_004c59d0_004c59d0.c:739` - RageLoop and RageEnd
```c
  case (int *)0xd:
    piVar20 = param_1[0x104];
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa2d0);
    if (piVar20 == (int *)0x0) {
      cVar5 = FUN_0040b030("Shoot");
      if (cVar5 != '\0') {
        FUN_006d6ba0(0x74,0x3f800000,2,0,0x3f800000);
        param_1[0x104] = (int *)0x1;
        pfVar13 = (float *)FUN_006bec40(&local_10c,0);
        *(bool *)(param_1 + 0x52) =
             (float)param_1[0xcf] <= *pfVar13 && *pfVar13 != (float)param_1[0xcf];
        if (param_1[0xf0] != (int *)0x0) {
          FUN_006a92a0(0);
          *(undefined *)(param_1[0xf0] + 0x5d) = 1;
          piVar20 = param_1[0xf0];
          piVar20[0x5b] = piVar20[0x5b] | 0x2000;
          piVar20[0x5a] = piVar20[0x5a];
// ...
```

关键汇编：`ghidra-export/AI_004c59d0_004c59d0.asm` 0x004c61b8..0x004c6228, `ghidra-export/AI_004c59d0_004c59d0.asm` 0x004c72d5..0x004c781e

实机缺口：No new external-memory session validated all fields listed for this case.

### Vis Fatty `886.0.0`：State 16

证据状态：已从反编译代码恢复；已从控制流和交叉引用确认

`ghidra-export/AI_004ea3d0_004ea3d0.c:140` - State 16 entry
```c
// ...
      else {
        if ((*(int *)(param_1 + 0xb64) == 4) && (*(int *)(param_1 + 0x3c0) == 0)) {
          *(undefined4 *)(param_1 + 0xb64) = 0x10;
          *(undefined4 *)(param_1 + 0xba4) = 0;
          FUN_006d6ba0(0x138,0x3f4ccccd,2,0,0x3f800000);
          FUN_0040a380("RageStart",0);
          iVar9 = FUN_006be840();
          fVar16 = DAT_00baa36c;
          if (0.0 < *(float *)(iVar9 + 0x33c) - *(float *)(param_1 + 0x33c)) {
            fVar16 = DAT_00baad3c;
          }
          fVar13 = DAT_00baa36c;
          if (0.0 < *(float *)(iVar9 + 0x340) - *(float *)(param_1 + 0x340)) {
            fVar13 = DAT_00baad3c;
          }
          *(float *)(param_1 + 0x334) = fVar16;
          *(float *)(param_1 + 0x338) = fVar13;
          FUN_00499d60();
// ...
```

`ghidra-export/AI_004ea3d0_004ea3d0.c:324` - State 16 attack entity
```c
        case 0x10:
          cVar2 = FUN_0040a550(&DAT_00b1a4ec);
          if (cVar2 != '\0') {
            FUN_0040a380("RageDown",0);
          }
          cVar2 = FUN_004073b0();
          if (cVar2 == '\0') {
            *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
          }
          else {
            *(undefined4 *)(param_1 + 0x184) = 3;
            fVar16 = *(float *)(*(int *)(param_1 + 0x330) + 0x44) * DAT_00baa7a4;
            *(undefined4 *)(param_1 + 0x36c) = 0x3f733333;
            *(float *)(param_1 + 0x37c) = fVar16;
            local_a0 = *(float *)(param_1 + 0x334) * DAT_00baa2e4;
            local_9c = *(float *)(param_1 + 0x338) * DAT_00baa2e4;
            FUN_00431450(&local_a0,0);
// ...
```

关键汇编：`ghidra-export/AI_004ea3d0_004ea3d0.asm` 0x004ea411..0x004ead74, `ghidra-export/AI_004ea3d0_004ea3d0.asm` 0x004eb4e2..0x004eb5a8

实机缺口：No new external-memory session validated all fields listed for this case.

### Ultra Greed `406.0.0`：护盾、伤害过滤、阶段转换

证据状态：已从反编译代码恢复；已从控制流和交叉引用确认；已通过离线运行验证

`ghidra-export/AI_0059edb0_0059edb0.c:447` - Shield state writes
```c
  pfVar16 = param_1[0x2d9];
  if (((pfVar16 == (float *)0x190) || (pfVar16 == (float *)0x64)) || (pfVar16 == (float *)0x1fe)) {
    param_1[0x310] = (float *)((float)local_178 + (float)local_178);
  }
  else {
    if (param_1[0xb] != (float *)0x1) {
      param_1[0x310] = local_178;
    }
    pfVar16 = param_1[0x2f1];
    if ((0 < (int)pfVar16) && (cVar4 = FUN_006ac710(0x1e,param_1[8]), cVar4 != '\0')) {
      param_1[0x2f1] = (float *)((int)pfVar16 + -1);
    }
```

`ghidra-helpers/HELPER_006d7230_ShieldDamageAbsorption_006d7230.c:1` - Shield damage absorption
```c
// ...
  fVar10 = 0.0;
  if (0.0 < *(float *)(local_24 + 0xc40)) {
    pfVar9 = *(float **)(param_1 + 8);
    for (iVar5 = (*(int *)(param_1 + 0xc) - (int)pfVar9) / 0x38; iVar5 != 0; iVar5 = iVar5 + -1) {
      if (((uint)pfVar9[2] & 0x2000) == 0) {
        fVar10 = fVar10 + *pfVar9;
      }
      pfVar9 = pfVar9 + 0xe;
    }
    if (*(uint *)(local_24 + 0xc44) <= *(uint *)(local_24 + 0xc58)) {
      FUN_006da8e0(local_14,*(undefined4 *)(local_24 + 0xc48),0,*(int *)(local_24 + 0xc54),
                   *(undefined4 *)(local_24 + 0xc48),0,*(int *)(local_24 + 0xc54) + 1);
    }
    local_20 = *(int *)(local_24 + 0xc58);
    uVar3 = *(uint *)(local_24 + 0xc54);
    if (((local_20 + uVar3 & 3) == 0) && (*(uint *)(local_24 + 0xc50) <= local_20 + 4 >> 2)) {
      FUN_0044be50(local_20);
      local_20 = *(int *)(local_24 + 0xc58);
// ...
```

关键汇编：`ghidra-export/AI_0059edb0_0059edb0.asm` 0x0059f216..0x0059f259, `ghidra-export/AI_0059edb0_0059edb0.asm` 0x0059f6d0..0x0059f738, `ghidra-helpers/HELPER_Entity_DamageFilter_006ac560.asm` 0x006ac560..0x006ac5c1

实机缺口：No new external-memory session validated all fields listed for this case.

### Big Horn `411.0.0`：State 13

证据状态：已从反编译代码恢复；已从控制流和交叉引用确认；已通过离线运行验证

`ghidra-export/AI_00453140_00453140.c:520` - State 13 entry
```c
    case (float *)0xd:
      param_1[0xd6] = (float *)0x0;
      if (param_1[0x104] == (float *)0x0) {
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          fVar15 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x20) - (float)param_1[0xd0];
          if (fVar15 < (float)param_1[0xdc] || fVar15 == (float)param_1[0xdc]) {
            param_1[0x2d9] = (float *)0x3;
          }
          else {
            uVar13 = FUN_006eef60();
            if (uVar13 % 100 < 0x23) {
              pcVar12 = "Charge2";
            }
            else {
              pcVar12 = "Charge3";
              if (0x27 < uVar13 % 100) {
                pcVar12 = "Charge";
// ...
```

`ghidra-export/AI_00453140_00453140.c:549` - State 13 Shoot event
```c
// ...
        param_1[0x104] = (float *)((int)param_1[0x104] + (int)fVar15);
        cVar2 = FUN_0040b030("Shoot");
        if (cVar2 != '\0') {
          fVar15 = 1.401298e-45;
          local_a0 = 1.401298e-45;
          local_3c = _DAT_00baca80;
          uStack_38 = _UNK_00baca84;
          pfStack_34 = _UNK_00baca88;
          uStack_30 = _UNK_00baca8c;
          local_2c = -15.0;
          local_28 = 7.0;
          if (param_1[0x1f] != (float *)0x0) {
            if (*(char *)(param_1 + 0x23) != '\0') {
              ppfVar6 = (float **)param_1[0x1f];
              if (&DAT_0000000f < ppfVar6[5]) {
                ppfVar6 = (float **)*ppfVar6;
              }
              pcVar12 = "Charge";
// ...
```

关键汇编：`ghidra-export/AI_00453140_00453140.asm` 0x00453eac..0x00453f56, `ghidra-export/AI_00453140_00453140.asm` 0x00453f56..0x00454038

实机缺口：No new external-memory session validated all fields listed for this case.

### Delirium `412.0.0`：AttackID / CycleID / 分发

证据状态：已从反编译代码恢复；已从控制流和交叉引用确认；已通过离线运行验证

`ghidra-export/AI_004a6500_004a6500.c:535` - AttackID and CycleID update
```c
          FUN_004a8b70();
          _local_30 = ZEXT816(0);
          param_1[10] = (int)local_7c;
          param_1[0xb] = (int)local_60;
          local_78 = (int *)param_1[0x2f8];
          local_20 = 0.0;
          local_1c = 0;
          local_9c = (int *)((uint)local_78 >> 7 & 0xff);
          iVar6 = ((uint)local_78 >> 0x19 | (param_1[0x2f9] & 7U) << 7) + 1;
          uVar24 = (uint)local_78 >> 0xf & 0x3ff;
          local_18 = 0;
          local_40 = _DAT_00bac7b0;
          uStack_3c = _UNK_00bac7b4;
          uStack_38 = _UNK_00bac7b8;
          uStack_34 = _UNK_00bac7bc;
          if (local_9c != (int *)0x0) {
            local_40 = _DAT_00bac5c0;
// ...
```

`ghidra-helpers/HELPER_Delirium_AttackIDDispatchA_004a8b70.c:97` - AttackID selector
```c
// ...
     ((*(int *)(param_1 + 0xbc8) == 0x54 && (*(int *)(param_1 + 0xbcc) == 10)))) goto LAB_004a9816;
  uVar10 = *(uint *)(param_1 + 0xbd8);
  local_17c = uVar10 & 0xff;
  local_140 = uVar10 >> 8;
  local_184 = uVar10 >> 0x10 & 0xff;
  local_13c = (uint)*(byte *)(param_1 + 0xbdc);
  uVar11 = local_140 & 0xff;
  local_160 = uVar11;
  if (local_17c == 0xff) {
    local_17c = FUN_006eef60();
    local_17c = local_17c % 0xb;
  }
  fVar15 = DAT_00baa454;
  iVar4 = 0;
  local_150 = 0.0;
  local_144 = 6;
  local_15c = 4;
  local_174 = 3.0;
// ...
```

关键汇编：`ghidra-export/AI_004a6500_004a6500.asm` 0x004a6d4f..0x004a6e31, `ghidra-export/AI_004a6500_004a6500.asm` 0x004a7722..0x004a77d6, `ghidra-helpers/HELPER_Delirium_CycleAndAttackDispatchB_004a9860.asm` 0x004a9860..0x004a9940

实机缺口：No new external-memory session validated all fields listed for this case.

## 缺口清单

### 已恢复但 Reader 尚未读取

- `0x8` `Unclassified direct AI field slot`：138 个身份，R45/W1。
- `0xc` `Unclassified direct AI field slot`：138 个身份，R75/W4。
- `0x14` `Unclassified direct AI field slot`：155 个身份，R78/W26。
- `0x18` `Unclassified direct AI field slot`：39 个身份，R9/W5。
- `0x1c` `Unclassified direct AI field slot`：8 个身份，R0/W5。
- `0x20` `index`：95 个身份，R36/W0。
- `0x38` `spawnerVariant`：5 个身份，R1/W1。
- `0x48` `sprite`：334 个身份，R638/W0。
- `0x78` `Unclassified direct AI field slot`：218 个身份，R228/W0。
- `0x8c` `Unclassified direct AI field slot`：261 个身份，R0/W324。
- `0x98` `Unclassified direct AI field slot`：67 个身份，R48/W0。
- `0x9c` `Unclassified direct AI field slot`：69 个身份，R15/W40。
- `0xac` `Unclassified direct AI field slot`：61 个身份，R0/W35。
- `0xb8` `Unclassified direct AI field slot`：7 个身份，R0/W2。
- `0xc8` `Unclassified direct AI field slot`：15 个身份，R8/W5。
- `0xdc` `Unclassified direct AI field slot`：14 个身份，R0/W4。
- `0xe0` `Unclassified direct AI field slot`：14 个身份，R0/W4。
- `0xe4` `Unclassified direct AI field slot`：4 个身份，R1/W1。
- `0xe8` `Unclassified direct AI field slot`：3 个身份，R0/W1。
- `0xec` `Unclassified direct AI field slot`：12 个身份，R3/W8。
- `0xfc` `Unclassified direct AI field slot`：2 个身份，R0/W2。
- `0x148` `Unclassified direct AI field slot`：140 个身份，R7/W77。
- `0x149` `Unclassified direct AI field slot`：8 个身份，R0/W1。
- `0x14c` `Unclassified direct AI field slot`：17 个身份，R1/W13。
- `0x154` `Unclassified direct AI field slot`：2 个身份，R1/W0。
- `0x15c` `shadowSize`：36 个身份，R1/W19。
- `0x164` `Unclassified direct AI field slot`：1 个身份，R0/W1。
- `0x178` `Unclassified direct AI field slot`：1 个身份，R1/W0。
- `0x17c` `Unclassified direct AI field slot`：1 个身份，R1/W0。
- `0x190` `collidesWithGrid`：40 个身份，R1/W33。
- `0x194` `Unclassified direct AI field slot`：15 个身份，R10/W1。
- `0x198` `Unclassified direct AI field slot`：15 个身份，R9/W1。
- `0x19c` `Unclassified direct AI field slot`：21 个身份，R14/W1。
- `0x1a0` `Unclassified direct AI field slot`：19 个身份，R13/W1。
- `0x1e4` `Unclassified direct AI field slot`：191 个身份，R80/W1。
- `0x1e8` `Unclassified direct AI field slot`：4 个身份，R1/W1。
- `0x1ec` `Unclassified direct AI field slot`：4 个身份，R1/W1。
- `0x1f0` `Unclassified direct AI field slot`：3 个身份，R0/W1。
- `0x1f4` `Unclassified direct AI field slot`：34 个身份，R0/W6。
- `0x1f8` `Unclassified direct AI field slot`：28 个身份，R0/W5。
- 其余 86 项见 TSV/JSON 全量矩阵。

### 已读取但未完成真实行为验证

- `type` (`0x28`)：实机出现过值，但未关联已知变化。
- `variant` (`0x2c`)：实机出现过值，但未关联已知变化。
- `subtype` (`0x30`)：实机出现过值，但未关联已知变化。
- `spawner_type` (`0x34`)：实机出现过值，但未关联已知变化。
- `flags` (`0x168`)：实机出现过值，但未关联已知变化。
- `active` (`0x170`)：实机出现过值，但未关联已知变化。
- `exists` (`0x172`)：实机出现过值，但未关联已知变化。
- `dead` (`0x173`)：实机出现过值，但未关联已知变化。
- `grid_collision` (`0x184`)：实机出现过值，但未关联已知变化。
- `collision` (`0x188`)：实机出现过值，但未关联已知变化。
- `boss_status_cooldown` (`0x238`)：当前实机日志中没有该字段。
- `birth` (`0x328`)：实机出现过值，但未关联已知变化。
- `target_pos` (`0x334`)：实机出现过值，但未关联已知变化。
- `position` (`0x33c`)：实机出现过值，但未关联已知变化。
- `velocity` (`0x360`)：实机出现过值，但未关联已知变化。
- `radius` (`0x370`)：实机出现过值，但未关联已知变化。
- `max_health` (`0x384`)：当前实机日志中没有该字段。
- `collision_damage` (`0x388`)：实机出现过值，但未关联已知变化。
- `speed_multiplier` (`0x39c`)：当前实机日志中没有该字段。
- `parent` (`0x3bc`)：实机出现过值，但未关联已知变化。
- `child` (`0x3c0`)：当前实机日志中没有该字段。
- `target` (`0x3c4`)：当前实机日志中没有该字段。
- `spawner` (`0x3c8`)：实机出现过值，但未关联已知变化。
- `owner` (`0x410`)：实机出现过值，但未关联已知变化。
- `seed` (`0x3ec`)：实机出现过值，但未关联已知变化。
- `projectile_cooldown` (`0xba0`)：当前实机日志中没有该字段。
- `projectile_delay` (`0xba4`)：当前实机日志中没有该字段。
- `ai_v1_x` (`0xbb0`)：当前实机日志中没有该字段。
- `ai_v1_y` (`0xbb4`)：当前实机日志中没有该字段。
- `ai_v2_x` (`0xbb8`)：当前实机日志中没有该字段。
- `ai_v2_y` (`0xbbc`)：当前实机日志中没有该字段。
- `ai_i1` (`0xbc0`)：当前实机日志中没有该字段。
- `ai_i2` (`0xbc4`)：当前实机日志中没有该字段。
- `delirium_boss_type` (`0xbc8`)：当前实机日志中没有该字段。
- `delirium_boss_variant` (`0xbcc`)：当前实机日志中没有该字段。
- `delirium_transformation_timer` (`0xbd0`)：当前实机日志中没有该字段。
- `delirium_remaining_attacks` (`0xbd2`)：当前实机日志中没有该字段。
- `delirium_state` (`0xbd3`)：当前实机日志中没有该字段。
- `delirium_attack_id` (`0xbd8`)：当前实机日志中没有该字段。
- `delirium_attack_angle` (`0xbdc`)：当前实机日志中没有该字段。
- `delirium_cycle_id` (`0xbe0`)：当前实机日志中没有该字段。
- `is_boss` (`0xc3d`)：当前实机日志中没有该字段。
- `shield_strength` (`0xc40`)：当前实机日志中没有该字段。
- `shield_history_capacity` (`0xc44`)：当前实机日志中没有该字段。
- `champion` (`0xc64`)：实机出现过值，但未关联已知变化。
- `boss_color` (`0xc78`)：当前实机日志中没有该字段。
- `parent_in_snapshot` (`derived`)：实机出现过值，但未关联已知变化。
- `child_in_snapshot` (`derived`)：当前实机日志中没有该字段。
- `target_in_snapshot` (`derived`)：当前实机日志中没有该字段。
- `spawner_in_snapshot` (`derived`)：实机出现过值，但未关联已知变化。
- `owner_in_snapshot` (`derived`)：实机出现过值，但未关联已知变化。
- `delirium_layout_valid` (`derived`)：当前实机日志中没有该字段。
- `delirium_attack_id_low24` (`derived`)：当前实机日志中没有该字段。
- `delirium_cycle_low7` (`derived`)：当前实机日志中没有该字段。
- `delirium_cycle_field_15_24` (`derived`)：当前实机日志中没有该字段。
- `delirium_cycle_field_25_34` (`derived`)：当前实机日志中没有该字段。
- `boss_phase` (`derived`)：当前实机日志中没有该字段。
- `is_enraged` (`derived`)：当前实机日志中没有该字段。

### 已读取但没有完整语义

`boss_status_cooldown`, `invincible`, `child`, `target`, `ai_v1_x`, `ai_v1_y`, `ai_v2_x`, `ai_v2_y`, `ai_i1`, `ai_i2`, `delirium_boss_type`, `delirium_boss_variant`, `delirium_transformation_timer`, `delirium_remaining_attacks`, `delirium_state`, `delirium_attack_id`, `delirium_attack_angle`, `delirium_cycle_id`, `shield_strength`, `boss_color`, `delirium_attack_id_low24`, `delirium_cycle_low7`, `delirium_cycle_field_15_24`, `delirium_cycle_field_25_34`, `boss_phase`, `is_enraged`

### 已映射但未进入 Planner

`grid_collision`, `birth`, `max_health`, `speed_multiplier`, `seed`, `projectile_cooldown`, `projectile_delay`, `is_boss`, `shield_history_capacity`, `parent_in_snapshot`, `child_in_snapshot`, `target_in_snapshot`, `spawner_in_snapshot`, `owner_in_snapshot`, `delirium_layout_valid`

### 瞬时或无法直接读取

- FUN_006bec40 return / local vector：必须通过动态追踪或其他观测方式获取的瞬时值。Computed target/aim vector is consumed locally and is not a stable entity field.
- FUN_006eef60 return：必须通过动态追踪或其他观测方式获取的瞬时值。RNG output controls branches, angle, and projectile spread but is not retained as a named NPC field.
- FUN_0040b030("Shoot") result：必须通过动态追踪或其他观测方式获取的瞬时值。Animation-event edge exists only in the execution path and is not stored as a separate field.
- Projectile spawn position/velocity/spread locals：可以通过已有持久字段推导的状态。Can often be reconstructed from entity position, target position, State/StateFrame and emitted child entities, but must not be treated as a direct field.
- Function argument temporaries and call-frame locals：当前无法可靠获取的值。Register/stack lifetime prevents safe ReadProcessMemory access without tracing.

## 代码与验证

- 当前 EXE：`bin/IsaacGamebot.exe`，1537536 字节，SHA-256 `01e5f937c566cabbdd5464179958ac1cfdaa374f969f1fca36fd763e7025e2af`。
- C++ 构建与测试：90 通过，0 失败；日志见 `validation/runtime-field-coverage-build-20261029.log`。
- 离线回放：1 帧，帧有效=True，机制身份=7，已知 State=1，未知 State=6，已知攻击类型=0，预警=0，决策有效=True。
- 该回放是真实帧的离线重放，不作为新增 AI/Delirium 字段的实机外部读取证据。
- 本轮未启动 `isaac-ng.exe`，因此所有新 AI、ShieldStrength 和 Delirium 字段仍待真实外部内存会话验证。

## 优先级

1. P0：在真实游戏中建立新 Reader 会话，记录 State/StateFrame/AI I1/I2/ShieldStrength/Delirium 原始字段；没有该项不得声称实机验证。
2. P0：为 Matriarch、Vis Fatty、Ultra Greed、Big Horn、Delirium 建立逐帧外部 JSONL，并保存状态变化前后窗口、可观察弹幕/激光/召唤和 Planner 威胁输出。
3. P1：按身份解析当前未建模的直接 AI 偏移，尤其是 `0xC04..0xC18`、`0xB40..0xB8C` 与高位 Boss 字段；先确定类型、读写在分支中的意义，再扩展 Entity。
4. P1：把 Delirium AttackID/CycleID 的 selector 映射到具体攻击调用和危险实体，而不是仅输出打包值。
5. P1：将已验证的 AI 阶段、投射物计时器和护盾吸收边界接入 MechanismSemantics，再评估 Planner 消费，不得跳过中间证据。
6. P2：对 2 个 no-handler case 和其他无有效 AI 路由的身份单独确认实际运行时行为。

## 交付文件

- JSON 全量矩阵：[`research/ai-recovery/RUNTIME-FIELD-COVERAGE-20261029.json`](research/ai-recovery/RUNTIME-FIELD-COVERAGE-20261029.json)
- TSV 全量矩阵：[`research/ai-recovery/RUNTIME-FIELD-COVERAGE-20261029.tsv`](research/ai-recovery/RUNTIME-FIELD-COVERAGE-20261029.tsv)
- 653 路由身份及实机未路由变种矩阵：[`research/ai-recovery/RUNTIME-IDENTITY-COVERAGE-20261029.tsv`](research/ai-recovery/RUNTIME-IDENTITY-COVERAGE-20261029.tsv)
- 239 个伪 C：[`research/ai-recovery/ghidra-export/`](ghidra-export/)
- 地址化汇编：[`research/ai-recovery/ghidra-export/`](ghidra-export/)
- 分发 case 证据：[`dispatcher-cases.json`](dispatcher-cases.json)
- 重点案例证据：[`case-evidence.json`](case-evidence.json)

## 原版训练引擎跨进程值对照（独立统计）

报告：`validation/external-memory-final-20261029/report.json`。真实 ReadProcessMemory 读取 Node/WASM 原版 J460 提升引擎的线性内存。

字段值通过 52/52；值匹配 5983435/5983435；变化检测 365203/365203；指针快照关系 862815/862815；身份 20；AI 状态 61。

内部真值与 Reader 共享恢复偏移，确认跨进程传输和解码一致性，不独立证明偏移语义。本批证据不改写历史正式 EXE 行为验证计数。攻击机制、攻击预警、Boss 阶段及 Planner 机制按报告单列。
