# 外部辅助日志（当前 0.2.9）

日志默认位于当前外部程序目录的 logs/，安装版在 D 盘。没有屏幕录制、数据包内容、Steam ID 或内存写入。

0.2.9 的 search.firing_navigation_status 区分 reachable、no_reachable_firing_lane 和 not_used；firing_navigation_start 为当前位置连接可达射击节点后的代价。不可达时该数值为 null，明确状态仍保留，不能把 null 当作零成本。结合 aim.rejections.wall 和移动决策可核对“射线被挡但仍停留”的问题。

0.2.8 的 combat 实体列表新增普通眼泪、宝宝、刀及其详细字段。以前的 combat 日志过滤了这些实体，因此不能凭旧日志中没有眼泪断定没有发射。player_controls 记录引擎是否允许操作与操作冷却；input_delivery 记录提交方式、OS 按下状态和游戏 IME 保存/关闭/恢复情况。这里的 engine_consumption_verified=false 表示 OS 层自身不能证明引擎接收，并非判定本次没有接收。

keyboard_input 为当前引擎键盘设备的八个动作绑定和动作状态，只记录移动/攻击绑定，不记录任意文本输入。联机玩家归属仍由 NetInputDevice 解析，不把键盘设备 0 当成本地玩家编号。search.goal_evaluations / goal_cache_hits 分别为独立站位评分和同坐标复用次数。

| 文件 | 内容与频率 |
|---|---|
| control-state.json | 最新启停、前台、暂停原因、实际按键、搜索/瞄准/运动摘要，约 0.5 秒更新；diagnostics.queue_dropped / write_errors 暴露日志丢失或写入故障 |
| control-events.jsonl | 状态改变、释放按键原因与释放前按键、读取错误；4 MiB 轮换，保留上一份 |
| engine.jsonl | 约每秒玩家属性、武器、决策、搜索、攻击、蓄力控制与耗时；16 MiB 轮换 |
| combat.jsonl | 每 6 个引擎帧（正常约每秒 5 次）紧凑完整危险实体、目标与预测几何、实际按键、路线、各候选评分及武器控制；8 MiB 轮换 |
| damage-context.json | 最近一次血量下降或受伤冷却开启的观测，含当前记录和之前最多 18 个样本（正常约 3 秒）；覆盖最近一份 |
| damage-events.jsonl | 带前置上下文的伤害观测事件；4 MiB 轮换 |
| engine-error.json / engine-snapshot.json | 最近错误与连接后首次完整快照，首次快照可能是菜单/空房，所以不能替代战斗上下文 |

每份 jsonl 保留一份 previous，轮换阈值合计约 64 MiB，单条记录与独立快照另计。后台队列最多 16 个待写任务，内存历史最多 18 样本；队列满时保留最新数据并增加丢弃计数，不阻塞控制等磁盘。日志不是逐帧无损录像。

no_fire_reason 与 rejections 区分射程、方向不准、障碍、近距离引爆风险等；weapon_control.reason 区分正常射击、未瞄准、蓄力、松手发射、等待蓄力归零和保留硫磺火尾段。危险轨迹记录抽样点，同时保留源实体的速度/状态/标志；不能把抽样日志当作引擎完整保存状态。

血量下降可能来自消耗生命等机制，冷却开启也不是精确的伤害来源回调，因此 source_attribution 固定标为 unknown，不会把最近的怪物直接认作凶手。换房、切换角色、游戏帧回退时重置前置上下文。持续 combat.jsonl 提供事件之后的数据。

所有详细写盘和 JSON 序列化在后台执行；输入线程仅构造有界样本和入队。实际日志效果、完整联机与密弹幕性能仍需真实对局验证。

0.2.6 搜索摘要新增 safe_exit_inputs 与 distinct_clear_exits：前者是能移动出去的按键输入数，后者排除了沿墙或惯性造成的实际同向重复。candidate_summary 的 goal 包含共用射线遮挡位置代价；aim.rejections.body_blocker 说明停火是否由身体遮挡造成。

0.2.7 motion 摘要新增 tracked_entities、calibrated_entities、calibrated_scale_range，说明当前运动单位的观测覆盖；没有观测时范围为 null，不代表倍率已经验证为 1。search.safe_region_guidance 记录安全区域引导是否激活及可达/宽敞节点数，safe_region_cost 为选中路线末端的软方向代价。受压判断不依赖敌人正在瞄准谁：即使目标是队友，实际路径接近自己仍需检查。

0.3.0 search.target_routes 记录每个候选敌人的 reachable、route_distance 和选敌 score；不可达距离记录为 null。weapon_profile.weapons 的 tear_flags / tear_flags_source、spectral / body_pass / grid_pass 记录原生标志及通道规则；unknown 不代表已验证没有效果。原始玩家快照同时保留完整 128 位 tear_flags。只读／影子规划的 control_frames=0 不能当作按键成功或战斗验证。
