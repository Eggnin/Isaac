"""Build the compact J460 animation-event candidate index consumed by the runtime detector."""
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_REFERENCE = ROOT / 'records' / 'research' / 'static-npc-attack-reference-local-j460-20261026.json'
DEFAULT_OUTPUT = ROOT / 'src' / 'engine_monster_attack_event_candidates.json'


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference', type=Path, default=DEFAULT_REFERENCE)
    parser.add_argument('--output', type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    reference = json.loads(args.reference.read_text(encoding='utf-8'))
    source_version = reference['source']['version']
    if 'J460' not in source_version:
        raise ValueError(f'Runtime animation candidates require a local J460 reference, got {source_version!r}')

    candidates = []
    without_frame = 0
    cue_source_counts = Counter()
    for entry in reference['entries']:
        for path in entry['animation_paths']:
            for animation in reference['animation_definitions'].get(path, {}).get('animations', ()):
                for trigger_index, trigger in enumerate(animation['triggers']):
                    if trigger['frame'] is None:
                        without_frame += 1
                        continue
                    cue_sources = []
                    if trigger['cues']:
                        cue_sources.append('event_name')
                    if animation['cues']:
                        cue_sources.append('animation_name')
                    if not cue_sources:
                        cue_sources.append('unclassified')
                    cue_source_counts.update(cue_sources)
                    candidates.append({
                        'key': entry['key'],
                        'role': entry['role'],
                        'path': path,
                        'animation': animation['name'],
                        'event_name': trigger['name'],
                        'frame': trigger['frame'],
                        'trigger_index': trigger_index,
                        'cues': trigger['cues'],
                        'animation_cues': animation['cues'],
                        'cue_sources': cue_sources,
                    })
    candidates.sort(key=lambda event: (event['key'], event['animation'], event['frame'],
                                       event['event_name'], event['path'], event['trigger_index']))
    event_keys = {event['key'] for event in candidates}
    document = {
        'format': 'isaac-j460-monster-animation-event-candidates-v2',
        'source_version': source_version,
        'static_reference_sha256': _sha256(args.reference),
        'roster_entry_count': reference.get('coverage', {}).get('roster_entries', len(reference['entries'])),
        'entity_catalog_entry_count': reference.get('coverage', {}).get(
            'entity_catalog_entries', len(reference['entries'])),
        'entries_with_event_triggers': len(event_keys),
        'entries_without_event_triggers': reference.get('coverage', {}).get(
            'entity_catalog_entries', len(reference['entries'])) - len(event_keys),
        'candidate_event_count': len(candidates),
        'candidate_events_without_frame': without_frame,
        'cue_source_counts': dict(sorted(cue_source_counts.items())),
        'lexically_cued_event_count': sum('unclassified' not in event['cue_sources'] for event in candidates),
        'unclassified_event_count': sum(event['cue_sources'] == ['unclassified'] for event in candidates),
        'events': candidates,
        'limitations': [
            'The index includes every catalog-referenced ANM2 trigger with a frame; lexical cues only rank candidates.',
            'ANM2 event names and animation names are candidates, not proof that an attack is emitted or damage occurs.',
            'Runtime detection requires an exact monster identity, animation name, and observed animation frame.',
            'Observation gaps may skip event frames; absence from runtime evidence is not proof an event never occurred.',
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(document, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({
        'output': str(args.output),
        'source_version': source_version,
        'roster_entry_count': document['roster_entry_count'],
        'entity_catalog_entry_count': document['entity_catalog_entry_count'],
        'entries_with_event_triggers': document['entries_with_event_triggers'],
        'entries_without_event_triggers': document['entries_without_event_triggers'],
        'candidate_event_count': len(candidates),
        'candidate_events_without_frame': without_frame,
        'cue_source_counts': dict(sorted(cue_source_counts.items())),
        'lexically_cued_event_count': document['lexically_cued_event_count'],
        'unclassified_event_count': document['unclassified_event_count'],
    }, ensure_ascii=False, indent=2))


def _sha256(path):
    digest = hashlib.sha256()
    with path.open('rb') as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b''):
            digest.update(chunk)
    return digest.hexdigest()


if __name__ == '__main__':
    main()
