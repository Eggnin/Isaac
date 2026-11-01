"""Build an evidence-indexed monster mechanism library from raw callback captures.

The input callback streams are read-only. The generated index separates entity
identity, observed actions, emitted attack objects, and pre-application damage
requests so that weak evidence is not reported as a confirmed hit.
"""
from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'src'))
from engine_attack_mechanisms import ATTACK_EFFECTS, ATTACK_EFFECT_PREFIXES


ATTACK_OBJECT_TYPES = {
    2: 'tear_emission',
    4: 'bomb_emission',
    7: 'laser_emission',
    8: 'knife_emission',
    9: 'projectile_emission',
    1000: 'attack_effect',
}
LINKED_ATTACK_OBJECT_MECHANISMS = {
    'tear_emission', 'bomb_emission', 'laser_emission', 'knife_emission',
    'projectile_emission', 'attack_effect',
}
NPC_UPDATE_CALLBACKS = {'MC_NPC_UPDATE'}
RELEVANT_CALLBACKS = NPC_UPDATE_CALLBACKS | {
    'MC_POST_NPC_INIT', 'MC_ENTITY_TAKE_DMG', 'MC_POST_TEAR_INIT', 'MC_POST_BOMB_INIT',
    'MC_POST_LASER_INIT', 'MC_POST_KNIFE_INIT', 'MC_POST_PROJECTILE_INIT', 'MC_POST_EFFECT_INIT',
}
ACTION_CUES = (
    ('summon_or_split', ('summon', 'spawn', 'split', 'revive', 'call')),
    ('charge_or_dash', ('charge', 'dash', 'rush', 'lunge', 'ram')),
    ('jump_or_impact', ('jump', 'hop', 'stomp', 'landing', 'land', 'impact', 'crash')),
    ('beam_or_laser', ('laser', 'brim', 'beam')),
    ('melee_attack', ('bite', 'claw', 'slash', 'punch', 'stab', 'scratch')),
    ('ranged_attack', ('shoot', 'shot', 'spit', 'throw', 'tear', 'breath')),
    ('generic_attack', ('attack', 'fire', 'bomb', 'explosion')),
)
LOCOMOTION_ANIMATIONS = ('idle', 'walk', 'fly', 'appear', 'disappear', 'death', 'dead', 'die',
                         'hit', 'hurt', 'takehit', 'stun', 'recover')


def scalar(value):
    if isinstance(value, dict) and value.get('kind') in ('integer', 'number', 'string', 'boolean'):
        return value.get('value')
    return value


def integer(value):
    value = scalar(value)
    try:
        return int(value)
    except (TypeError, ValueError):
        return None


def text(value):
    value = scalar(value)
    return str(value) if value is not None else None


def entity_fields(entity):
    return entity.get('fields') if isinstance(entity.get('fields'), dict) else {}


def entity_value(entity, name):
    fields = entity_fields(entity)
    return scalar(fields.get(name))


def entity_number(entity, name):
    try:
        return float(entity_value(entity, name))
    except (TypeError, ValueError):
        return None


def entity_type(entity):
    value = integer(entity_value(entity, 'Type'))
    if value is not None:
        return value
    return integer((entity.get('identity') or {}).get('Type'))


def entity_id(entity):
    identity = entity.get('identity') if isinstance(entity.get('identity'), dict) else {}
    fields = entity_fields(entity)
    typ = entity_type(entity)
    variant = integer(scalar(fields.get('Variant')))
    if variant is None:
        variant = integer(identity.get('Variant'))
    subtype = integer(scalar(fields.get('SubType')))
    if subtype is None:
        subtype = integer(identity.get('SubType'))
    if typ is None:
        return None
    if variant is None:
        variant = 0
    return {'type': typ, 'variant': variant, 'subtype': subtype,
            'key': f'{typ}.{variant}.{subtype if subtype is not None else "*"}',
            'seed': text(scalar(fields.get('InitSeed')) or identity.get('InitSeed')),
            'ptr_hash': text(identity.get('ptr_hash'))}


def canonical_key(key, roster):
    if key in roster or not key.endswith('.*'):
        return key
    prefix = key[:-2]
    matches = [candidate for candidate in roster if candidate.startswith(prefix + '.')]
    return matches[0] if len(matches) == 1 else key


def walk_entities(value):
    if isinstance(value, dict):
        if value.get('class') == 'entity':
            yield value
        for child in value.values():
            yield from walk_entities(child)
    elif isinstance(value, list):
        for child in value:
            yield from walk_entities(child)


def action_family(animation):
    name = (animation or '').casefold()
    if not name or name.startswith(LOCOMOTION_ANIMATIONS):
        return 'non_attack_or_locomotion'
    for family, cues in ACTION_CUES:
        if any(cue in name for cue in cues):
            return family
    return 'unclassified_action'


def read_header_and_footer(path):
    with path.open('rb') as stream:
        first = stream.readline()
        size = stream.seek(0, 2)
        stream.seek(max(0, size - 131072))
        tail = stream.read().splitlines()
    try:
        header = json.loads(first)
    except (UnicodeDecodeError, json.JSONDecodeError):
        return None, None
    footer = None
    for line in reversed(tail):
        try:
            row = json.loads(line)
        except (UnicodeDecodeError, json.JSONDecodeError):
            continue
        if row.get('kind') == 'capture_end':
            footer = row
            break
    return header, footer


def callback_name(line):
    marker = '"callback":'
    start = line.find(marker)
    if start < 0:
        return None
    start += len(marker)
    while start < len(line) and line[start].isspace():
        start += 1
    if start >= len(line) or line[start] != '"':
        return None
    end = line.find('"', start + 1)
    return line[start + 1:end] if end > start else None


def load_roster(path):
    rows = {}
    for line in path.read_text(encoding='utf-8').splitlines()[1:]:
        if not line:
            continue
        parts = line.split('\t')
        rows[parts[0]] = {'name_zh': parts[1], 'category': parts[2],
                          'role': parts[3] if len(parts) > 3 else parts[2]}
    return rows


def add_counted(target, key, run, amount=1):
    row = target.setdefault(key, {'observations': 0, 'runs': set()})
    row['observations'] += amount
    row['runs'].add(run)
    return row


def add_action_mechanism_association(record, action, mechanism, object_identity, frame_gap, run):
    if action is None or frame_gap not in (0, 1):
        return
    association = {
        'state': action['state'],
        'animation': action['animation'],
        'candidate_family': action['candidate_family'],
        'state_frame': action['state_frame'],
        'animation_frame': action['animation_frame'],
        'mechanism': mechanism,
        'object': object_identity,
        'action_to_object_frame_gap': frame_gap,
        'association_basis': 'same_frame' if frame_gap == 0 else 'previous_frame_state',
        'confidence': 'source_linked_temporal_cooccurrence',
    }
    key = json.dumps(association, ensure_ascii=False, sort_keys=True, separators=(',', ':'))
    row = record['action_mechanism_associations'].setdefault(
        key, {**association, 'observations': 0, 'runs': set()})
    row['observations'] += 1
    row['runs'].add(run)


def finalize_counts(rows):
    return {key: {**value, 'runs': len(value['runs'])}
            for key, value in sorted(rows.items(), key=lambda item: str(item[0]))}


def analyze_capture(path, relative_path, roster, effect_variant_names, result):
    header, footer = read_header_and_footer(path)
    result['input_files'] += 1
    result['input_bytes'] += path.stat().st_size
    if not header or not isinstance(footer, dict) or footer.get('complete') is not True:
        result['incomplete_files'].append(relative_path)
        return
    if footer.get('seen') != footer.get('written'):
        result['incomplete_files'].append(relative_path)
        return

    result['complete_files'] += 1
    run = relative_path
    callbacks = Counter()
    seen_attack_objects = set()
    previous_states = {}
    pointer_to_monster = {}
    pointer_to_action = {}
    roster_entries = result['monsters']
    unattributed_objects = result['unattributed_attack_objects']
    damage_sources = result['pre_application_damage_requests']
    room_marker = None
    parsed_rows = 0

    with path.open('r', encoding='utf-8', errors='strict') as stream:
        for line_number, line in enumerate(stream, 1):
            if line_number == 1 or not line.strip():
                continue
            callback = callback_name(line)
            if callback is None:
                continue
            parsed_rows += 1
            callbacks[callback] += 1
            if callback not in RELEVANT_CALLBACKS:
                continue
            try:
                event = json.loads(line)
            except json.JSONDecodeError:
                result['parse_errors'] += 1
                continue
            if event.get('kind') != 'callback':
                continue
            frame = integer(event.get('frame'))
            room = (event.get('stage'), event.get('room'))
            if room != room_marker:
                previous_states.clear()
                pointer_to_monster.clear()
                pointer_to_action.clear()
                room_marker = room
            args = event.get('args') or []
            entities = list(walk_entities(args))
            unique_entities = {}
            for entity in entities:
                ident = entity_id(entity)
                if ident is None:
                    continue
                identity = entity.get('identity') or {}
                unique = (ident['type'], ident['seed'], ident['ptr_hash'])
                existing = unique_entities.get(unique)
                if existing is None or len(entity_fields(entity)) > len(entity_fields(existing)):
                    unique_entities[unique] = entity

            for entity in unique_entities.values():
                ident = entity_id(entity)
                if ident and 10 <= ident['type'] <= 999:
                    if ident['ptr_hash']:
                        pointer_to_monster[ident['ptr_hash']] = ident['key']

            if callback in NPC_UPDATE_CALLBACKS:
                for entity in unique_entities.values():
                    ident = entity_id(entity)
                    if not ident or not 10 <= ident['type'] <= 999:
                        continue
                    monster_key = canonical_key(ident['key'], roster)
                    record = roster_entries.setdefault(monster_key, new_monster_record(monster_key, roster))
                    record['observed_npc_update_frames'] += 1
                    record['runs'].add(run)
                    state = integer(entity_value(entity, 'State'))
                    animation = text(entity_value(entity, 'animation'))
                    state_frame = integer(entity_value(entity, 'StateFrame'))
                    animation_frame = integer(entity_value(entity, 'animation_frame'))
                    if ident['ptr_hash']:
                        pointer_to_action[ident['ptr_hash']] = {
                            'key': monster_key,
                            'state': state,
                            'animation': animation,
                            'candidate_family': action_family(animation),
                            'state_frame': state_frame,
                            'animation_frame': animation_frame,
                            'frame': frame,
                        }
                    action_key = (state, animation)
                    action = record['actions'].setdefault(action_key, {
                        'state': state, 'animation': animation,
                        'candidate_family': action_family(animation), 'observations': 0,
                        'runs': set(), 'first_frame': frame, 'last_frame': frame,
                        'state_frame_min': state_frame, 'state_frame_max': state_frame,
                    })
                    action['observations'] += 1
                    action['runs'].add(run)
                    action['last_frame'] = frame
                    if frame is not None and (action['first_frame'] is None or frame < action['first_frame']):
                        action['first_frame'] = frame
                    if state_frame is not None:
                        action['state_frame_min'] = state_frame if action['state_frame_min'] is None else min(action['state_frame_min'], state_frame)
                        action['state_frame_max'] = state_frame if action['state_frame_max'] is None else max(action['state_frame_max'], state_frame)

                    instance = (room, ident['seed'] or ident['ptr_hash'] or monster_key)
                    previous = previous_states.get(instance)
                    if previous is not None and previous['action'] != action_key:
                        transition_key = (previous['action'][0], previous['action'][1], state, animation)
                        transition = record['transitions'].setdefault(transition_key, {
                            'previous_state': previous['action'][0],
                            'previous_animation': previous['action'][1],
                            'state': state, 'animation': animation,
                            'observations': 0, 'runs': set(), 'max_frame_gap': 0,
                        })
                        transition['observations'] += 1
                        transition['runs'].add(run)
                        if frame is not None and previous['frame'] is not None:
                            transition['max_frame_gap'] = max(transition['max_frame_gap'], frame - previous['frame'])
                    previous_states[instance] = {'action': action_key, 'frame': frame}

                    collision_damage = entity_number(entity, 'CollisionDamage')
                    collision_class = integer(entity_value(entity, 'EntityCollisionClass'))
                    if collision_damage is not None and collision_damage > 0 and collision_class in (1, 2, 4):
                        contact = record['mechanisms'].setdefault('contact_damage_capability', {
                            'evidence': 'CollisionDamage > 0 with an active EntityCollisionClass',
                            'observations': 0, 'runs': set(), 'variants': set(),
                        })
                        contact['observations'] += 1
                        contact['runs'].add(run)
                        contact['variants'].add(f'damage={collision_damage:g};collision_class={collision_class}')

            if callback == 'MC_POST_NPC_INIT':
                for child in unique_entities.values():
                    child_id = entity_id(child)
                    if not child_id or not 10 <= child_id['type'] <= 999:
                        continue
                    child_fields = entity_fields(child)
                    for link_name in ('SpawnerEntity', 'Parent'):
                        link = child_fields.get(link_name)
                        if not isinstance(link, dict):
                            continue
                        source_type = integer(link.get('Type'))
                        source_variant = integer(link.get('Variant'))
                        source_subtype = integer(link.get('SubType'))
                        source_ptr = text(link.get('ptr_hash'))
                        source_key = None
                        if source_type and 10 <= source_type <= 999:
                            source_key = canonical_key(f'{source_type}.{source_variant or 0}.{source_subtype if source_subtype is not None else "*"}', roster)
                        elif source_ptr and source_ptr in pointer_to_monster:
                            source_key = pointer_to_monster[source_ptr]
                        if source_key is None:
                            continue
                        source_record = roster_entries.setdefault(source_key, new_monster_record(source_key, roster))
                        source_record['runs'].add(run)
                        relation = source_record['mechanisms'].setdefault('summon_or_split_relation', {
                            'evidence': 'a newly initialized NPC has this NPC as Parent or SpawnerEntity',
                            'observations': 0, 'runs': set(), 'children': set(), 'source_bases': set(),
                        })
                        relation['observations'] += 1
                        relation['runs'].add(run)
                        relation['children'].add(canonical_key(child_id['key'], roster))
                        relation['source_bases'].add(link_name.casefold())
                        source_action = pointer_to_action.get(source_ptr)
                        if source_action and frame is not None and source_action['frame'] is not None:
                            add_action_mechanism_association(
                                source_record, source_action, 'summon_or_split_relation',
                                {'type': child_id['type'], 'variant': child_id['variant'],
                                 'subtype': child_id['subtype']},
                                frame - source_action['frame'], run)
                        break

            if callback == 'MC_ENTITY_TAKE_DMG':
                source_keys = set()
                for value in walk_entities(args):
                    ident = entity_id(value)
                    if ident and 10 <= ident['type'] <= 999:
                        source_keys.add(ident['key'])
                    elif value.get('class') == 'entity_source':
                        source_type = integer(entity_value(value, 'Type'))
                        source_variant = integer(entity_value(value, 'Variant'))
                        if source_type and 10 <= source_type <= 999:
                            source_keys.add(f'{source_type}.{source_variant or 0}.*')
                for key in source_keys:
                    row = damage_sources.setdefault(key, {'requests': 0, 'runs': set()})
                    row['requests'] += 1
                    row['runs'].add(run)

            for entity in unique_entities.values():
                ident = entity_id(entity)
                if not ident or ident['type'] not in ATTACK_OBJECT_TYPES:
                    continue
                effect_name = effect_variant_names.get(ident['variant']) if ident['type'] == 1000 else None
                mechanism = ATTACK_OBJECT_TYPES[ident['type']]
                if ident['type'] == 1000 and not (
                        entity_number(entity, 'CollisionDamage') is not None and entity_number(entity, 'CollisionDamage') > 0
                        or effect_name in ATTACK_EFFECTS
                        or (effect_name or '').startswith(ATTACK_EFFECT_PREFIXES)):
                    mechanism = 'unknown_effect_emission'
                identity = entity.get('identity') or {}
                instance = (ident['type'], ident['seed'] or ident['ptr_hash'] or f'{ident["variant"]}.{ident["subtype"]}', room)
                if instance in seen_attack_objects:
                    continue
                seen_attack_objects.add(instance)
                fields = entity_fields(entity)
                source_key = None
                source_basis = None
                source_ptr = None
                for name in ('SpawnerEntity', 'Parent'):
                    link = fields.get(name)
                    if not isinstance(link, dict):
                        continue
                    source_type = integer(link.get('Type')) or integer(scalar((link.get('fields') or {}).get('Type')))
                    source_variant = integer(link.get('Variant')) or integer(scalar((link.get('fields') or {}).get('Variant')))
                    source_subtype = integer(link.get('SubType')) or integer(scalar((link.get('fields') or {}).get('SubType')))
                    source_ptr = text(link.get('ptr_hash'))
                    if source_type and 10 <= source_type <= 999:
                        source_key = canonical_key(f'{source_type}.{source_variant or 0}.{source_subtype if source_subtype is not None else "*"}', roster)
                        source_basis = name.casefold()
                        break
                    if source_ptr and source_ptr in pointer_to_monster:
                        source_key = pointer_to_monster[source_ptr]
                        source_basis = name.casefold() + '_pointer'
                        break
                if source_key is None:
                    for entity_source in (value for value in args if isinstance(value, dict) and value.get('class') == 'entity_source'):
                        source_type = integer(entity_value(entity_source, 'Type'))
                        source_variant = integer(entity_value(entity_source, 'Variant'))
                        nested = (entity_fields(entity_source).get('Entity') or {})
                        nested_ident = entity_id(nested) if isinstance(nested, dict) else None
                        if nested_ident and 10 <= nested_ident['type'] <= 999:
                            source_key = canonical_key(nested_ident['key'], roster)
                            source_ptr = nested_ident['ptr_hash']
                            source_basis = 'entity_source_entity'
                            break
                        if source_type and 10 <= source_type <= 999:
                            source_ptr = text(entity_source.get('ptr_hash'))
                            source_key = f'{source_type}.{source_variant or 0}.*'
                            source_basis = 'entity_source_fields'
                            break
                detail = {'mechanism': mechanism, 'variant': ident['variant'],
                          'subtype': ident['subtype'], 'callback_first_seen': callback,
                          'source_basis': source_basis, 'runs': {run}}
                if source_key is None:
                    key = f'{ident["type"]}.{ident["variant"]}.{ident["subtype"]}'
                    entry = unattributed_objects.setdefault(key, {'mechanism': mechanism, 'objects': 0, 'runs': set()})
                    entry['objects'] += 1
                    entry['runs'].add(run)
                    continue
                source_key = canonical_key(source_key, roster)
                record = roster_entries.setdefault(source_key, new_monster_record(source_key, roster))
                record['runs'].add(run)
                mechanism_record = record['mechanisms'].setdefault(mechanism, {
                    'evidence': 'attack object observed in the callback stream and linked through its parent/spawner',
                    'objects': 0, 'runs': set(), 'variants': set(), 'source_bases': set(),
                    'variant_names': set(), 'first_callback_names': set(),
                })
                mechanism_record['objects'] += 1
                mechanism_record['runs'].add(run)
                mechanism_record['variants'].add(f'{ident["type"]}.{ident["variant"]}.{ident["subtype"] if ident["subtype"] is not None else "*"}')
                if effect_name:
                    mechanism_record['variant_names'].add(effect_name)
                mechanism_record['source_bases'].add(source_basis)
                mechanism_record['first_callback_names'].add(callback)
                if mechanism != 'unknown_effect_emission' and source_ptr and frame is not None:
                    source_action = pointer_to_action.get(source_ptr)
                    if (source_action and source_action['frame'] is not None and
                            source_action['key'] == source_key):
                        add_action_mechanism_association(
                            record, source_action, mechanism,
                            {'type': ident['type'], 'variant': ident['variant'],
                             'subtype': ident['subtype'], 'variant_name': effect_name},
                            frame - source_action['frame'], run)

    result['callbacks_total'] += parsed_rows
    result['callback_counts'] = dict(Counter(result['callback_counts']) + callbacks)


def new_monster_record(key, roster):
    identity = roster.get(key, {})
    return {
        'key': key, 'name_zh': identity.get('name_zh'),
        'category': identity.get('category'), 'role': identity.get('role', 'unclassified_npc'),
        'runs': set(), 'observed_npc_update_frames': 0,
        'actions': {}, 'transitions': {}, 'mechanisms': {}, 'action_mechanism_associations': {},
    }


def serialize_monster(record):
    return {
        **{key: value for key, value in record.items()
           if key not in ('runs', 'actions', 'transitions', 'mechanisms', 'action_mechanism_associations')},
        'runs_observed': len(record['runs']),
        'actions': [dict(value, runs=len(value['runs'])) for value in sorted(record['actions'].values(),
                                                                             key=lambda row: (row['state'] is None, row['state'], row['animation'] or ''))],
        'transitions': [dict(value, runs=len(value['runs'])) for value in sorted(record['transitions'].values(),
                                                                                 key=lambda row: (row['previous_state'] is None, row['previous_state'], row['previous_animation'] or '', row['state'] is None, row['state'], row['animation'] or ''))],
        'action_mechanism_associations': [dict(value, runs=len(value['runs']))
                                          for value in sorted(record['action_mechanism_associations'].values(),
                                                              key=lambda row: (row['animation'] or '', row['mechanism'],
                                                                               row['action_to_object_frame_gap'],
                                                                               row['object']['type'], row['object']['variant'],
                                                                               str(row['object']['subtype'])))],
        'mechanisms': {name: {key: (sorted(value) if isinstance(value, set) else value)
                              for key, value in entry.items() if key != 'runs'} | {'runs': len(entry['runs'])}
                       for name, entry in sorted(record['mechanisms'].items())},
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--records-root', type=Path, default=Path('records'))
    parser.add_argument('--output', type=Path, default=Path('records/research/attack-mechanism-library-action-links-20261026.json'))
    args = parser.parse_args()
    records_root = args.records_root.resolve()
    roster = load_roster(Path(__file__).resolve().parents[1] / 'src' / 'engine_monster_catalog.tsv')
    captures = sorted(records_root.rglob('engine-events.jsonl'))
    enum_data = json.loads((Path(__file__).resolve().parents[1] / 'src' / 'engine_enums.json').read_text(encoding='utf-8'))
    effect_variant_names = {int(value): name for name, value in enum_data.get('EffectVariant', {}).items()}
    result = {
        'schema_version': 1,
        'generated_at_utc': datetime.now(timezone.utc).isoformat(),
        'source': {'records_root': str(records_root), 'capture_mode': 'all_callbacks_raw',
                   'static_roster_entries': len(roster), 'runtime_game_files_modified': False},
        'coverage_rules': {
            'action_signature': 'State + animation observed on MC_NPC_UPDATE; a cue family is heuristic only',
            'action_mechanism_association': 'attack object or child NPC linked to a source NPC and observed within the same or immediately preceding game frame as its latest MC_NPC_UPDATE; temporal co-occurrence only, not causal proof',
            'emitted_attack_object': 'unique observed attack object linked to an NPC parent/spawner',
            'contact_damage_capability': 'positive CollisionDamage and EntityCollisionClass in {1,2,4}; not proof of a hit',
            'damage_request': 'MC_ENTITY_TAKE_DMG is pre-application evidence; it does not prove applied damage or sole causation',
            'complete_capture': 'capture_end complete=true and seen=written; incomplete streams are excluded from coverage',
            'elite_profile_limit': 'raw callback captures do not include ChampionColor, so elite colors are not separated here',
        },
        'input_files': 0, 'input_bytes': 0, 'complete_files': 0, 'callbacks_total': 0,
        'parse_errors': 0, 'callback_counts': {}, 'incomplete_files': [],
        'monsters': {}, 'unattributed_attack_objects': {}, 'pre_application_damage_requests': {},
    }
    for path in captures:
        relative_path = path.relative_to(records_root).as_posix()
        print(f'Processing {relative_path} ({path.stat().st_size / 1024**2:.0f} MB)', flush=True)
        analyze_capture(path, relative_path, roster, effect_variant_names, result)
        print(f'Finished {relative_path}; complete captures indexed: {result["complete_files"]}', flush=True)
    result['monsters'] = [serialize_monster(row) for _, row in sorted(result['monsters'].items())]
    result['unattributed_attack_objects'] = {
        key: {**value, 'runs': len(value['runs'])}
        for key, value in sorted(result['unattributed_attack_objects'].items())
    }
    result['pre_application_damage_requests'] = {
        key: {**value, 'runs': len(value['runs'])}
        for key, value in sorted(result['pre_application_damage_requests'].items())
    }
    roster_monsters = [row for row in result['monsters'] if row['key'] in roster]
    roles = {}
    for role in ('monster', 'miniboss', 'boss'):
        role_keys = {key for key, identity in roster.items() if identity['role'] == role}
        role_monsters = [row for row in result['monsters'] if row['key'] in role_keys]
        roles[role] = {
            'roster_entries': len(role_keys),
            'seen': len(role_monsters),
            'unobserved': len(role_keys) - len(role_monsters),
            'with_npc_update_actions': sum(bool(row['actions']) for row in role_monsters),
            'with_action_mechanism_associations': sum(bool(row['action_mechanism_associations']) for row in role_monsters),
            'action_mechanism_association_signatures': sum(len(row['action_mechanism_associations']) for row in role_monsters),
            'action_mechanism_association_observations': sum(
                association['observations'] for row in role_monsters
                for association in row['action_mechanism_associations']),
            'with_linked_attack_objects': sum(bool(LINKED_ATTACK_OBJECT_MECHANISMS & row['mechanisms'].keys()) for row in role_monsters),
            'with_contact_damage_capability': sum('contact_damage_capability' in row['mechanisms'] for row in role_monsters),
        }
    roster_associations = [association for row in roster_monsters
                           for association in row['action_mechanism_associations']]
    result['coverage'] = {
        'roster_entries': len(roster),
        'roster_entries_seen': len(roster_monsters),
        'roster_entries_with_npc_update_actions': sum(bool(row['actions']) for row in roster_monsters),
        'roster_entries_with_action_mechanism_associations': sum(bool(row['action_mechanism_associations']) for row in roster_monsters),
        'action_mechanism_association_signatures': len(roster_associations),
        'action_mechanism_association_observations': sum(row['observations'] for row in roster_associations),
        'action_mechanism_associations_by_frame_gap': {
            str(gap): sum(row['observations'] for row in roster_associations
                          if row['action_to_object_frame_gap'] == gap)
            for gap in (0, 1)
        },
        'action_mechanism_associations_by_mechanism': {
            mechanism: sum(row['observations'] for row in roster_associations
                           if row['mechanism'] == mechanism)
            for mechanism in sorted({row['mechanism'] for row in roster_associations})
        },
        'roster_entries_with_linked_attack_objects': sum(bool(LINKED_ATTACK_OBJECT_MECHANISMS & row['mechanisms'].keys()) for row in roster_monsters),
        'roster_entries_with_contact_damage_capability': sum('contact_damage_capability' in row['mechanisms'] for row in roster_monsters),
        'roster_entries_with_mechanism_evidence': sum(bool(row['mechanisms']) for row in roster_monsters),
        'all_observed_npc_identities': len(result['monsters']),
        'unclassified_npc_identities': sum(row['key'] not in roster for row in result['monsters']),
        'entries_unobserved': 0,
        'by_role': roles,
    }
    # Report missing static IDs explicitly so the result can drive the next capture plan.
    seen_keys = {row['key'] for row in result['monsters']}
    result['coverage']['unobserved_roster_keys'] = sorted(set(roster) - seen_keys)
    result['coverage']['entries_unobserved'] = len(result['coverage']['unobserved_roster_keys'])
    result['coverage']['incomplete_capture_count'] = len(result['incomplete_files'])
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'output': str(args.output.resolve()), 'input_files': result['input_files'],
                      'complete_files': result['complete_files'], 'input_gb': round(result['input_bytes'] / 1024**3, 2),
                      'callbacks': result['callbacks_total'], 'parse_errors': result['parse_errors'],
                      'coverage': {key: value for key, value in result['coverage'].items() if key != 'unobserved_roster_keys'},
                      'unobserved_roster_keys': len(result['coverage']['unobserved_roster_keys'])}, ensure_ascii=False, indent=2))


if __name__ == '__main__':
    main()
