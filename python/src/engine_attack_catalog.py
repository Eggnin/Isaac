"""Load static monster reference data independently from runtime observations."""
import json
from pathlib import Path


class AttackCatalog:
    def __init__(self):
        self.directory = Path(__file__).resolve().parent
        self.monsters = self._load_monsters()
        (self.static_event_source_version,
         self.static_event_candidates) = self._load_static_event_candidates()
        (self.static_animation_source_version, self.static_animations,
         self.static_animation_inventory) = self._load_static_animation_catalog()
        (self.static_mechanism_source_version, self.static_mechanism_candidates,
         self.static_mechanism_inventory) = self._load_static_mechanism_candidates()
        self.unique_type_variant_keys = self._unique_type_variant_keys(self.static_mechanism_candidates)
        self.event_inventory = self._event_inventory()

    def _event_inventory(self):
        events = [event for animations in self.static_event_candidates.values()
                  for frames in animations.values() for candidates in frames.values() for event in candidates]
        wiki_keys = self.static_event_candidates.keys() & self.monsters.keys()
        by_role = {}
        for role in sorted({entry['role'] for entry in self.monsters.values()} |
                           {entry['role'] for entry in self.static_mechanism_candidates.values()}):
            entries = {key: entry for key, entry in self.static_mechanism_candidates.items()
                       if entry['role'] == role}
            keys = set(entries)
            available = [event for event in events if event['key'] in keys]
            by_role[role] = {
                'roster_entries': sum(entry['roster_scope'] == 'wiki_monster_roster' for entry in entries.values()),
                'entity_catalog_entries': len(keys),
                'entries_with_triggers': len(keys & self.static_event_candidates.keys()),
                'entries_without_triggers': len(keys - self.static_event_candidates.keys()),
                'trigger_candidates_available': len(available),
                'lexically_cued_candidates_available': sum(
                    'unclassified' not in event.get('cue_sources', ()) for event in available),
                'unclassified_candidates_available': sum(
                    event.get('cue_sources') == ['unclassified'] for event in available),
            }
        return {
            'static_event_source_version': self.static_event_source_version,
            'static_animation_event_roster_entries_available': len(self.monsters),
            'static_animation_event_roster_entries_with_triggers': len(wiki_keys),
            'static_animation_event_roster_entries_without_triggers': len(self.monsters) - len(wiki_keys),
            'static_animation_event_entity_catalog_entries_available': len(self.static_mechanism_candidates),
            'static_animation_event_entity_catalog_entries_with_triggers': len(
                self.static_mechanism_candidates.keys() & self.static_event_candidates.keys()),
            'static_animation_event_supplemental_npc_entries_with_triggers': sum(
                entry['role'] == 'unlisted_npc' and key in self.static_event_candidates
                for key, entry in self.static_mechanism_candidates.items()),
            'static_animation_event_candidates_available': len(events),
            'static_animation_event_candidates_lexically_cued_available': sum(
                'unclassified' not in event.get('cue_sources', ()) for event in events),
            'static_animation_event_candidates_unclassified_available': sum(
                event.get('cue_sources') == ['unclassified'] for event in events),
            'static_animation_event_candidates_by_role': by_role,
        }

    def _load_monsters(self):
        lines = (self.directory / 'engine_monster_catalog.tsv').read_text(encoding='utf-8').splitlines()
        return {parts[0]: {'name_zh': parts[1], 'category': parts[2],
                           'role': parts[3] if len(parts) > 3 else parts[2]}
                for parts in (line.split('\t') for line in lines[1:] if line)}

    def _load_static_event_candidates(self):
        path = self.directory / 'engine_monster_attack_event_candidates.json'
        if not path.is_file():
            return None, {}
        document = json.loads(path.read_text(encoding='utf-8'))
        source_version = document.get('source_version')
        if not source_version or 'J460' not in source_version:
            return source_version, {}
        candidates = {}
        for event in document.get('events', ()):
            candidates.setdefault(event['key'], {}).setdefault(event['animation'].casefold(), {}).setdefault(
                int(event['frame']), []).append(event)
        return source_version, candidates

    def _load_static_animation_catalog(self):
        path = self.directory / 'engine_monster_animation_catalog.json'
        if not path.is_file():
            return None, {}, {}
        document = json.loads(path.read_text(encoding='utf-8'))
        source_version = document.get('source_version')
        if not source_version or 'J460' not in source_version:
            return source_version, {}, {}
        animations = {}
        for entry in document.get('animations', ()):
            animations.setdefault(entry['key'], {})[entry['name'].casefold()] = entry
        inventory = {key: document.get(key, 0) for key in
                     ('roster_entry_count', 'entries_with_animations', 'entries_without_animations',
                      'entries_with_attack_cued_animations', 'animation_name_count',
                      'attack_cued_animation_name_count', 'unclassified_animation_name_count')}
        inventory['by_role'] = document.get('by_role', {})
        return source_version, animations, inventory

    def _load_static_mechanism_candidates(self):
        path = self.directory / 'engine_monster_static_mechanism_candidates.json'
        if not path.is_file():
            return None, {}, {}
        document = json.loads(path.read_text(encoding='utf-8'))
        source_version = document.get('source_version')
        if not source_version or 'J460' not in source_version:
            return source_version, {}, {}
        candidates = {entry['key']: entry for entry in document.get('entries', ())}
        return source_version, candidates, document.get('coverage', {})

    @staticmethod
    def _unique_type_variant_keys(entries):
        grouped = {}
        for key in entries:
            type_variant = '.'.join(key.split('.')[:2])
            grouped.setdefault(type_variant, []).append(key)
        return {type_variant: matches[0] for type_variant, matches in grouped.items() if len(matches) == 1}

    def resolve(self, entries, key):
        if key in entries:
            return entries[key], 'exact_identity', key
        parts = key.split('.')
        if len(parts) != 3:
            return None, None, None
        entity_config_key = self.unique_type_variant_keys.get('.'.join(parts[:2]))
        if entity_config_key is None or entity_config_key not in entries:
            return None, None, None
        return entries[entity_config_key], 'unique_type_variant_entity_config', entity_config_key
