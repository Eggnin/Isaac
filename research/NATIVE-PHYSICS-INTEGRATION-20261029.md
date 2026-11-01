# Gamebot 原生物理接入（2026-10-29）

> 修正：本页的 `Brimstone` 场景把无敌机关 `203.0.0` 误当可清目标，实际输出落在
> 原房 Type 62；相关 Brimstone 机制结论作废。压力板闭环见
> `PRESSURE-PLATE-MECHANISMS-20261029.md`。

正式 `cpp/` 已接入 `boss-lab` 中已校准的玩家与弹道运动模型。旧近似模型保留为显式基线开关，用于失败对照。

## 代码变更

- `PlannerConfig` 默认启用 `native_player_motion`、`native_projectile_motion` 和
  `native_laser_geometry`。
- 玩家运动按 J460 的 60 Hz 更新顺序实现：旧速度积分、输入加速、`sqrt(.775)`
  阻尼；30 Hz 观测推进两个子步，`model.cpp` 中的 35 帧校准轨迹与既有原生样本一致。
- 投射物增加 `projectile_age`、`projectile_phase`、`projectile_curve`、
  `projectile_orbit_distance`，Planner 按 J460 顺序生成摆动、增强摆动、左右曲线、
  锯齿和环绕轨迹，不再把全部特殊弹幕当作匀速直线。
- 激光支持原生采样折线 `laser_points` 与 `Shape::polyline`。采样向量不可读时回退到
  现有端点几何，不因可选诊断字段读取失败废弃整帧。
- Reader 新增偏移：`+0x3a4` 年龄、`+0x448` 相位、`+0x428` 曲率、`+0x430` 环绕距离、
  `+0x39c` 速度倍率；激光采样向量位于 `+0x480/+0x484/+0x488`。
- `research/offline/planner_frame.mjs` 同步输出上述字段，正式版和离线策略使用同一
  `cpp/src/model.cpp`、`cpp/src/planner.cpp`。

## 验证

- C++：115/115 通过。新增原生玩家 35 帧轨迹、折线激光、原生摆动弹道和 Reader
  弹道/激光字段测试。
- Eye、Bloat 两种子的外部短矩阵和 600 帧延长矩阵保留；历史 `Brimstone` 场次不计入
  Brimstone 覆盖或清房。
- 600 帧中 Eye 机制门槛通过；Bloat 第一种子的两个 phase4 用例通过，
  第二种子的 phase4 用例有 16 次预警但没有几何样本，门槛保留为未通过。
- 原生引擎 Monstro 使用新模型：2,297 帧清房，生命保持 6，0 受击、0 死亡。
  结果保存在 `research/native-policy-native-physics.json`。
- 当前源码、正式 EXE 和离线策略构建已冻结为
  `research/policy-baselines/policy-20261029-v5/`。

## 证据边界

- 玩家校准覆盖普通地面自由移动；冰面、传送带、特殊道具、被实体挤压和角色体型变化
  尚未纳入同一公式。
- 短程 Phase 4 矩阵中的 Type 9 弹幕 `projectile_flags` 均为 0，本轮没有在跨进程
  实战样本中触发非线性弹道；非线性公式由独立原版探针、C++ 单元测试和 `boss-lab`
  既有八组校准共同支持。
- 当前外部矩阵未出现非空 `laser_points`，折线激光字段由合成原生布局测试覆盖，仍需
  在真实曲线激光场景中补采。
- 原生物理更准确，但现有评分仍按旧近似模型调过：Monstro 清房从旧记录 1,343 帧变为
  2,297 帧；600 帧矩阵只验证躲避，不据此认定输出效率通过。
- 下一阶段是动作分块与逃生空间评分，随后扩大到 1,200 帧、多敌人和 Greedier 失败矩阵。
