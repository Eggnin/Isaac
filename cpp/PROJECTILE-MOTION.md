# Special Projectile Motion (v0.8.2)

日期：2026-11-02。把现有 `Planner` 中已经恢复的弹幕运动分支提取为
`ProjectileMotionModel`，并接入 `ForwardSimulator`。不重写 Planner/MPC，不修改
WASM，不引入强化学习或 CEM。

## 1. 字段读取位置

`cpp/src/reader.cpp` 仅在 `Entity.type==9`（Projectile）时读取：

| 偏移 | 字段 | 说明 |
| --- | --- | --- |
| `+0x438` | `projectile_flags` | 主运动/行为位图 |
| `+0x450` | `projectile_change_flags` | 超时后要切换到的位图 |
| `+0x458` | `projectile_change_velocity` | 超时后的速度参数 |
| `+0x45c` | `projectile_change_timeout` | 超时周期 |
| `+0x3a4` | `projectile_age` | 原生 30 Hz 年龄 |
| `+0x448` | `projectile_phase` | wiggle/sine 相位 |
| `+0x424` | `projectile_homing_strength` | SMART/SMART_PERFECT 转向强度 |
| `+0x42c` | `projectile_accel` | 加速/减速参数 |
| `+0x428` | `projectile_curve` | 曲线角/STASIS 释放角 |
| `+0x430` | `projectile_orbit_distance` | 轨道半径 |
| `+0x468/+0x46c` | `projectile_parent_velocity` | 父实体相对速度 |

字段只在 Projectile 上读取，不扩展到 NPC/Effect。原始偏移和枚举来源保留在
`cpp/src/reader.cpp`、`python/src/engine_enums.json`、
`python/records/research/enums-public-latest.lua`。

## 2. Bitfield 语义

`ProjectileFlags` 的本地 J460 枚举值直接使用，不猜测位号。当前运动模型覆盖：

| 位 | 名称 | 行为 |
| --- | --- | --- |
| 0 | `SMART` | 朝玩家/目标缓慢转向 |
| 5 | `WIGGLE` | 垂直方向正弦摆动 |
| 11/12 | `ORBIT_CW` / `ORBIT_CCW` | 围绕目标点顺时针/逆时针轨道 |
| 17 | `ANY_HEIGHT_ENTITY_HIT` | 忽略高度伤害门 |
| 18/19 | `CURVE_LEFT` / `CURVE_RIGHT` | 按 `projectile_curve` 旋转速度 |
| 20 | `TURN_HORIZONTAL` | 越过玩家横向位置后水平加速 |
| 21 | `SINE_VELOCITY` | 速度正弦摆动位移 |
| 22 | `MEGA_WIGGLE` | 振幅随时间增长的摆动 |
| 23 | `SAWTOOTH_WIGGLE` | 年龄余数触发的锯齿转向 |
| 26 | `MOVE_TO_PARENT` | 朝父实体运动 |
| 27/28/37 | `ACCELERATE` / `DECELERATE` / `ACCELERATE_EX` | 速度倍率 |
| 30 | `CONTINUUM` | 越过边界后从对侧出现 |
| 31/57 | `CANT_HIT_PLAYER` / `FADEOUT` | 不伤害玩家 |
| 32/33 | `CHANGE_FLAGS_AFTER_TIMEOUT` / `CHANGE_VELOCITY_AFTER_TIMEOUT` | 超时切换位图和速度 |
| 34 | `STASIS` | 被父实体保持，释放时按 `projectile_curve` 方向发射 |
| 40 | `ANTI_GRAVITY` | 高度向 `-50` 收敛 |
| 42/43 | `BOUNCE` / `BOUNCE_FLOOR` | 墙体/地面反弹 |
| 48 | `SMART_PERFECT` | 强转向 |
| 52 | `ACCELERATE_TO_POSITION` | 朝 `target_pos` 加速 |
| 56 | `ORBIT_PARENT` | 以父实体为轨道中心 |

未建模的运动类位仍保留不确定性包络：`BOOMERANG`（6）、`SLOWED`（24）、
`TRIANGLE`（25）。它们不会被当成直线，也不会被伪造为已恢复公式。

## 3. 曲线公式

`CURVE_LEFT` / `CURVE_RIGHT`：

```text
step = (|v| / 30) * projectile_curve * speed_multiplier
if CURVE_LEFT: step = -step
v = rotate(v, atan(step))
```

来源于现有 Planner 的 `advance_projectile` 分支，已提取到
`cpp/src/projectile_motion.cpp::advance_projectile`。

`TURN_HORIZONTAL`：

```text
if x 越过玩家横向位置且玩家相对纵向分量为 (-0.4, 0.05):
    v = { 2 * |v| * sign(player.x - x), 0 }
    清除 TURN_HORIZONTAL
```

## 4. 轨道公式

`ORBIT_CW` / `ORBIT_CCW`：

```text
center = target_pos
if ORBIT_PARENT: center = parent.pos + parent.vel * time
radial = pos - center
tangent = { -radial.y, radial.x }
if ORBIT_CCW: tangent = -tangent
correction = 0.5 * clamp(1 - |radial| / orbit_distance, -1, 1)
v = normalize(radial * correction + tangent) * |v|
if ORBIT_PARENT:
    v -= previous_parent_velocity
    ... 计算后加回 parent_velocity
    target_pos = center
```

`orbit_distance` 是轨道半径的收敛目标；为 0 时使用 `0.5` 的固定径向修正。

## 5. 多阶段与触发条件

`CHANGE_VELOCITY_AFTER_TIMEOUT`：

```text
period = projectile_change_timeout
change = period <= 0 || int(age / period) != int(previous_age / period)
if change:
    v = normalize(v) * (projectile_change_velocity * 30)
    if (projectile_change_flags >> 32) & 3 != 3:
        清除 CHANGE_VELOCITY_AFTER_TIMEOUT
```

`CHANGE_FLAGS_AFTER_TIMEOUT`：

```text
if change:
    swap(projectile_flags, projectile_change_flags)
```

`STASIS`：

```text
release = parent 为空，或
          (CHANGE_FLAGS_AFTER_TIMEOUT 已设置且 clock+tick > birth 且 timeout 到点)
if release:
    angle = projectile_curve * pi / 180
    v = { cos(angle), sin(angle) } * (30 * projectile_change_velocity)
    projectile_curve = 0.015
else if parent:
    按父实体位置/速度保持；高度向 -23 收敛
```

## 6. ForwardSimulator 集成

`SimProjectile` 新增：

- `native_special`
- `damageable`
- `motion_tick`

每个分支独立保存 `SimProjectile.native`，因此：

- `projectile_flags` 的切换不会跨分支污染。
- 曲线/轨道/多阶段状态都随 `fork()` 复制。
- 60 Hz 模拟中，偶数帧推进一个原生 30 Hz tick，奇数帧按新速度插值。
- `damageable` 使用高度门、`CANT_HIT_PLAYER`、`FADEOUT` 和
  `ANY_HEIGHT_ENTITY_HIT` 判断；高度门不再直接把弹幕删除。
- 危险图和碰撞仍使用真实半径；只有未建模运动使用 `maneuver_uncertainty`。

## 7. 机制库与证据状态

目前能确认的证据层级：

- `verified`：字段读取偏移、本地 J460 枚举位值。
- `inferred`：公式与原生更新函数的对应关系。仓库内没有游戏本体反编译更新函数的
  完整导出，因此不能把每条公式称为原版逐指令验证。
- `candidate`：未建模的 `BOOMERANG`、`SLOWED`、`TRIANGLE` 运动。

原始证据保存在：

- `cpp/src/reader.cpp`
- `python/src/engine_enums.json`
- `python/records/research/enums-public-latest.lua`
- `data/mechanisms/projectile_motion_models.json`

`data/mechanisms/projectile_motion_models.json` 记录公式、参数、来源和状态；
未验证模型不替换已有可靠直线/加速/追踪模型。

### 7.1 统一机制库版本链（v0.8.3）

`MechanismLibrary` 新增 `projectile_models` 字段，把该文件作为一个受版本控制
的机制制品保存。它和发现候选共用同一个 `version`、`history`、`current.json`
和 `library-vN.json`：

```text
IsaacGamebot.exe --mechanism-projectile <projectile_motion_models.json> <library_dir>
IsaacGamebot.exe --mechanism-projectile-index <library_dir>
IsaacGamebot.exe --mechanism-compare <a.json> <b.json>
IsaacGamebot.exe --mechanism-rollback <library_dir> <version>
```

- `--mechanism-projectile` 导入模型文件并提交新版本；
- `--mechanism-projectile-index` 输出格式、模型版本、模型清单和历史；
- `--mechanism-compare` 的 diff 增加 `projectile_models_status`
  （`added / updated / removed / unchanged`）；
- `--mechanism-rollback` 恢复的 `current.json` 同时恢复当时的模型文件内容。

仓库中已生成初始版本 `data/mechanisms/library/current.json` 与
`library-v1.json`（`projectile_motion_models.json` v1，8 个模型）。

## 8. 验证

```text
powershell -NoProfile -ExecutionPolicy Bypass -File cpp/build.ps1 -Test
```

新增覆盖：

- 曲线弹速度大小保持、方向旋转；
- ORBIT_CW / ORBIT_CCW 切线方向相反；
- `CHANGE_VELOCITY_AFTER_TIMEOUT` 到点改变速度并清除一次性位；
- 未建模 `BOOMERANG` 仍保留不确定性包络；
- 已建模特殊弹幕不再产生未知危险包络。

## 9. 边界

- 这是模拟器预测，不是实机无伤结果。
- `projectile_curve` 的物理单位、`projectile_change_timeout` 的绝对/周期语义仍来自
  现有 Planner 模型和枚举注释；没有原版反编译逐指令证据的部分保持 `inferred`。
- 不修改 WASM、Planner 决策链、MPC 搜索、Reader 或游戏文件。
