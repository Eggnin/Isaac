"""Index entity config and animation event candidates for the static monster roster."""
import argparse
import hashlib
import json
from pathlib import Path
import xml.etree.ElementTree as ET


CATALOG_PATH = Path(__file__).resolve().parents[1] / 'src' / 'engine_monster_catalog.tsv'
CANDIDATE_CUES = {
    'projectile_emission_candidate': ('shoot', 'shot', 'fire', 'spit', 'throw', 'tear', 'laser', 'beam',
                                      'brimstone', 'projectile'),
    'explosion_or_bomb_candidate': ('bomb', 'explosion', 'blast', 'detonate'),
    'jump_or_impact_candidate': ('jump', 'land', 'stomp', 'charge', 'dash', 'rush', 'lunge', 'impact', 'hop',
                                 'slam', 'smash', 'crush', 'pound', 'flop'),
    'contact_attack_candidate': ('bite', 'claw', 'slash', 'punch', 'stab', 'scratch', 'chomp', 'swipe', 'slap',
                                 'headbutt', 'maul'),
    'summon_or_spawn_candidate': ('summon', 'spawn', 'split', 'revive', 'call', 'lay egg', 'layegg'),
    'generic_attack_candidate': ('attack', 'ambush', 'pounce', 'strike'),
    'area_or_control_attack_candidate': ('suck', 'suction', 'inhale', 'swallow', 'pull', 'fart', 'poison',
                                         'shockwave', 'crackwave'),
    'burrow_or_emergence_candidate': ('burrow', 'dig', 'dive', 'emerge', 'holeopen', 'holeexit', 'popout', 'popdown'),
    'contact_window_candidate': ('collisionon', 'collisionoff'),
}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--entities-xml', type=Path, required=True)
    parser.add_argument('--animations-dir', type=Path, required=True)
    parser.add_argument('--catalog', type=Path, default=CATALOG_PATH)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--source-version', required=True)
    parser.add_argument('--source-reference', required=True)
    args = parser.parse_args()

    catalog = [line.split('\t') for line in args.catalog.read_text(encoding='utf-8').splitlines()[1:] if line]
    entities = {}
    for entity in ET.parse(args.entities_xml).getroot().findall('entity'):
        key = '.'.join((entity.attrib.get('id', '-1'), entity.attrib.get('variant', '0'),
                        entity.attrib.get('subtype', '0')))
        entities.setdefault(key, []).append(entity)

    animation_definitions = {}
    missing_animations = set()
    entries = []
    role_counts = {}
    cue_entry_count = 0
    total_animation_count = 0
    total_event_trigger_count = 0
    for row in catalog:
        key = row[0]
        role = row[3] if len(row) > 3 else row[2]
        role_counts.setdefault(role, {'roster_entries': 0, 'entity_catalog_entries': 0,
                                      'entity_definitions_matched': 0,
                                      'entries_with_animation_cues': 0, 'candidate_event_triggers': 0})
        role_counts[role]['roster_entries'] += role != 'unlisted_npc'
        role_counts[role]['entity_catalog_entries'] += 1
        definitions = entities.get(key, [])
        animation_paths = sorted({entity.attrib['anm2path'].lower() for entity in definitions
                                  if entity.attrib.get('anm2path')})
        for animation_path in animation_paths:
            if animation_path in animation_definitions or animation_path in missing_animations:
                continue
            path = args.animations_dir / Path(animation_path).name
            if not path.is_file():
                missing_animations.add(animation_path)
                continue
            animation_definitions[animation_path] = _read_animation(path, animation_path)
            total_animation_count += len(animation_definitions[animation_path]['animations'])
            total_event_trigger_count += sum(len(animation['triggers'])
                                             for animation in animation_definitions[animation_path]['animations'])
        available_paths = [path for path in animation_paths if path in animation_definitions]
        candidate_animations = [
            {'path': path, 'name': animation['name'], 'frame_count': animation['frame_count'],
             'loop': animation['loop'], 'cues': animation['cues']}
            for path in available_paths
            for animation in animation_definitions[path]['animations']
            if animation['cues']
        ]
        candidate_events = [
            {'path': path, 'animation': animation['name'], **trigger, 'cues': _cues(trigger['name'])}
            for path in available_paths
            for animation in animation_definitions[path]['animations']
            for trigger in animation['triggers']
            if _cues(trigger['name'])
        ]
        has_candidates = bool(candidate_animations or candidate_events)
        cue_entry_count += has_candidates
        role_counts[role]['entity_definitions_matched'] += bool(definitions)
        role_counts[role]['entries_with_animation_cues'] += has_candidates
        role_counts[role]['candidate_event_triggers'] += len(candidate_events)
        entries.append({
            'key': key,
            'name_zh': row[1] or None,
            'display_name': row[1] or (row[4] if len(row) > 4 else None) or key,
            'entity_config_names': sorted({entity.attrib.get('name', '') for entity in definitions
                                           if entity.attrib.get('name')}),
            'category': row[2],
            'role': role,
            'entity_definition_status': 'found' if definitions else 'missing',
            'entity_definitions': [_typed_attributes(entity.attrib) for entity in definitions],
            'animation_paths': animation_paths,
            'missing_animation_paths': [path for path in animation_paths if path in missing_animations],
            'candidate_animations': candidate_animations,
            'candidate_events': candidate_events,
            'candidate_status': 'animation_cues_available' if has_candidates else
                                'animation_cues_not_observed' if available_paths else 'animation_data_missing',
        })

    document = {
        'format': 'isaac-static-monster-animation-reference-v1',
        'source': {
            'version': args.source_version,
            'reference': args.source_reference,
            'entities_xml_sha256': _sha256(args.entities_xml),
            'catalog': str(args.catalog),
            'catalog_sha256': _sha256(args.catalog),
            'scope': 'static identity, configuration, animation names, and animation event cues; not NPC AI source',
            'limitations': [
                'Animation names and events are candidates, not proof that an attack is emitted.',
                'EntityConfig does not encode the full NPC state machine or all Lua/native attack logic.',
                'This source snapshot must be compared with the local game version before runtime use.',
            ],
        },
        'coverage': {
            'roster_entries': sum(row[3] != 'unlisted_npc' for row in catalog),
            'entity_catalog_entries': len(catalog),
            'supplemental_unlisted_npc_entries': sum(row[3] == 'unlisted_npc' for row in catalog),
            'entity_definitions_matched': sum(entry['entity_definition_status'] == 'found' for entry in entries),
            'entries_with_animation_cues': cue_entry_count,
            'unique_animation_paths_referenced': len({path for entry in entries for path in entry['animation_paths']}),
            'animation_files_available': len(animation_definitions),
            'animation_files_missing': len(missing_animations),
            'animations_indexed': total_animation_count,
            'event_triggers_indexed': total_event_trigger_count,
            'by_role': role_counts,
        },
        'animation_definitions': animation_definitions,
        'missing_animation_paths': sorted(missing_animations),
        'entries': entries,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(document, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps(document['coverage'], ensure_ascii=False, sort_keys=True))


def _read_animation(path, relative_path):
    root = ET.parse(path).getroot()
    events = {event.attrib.get('Id'): event.attrib.get('Name', '')
              for event in root.findall('./Content/Events/Event')}
    animations = []
    for animation in root.findall('./Animations/Animation'):
        triggers = []
        for trigger in animation.findall('./Triggers/Trigger'):
            event_id = trigger.attrib.get('EventId')
            event_name = events.get(event_id, f'unknown_event:{event_id}')
            triggers.append({'name': event_name,
                             'frame': _integer(trigger.attrib.get('AtFrame')),
                             'cues': _cues(event_name)})
        name = animation.attrib.get('Name', '')
        animations.append({'name': name,
                           'frame_count': _integer(animation.attrib.get('FrameNum')),
                           'loop': animation.attrib.get('Loop', '').casefold() == 'true',
                           'cues': _cues(name),
                           'triggers': triggers})
    return {'sha256': _sha256(path), 'animations': animations}


def _typed_attributes(attributes):
    return {key: _typed_value(value) for key, value in sorted(attributes.items())}


def _typed_value(value):
    if value.casefold() == 'true':
        return True
    if value.casefold() == 'false':
        return False
    try:
        return int(value)
    except ValueError:
        try:
            return float(value)
        except ValueError:
            return value


def _integer(value):
    try:
        return int(value)
    except (TypeError, ValueError):
        return None


def _cues(text):
    normalized = text.casefold()
    return [kind for kind, tokens in CANDIDATE_CUES.items()
            if any(token in normalized for token in tokens)]


def _sha256(path):
    digest = hashlib.sha256()
    with path.open('rb') as file:
        for chunk in iter(lambda: file.read(1024 * 1024), b''):
            digest.update(chunk)
    return digest.hexdigest()


if __name__ == '__main__':
    main()
