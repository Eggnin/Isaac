# 参考源码审阅与新实现边界

2026-10-18 补充攻击审阅：重新阅读 EOP `core/direction_engine.lua` 的近身目标预测、预测跨过角色与换目标锁定保护，以及 `core/combat_api.lua` 的真实射线对齐说明。新实现独立计算四个射向的相对交会位置，连续瞄准解截获时间，减少旧目标黏性并考虑近身补刀；没有复制这些文件。

核对 [EntityPlayer ShotSpeed 与 GetTearMovementInheritance](https://wofsauge.github.io/IsaacDocs/rep/EntityPlayer.html)：普通泪弹默认原生速度为 `ShotSpeed * 10`，移动继承由原生 getter 读取。`native-greedier-007/game.log` 的四组 `tear_motion` 显示泪弹每逻辑帧位移约为自身 Velocity，不能沿用本机角色接近 2 倍的位移权重。新版分别观测泪弹和角色的单位；激光不使用普通泪弹的飞行提前量。接触率与实际敌人 HP 变化分开记录，不把伤害尝试等同于实际伤害。

日期：2026-10-17。用户给出的第三个链接重复了第二个，实际两个不同模组。

## 介绍来源

- [AutoAimPro × EOP](https://steamcommunity.com/sharedfiles/filedetails/?id=3778464661)：通过 Steam 官方 `ISteamRemoteStorage/GetPublishedFileDetails/v1/` 读取当前介绍，结果已保存到 `sources/3778464661-workshop.json`。本机 metadata 版本为 0.8.20。
- [人机共驾 / Gentle Dodge](https://steamcommunity.com/sharedfiles/filedetails/?id=3800092423)：直接读取工坊页面介绍，文本保存在 `sources/3800092423-description.txt`。本机 metadata 版本为 0.5.1。

## 实际审阅

源代码位置：`D:/Steam/steamapps/workshop/content/250900/<ID>`。重点阅读而非声称逐行审计全部源码：

- EOP：`main.lua`、`core/input_manager.lua`、`core/target_manager.lua`、`core/fire_controller.lua`、`core/weapon_profile.lua`、`core/auto_fire.lua` 的蓄力段、`aeb/config.lua`、`aeb/bullet_hell_budget.lua`，以及危险检测与路线评估中的接触、跳跃、激光和冲锋段。EOP 的 Lua 源码共有 31 个文件，约 868 KB；本次没有复刻其全部敌人数据库或角色逻辑。
- Gentle Dodge：入口、README、VALIDATION，`gd/config.lua`、`gd/geometry.lua`、`gd/hazards.lua` 和 `gd/planner.lua` 的移动评估、锁定释放和宽范围逃逸。

## 采用的思路与明确差异

参考惯性预测、连续线段碰撞、原输入恢复、蓄力释放调度和未来活动空间等思路，重新编写独立的模块。未把第三方 Lua 源码打包进新 Mod。

Gentle Dodge 的敌人身体仅作为硬约束，`choose` 在只有硬危险时不触发闪避；其 `H.spikes` 只显式检查 `GRID_SPIKES`。这是它的辅助定位与当前实现范围，不代表对它全部用途的否定。新 Mod 以完整自动战斗为目标，主动处理接触危险，并检查 `GRID_SPIKES_ONOFF`。

EOP 已有较复杂的冲锋、激光和未来自由度处理。其性能配置包含 40/56 等危险数量设置，但其预算模块保护附近、迫近和特殊运动威胁；不能概括成“所有弹幕都随意丢弃”。本实现使用逐时间片空间索引与可达范围过滤，保留全部与候选路径可能相交的危险，保持固定预测时长。

新实现的攻击位置偏好只在同等安全等级的候选路线间比较。搜索允许中途改变方向，不局限于整段保持一个方向。对环形与旋转激光使用独立几何。

## REPENTOGON API

核对官方 [EntityPlayer](https://repentogon.com/EntityPlayer.html) 和 [Weapon](https://repentogon.com/Weapon.html) 文档：槽 1 为主武器；读取 `GetCharge`、`GetMaxCharge`、`GetMainEntity` 和 `IsAxisAligned`。没有使用这些 API 改写伤害、蓄力数值或发射实体。

## 对照结论的范围

`validation/comparison-tests.lua` 直接加载 Gentle Dodge 原规划器：在仅有接触危险的模型场景，原规划器不主动接管，而新实现找到安全路线。另一个相同 24 帧预测长度的几何场景，需要转弯才能避开追来的危险，新实现找到可行路线，而被比较的 16 个全力度持续方向都不可行。

这些结果不能证明游戏内胜率、九蜘蛛实测、全 Boss 覆盖或无伤通关，也没有完成对 EOP 的实机胜负评估。

## 0.2.0 后续改进

2026-10-17 增加局部运动参数拟合、碰墙后的停下/滑动、主路线末端 8 帧动态退路验证、追踪弹转向分支、原生目标方向的软冲锋预警，以及附加武器蓄力协调。修复分段转向代价漏传上一段输入的问题。实际伤害记录与伤害尝试回调分离，致命伤也保留诊断。

新增纯模型回归验证拟合能恢复已知系数、拒绝异常样本，验证碰墙不穿越、末端来弹影响出口数量、实际碰撞优先于不确定预警，以及排序预计算与原安全比较器一致。验证边界仍是独立 Lua 进程和引擎形状的模拟对象；没有据此宣称实机无伤性能改善已被证明。

## 0.2.1 连续激光与完整退路

重新核对 EOP `aeb/danger_detection.lua` 的 `getLaserSamples`、`buildLaserPrimitive`，其代码也处理未初始化的激光长度。新实现修复 `MaxDistance=0` 被 Lua 当作真值而导致后备光束为零长的问题。核对 [EntityLaser API](https://wofsauge.github.io/IsaacDocs/rep/EntityLaser.html) 中的 `GetSamples`、`GetEndPoint`、`IsCircleLaser`、`Radius`，移除对未有文档依据的 `IsActive` 字段的依赖。

独立实现相对运动的扫掠凸包，以及半径线性变化、归零分段的环碰撞判断；观测位置与曲线端点运动时仍保留原预测分支。纯模型随机场景与密集时间采样对照，不代表原引擎的攻击轨迹一定满足预测模型。

新增综合场景复现短期攻击位置偏好裁掉已知安全完整路线的问题；保留全部候选输入的完整持续路线，与原分段转弯路线共同比较。未减少搜索宽度、预测时长或威胁数量。实机日志仍未出现该版本的运行证据，未启动训练或修改存档。

## 0.2.2 路线连续性与停顿

在现有分段搜索和完整持续方向之外，保存并重新验证上一帧的完整控制序列。当前位置、速度和危险均重新读取，同等评分才优先延续；手动接管、切房和缺帧清除延续。敌人观测加速度单独作为分支，接触基础轨迹保留当前速度；已停下的敌人不再被减速估计推向后方。

转向/追踪预测由重复从头积分改为逐帧递推，角色积分减少中间向量。保存本 Mod 的 0.2.1 源码作为数值对照基线，验证轨迹坐标、运动结果、碰撞评分和动态出口数量一致。`validation/performance-v0.2.2.txt` 记录同一模型、7 次测量中位数：150 个直线威胁 46→37 ms，150 个混合转向/追踪威胁 84→29 ms。这是独立 Lua 进程的模型结果，不是游戏内 FPS，也不是与参考 Mod 的性能比较。

## 0.2.3 危险覆盖与原生炸弹接口

重新阅读 EOP 的 `aeb/databases.lua`、`aeb/environment_overrides.lua`，以及 `danger_detection.lua` 的 `buildEffectPrimitive`、`buildEffectPathPrimitive`、炸弹段。采用分类区分危险效果、友方地板、无害场景效果的思路；归属关系同时遍历两条父链，有环时停止。没有照搬 EOP 的完整效果或敌人状态机，也没有将其 Lua 打包。

核对官方 [EntityBomb](https://repentogon.com/EntityBomb.html) 与 [原版 EntityBomb](https://wofsauge.github.io/IsaacDocs/rep/EntityBomb.html)：倒计时应调用 `GetExplosionCountdown()`，原代码读取 `ExplosionCountdown` 字段属于本实现错误。现在优先使用真实方法并读取 `RadiusMultiplier`；本机 DLL 字符串中存在该 getter 绑定名。未知读数仅软预警，不使用 `150-FrameCount` 之类的猜测充当精确原生时间。

核对 [EntityEffect](https://wofsauge.github.io/IsaacDocs/rep/EntityEffect.html) 的静态 `IsPlayerCreep` 和 [EffectVariant](https://wofsauge.github.io/IsaacDocs/rep/enums/EffectVariant.html)。新回归直接从已安装 REPENTOGON 的 `enums.lua` 读取 `EffectVariant`、`CollectibleType`、`EntityType` 的表，避免测试自创枚举。特别区分 `CREEP_SLIPPERY_BROWN=94` 与 `CREEP_LIQUID_POOP=195`，不沿用把两个不同效果混成同一数值的假设。

补充常见效果、陷坑和清房残留危险保护。冲击波后续路径、未知落点时机和最低半径仍是估计；它们没有获得逐种原引擎验证，不据此认定全部 Boss 机制已覆盖。炸弹移动、连锁爆炸和特殊形状仍是不完整部分。

## 0.2.5 长期退路与代码性能

重新阅读 EOP `aeb/danger_detection.lua` 的 `getNpcTelegraphProfile`、`getNpcTelegraphDelay`、`shouldPredictCharge` 和 `buildNpcChargePrimitive`：参考“明确前摇与实际运动分开、原生倒计时优先”的做法。核对 [EntityNPC.ProjectileDelay](https://wofsauge.github.io/IsaacDocs/rep/EntityNPC.html#projectiledelay) 为发射前倒计时；该字段本身不能证明攻击是激光，因此本实现同时要求相关动画和有效目标，仅输出软预警，不照搬其未校准的 Boss 时序或半径。

独立实现基于房间连通图的多时段空间预留：预测接触危险和持久地板对节点及连接边的占用，倒推可持续到达的空间和岔路。对最终完整候选评分，不参与中间路线裁剪；不扩展成所有弹幕的精确长期模拟。几何与静态场复用有值级失效条件；末端检查只省略在原有高优先级下严格落后的路线，保留全部并列候选。

163 个检查组通过；优化部分与保存的 0.2.4 对照，包含 4800 次查询、40 个随机地图、32 组完整路线。模型计时见 `validation/performance-v0.2.5.txt` 与 `cold-performance-v0.2.5.txt`，包含开启新退路后的总体开销，也披露冷缓存略慢的案例。本次未启动游戏或新训练，0.2.4 的原生实测不算作新版本实测。

## 0.2.6 用户实测反馈：接触、自爆与计算延迟

用户日志中 0.2.5 两次 HIT 源为 `16:2`，此前 TRACE 的 `predictedSafe=true`、计算 39–45 ms；摘要保存为 `validation/reported-v0.2.5-hits.log`。`sourceObserved=false` 本身不证明为何缺失，但原实现确实只以正接触伤害及身体尺寸识别普通 NPC，未为死亡／碰触自爆单独预留范围。

查阅社区维护的 [Sucker / Bulb](https://bindingofisaacrebirth.wiki.gg/wiki/Sucker)、[Mulligan / Mulliboom](https://bindingofisaacrebirth.wiki.gg/wiki/Mulligan)、[Monsters](https://bindingofisaacrebirth.wiki.gg/wiki/Monsters) 对零接触伤害的充能吸取、自爆与变种区别的说明；与本机原生 `enums.lua` 的 `ENTITY_SUCKER=61`、`ENTITY_MULLIGAN=16`、`ENTITY_BOOMFLY=25` 对照。没有声称读到原引擎 NPC AI 源码或查明每个爆炸的精确时序、半径。80 的爆炸预留半径仍是保守估计。

代码新增 Bulb 充能接触、已识别自爆类型的范围预留和近距离射击保护；实际位置／速度分别拟合，避免把原生速度直接当逻辑帧位移。位置回放结果是按过去样本预测后续已记录位移，未据此宣称避伤成功率。

门距离的包围盒排除、零临时向量的相同视线采样、固定房间位置缓存与空危险区域证明均保持原覆盖条件。动态网格碰撞、地刺与门每帧读取；不能证明区域空时仍逐步检查。`validation/close-contact-tests.lua` 有新回归与随机数值对照，`performance-v0.2.6.txt` 与保存的 0.2.5 本 Mod 源码比较，含真实常见的四扇门配置；不能与旧无门模型直接混成同一计时序列。
