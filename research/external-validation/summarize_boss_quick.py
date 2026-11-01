"""Summarize measured boss episodes without counting setup failures as no-hit."""
from pathlib import Path
from collections import Counter
import csv
import json
import sys

folder = Path(sys.argv[1])
report = json.loads((folder / 'report.json').read_text(encoding='utf-8'))
cases = report['cases']
unavailable = []
for case in cases:
    if case['status'] != 'executed':
        continue
    reason = None
    if case['frames'] == case['invalid_decisions']:
        reason = '整个观察窗口未进入策略可控制阶段'
    elif (case['scenario']['kind'] == 'arena_spawn' and case['cleared']
          and case['frames'] < 90 and case['fire_frames'] == 0
          and case['target_hp_drop'] == 0 and case['attack_entities_seen'] == 0):
        reason = '实体在3秒内自行消失，未形成有效事件战斗场景'
    if reason:
        case['raw_status'] = case['status']
        case['status'] = 'context_unavailable'
        case['error'] = reason
        unavailable.append(case)
valid = [c for c in cases if c['status'] == 'executed']
errors = [c for c in cases if c['status'] == 'error']
running = [c for c in cases if c['status'] == 'running']
catalog = list(csv.DictReader(Path('data/npc/engine_npc_entity_catalog.tsv').open(encoding='utf-8-sig'), delimiter='\t'))
expected = {c['key'] for c in catalog if c['category'] == 'boss'}
assert len({c['identity'] for c in cases}) == len(cases)
assert all(0 < c['frames'] <= 1800 and c['damage_half_hearts'] == c['native_damage_half_hearts'] for c in valid)
checks = {
    'all_132_attempted': {c['identity'] for c in cases} == expected,
    'no_running_cases': not running,
    'valid_damage_matches_native_callback': all(c['damage_half_hearts'] == c['native_damage_half_hearts'] for c in valid),
    'hurt_event_counts_match_native_callback': all(c['hurt_events'] == c['native_hurt_events'] for c in valid),
    'all_scored_episodes_started_at_6_half_hearts': all(c['initial']['health'] == 6 for c in valid),
    'duration_at_most_60_seconds': all(0 < c['frames'] <= 1800 for c in valid),
}
total_frames = sum(c['frames'] for c in valid)
damage = sum(c['damage_half_hearts'] for c in valid)
metrics = {
    'requested': report['requested'], 'attempted': len(cases), 'measured': len(valid), 'errors': len(errors),
    'context_unavailable': len(unavailable), 'total_unavailable': len(errors) + len(unavailable),
    'unhurt': sum(c['damage_half_hearts'] == 0 for c in valid),
    'hurt': sum(c['damage_half_hearts'] > 0 for c in valid),
    'deaths': sum(c['dead'] for c in valid),
    'survived_after_damage': sum(c['damage_half_hearts'] > 0 and not c['dead'] for c in valid),
    'clears': sum(c['cleared'] for c in valid),
    'unhurt_clears': sum(c['cleared'] and c['damage_half_hearts'] == 0 for c in valid),
    'full_minute': sum(c['frames'] == 1800 for c in valid),
    'full_minute_unhurt': sum(c['frames'] == 1800 and c['damage_half_hearts'] == 0 for c in valid),
    'hurt_events': sum(c['hurt_events'] for c in valid),
    'damage_half_hearts': damage, 'damage_hearts': damage / 2,
    'observed_seconds': total_frames / 30,
    'damage_hearts_per_observed_minute': damage / 2 / (total_frames / 1800) if total_frames else None,
    'unhurt_rate': sum(c['damage_half_hearts'] == 0 for c in valid) / len(valid) if valid else None,
    'death_rate': sum(c['dead'] for c in valid) / len(valid) if valid else None,
    'scenario_counts': dict(Counter(c['scenario']['kind'] for c in valid)),
    'distinct_measured_fixtures': len({json.dumps(c['scenario']['commands']) for c in valid}),
}
ranked = sorted(valid, key=lambda c: (-int(c['dead']), -c['damage_half_hearts'], c['seconds'] if c['dead'] else 60, -c['hurt_events']))
summary = {'metrics': metrics, 'checks': checks,
    'ranking': [{k: c.get(k) for k in ['identity','name','seconds','hurt_events','damage_hearts','dead','cleared','end_reason']} for c in ranked],
    'errors': [{'identity':c['identity'],'name':c['name'],'error':c['error'].splitlines()[0],'frames':c['frames']} for c in errors],
    'unavailable_contexts': [{'identity':c['identity'],'name':c['name'],'reason':c['error'],'frames':c['frames']} for c in unavailable]}
(folder / 'summary.json').write_text(json.dumps(summary, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
status = lambda c: '死亡' if c['dead'] else '清房' if c['cleared'] else '到时存活'
lines = ['# category=boss：每身份最多60秒快测', '',
    '现有正式 C++ Planner 默认参数，自动攻击开启；固定种子 `3JY1 6FLR`，默认以撒、初始3颗红心、基础武器。不开无敌、不补血、不改角色属性。死亡或清房可提前停止。', '',
    '| 项目 | 结果 |', '| --- | ---: |',
    f"| 目录身份 / 已尝试 | {len(expected)} / {len(cases)} |",
    f"| 有效测量 / 不可评估 | {len(valid)} / {metrics['total_unavailable']} |",
    f"| 其中采集/执行失败 / 事件场景未展开 | {len(errors)} / {len(unavailable)} |",
    f"| 未受伤 / 受伤 | {metrics['unhurt']} / {metrics['hurt']} |",
    f"| 死亡 / 受伤后存活 | {metrics['deaths']} / {metrics['survived_after_damage']} |",
    f"| 清房 / 无伤清房 | {metrics['clears']} / {metrics['unhurt_clears']} |",
    f"| 跑满60秒 / 跑满且未受伤 | {metrics['full_minute']} / {metrics['full_minute_unhurt']} |",
    f"| 受伤次数 | {metrics['hurt_events']} |",
    f"| 累计掉血 | {metrics['damage_hearts']:g}颗心（{damage}个半心单位） |",
    f"| 累计实际观察时长 | {metrics['observed_seconds'] / 60:.2f}分钟 |", '',
    '未受伤只描述本次已观察的时段，不能把存活到时改称无伤击杀。132是精确身份数，包含头目部件与阶段实体；相同原版遭遇可能对应多个身份，累计数字按身份统计，并非独立头目战的抽样胜率。`arena_spawn` 是原版房间中的原生实体快测，不能等同于完整剧情头目战。场景或执行失败未计入未受伤数。', '',
    f"有效场景：原版头目/小头目房 {metrics['scenario_counts'].get('original_room', 0)} 项；原版房间中生成实体 {metrics['scenario_counts'].get('arena_spawn', 0)} 项。", '',
    '死亡较早的场景伤害受初始3心上限限制；不使用其掉血量推算完整60秒伤害。伤害累计已与原版伤害回调逐项核对。清房采用房间完成且无存活敌对NPC的保守条件。', '',
    '完整数据：[统计CSV](summary.csv)、[原始报告](report.json)、[汇总JSON](summary.json)。原始报告保留全部尝试；统计CSV和下表将未形成有效战斗的事件场景另列。', '',
    '## 死亡和掉血较多的场景', '',
    '| 身份 | 名称 | 观察秒数 | 受伤次数 | 掉血（颗心） | 结束 |', '| --- | --- | ---: | ---: | ---: | --- |']
for c in ranked[:15]:
    lines.append(f"| `{c['identity']}` | {c['name']} | {c['seconds']:.2f} | {c['hurt_events']} | {c['damage_hearts']:g} | {status(c)} |")
lines += ['', '## 全部身份', '', '| 身份 | 名称 | 场景 | 观察秒数 | 受伤次数 | 掉血（颗心） | 结束 |', '| --- | --- | --- | ---: | ---: | ---: | --- |']
for c in sorted(cases, key=lambda c: tuple(map(int, c['identity'].split('.')))):
    if c['status'] == 'executed':
        lines.append(f"| `{c['identity']}` | {c['name']} | {c['scenario']['kind']} | {c['seconds']:.2f} | {c['hurt_events']} | {c['damage_hearts']:g} | {status(c)} |")
    else:
        reason = c.get('error', c['status']).splitlines()[0].replace('|', '/')
        lines.append(f"| `{c['identity']}` | {c['name']} | {c['scenario']['kind']} | — | — | — | {reason} |")
(folder / 'SUMMARY.md').write_text('\n'.join(lines) + '\n', encoding='utf-8')
columns = ['identity','name','status','seconds','hurt_events','damage_half_hearts','damage_hearts',
           'dead','cleared','end_reason','target_hp_drop','attack_entities_seen','fire_frames','scenario_kind','reason']
with (folder / 'summary.csv').open('w', encoding='utf-8-sig', newline='') as output:
    writer = csv.DictWriter(output, fieldnames=columns)
    writer.writeheader()
    for case in sorted(cases, key=lambda c: tuple(map(int, c['identity'].split('.')))):
        row = {k: case.get(k, '') for k in columns}
        row['scenario_kind'] = case['scenario']['kind']
        row['reason'] = case.get('error', '').splitlines()[0] if case.get('error') else ''
        if case['status'] != 'executed':
            for k in ['seconds','hurt_events','damage_half_hearts','damage_hearts','dead','cleared','end_reason']:
                row[k] = ''
        writer.writerow(row)
if report['status'] == 'complete':
    assert all(checks.values()), checks
print(json.dumps({'metrics': metrics, 'checks': checks, 'errors': summary['errors']}, ensure_ascii=True))
