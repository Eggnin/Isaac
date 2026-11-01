"""Make strict attack recognition and strict attack prediction explicit for boss EntityConfigs.

The catalog only rewrites evidence that already exists in the runtime semantics and
strict-attack validation files. It never promotes static candidates or single-run
observations into strict status.
"""
from pathlib import Path
import csv
import hashlib
import json
from collections import Counter

ROOT = Path(__file__).resolve().parents[2]
CATALOG = ROOT / 'data/npc/engine_npc_entity_catalog.tsv'
ENTITY_MD = ROOT / 'data/npc/ENTITY-CATALOG.md'
RUNTIME = ROOT / 'data/mechanisms/gamebot_runtime_semantics.json'
STRICT = ROOT / 'data/mechanisms/gamebot_attack_strict_validation.json'
BOSS_TSV = ROOT / 'data/npc/boss_strict_attack_catalog.tsv'
BOSS_MD = ROOT / 'data/npc/BOSS-STRICT-ATTACK-CATALOG.md'
VALIDATION = ROOT / 'validation/boss-strict-attack-catalog-20261030.json'

STRICT_LEVEL = 'strict_state_animation_mapping'
NO_STRICT_REASON = {
    'no_attack_candidate': 'no_attack_candidate_identified',
    'static_anm2_animation_event_candidate': 'static_anm2_animation_event_only',
    'static_state_animation_candidate': 'static_state_animation_only',
    'static_attack_call_state_candidate': 'static_state_attack_call_only',
    'static_ai_function_attack_call_candidate': 'static_ai_function_attack_call_only',
}
REASON_ZH = {
    'no_attack_candidate_identified': '没有可确认的攻击候选',
    'static_anm2_animation_event_only': '仅有 ANM2 攻击事件候选',
    'static_state_animation_only': '仅有 State 攻击动画候选',
    'static_state_attack_call_only': '仅有 State 攻击调用候选',
    'static_ai_function_attack_call_only': '仅有完整 AI 函数攻击调用候选',
    'single_run_timing_model_only': '单运行/同种子稳定时点模型',
    'source_linked_object_without_stable_cross_seed_timing': '有来源链对象但时序不稳定',
    'verified_warning_rule_without_cross_seed_timing': '有已验证预警规则但缺少跨种子时点',
    'strict_state_animation_mapping_without_attack_object_timing': '严格状态动画映射没有攻击对象时点',
    'strict_attack_prediction_available': '已有严格攻击时点预测',
    'no_strict_recognition': '没有严格识别依据',
}
BASIS_ZH = {
    'source_linked_attack_object': '原版回调来源链攻击对象',
    'verified_warning_rule': '已验证预警规则',
    'strict_state_animation_mapping': '严格 State/动画映射',
}


def load_json(path):
    return json.loads(path.read_text(encoding='utf-8'))


def sha256(path):
    return hashlib.sha256(path.read_bytes()).hexdigest().upper()


def read_catalog():
    with CATALOG.open(encoding='utf-8-sig', newline='') as handle:
        reader = csv.DictReader(handle, delimiter='\t')
        fields = list(reader.fieldnames)
        rows = list(reader)
    assert len(rows) == len({row['key'] for row in rows}) == 653, 'NPC catalog must contain 653 unique identities'
    return fields, rows


def yes(value):
    return 'yes' if value else 'no'


def object_text(obj):
    if not obj:
        return ''
    text = f"{obj.get('type')}.{obj.get('variant', 0)}.{obj.get('subtype', 0)}"
    if obj.get('variant_name'):
        text += f"({obj['variant_name']})"
    return text


def group_text(group):
    frames = ','.join(str(value) for value in group.get('animation_frames', []))
    delay = ','.join(str(value) for value in group.get('object_delay_frames', []))
    return (f"state{group.get('state')}:{group.get('animation')}:{group.get('mechanism')}:"
            f"{object_text(group.get('object'))}@f{frames}[+{delay}]"
            f"x{group.get('observations', 0)}/{group.get('runs', 0)}")


def timing_text(key, timings):
    value = timings.get(key)
    if not value:
        return key
    seeds = value.get('seeds') or []
    runs = value.get('runs')
    frame = value.get('trigger_animation_frame')
    samples = value.get('samples')
    if seeds:
        evidence = f"seeds={len(seeds)}"
    elif runs is not None:
        evidence = f"runs={runs}"
    else:
        evidence = "runs=unknown"
    return f"{key}@f{frame}[samples={samples},{evidence}]"


def recognition_basis(record, timing_keys, timings):
    if record['level'] != STRICT_LEVEL:
        return ''
    if record.get('strict_source_linked_groups'):
        return 'source_linked_attack_object'
    if record.get('warning_rule_ids') and timing_keys and all(key in timings for key in timing_keys):
        return 'verified_warning_rule'
    return 'strict_state_animation_mapping'


def blocking_reason(record, strict_recognition, strict_prediction, basis):
    if not strict_recognition:
        return NO_STRICT_REASON.get(record['level'], 'no_strict_recognition')
    if strict_prediction:
        return 'strict_attack_prediction_available'
    if record.get('provisional_prediction'):
        return 'single_run_timing_model_only'
    if record.get('strict_source_linked_groups'):
        return 'source_linked_object_without_stable_cross_seed_timing'
    if basis == 'verified_warning_rule':
        return 'verified_warning_rule_without_cross_seed_timing'
    return 'strict_state_animation_mapping_without_attack_object_timing'


def build_record(row, runtime, strict):
    key = row['key']
    identity = runtime['identities'][key]
    record = identity['attack_recognition']
    timings = runtime.get('verified_timings', {})
    strict_recognition = record['level'] == STRICT_LEVEL
    strict_prediction = bool(record.get('strict_prediction'))
    provisional = bool(record.get('provisional_prediction'))
    groups = record.get('strict_source_linked_groups') or []
    states = record.get('strict_attack_states') or []
    timing_keys = record.get('strict_prediction_timing_keys') or []
    provisional_keys = record.get('provisional_prediction_timing_keys') or []
    basis = recognition_basis(record, timing_keys, timings)
    reason = blocking_reason(record, strict_recognition, strict_prediction, basis)
    strict_validation = strict['identities'].get(key)
    notes = ''
    if key == '412.0.0':
        notes = 'Delirium AttackID 到具体攻击的映射仍为 Unknown；AI 的 entity_spawn_relay 不计入攻击识别'
    elif key in {'79.0.0', '79.1.0'}:
        notes = '父身份没有来源链攻击对象；只保留精确身份状态，不向子身份借用攻击证据'
    return {
        'key': key,
        'name_zh': row['name_zh'] or '',
        'role': row['role'],
        'entity_config_name': row['entity_config_name'],
        'strict_attack_recognition': yes(strict_recognition),
        'strict_recognition_basis': basis,
        'attack_recognition_level': record['level'],
        'strict_states': ','.join(str(value) for value in states),
        'strict_groups': '; '.join(group_text(group) for group in groups),
        'strict_attack_prediction': yes(strict_prediction),
        'strict_prediction_scope': 'animation-frame-to-attack-object timing only' if strict_prediction else '',
        'strict_prediction_timing_keys': ','.join(timing_keys),
        'strict_prediction_evidence': '; '.join(timing_text(item, timings) for item in timing_keys),
        'provisional_attack_prediction': yes(provisional),
        'provisional_timing_keys': ','.join(provisional_keys),
        'blocking_reason': reason,
        'strict_validation_present': yes(strict_validation is not None),
        'notes': notes,
    }


BOSS_FIELDS = [
    'key', 'name_zh', 'role', 'entity_config_name',
    'strict_attack_recognition', 'strict_recognition_basis', 'attack_recognition_level',
    'strict_states', 'strict_groups',
    'strict_attack_prediction', 'strict_prediction_scope',
    'strict_prediction_timing_keys', 'strict_prediction_evidence',
    'provisional_attack_prediction', 'provisional_timing_keys',
    'blocking_reason', 'strict_validation_present', 'notes',
]


def write_tsv(path, fields, rows):
    with path.open('w', encoding='utf-8', newline='') as handle:
        writer = csv.DictWriter(handle, fields, delimiter='\t', lineterminator='\n', extrasaction='ignore')
        writer.writeheader()
        writer.writerows(rows)


def update_main_catalog(fields, rows, records):
    for name in ('strict_attack_recognition', 'strict_attack_prediction'):
        if name not in fields:
            fields.append(name)
    for row in rows:
        record = records[row['key']]
        row['strict_attack_recognition'] = record['strict_attack_recognition']
        row['strict_attack_prediction'] = record['strict_attack_prediction']
    write_tsv(CATALOG, fields, rows)


def write_entity_md(rows):
    counts = Counter(row['category'] for row in rows)
    lines = [
        '# J460 本机 EntityConfig 精确身份目录',
        '',
        '共 **653** 个 Type/Variant/Subtype 组合，包含普通怪物、头目、陷阱机关及其他 NPC 配置。网格和炸弹另列，不混入653。',
        '',
        f"分类数量：{dict(counts)}。陷阱标记是身份/机制归类，不表示该身份已经逐一通过攻击或战斗测试。",
        '',
        '严格攻击识别和严格攻击预测来自 `data/mechanisms/gamebot_runtime_semantics.json`，'
        '不等于完整攻击覆盖或危险几何。迷你 Boss 与 Boss 的逐项依据见 '
        '[BOSS-STRICT-ATTACK-CATALOG.md](BOSS-STRICT-ATTACK-CATALOG.md)。',
        '',
        '`role=monster` 中 42 个只有 AI 函数调用且无动画事件 cue 的身份已归为 '
        '`contact_only` 或 `no_object_attack_evidence`，详见 '
        '[MONSTER-STRICT-ATTACK-CATALOG.md](MONSTER-STRICT-ATTACK-CATALOG.md)。',
        '',
        '| 精确身份 | 中文名/陷阱名 | EntityConfig 名称 | 分类 | 严格攻击识别 | 严格攻击预测 | 银按钮解除 |',
        '| --- | --- | --- | --- | --- | --- | --- |',
    ]
    for row in rows:
        lines.append(
            f"| `{row['key']}` | {row.get('trap_name_zh') or row['name_zh']} | {row['entity_config_name']} | "
            f"{'**陷阱机关**' if row['category'] == 'trap' else row['category']} | "
            f"{'是' if row.get('strict_attack_recognition') == 'yes' else '否'} | "
            f"{'是' if row.get('strict_attack_prediction') == 'yes' else '否'} | "
            f"{'是' if row.get('disabled_by_silver') == '1' else ''} |")
    ENTITY_MD.write_text('\n'.join(lines) + '\n', encoding='utf-8')


def write_boss_md(records, counts):
    strict_rows = [record for record in records if record['strict_attack_recognition'] == 'yes']
    prediction_rows = [record for record in records if record['strict_attack_prediction'] == 'yes']
    lines = [
        '# 迷你 Boss 与 Boss 严格攻击识别 / 严格攻击预测目录',
        '',
        '范围：当前 `data/npc/engine_npc_entity_catalog.tsv` 中 `category=boss` 的 132 个精确身份，'
        '其中 `role=miniboss` 22 个、`role=boss` 110 个。',
        '',
        '本目录只登记有来源链、严格 State/动画映射或已验证预警规则的严格结果；没有这些证据的静态候选仍保持候选，不升级为严格识别或严格预测。',
        '',
        '## 判定口径',
        '',
        '- **严格攻击识别**：精确 `Type/Variant/Subtype` + 实际 `State/Animation`，并且满足以下任一项：'
        '原版回调中经 `parent/spawner` 来源链观察到攻击对象且对象生成延迟不超过 1 帧；'
        '已有严格 State/动画映射；已有跨种子独立验证的预警规则。',
        '- **严格攻击预测**：在严格识别基础上，同一 `State/Animation` 的触发动画帧在 0/1 帧误差内稳定，'
        '至少有两次观察并覆盖两个运行种子，生成对象与机制一致。它只表示“动画帧到攻击对象生成”的时点，'
        '不表示已知完整危险区域或命中范围。',
        '- **候选识别**：反编译 State 调用、State 动画名、ANM2 事件或完整 AI 函数调用等静态线索。'
        '候选只用于运行时 `attack_type`，不创建 Planner 威胁。',
        '- **单运行/同种子 provisional 时点模型**：动画帧稳定但只覆盖一个运行种子，不能算严格预测。',
        '',
        '## 汇总',
        '',
        '| 项目 | boss | miniboss | 合计 |',
        '| --- | ---: | ---: | ---: |',
        f"| 精确身份 | {counts['boss']} | {counts['miniboss']} | {counts['total']} |",
        f"| 严格攻击识别 | {counts['strict_recognition_boss']} | {counts['strict_recognition_miniboss']} | {counts['strict_recognition']} |",
        f"| 严格攻击预测 | {counts['strict_prediction_boss']} | {counts['strict_prediction_miniboss']} | {counts['strict_prediction']} |",
        f"| 单运行/同种子 provisional 预测 | {counts['provisional_boss']} | {counts['provisional_miniboss']} | {counts['provisional']} |",
        f"| 仅有静态攻击候选 | {counts['candidate_only_boss']} | {counts['candidate_only_miniboss']} | {counts['candidate_only']} |",
        f"| 没有攻击候选 | {counts['no_candidate_boss']} | {counts['no_candidate_miniboss']} | {counts['no_candidate']} |",
        '',
        '## 严格攻击识别身份',
        '',
        '| 精确身份 | 名称 | 角色 | EntityConfig | 识别依据 | 严格 State | 来源链对象组 |',
        '| --- | --- | --- | --- | --- | --- | --- |',
    ]
    for record in strict_rows:
        lines.append(
            f"| `{record['key']}` | {record['name_zh']} | {record['role']} | {record['entity_config_name']} | "
            f"{BASIS_ZH.get(record['strict_recognition_basis'], record['strict_recognition_basis'])} | "
            f"{record['strict_states'] or '-'} | {record['strict_groups'] or '-'} |")
    lines += [
        '',
        '## 严格攻击预测身份',
        '',
        '| 精确身份 | 名称 | 严格时点键 | 证据摘要 |',
        '| --- | --- | --- | --- |',
    ]
    for record in prediction_rows:
        lines.append(
            f"| `{record['key']}` | {record['name_zh']} | {record['strict_prediction_timing_keys']} | "
            f"{record['strict_prediction_evidence']} |")
    lines += [
        '',
        '严格预测仍不等于几何预测。上述身份不会因为存在时点键而自动获得 Planner 威胁；'
        '只有独立验证过的几何模型才会进入威胁。',
        '',
        '## 未达到严格识别的分布',
        '',
        '| 原因 | 数量 |',
        '| --- | ---: |',
    ]
    for reason, count in sorted(counts['blocking_reasons'].items(), key=lambda item: (-item[1], item[0])):
        if reason == 'strict_attack_prediction_available':
            continue
        lines.append(f"| {REASON_ZH.get(reason, reason)} (`{reason}`) | {count} |")
    lines += [
        '',
        '## 逐项状态',
        '',
        '| 精确身份 | 名称 | 角色 | 严格识别 | 严格预测 | 识别依据 | 严格时点键 | 未严格原因 |',
        '| --- | --- | --- | --- | --- | --- | --- | --- |',
    ]
    for record in records:
        lines.append(
            f"| `{record['key']}` | {record['name_zh']} | {record['role']} | "
            f"{'是' if record['strict_attack_recognition'] == 'yes' else '否'} | "
            f"{'是' if record['strict_attack_prediction'] == 'yes' else '否'} | "
            f"{BASIS_ZH.get(record['strict_recognition_basis'], '-') if record['strict_recognition_basis'] else '-'} | "
            f"{record['strict_prediction_timing_keys'] or '-'} | "
            f"{REASON_ZH.get(record['blocking_reason'], record['blocking_reason'])} |")
    lines += [
        '',
        '## 边界',
        '',
        f"- 132 个身份中严格识别 {counts['strict_recognition']} 个，严格预测 {counts['strict_prediction']} 个；"
        f"其余 {counts['total'] - counts['strict_prediction']} 个没有跨种子稳定的攻击对象时点。",
        '- 静态 ANM2 事件、State 攻击调用和完整 AI 函数调用只是候选，不能当作已确认攻击。',
        '- 其余静态候选的未验证假设层见 [BOSS-STATIC-STRICT-HYPOTHESIS.md](BOSS-STATIC-STRICT-HYPOTHESIS.md)；'
        '该表不改变本目录的严格字段，也不能进入运行时或 Planner。',
        '- Boss 阶段边、无敌窗口、攻击几何和持续时间仍需各自的运行验证；本目录不改变这些结论。',
        '- 数据来源：`data/mechanisms/gamebot_runtime_semantics.json`、'
        '`data/mechanisms/gamebot_attack_strict_validation.json`、`data/npc/engine_npc_entity_catalog.tsv`。',
    ]
    BOSS_MD.write_text('\n'.join(lines) + '\n', encoding='utf-8')


def main():
    runtime = load_json(RUNTIME)
    strict = load_json(STRICT)
    fields, rows = read_catalog()
    records_by_key = {row['key']: build_record(row, runtime, strict) for row in rows}
    boss_rows = [row for row in rows if row['category'] == 'boss']
    assert len(boss_rows) == 132, f'expected 132 boss/miniboss identities, found {len(boss_rows)}'
    boss_records = [records_by_key[row['key']] for row in boss_rows]

    update_main_catalog(fields, rows, records_by_key)
    write_tsv(BOSS_TSV, BOSS_FIELDS, boss_records)
    write_entity_md(rows)

    role_counts = Counter(record['role'] for record in boss_records)
    reason_counts = Counter(record['blocking_reason'] for record in boss_records)
    strict_records = [record for record in boss_records if record['strict_attack_recognition'] == 'yes']
    prediction_records = [record for record in boss_records if record['strict_attack_prediction'] == 'yes']
    provisional_records = [record for record in boss_records if record['provisional_attack_prediction'] == 'yes']
    candidate_only = [record for record in boss_records
                      if record['strict_attack_recognition'] == 'no'
                      and record['attack_recognition_level'] != 'no_attack_candidate']
    no_candidate = [record for record in boss_records
                    if record['attack_recognition_level'] == 'no_attack_candidate']
    counts = {
        'total': len(boss_records),
        'boss': role_counts['boss'],
        'miniboss': role_counts['miniboss'],
        'strict_recognition': len(strict_records),
        'strict_recognition_boss': sum(record['role'] == 'boss' for record in strict_records),
        'strict_recognition_miniboss': sum(record['role'] == 'miniboss' for record in strict_records),
        'strict_prediction': len(prediction_records),
        'strict_prediction_boss': sum(record['role'] == 'boss' for record in prediction_records),
        'strict_prediction_miniboss': sum(record['role'] == 'miniboss' for record in prediction_records),
        'provisional': len(provisional_records),
        'provisional_boss': sum(record['role'] == 'boss' for record in provisional_records),
        'provisional_miniboss': sum(record['role'] == 'miniboss' for record in provisional_records),
        'candidate_only': len(candidate_only),
        'candidate_only_boss': sum(record['role'] == 'boss' for record in candidate_only),
        'candidate_only_miniboss': sum(record['role'] == 'miniboss' for record in candidate_only),
        'no_candidate': len(no_candidate),
        'no_candidate_boss': sum(record['role'] == 'boss' for record in no_candidate),
        'no_candidate_miniboss': sum(record['role'] == 'miniboss' for record in no_candidate),
        'blocking_reasons': dict(sorted(reason_counts.items())),
    }
    counts['strict_recognition_boss'] = int(counts['strict_recognition_boss'])
    counts['strict_recognition_miniboss'] = int(counts['strict_recognition_miniboss'])
    counts['strict_prediction_boss'] = int(counts['strict_prediction_boss'])
    counts['strict_prediction_miniboss'] = int(counts['strict_prediction_miniboss'])
    counts['provisional_boss'] = int(counts['provisional_boss'])
    counts['provisional_miniboss'] = int(counts['provisional_miniboss'])
    counts['candidate_only_boss'] = int(counts['candidate_only_boss'])
    counts['candidate_only_miniboss'] = int(counts['candidate_only_miniboss'])
    counts['no_candidate_boss'] = int(counts['no_candidate_boss'])
    counts['no_candidate_miniboss'] = int(counts['no_candidate_miniboss'])

    assert counts['boss'] == 110 and counts['miniboss'] == 22, 'role counts must stay 110/22'
    assert counts['strict_recognition'] == len(strict_records), 'strict recognition count mismatch'
    assert counts['strict_prediction'] <= counts['strict_recognition'], 'prediction must imply recognition'
    for record in prediction_records:
        assert record['strict_prediction_timing_keys'], record['key']
    for record in strict_records:
        assert record['strict_recognition_basis'], record['key']
    for record in boss_records:
        assert record['blocking_reason'] in REASON_ZH, record['blocking_reason']

    write_boss_md(boss_records, counts)
    validation = {
        'format': 'isaac-gamebot-boss-strict-attack-catalog-v1',
        'generated_at': '2026-10-30',
        'sources': {
            'data/npc/engine_npc_entity_catalog.tsv': sha256(CATALOG),
            'data/mechanisms/gamebot_runtime_semantics.json': sha256(RUNTIME),
            'data/mechanisms/gamebot_attack_strict_validation.json': sha256(STRICT),
        },
        'definitions': {
            'strict_attack_recognition': 'exact Type/Variant/Subtype + State/Animation + source-linked attack object within 1 frame, strict state-animation mapping, or verified warning rule',
            'strict_attack_prediction': 'strict recognition + stable animation frame within 0/1 frame + at least two observations across two runs/seeds + same object/mechanism',
            'prediction_scope': 'animation-frame-to-attack-object timing only; geometry and Planner threats are not implied',
            'candidate_only': 'static State/ANM2/AI-function evidence; not a confirmed attack',
        },
        'policy': {
            'requires_exact_identity': True,
            'requires_state_and_animation': True,
            'requires_source_linked_attack_object_or_verified_rule': True,
            'maximum_object_delay_frames': 1,
            'timing_prediction_requires_repeated_stable_animation_frame': True,
            'requires_cross_seed_or_cross_run_evidence': True,
            'geometry_not_implied': True,
            'static_candidates_do_not_drive_threats': True,
        },
        'counts': counts,
        'checks': {
            'exact_identity_count_132': len(boss_records) == 132,
            'role_counts_110_boss_22_miniboss': counts['boss'] == 110 and counts['miniboss'] == 22,
            'strict_flags_match_runtime_semantics': all(
                record['strict_attack_recognition'] == ('yes' if runtime['identities'][record['key']]['attack_recognition']['level'] == STRICT_LEVEL else 'no')
                and record['strict_attack_prediction'] == ('yes' if runtime['identities'][record['key']]['attack_recognition'].get('strict_prediction') else 'no')
                for record in boss_records),
            'strict_prediction_keys_are_verified': all(
                runtime['verified_timings'][key]['timing_verified']
                for record in prediction_records
                for key in record['strict_prediction_timing_keys'].split(',')),
            'strict_prediction_implies_recognition': all(
                record['strict_attack_recognition'] == 'yes' for record in prediction_records),
            'candidate_partition_is_complete': (
                counts['candidate_only'] + counts['strict_recognition'] + counts['no_candidate'] == counts['total']),
            'geometry_not_implied': True,
        },
        'strict_recognition_identity_keys': [record['key'] for record in strict_records],
        'strict_prediction_identity_keys': [record['key'] for record in prediction_records],
        'identities': {record['key']: record for record in boss_records},
    }
    VALIDATION.write_text(json.dumps(validation, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps(counts, ensure_ascii=False))
    print(f'Wrote {BOSS_TSV}')
    print(f'Wrote {BOSS_MD}')
    print(f'Wrote {VALIDATION}')


if __name__ == '__main__':
    main()
