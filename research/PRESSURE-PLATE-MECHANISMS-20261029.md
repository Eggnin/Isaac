# Brimstone Head 与压力板机制（2026-10-29）

2026-10-30 的按钮扩展与现行规则见 [更新记录](BUTTON-TRAP-INTEGRATION-20261030.md)。下方原版观测及历史成绩保留。

`203.0.0 Brimstone Head` 是无敌房间机关，不是击杀目标。原版房间清空后它们仍可保持
`active=true / invulnerable=true / hp=1`，不能用 HP 归零、`dead` 或普通敌人存活数判断
机制是否完成。正确的完成信号是房间描述符 `+0x44` 的
`FLAG_PRESSURE_PLATES_TRIGGERED = 1 << 1`。

其他常态机关 NPC 的识别和原版实跑见 `MECHANISM-ENTITIES-20261029.md`。

## 原版观测

固定种子 `3JY1 6FLR`、房间 `d.315` 的原始引擎观测：

- 房间为 `15x9`，初始 `clearFlags=0x40`。
- 四块普通压力板为 `20.0.0`，位置 `(1,1) (13,1) (1,7) (13,7)`，初始 `state=0`。
- 脚踩后对应格变为 `state=3`，并持续保持。
- 四块全部触发后 `clearFlags=0x42`；清房完成时为 `0x43`。
- 八座 Brimstone Head 的实体记录在机关触发前后仍可能可读，因此“关闭”必须由 bit1
  和后续攻击/威胁停止确认，不能改写成“八座雕像均已死亡”。

`GRID_PRESSURE_PLATE=20` 的 `variant=0` 是普通触发板；`variant=2` 是 Greed 模式
攻击板，后者只在波次计时器武装时作为危险地形。

## C++ 实现

- `Frame` 新增完整 `clear_flags` 和独立 `pressure_plates_triggered`；`cleared` 继续只
  表示 bit0，不再把 bit0 与 bit1 混成一个布尔值。
- Reader 读取完整 32 位描述符标志。主程序与离线观察器都把普通 `20.0.0` 视为可通行，
  Greed `20.2.0` 继续按当前波次危险。
- Planner 在 bit1 未置位时选择最近的未触发普通板作为房间目标；风险碰撞仍优先于
  机关导航。只有 `state=3` 才计为已按下，完成还需房间 bit1，停留时间不作为完成依据。
- 机关未完成时暂停自动射击，避免把受机关控制、随后会关闭的小怪当作击杀目标；
  bit1 置位后恢复普通索敌。
- bit1 置位后停止压力板导航。`203.0.0` 永远不进入 `targetable()`；bit1 置位后其
  自身预警和接触威胁也被抑制，已经生成的 Type 7/9 攻击仍按实时几何躲避。
- 机制完成不依赖 `203` 的 HP、`dead` 或实体移除。其他受压力板控制的敌人由逐帧
  `active/dead/collision/targetable` 状态处理；银按钮解除仅作用于已登记的联动陷阱。
- Brimstone Head 四向子类型已核对：`0/1/2/3` 对应左/上/右/下。四面 `Shoot*`
  前摇都生成预警，规划宽度使用实测激光碰撞半径 `16`。
- 房间内观察到的网格危险格会被 Planner 记忆。地刺收起、对应指针暂时变为空时，
  后续帧仍按危险格绕行，避免把安全窗口当成永久通道。
  全部银按钮解除后清除此记忆，采用当前实际地形。

## 原版闭环

无 `debug 3`、无角色数值修改的 phase4 结果：

| 项目 | 结果 |
| --- | ---: |
| 清房 | 是 |
| 帧数 | 558 |
| 生命 | 6 到 6 |
| 扣血 | 0 |
| 受伤冷却命中 | 0 |
| 四块板最终状态 | 全部 `state=3` |
| 最终 `clearFlags` | `0x43` |
| Brimstone 被选为射击目标 | 0 帧 |
| Brimstone HP 下降 | 0 |
| bit1 后 Brimstone 自身威胁 | 0 帧 |

复现：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File research/external-validation/build.ps1
node research/external-validation/pressure-plates.mjs `
  --output=validation/mechanisms-d315-generalized-final-20261029 `
  --steps=1800 --debug=
node research/external-validation/phase4.mjs `
  --cases=Pressure --steps=1800 --seeds="3JY1 6FLR" `
  --output=validation/phase4-pressure-d315-mechanisms-v10-20261029
```

证据：

- `validation/mechanisms-d315-generalized-final-20261029/report.json`
- `validation/mechanisms-d315-generalized-final-20261029/trace.jsonl`
- `validation/phase4-pressure-d315-mechanisms-v10-20261029/report.json`
- `validation/phase4-pressure-d315-mechanisms-v10-20261029/Pressure-3JY1-6FLR-phase4.jsonl`

## 旧证据修正

此前名为 `Brimstone` 的 phase4 场景把 `203.0.0` 当成可清目标，实际射击落在原房生成的
Type 62 身上；因此它的“零伤”“未清房”和 HP 下降不能作为 Brimstone 击杀或机制覆盖。
该场景已从 phase4 默认用例移除，替换为 `Pressure @ d.315`。当前结果覆盖这一房间和
固定种子；全敌人、全部攻击组合和其他压力板房间仍需逐房实测。
