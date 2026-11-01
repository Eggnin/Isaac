"""Generate the human-readable Phase 4 evidence summary from retained runs."""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
def read(path):
    return json.loads((ROOT / path).read_text(encoding="utf-8"))

suite = read("validation/phase4-final-20261029/report.json")
candidate = read("validation/phase4-main-20261029/report.json")
rage = read("validation/phase4-matriarch-extended-20261029/event-assertions.json")
timing = read("data/mechanisms/gamebot_phase4_timing.json")
retest = read("validation/phase4-timing-retest-20261029/report.json")
rows = [c for c in suite["cases"] if c["policy"] == "phase4"]
checks = read("bin/test-results.json")
lines = [
    "# Phase 4 实现与测试结果（2026-10-29）", "",
    "已交付控制接口审计、逐身份行为模型、统一事件/威胁结构和 Planner 接入，并实际运行跨进程闭环。完整机制验收尚未全部通过，自动调参未启动。", "",
    "**代码与接口**", "",
    "- [接口审计](PHASE4-AUDIT-20261029.md)，含输入、频率、缺口及证据口径。",
    "- [行为/事件结构](../../cpp/include/gamebot/model.hpp) 与 [语义实现](../../cpp/src/semantics.cpp)。",
    "- [Planner](../../cpp/src/planner.cpp)：逐来源接管、未知变种回退、陈旧机制拒绝、风险/输出解释。",
    "- [外部闭环驱动](phase4.mjs)、[独立事件断言](analyze_phase4.py)、[时间证据构建器](build_phase4_timings.py)。",
    "- [运行时模型](../../data/mechanisms/gamebot_runtime_semantics.json) 与 [时间证据](../../data/mechanisms/gamebot_phase4_timing.json)。", "",
    "**最终双种子对照**", "",
    f"20 场全部执行完成，共 {sum(c['frames'] for c in suite['cases']):,} 个外部决策帧；10 组归一化初始状态完全匹配。每组 baseline/phase4 的扣血、输出下界和完成状态一致。baseline 是现有 Planner 的无 MechanismFrame 回退路径，不是旧 GUI 二进制。", "",
    "|场景|种子|帧|扣血|敌人 HP 下降下界|指定目标 HP 下降下界|结果|",
    "|---|---|---:|---:|---:|---:|---|",
]
for c in rows:
    result = "死亡" if c["deaths"] else "清房" if c.get("cleared") else "超时"
    lines.append(f"|{c['name']}|{c['seed']}|{c['frames']}|{c['damage']:g}|{c['enemy_damage_observed']:g}|{c['target_damage_observed']:g}|{result}|")
lines += ["", f"正式路径的 10 场中记录 {sum(c['attacks'] for c in rows)} 个危险实体出现，识别精确率/召回率均为 1（仅限已采样 Type 7/9 出现）；共扣血 {sum(c['damage'] for c in rows):g}，{sum(c['deaths'] for c in rows)} 场死亡。没有把它们称为无伤策略验收。", "",
    "每场预警率、提前量、误差、几何中心线包含率、扣血/1000 帧、有效掉血帧比例、射击输入比例、动作切换频率、未知状态比例见 [report.json](../../validation/phase4-final-20261029/report.json)。缺少独立伤害来源及反事实时，躲避成功率保持 null；敌人消失不猜成已造成剩余 HP 的伤害。", "",
    "**发射时点验证与修正**", "",
    "|精确身份:State:动画|首次激光出现的动画帧|跨两种子实体样本数|",
    "|---|---:|---:|",
]
for key, value in timing["timings"].items():
    lines.append(f"|{key}|{value['trigger_animation_frame']}|{value['samples']}|")
lines += ["", "原 Eye 帧 10 规则的 +2 帧误差已保留。修正后用新引擎进程复测 Eye/Bloat/Brimstone 各 240 帧，已匹配预警的误差分别为 " + ", ".join(f"{c['name']} {sorted(set(c['prediction_errors']))}" for c in retest["cases"]) + "。只提升这些精确身份/State/动画的 timing_verified；其他朝向/变种、危险几何和持续时间不继承。planning_validated 仍为 false。", "",
    "**Matriarch 延长测试**", "",
    "相同种子两策略各推进 4,800 帧，均扣血 5、未清房；指定本体 HP 下降下界 560。虽然请求已有训练清场命令，初始日志仍含 Type 62，按混合压力场景解释。", "",
]
for c in rage["assertions"]:
    if c["policy"] != "phase4":
        continue
    lines += ["|发生帧|State|动画|AI I1|AI I2|", "|---:|---:|---|---:|---:|"]
    for event in c["rage_transitions"][:4]:
        lines.append(f"|{event['frame']}|{event['state']}|{event['animation']}|{event['ai_i1']}|{event['ai_i2']}|")
    lines += ["", f"外部阶段事件与独立内部观测匹配；{c['spawn_matches']}/{c['spawn_predictions']} 个危险对象出现断言匹配。计时样本 {c['rage_timer_samples']}：{c['rage_timer_decrement_matches']} 次减 2，{c['rage_timer_frozen_samples']} 次冻结，{len(c['rage_timer_extensions'])} 次延长（均增加 148）。可靠结束帧已撤回为 Unknown；I1/2 只作附条件候选。", ""]
lines += ["**保留的失败与未完成验收**", "",
    f"初轮候选包络试验的 phase4 标签代表当时未加门控的候选路径，10 场合计扣血 {sum(c['damage'] for c in candidate['cases'] if c['policy']=='phase4'):g}，对照回退路径为 {sum(c['damage'] for c in candidate['cases'] if c['policy']=='baseline'):g}；Bloat、Mixed 发生退化，Brimstone 一组由清房变成超时。这组证据见 [候选原始报告](../../validation/phase4-main-20261029/report.json)，不作最终策略成功样本。", "",
    "尚缺：原生碰撞/独立伤害归因、预警几何与持续时间完整验证、未测 Brimstone 朝向、Boss 特殊减伤下的目标调度、可稳定通过四场景的策略。没有启动参数搜索，也没有接入强化学习或让候选预测直接接管真实游戏。", "",
    "**验证与复现**", "",
    f"- C++：{checks['tests']-checks['failed']}/{checks['tests']} 通过，包括 12 个原版房型和本轮事件、证据门控、陈旧快照、未知身份及晚观测测试。",
    "- Node 观察器/伤害检测：10/10 通过。",
    "- 最终 EXE：`D:/Isaac/bin/IsaacGamebot.exe`；未启动正式游戏或修改其 EXE/Mod/选项/存档。",
    "- 运行命令见接口审计；各证据目录包含 report.json、逐帧 JSONL、event-assertions.json，run_directory 指向隔离引擎配置和日志。",
    "- 完整对照后仅修正事件时点/计时证据和未知身份门控，正式动作仍使用回退规划；新二进制另有四场景 90 帧连通检查及三场景时点复测。不同构建的哈希保留在各报告 provenance，未混成同一二进制的全量回归。", "",
]
(Path(__file__).parent / "PHASE4-RESULTS-20261029.md").write_text("\n".join(lines), encoding="utf-8")
print("Wrote PHASE4-RESULTS-20261029.md")
