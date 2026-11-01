"""Extract actual observed mechanism windows without promoting them to attack proofs."""
import argparse
import json
from collections import Counter
from pathlib import Path

CASES = {
    '413.0.0': ('Matriarch Rage', 13),
    '886.1.0': ('Vis Fatty', 16),
    '406.0.0': ('Ultra Greed shield/damage', None),
    '411.0.0': ('Big Horn Dark Ball', 13),
    '412.0.0': ('Delirium attack/cycle', None),
    '60.0.0': ('Eye laser windup', None),
    '68.1.0': ('Bloat laser windup', None),
}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('directory', type=Path)
    args = parser.parse_args()
    report = json.loads((args.directory / 'report.json').read_text(encoding='utf-8'))
    rows = []
    for case in report['cases']:
        states, animations, spawned, changes = set(), set(), Counter(), Counter()
        requested_state_windows = []
        label, requested_state = CASES.get(case['identity'], ('baseline', None))
        event_path = args.directory / f"events-{case['id']}.jsonl"
        if event_path.exists():
            with event_path.open(encoding='utf-8') as stream:
                for line in stream:
                    event = json.loads(line)
                    identity = event['entity'].split(':')[-1]
                    if event['event'] == 'spawn-observed':
                        spawned[identity] += 1
                    if identity != case['identity']:
                        continue
                    if event['event'] == 'spawn-observed':
                        if event.get('state') is not None:
                            states.add(event['state'])
                        if event.get('animation'):
                            animations.add(event['animation'])
                    elif event['event'] == 'field-change':
                        changes[event['field']] += 1
                        if event['field'] == 'state':
                            states.update([event['from'], event['to']])
                            if event['to'] == requested_state:
                                requested_state_windows.append({'entity': event['entity'], 'frame': event['frame'], 'before': event['from'], 'during': event['to'], 'source': event_path.name, 'window': 'full adjacent frames in samples JSONL'})
                        if event['field'] == 'animation':
                            animations.update([event['from'], event['to']])
        rows.append({'test': case['id'], 'identity': case['identity'], 'mechanism': label,
                     'requested_state': requested_state, 'requested_state_observed': requested_state in states if requested_state else None,
                     'status': 'observed value windows; attack semantics pending independent event oracle',
                     'states': sorted(states), 'animations': sorted(animations), 'field_changes': dict(changes),
                     'spawned_identities': dict(spawned), 'state_windows': requested_state_windows,
                     'attack_assertion_pass': False})
    (args.directory / 'mechanism-windows.json').write_text(json.dumps(rows, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    lines = ['# 高价值场景窗口', '', '下表统计本批实际观察到的状态、动画和实体出现。机制语义及攻击前预警没有独立事件断言，验证通过数保持 0。', '',
             '|身份|机制|实测状态|指定状态出现|动画|', '|---|---|---|---|---|']
    lines.extend(f"|{r['identity']}|{r['mechanism']}|{','.join(map(str,r['states']))}|{r['requested_state_observed']}|{','.join(r['animations'])}|" for r in rows)
    (args.directory / 'mechanism-windows.md').write_text('\n'.join(lines) + '\n', encoding='utf-8')
    print(json.dumps({'cases': len(rows), 'requested_state_hits': sum(r['requested_state_observed'] is True for r in rows)}))


if __name__ == '__main__':
    main()
