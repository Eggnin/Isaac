# 外部核心整合（当前 0.3.0）

本文件是最终整合状态的说明；MIGRATION-ATTACK.md 和 MIGRATION-DODGE.md 是早期模块交接记录，部分“尚未接入”项已在本轮补齐，以本文件为准。

## 0.3.0 共用发射通道与可达选敌

EngineReader 从 hash 对应的 EntityPlayer.TearFlags +0x1488 读取 128 位标志；依据游戏本地 enums.lua 的 TEARFLAG(0)/(1) 区分 spectral/piercing。make_profile 将玩家标志保留在玩家发射通道，未知宝宝不继承猜测值。EngineAim.channels 为 choose、position_cost_batch 和导航提供同一组射程/穿墙/穿透描述；World 另生成保留墙壁的 spectral 射线图，玩家移动图不变。逐眼临时／随机回调和未观测宝宝继承仍不保证完全等效。

FiringNavigation 缓存完整玩家中心可行图的粗导航拓扑，实际连接段仍检查地形。每帧共享起点距离场，所有目标比较可达射击种子与绕路距离；选中目标再构建反向场。EngineSearch 批量准备候选末端成本、射线和站位距离，不截断危险、预测帧或 held-input 路线。旧 _navigation_field 测试入口也使用这套实现。

124 项离线回归通过，现场冻结快照预热中位数约 22.57ms。本次独立原生 fixture 没有取得前台，control_frames=0，不能视为实战通过或在线兼容验证；24 项配置/存档备份已恢复。详见 TEST-RESULTS-030.md。

## 0.2.9 现场停留回归

现场日志证明 blocked shot 与 start_goal_cost=0 可同时存在；最近粗节点被阻塞会让导航返回 inf，而此前 goal_cost 丢弃此项，攻击位置成本也没检查地形射线。现在使用附近节点及可行连接段，保留不可达代价，并把地形射线代价接入实际 EngineAim.position_cost 调用。安全等级未降级，没有强制随机脱困。110 项离线回归及现场冻结快照结果见 TEST-RESULTS-029.md；没有新增真实战斗测试。

## 0.2.8 输入到实际动作

旧内置 MC_INPUT_ACTION 覆盖绕过了 OS 输入法，外部正常键盘路径却会经过输入法；仅保留 Lua 判定并不能自动解决这层差异。本机空房测试发现中文 IME 截获字母键，OS 显示按下但引擎移动动作仍为零。新增 input_ime.py，保存并暂时关闭游戏自己的默认 IME 窗口，释放控制时恢复原状态；不切换全局输入语言，不写引擎。生产版保留已验证的扫描码输入，虚拟键方式仅供测试。

EngineReader 新增已从当前 EXE 注册核实的 ControlsEnabled/ControlsCooldown 和键盘动作表只读状态；角色不能操作时不继续输出。日志补充眼泪/宝宝/刀以及输入法、OS 按键、引擎动作状态，避免把提交成功当成引擎实际接收。规划站位评分按同一坐标精确复用，不改变路线安全等级或危险数量。

105 项离线回归通过；无 Computer Use 的四敌原生房间短测实际无伤清房，16 颗眼泪，清房释放按键。完整范围、启动重试、输入法超时及存档恢复证据见 TEST-RESULTS-028.md。不是完整联机或全部机制等效证明。

## 0.2.7 预测单位及安全区域

修复位移倍率校准的残差单位和跳帧比较；两个稳定、同向的有效观测才启用校准，实体身份变化重新拟合，校准变化不算物理加速度。先用原始快照拟合，再以预测副本调用一次 EngineWorld：普通身体、目标、爆炸落点及跳跃/冲锋预留共享速度，玩家/武器观测和日志保留原始值。

近处受压时，RetreatField 以未来宽敞且有后续退路的节点建立连通距离场；碰撞、舒适缓冲及逃生等级保持优先，距离场只引导方向，不封禁紧急窄路。新增校准数量、倍率范围和安全区域日志。89 项离线回归通过，性能数据范围见 TEST-RESULTS-027.md。

LEGACY-PARITY-AUDIT.md 和 LEGACY-INVENTORY.json 列明原模块函数清单和已知差异，不能以模块接入替代全机制等效验证。本轮用户授权集中代码完成后的实机短测，实际结果另行记录，不用打包成功代替战斗验证。

## 源码对应

主要依据 `online/assist-source/` 的最新逻辑，对照 `isaac-access-assist/` 的较早版本。不是把 Lua 文件复制进程序目录冒充移植；以下模块已由 `engine_app.py` 的实际控制路径调用。

| 原模块 | 外部实现与接入内容 |
|---|---|
| main.lua/config.lua | EngineApp：只读快照、启停、失焦/暂停/换房释放、清房交还操作；24 帧规划、4 帧一段、12 束、8 帧末端退路 |
| world.lua | EngineReader、EngineWorld、SpecialHazards：实体/地形、飞行、地刺/按钮、拾取物避让、友方过滤、无伤害与无敌身体分离 |
| geometry.lua | HazardAtlas、engine_retreat：圆、线段扫掠凸包、旋转光束余量、环形径向极值、连续相对运动；角色半径与 SizeMulti |
| navigation.lua | Planner：全房间网格、角色半径可行区、全局射击线导航、障碍绕行和滑墙 |
| planner.lua | BeamSearch：分段转向、按碰撞/暴露/退路等安全层级排序；保留所有持续按键完整路线和上次路线续接；攻击收益在安全层级之后 |
| motion.lua | EngineMotion：48 样本惯性/速度拟合，另行拟合前后速度到位置位移的关系，属性变化重置 |
| prediction.lua | EngineMotion.apply/HazardAtlas：有限加速、转弯、追踪、跳跃、突变速度分支；逐帧扫掠，所有危险参与批量计算 |
| retreat.lua | EngineRetreat：四个远期层、节点与边阻断、连通空间和分支容量，末端脱困检查；只作安全路线间的偏好 |
| effects.lua | Warnings/SpecialHazards：地面伤害、火焰/云、冲击波、落点、脚踩、蔓延绿液、岩石波前及下一次出生预留 |
| laser_warnings.lua | Warnings：眼睛锁定、隐身激光、Vis、蒙斯特罗 II、暴食、Bloat、天使、敌手、坎卜斯等前摇；动态/弯曲/旋转/圆环激光 |
| world.lua 的 Boss/爆炸专项 | SpecialHazards：困难贪婪拳击、跳跃、变身、旋转、爆炸金币/碰墙爆炸、岩石；自爆怪/黑色精英死亡预留；Daddy Long Legs、蒙斯特罗、Stain；通用冲锋覆盖屏外路径 |
| weapons.lua | EngineWeaponController/EngineAim：普通/多通道眼泪、持续激光、硫磺火/短硫磺火、科技 X、刀、近战、炸弹/火箭/Fetus 等控制；松键发射、预蓄力、尾段、刀飞行与按距离蓄力 |
| weapons.lua 的射击协同 | EngineAim：分通道起点/射程/飞行时间与共用方向评分；下一步移动参与射击；观察眼位交替和眼泪速度继承；近身爆炸禁止攻击及光标偏离 |
| weapons.lua 的宝宝 | Incubus 真实起点；小硫磺火、小萌死戳、小亚巴顿、小喷吐和小咕噜使用动画/FireCooldown；普通射击冷却期间短松手，避免吞掉蓄力宝宝 |
| world.lua 的敌人优先级 | EngineTargeting：复活/重生/召唤优先、已观察子怪、爆炸金币；一颗当前在途眼泪只分配给最先预计命中的目标 |
| target.lua | EngineReader 在离线选择键盘控制器、在线按 NetInputDevice 的本地标记选择。原文件的手动 F8 玩家绑定没有照搬，遵循用户不标记队友/自己要求；已在当前双人对局只读核对本地 4 / 远端 3，完整联机流程尚未验证 |
| telemetry.lua/diagnostics.lua | engine.jsonl、control-state.json、错误与首帧快照：决策、输入、射击、搜索、校准、属性和耗时；单文件 16 MiB 轮换，留一份上一段 |
| native.lua/kernel.c | 数学与搜索移到外部 Python/NumPy；不加载原来的游戏内 Lua DLL。光束扫掠和环形极值数学参考 kernel.c |

## 已知差异，不能冒充精确等效

- 键盘提供八向移动/停止；适合的武器支持组合方向键八向射击。原模组连续摇杆角度/半推杆不能直接等同于普通键盘输入。
- GetCollisionCapsule 没有在游戏进程中调用；以 Size/SizeMulti 包围半径代替。完整多发眼泪参数、所有特殊眼偏移和引擎 GetTearMovementInheritance 仍未逐条外部复现，使用符合条件的出生眼泪观测校准，未观测时保留估计。
- 刀、宝宝冷却、主动充能等新增偏移来自本次 EXE 的属性注册/原函数静态分析，尚未逐件实战核对。旧公开结构不能统一平移。
- 在途伤害是当前快照的线性估计，不是游戏伤害回调。估计值不被当作确定致死而强制放弃攻击；特殊分裂/穿透/追踪/高度仍可能不准确。
- 原模组回调中的精确伤害来源、完整存档事件和部分遥测没有等价的外部事件订阅。记录当前能观察的状态，不伪造回调数据。
- 没有恢复 REPENTOGON、内置 EID、游戏脚本修改或 DLL 注入。联网归属、所有道具组合、无伤和性能提升都没有通过本轮实战证明。

## 本轮验证范围

用户要求不运行测试。整合后只进行源码审查和 PyInstaller 构建；没有运行新测试、启动游戏、发送按键、使用 Computer Use 或声称已无伤通过。构建能生成 EXE 不等于运行与战斗验证。上一版已由用户确认生效，保留该版本供回退。

## 0.2.2 避伤站位

修正搜索将最小安全间距截断为 12 像素后交给攻击评分的行为。物理碰撞仍为最高优先；新增按危险类型和速度的缓冲暴露积分，采用每帧最危险项而非累加预测分支。退路、末端逃生方向和随射程调整的远距离站位排在攻击对齐之前。评分分档和转向成本降低安全近似路线之间的往返切换。日志新增 comfort_exposure、stand_off_clearance、spacing_deficit_bucket、minimum_clearance、exit_scarcity。全部改动只经过代码审查和打包，没有行为/实战或性能验证，不保证无伤。

## 0.2.3 爆炸预留

Body.safety_buffer 为路线软偏好，已识别自爆敌人的缓冲覆盖 blast_radius+28，物理身体尺寸保持不变。实体炸弹增加全引信软预警以及提前 6 帧清场预留。攻击检查爆炸范围外 24 像素及命中时间对应路径点；敌人被移出列表后保留最后爆炸位置最多 4 帧（保守推测，非死亡回调）。没有新增未核实的敌人类型映射，亦未进行实战或性能测试。

## 0.2.4 多人目标、原地安全与时效

新增 engine_targets.py，仅用玩家列表和实体 target 引用解析当前观测目标，不按最近玩家推测目标归属。EngineMotion 追踪模型和 Eye 前摇不再始终指向本地玩家；未知 Eye 方向保持 warning，已观测锁定方向才用物理预留。追踪分支不再生成额外 enemy 攻击目标。

BeamSearch 对原地减速路线额外评估到 40 帧，需有低缓冲暴露、无实际碰撞、低预警、至少两条有余量的出口且长期退路不劣于移动路线，才允许安全停留。原地没有合适射击条件时仍可选择安全位置进行对齐。出口增加舒适余量评价，RetreatField 连接段也检查危险，不能只看未来节点。

新增 Body.latency_padding；Motion.compensate 根据实体、光束端点、旋转、圆环和自身速度为本地耗时增加保守几何余量，计时提前启动。发送时对超预算决策丢弃并释放控制，日志记录 local_delay_budget_ms 和 decision_age_ms。network_rtt_ms=null / not_verified。没有读取数据包或调用游戏内网络接口。相同控制段批量续接降低重复几何调用，未进行速度或游戏测试。

## 0.2.5 实际日志驱动修复

0.2.4 对局日志出现多次 safe_stationary_firing 与 predicted_hit_channels=0/fire=null 同时存在。当前停留需当前可射击和前次有效命中反馈，距离不足成本并入战术评分而非独立安全层级；碰撞、缓冲及退路不降级。石肥仔改 obstacle，不参与伤害、预警或未来危险连通阻断，只作路线身体成本。爆炸半径在敌人活着时也作保守危险预留。main_entity 引用用于区别硫磺火尾段与其他激光；fire=None 的预蓄力不再触发满蓄力释放。

新增 EngineDiagnostics 异步、限量、轮换日志，EngineAim 和 EngineWeaponController 分别记录瞄准拒绝与武器控制阶段；搜索保留各持续按键候选评分。受伤日志依据血量下降/受伤冷却开启记录，不将其推断成确定的伤害源；重置房间、角色或帧回退时清理上下文。详细格式见 LOGGING.md。

性能问题由离线 251 危险场景约 215–229ms 暴露，优化 Retreat 圆形批处理后同机同场景三次约 139–156ms；所有危险和采样保留，旧实现保留为对照。完整测试、过时 fixture 修正和证据边界见 TEST-RESULTS-025.md。授权本轮离线测试，仍未实战验证。

## 0.2.6 退路真实性与一致射线模型

退路原先按成功的键盘输入数计数，沿墙滑动或惯性可能让多种输入落在同一个真实方向，虚增逃生分支。现在按实际位移的 20 度方向分离计算最大不重复子集，并保留原输入数供诊断；无硬墙角禁令。日志包含 safe_exit_inputs / distinct_clear_exits。

新增 shot_geometry.py，共用普通非穿透投射物身体遮挡测试，接入 EngineAim.choose、position_cost 与 Planner 的射击线导航种子。导航缓存键包含遮挡体身份、位置量化和半径，射击检查仍读当前身体位置。主要光束/穿透武器导航不施加普通身体遮挡。此改动解决代码层面“射击已知被挡、导航却把该位置当作可射击终点”的矛盾，不能据此宣称此前每次停火均由这一原因导致。

HazardAtlas.measure 的纯圆形分支去除大块 XY 中间数组，reference=True 保留原计算以做七项输出对照；所有危险、激活时间窗口和预测轨迹保留。78 项离线测试与模拟耗时详见 TEST-RESULTS-026.md，无本版游戏或网络实测。
