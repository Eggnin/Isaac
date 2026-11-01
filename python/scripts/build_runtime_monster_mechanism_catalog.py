"""Build per-monster static mechanism candidates from the local J460 reference."""
from __future__ import annotations

import hashlib
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
STATIC_REFERENCE = ROOT / 'records' / 'research' / 'static-npc-attack-reference-local-j460-20261026.json'
ATTACK_EVENTS = ROOT / 'src' / 'engine_monster_attack_event_candidates.json'
ANIMATION_CATALOG = ROOT / 'src' / 'engine_monster_animation_catalog.json'
OUTPUT = ROOT / 'src' / 'engine_monster_static_mechanism_candidates.json'
WIKI_MONSTER_PAGE = 'https://isaac.huijiwiki.com/wiki/%E6%80%AA%E7%89%A9'
ENTITY_CONFIG_DOCS = 'https://wofsauge.github.io/IsaacDocs/rep/xml/entities2.html'


def sha256(path):
    digest = hashlib.sha256()
    with path.open('rb') as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b''):
            digest.update(chunk)
    return digest.hexdigest()


def main():
    static = json.loads(STATIC_REFERENCE.read_text(encoding='utf-8'))
    attack_events = json.loads(ATTACK_EVENTS.read_text(encoding='utf-8'))
    animations = json.loads(ANIMATION_CATALOG.read_text(encoding='utf-8'))
    if 'J460' not in static['source']['version']:
        raise ValueError('static reference is not a J460 resource set')
    if 'J460' not in attack_events['source_version'] or 'J460' not in animations['source_version']:
        raise ValueError('runtime candidates must use J460 sources')

    event_candidates = {}
    for event in attack_events['events']:
        entry = event_candidates.setdefault(event['key'], {'events': 0, 'cues': {}})
        entry['events'] += 1
        for cue in set(event.get('cues', ())) | set(event.get('animation_cues', ())):
            cue_entry = entry['cues'].setdefault(cue, {'trigger_count': 0, 'animations': set(), 'event_names': set()})
            cue_entry['trigger_count'] += 1
            cue_entry['animations'].add(event['animation'])
            cue_entry['event_names'].add(event['event_name'])

    animation_candidates = {}
    for animation in animations['animations']:
        if not animation.get('cues'):
            continue
        entry = animation_candidates.setdefault(animation['key'], {})
        for cue in animation['cues']:
            entry.setdefault(cue, set()).add(animation['name'])

    entries = []
    for static_entry in static['entries']:
        definitions = static_entry.get('entity_definitions', ())
        collision_damage = [definition.get('collisionDamage') for definition in definitions
                            if isinstance(definition.get('collisionDamage'), (int, float))]
        champion_values = [definition.get('champion') for definition in definitions
                           if isinstance(definition.get('champion'), (int, float))]
        base_contact_candidate = any(value > 0 for value in collision_damage)
        champion_allowed = any(value == 1 for value in champion_values)
        base_contact_zero = bool(collision_damage) and all(value <= 0 for value in collision_damage)
        entity_data = [{
            'path': definition.get('anm2path'),
            'name': definition.get('name'),
            'collision_damage': definition.get('collisionDamage'),
            'collision_radius': definition.get('collisionRadius'),
            'champion_allowed': definition.get('champion'),
            'is_boss': definition.get('boss'),
        } for definition in definitions]
        event_data = event_candidates.get(static_entry['key'], {'events': 0, 'cues': {}})
        animation_data = animation_candidates.get(static_entry['key'], {})
        entries.append({
            'key': static_entry['key'],
            'name_zh': static_entry['name_zh'],
            'display_name': static_entry.get('display_name'),
            'entity_config_names': static_entry.get('entity_config_names', []),
            'category': static_entry['category'],
            'role': static_entry['role'],
            'roster_scope': 'supplemental_npc' if static_entry['role'] == 'unlisted_npc' else 'wiki_monster_roster',
            'entity_definition_status': static_entry['entity_definition_status'],
            'static_entity_data': entity_data,
            'contact_damage': {
                'base_candidate': base_contact_candidate,
                'base_config_values': sorted(set(collision_damage)),
                'champion_allowed': champion_allowed if champion_values else None,
                'champion_candidate': champion_allowed,
                'champion_overrides_zero_base_candidate': champion_allowed and base_contact_zero,
                'confidence': 'static_candidate',
                'limitations': ['EntityConfig collisionDamage does not establish runtime EntityCollisionClass or an applied hit.'],
                'champion_rule_source': WIKI_MONSTER_PAGE if champion_allowed else None,
            },
            'static_event_cues': {
                'trigger_count': event_data['events'],
                'cues': [
                    {'cue': cue, 'trigger_count': value['trigger_count'],
                     'animations': sorted(value['animations'], key=str.casefold),
                     'event_names': sorted(value['event_names'], key=lambda name: str(name).casefold())}
                    for cue, value in sorted(event_data['cues'].items())
                ],
            },
            'attack_cued_animation_names': sorted(
                {name for names in animation_data.values() for name in names}, key=str.casefold),
            'animation_cues': [
                {'cue': cue, 'animation_names': sorted(names, key=str.casefold)}
                for cue, names in sorted(animation_data.items())
            ],
        })

    by_role = {}
    for role in sorted({entry['role'] for entry in entries}):
        role_entries = [entry for entry in entries if entry['role'] == role]
        by_role[role] = {
            'entries': len(role_entries),
            'roster_entries': len(role_entries) if role != 'unlisted_npc' else 0,
            'entries_with_entity_definitions': sum(bool(entry['static_entity_data']) for entry in role_entries),
            'base_contact_damage_candidates': sum(entry['contact_damage']['base_candidate'] for entry in role_entries),
            'champion_variants_allowed': sum(entry['contact_damage']['champion_allowed'] is True for entry in role_entries),
            'champion_contact_damage_candidates': sum(entry['contact_damage']['champion_candidate'] for entry in role_entries),
            'champion_contact_damage_overrides_zero_base': sum(
                entry['contact_damage']['champion_overrides_zero_base_candidate'] for entry in role_entries),
            'entries_with_static_event_cues': sum(bool(entry['static_event_cues']['trigger_count']) for entry in role_entries),
            'entries_with_attack_cued_animations': sum(bool(entry['attack_cued_animation_names']) for entry in role_entries),
        }

    document = {
        'format': 'isaac-static-monster-mechanism-candidates-v1',
        'source_version': static['source']['version'],
        'sources': {
            'static_entity_reference': {
                'path': STATIC_REFERENCE.relative_to(ROOT).as_posix(),
                'sha256': sha256(STATIC_REFERENCE),
            },
            'animation_event_candidates': {
                'path': ATTACK_EVENTS.relative_to(ROOT).as_posix(),
                'sha256': sha256(ATTACK_EVENTS),
            },
            'animation_name_catalog': {
                'path': ANIMATION_CATALOG.relative_to(ROOT).as_posix(),
                'sha256': sha256(ANIMATION_CATALOG),
            },
            'champion_contact_damage_rule': {
                'url': WIKI_MONSTER_PAGE,
                'summary': 'Champion monsters cause contact damage, even when their base form does not.',
                'accessed': '2026-10-26',
            },
            'entity_config_champion_field': {
                'url': ENTITY_CONFIG_DOCS,
                'summary': 'EntityConfig champion field indicates whether champion variants are allowed.',
            },
        },
        'coverage': {
            'roster_entries': static.get('coverage', {}).get('roster_entries', len(entries)),
            'entity_catalog_entries': len(entries),
            'supplemental_unlisted_npc_entries': sum(entry['role'] == 'unlisted_npc' for entry in entries),
            'entries_with_entity_definitions': sum(bool(entry['static_entity_data']) for entry in entries),
            'base_contact_damage_candidates': sum(entry['contact_damage']['base_candidate'] for entry in entries),
            'champion_variants_allowed': sum(entry['contact_damage']['champion_allowed'] is True for entry in entries),
            'champion_contact_damage_candidates': sum(entry['contact_damage']['champion_candidate'] for entry in entries),
            'champion_contact_damage_overrides_zero_base': sum(
                entry['contact_damage']['champion_overrides_zero_base_candidate'] for entry in entries),
            'entries_with_static_event_cues': sum(bool(entry['static_event_cues']['trigger_count']) for entry in entries),
            'entries_with_attack_cued_animations': sum(bool(entry['attack_cued_animation_names']) for entry in entries),
            'by_role': by_role,
        },
        'limitations': [
            'All per-monster rows are static candidates; they do not replace runtime source-linked observations.',
            'Positive EntityConfig collisionDamage does not establish runtime collision class, contact timing, or an applied hit.',
            'Champion contact candidates depend on the global wiki rule and local champion-variant permission; color-specific AI differences remain unmeasured.',
            'ANM2 event and animation cues do not prove the NPC AI executes an attack or emits a damaging object.',
        ],
        'entries': entries,
    }
    OUTPUT.write_text(json.dumps(document, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'output': str(OUTPUT), 'coverage': document['coverage']}, ensure_ascii=False, indent=2))


if __name__ == '__main__':
    main()
