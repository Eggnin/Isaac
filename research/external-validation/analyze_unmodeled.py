"""Triage existing direct-this field evidence; never infer types from instruction length."""
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
AUDIT = ROOT / 'research/ai-recovery/RUNTIME-FIELD-COVERAGE-20261029.json'
OUT = ROOT / 'research/external-validation/unmodeled-analysis.json'
PRIORITY = {'413.0.0', '886.1.0', '406.0.0', '411.0.0', '412.0.0', '60.0.0', '68.1.0'}


def main():
    audit = json.loads(AUDIT.read_text(encoding='utf-8'))
    rows = []
    for field in audit['unclassified_offsets']:
        sites = field.get('code_evidence', [])
        identities = sorted({key for site in sites for key in site.get('identities', [])})
        widths = sorted({match.group(1).lower() for site in sites
                         for match in re.finditer(r'\b(byte|word|dword|qword)\s+ptr\b', site.get('instruction', ''), re.I)})
        rows.append({
            'key': field['key'], 'offset': field['offset'],
            'layout_type_candidate': field['type'], 'category': field['category'],
            'description': field['description'], 'operand_widths': widths,
            'storage_class': 'entity-relative access candidate; object provenance and lifetime require identity-specific confirmation',
            'type_confirmed': False,
            'reads': field['reads'], 'writes': field['writes'],
            'identities': identities, 'priority_identities': sorted(PRIORITY.intersection(identities)),
            'sites': [{key: site.get(key) for key in ['site', 'instruction', 'access', 'function', 'function_file', 'assembly_file']} for site in sites],
            'reader_action': 'defer',
            'reason': 'No independent typed getter/callback truth for this slot. Instruction size is not field width; byte/word accesses may alias packed fields. Do not add a public NPC member based on an offset alone.',
            'alternative': 'Use already verified State/StateFrame/AI I1/I2, animation, and spawned-entity windows; retain raw evidence for a typed accessor probe.',
        })
    rows.sort(key=lambda r: (-bool(r['priority_identities']), -len(r['priority_identities']), int(r['offset'], 16)))
    OUT.write_text(json.dumps({'format': 'isaac-unmodeled-field-triage-v1', 'source': str(AUDIT),
                               'count': len(rows), 'new_public_reader_fields': 0, 'fields': rows}, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    markdown = ['# 未接入字段分析', '',
                f'已逐项整理 {len(rows)} 个偏移的读写位置、关联身份和指令操作数宽度。没有新增公共 NPC 字段。', '',
                '现有 `size-N` 来自指令长度，不能据此确定字段宽度；读写宽度、对象来源和持久性仍需按身份确认。内部按同一偏移读取不能提供独立语义真值。', '',
                '|偏移|布局候选类型|操作数宽度|高价值身份|处置|', '|---|---|---|---|---|']
    markdown.extend(f"|{r['offset']}|{r['layout_type_candidate']}|{','.join(r['operand_widths'])}|{','.join(r['priority_identities'])}|保留代码证据，等待独立类型/真值|" for r in rows)
    OUT.with_suffix('.md').write_text('\n'.join(markdown) + '\n', encoding='utf-8')
    print(json.dumps({'fields': len(rows), 'priority_candidates': sum(bool(r['priority_identities']) for r in rows), 'output': str(OUT)}))


if __name__ == '__main__':
    main()
