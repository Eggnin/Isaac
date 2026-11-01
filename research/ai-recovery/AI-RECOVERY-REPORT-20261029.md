# Isaac J460 敌人 AI 反编译恢复结果

日期：2026-10-29

输入：`D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe`

SHA-256：

```text
7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F
```

## 1. 当前恢复到了哪一层

现有索引包含 239 个由分发器 case 推导出的调用目标，但这 239 个地址并不等于
239 个独立 AI 函数。重新解码 242 个 case 后，实际结构是：

| 项目 | 数量 | 说明 |
| --- | ---: | --- |
| Type 索引空间 | 958 | Type `10..967` |
| 分发器 case | 242 | 241 个不同 case 地址 |
| 独立转发 AI 函数 | 226 | case 体是 `mov ecx,edi; call target; jmp epilogue` |
| 分发器内联 case | 14 | 逻辑直接位于 `0x006c2990` 的 switch 体中 |
| 无处理 case | 2 | 直接进入共同尾部 |
| EntityConfig 身份 | 653 | Type/Variant/SubType |
| 经独立函数处理的身份 | 582 | 精确 case 转发 |
| 经内联 case 处理的身份 | 63 | 必须在完整 dispatcher 伪 C 中分析 |
| 当前无有效 case 处理的身份 | 8 | 不能把旧自动映射当作 AI |

旧提取器把“case 后 0x400 字节内第一个 call”当作 AI 函数，因此：

- 226 个结果确实是独立转发函数。
- 12 个结果是内联 case 中调用的辅助函数，不是该 Type 的 AI 主入口。
- 另有 1 个结果来自无处理 case 后续的偶然调用，不构成任何 Type 的 AI 入口。
- Type 79 Gemini、93 等内联状态机必须看完整 dispatcher，而不能只看
  `0x0043ef30`、`0x0041af60` 等首次调用目标。

修正后的 Type/case 映射在
[`dispatcher-cases.json`](dispatcher-cases.json)，逐 case 汇编在
[`case-assemblies/`](case-assemblies/)。

本轮 Ghidra 11.1.2 实际完成了：

- 239/239 个旧目标成功反编译，失败数 0。
- 生成约 5.43 MB 伪 C、13.15 MB 地址化汇编。
- 额外导出 dispatcher、公共伤害过滤、护盾吸收、发弹、实体生成和 Delirium
  辅助函数。
- 建立 15,519 个直接调用点、3,883 条字段引用和调用前参数窗口索引。

完整机器索引：

- [`AI-FUNCTION-CATALOG.md`](AI-FUNCTION-CATALOG.md)
- [`ai-semantics-index.json`](ai-semantics-index.json)
- [`ai-semantics-summary.tsv`](ai-semantics-summary.tsv)
- [`case-evidence.json`](case-evidence.json)

完整 dispatcher 伪 C：

- [`HELPER_Entity_NPC_Update_dispatcher_006c2990.c`](ghidra-helpers/HELPER_Entity_NPC_Update_dispatcher_006c2990.c)

## 2. 关键公共代码

### 统一分发器

`0x006c2990`：

```asm
mov eax, [edi+0x28]       ; Type
sub eax, 10
cmp eax, 0x3bd
movzx eax, byte ptr [eax+0x6c45a4]
jmp dword ptr [eax*4+0x6c41dc]
```

证据级别：

- 已从反编译代码恢复：`006c2990` 的完整伪 C。
- 已从控制流和交叉引用确认：958 项 Type 表、242 项 case 表。
- 尚未确认：Variant/SubType 在具体 case 中的语义必须逐个函数分析，不能从
  Type 表直接推断。

### 公共攻击与生成

| 函数 | VA | 代码证据 |
| --- | ---: | --- |
| `FireProjectiles` | `0x006cb2e0` | 多处调用 `0x00428b20(9, variant, ...)` 创建 Type 9 projectile |
| `FireBossProjectiles` | `0x006ccdd0` | 直接调用 `0x006fe410` 创建 Type 9 projectile 并设置 Parent |
| spawn relay | `0x00428b20` | 单指令转发到 `0x006fe410` |
| entity create dispatcher | `0x006fe410` | 参数顺序已从伪 C 确认为 Type、Variant、Position、Velocity、Parent、SubType、Seed、Flag |
| NPC projectile helper | `0x006bec40` | 返回选中/目标位置，供攻击函数继续计算方向和速度 |

### 公共伤害过滤与护盾

`0x006ac560` 的直接拒绝条件包括：

- Type 不在 NPC 范围；
- CollisionClass 为 0 或 1；
- `Invincible +0x3B0 != 0`；
- `Dead +0x173 != 0`；
- 特定来源/友方关系。

`0x006ac560` 不读取 `+0xC40`。Ultra Greed 的护盾不是 `Invincible`：

- `0x006ace60` 将伤害请求继续送入实际伤害路径。
- `0x006d7230` 在 NPC 帧更新中读取 `+0xC40`，累计最近最多 120 帧的伤害，
  再按 `MaxHealth / ShieldStrength` 和伤害均值计算缩放系数，改写待结算伤害项。
- 因此“护盾强度高”表示伤害被缩放，不是“`Invincible` 为真”。

代码：

- [`HELPER_Entity_DamageFilter_006ac560.c`](ghidra-helpers/HELPER_Entity_DamageFilter_006ac560.c)
- [`HELPER_Entity_TakeDamage_006ace60.c`](ghidra-helpers/HELPER_Entity_TakeDamage_006ace60.c)
- [`HELPER_006d7230_ShieldDamageAbsorption_006d7230.c`](ghidra-helpers/HELPER_006d7230_ShieldDamageAbsorption_006d7230.c)

证据级别：

- 已从反编译代码恢复：过滤字段、读/写位置和护盾缩放算法。
- 已从控制流和交叉引用确认：NPC 更新在调用 AI 分发器前先执行护盾吸收。
- 已通过离线运行验证：Ultra Greed 的 `ShieldStrength` 在部分状态从 65 升到 130。
- 尚未确认：每个状态下的精确伤害缩放倍率仍需按实际伤害队列输入做运行时采样。

## 3. Matriarch `413.0.0`

AI：`0x004c59d0`

完整伪 C：

- [`AI_004c59d0_004c59d0.c`](ghidra-export/AI_004c59d0_004c59d0.c)

完整汇编：

- [`AI_004c59d0_004c59d0.asm`](ghidra-export/AI_004c59d0_004c59d0.asm)

### RageBegin

伪 C，行 275-351：

```c
if ((((int)param_1[0x2f0] < 0x12d) ||
    ((int)param_1[0x2f1] < 3)) ||
    (uVar11 = FUN_006eef60(), uVar11 % 5 != 0)) {
    /* 正常 State 3 攻击选择 */
}
else {
    FUN_0040a380("RageBegin",0);
    param_1[0x2d9] = (int *)0xd;
    param_1[0x104] = (int *)0x0;
    param_1[0x2f0] = (int *)0x190;
}
```

字段别名：

- `param_1[0x2f0]` = `+0xBC0` AI I1。
- `param_1[0x2f1]` = `+0xBC4` AI I2。
- `param_1[0x2d9]` = `+0xB64` State。
- `param_1[0x104]` = `+0x410` StateFrame。

对应汇编位于 `0x004c61d0..0x004c6223`：

```asm
cmp dword ptr [edi+0xbc0], 0x12c
jle 0x4c6228
cmp dword ptr [edi+0xbc4], 2
jle 0x4c6228
call 0x6eef60
div ecx                       ; ecx = 5
test edx, edx
jne 0x4c6228
push 0xb601a8                ; "RageBegin"
call 0x40a380
mov dword ptr [edi+0xb64], 0xd
mov dword ptr [edi+0x410], 0
mov dword ptr [edi+0xbc0], 0x190
```

恢复条件：

- AI I1 必须大于 300。
- AI I2 必须大于 2。
- `genrand_int32() % 5 == 0`。
- 进入 State 13，StateFrame 清零，AI I1 设为 400。

### RageLoop

伪 C，行 739-830：

```c
case (int *)0xd:
  piVar20 = param_1[0x104];
  ...
  else {
    if (...)
      FUN_0040a380("RageLoop",0);
    if ((frame & 7) == 0 && (rand & 1) == 0) {
      ...
      FUN_00428b20(0x134,0,...,param_1,0,...);
      ...
      FUN_00428b20(1000,0xf,...,0,0,...);
      ...
    }
    param_1[0x104]++;
    param_1[0x2f0] -= 2;
    if ((int)param_1[0x2f0] < 1) {
      param_1[0x2f0] = 0;
      param_1[0x104] = -1;
      FUN_0040a380("RageEnd",0);
    }
  }
```

具体循环：

- StateFrame 为 0 时等待当前动画谓词 `"Shoot"`。
- StateFrame 为负数时等待动画结束，然后返回 State 3。
- 正值期间播放 `RageLoop`。
- 每 8 帧并且 RNG 最低位为偶数时，发射一次攻击。
- 攻击对象：
  - `Type 0x134` = `308.0.0` Fistuloid；
  - `Variant 0`；
  - 随机环形方向与速度；
  - Parent = Matriarch；
  - 同时创建 `Type 1000`, `Variant 0x0F` 的预警/效果对象。

### RageEnd

同一伪 C 块：

```c
param_1[0x104]++;
param_1[0x2f0] -= 2;
if ((int)param_1[0x2f0] < 1) {
  param_1[0x2f0] = 0;
  param_1[0x104] = -1;
  FUN_0040a380("RageEnd",0);
}
```

对应汇编：

```asm
inc dword ptr [edi+0x410]
add dword ptr [edi+0xbc0], -2
cmp dword ptr [edi+0xbc0], 0
jg 0x4c780c
mov dword ptr [edi+0xbc0], 0
push 0xb601b4                ; "RageEnd"
mov dword ptr [edi+0x410], -1
call 0x40a380
```

恢复结论：

- AI I1 每帧减 2，从 400 开始，因此正常时长基线为 200 帧。
- 减到 0 时进入 StateFrame `-1` 和 `RageEnd` 动画。
- 动画结束后再回到 State 3，不是在同一帧立即返回。

证据级别：

- 已从反编译代码恢复：RageBegin、RageLoop、RageEnd 三分支。
- 已从控制流和交叉引用确认：进入条件、计时器和攻击生成调用。
- 已通过离线运行验证：State 13 / `RageBegin` 在第 2,381 帧出现。
- 尚未确认：完整 RageLoop/RageEnd 未跑满 200 帧；生成对象的完整伤害行为还需运行时对象级验证。

## 4. Vis Fatty `886.0.0` State 16

同类 AI：`0x004ea3d0`

完整伪 C：

- [`AI_004ea3d0_004ea3d0.c`](ghidra-export/AI_004ea3d0_004ea3d0.c)

完整汇编：

- [`AI_004ea3d0_004ea3d0.asm`](ghidra-export/AI_004ea3d0_004ea3d0.asm)

### 先纠正 Variant

汇编在 `0x004ea413`：

```asm
cmp dword ptr [edi+0x2c], 1
jne 0x4eab07
```

`0x4eab07` 之后的分支包含 State 16；因此：

- `886.0.0` / `#VIS_FATTY` 使用 State 16。
- `886.1.0` / `#FETAL_DEMON` 使用后面的独立 State 0/4/7/8 状态机。

旧报告把 `886.1.0` 与 State 16 绑在一起，并把另一个 Variant 的 `RageEnd`
写回 State 4 混入 State 16，这是错误的。代码中 State 16 case 没有写回 State 4。

### State 16 入口

伪 C，行 147-163：

```c
if ((*(int *)(param_1 + 0xb64) == 4) &&
    (*(int *)(param_1 + 0x3c0) == 0)) {
  *(undefined4 *)(param_1 + 0xb64) = 0x10;
  *(undefined4 *)(param_1 + 0xba4) = 0;
  FUN_006d6ba0(0x138,...);
  FUN_0040a380("RageStart",0);
  ...
}
```

对应汇编在 `0x004ead10`：

```asm
cmp dword ptr [edi+0xb64], 4
jne 0x4eaeca
cmp dword ptr [edi+0x3c0], 0
jne 0x4eaeca
...
mov dword ptr [edi+0xb64], 0x10
mov dword ptr [edi+0xba4], 0
call 0x6d6ba0               ; SFX 0x138
call 0x40a380               ; "RageStart"
```

进入条件：

- State 为 4；
- Child `+0x3C0` 为空；
- ProjectileDelay `+0xBA4` 重置为 0；
- 播放 `RageStart`。

### State 16 更新

伪 C，行 324-357：

```c
case 0x10:
  cVar2 = FUN_0040a550(&DAT_00b1a4ec);  /* current animation empty/finished */
  if (cVar2 != '\0') {
    FUN_0040a380("RageDown",0);
  }
  cVar2 = FUN_004073b0();
  if (cVar2 != '\0') {
    ...
    pcVar10 = "RageUp";
    if (*(float *)(param_1 + 0x338) <= DAT_00ba9fe4) {
      pcVar10 = "RageDown";
    }
    FUN_0040a380(pcVar10,0);
    ...
    piVar8 = (int *)FUN_0096f310(1,param_1 + 0x33c,...);
    FUN_006d0c20(piVar8);
    ...
  }
```

`0x0096f310` 的实现直接调用实体创建器：

```c
HELPER_Entity_CreateDispatcher(7,param_1,...);
```

因此它创建的是 Type 7 projectile/tear 实体，而非 Type 10 NPC。调用处传入
`Variant = 1`，创建时的 SubType 为 0；随后单独把 `+0x458` 写为 `10`。

State 16 还生成：

- `Type 1000`, `Variant 0x6F` 的位置提示/效果对象；
- 当 Child 存在且 ProjectileDelay 递增时，生成
  `Type 1000`, `Variant 0x16` 的轨迹效果。

State 16 结束条件：

- `0x004ea3d0` 中没有从 State 16 写回 State 4 的路径。
- `RageEnd` 字符串只出现在 Variant 1 的 State 8 分支；
- 该分支才会：

```c
FUN_0040a380("RageEnd",0);
param_1[0xb64] = 4;
param_1[0xba0] = rand() % 0x1e + 0x3c;
```

也就是射击冷却 60..89 帧。这个结束路径属于 `886.1.0`，不属于 State 16。

证据级别：

- 已从反编译代码恢复：State 16 入口、RageStart、RageDown/Up、projectile 创建。
- 已从控制流和交叉引用确认：Variant 分支和 State 16 无 State 4 回写。
- 已通过离线运行验证：仅观察到 `886.1.0` 的 State 1/7，未触发 State 16。
- 尚未确认：`886.0.0` State 16 的实际持续时间、Child 生命周期和 projectile 伤害。

## 5. Ultra Greed `406.0.0`

AI：`0x0059edb0`

完整伪 C：

- [`AI_0059edb0_0059edb0.c`](ghidra-export/AI_0059edb0_0059edb0.c)

### 护盾强度

初始值，伪 C 行 203-269：

```c
local_178 = 65.0f;
local_194 = 45.0f;
if (...mode condition...) {
  local_178 = 85.0f;
  local_194 = 60.0f;
}
if (param_1[0xb] == 1) {
  local_178 = local_194;
}
...
param_1[0x310] = local_178;
param_1[0x311] = 120;
```

每帧护盾选择，伪 C 行 447-458：

```c
if (State == 0x190 || State == 0x64 || State == 0x1fe) {
  ShieldStrength = base + base;       /* 130/170 or 90/120 */
} else {
  if (Variant != 1)
    ShieldStrength = base;
  if (AI_I2 > 0 && FUN_006ac710(0x1e, parent))
    AI_I2--;
}
```

对应汇编 `0x0059f6d0..0x0059f730`。

公共吸收函数 [`HELPER_006d7230_ShieldDamageAbsorption_006d7230.c`](ghidra-helpers/HELPER_006d7230_ShieldDamageAbsorption_006d7230.c)
的核心：

```c
if (0.0 < *(float *)(root + 0xc40)) {
    /* sum pending damage entries whose flags do not contain 0x2000 */
    ...
    fVar12 = *(float *)(entity + 900) /
             *(float *)(root + 0xc40);
    fVar11 = average_recent_damage * 30.0f;
    if (fVar12 < fVar11) {
        fVar12 /= fVar11;
        fVar10 = 0.09f - fVar12 * 0.18f;
        if (fVar10 <= 0.0f) fVar10 = 0.0f;
        fVar10 += fVar12;
    }
    /* multiply pending damage entries by fVar10 */
}
```

`+0xC44 = 120` 是该滚动伤害历史窗口，不是“剩余护盾秒数”。

### Guard / Spin / ShootDown

从伪 C 与控制流恢复：

| 状态 | 代码行为 |
| ---: | --- |
| `400 (0x190)` | `GuardStart` -> `Guarding` -> `GuardEnd` -> State 4 |
| `500 (0x1F4)` | `SpinOnce`，旋转结束后 State 4 |
| `510 (0x1FE)` | `SpinStart` -> `SpinConstant` -> `SpinEnd` -> State 4 |
| `600 (0x258)` | 每帧等待动画事件；首帧按分支调用 `FireBossProjectiles(6, ...)` 或 `FireProjectiles` |
| `100 (0x64)` | Slot/抽奖状态族，状态内使用 `Type 1000`/pickup 逻辑 |

Guard 伪 C 行 717-757：

```c
if (state == 0x190) {
  if (AI_I1 == 0) {
    FUN_0040a380("GuardStart",0);
    if (FUN_0040a550()) AI_I1 = 1;
  } else if (AI_I1 == 1) {
    ...
    FUN_0040a380("Guarding",0);
    ...
    if (timeout || !FUN_006d8260()) AI_I1 = 2;
  } else if (AI_I1 == 2) {
    FUN_0040a380("GuardEnd",0);
    if (FUN_0040a550()) {
      State = 4;
      StateFrame = 0;
      AI_I1 = 0;
    }
  }
}
```

State 510 在 `StateFrame & 7 == 0` 时调用 `0x006cb2e0`
（`FireProjectiles`）发射环形弹幕；汇编在 `0x005a0cb5` 附近。

State 600 的攻击分叉，伪 C 行 1390-1415：

```c
if (animationEvent("...")) {
  if (StateFrame == 0) {
    if (local_148 == 1)
      FUN_006ccdd0(6,param_1 + 0xcd,0,local_128);
    else
      FUN_006cb2e0(param_1 + 0xcf,&local_1ac,local_148,local_128);
  }
  StateFrame++;
}
if (animation() == finished) {
  State = 3;
  AI_I1 = 0;
  StateFrame = 0;
}
```

`local_148 == 1` 在 Ghidra 当前类型恢复下显示为
`7.006492e-44`，这是指针/整数视图造成的显示问题；应以比较常量和汇编为准。

### 阶段/动作转换

AI 自身没有一组简单的“HP <= 百分比”判断。它通过事件查询
`0x00956110(event_id, handler, entity)` 选择状态：

| 事件 ID | 目标 State |
| ---: | ---: |
| `5`（且目标距离 `< 2.0` 时不选） | `300 (0x12C)` |
| `7` | `500 (0x1F4)` |
| `4` | `510 (0x1FE)` |
| `6` | `600 (0x258)` |
| `8` | `100 (0x64)` |
| `10` | `200 (0x0C8)` |
| `11` | `400 (0x190)` |

汇编在 `0x005a3c1e..0x005a3d2b`，伪 C 行 2319-2399。

这把“攻击事件 → Ultra Greed 状态”恢复了，但没有把事件生产端的 HP 阈值混入
AI 函数。事件生产端（何种 HP/阶段条件产生 ID 4..11）仍需继续追踪
`0x00956110` 的上层调用者。

### 无敌

Ultra Greed 的普通 Guard 不设置 `Invincible +0x3B0`。直接写入：

```c
/* 0x005a37b5, 0x005a3a4b */
*(undefined *)(param_1 + 0xec) = 1;
```

这些写入位于 Greedier Variant 的 State 16 / State 9000-9001 结束/死亡路径。
清除写入：

```c
/* 0x005a388c */
*(undefined *)(param_1 + 0xec) = 0;
```

因此：

- 盾牌期：`ShieldStrength` 参与伤害缩放。
- Guard 本身：没有静态写入 `Invincible=1`。
- State 16 / 9000 / 9001：存在真无敌窗口候选。

证据级别：

- 已从反编译代码恢复：护盾、Guard、Spin、ShootDown、无敌写入。
- 已从控制流和交叉引用确认：护盾吸收与公共伤害过滤是两条不同路径。
- 已通过离线运行验证：Ultra Greed State 100/400/510 中 ShieldStrength 65->130。
- 尚未确认：事件 ID 生产条件、护盾状态下每一击的具体扣血比例、Greedier 无敌窗口的精确起止。

## 6. Big Horn `411.0.0` State 13

AI：`0x00453140`

完整伪 C：

- [`AI_00453140_00453140.c`](ghidra-export/AI_00453140_00453140.c)

State 0..16 的跳表在 `0x00456120`，状态索引字节表在 `0x00456134`。
State 13 映射到 `0x00453f56`。

### 进入 State 13

伪 C，行 340-358：

```c
if (...current animation is "BigHoleOpen"... && !local_a1) {
  if (... child == 0 ...) {
    if ((int)param_1[0x2f0] < 1) {
      param_1[0x2d9] = 0xd;
      FUN_0040a380("PopUp",0);
      FUN_006d6ba0(0xe,...);
      FUN_006d6ba0(0x369,...);
    } else {
      param_1[0x2d9] = 0x10;
      FUN_0040a380("PopUpDizzy",0);
      param_1[0x2f1] = 0x96;
      param_1[0x2f0] = 0;
    }
  }
}
```

汇编在 `0x00453eac..0x00453f3d`。

条件：

- 当前状态/动画阶段已结束 `BigHoleOpen`；
- `AI I1 (+0xBC0) <= 0` 时进入 State 13；
- `AI I1 > 0` 时进入 State 16 / `PopUpDizzy`；
- 进入时清除 `Invincible`，StateFrame 清零。

### State 13 第一帧

伪 C，行 520-548：

```c
case 0xd:
  param_1[0xd6] = 0;
  if (param_1[0x104] == 0) {
    if (...animator... ) {
      fVar15 = player.y - boss.y;
      if (fVar15 <= boss.radius) {
        State = 3;
      } else {
        r = rand() % 100;
        if (r < 35)       pcVar12 = "Charge2";
        else if (r < 40)  pcVar12 = "Charge3";
        else              pcVar12 = "Charge";
        FUN_0040a380(pcVar12,0);
        StateFrame++;
        FUN_009568e0(0x374,...);
      }
      Invincible = 0;
      CollisionClass = 4;
    }
  }
```

分支概率：

- `0..34`：`Charge2`；
- `35..39`：`Charge3`；
- `40..99`：`Charge`。

若玩家不在下方有效方向，直接取消 State 13 并回到 State 3。

### Charge 发射

伪 C，行 549-736：

```c
StateFrame += frameDelta;
if (animationEvent("Shoot")) {
  count = 1;
  if (animation == "Charge2") count = 2;
  if (animation == "Charge3") count = 4;
  ...
  for (i = 0; i < count; i++) {
    entity = FUN_00428b20(0x194,1,&position,&velocity,param_1,subtype,seed);
    ...
  }
  FUN_006d6ba0(0x379,...);
}
```

攻击对象：

- `Type 0x194` = `404.0.0` Little Horn 的 Type；
- `Variant 1`，对应本机 EntityConfig `404.1.0` Dark Ball；
- Parent = Big Horn；
- `Charge` / `Charge2` / `Charge3` 分别生成 1 / 2 / 4 个方向对象；
- 同时通过 `0x0040bf30` 创建 `Effect_088_DarkSmoke_Big.png` 视觉对象。

### State 13 结束

伪 C，行 766-793：

```c
if (... no target or current animation finished ...) {
  if ((int)param_1[0x2f0] < 1) {
    State = 3;
  } else {
    StateFrame = 1;
    State = 0x10;
    FUN_0040a380("DizzyLoop",0);
    AI_I2 = 0x96;
    AI_I1 = 0;
  }
}
```

证据级别：

- 已从反编译代码恢复：State 13 入口、三条 Charge、Dark Ball 生成和结束。
- 已从控制流和交叉引用确认：跳表、方向判断、随机分流、CreateDispatcher 参数。
- 已通过离线运行验证：观察到 State 13 / `PopUp` / `Charge` / `Charge2` / `Charge3`。
- 尚未确认：Dark Ball 的完整伤害/碰撞响应，以及 State 13 是否在真实战斗中因无敌窗口提前结束；当前探针未观察无敌翻转。

## 7. Delirium `412.0.0`

AI：`0x004a6500`

主伪 C：

- [`AI_004a6500_004a6500.c`](ghidra-export/AI_004a6500_004a6500.c)

AttackID 分发：

- [`HELPER_Delirium_AttackIDDispatchA_004a8b70.c`](ghidra-helpers/HELPER_Delirium_AttackIDDispatchA_004a8b70.c)

CycleID 与借用 Form 的 AI 分发：

- [`HELPER_Delirium_CycleAndAttackDispatchB_004a9860.c`](ghidra-helpers/HELPER_Delirium_CycleAndAttackDispatchB_004a9860.c)

### AttackID 的真实布局

伪 C 行 99-109：

```c
uVar10 = *(uint *)(entity + 0xbd8);
attackPattern = uVar10 & 0xff;
shotCount     = (uVar10 >> 8) & 0xff;
changeChance  = (uVar10 >> 16) & 0xff;
frameCounter  = uVar10 >> 24;
attackAngle   = *(byte *)(entity + 0xbdc);

if (attackPattern == 0xff) {
  attackPattern = rand() % 11;
}
```

因此 `AttackID +0xBD8` 是四字节打包值：

| 位 | 语义 |
| --- | --- |
| `0..7` | projectile pattern ID，`0..10` |
| `8..15` | 当前模式剩余发射次数 |
| `16..23` | 切换到下一模式的门槛/概率值 |
| `24..31` | 攻击帧计数器 |

`AttackAngle +0xBDC` 是独立字节，不包含在 `AttackID` 内。

### AttackID projectile pattern

函数 `0x004a8b70` 的 switch 建立 11 种弹幕描述：

| Pattern | 方向数 | 周期基数 | 速度 | 追加角度 | 原始 flags |
| ---: | ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 18 | 2.5 | 0 | `0x08000000` |
| 1 | 1 | 25 | 4.0 | 0 | `0x00000002` |
| 2 | 1 | 5 | 4.5 | `π/8` | `0x00800000` |
| 3 | 12 | 25 | 4.0 | 12 向环 | `0` |
| 4 | 1 | 20 | 5.0 | `+3` | `0x00000020` |
| 5 | 1 | 20 | 3.0 | `+2` | `0x00400000` |
| 6 | 1 | 25 | 5.0 | 无 | `0x00000800` |
| 7 | 1 | 25 | 5.0 | 无 | `0x00001000` |
| 8 | 1 | 10 | 4.0 | `+4` | `0x00200000` |
| 9 | 1 | 30 | 4.0 | `+2` | `0` |
| 10 | 1 | 18 | 4.0 | 瞄准玩家 | `0` |

弹幕生成点：

- 通过 `(AttackID.frameCounter - per-direction offset) % (frameStep * period) == 0`
  判断是否发射。
- 发射调用的公共函数是 `0x006cb2e0` (`FireProjectiles`)。
- `FireProjectiles` 内部通过 `0x00428b20(9, variant, ...)` 生成 Type 9 projectile。
- 发射后更新 `shotCount`、`changeChance`、`AttackID` 和 `AttackAngle`。

伪 C 行 437-499：

```c
FUN_006cb2e0(entity + 0x33c,&velocity,flags,&projectileParams);
...
if (fired) {
  if (shotCount < 1) {
    if (rand() % 100 < changeChance) {
      changeChance -= 10;
    } else {
      do {
        nextAttack = rand() % 11;
      } while (nextAttack == attackPattern);
      changeChance = 30;
      attackAngle = rand() % 255;
      attackPattern = nextAttack;
    }
  }
}
```

### CycleID 的真实布局

主伪 C 行 277-285、367-378：

```c
uVar24 = CycleID_low32;
field_7_14   = (uVar24 >> 7) & 0xff;
field_15_24  = (uVar24 >> 15) & 0x3ff;
field_25_34  = (uVar24 >> 25) | ((CycleID_high32 & 7) << 7);
formGate     = uVar24 & 0x7f;
```

字段用途：

- `low 7`：下一次形态抽选的随机门槛，主 AI 行 753-770。
- `bits 7..14`：`0x004a9860` 的原始子更新计数，参与每 Form 的更新门限计算。
- `bits 15..24`：攻击/形态周期计数，按经过的帧数递减。
- `bits 25..34`：`0x004a9860` 的连续 AI 更新预算；当
  `uVar9 * 4 < uVar8` 时在同一帧执行多次借用 Form 的 AI。

### 具体攻击分发

`0x004a9860` 在按当前 Delirium Form 调整状态和速度后，循环调用：

```c
HELPER_Entity_NPC_Update_dispatcher();
```

即：

```text
Delirium 当前 BossType/Variant
  -> 0x004a9860 选择 Form 的运行时分支
  -> 0x006c2990 原版统一 AI 分发器
  -> 该 Boss 的具体 AI 函数 / 内联 case
```

主 AI 还对特殊 Form 直接调用 `0x006c2990`：

- Type `0x24`；
- Type `0x4E`；
- Type `0x4F`；
- Type `0x197`。

这证明 Delirium 的攻击复用原 Boss AI，而不是另有一套完全独立攻击表。

### 形态转换

主伪 C 行 751-808：

```c
formGate = CycleID_low7;
if (BossType != 0x2d && !(BossType == 0x54 && Variant == 10)) {
  if (formGate <= rand() % 100) {
    formGate += 10;
  } else {
    formGate = 0;
    formWait = 0x78;
  }
}
CycleID = ...
if (BossType == 0x10a)
  Variant = 0;
else if (BossType == 0x2d || (BossType == 0x54 && (rand() & 1) == 0))
  Variant = 10;
...
FUN_004a5d10(...)
FUN_004a8680();
FUN_004a84f0();
DeliriumState = 8;
RemainingAttacks = rand() % 3 + 2;
```

`0x004a5d10` 会根据 Form 加载：

```text
Bosses/AfterbirthPlus/DeliriumForms/...
```

因此 Delirium 的 `AttackID` 是自己生成的 projectile pattern；`CycleID` 决定
Form 选择、持续与借用 AI 的更新预算；真正的 Boss 特有激光/爆炸/召唤仍由被借用
Form 的 AI case 执行。

证据级别：

- 已从反编译代码恢复：AttackID 四字节布局、11 种 projectile descriptor、CycleID 比特用途、Form 借用 dispatcher。
- 已从控制流和交叉引用确认：`0x004a8b70 -> 0x006cb2e0`、`0x004a9860 -> 0x006c2990`。
- 已通过离线运行验证：DeliriumState 16/8、AttackID、AttackAngle、CycleID 随帧变化。
- 尚未确认：每个 Form 的完整特殊攻击集合尚未逐一穷举；Form 事件和 CycleID 高位仍有未命名字段。

## 8. 仍然不能声称完成的部分

当前已解决的是“完整代码取得与地址稳定索引”，不是“所有行为都已在真实战斗中触发”。

仍有以下具体缺口：

1. Ghidra 自动把 32 位实体指针解成 `int *`，所以伪 C 同时出现
   `param_1[0x2d9]` 和 `*(undefined4 *)(param_1 + 0xb64)` 两种写法。
   地址和汇编是权威证据，变量类型仍需逐步恢复。
2. 226 个独立转发函数的完整正文已取得；14 个内联 case 由完整 dispatcher
   正文覆盖，但 Ghidra 不能把它们安全拆成入库函数。逐 case 汇编已导出。
3. 8 个身份当前走空 case，不能把旧 239 映射中的偶然 call 目标当作 AI。
4. 公共实体生成器可证明“创建了 Type/Variant”，不能单独证明对象一定造成伤害。
   必须继续关联对象 flags、碰撞类、父指针和运行时伤害来源。
5. Ultra Greed 的事件 ID -> State 已恢复；事件 ID 的 HP/阶段生产端尚未恢复。
6. 未找到游戏 PDB，且 REPENTOGON ZHL 子模块在本工作区为空。当前所有未知
   调用保留地址名；不能用猜测的类名替代。

## 9. 复现

```powershell
python D:/Isaac/research/ai-recovery/build_seeds.py
powershell -NoProfile -ExecutionPolicy Bypass `
  -File D:/Isaac/research/ai-recovery/run-ghidra.ps1
python D:/Isaac/research/ai-recovery/build_dispatcher_cases.py
python D:/Isaac/research/ai-recovery/build_semantics_index.py
python D:/Isaac/research/ai-recovery/render_catalog.py
powershell -NoProfile -ExecutionPolicy Bypass `
  -File D:/Isaac/research/ai-recovery/run-ghidra.ps1 `
  -SeedFile extra-seeds.tsv -OutputName ghidra-helpers
python D:/Isaac/research/ai-recovery/build_case_evidence.py
```
