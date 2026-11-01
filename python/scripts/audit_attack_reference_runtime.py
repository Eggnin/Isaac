"""Cross-reference historical runtime mechanism observations with static animation cues."""
import argparse
import hashlib
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_RUNTIME = ROOT / 'records' / 'research' / 'attack-mechanism-library-action-links-20261026.json'
DEFAULT_STATIC = ROOT / 'records' / 'research' / 'static-npc-attack-reference-local-j460-20261026.json'
DEFAULT_STATIC_MECHANISMS = ROOT / 'src' / 'engine_monster_static_mechanism_candidates.json'
DEFAULT_OUTPUT = ROOT / 'records' / 'research' / 'attack-reference-runtime-action-links-local-j460-20261026.json'

# These are compatibility checks, not causal proof. Only explicit action-mechanism association rows
# use a source pointer and frame gap; the remaining runtime summaries aggregate by monster profile.
CUE_MECHANISMS = {
    'projectile_emission_candidate': {
        'tear_emission', 'projectile_emission', 'laser_emission', 'bomb_emission',
    },
    'explosion_or_bomb_candidate': {'bomb_emission'},
    'summon_or_spawn_candidate': {'summon_or_split_relation'},
    'contact_attack_candidate': {'contact_damage_capability'},
}
ATTACK_OBJECT_MECHANISMS = {
    'tear_emission', 'projectile_emission', 'bomb_emission', 'laser_emission',
    'knife_emission', 'attack_effect',
}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--runtime', type=Path, default=DEFAULT_RUNTIME)
    parser.add_argument('--static', type=Path, default=DEFAULT_STATIC)
    parser.add_argument('--static-mechanisms', type=Path, default=DEFAULT_STATIC_MECHANISMS)
    parser.add_argument('--output', type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    runtime = json.loads(args.runtime.read_text(encoding='utf-8'))
    static = json.loads(args.static.read_text(encoding='utf-8'))
    static_mechanisms = json.loads(args.static_mechanisms.read_text(encoding='utf-8'))
    runtime_by_key = {monster['key']: monster for monster in runtime['monsters']}
    static_by_key = {entry['key']: entry for entry in static['entries']}
    static_mechanisms_by_key = {entry['key']: entry for entry in static_mechanisms['entries']}
    static_keys_by_type_variant = {}
    for key in static_by_key:
        static_keys_by_type_variant.setdefault('.'.join(key.split('.')[:2]), []).append(key)
    unique_static_keys_by_type_variant = {
        type_variant: keys[0] for type_variant, keys in static_keys_by_type_variant.items() if len(keys) == 1
    }
    runtime_profiles_by_static_fallback = {}
    for runtime_entry in runtime['monsters']:
        if runtime_entry['key'] in static_by_key:
            continue
        parts = runtime_entry['key'].split('.')
        if len(parts) != 3:
            continue
        static_key = unique_static_keys_by_type_variant.get('.'.join(parts[:2]))
        if static_key:
            runtime_profiles_by_static_fallback.setdefault(static_key, []).append(runtime_entry)
    roles = ('monster', 'miniboss', 'boss', 'unlisted_npc')
    role_summary = {
        role: {
            'roster_entries': 0,
            'entity_catalog_entries': 0,
            'runtime_profiles_observed': 0,
            'runtime_profiles_matched_by_unique_type_variant': 0,
            'fallback_profiles_with_mechanism_evidence': 0,
            'fallback_profiles_with_attack_objects': 0,
            'runtime_profiles_with_mechanism_evidence': 0,
            'runtime_profiles_with_attack_objects': 0,
            'runtime_profiles_with_contact_damage_capability': 0,
            'profiles_with_candidate_events': 0,
            'profiles_with_exact_candidate_animation_match': 0,
            'profiles_with_animation_and_compatible_mechanism': 0,
            'profiles_with_source_linked_action_mechanism_associations': 0,
            'base_contact_damage_candidates_available': 0,
            'champion_contact_damage_candidates_available': 0,
        }
        for role in roles
    }
    summary = {
        'roster_entries': static.get('coverage', {}).get('roster_entries', len(static['entries'])),
        'entity_catalog_entries': len(static['entries']),
        'supplemental_unlisted_npc_entries': sum(entry['role'] == 'unlisted_npc' for entry in static['entries']),
        'runtime_monster_profiles': len(runtime['monsters']),
        'runtime_profiles_matching_roster': 0,
        'runtime_profiles_matching_roster_by_unique_type_variant': 0,
        'runtime_profiles_matching_entity_catalog': 0,
        'runtime_profiles_matching_entity_catalog_by_unique_type_variant': sum(
            len(profiles) for profiles in runtime_profiles_by_static_fallback.values()),
        'runtime_profiles_matching_entity_catalog_including_unique_type_variant': 0,
        'runtime_profiles_matching_roster_including_unique_type_variant': 0,
        'runtime_profiles_without_entity_catalog_match': 0,
        'runtime_profiles_with_mechanism_evidence': 0,
        'runtime_profiles_with_mechanism_evidence_by_unique_type_variant': 0,
        'runtime_profiles_with_mechanism_evidence_including_unique_type_variant': 0,
        'runtime_profiles_with_attack_objects': 0,
        'runtime_profiles_with_attack_objects_by_unique_type_variant': 0,
        'runtime_profiles_with_attack_objects_including_unique_type_variant': 0,
        'runtime_profiles_with_contact_damage_capability': 0,
        'profiles_with_static_candidate_animations': 0,
        'profiles_with_static_candidate_events': 0,
        'profiles_with_exact_candidate_animation_match': 0,
        'candidate_events_with_exact_animation_match': 0,
        'candidate_events_with_animation_and_compatible_mechanism': 0,
        'candidate_events_with_compatible_mechanism_only': 0,
        'candidate_events_with_source_linked_temporal_association': 0,
        'candidate_events_with_temporal_association_near_static_event_frame': 0,
        'unique_type_variant_fallback_candidate_animation_matches': 0,
        'unique_type_variant_fallback_candidate_events_with_animation_match': 0,
        'unique_type_variant_fallback_candidate_events_with_animation_and_compatible_mechanism': 0,
        'unique_type_variant_fallback_candidate_events_with_source_linked_association': 0,
        'unique_type_variant_fallback_candidate_events_near_static_event_frame': 0,
        'profiles_with_source_linked_action_mechanism_associations': 0,
    }
    entries = []

    for key, static_entry in static_by_key.items():
        runtime_entry = runtime_by_key.get(key)
        fallback_entries = runtime_profiles_by_static_fallback.get(key, ())
        static_mechanism_entry = static_mechanisms_by_key.get(key)
        actions = runtime_entry.get('actions', []) if runtime_entry else []
        action_mechanism_associations = runtime_entry.get('action_mechanism_associations', []) if runtime_entry else []
        action_names = {action['animation'] for action in actions if action.get('animation')}
        mechanism_names = set(runtime_entry.get('mechanisms', {})) if runtime_entry else set()
        attack_object_mechanisms = {
            mechanism for mechanism in mechanism_names
            if mechanism in ATTACK_OBJECT_MECHANISMS
        }
        fallback_mechanism_profiles = [
            runtime_profile for runtime_profile in fallback_entries if runtime_profile.get('mechanisms')
        ]
        fallback_attack_object_profiles = [
            runtime_profile for runtime_profile in fallback_entries
            if set(runtime_profile.get('mechanisms', {})) & ATTACK_OBJECT_MECHANISMS
        ]
        candidate_animation_matches = sorted(
            (animation for animation in static_entry['candidate_animations']
             if animation['name'] in action_names),
            key=lambda animation: (animation['path'], animation['name']),
        )
        candidate_events = []
        for event in static_entry['candidate_events']:
            relevant_mechanisms = sorted({
                mechanism
                for cue in event['cues']
                for mechanism in CUE_MECHANISMS.get(cue, ())
            })
            observed_relevant = sorted(set(relevant_mechanisms) & mechanism_names)
            animation_observed = event['animation'] in action_names
            linked_temporal_associations = [
                association for association in action_mechanism_associations
                if association['animation'] == event['animation']
                and association['mechanism'] in relevant_mechanisms
            ]
            near_event_frame_associations = [
                association for association in linked_temporal_associations
                if isinstance(event.get('frame'), int)
                if isinstance(association.get('animation_frame'), int)
                and abs(association['animation_frame'] - event['frame']) <= 1
            ]
            animation_and_mechanism_observed = animation_observed and bool(observed_relevant)
            if animation_and_mechanism_observed:
                summary['candidate_events_with_animation_and_compatible_mechanism'] += 1
            if near_event_frame_associations:
                evidence = 'source_linked_temporal_cooccurrence_near_static_event_frame'
                summary['candidate_events_with_temporal_association_near_static_event_frame'] += 1
                summary['candidate_events_with_source_linked_temporal_association'] += 1
            elif linked_temporal_associations:
                evidence = 'source_linked_temporal_cooccurrence'
                summary['candidate_events_with_source_linked_temporal_association'] += 1
            elif animation_and_mechanism_observed:
                evidence = 'historical_profile_level_animation_and_mechanism_cooccurrence'
            elif observed_relevant:
                evidence = 'historical_profile_level_mechanism_only'
                summary['candidate_events_with_compatible_mechanism_only'] += 1
            else:
                evidence = 'static_candidate_only'
            if animation_observed:
                summary['candidate_events_with_exact_animation_match'] += 1
            candidate_events.append({
                **event,
                'animation_observed_in_runtime_profile': animation_observed,
                'compatible_runtime_mechanisms': relevant_mechanisms,
                'compatible_runtime_mechanisms_observed': observed_relevant,
                'source_linked_temporal_associations': linked_temporal_associations,
                'source_linked_temporal_associations_near_static_event_frame': near_event_frame_associations,
                'evidence': evidence,
            })

        fallback_candidate_animations = []
        fallback_candidate_events = []
        for fallback in fallback_entries:
            fallback_action_names = {
                action['animation'] for action in fallback.get('actions', ()) if action.get('animation')
            }
            fallback_mechanisms = set(fallback.get('mechanisms', {}))
            fallback_associations = fallback.get('action_mechanism_associations', ())
            animation_matches = [animation for animation in static_entry['candidate_animations']
                                 if animation['name'] in fallback_action_names]
            if animation_matches:
                summary['unique_type_variant_fallback_candidate_animation_matches'] += len(animation_matches)
                fallback_candidate_animations.append({
                    'runtime_profile_key': fallback['key'],
                    'identity_match_basis': 'unique_type_variant_entity_config',
                    'matches': sorted(animation_matches, key=lambda animation: (animation['path'], animation['name'])),
                })
            for event in static_entry['candidate_events']:
                relevant_mechanisms = sorted({
                    mechanism for cue in event['cues'] for mechanism in CUE_MECHANISMS.get(cue, ())
                })
                observed_relevant = sorted(set(relevant_mechanisms) & fallback_mechanisms)
                animation_observed = event['animation'] in fallback_action_names
                linked_associations = [
                    association for association in fallback_associations
                    if association['animation'] == event['animation']
                    and association['mechanism'] in relevant_mechanisms
                ]
                near_event_associations = [
                    association for association in linked_associations
                    if isinstance(event.get('frame'), int)
                    if isinstance(association.get('animation_frame'), int)
                    and abs(association['animation_frame'] - event['frame']) <= 1
                ]
                if not animation_observed and not observed_relevant and not linked_associations:
                    continue
                summary['unique_type_variant_fallback_candidate_events_with_animation_match'] += animation_observed
                summary['unique_type_variant_fallback_candidate_events_with_animation_and_compatible_mechanism'] += bool(
                    animation_observed and observed_relevant)
                summary['unique_type_variant_fallback_candidate_events_with_source_linked_association'] += bool(
                    linked_associations)
                summary['unique_type_variant_fallback_candidate_events_near_static_event_frame'] += bool(
                    near_event_associations)
                fallback_candidate_events.append({
                    **event,
                    'runtime_profile_key': fallback['key'],
                    'identity_match_basis': 'unique_type_variant_entity_config',
                    'animation_observed_in_runtime_profile': animation_observed,
                    'compatible_runtime_mechanisms': relevant_mechanisms,
                    'compatible_runtime_mechanisms_observed': observed_relevant,
                    'source_linked_temporal_associations': linked_associations,
                    'source_linked_temporal_associations_near_static_event_frame': near_event_associations,
                    'evidence': 'unique_type_variant_fallback_temporal_cooccurrence' if near_event_associations else
                                'unique_type_variant_fallback_source_linked_cooccurrence' if linked_associations else
                                'unique_type_variant_fallback_profile_level_animation_and_mechanism_cooccurrence'
                                if animation_observed and observed_relevant else
                                'unique_type_variant_fallback_profile_level_animation_match' if animation_observed else
                                'unique_type_variant_fallback_profile_level_mechanism_only',
                })

        role = static_entry['role'] if static_entry['role'] in role_summary else None
        if role:
            role_summary[role]['roster_entries'] += role != 'unlisted_npc'
            role_summary[role]['entity_catalog_entries'] += 1
            role_summary[role]['runtime_profiles_observed'] += bool(runtime_entry)
            role_summary[role]['runtime_profiles_matched_by_unique_type_variant'] += len(fallback_entries)
            role_summary[role]['fallback_profiles_with_mechanism_evidence'] += len(fallback_mechanism_profiles)
            role_summary[role]['fallback_profiles_with_attack_objects'] += len(fallback_attack_object_profiles)
            role_summary[role]['runtime_profiles_with_mechanism_evidence'] += bool(mechanism_names)
            role_summary[role]['runtime_profiles_with_attack_objects'] += bool(attack_object_mechanisms)
            role_summary[role]['runtime_profiles_with_contact_damage_capability'] += (
                'contact_damage_capability' in mechanism_names
            )
            role_summary[role]['profiles_with_candidate_events'] += bool(static_entry['candidate_events'])
            role_summary[role]['profiles_with_exact_candidate_animation_match'] += bool(candidate_animation_matches)
            role_summary[role]['profiles_with_animation_and_compatible_mechanism'] += any(
                event['animation_observed_in_runtime_profile'] and
                (event['compatible_runtime_mechanisms_observed'] or
                 event['source_linked_temporal_associations'])
                for event in candidate_events
            )
            role_summary[role]['profiles_with_source_linked_action_mechanism_associations'] += bool(
                action_mechanism_associations)
            role_summary[role]['base_contact_damage_candidates_available'] += bool(
                static_mechanism_entry and static_mechanism_entry['contact_damage']['base_candidate'])
            role_summary[role]['champion_contact_damage_candidates_available'] += bool(
                static_mechanism_entry and static_mechanism_entry['contact_damage']['champion_candidate'])

        summary['runtime_profiles_matching_roster'] += bool(runtime_entry) and static_entry['role'] != 'unlisted_npc'
        summary['runtime_profiles_matching_entity_catalog'] += bool(runtime_entry)
        summary['runtime_profiles_matching_entity_catalog_including_unique_type_variant'] += (
            bool(runtime_entry) + len(fallback_entries))
        summary['runtime_profiles_matching_roster_by_unique_type_variant'] += (
            len(fallback_entries) if static_entry['role'] != 'unlisted_npc' else 0)
        summary['runtime_profiles_with_mechanism_evidence'] += bool(mechanism_names)
        summary['runtime_profiles_with_mechanism_evidence_by_unique_type_variant'] += len(
            fallback_mechanism_profiles)
        summary['runtime_profiles_with_attack_objects'] += bool(attack_object_mechanisms)
        summary['runtime_profiles_with_attack_objects_by_unique_type_variant'] += len(
            fallback_attack_object_profiles)
        summary['runtime_profiles_with_contact_damage_capability'] += (
            'contact_damage_capability' in mechanism_names
        )
        summary['profiles_with_static_candidate_animations'] += bool(static_entry['candidate_animations'])
        summary['profiles_with_static_candidate_events'] += bool(static_entry['candidate_events'])
        summary['profiles_with_exact_candidate_animation_match'] += bool(candidate_animation_matches)
        summary['profiles_with_source_linked_action_mechanism_associations'] += bool(
            action_mechanism_associations)
        entries.append({
            'key': key,
            'name_zh': static_entry['name_zh'],
            'display_name': static_entry.get('display_name'),
            'entity_config_names': static_entry.get('entity_config_names', []),
            'role': static_entry['role'],
            'roster_scope': 'supplemental_npc' if static_entry['role'] == 'unlisted_npc' else 'wiki_monster_roster',
            'entity_definition_status': static_entry['entity_definition_status'],
            'animation_paths': static_entry['animation_paths'],
            'runtime_profile_observed': runtime_entry is not None,
            'runtime_profiles_unique_type_variant_fallback': [
                {
                    'key': fallback['key'],
                    'identity_match_basis': 'unique_type_variant_entity_config',
                    'observed_npc_update_frames': fallback.get('observed_npc_update_frames', 0),
                    'runs_observed': fallback.get('runs_observed', 0),
                    'runtime_actions': fallback.get('actions', []),
                    'runtime_action_mechanism_associations': fallback.get('action_mechanism_associations', []),
                    'runtime_mechanisms': fallback.get('mechanisms', {}),
                }
                for fallback in fallback_entries
            ],
            'candidate_animation_matches_unique_type_variant_fallback': fallback_candidate_animations,
            'candidate_events_unique_type_variant_fallback': fallback_candidate_events,
            'runtime_observed_npc_update_frames': runtime_entry.get('observed_npc_update_frames', 0) if runtime_entry else 0,
            'runtime_runs_observed': runtime_entry.get('runs_observed', 0) if runtime_entry else 0,
            'runtime_actions': actions,
            'runtime_action_mechanism_associations': action_mechanism_associations,
            'static_mechanism_candidates': static_mechanism_entry,
            'runtime_mechanisms': runtime_entry.get('mechanisms', {}) if runtime_entry else {},
            'candidate_animations': static_entry['candidate_animations'],
            'candidate_animation_matches': candidate_animation_matches,
            'candidate_events': candidate_events,
        })

    summary['runtime_profiles_without_entity_catalog_match'] = (
        summary['runtime_monster_profiles'] -
        summary['runtime_profiles_matching_entity_catalog_including_unique_type_variant'])
    summary['runtime_profiles_matching_roster_including_unique_type_variant'] = (
        summary['runtime_profiles_matching_roster'] +
        summary['runtime_profiles_matching_roster_by_unique_type_variant'])
    summary['runtime_profiles_with_mechanism_evidence_including_unique_type_variant'] = (
        summary['runtime_profiles_with_mechanism_evidence'] +
        summary['runtime_profiles_with_mechanism_evidence_by_unique_type_variant'])
    summary['runtime_profiles_with_attack_objects_including_unique_type_variant'] = (
        summary['runtime_profiles_with_attack_objects'] +
        summary['runtime_profiles_with_attack_objects_by_unique_type_variant'])
    document = {
        'format': 'isaac-static-runtime-attack-reference-audit-v1',
        'sources': {
            'runtime_index': str(args.runtime.relative_to(ROOT)) if args.runtime.is_relative_to(ROOT) else str(args.runtime),
            'runtime_index_sha256': _sha256(args.runtime),
            'static_reference': str(args.static.relative_to(ROOT)) if args.static.is_relative_to(ROOT) else str(args.static),
            'static_reference_sha256': _sha256(args.static),
            'static_reference_version': static['source']['version'],
            'static_mechanism_candidates': str(args.static_mechanisms.relative_to(ROOT)) if args.static_mechanisms.is_relative_to(ROOT) else str(args.static_mechanisms),
            'static_mechanism_candidates_sha256': _sha256(args.static_mechanisms),
        },
        'limitations': [
            'The 469-entry Wiki roster is distinct from supplemental local NPC configurations, which include parts and non-monster hazards.',
            'The static source comes from the local J460 installation; its archive checksum field is retained but not validated.',
            'Basic runtime actions and mechanism summaries are aggregated by monster profile; only action_mechanism_associations are joined through a source pointer and a same-frame or one-frame gap.',
            'A source-linked temporal association is co-occurrence evidence, not proof that the action caused the object to spawn.',
            'Animation names and event cues are candidates; profile-level compatibility does not prove an attack occurred at an event frame.',
            'Near-event-frame support means the last observed animation frame was within one frame of the static ANM2 event; callback ordering and engine timing still prevent causal proof.',
            'Contact damage capability does not prove an attack animation or an applied hit.',
            'Unique Type.Variant fallback rows identify candidate static configurations only; they do not prove behavior is identical across SubTypes.',
            'Any remaining unmatched runtime identities and non-roster profiles remain in the runtime source index but are not joined to a static EntityConfig.',
        ],
        'summary': summary,
        'static_mechanism_candidate_coverage': static_mechanisms['coverage'],
        'by_role': role_summary,
        'entries': entries,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(document, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'output': str(args.output), 'summary': summary, 'by_role': role_summary},
                     ensure_ascii=False, indent=2))


def _sha256(path):
    digest = hashlib.sha256()
    with path.open('rb') as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b''):
            digest.update(chunk)
    return digest.hexdigest()


if __name__ == '__main__':
    main()
