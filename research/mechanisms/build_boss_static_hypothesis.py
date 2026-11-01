"""Build an explicitly unverified static-hypothesis layer for remaining boss attack candidates.

The strict catalog keeps strict_attack_recognition=no and strict_attack_prediction=no.
This file only records what the static State/ANM2/AI-call evidence would imply if it were
later verified. Nothing here is loaded by the runtime or may create Planner threats.
"""
from pathlib import Path
import csv
import hashlib
import json
from collections import Counter

ROOT = Path(__file__).resolve().parents[2]
BOSS_CATALOG = ROOT / 'data/npc/boss_strict_attack_catalog.tsv'
RUNTIME = ROOT / 'data/mechanisms/gamebot_runtime_semantics.json'
MECHANISM_DB = ROOT / 'data/mechanisms/isaac_j460_mechanism_db.json'
OUT_TSV = ROOT / 'data/npc/boss_static_strict_hypothesis.tsv'
OUT_MD = ROOT / 'data/npc/BOSS-STATIC-STRICT-HYPOTHESIS.md'
OUT_JSON = ROOT / 'validation/boss-static-strict-hypothesis-20261030.json'

LEVEL_ZH = {
    'static_anm2_animation_event_candidate': '仅有 ANM2 攻击事件候选',
    'static_state_animation_candidate': '仅有 State 攻击动画候选',
    'static_attack_call_state_candidate': '仅有 State 攻击调用候选',
    'static_ai_function_attack_call_candidate': '仅有完整 AI 函数攻击调用候选',
}
LEVEL_SCOPE = {
    'static_anm2_animation_event_candidate': 'static_animation_event_frame',
    'static_state_animation_candidate': 'static_state_animation_frame',
    'static_attack_call_state_candidate': 'static_state_call',
    'static_ai_function_attack_call_candidate': 'static_ai_call',
}


def load_json(path):
    return json.loads(path.read_text(encoding='utf-8'))


def sha256(path):
    return hashlib.sha256(path.read_bytes()).hexdigest().upper()


def read_candidates():
    with BOSS_CATALOG.open(encoding='utf-8', newline='') as handle:
        rows = list(csv.DictReader(handle, delimiter='\t'))
    return [row for row in rows
            if row['strict_attack_recognition'] == 'no'
            and row['attack_recognition_level'] != 'no_attack_candidate']


def source_association_count(keys):
    database = load_json(MECHANISM_DB)
    total = 0
    local = 0
    entries_with_associations = 0
    for entry in database.get('entries', []):
        key = entry.get('id', {}).get('key')
        if key not in keys:
            continue
        associations = (entry.get('runtime_observation') or {}).get('action_object_associations') or []
        if associations:
            entries_with_associations += 1
        total += len(associations)
        for association in associations:
            gap = association.get('action_to_object_frame_gap')
            if (isinstance(gap, int) and abs(gap) <= 1
                    and isinstance(association.get('state'), int)
                    and association.get('animation')
                    and isinstance((association.get('object') or {}).get('type'), int)
                    and isinstance(association.get('animation_frame'), int)):
                local += 1
    return {
        'entries_with_associations': entries_with_associations,
        'associations': total,
        'local_source_linked_associations': local,
    }


def event_detail(events):
    names = []
    frames = []
    confidences = []
    for animation, event in sorted(events.items()):
        event_frames = event.get('frames') or []
        frames.extend(event_frames)
        suffix = ','.join(str(value) for value in event_frames) if event_frames else '-'
        names.append(f"{animation}@f{suffix}")
        if event.get('confidence') is not None:
            confidences.append(float(event['confidence']))
    return '; '.join(names), sorted(set(frames)), max(confidences) if confidences else None


def state_call_detail(state_calls):
    parts = []
    states = []
    for item in state_calls:
        states.append(item.get('state'))
        calls = ','.join(call.get('name', '') for call in item.get('calls', []))
        parts.append(f"state{item.get('state')}:{calls}:{item.get('candidate_type')}")
    return '; '.join(parts), sorted(set(state for state in states if state is not None))


def ai_call_detail(calls):
    names = sorted({call.get('name', '') for call in calls})
    return ','.join(names)


def build_record(row, runtime):
    key = row['key']
    identity = runtime['identities'][key]
    record = identity['attack_recognition']
    level = record['level']
    events = record.get('animation_event_candidates') or {}
    state_calls = record.get('state_call_candidates') or []
    ai_calls = record.get('direct_ai_attack_calls') or []
    event_names, frames, confidence = event_detail(events)
    call_names, call_states = state_call_detail(state_calls)
    ai_names = ai_call_detail(ai_calls)
    states = sorted(set(record.get('state_animation_candidate_states') or []) | set(call_states))
    has_timing = bool(frames)
    blockers = ['no_source_linked_attack_object']
    if has_timing:
        blockers.append('no_cross_seed_runtime_timing')
    else:
        blockers.append('no_animation_frame_for_timing')
    if level == 'static_ai_function_attack_call_candidate':
        scope = 'static_ai_call'
    elif has_timing and states:
        scope = 'static_state_animation_frame'
    elif has_timing:
        scope = 'static_animation_event_frame'
    else:
        scope = LEVEL_SCOPE.get(level, 'static_call')
    notes = ''
    if level == 'static_ai_function_attack_call_candidate':
        notes = '只有完整 AI 函数调用；没有 State/Animation 帧，不能形成时点假设'
    elif not has_timing:
        notes = '只有 State 攻击调用；没有对应动画帧，不能形成时点假设'
    elif events:
        notes = '静态 ANM2 事件帧；未观察攻击对象生成'
    return {
        'key': key,
        'name_zh': row['name_zh'],
        'role': row['role'],
        'entity_config_name': row['entity_config_name'],
        'attack_recognition_level': level,
        'static_candidate_kind': LEVEL_ZH.get(level, level),
        'static_strict_recognition_hypothesis': 'yes',
        'static_strict_prediction_hypothesis': 'yes' if has_timing else 'no',
        'hypothesis_scope': scope,
        'hypothesis_states': ','.join(str(value) for value in states),
        'hypothesis_animations': event_names,
        'hypothesis_frames': ','.join(str(value) for value in frames),
        'hypothesis_calls': '; '.join(part for part in (call_names, ai_names) if part),
        'hypothesis_candidate_type': record.get('direct_ai_attack_candidate_type') or '',
        'hypothesis_confidence': '' if confidence is None else f'{confidence:.2f}',
        'strict_attack_recognition': 'no',
        'strict_attack_prediction': 'no',
        'promotion_blocker': ';'.join(blockers),
        'runtime_usable': 'no',
        'notes': notes,
    }


FIELDS = [
    'key', 'name_zh', 'role', 'entity_config_name', 'attack_recognition_level',
    'static_candidate_kind',
    'static_strict_recognition_hypothesis', 'static_strict_prediction_hypothesis',
    'hypothesis_scope', 'hypothesis_states', 'hypothesis_animations',
    'hypothesis_frames', 'hypothesis_calls', 'hypothesis_candidate_type',
    'hypothesis_confidence', 'strict_attack_recognition', 'strict_attack_prediction',
    'promotion_blocker', 'runtime_usable', 'notes',
]


def write_tsv(rows):
    with OUT_TSV.open('w', encoding='utf-8', newline='') as handle:
        writer = csv.DictWriter(handle, FIELDS, delimiter='\t', lineterminator='\n')
        writer.writeheader()
        writer.writerows(rows)


def write_md(rows, counts):
    lines = [
        f"# {counts['total']} 个静态攻击候选的严格识别 / 预测假设层",
        '',
        f"范围：`data/npc/boss_strict_attack_catalog.tsv` 中严格识别为否、但仍存在静态攻击候选的 {counts['total']} 个 Boss/迷你 Boss 身份。",
        '',
        '**这不是严格识别或严格预测。** 严格字段仍为 `no`，本表只记录静态证据允许形成的假设；'
        '文件不进入运行时，不会创建 `MechanismWarning`，也不会驱动 Planner 威胁。',
        '',
        '## 口径',
        '',
        '- 静态识别假设：精确身份上存在 State 攻击调用、State 攻击动画、ANM2 攻击事件或完整 AI 函数调用。',
        '- 静态预测假设：在静态识别假设之上还存在可读取的动画事件帧；没有动画帧的调用候选只能形成识别假设，不能形成时点假设。',
        f"- 所有 {counts['total']} 个身份都缺少原版回调的来源链攻击对象；有动画帧的身份也缺少跨种子运行时对象生成时序。",
        f"- 现有汇总机制库对这 {counts['total']} 个身份没有任何 `action_object_associations` 记录，离线验证无法补齐来源链。",
        '- 因此本表不能把任何一行升级为严格识别或严格预测。',
        '',
        '## 汇总',
        '',
        '| 项目 | 数量 |',
        '| --- | ---: |',
        f"| 静态攻击候选 | {counts['total']} |",
        f"| 静态识别假设 | {counts['recognition']} |",
        f"| 静态预测假设（有动画帧） | {counts['prediction']} |",
        f"| 只有调用、没有动画帧 | {counts['call_only']} |",
        f"| 现有机制库来源链关联观察 | {counts['source_linked']['associations']} |",
        f"| 其中 0–1 帧本地关联 | {counts['source_linked']['local_source_linked_associations']} |",
        f"| 仍为严格识别 | 0 |",
        f"| 仍为严格预测 | 0 |",
        '',
        '按候选层级：',
        '',
        '| 层级 | 数量 | 有动画帧 |',
        '| --- | ---: | ---: |',
    ]
    for level, count in sorted(counts['by_level'].items()):
        lines.append(f"| {LEVEL_ZH.get(level, level)} (`{level}`) | {count} | {counts['by_level_frames'].get(level, 0)} |")
    lines += [
        '',
        '## 逐项假设',
        '',
        '| 精确身份 | 名称 | 角色 | 候选层级 | 识别假设 | 预测假设 | 假设 States | 假设动画/帧 | 调用候选 | 未严格原因 |',
        '| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |',
    ]
    for row in rows:
        animations = row['hypothesis_animations'] or '-'
        frames = row['hypothesis_frames'] or '-'
        lines.append(
            f"| `{row['key']}` | {row['name_zh']} | {row['role']} | "
            f"{row['static_candidate_kind']} | "
            f"{'是' if row['static_strict_recognition_hypothesis'] == 'yes' else '否'} | "
            f"{'是' if row['static_strict_prediction_hypothesis'] == 'yes' else '否'} | "
            f"{row['hypothesis_states'] or '-'} | {animations} / f{frames} | "
            f"{row['hypothesis_calls'] or '-'} | {row['promotion_blocker']} |")
    lines += [
        '',
        '## 限制',
        '',
        '- 静态 ANM2 事件帧不是原版回调中的对象生成帧；State 攻击调用也不等于运行时会执行该分支。',
        '- 没有跨种子运行时证据，不能把动画帧固定为 0/1 帧误差内的严格时点。',
        '- 本表仅供后续验证排期和人工审查；不得复制到运行时语义或威胁规则。',
        '',
        '数据来源：`data/npc/boss_strict_attack_catalog.tsv`、'
        '`data/mechanisms/gamebot_runtime_semantics.json`。',
    ]
    OUT_MD.write_text('\n'.join(lines) + '\n', encoding='utf-8')


def main():
    runtime = load_json(RUNTIME)
    candidates = read_candidates()
    assert len(candidates) > 0, 'expected static candidates'
    rows = [build_record(row, runtime) for row in candidates]
    assert len({row['key'] for row in rows}) == len(rows)
    assert all(row['strict_attack_recognition'] == 'no' for row in rows)
    assert all(row['strict_attack_prediction'] == 'no' for row in rows)
    assert all(row['runtime_usable'] == 'no' for row in rows)
    assert all(row['static_strict_recognition_hypothesis'] == 'yes' for row in rows)
    prediction = [row for row in rows if row['static_strict_prediction_hypothesis'] == 'yes']
    call_only = [row for row in rows if row['static_strict_prediction_hypothesis'] == 'no']
    by_level = Counter(row['attack_recognition_level'] for row in rows)
    by_level_frames = Counter(row['attack_recognition_level'] for row in prediction)
    source_linked = source_association_count({row['key'] for row in rows})
    counts = {
        'total': len(rows),
        'recognition': len(rows),
        'prediction': len(prediction),
        'call_only': len(call_only),
        'by_level': dict(sorted(by_level.items())),
        'by_level_frames': dict(sorted(by_level_frames.items())),
        'source_linked': source_linked,
    }
    write_tsv(rows)
    write_md(rows, counts)
    validation = {
        'format': 'isaac-gamebot-boss-static-strict-hypothesis-v1',
        'generated_at': '2026-10-30',
        'status': 'unverified_static_hypothesis',
        'sources': {
            'data/npc/boss_strict_attack_catalog.tsv': sha256(BOSS_CATALOG),
            'data/mechanisms/gamebot_runtime_semantics.json': sha256(RUNTIME),
            'data/mechanisms/isaac_j460_mechanism_db.json': sha256(MECHANISM_DB),
        },
        'policy': {
            'static_only': True,
            'strict_flags_remain_no': True,
            'runtime_usable': False,
            'creates_planner_threats': False,
            'requires_source_linked_attack_object_for_strict': True,
            'requires_cross_seed_timing_for_strict_prediction': True,
        },
        'counts': counts,
        'checks': {
            'candidate_count_matches_catalog': len(rows) > 0,
            'all_strict_recognition_no': all(row['strict_attack_recognition'] == 'no' for row in rows),
            'all_strict_prediction_no': all(row['strict_attack_prediction'] == 'no' for row in rows),
            'all_runtime_usable_no': all(row['runtime_usable'] == 'no' for row in rows),
            'all_have_static_evidence': all(
                row['hypothesis_states'] or row['hypothesis_animations'] or row['hypothesis_calls']
                for row in rows),
            'prediction_hypothesis_only_with_frames': all(
                (row['static_strict_prediction_hypothesis'] == 'yes') == bool(row['hypothesis_frames'])
                for row in rows),
            'mechanism_db_has_no_source_linked_associations': (
                source_linked['associations'] == 0
                and source_linked['local_source_linked_associations'] == 0),
        },
        'identities': {row['key']: row for row in rows},
    }
    OUT_JSON.write_text(json.dumps(validation, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps(counts, ensure_ascii=False))
    print(f'Wrote {OUT_TSV}')
    print(f'Wrote {OUT_MD}')
    print(f'Wrote {OUT_JSON}')


if __name__ == '__main__':
    main()
