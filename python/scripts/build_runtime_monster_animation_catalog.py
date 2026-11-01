"""Build a compact J460 animation-name catalog for runtime monster coverage."""
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_REFERENCE = ROOT / 'records' / 'research' / 'static-npc-attack-reference-local-j460-20261026.json'
DEFAULT_OUTPUT = ROOT / 'src' / 'engine_monster_animation_catalog.json'


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference', type=Path, default=DEFAULT_REFERENCE)
    parser.add_argument('--output', type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    reference = json.loads(args.reference.read_text(encoding='utf-8'))
    source_version = reference['source']['version']
    if 'J460' not in source_version:
        raise ValueError(f'Runtime animation catalog requires a local J460 reference, got {source_version!r}')

    animations = []
    by_role = {}
    entries_with_animations = 0
    entries_with_attack_cued_animations = 0
    for entry in reference['entries']:
        indexed = {}
        for path in entry['animation_paths']:
            for animation in reference['animation_definitions'].get(path, {}).get('animations', ()):
                key = animation['name'].casefold()
                record = indexed.setdefault(key, {
                    'key': entry['key'], 'role': entry['role'], 'name': animation['name'],
                    'cues': set(), 'definitions': [],
                })
                record['cues'].update(animation['cues'])
                record['definitions'].append({
                    'path': path,
                    'frame_count': animation['frame_count'],
                    'loop': animation['loop'],
                    'cues': animation['cues'],
                })
        role = entry['role']
        counts = by_role.setdefault(role, Counter())
        counts['roster_entries'] += role != 'unlisted_npc'
        counts['entity_catalog_entries'] += 1
        counts['animation_names_available'] += len(indexed)
        counts['attack_cued_animation_names_available'] += sum(bool(animation['cues']) for animation in indexed.values())
        counts['entries_with_animations'] += bool(indexed)
        attack_cued = any(animation['cues'] for animation in indexed.values())
        counts['entries_with_attack_cued_animations'] += attack_cued
        entries_with_animations += bool(indexed)
        entries_with_attack_cued_animations += attack_cued
        animations.extend({**animation, 'cues': sorted(animation['cues']),
                           'cue_sources': ['animation_name'] if animation['cues'] else ['unclassified'],
                           'definitions': sorted(animation['definitions'], key=lambda item: item['path'])}
                          for animation in indexed.values())
    animations.sort(key=lambda animation: (animation['key'], animation['name'].casefold()))
    document = {
        'format': 'isaac-j460-monster-animation-catalog-v1',
        'source_version': source_version,
        'static_reference_sha256': _sha256(args.reference),
        'roster_entry_count': reference.get('coverage', {}).get('roster_entries', len(reference['entries'])),
        'entity_catalog_entry_count': reference.get('coverage', {}).get(
            'entity_catalog_entries', len(reference['entries'])),
        'supplemental_unlisted_npc_entries': reference.get('coverage', {}).get(
            'supplemental_unlisted_npc_entries', 0),
        'entries_with_animations': entries_with_animations,
        'entries_without_animations': len(reference['entries']) - entries_with_animations,
        'entries_with_attack_cued_animations': entries_with_attack_cued_animations,
        'animation_name_count': len(animations),
        'attack_cued_animation_name_count': sum(bool(animation['cues']) for animation in animations),
        'unclassified_animation_name_count': sum(not animation['cues'] for animation in animations),
        'by_role': {role: dict(counts) for role, counts in sorted(by_role.items())},
        'animations': animations,
        'limitations': [
            'Animation names and lexical cues are static candidates, not proof that an attack is emitted.',
            'Runtime matches use monster identity and animation name; multiple ANM2 paths for one name remain listed as definitions.',
            'ANM2 animations do not encode the full NPC state machine or all Lua/native attack logic.',
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(document, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({key: value for key, value in document.items() if key != 'animations' and key != 'limitations'},
                     ensure_ascii=False, indent=2))


def _sha256(path):
    digest = hashlib.sha256()
    with path.open('rb') as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b''):
            digest.update(chunk)
    return digest.hexdigest()


if __name__ == '__main__':
    main()
