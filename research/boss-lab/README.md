# Boss 无伤研究（进行中）

本目录是与 Deepseek 并行工作的独立实验副本。目标是按后期到前期推进所有 Boss 的零受击击杀。Delirium 已由用户接受当前程度并停止长测；当前推进 Home。接受记录与实测无伤击杀成绩分开保存，目前尚无完整 Boss 击杀验收。

用户已确认继续使用原来的 Boss 目录。灰机页面曾因安全验证无法取得全文，未据此改写名单；当前名单仍为已保存原来源的 103 项。

Home 的纯 C++ 策略对照如下；全部为相同初始角色、种子和原版入口，遇首次受击即停止，均未完成击杀：

| 策略阶段 | 首次受击的游戏帧 | 电视剩余 HP | 结果文件 |
| --- | ---: | ---: | --- |
| 初始版本 | 381 | 1200 | `home-consecration-diagnostic.json` |
| Godhead 前摇与暴露排序 | 554 | 1200 | `home-godhead-anticipation-cpp.json` |
| 绕护盾瞄准 | 663 | 1119.5 | `home-shield-aim-cpp.json` |
| Tech Dot 倒计时预警 | 1092 | 1109 | `home-tech-dot-warning-cpp.json` |
| 原版激光曲线和半径 | 3510 | 556 | `home-native-geometry-cpp.json` |

当前另有原版前向试跑的完整事件链实验在运行；这些纯 C++ 机制仍在本实验副本中，尚未修改正式 Windows 主程序。

## 隔离与基线

- `snapshot.json` 记录冻结输入的 SHA256。`cpp/`、`offline/`、`runtime/` 均为独立文件副本；原项目和游戏安装未改动。
- 资源只读引用 `../runtime-instance/resources` 的研究副本，各次运行独立写 `training-runs/`。
- Boss 页面由 Fandom API 实际读取并保存为 `boss-page.json/html`；`boss-catalog.json` 提取 103 个去重 Boss，全部关联本地 `entities2.xml` 配置。原先 102 项漏掉了标题为 `??? (Floor)` 的 Hush 行，已修复并检查所有预期楼层都已解析。**实体映射完成不算战斗通过**。Home 等事件型 Boss 尚需完整原生入口。
- `catalog.py` 联合本地 `stages.xml`、`entities2.xml`、`bosspools.xml` 和 STB 房间表生成目录。Delirium 本体 `412.0.0`，专属原版房间 `s.boss.3414`，本体基础 HP 为 10,000。
- Hush 的原版房间先生成 `102.2.0`，再进入 `407.0.0` 阶段；目录保留这个前置入口。楼层房间候选补齐 `roomType/stageConfigId`，并标记需要匹配楼层上下文；候选命令本身不算已实测的完整遭遇入口。

## 验收

初始采用原版默认角色数值，不人工增加伤害、生命、射程或特殊道具。原版事件自然给予的能力、回血与属性变化按实际状态记录。正常模式需原生清房、Boss 全阶段结束、零受击、零扣血且未超时；无敌模式仅用于诊断，单独记录。后续用未参与改进的新种子验证。

Delirium 需要记录本局 Boss 遭遇历史。一次控制台里连续执行多个 goto 会在暂停期间覆盖待切换房间，不能证明实际遭遇。私有 `travel` 接口每次关闭控制台、等待目标原生 Boss 出现，再切下一房；已实际观察到 Delirium 复制 Chub 和 The Bloat。当前历史为 Monstro、Chub、Duke of Flies、Loki、The Bloat、Famine。

## 已找到的问题

1. 原策略在大房间中先最大化终点危险余量，再考虑进入射程，导致输出不足。独立副本调整了相同预计受伤/安全余量下的排序；尚未证明泛化，未迁入正式版。
2. Delirium 复制 Bloat 时，采集边界实体类型仍是 412，原来的 Bloat 前摇分支被跳过。原生伤害回调在帧 324 记录 `source=68.1.0 flags=8 amount=2`；命中前原始字段 `+bc8/+bcc` 为 `68/1`，动画 `AttackAlt02`。
3. J460 原函数 `0x004a6500` 的 `0x004a65d8..65de` 确实读取 `+bcc/+bc8`。适配器将两个字段接入 `morph_type/morph_variant`，仅在威胁规则分派时使用复制形态，保留实体身份及原始帧类型。
4. 接通规则后，同一受击帧回放能提前报告 `laser-warning`，但实测仍在帧 324 中招。复制 Bloat 激光的原生端点位于 NPC 上方 75px，旧预警按 40px。仅修正几何仍不足；v4 提前预留复制 Bloat 的三轴激光通道后，首次受击推迟至帧 3,285，但随后死于弹幕，未清房。
5. 原模型将正弦变速、曲线、摆动和锯齿弹统一按近似直线/匀速转弯预测，会误报安全。已从 J460 `Projectile::Update 0x00653070` 提取原生更新顺序和公式，并将 `+3a4` 年龄、`+428` 曲率、`+448` 摆动相位接入隔离 C++ 模型。原 getter `0x004d3060` 读取 `+428`，`0x004d3070` 读取 `+448`。
6. `results/projectile-modes-check.json` 验证普通摆动、增强摆动、左右曲线、曲线与增强摆动组合、锯齿和双向环绕八组原生参数探针：各 22–23 个连续样本，最长 20 帧预测误差均小于 0.000051px。正弦变速另有 27 个采样，一帧最大误差 0.000026px。校准使用无敌模式保护观察者、明确设置探针弹幕参数，不修改角色数值，不计为战斗成绩。

`results/windup-replay.json` 只证明前摇规则激活，不算实测无伤。`results/delirium-morph-v2.json` 为正常模式 3,600 帧、受击 1 次、损失 2 点血、未清房。v5–v9 的弹幕模型、接触余量和选路实验仍未清房；其中一路在 18,000 帧内存活但受击两次，Boss 剩余约 8,593 HP。加大接触余量并非普遍有效。所有失败与技术错误均保留。

## 原版引擎分支试跑

Delirium 复制 Famine 时，出现了远超采样速度外推的单帧位移；仅修正弹幕公式无法覆盖这些原生更新。`frame-runtime/` 在冻结的原版提升代码上添加主循环逐帧返回入口，保留游戏规则。每次候选试跑恢复整个 640 MiB 线性内存、原生 CPU 状态和输入状态，然后执行原版 AI、物理和伤害结算。

- `results/frame-snapshot-delirium.json`：恢复同一 Delirium 状态两次，相同动作连续 240 帧的完整观测哈希一致。该项使用 debug 3，只校准恢复能力。
- `results/frame-forecast.json`：三种动作分别前推 15 帧，搜索结束后现场状态不变；选中动作实际执行的 15 帧与预测一致。
- `results/delirium-native-no-search.json`：普通模式、不启用分支搜索的匹配对照，第 2,305 帧首次受击；当时 C++ 仍报告安全、余量约 18.9px。
- `results/delirium-native-escape.json`：受击前最后一帧，九个方向都在下一帧扣血；该探针保留失败状态。`results/delirium-native-escape-lead30.json` 则完整复现原策略第 2,305 帧受击，并证明提前 30 帧持续向左可实际执行 60 帧零扣血。现场 Monstro II 为 `JumpDown/state 7/collision 4`，下一帧新增四只 type-61 小怪；因此新增提前预留生成区域的实验规则，仍需整场复测。
- `run_forecast_boss.mjs`：C++ 报告不安全或余量小于阈值时，比较九个移动方向的原版未来；只统计最终实际执行路径的受击和输出。候选分支中的事件不能当作实际受击或击杀。
- `--commit=3` 可连续执行已验证零扣血预测中的前三帧，每帧仍执行原版更新、核对预测哈希并记录血量。它减少重复搜索，不跳过游戏帧。

已结束的普通模式完整尝试：`delirium-native-full-v1.json` 在第 22,956 帧首次受击；`delirium-native-commit3.json` 在第 17,335 帧首次受击。两场均未清房，受击前最后一帧的九个固定方向都无法避开下一帧扣血，不能算无伤击杀。新一轮将原生预测从 12 帧扩至 30 帧，并在固定方向均有损伤时比较“两段动作、途中转向”；`frame-forecast-turns.json` 已验证 8 帧右移再 7 帧左移的原生预测与实际执行逐帧一致。

## 射击运动继承

`inspect_tear_inheritance.py` 将参考签名唯一匹配到本机 J460 函数 `0x7aaea0`，原指令保存在 `data/tear-inheritance-native.asm`。默认无道具角色的普通眼泪使用角色 `+1660` 的运动采样向量乘以 `0.6*2`，并去掉逆着射击方向的分量。适配器只读该采样，隔离 C++ 将它用于瞄准、弹道遮挡和可破坏物射线；缺失采样时默认为零。

`tear-inheritance.json` 保留九组移动/射击组合的 45 发原生新生眼泪。44 发仍在飞行，另 1 发生成当帧已经碰撞死亡，其消失阶段速度单独保留，不用于校准飞行公式。`tear-inheritance-cpp.json` 对 44 发直接比较 C++ 速度与原生速度，最大误差 0.00001145 px/s。该项不证明下一帧角色运动不变，也未验证特殊道具对继承的禁用分支。击杀效率是否改善，以后续匹配战斗报告为准。

当前使用初始角色数值挑战 10,000 HP 的 Delirium，属于低属性压力测试。击杀时间同时受角色属性、实际命中和躲避占用时间影响，不能单凭时间长判定射击策略有问题。

`delirium-inheritance-control.json` 将继承直接用于瞄准后，第 7,646 帧首次受击；第 7,500 帧 Boss 剩余 9,494 HP，原先不使用继承的匹配对照剩余 9,464 HP，也未显示输出收益。因此 `use_tear_inheritance` 默认关闭，保留为明确开启的实验项。飞行速度校准通过，不等于使用当前采样去规划未来运动会改善战斗。

Monstro II 预留规则的长测试 `delirium-monstro2-spawn-full.json` 在第 17,452 帧首次受击：Delirium 一帧移动约 79px，越过线性速度预测；仍未清房。该结果取代仅观察前 3,600 帧的局部结论。

30 帧、两段动作的 `delirium-native-turn30.json` 在第 14,182 帧首次受击，亦未通过。失败附近 Delirium 单帧位移再次远超速度采样。`inspect_delirium_speed.py` 已定位原函数 `0x4a9860` 与 Famine 分支 `0x4a9a86`：原生循环可以额外累加多次位移，受 HP 与 `+be0/+be4` 内计数控制。当前保留指令和解释，正在复现长测试末段，核对实际计数、形态与位置；未将未校准公式当作已验证预测。

`famine-escape-lead30.json` 已复现第 17,452 帧受击，并验证提前 30 帧持续向左的另一路实际执行 60 帧零扣血。起点是 Famine 形态，`+be0=0x2ba9a480`，解析后的定时计数为 73、位移门控计数为 21，满足额外位移循环条件。隔离版新增 `native_motion_scale`，目前仅给复制 Famine 的接触轨迹使用原生额外位移系数（最多 5.5）；原生 AI 在循环内仍可能改速度和状态，因此这仍是需要战斗验证的预测改动。`delirium-famine-motion-control.json` 测试正在运行，并采集对应原生运动样本。

该长测试现已结束：第 25,254 帧首次受击，Boss 剩余 7,797 HP，未清房；受击时角色靠近上边界，与 type-23 小怪接触。`famine-motion-analysis.json` 对另外采集的 240 个 Famine 形态单步样本比较位移：平均误差由 6.743px 降至 1.322px，最大残差 10.542px，包含 AI 变化及碰撞，仍非精确未来预测。当前继续以修正后的 C++ 配合原版分支试跑挑战整场。

`delirium-famine-native-forecast.json` 最终在第 40,667 帧首次受击，Boss 剩余 6,570 HP，未清房。现场为复制 Monstro 的 `Walk/collision 0/animation frame 22`，目标点接近上边界。其 HP 已低于 2/3，原函数计算的 aggression 为 1；额外循环内的 AI 调用和动画更新次数受这个值控制，不能将所有复制攻击的前摇固定按每游戏帧推进一个动画帧处理。后续需用原生轨迹校准该时序。

## 角色运动与运行入口校准

`runtime-parity.json` 比较冻结的原 JSPI 入口与逐帧返回入口：先执行一帧相同的中立动作，随后相同输入 120 帧，完整观测（排除分配地址）的哈希逐帧相同。`runtime-parity-startup.json` 保留未等待中立帧的首次比较：初始控制台恢复过程中，两种入口第一次注入动作的时刻相差半个更新步，不能混用为同一控制起点。

`player-motion.json` 在中立帧之后，分别采集右、左、右上、左上移动 20 帧再松键 15 帧。普通地面上，每个 60Hz 子步先按旧速度更新位置，再加输入加速度并乘 `sqrt(.775)` 阻尼；一次 30Hz 观测包含两个子步。原函数 `0x779b40` 在 `0x77a21c` 读取 `.775`，在 `0x77a23b` 开方，并在后续分支作用于速度。

`player-motion-cpp.json` 验证 C++ 从各组初始状态递归推演整段 35 帧：四组的每帧位置、速度误差均为零。旧指数响应模型在右移/松键组的最大位置误差约 9.45px。新实现由 `native_player_motion` 实验参数控制，CLI 可加 `--native-player-motion=true`；尚未据此宣称碰墙、冰面或特殊道具运动已校准，整场对照正在运行。

直接启用新移动模型、未加分支搜索的 `delirium-player-motion-control.json` 在第 7,534 帧受击，现场为靠近下边界的弹幕夹击，未清房。四组自由移动的校准不等于整场策略通过。新一轮将其与原生分支搜索结合，并在控制台恢复后先执行一帧中立动作；该帧计入总步数及受击统计。原先不启用新移动模型的长搜索测试继续独立运行。

`player-motion-wall.json` 另保存按墙、反向和松键样本：原版水平边界约为 x=70/570，按墙后的水平速度接近零，小幅回弹仍存在；这些样本保留为后续地形碰撞对照，不并入自由移动的零误差结论。

## 长测试与机制复现

`delirium-player-native-forecast.json` 这轮新移动模型测试发生技术错误，未完成战斗。最后一条实际进度为第 57,300 帧、生命 6、零受击、Boss 剩余 5,820 HP；随后日志明确记录 384 MiB 客体堆无法分配 4 MiB 图片缓冲。该结果不是击杀通过。`frame-runtime-heap400/` 仅把隔离引擎客体堆扩至 400 MiB，堆末端仍低于客体栈底，未移动其他固定区；`runtime-parity-heap400.json` 的 120 帧完整观测与原入口逐帧一致。扩堆版已开始长测试。

`--diagnose-hit=true` 会保留最近 300 帧的内存锚点及实际动作，受击后恢复锚点并核对重放哈希，再试跑替代路径。`checkpoint-replay-control.json` 已精确重放受击前 205 帧，`checkpoint-forecast-replay.json` 则验证含分支搜索的 300 帧；`delirium-native-checkpoint-v1.json` 再次在第 40,667 帧复现原受击，精确重放最近 167 帧，并确认提前 30 帧的另一条路径可执行 60 帧零受击。技术重放成功与 Boss 战斗通过分开统计。

低血量阶段的原生动画样本保存在 `delirium-native-checkpoint-v1-animation-analysis.json`：131 个可比较样本中，126 个符合每游戏帧推进两个动画帧；其余含动画末端或重置情况。正常高血量的对应分析为 195/195 个样本符合原循环。前摇规则尚需接入并复测。

复制 Monstro 的落地规则现已接入 `native_attack_timing` 实验参数。原循环计数、血量比例及额外动画开关决定每游戏帧的动画推进倍率；`delirium-landing-timing.json` 将 C++ 预警起点与原生碰撞恢复时刻直接比较：3 次落地、40 个起点，平均误差由 0.2067s 降至 0.0267s，最大修正误差 0.0334s，均提前或等于实际落地。该校准只覆盖记录中的复制 Monstro 落地，不覆盖所有攻击。参数默认关闭，带 `--native-attack-timing=true` 的扩堆版整场对照已启动。

扩堆版这两轮均已结束：`delirium-player-native-heap400.json` 首次受击为第 73,863 帧（复制 Bloat 落地、左上边界附近）；`delirium-attack-timing-heap400.json` 为第 49,268 帧（复制 Monstro 落地）。均未清房，完整战斗未通过。各自的状态锚点重放完全一致，提前 30 帧的替代动作均实测连续 60 帧零受击。当前用前摇修正版的同一冻结策略，把原版前向试跑从 12 帧扩为 30 帧，检验提前脱困效果。

`forecast-hit-detection.json` 对原版 Monstro 首次受击做了正常/`debug 3` 对照：两者均在第 71 帧受击，无敌模式不扣血；候选试跑也正确报告受击。新试跑器统一使用已保存的冷却校准，零受击评分和连续执行均按受击次数判定，避免把不扣血当作安全。

Home 原版事件入口已由 `home-entry.json` 验证：`stage 13a` 的夜间 Home，在原版客厅靠近电视，自然生成 `950.0.0`，共执行 43 帧；白天入口的 600 帧未触发记录单独保留为 `home-entry-day.json`。这只核对入口，未通过 Dogma 或祸兽战斗。事件型房间可在原版清房标记为真时继续运行，不据此判定 Boss 已击杀。

`home-battle-diagnostic.json` 已进入实际 Dogma 战斗：过场暂停时继续运行，单独记录无逻辑帧推进的轮询，不把房间原有的清房标记当成战斗结束。C++ 用 `encounter_active` 保留事件型战斗攻击能力，原始 `cleared` 字段不变，验收仍强制 pending。该场第 381 帧受击，Dogma 本体/电视都还有 1,200 HP，未通过；原生锚点重放一致，提前 60 帧左下移动的替代路径可避开该次受击。

`home-battle-oracle.json` 使用返回 nil 的原生只读伤害回调确认第 381 帧伤害：`amount=2 flags=0 source=1000.19.0 size=30`，即 Crack The Sky 圣光柱。不能仅凭弹丸光环判断受击来源；光环脚本包含零伤害状态回调，`experimental_aura` 默认关闭，仍需核对其触发圣光的条件及真实危险范围。一次含分号的无效控制台观察器尝试单独保留，修正为单条 Lua 命令后才取得上述事件。

`frame-runtime-spawn-trace/` 只在原生 Spawn(1000,19) 的入口记录调用位置，不改写游戏状态，基础引擎保持独立。`home-battle-spawn-trace.json` 记录同一次第 381 帧圣光由 `0x783de1`（玩家更新函数）生成，伤害回调仍为 2 点。`home-consecration-calibration.json` 将原版指令与连续状态对齐：敌方光环按 `40 * Sprite.Scale.X` 查询，`0x41a960` 之后还有统一距离筛选，包含玩家半径；此前仅查看玩家加入候选列表的代码而对范围存疑，现已补全。零伤害状态通知使玩家 `+0x1ea8` 累计，本样本每游戏帧加一，连续 31 帧处于范围内，超过 30 后在玩家位置生成圣光。已核对的原生样本为 Dogma 光环 subtype 4，不能将零伤害通知本身计为受击。

Home 的 `--forecast=40` 实验在原版试跑中校验安全建议，并展开避险动作；初始目标为验证已复现圣光伤害与持续攻击，完整 Dogma→祸兽事件链仍未验收。输出 `home-consecration-forecast40.json`，不因原客厅 `cleared=true` 就判胜。

`home-consecration-exit-up.json` 另测离开光环后的清零：第 386 帧已无待处理的暴露通知，计数为 6，第 387 帧（原版三帧周期）清零；与源码相符。该强制向上分支第 357、381 帧均受击，只用于验证计数清零，不能算成功闪避。受击前 20、30 帧的固定方向分支均未找到连续零受击路线，提前 60 帧的分支可以；这说明需要在进入包围前改变位置，不能把末端无解归为所有更早动作也无解。

`data/boss-animation-events-all.json` 与 `data/animations/` 保存了 103 项 Boss 配置的原版动画；101 项含事件，共 999 个事件触发项。它们是未校准的动画事件资料，不是 999 条已实测攻击规则；以撒和 ??? 的动画无这些事件，也不表示没有攻击机制。

分支试跑使用离线引擎完整内部状态，目前尚未接入正式 Windows Gamebot。即使离线辅助控制取得零受击，也需要另外验证实际采集字段、输入和延迟条件；本目录仍无已验收的 Boss 无伤击杀。

30 帧预测的原门控版本 `delirium-long-forecast30.json` 在第 39,299 帧首次受击，未清房。最后 6 帧所有候选均已无法避免下一次伤害，但提前 30 帧向下移动仍能连续 60 帧零受击。单纯延长预测未解决问题。

新增 `--verify-proposal=true`：当 C++ 认为安全、原本不会启动搜索时，先用原版引擎验证拟执行动作；验证发现受击再展开其他方向和转向候选。`delirium-proposal-check-900.json` 的 900 帧短测零受击，其中 899 帧有原生预测，执行后状态哈希全部匹配，末尾 300 帧锚点重放也完全一致。该短测未清房；整场实验输出为 `delirium-verified-proposal30.json`，验收仍待实际结果。

开启失败诊断的后续测试默认记录 `committed-actions-*.jsonl`，只保存实际执行的动作与每帧状态哈希。`replay_forecast_actions.mjs <战斗报告路径>` 可在相同原生入口下直接重放整场动作并核对哈希，避免复现失败时再次运行所有策略搜索；这类重放不计作新的 Boss 无伤成绩。

`delirium-canonical-journal-120.json` 的 120 帧测试中，40 次原本不触发搜索的 C++ 安全建议有 13 次被原版试跑检出未来受击并重新搜索。该场零受击、未清房。对应 `delirium-canonical-journal-120-input-replay.json` 在独立进程重放全部 120 帧，排除地址分配字段后的状态哈希完全匹配。同进程预测仍核对包含地址的完整哈希。早期 `delirium-action-journal-120-input-replay.json` 因完整哈希包含进程间地址差异而失败，保留诊断；不把它算成游戏逻辑偏差。当前已经启动的 `delirium-verified-proposal30.json` 使用的是加入规范化哈希前的日志格式，不能据其日志声称已验证跨进程整场重放。

## 使用

用户已明确接受 Delirium 当前程度，相关长测已停止。`boss-acceptance.json`、`delirium-user-accepted.json` 将该项记为 `accepted-by-user`，目录重新生成时保留此状态。最后落盘记录为第 11,100 帧、零受击、生命 6，Delirium 剩余 8,922.30 HP；没有记录到击杀。后续推进 Home，不再继续对 Delirium 加压。

Home 当前进展：`home-consecration-forecast40.json` 完成 1,800 次实际调用，零受击，电视 HP 944.5，尚未击杀。C++ 的 `native_consecration` 实验把累计暴露、周期清零和 Godhead 发射前预警接入路径搜索；159 个计数转换完全符合原版记录，`godhead-windup.json` 对两波攻击的 66 个预测起点核对发射时刻和八方向速度，最大速度误差 0.00007 px/s；未来发射源位置仍为近似预测。仅接累计计数仍在第 381 帧受击；加入预警和暴露排序后，`home-godhead-anticipation-cpp.json` 首次受击延至第 554 帧，仍未击杀。该参数默认关闭。

事件房间最终输出的清房门控已补齐 `encounter_active` 条件。`event-clear-output.json` 在真实 Home 帧上受控切换清房/事件标志，确认活动事件保留射击和目标，普通清房仍释放输出。原始战斗帧的 `cleared=false`，因此该门控测试不作为原先输出偏低的原因证明，也不作为实战成绩。

`home-shield-collision.json` 的原版碰撞回调记录 11 发眼泪均撞在 Dogma 护盾本体，电视无掉血。`dogma_shield_aim` 在普通眼泪的射线检查中考虑这个护盾及其与电视的父子关系，推动寻找有效射击位置；新场 24 发撞到电视、6 发撞到护盾，电视掉血 80.5。

第 663 帧的新伤害由 Tech Dot (`1000.126.1`) 到期生成的激光造成。独立伤害入口日志 `home-shield-aim-damage-site.json` 定位到原生 Effect Update 的即时 Laser Update；`tech-dot-timing.json` 将 9 个倒计时与实际激光逐项核对，时刻完全一致，角度误差小于 0.001 度、半径 5、长度 1200。`tech-dot-cpp.json` 核对 C++ 预警输出。`dogma_tech_dot_warning` 以此添加带起止时间的射线危险。

第 1092 帧的漏判来自弯曲激光。原版内存的 HomingLaser samples 保存 20 个世界坐标点，原版实体 Size 为 16；原先只用直线端点，且旧采集半径 5、旧 C++ 又把环形半径的一半作为普通束宽 40。`native_laser_geometry` 改用原版实体半径及整条折线路径，一条曲线只计算一次危险。`native-laser-geometry.json` 对已复现的第 1091 帧状态核对：旧模型安全、间隙 19.74；新模型危险、间隙 -0.92，与随后受击相符。当前只验证了这次漏判，未来曲线形变仍为近似。

前向试跑的击杀收益也已修正：Home 瞄准电视时使用电视 HP，而非始终不掉血的护盾本体。`home-forecast-target-damage.json` 的 40 帧原版试跑预测 14 点、实际电视掉血 14 点、护盾本体掉血 0，逐帧状态一致。`home-shield-aim-cpp-input-replay.json` 完整重放 621 次实际输入；`home-tech-dot-warning-cpp-input-replay.json` 重放 1050 次输入并保存激光原生字段。以上机制校准不算新的无伤击杀成绩。

```powershell
python research/boss-lab/build_policy.py
node research/boss-lab/run_boss.mjs --history=true --steps=3600 --output=delirium-current.json
node research/boss-lab/check_windup.mjs
node research/boss-lab/run_forecast_boss.mjs --steps=120000 --commit=3 --output=delirium-native-forecast.json
```

测试参数可通过 `--parameters` 指定，已运行参数原样保存在每次报告内。`run_boss.mjs` 默认 `stage 12`，并核对实际初始 stage；早期两场未设楼层的诊断保留，但不算 The Void 完整验收。

原生只读伤害观察器通过隔离引擎内的 Lua callback 返回 nil 保持原伤害，使用 `Isaac.DebugString` 输出，记录在每次 `engine.log` 的 `[boss-hit]` 行。Lua 禁用了 `io`；一次尝试使用 io 的技术失败保留，不计入战斗成绩。

后续：先消除 Delirium 已复现受击并解决持续输出不足，完成多种变身历史和新种子验收，再进入 Home、终章分支、Corpse、Hush 等，最后逐章向前。尚未完成的 Boss 维持 pending，不以目录覆盖替代击杀。
