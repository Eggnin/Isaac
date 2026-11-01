# Gamebot Phase 4 接口与证据审计

当前闭环使用正式 C++ Reader、MechanismSemantics 和 Planner。训练进程内部观测用于对照，决策输入始终由另一个进程的 ReadProcessMemory 取得。没有接入旧 C#/Go 决策。

**项目聊天回顾**

已逐页读取 app 中 cwd 为 `D:/Isaac` 的其他 14 个活动/归档聊天，共 139 个 turn；页游标均已读至末尾。索引和历史请求、最终回复保存在 `phase4-chat-review.json`。历史 Mod/C#/Go 测试是背景资料，不覆盖当前纯 C++ 的验收。`sessions/` 是游戏采样，不是聊天记录。

**实际控制接口**

|能力|正式程序|离线驱动|
|---|---|---|
|移动|WASD，8 方向及保持|`step({moveX,moveY,fire})`；轴取 -1/0/1|
|射击|方向键，四方向及松开|`fire: none/up/right/down/left`|
|同时移动与射击|`action_keys` 合并两个通道|相同一步中同时给出移动和射击|
|斜向动作|W+A 等组合|使用双轴；`action.move` 的字符串只支持单轴方向|
|炸弹、主动道具、卡牌、药丸|没有 Gamebot 决策/输出支持|本阶段不将低层 key 接口当作 Gamebot 支持|
|目标|`Aim.target` 为当前实体地址；追踪包含 seed|复用 C++ Aim，绝不由内部真值挑选目标|
|持续时间|按键保持到下一次状态变更/释放|每个逻辑帧执行一个动作，再等停帧采样|
|控制保护|默认关闭；F8、F6、F9、Shift；失效/过期则释放|不链接键盘输出实现，只向隔离工作器提交动作|

GUI 约每 16ms 采集和决策一次，规划 dt 为 1/60 秒；游戏 clock 为 30Hz。CLI shadow/observe 约每 33ms 采样，不创建键盘输出。离线闭环逐逻辑帧推进，规划 dt 明确设为 1/30 秒，不把 GUI 周期直接当成游戏帧。正式键盘实现有 SendInput 与定向 PostMessage 分支。

**数据与行为模型**

- 653 个精确 `Type.Variant.Subtype` 身份继续使用现有库。每个状态新增 `behavior`：进入、持续、退出条件、计时槽、阶段、危险对象、方向/范围、预测信息、来源及转换验证状态。未知项保留 Unknown/null。
- Matriarch State 13 的条件取自现有 `AI_004c59d0` 伪 C：State 3 中 AI I1≥301、AI I2≥3、RNG%5==0；进入时 I1=400；StateFrame 正值期间每帧 I1 减 2，按 StateFrame mod 8 和 RNG 生成 Fistuloid；I1 归零播放 RageEnd，StateFrame=-1 等待动画结束回到 3。静态条件与本次观测验证分开记录。
- `MechanismObservation.behavior_model` 将模型真正输出到运行记录。状态标签或攻击动画匹配不等于已验证攻击。
- `BehaviorEvent` 包含来源指针、实体 seed/精确身份、帧、前后 State、事件/阶段、参数、证据、置信度和预测帧。记录 Unknown 状态变化、Telegraph 候选、已观测危险实体 AttackStart、伤害过滤标志翻转，以及 Matriarch 阶段/Rage 候选。未观测的 Move/Aim/Summon 等不凭名字补出事件。
- 事件缓存按 PID、房间、时钟回退和 seed/身份处理；同一帧不重复报事件，实体地址复用不继承旧前摇锁。

**威胁与 Planner**

`Threat` 增加精确实体身份、当前可解析的发起者、绝对预测帧、结束条件、提前/反应式标志、证据、来源、置信度及时间/几何验证标志。`start/until` 继续是规划相对秒数；`end_frame=-1` 表示实际结束未知。旧规则的半径/时间包络是启发式安全范围，不能解释为新测得的物理碰撞半径或攻击时长。

Planner 继续合并全部投射物、激光、接触/冲锋、炸弹/死亡爆炸和机制预警，枚举 9 个首动作，逐小段检查运动碰撞和地形。排序先比较预计碰撞、再比较风险暴露，之后比较安全余量、射击机会、导航进度和转向代价。`strategy_mode` 明示 Survival、Output 或 SafeOutput；它描述这次选择的风险/射击条件，不声称已经恢复特殊 Boss 的伤害过滤。

修复了“语义库加载即全局关闭旧 Eye/Bloat/Brimstone 规则”：现在只允许当前 PID/房间/帧、对应来源和 rule_id 的 `planning_validated` 预警接管相应规则。未知变种不套用这三条旧预警。未通过机制验证的候选保留日志，正式路径继续旧回退策略。离线 `candidate` 模式可单独比较候选包络；它不是正式默认。

初轮 Eye 帧 10 规则实测晚 2 帧。两种子独立生成事件对照后，已接入精确 `身份:State:动画` 的时间证据：Eye `60.0.0:8:Shoot` 帧 12，Bloat `68.1.0:9:AttackAlt01`/`10:AttackAlt02` 帧 11，Brimstone `203.0.0:8:ShootLeft` 帧 27。其他变种、State 和朝向仍未知。`timing_verified` 只提升发射时点证据，不提升 `planning_validated`、几何或持续时间。晚于触发帧才观测到的动作标为反应式。候选 `until` 是短期评估包络，不能作为攻击实际结束时间。没有把这些候选升级为可靠的完整攻击模型。

**运行与评估**

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File D:/Isaac/research/external-validation/build.ps1
node D:/Isaac/research/external-validation/phase4.mjs --steps=1200 --output=D:/Isaac/validation/phase4-new-run
python D:/Isaac/research/external-validation/analyze_phase4.py D:/Isaac/validation/phase4-new-run
```

默认覆盖 Eye、Bloat、Brimstone Head、Matriarch、多敌人 Mixed，使用两个固定种子和 baseline/phase4 两种策略。baseline 是现有 Planner 不传 MechanismFrame 的旧回退路径，**不是冻结的旧 GUI 二进制**。初始状态比较移除跨进程地址，保留种子、身份、位置、HP、玩家属性；不把不同地址当成不同场景。

每个 JSONL 行保存独立内部真值、外部原始 Frame、语义事件、候选预测、全部规划威胁、9 个动作诊断、提交给引擎的动作、实际生成危险对象以及伤害/HP 变化。引擎运行目录另存配置和 engine.log。报告统计危险对象识别精确率/召回率、预警率、提前帧/误差、几何中心线包含率、扣血/1000 帧、死亡、有效掉血帧比例、攻击输入比例、敌人/目标 HP 下降下界、动作切换与未知状态。

攻击事件真值是独立内部观察器看到的 Type 7/9 实体出现，不能代替所有攻击调用。HP 下降下界只统计连续存在且 seed 相同的敌人，不把消失/换阶段猜成击杀。激光几何指标是预警包络对实际实体线段的采样包含率，**不是原生碰撞函数验证**。危险实体存活期间未受击单独报告；缺少独立伤害来源/反事实时，躲避成功率为 null。没有样本的指标也为 null。

Matriarch 的绝对动作结束帧已改为 Unknown；I1/2 仅保留为无冻结/延长时的条件估计。延长实测共 804 个相关计时样本，745 次减 2、57 次冻结、2 次增加 148，不再把它当固定 200 帧动作。

`--steps=4800 --cases=Matriarch --seeds="3JY1 6FLR" --isolate=true` 的延长测试使用已有训练清场命令；运行证据表明仍存在原房 Type 62，故报告按混合敌人压力测试解释，不能以请求 isolate 当作隔离成功。角色属性与伤害逻辑未修改，debugFlags 为空。

最终运行数据、失败保留与阶段覆盖见同目录 `PHASE4-RESULTS-20261029.md`。四场景精确机制门槛未全部满足，自动调参保持关闭。
