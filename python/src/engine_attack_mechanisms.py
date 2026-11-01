"""Observe monster attack mechanisms from read-only J460 entity snapshots.

An emitted entity is direct evidence that an attack object exists. NPC animation
names are weaker cues; they are retained as candidates and are never treated as
proof of a future hit or a complete AI model.
"""
from collections import Counter
import json

from engine_attack_catalog import AttackCatalog


MECHANISM_CATALOG = {
    'contact_damage': {'evidence': 'NPC CollisionDamage and EntityCollisionClass', 'confidence': 'observed_property'},
    'tear_emission': {'evidence': 'hostile EntityTear present in snapshot', 'confidence': 'observed_entity'},
    'projectile_emission': {'evidence': 'hostile EntityProjectile present in snapshot', 'confidence': 'observed_entity'},
    'bomb_emission': {'evidence': 'hostile EntityBomb present in snapshot', 'confidence': 'observed_entity'},
    'laser_emission': {'evidence': 'hostile EntityLaser present in snapshot', 'confidence': 'observed_entity'},
    'knife_emission': {'evidence': 'hostile EntityKnife present in snapshot', 'confidence': 'observed_entity'},
    'attack_effect': {'evidence': 'hostile EntityEffect damage or recognized attack-family variant', 'confidence': 'observed_entity'},
    'unknown_effect_emission': {'evidence': 'hostile EntityEffect; source may be unavailable and exact role is unknown', 'confidence': 'unclassified'},
    'summon_or_split': {'evidence': 'NPC Parent/Spawner/owner links to another NPC or familiar', 'confidence': 'observed_relation'},
    'attack_animation': {'evidence': 'NPC animation name contains an attack-mechanism cue', 'confidence': 'animation_heuristic'},
    'static_animation_event_candidate': {'evidence': 'J460 ANM2 trigger frame matches the current NPC animation', 'confidence': 'static_candidate'},
    'pending_projectile_timer': {'evidence': 'NPC ProjectileDelay is positive', 'confidence': 'timer_candidate'},
    'unclassified_npc_action': {'evidence': 'non-locomotion NPC animation transition', 'confidence': 'unclassified'},
    'npc_state_transition': {'evidence': 'NPC State or animation changed between snapshots', 'confidence': 'observed_transition'},
}
CONFIRMED_MECHANISM_CONFIDENCES = {'observed_property', 'observed_entity', 'observed_relation'}
ACTION_OBJECT_MECHANISMS = {
    'tear_emission', 'projectile_emission', 'bomb_emission', 'laser_emission',
    'knife_emission', 'attack_effect', 'summon_or_split',
}

PROJECTILE_MODIFIERS = {
    'homing': ('SMART', 'SMART_PERFECT'),
    'explosive': ('EXPLODE',),
    'curved': ('CURVE_LEFT', 'CURVE_RIGHT', 'TURN_HORIZONTAL', 'SINE_VELOCITY', 'MEGA_WIGGLE',
               'SAWTOOTH_WIGGLE', 'WIGGLE', 'WIGGLE_ROTGUT', 'SIDEWAVE'),
    'orbiting': ('ORBIT_CW', 'ORBIT_CCW', 'ORBIT_PARENT'),
    'accelerating_or_slowing': ('ACCELERATE', 'DECELERATE', 'ACCELERATE_EX', 'ACCELERATE_TO_POSITION', 'SLOWED'),
    'bouncing': ('BOUNCE', 'BOUNCE_FLOOR'),
    'bursting_or_splitting': ('BURST', 'BURST3', 'BURST8', 'BURSTSPLIT', 'BACKSPLIT'),
    'hazard_generation': ('FIRE', 'FIRE_WAVE', 'FIRE_WAVE_X', 'FIRE_SPAWN', 'BLUE_FIRE_SPAWN',
                          'RED_CREEP', 'CREEP_BROWN', 'ACID_GREEN', 'ACID_RED', 'GOO'),
    'delayed_change': ('CHANGE_FLAGS_AFTER_TIMEOUT', 'CHANGE_VELOCITY_AFTER_TIMEOUT'),
    'height_interaction': ('ANY_HEIGHT_ENTITY_HIT', 'ANTI_GRAVITY'),
    'parent_interaction': ('MOVE_TO_PARENT', 'TRACTOR_BEAM'),
}

ANIMATION_CUES = (
    ('summon_or_split', ('summon', 'spawn', 'split', 'revive', 'call', 'lay egg', 'layegg')),
    ('charge_or_dash', ('charge', 'dash', 'rush', 'lunge', 'ram')),
    ('jump_or_impact', ('jump', 'hop', 'stomp', 'landing', 'land', 'impact', 'crash', 'slam', 'smash',
                        'crush', 'pound', 'flop')),
    ('beam_or_laser', ('laser', 'brim', 'beam')),
    ('melee_attack', ('bite', 'claw', 'slash', 'punch', 'stab', 'scratch', 'chomp', 'swipe', 'slap',
                      'headbutt', 'maul')),
    ('area_or_control_attack', ('suck', 'suction', 'inhale', 'swallow', 'pull', 'fart', 'poison',
                                'shockwave', 'crackwave')),
    ('ambush_attack', ('ambush', 'pounce', 'strike', 'burrow', 'dig', 'dive', 'emerge',
                       'holeopen', 'holeexit', 'popout', 'popdown')),
    ('ranged_attack', ('shoot', 'shot', 'spit', 'throw', 'tear', 'breath')),
    ('generic_attack', ('attack', 'fire', 'bomb', 'explosion', 'blast', 'detonate')),
)
NON_ATTACK_ANIMATIONS = ('idle', 'walk', 'fly', 'appear', 'disappear', 'death', 'dead', 'die',
                         'hit', 'hurt', 'takehit', 'stun', 'recover')
# BombExplosionEffects applies damage even when its EntityEffect CollisionDamage is zero.
ATTACK_EFFECTS = {'BOMB_EXPLOSION', 'TARGET', 'BROKEN_SHOVEL_SHADOW', 'MOM_FOOT_STOMP', 'MOMS_HAND', 'ROCKET', 'SMALL_ROCKET',
                  'CRACK_THE_SKY', 'ENEMY_BRIMSTONE_SWIRL', 'HUSH_LASER', 'HUSH_LASER_UP',
                  'SHOCKWAVE', 'SHOCKWAVE_DIRECTIONAL', 'SHOCKWAVE_RANDOM', 'BIG_CRACKWAVE',
                  'MOTHER_SHOCKWAVE', 'FIRE_JET', 'FIRE_WAVE', 'HOT_BOMB_FIRE', 'DARK_BALL_SMOKE_PARTICLE',
                  'SMOKE_CLOUD', 'BROWN_CLOUD'}
ATTACK_EFFECT_PREFIXES = ('CREEP_', 'FIRE_', 'SHOCKWAVE', 'CRACKWAVE', 'ROCKET', 'MOM_FOOT',
                          'MOMS_HAND', 'HUSH_LASER', 'LASER_')
NPC_MIN = 10
NPC_MAX = 999
FRIENDLY = 1 << 29
CHARMED = 1 << 8
# The seven sins reuse their Type for split parts; retain the family role for unseen subvariants.
MINIBOSS_TYPE_VARIANTS = {
    46: None, 47: None, 48: None, 49: None, 50: None, 51: None, 52: None,
    81: {1}, 271: {0, 1}, 272: {0, 1}, 866: {0}, 867: {0},
}


class AttackMechanismDetector:
    """Classify present attacks and retain cumulative per-run monster coverage."""

    def __init__(self):
        self._static_catalog = AttackCatalog()
        self._catalog = self._static_catalog.monsters
        self._static_event_source_version = self._static_catalog.static_event_source_version
        self._static_event_candidates = self._static_catalog.static_event_candidates
        self._static_animation_source_version = self._static_catalog.static_animation_source_version
        self._static_animations = self._static_catalog.static_animations
        self._static_animation_inventory = self._static_catalog.static_animation_inventory
        self._static_mechanism_source_version = self._static_catalog.static_mechanism_source_version
        self._static_mechanism_candidates = self._static_catalog.static_mechanism_candidates
        self._static_mechanism_inventory = self._static_catalog.static_mechanism_inventory
        self._room = None
        self._active = {}
        self._last_frame = None
        self._seen_monsters = set()
        self._seen_profiles = {}
        self._seen_mechanisms = {}
        self._observed_mechanism_signatures = {}
        self._seen_mechanism_instances = set()
        self._observed_unattributed_mechanism_signatures = {}
        self._seen_unattributed_mechanism_instances = set()
        self._observed_action_mechanism_associations = {}
        self._seen_action_mechanism_association_instances = set()
        self._seen_state_transitions = set()
        self._observed_actions = {}
        self._observed_transitions = {}
        self._observed_static_animation_event_candidates = {}
        self._npc_animation_frames = {}
        self._npc_states = {}
        self._unknown_animations = set()
        self._enum_source = None
        self._entity_type_names = {}
        self._effect_variant_names = {}
        self._champion_color_names = {}

    def reset(self, clear_coverage=False):
        self._room = None
        self._active = {}
        self._last_frame = None
        self._npc_animation_frames.clear()
        self._npc_states.clear()
        if clear_coverage:
            self._seen_monsters.clear()
            self._seen_profiles.clear()
            self._seen_mechanisms.clear()
            self._observed_mechanism_signatures.clear()
            self._seen_mechanism_instances.clear()
            self._observed_unattributed_mechanism_signatures.clear()
            self._seen_unattributed_mechanism_instances.clear()
            self._observed_action_mechanism_associations.clear()
            self._seen_action_mechanism_association_instances.clear()
            self._seen_state_transitions.clear()
            self._observed_actions.clear()
            self._observed_transitions.clear()
            self._observed_static_animation_event_candidates.clear()
            self._unknown_animations.clear()

    def observe(self, snapshot):
        frame = int(snapshot.get('frame', 0) or 0)
        room = snapshot.get('room')
        if room != self._room:
            self._active = {}
            self._npc_states.clear()
            self._npc_animation_frames.clear()
            previous_active = {}
            previous_frame = None
            self._room = room
        else:
            previous_active = self._active
            previous_frame = self._last_frame
        entities = snapshot.get('entities') or []
        by_address = {e.get('address'): e for e in entities if e.get('address') is not None}
        enums = snapshot.get('enums') or {}
        entity_types = enums.get('EntityType') or {}
        effect_variants = enums.get('EffectVariant') or {}
        projectile_flags = enums.get('ProjectileFlags') or {}
        if enums is not self._enum_source:
            self._entity_type_names = {value: name for name, value in entity_types.items()}
            self._effect_variant_names = {value: name for name, value in effect_variants.items()}
            self._champion_color_names = {value: name for name, value in (enums.get('ChampionColor') or {}).items()}
            self._enum_source = enums
        entity_type_names = self._entity_type_names
        effect_variant_names = self._effect_variant_names
        current = {}
        observed_monsters = set()
        observed_profiles = set()
        new_monsters = set()
        new_profile_keys = set()
        new_action_signatures = []
        npc_actions_by_address = {}
        npc_actions_by_seed = {}
        new_static_animation_event_candidates = []
        state_transitions = []

        for entity in entities:
            typ = self._int(entity.get('type'), -1)
            if NPC_MIN <= typ <= NPC_MAX:
                key = self._monster_key(entity)
                descriptor = self._descriptor(entity)
                profile_key = descriptor['profile_key']
                observed_monsters.add(key)
                observed_profiles.add(profile_key)
                if key not in self._seen_monsters:
                    new_monsters.add(key)
                self._seen_monsters.add(key)
                if profile_key not in self._seen_profiles:
                    new_profile_keys.add(profile_key)
                    self._seen_profiles[profile_key] = {
                        'key': key,
                        'profile_key': profile_key,
                        'name_zh': descriptor['name_zh'],
                        'display_name': descriptor['display_name'],
                        'category': descriptor['category'],
                        'role': descriptor['role'],
                        'champion_color': descriptor['champion_color'],
                        'champion_color_name': descriptor['champion_color_name'],
                        'is_champion': descriptor['is_champion'],
                        'is_boss': descriptor['is_boss'],
                    }
                friendly = self._friendly(entity, by_address)
                state_token = self._npc_state_token(entity, profile_key)
                state = (entity.get('state'), entity.get('animation'))
                previous_state = self._npc_states.get(state_token)
                if not friendly:
                    source_action = {
                        'state': state[0],
                        'animation': state[1],
                        'animation_family': self._animation_mechanism(str(state[1] or '')),
                        'state_frame': self._int(entity.get('state_frame'), None),
                        'animation_frame': entity.get('animation_frame'),
                    }
                    if entity.get('address') is not None:
                        npc_actions_by_address[entity['address']] = source_action
                    if entity.get('seed') is not None:
                        npc_actions_by_seed[(entity['seed'], profile_key)] = source_action
                    actions = self._observed_actions.setdefault(profile_key, {})
                    action = actions.get(state)
                    if action is None:
                        animation_family = self._animation_mechanism(str(state[1] or ''))
                        action = {
                            'state': state[0],
                            'animation': state[1],
                            'animation_family': animation_family,
                            'frames_observed': 0,
                            'first_frame': frame,
                            'last_frame': frame,
                            'state_frame_min': None,
                            'state_frame_max': None,
                        }
                        actions[state] = action
                        new_action_signatures.append({'source': descriptor, **action})
                    action['frames_observed'] += 1
                    action['last_frame'] = frame
                    state_frame = self._int(entity.get('state_frame'), None)
                    if state_frame is not None:
                        action['state_frame_min'] = state_frame if action['state_frame_min'] is None else min(action['state_frame_min'], state_frame)
                        action['state_frame_max'] = state_frame if action['state_frame_max'] is None else max(action['state_frame_max'], state_frame)
                if not friendly and previous_state is not None and previous_state != state:
                    transition = {
                        'previous_state': previous_state[0],
                        'state': state[0],
                        'previous_animation': previous_state[1],
                        'animation': state[1],
                        'state_frame': entity.get('state_frame'),
                        'animation_frame': entity.get('animation_frame'),
                        'i1': entity.get('i1'),
                        'i2': entity.get('i2'),
                        'v1': entity.get('v1'),
                        'v2': entity.get('v2'),
                        'projectile_delay': entity.get('projectile_delay'),
                        'projectile_cooldown': entity.get('projectile_cooldown'),
                        'target_position': entity.get('target_position'),
                    }
                    transitions = self._observed_transitions.setdefault(profile_key, {})
                    transition_key = (*previous_state, *state)
                    observed_transition = transitions.get(transition_key)
                    if observed_transition is None:
                        observed_transition = {
                            'previous_state': previous_state[0],
                            'state': state[0],
                            'previous_animation': previous_state[1],
                            'animation': state[1],
                            'count': 0,
                            'first_frame': frame,
                            'last_frame': frame,
                        }
                        transitions[transition_key] = observed_transition
                    observed_transition['count'] += 1
                    observed_transition['last_frame'] = frame
                    self._add(current, 'npc_state_transition', entity, entity, 'entity_itself',
                              transition, 'observed_transition', frame)
                    state_transitions.append({
                        'source': descriptor,
                        **transition,
                    })
                    self._seen_state_transitions.add(profile_key)
                self._npc_states[state_token] = state
                if not friendly:
                    new_static_animation_event_candidates.extend(
                        self._add_static_animation_event_candidates(
                            current, entity, key, profile_key, frame, self._npc_animation_frames.get(state_token)))
                    self._npc_animation_frames[state_token] = {
                        'animation': entity.get('animation'),
                        'animation_frame': entity.get('animation_frame'),
                        'frame': frame,
                    }
                    self._add_npc_signals(current, entity, key, frame)
                    spawn_source, source_basis = self._spawn_source(entity, by_address)
                    if spawn_source:
                        self._add(current, 'summon_or_split', entity, spawn_source, source_basis,
                                  {'child_identity': key}, None, frame)
                continue

            source, source_basis = self._source(entity, by_address, entity_type_names)
            mechanism = {2: 'tear_emission', 4: 'bomb_emission', 7: 'laser_emission',
                         8: 'knife_emission', 9: 'projectile_emission'}.get(typ)
            if typ == 3 and source is not None:
                mechanism = 'summon_or_split'
            if typ == 1000:
                mechanism = self._effect_mechanism(entity, effect_variant_names)
            if mechanism is None or self._friendly(entity, by_address):
                continue
            evidence = {'child_identity': self._monster_key(entity), 'child_kind': 'familiar'} if typ == 3 else \
                self._object_evidence(entity, mechanism, projectile_flags, effect_variant_names)
            self._add(current, mechanism, entity, source, source_basis,
                      evidence, 'observed_relation' if typ == 3 else None, frame)

        started = [entry for key, entry in current.items() if key not in previous_active]
        new_action_mechanism_associations = []
        for entry in started:
            if entry['mechanism'] not in ACTION_OBJECT_MECHANISMS or entry['confidence'] not in CONFIRMED_MECHANISM_CONFIDENCES:
                continue
            source = entry.get('source') or {}
            profile_key = source.get('profile_key')
            if not profile_key:
                continue
            action = npc_actions_by_address.get(source.get('address'))
            if action is None and source.get('seed') is not None:
                action = npc_actions_by_seed.get((source['seed'], profile_key))
            if action is None:
                continue
            signature = {
                'action': action,
                'mechanism_signature': self._mechanism_signature(entry),
                'source_basis': entry.get('source_basis'),
                'association_basis': 'same_snapshot_frame',
                'confidence': 'same_snapshot_source_action_object_cooccurrence',
            }
            signature_key = json.dumps(signature, ensure_ascii=False, sort_keys=True,
                                       separators=(',', ':'), default=str)
            associations = self._observed_action_mechanism_associations.setdefault(profile_key, {})
            record = associations.get(signature_key)
            is_new_signature = record is None
            if record is None:
                record = {**signature, 'observations': 0, 'observed_instances': 0,
                          'first_frame': frame, 'last_frame': frame}
                associations[signature_key] = record
            obj = entry['object']
            instance_identity = (obj.get('address'), obj.get('seed'))
            instance_key = ((profile_key, signature_key, *instance_identity)
                            if any(value is not None for value in instance_identity)
                            else (profile_key, signature_key, entry['event_key']))
            if instance_key not in self._seen_action_mechanism_association_instances:
                self._seen_action_mechanism_association_instances.add(instance_key)
                record['observations'] += 1
                record['observed_instances'] += 1
            record['last_frame'] = frame
            if is_new_signature:
                new_action_mechanism_associations.append({
                    'key': source['key'], 'profile_key': profile_key, **record,
                })
        gap = frame - previous_frame if previous_frame is not None else None
        ended = []
        if gap is not None and 0 < gap <= 2:
            ended = [{'mechanism': entry['mechanism'], 'source': entry['source'],
                      'object': entry['object'], 'ended_after_frame': entry['last_frame']}
                     for key, entry in previous_active.items() if key not in current]
        for entry in current.values():
            entry['last_frame'] = frame
        self._active = current
        self._last_frame = frame

        mechanism_counts = Counter(entry['mechanism'] for entry in current.values())
        source_keys = {entry['source']['key'] for entry in current.values()
                       if entry.get('source') and entry['source'].get('key')}
        new_mechanism_signatures = []
        new_unattributed_mechanism_signatures = []
        for entry in current.values():
            source = entry.get('source') or {}
            profile_key = source.get('profile_key')
            signature = self._mechanism_signature(entry)
            if signature is None:
                continue
            if not profile_key:
                signature_key = json.dumps(signature, ensure_ascii=False, sort_keys=True,
                                           separators=(',', ':'), default=str)
                signatures = self._observed_unattributed_mechanism_signatures
                record = signatures.get(signature_key)
                is_new_signature = record is None
                if record is None:
                    record = {**signature, 'source_attribution': 'unattributed',
                              'observed_instances': 0, 'first_frame': frame, 'last_frame': frame}
                    signatures[signature_key] = record
                obj = entry['object']
                instance_identity = (obj.get('address'), obj.get('seed'))
                instance_key = ((signature_key, *instance_identity)
                                if any(value is not None for value in instance_identity)
                                else (signature_key, entry['event_key']))
                if instance_key not in self._seen_unattributed_mechanism_instances:
                    self._seen_unattributed_mechanism_instances.add(instance_key)
                    record['observed_instances'] += 1
                record['last_frame'] = frame
                if is_new_signature:
                    new_unattributed_mechanism_signatures.append(record.copy())
                continue
            signature_key = json.dumps(signature, ensure_ascii=False, sort_keys=True,
                                       separators=(',', ':'), default=str)
            signatures = self._observed_mechanism_signatures.setdefault(profile_key, {})
            record = signatures.get(signature_key)
            is_new_signature = record is None
            if record is None:
                record = {**signature, 'observed_instances': 0, 'first_frame': frame, 'last_frame': frame}
                signatures[signature_key] = record
            obj = entry['object']
            instance_identity = (obj.get('address'), obj.get('seed'))
            instance_key = ((profile_key, signature_key, *instance_identity)
                            if any(value is not None for value in instance_identity)
                            else (profile_key, signature_key, entry['event_key']))
            if instance_key not in self._seen_mechanism_instances:
                self._seen_mechanism_instances.add(instance_key)
                record['observed_instances'] += 1
            record['last_frame'] = frame
            if is_new_signature:
                new_mechanism_signatures.append({'key': source['key'], 'profile_key': profile_key, **record})
        new_mechanism_profiles = []
        for entry in started:
            source = entry.get('source') or {}
            key = source.get('key')
            profile_key = source.get('profile_key')
            if key and profile_key and entry['confidence'] in CONFIRMED_MECHANISM_CONFIDENCES:
                mechanisms = self._seen_mechanisms.setdefault(profile_key, set())
                if entry['mechanism'] not in mechanisms:
                    new_mechanism_profiles.append({'key': key, 'profile_key': profile_key,
                                                   'mechanism': entry['mechanism']})
                    mechanisms.add(entry['mechanism'])
        catalog_seen = self._seen_monsters.intersection(self._catalog)
        catalog_with_mechanisms = {profile['key'] for profile_key, profile in self._seen_profiles.items()
                                   if profile['key'] in self._catalog and self._seen_mechanisms.get(profile_key)}
        return {
            'frame': frame,
            'room': room,
            'active': list(current.values()),
            'started': started,
            'ended': ended,
            'observation_gap_frames': gap,
            'continuity': 'continuous' if gap is not None and 0 < gap <= 2 else
                          'duplicate_frame' if gap == 0 else 'unknown_gap' if gap is not None else 'first_observation',
            'coverage_delta': {
                'new_monsters': sorted(key for key in new_monsters if key in self._catalog),
                'new_profiles': sorted(new_profile_keys),
                'new_action_signatures': new_action_signatures,
                'new_static_animation_event_candidates': new_static_animation_event_candidates,
                'new_mechanism_signatures': new_mechanism_signatures,
                'new_unattributed_mechanism_signatures': new_unattributed_mechanism_signatures,
                'new_mechanism_profiles': new_mechanism_profiles,
                'new_action_mechanism_associations': new_action_mechanism_associations,
            },
            'new_action_signatures': new_action_signatures,
            'new_static_animation_event_candidates': new_static_animation_event_candidates,
            'new_mechanism_signatures': new_mechanism_signatures,
            'new_unattributed_mechanism_signatures': new_unattributed_mechanism_signatures,
            'new_action_mechanism_associations': new_action_mechanism_associations,
            'current_mechanism_counts': dict(sorted(mechanism_counts.items())),
            'current_monster_sources': sorted(source_keys),
            'unattributed_active': sum(not entry.get('source') for entry in current.values()),
            'unknown_attack_animations': len(self._unknown_animations),
            'coverage': {
                'scope': 'observed snapshots in the current detector session',
                'wiki_monster_entries': len(self._catalog),
                'wiki_monsters_seen': len(catalog_seen),
                'wiki_monsters_with_observed_mechanisms': len(catalog_with_mechanisms),
                'wiki_monsters_with_observed_actions': len({profile['key'] for profile_key, profile in
                                                             self._seen_profiles.items()
                                                             if profile['key'] in self._catalog and
                                                             self._observed_actions.get(profile_key)}),
                'wiki_enemy_entries': sum(data.get('role') == 'monster' for data in self._catalog.values()),
                'wiki_boss_entries': sum(data.get('role') == 'boss' for data in self._catalog.values()),
                'wiki_miniboss_entries': sum(data.get('role') == 'miniboss' for data in self._catalog.values()),
                'wiki_bosses_seen': len({profile['key'] for profile in self._seen_profiles.values()
                                         if profile['role'] == 'boss' and profile['key'] in self._catalog}),
                'wiki_minibosses_seen': len({profile['key'] for profile in self._seen_profiles.values()
                                             if profile['role'] == 'miniboss' and profile['key'] in self._catalog}),
                'wiki_minibosses_with_observed_mechanisms': len({profile['key'] for profile_key, profile in
                                                                 self._seen_profiles.items()
                                                                 if profile['role'] == 'miniboss' and
                                                                 profile['key'] in self._catalog and
                                                                 self._seen_mechanisms.get(profile_key)}),
                'all_entity_identities_seen': len(self._seen_monsters),
                'all_entity_profiles_seen': len(self._seen_profiles),
                'champion_profiles_seen': sum(profile['is_champion'] is True for profile in self._seen_profiles.values()),
                'engine_boss_profiles_seen': sum(profile['is_boss'] is True for profile in self._seen_profiles.values()),
                'current_snapshot_monsters': len(observed_monsters),
                'current_snapshot_profiles': len(observed_profiles),
                'mechanism_profiles_observed': sum(len(values) for values in self._seen_mechanisms.values()),
                'confirmed_mechanism_profiles_observed': sum(len(values) for values in self._seen_mechanisms.values()),
                **self._mechanism_signature_coverage(),
                'action_signatures_observed': sum(len(values) for values in self._observed_actions.values()),
                'state_transition_signatures_observed': sum(len(values) for values in self._observed_transitions.values()),
                'profiles_with_state_transitions': len(self._seen_state_transitions),
                'unknown_attack_animations': len(self._unknown_animations),
                **self._static_animation_event_coverage(),
                **self._static_animation_coverage(),
                **self._action_mechanism_association_coverage(),
                **self._static_mechanism_candidate_coverage(),
            },
            'state_transitions': state_transitions,
        }

    def coverage_report(self):
        signatures_by_monster = {}
        action_mechanism_associations_by_monster = {}
        static_events_by_monster = {}
        static_animations_by_monster = {}
        observed_static_animations = self._observed_static_animations()
        for profile_key, signatures in self._observed_mechanism_signatures.items():
            profile = self._seen_profiles.get(profile_key)
            if profile is None:
                continue
            signatures_by_monster.setdefault(profile['key'], []).extend(
                {'profile_key': profile_key, **signature} for signature in signatures.values())
        for profile_key, associations in self._observed_action_mechanism_associations.items():
            profile = self._seen_profiles.get(profile_key)
            if profile is None:
                continue
            action_mechanism_associations_by_monster.setdefault(profile['key'], []).extend(
                {'profile_key': profile_key, **association} for association in associations.values())
        for profile_key, events in self._observed_static_animation_event_candidates.items():
            profile = self._seen_profiles.get(profile_key)
            if profile is None:
                continue
            static_events_by_monster.setdefault(profile['key'], []).extend(
                {'profile_key': profile_key, **event} for event in events.values())
        for profile_key, animations in observed_static_animations.items():
            profile = self._seen_profiles.get(profile_key)
            if profile is None:
                continue
            static_animations_by_monster.setdefault(profile['key'], set()).update(animations)
        profiles_by_entity_config = {}
        mechanisms_by_entity_config = {}
        signatures_by_entity_config = {}
        associations_by_entity_config = {}
        events_by_entity_config = {}
        animations_by_entity_config = {}
        actions_by_entity_config = {}
        champion_profiles_by_entity_config = {}
        champion_mechanisms_by_entity_config = {}
        profile_match_basis_by_key = {}
        for profile_key, profile in self._seen_profiles.items():
            _, match_basis, entity_config_key = self._static_catalog.resolve(
                self._static_mechanism_candidates, profile['key'])
            if entity_config_key is None:
                continue
            profile_match_basis_by_key[profile_key] = match_basis
            profiles_by_entity_config.setdefault(entity_config_key, []).append(profile_key)
            mechanisms_by_entity_config.setdefault(entity_config_key, set()).update(
                self._seen_mechanisms.get(profile_key, ()))
            signatures_by_entity_config.setdefault(entity_config_key, []).extend(
                {'profile_key': profile_key, **signature}
                for signature in self._observed_mechanism_signatures.get(profile_key, {}).values())
            associations_by_entity_config.setdefault(entity_config_key, []).extend(
                {'profile_key': profile_key, **association}
                for association in self._observed_action_mechanism_associations.get(profile_key, {}).values())
            events_by_entity_config.setdefault(entity_config_key, []).extend(
                {'profile_key': profile_key, **event}
                for event in self._observed_static_animation_event_candidates.get(profile_key, {}).values())
            animations_by_entity_config.setdefault(entity_config_key, set()).update(
                observed_static_animations.get(profile_key, {}))
            actions_by_entity_config.setdefault(entity_config_key, []).extend(
                {'profile_key': profile_key, **action}
                for action in self._observed_actions.get(profile_key, {}).values())
            if profile['is_champion'] is True:
                champion_profiles_by_entity_config.setdefault(entity_config_key, []).append(profile_key)
                champion_mechanisms_by_entity_config.setdefault(entity_config_key, set()).update(
                    self._seen_mechanisms.get(profile_key, ()))
        static_animation_coverage_by_monster = {}
        for key in self._catalog.keys() | self._static_mechanism_candidates.keys() | self._seen_monsters:
            available, _, _ = self._static_catalog.resolve(self._static_animations, key)
            available = available or {}
            observed = animations_by_entity_config.get(key, static_animations_by_monster.get(key, set()))
            attack_cued = {name: animation for name, animation in available.items() if animation['cues']}
            static_animation_coverage_by_monster[key] = {
                'animation_names_available': len(available),
                'attack_cued_animation_names_available': sorted(animation['name'] for animation in attack_cued.values()),
                'animation_names_observed': sorted(available[name]['name'] for name in observed if name in available),
                'attack_cued_animation_names_observed': sorted(
                    animation['name'] for name, animation in attack_cued.items() if name in observed),
                'attack_cued_animation_names_unobserved': sorted(
                    animation['name'] for name, animation in attack_cued.items() if name not in observed),
            }
        local_npc_entities = [
            {
                'key': key,
                'name_zh': entry.get('name_zh'),
                'display_name': entry.get('display_name'),
                'entity_config_names': entry.get('entity_config_names', []),
                'category': entry.get('category'),
                'role': entry['role'],
                'roster_scope': entry.get('roster_scope'),
                'runtime_profiles': sorted(profiles_by_entity_config.get(key, ())),
                'runtime_profile_match_bases': {
                    profile_key: profile_match_basis_by_key[profile_key]
                    for profile_key in sorted(profiles_by_entity_config.get(key, ()))},
                'mechanism_profile_match_bases': {
                    profile_key: profile_match_basis_by_key[profile_key]
                    for profile_key in sorted(profiles_by_entity_config.get(key, ()))
                    if self._seen_mechanisms.get(profile_key)},
                'champion_variant_allowed': entry['contact_damage']['champion_allowed'],
                'champion_profiles_observed': sorted(champion_profiles_by_entity_config.get(key, ())),
                'champion_profile_match_bases': {
                    profile_key: profile_match_basis_by_key[profile_key]
                    for profile_key in sorted(champion_profiles_by_entity_config.get(key, ()))},
                'champion_mechanisms_observed': sorted(champion_mechanisms_by_entity_config.get(key, ())),
                'champion_mechanism_profile_match_bases': {
                    profile_key: profile_match_basis_by_key[profile_key]
                    for profile_key in sorted(champion_profiles_by_entity_config.get(key, ()))
                    if self._seen_mechanisms.get(profile_key)},
                'champion_status': 'not_applicable' if not entry['contact_damage']['champion_allowed'] else
                                   'mechanism_observed' if champion_mechanisms_by_entity_config.get(key) else
                                   'profile_observed' if champion_profiles_by_entity_config.get(key) else
                                   'not_observed',
                'observed_actions': sorted(
                    actions_by_entity_config.get(key, ()),
                    key=lambda action: (str(action.get('state')), str(action.get('animation')),
                                        action['profile_key'])),
                'mechanisms_observed': sorted(mechanisms_by_entity_config.get(key, ())),
                'mechanism_signatures': sorted(
                    signatures_by_entity_config.get(key, ()),
                    key=lambda signature: (signature['mechanism'], signature['object']['type'],
                                           signature['object']['variant'], str(signature['object']['subtype']),
                                           signature['profile_key'])),
                'action_mechanism_associations': sorted(
                    associations_by_entity_config.get(key, ()),
                    key=lambda association: (str(association['action']['animation']),
                                             association['mechanism_signature']['mechanism'],
                                             association['profile_key'])),
                'static_mechanism_candidates': entry,
                'static_animation_event_candidates_available': sorted(
                    [candidate for animations in self._static_event_candidates.get(key, {}).values()
                     for events in animations.values() for candidate in events],
                    key=lambda candidate: (candidate['animation'], candidate['frame'],
                                           candidate['event_name'], candidate['path'])),
                'static_animation_event_candidates_observed': sorted(
                    events_by_entity_config.get(key, ()),
                    key=lambda event: (event['animation'], event['frame'], event['event_name'],
                                       event['profile_key'])),
                'static_animation_coverage': static_animation_coverage_by_monster[key],
                'status': 'mechanism_observed' if mechanisms_by_entity_config.get(key) else
                          'action_profile_observed' if profiles_by_entity_config.get(key) and any(
                              self._observed_actions.get(profile_key)
                              for profile_key in profiles_by_entity_config[key]) else
                          'identity_observed_only' if profiles_by_entity_config.get(key) else 'not_observed',
            }
            for key, entry in sorted(self._static_mechanism_candidates.items())
        ]
        unattributed_mechanism_signatures = sorted(
            self._observed_unattributed_mechanism_signatures.values(),
            key=lambda signature: (signature['mechanism'], signature['object']['type'],
                                  signature['object']['variant'], str(signature['object']['subtype']),
                                  json.dumps(signature['properties'], sort_keys=True,
                                             separators=(',', ':'), default=str)))
        return {
            **self._static_animation_event_coverage(),
            **self._static_animation_coverage(observed_static_animations),
            **self._action_mechanism_association_coverage(),
            **self._static_mechanism_candidate_coverage(),
            'wiki_monster_entries': len(self._catalog),
            'wiki_monsters_seen': len(self._seen_monsters.intersection(self._catalog)),
            'wiki_monsters_with_observed_mechanisms': len({profile['key'] for profile_key, profile in
                                                           self._seen_profiles.items()
                                                           if profile['key'] in self._catalog and
                                                           self._seen_mechanisms.get(profile_key)}),
            'wiki_monsters_with_observed_actions': len({profile['key'] for profile_key, profile in
                                                        self._seen_profiles.items()
                                                        if profile['key'] in self._catalog and
                                                        self._observed_actions.get(profile_key)}),
            'wiki_miniboss_entries': sum(data.get('role') == 'miniboss' for data in self._catalog.values()),
            'wiki_enemy_entries': sum(data.get('role') == 'monster' for data in self._catalog.values()),
            'wiki_boss_entries': sum(data.get('role') == 'boss' for data in self._catalog.values()),
            'wiki_minibosses_seen': len({profile['key'] for profile in self._seen_profiles.values()
                                         if profile['role'] == 'miniboss' and profile['key'] in self._catalog}),
            'wiki_minibosses_with_observed_mechanisms': len({profile['key'] for profile_key, profile in
                                                             self._seen_profiles.items()
                                                             if profile['role'] == 'miniboss' and
                                                             profile['key'] in self._catalog and
                                                             self._seen_mechanisms.get(profile_key)}),
            'champion_profiles_seen': sum(profile['is_champion'] is True for profile in self._seen_profiles.values()),
            'engine_boss_profiles_seen': sum(profile['is_boss'] is True for profile in self._seen_profiles.values()),
            **self._mechanism_signature_coverage(),
            'mechanism_profiles_observed': sum(len(values) for values in self._seen_mechanisms.values()),
            'confirmed_mechanism_profiles_observed': sum(len(values) for values in self._seen_mechanisms.values()),
            'monsters_with_mechanism_signatures': len(signatures_by_monster),
            'unattributed_mechanism_signatures': unattributed_mechanism_signatures,
            'local_npc_entity_catalog_coverage': {
                'entries_available': len(local_npc_entities),
                'entries_observed': sum(bool(entry['runtime_profiles']) for entry in local_npc_entities),
                'entries_observed_exact_identity': sum(
                    'exact_identity' in entry['runtime_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'entries_observed_by_unique_type_variant_fallback': sum(
                    'unique_type_variant_entity_config' in entry['runtime_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'entries_observed_only_by_unique_type_variant_fallback': sum(
                    'unique_type_variant_entity_config' in entry['runtime_profile_match_bases'].values() and
                    'exact_identity' not in entry['runtime_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'entries_without_exact_identity_observation': sum(
                    'exact_identity' not in entry['runtime_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'entries_with_observed_actions': sum(
                    entry['status'] in ('action_profile_observed', 'mechanism_observed')
                    for entry in local_npc_entities),
                'entries_with_observed_actions_exact_identity': sum(
                    any(match_basis == 'exact_identity' and self._observed_actions.get(profile_key)
                        for profile_key, match_basis in entry['runtime_profile_match_bases'].items())
                    for entry in local_npc_entities),
                'entries_with_observed_actions_by_unique_type_variant_fallback': sum(
                    any(match_basis == 'unique_type_variant_entity_config' and
                        self._observed_actions.get(profile_key)
                        for profile_key, match_basis in entry['runtime_profile_match_bases'].items())
                    for entry in local_npc_entities),
                'entries_with_observed_mechanisms': sum(
                    entry['status'] == 'mechanism_observed' for entry in local_npc_entities),
                'entries_with_observed_mechanisms_exact_identity': sum(
                    'exact_identity' in entry['mechanism_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'entries_with_observed_mechanisms_by_unique_type_variant_fallback': sum(
                    'unique_type_variant_entity_config' in entry['mechanism_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'entries_not_observed': sum(
                    entry['status'] == 'not_observed' for entry in local_npc_entities),
                'champion_variant_entries_eligible': sum(
                    entry['champion_variant_allowed'] is True for entry in local_npc_entities),
                'champion_variant_entries_with_profiles': sum(
                    bool(entry['champion_profiles_observed']) for entry in local_npc_entities),
                'champion_variant_entries_with_profiles_exact_identity': sum(
                    'exact_identity' in entry['champion_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'champion_variant_entries_with_profiles_by_unique_type_variant_fallback': sum(
                    'unique_type_variant_entity_config' in entry['champion_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'champion_variant_entries_with_mechanisms': sum(
                    bool(entry['champion_mechanisms_observed']) for entry in local_npc_entities),
                'champion_variant_entries_with_mechanisms_exact_identity': sum(
                    'exact_identity' in entry['champion_mechanism_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'champion_variant_entries_with_mechanisms_by_unique_type_variant_fallback': sum(
                    'unique_type_variant_entity_config' in entry['champion_mechanism_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'champion_variant_entries_unobserved': sum(
                    entry['champion_variant_allowed'] is True and not entry['champion_profiles_observed']
                    for entry in local_npc_entities),
                'champion_variant_entries_unobserved_exact_identity': sum(
                    entry['champion_variant_allowed'] is True and
                    'exact_identity' not in entry['champion_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'champion_variant_entries_observed_only_by_unique_type_variant_fallback': sum(
                    entry['champion_variant_allowed'] is True and
                    'unique_type_variant_entity_config' in entry['champion_profile_match_bases'].values() and
                    'exact_identity' not in entry['champion_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'champion_variant_entries_with_mechanisms_only_by_unique_type_variant_fallback': sum(
                    entry['champion_variant_allowed'] is True and
                    'unique_type_variant_entity_config' in
                    entry['champion_mechanism_profile_match_bases'].values() and
                    'exact_identity' not in entry['champion_mechanism_profile_match_bases'].values()
                    for entry in local_npc_entities),
                'by_role': {
                    role: {
                        'entries_available': sum(entry['role'] == role for entry in local_npc_entities),
                        'entries_observed': sum(entry['role'] == role and bool(entry['runtime_profiles'])
                                                for entry in local_npc_entities),
                        'entries_observed_exact_identity': sum(
                            entry['role'] == role and
                            'exact_identity' in entry['runtime_profile_match_bases'].values()
                            for entry in local_npc_entities),
                        'entries_observed_by_unique_type_variant_fallback': sum(
                            entry['role'] == role and
                            'unique_type_variant_entity_config' in entry['runtime_profile_match_bases'].values()
                            for entry in local_npc_entities),
                        'entries_with_observed_actions_exact_identity': sum(
                            entry['role'] == role and any(
                                match_basis == 'exact_identity' and self._observed_actions.get(profile_key)
                                for profile_key, match_basis in entry['runtime_profile_match_bases'].items())
                            for entry in local_npc_entities),
                        'entries_with_observed_actions_by_unique_type_variant_fallback': sum(
                            entry['role'] == role and any(
                                match_basis == 'unique_type_variant_entity_config' and
                                self._observed_actions.get(profile_key)
                                for profile_key, match_basis in entry['runtime_profile_match_bases'].items())
                            for entry in local_npc_entities),
                        'entries_with_observed_mechanisms': sum(
                            entry['role'] == role and entry['status'] == 'mechanism_observed'
                            for entry in local_npc_entities),
                        'entries_with_observed_mechanisms_exact_identity': sum(
                            entry['role'] == role and
                            'exact_identity' in entry['mechanism_profile_match_bases'].values()
                            for entry in local_npc_entities),
                        'entries_with_observed_mechanisms_by_unique_type_variant_fallback': sum(
                            entry['role'] == role and
                            'unique_type_variant_entity_config' in entry['mechanism_profile_match_bases'].values()
                            for entry in local_npc_entities),
                        'champion_variant_entries_eligible': sum(
                            entry['role'] == role and entry['champion_variant_allowed'] is True
                            for entry in local_npc_entities),
                        'champion_variant_entries_with_profiles': sum(
                            entry['role'] == role and bool(entry['champion_profiles_observed'])
                            for entry in local_npc_entities),
                        'champion_variant_entries_with_profiles_exact_identity': sum(
                            entry['role'] == role and
                            'exact_identity' in entry['champion_profile_match_bases'].values()
                            for entry in local_npc_entities),
                        'champion_variant_entries_with_profiles_by_unique_type_variant_fallback': sum(
                            entry['role'] == role and
                            'unique_type_variant_entity_config' in entry['champion_profile_match_bases'].values()
                            for entry in local_npc_entities),
                        'champion_variant_entries_with_mechanisms': sum(
                            entry['role'] == role and bool(entry['champion_mechanisms_observed'])
                            for entry in local_npc_entities),
                        'champion_variant_entries_with_mechanisms_exact_identity': sum(
                            entry['role'] == role and
                            'exact_identity' in entry['champion_mechanism_profile_match_bases'].values()
                            for entry in local_npc_entities),
                        'champion_variant_entries_with_mechanisms_by_unique_type_variant_fallback': sum(
                            entry['role'] == role and
                            'unique_type_variant_entity_config' in
                            entry['champion_mechanism_profile_match_bases'].values()
                            for entry in local_npc_entities),
                        'champion_variant_entries_unobserved_exact_identity': sum(
                            entry['role'] == role and entry['champion_variant_allowed'] is True and
                            'exact_identity' not in entry['champion_profile_match_bases'].values()
                            for entry in local_npc_entities),
                        'champion_variant_entries_observed_only_by_unique_type_variant_fallback': sum(
                            entry['role'] == role and entry['champion_variant_allowed'] is True and
                            'unique_type_variant_entity_config' in entry['champion_profile_match_bases'].values() and
                            'exact_identity' not in entry['champion_profile_match_bases'].values()
                            for entry in local_npc_entities),
                        'champion_variant_entries_with_mechanisms_only_by_unique_type_variant_fallback': sum(
                            entry['role'] == role and entry['champion_variant_allowed'] is True and
                            'unique_type_variant_entity_config' in
                            entry['champion_mechanism_profile_match_bases'].values() and
                            'exact_identity' not in entry['champion_mechanism_profile_match_bases'].values()
                            for entry in local_npc_entities),
                    }
                    for role in sorted({entry['role'] for entry in local_npc_entities})
                },
            },
            'local_npc_entities': local_npc_entities,
            'profiles_seen': [
                {**profile, 'mechanisms': sorted(self._seen_mechanisms.get(profile_key, ())),
                 'mechanism_signatures': sorted(self._observed_mechanism_signatures.get(profile_key, {}).values(),
                                                key=lambda signature: (signature['mechanism'],
                                                                       signature['object']['type'],
                                                                       signature['object']['variant'],
                                                                       str(signature['object']['subtype']),
                                                                       json.dumps(signature['properties'], sort_keys=True,
                                                                                  separators=(',', ':'), default=str))),
                 'action_mechanism_associations': sorted(
                     self._observed_action_mechanism_associations.get(profile_key, {}).values(),
                     key=lambda association: (str(association['action']['animation']),
                                              association['mechanism_signature']['mechanism'],
                                              json.dumps(association['mechanism_signature'], sort_keys=True,
                                                         separators=(',', ':'), default=str))),
                 'static_mechanism_candidates': self._profile_static_mechanism_candidates(profile),
                 'observed_actions': sorted(self._observed_actions.get(profile_key, {}).values(),
                                            key=lambda action: (str(action['state']), str(action['animation']))),
                 'static_animations_observed': sorted(
                     [{'name': animation['name'], 'cues': animation['cues'],
                       'cue_sources': animation['cue_sources'],
                       'definitions': animation['definitions']}
                      for animation in observed_static_animations.get(profile_key, {}).values()],
                     key=lambda animation: animation['name'].casefold()),
                 'static_animation_event_candidates': sorted(
                     self._observed_static_animation_event_candidates.get(profile_key, {}).values(),
                     key=lambda event: (event['animation'], event['frame'], event['event_name'], event['path'])),
                 'observed_transitions': sorted(self._observed_transitions.get(profile_key, {}).values(),
                                                key=lambda transition: (str(transition['previous_state']),
                                                                        str(transition['previous_animation']),
                                                                        str(transition['state']),
                                                                        str(transition['animation']))),
                 'state_transition_observed': profile_key in self._seen_state_transitions,
                 'status': 'mechanism_observed' if self._seen_mechanisms.get(profile_key) else
                           'action_profile_observed' if self._observed_actions.get(profile_key) else
                           'identity_observed_only'}
                for profile_key, profile in sorted(self._seen_profiles.items())
            ],
            'monsters': [
                {'key': key,
                 'name_zh': self._catalog.get(key, {}).get('name_zh'),
                 'display_name': (self._static_mechanism_candidates.get(key, {}).get('display_name') or
                                  self._catalog.get(key, {}).get('name_zh') or key),
                 'category': self._catalog.get(key, {}).get('category'),
                 'role': self._catalog.get(key, {}).get('role'),
                 'profiles': [profile_key for profile_key, profile in sorted(self._seen_profiles.items())
                              if profile['key'] == key],
                 'mechanisms': sorted({mechanism for profile_key, profile in self._seen_profiles.items()
                                       if profile['key'] == key
                                       for mechanism in self._seen_mechanisms.get(profile_key, ())}),
                 'mechanism_signatures': sorted(signatures_by_monster.get(key, []),
                                                key=lambda signature: (signature['mechanism'],
                                                                       signature['object']['type'],
                                                                       signature['object']['variant'],
                                                                       str(signature['object']['subtype']),
                                                                       signature['profile_key'])),
                 'action_mechanism_associations': sorted(
                     action_mechanism_associations_by_monster.get(key, []),
                     key=lambda association: (str(association['action']['animation']),
                                              association['mechanism_signature']['mechanism'],
                                              association['profile_key'])),
                 'static_mechanism_candidates': self._static_mechanism_candidates.get(key),
                 'static_animation_event_candidates': sorted(static_events_by_monster.get(key, []),
                                                             key=lambda event: (event['animation'], event['frame'],
                                                                                event['event_name'],
                                                                                event['profile_key'])),
                 'static_animation_coverage': static_animation_coverage_by_monster[key],
                 'observed_actions': sorted({(action['state'], action['animation'])
                                             for profile_key, profile in self._seen_profiles.items()
                                             if profile['key'] == key
                                             for action in self._observed_actions.get(profile_key, {}).values()},
                                            key=lambda action: (str(action[0]), str(action[1]))),
                 'status': 'mechanism_observed' if any(profile['key'] == key and
                                                       self._seen_mechanisms.get(profile_key)
                                                       for profile_key, profile in self._seen_profiles.items()) else
                           'action_profile_observed' if any(profile['key'] == key and
                                                            self._observed_actions.get(profile_key)
                                                            for profile_key, profile in self._seen_profiles.items()) else
                           'identity_observed_only' if key in self._seen_monsters else 'not_observed'}
                for key in sorted(self._catalog.keys() | self._seen_monsters)
            ],
            'unknown_attack_animations': [
                {'key': key, 'animation': animation}
                for key, animation in sorted(self._unknown_animations)
            ],
        }

    def _static_animation_event_coverage(self):
        observed_events = [event for events in self._observed_static_animation_event_candidates.values()
                           for event in events.values()]
        match_basis_fields = {
            'exact_frame': 'exact_frame_observations',
            'crossed_snapshot_interval': 'crossed_snapshot_observations',
            'crossed_animation_start': 'crossed_animation_start_observations',
            'crossed_animation_loop': 'crossed_animation_loop_observations',
        }
        observations_by_match_basis = Counter()
        for event in observed_events:
            for match_basis, field in match_basis_fields.items():
                observations_by_match_basis[match_basis] += event.get(field, 0)
        observed_profiles = {profile_key for profile_key, events in
                             self._observed_static_animation_event_candidates.items() if events}
        observed_monsters = {self._seen_profiles[profile_key]['key'] for profile_key in observed_profiles
                             if profile_key in self._seen_profiles}
        observed_events_by_role = {}
        observed_profiles_by_role = {}
        observed_monsters_by_role = {}
        champion_profiles_with_candidates = 0
        for profile_key, events in self._observed_static_animation_event_candidates.items():
            profile = self._seen_profiles.get(profile_key)
            if profile is None:
                continue
            observed_events_by_role.setdefault(profile['role'], []).extend(events.values())
            observed_profiles_by_role.setdefault(profile['role'], set()).add(profile_key)
            observed_monsters_by_role.setdefault(profile['role'], set()).add(profile['key'])
            champion_profiles_with_candidates += profile['is_champion'] is True
        inventory = self._static_catalog.event_inventory
        static_by_role = inventory['static_animation_event_candidates_by_role']
        roles = sorted(set(static_by_role) | {profile['role'] for profile in self._seen_profiles.values()})
        by_role = {}
        for role in roles:
            observed = observed_events_by_role.get(role, ())
            role_observations_by_match_basis = Counter()
            for event in observed:
                for match_basis, field in match_basis_fields.items():
                    role_observations_by_match_basis[match_basis] += event.get(field, 0)
            by_role[role] = {
                **static_by_role.get(role, dict.fromkeys((
                    'roster_entries', 'entity_catalog_entries', 'entries_with_triggers',
                    'entries_without_triggers', 'trigger_candidates_available',
                    'lexically_cued_candidates_available', 'unclassified_candidates_available'), 0)),
                'entries_with_observed_candidates': len(observed_monsters_by_role.get(role, ())),
                'profiles_with_observed_candidates': len(observed_profiles_by_role.get(role, ())),
                'candidate_signatures_observed': len(observed),
                'candidate_observations_by_match_basis': dict(sorted(role_observations_by_match_basis.items())),
            }
        return {
            **inventory,
            'static_animation_event_candidate_signatures_observed': len(observed_events),
            'static_animation_event_candidate_signatures_lexically_cued_observed': sum(
                'unclassified' not in event.get('cue_sources', ()) for event in observed_events),
            'static_animation_event_candidate_signatures_unclassified_observed': sum(
                event.get('cue_sources') == ['unclassified'] for event in observed_events),
            'static_animation_event_candidate_observations': sum(event['observations'] for event in observed_events),
            'static_animation_event_candidate_observations_by_match_basis': dict(
                sorted(observations_by_match_basis.items())),
            'profiles_with_static_animation_event_candidates': len(observed_profiles),
            'champion_profiles_with_static_animation_event_candidates': champion_profiles_with_candidates,
            'monsters_with_static_animation_event_candidates': len(observed_monsters),
            'static_animation_event_candidates_by_role': by_role,
        }

    def _observed_static_animations(self):
        observed = {}
        for profile_key, actions in self._observed_actions.items():
            profile = self._seen_profiles.get(profile_key)
            if profile is None:
                continue
            available, _, _ = self._static_catalog.resolve(self._static_animations, profile['key'])
            available = available or {}
            for action in actions.values():
                name = str(action.get('animation') or '').casefold()
                animation = available.get(name)
                if animation:
                    observed.setdefault(profile_key, {})[name] = animation
        return observed

    def _static_animation_coverage(self, observed=None):
        observed = self._observed_static_animations() if observed is None else observed
        profiles_by_role = {}
        monsters_by_role = {}
        attack_profiles_by_role = {}
        attack_monsters_by_role = {}
        observed_names_by_role = {}
        observed_attack_names_by_role = {}
        observed_animation_names = set()
        observed_attack_animation_names = set()
        observed_profile_animation_names = set()
        observed_profile_attack_animation_names = set()
        champion_profiles_with_animations = 0
        champion_profiles_with_attack_animations = 0
        for profile_key, animations in observed.items():
            profile = self._seen_profiles.get(profile_key)
            if profile is None:
                continue
            animation_names = set(animations)
            attack_animation_names = {name for name, animation in animations.items() if animation['cues']}
            observed_animation_names.update((profile['key'], name) for name in animation_names)
            observed_attack_animation_names.update((profile['key'], name) for name in attack_animation_names)
            observed_names_by_role.setdefault(profile['role'], set()).update(
                (profile['key'], name) for name in animation_names)
            observed_attack_names_by_role.setdefault(profile['role'], set()).update(
                (profile['key'], name) for name in attack_animation_names)
            observed_profile_animation_names.update((profile_key, name) for name in animation_names)
            observed_profile_attack_animation_names.update((profile_key, name) for name in attack_animation_names)
            profiles_by_role.setdefault(profile['role'], set()).add(profile_key)
            monsters_by_role.setdefault(profile['role'], set()).add(profile['key'])
            if attack_animation_names:
                attack_profiles_by_role.setdefault(profile['role'], set()).add(profile_key)
                attack_monsters_by_role.setdefault(profile['role'], set()).add(profile['key'])
            champion_profiles_with_animations += profile['is_champion'] is True
            champion_profiles_with_attack_animations += profile['is_champion'] is True and bool(attack_animation_names)
        by_role = {}
        inventory_by_role = self._static_animation_inventory.get('by_role', {})
        roles = sorted(set(inventory_by_role) | set(self._catalog[ key ]['role'] for key in self._catalog))
        for role in roles:
            available = inventory_by_role.get(role, {})
            by_role[role] = {
                'roster_entries': available.get('roster_entries',
                                                sum(entry['role'] == role for entry in self._catalog.values())),
                'entity_catalog_entries': available.get('entity_catalog_entries', 0),
                'entries_with_animations': available.get('entries_with_animations', 0),
                'entries_with_attack_cued_animations': available.get('entries_with_attack_cued_animations', 0),
                'animation_names_available': available.get('animation_names_available', 0),
                'attack_cued_animation_names_available': available.get('attack_cued_animation_names_available', 0),
                'unclassified_animation_names_available': (
                    available.get('animation_names_available', 0) -
                    available.get('attack_cued_animation_names_available', 0)),
                'entries_with_observed_animations': len(monsters_by_role.get(role, ())),
                'entries_with_observed_attack_cued_animations': len(attack_monsters_by_role.get(role, ())),
                'profiles_with_observed_animations': len(profiles_by_role.get(role, ())),
                'profiles_with_observed_attack_cued_animations': len(attack_profiles_by_role.get(role, ())),
                'animation_names_observed_by_identity': len(observed_names_by_role.get(role, ())),
                'attack_cued_animation_names_observed_by_identity': len(
                    observed_attack_names_by_role.get(role, ())),
            }
        return {
            'static_animation_source_version': self._static_animation_source_version,
            'static_animation_catalog_roster_entries_available': self._static_animation_inventory.get(
                'roster_entry_count', 0),
            'static_animation_catalog_entity_catalog_entries_available': self._static_animation_inventory.get(
                'entity_catalog_entry_count', 0),
            'static_animation_catalog_supplemental_unlisted_npc_entries': self._static_animation_inventory.get(
                'supplemental_unlisted_npc_entries', 0),
            'static_animation_catalog_entries_with_animations': self._static_animation_inventory.get(
                'entries_with_animations', 0),
            'static_animation_catalog_entries_without_animations': self._static_animation_inventory.get(
                'entries_without_animations', 0),
            'static_animation_names_available': self._static_animation_inventory.get('animation_name_count', 0),
            'static_attack_cued_animation_names_available': self._static_animation_inventory.get(
                'attack_cued_animation_name_count', 0),
            'static_unclassified_animation_names_available': self._static_animation_inventory.get(
                'unclassified_animation_name_count', 0),
            'static_animation_names_observed_by_identity': len(observed_animation_names),
            'static_attack_cued_animation_names_observed_by_identity': len(observed_attack_animation_names),
            'static_unclassified_animation_names_observed_by_identity': (
                len(observed_animation_names) - len(observed_attack_animation_names)),
            'static_animation_profile_matches_observed': len(observed_profile_animation_names),
            'static_attack_cued_animation_profile_matches_observed': len(observed_profile_attack_animation_names),
            'entries_with_observed_static_animations': len({key for key, _ in observed_animation_names}),
            'entries_with_observed_attack_cued_static_animations': len({key for key, _ in observed_attack_animation_names}),
            'profiles_with_observed_static_animations': len({profile for profile, _ in observed_profile_animation_names}),
            'profiles_with_observed_attack_cued_static_animations': len(
                {profile for profile, _ in observed_profile_attack_animation_names}),
            'champion_profiles_with_observed_static_animations': champion_profiles_with_animations,
            'champion_profiles_with_observed_attack_cued_static_animations': champion_profiles_with_attack_animations,
            'static_animation_coverage_by_role': by_role,
        }

    def _mechanism_signature_coverage(self):
        signatures = [(profile_key, signature)
                      for profile_key, values in self._observed_mechanism_signatures.items()
                      for signature in values.values()]
        unattributed_signatures = list(self._observed_unattributed_mechanism_signatures.values())
        confirmed = [(profile_key, signature) for profile_key, signature in signatures
                     if signature.get('confidence') in CONFIRMED_MECHANISM_CONFIDENCES]
        return {
            'mechanism_signatures_observed': len(signatures),
            'confirmed_mechanism_signatures_observed': len(confirmed),
            'unclassified_effect_signatures_observed': sum(
                signature['mechanism'] == 'unknown_effect_emission' for _, signature in signatures) +
                sum(signature['mechanism'] == 'unknown_effect_emission' for signature in unattributed_signatures),
            'mechanism_instances_observed': sum(signature['observed_instances'] for _, signature in signatures),
            'confirmed_mechanism_instances_observed': sum(
                signature['observed_instances'] for _, signature in confirmed),
            'profiles_with_mechanism_signatures': len({profile_key for profile_key, _ in signatures}),
            'profiles_with_confirmed_mechanism_signatures': len({profile_key for profile_key, _ in confirmed}),
            'unattributed_mechanism_signatures_observed': len(
                self._observed_unattributed_mechanism_signatures),
            'unattributed_mechanism_instances_observed': sum(
                signature['observed_instances'] for signature in unattributed_signatures),
            'unattributed_unknown_effect_signatures_observed': sum(
                signature['mechanism'] == 'unknown_effect_emission' for signature in unattributed_signatures),
            'unattributed_unknown_effect_instances_observed': sum(
                signature['observed_instances'] for signature in unattributed_signatures
                if signature['mechanism'] == 'unknown_effect_emission'),
        }

    def _action_mechanism_association_coverage(self):
        associations = [(profile_key, association)
                        for profile_key, values in self._observed_action_mechanism_associations.items()
                        for association in values.values()]
        by_role = {}
        for profile_key, profile in self._seen_profiles.items():
            if self._observed_action_mechanism_associations.get(profile_key):
                role = profile['role']
                by_role.setdefault(role, {'profiles': 0, 'monsters': set(), 'instances': 0})
                by_role[role]['profiles'] += 1
                by_role[role]['monsters'].add(profile['key'])
                by_role[role]['instances'] += sum(
                    association['observations']
                    for association in self._observed_action_mechanism_associations[profile_key].values())
        return {
            'action_mechanism_association_signatures_observed': len(associations),
            'action_mechanism_association_instances_observed': sum(
                association['observations'] for _, association in associations),
            'profiles_with_action_mechanism_associations': len({profile for profile, _ in associations}),
            'monsters_with_action_mechanism_associations': len({self._seen_profiles[profile]['key']
                                                                for profile, _ in associations}),
            'action_mechanism_associations_by_role': {
                role: {'profiles': value['profiles'], 'monsters': len(value['monsters']),
                       'instances': value['instances']}
                for role, value in sorted(by_role.items())
            },
        }

    def _static_mechanism_candidate_coverage(self):
        inventory = self._static_mechanism_inventory
        return {
            'static_mechanism_candidate_source_version': self._static_mechanism_source_version,
            'static_mechanism_roster_entries_available': inventory.get('roster_entries', 0),
            'static_local_npc_entity_definitions_available': inventory.get('entity_catalog_entries', 0),
            'static_supplemental_unlisted_npc_definitions_available': inventory.get(
                'supplemental_unlisted_npc_entries', 0),
            'static_entity_definition_entries_available': inventory.get('entries_with_entity_definitions', 0),
            'static_base_contact_damage_candidates_available': inventory.get('base_contact_damage_candidates', 0),
            'static_champion_variants_allowed': inventory.get('champion_variants_allowed', 0),
            'static_champion_contact_damage_candidates_available': inventory.get('champion_contact_damage_candidates', 0),
            'static_champion_contact_damage_overrides_zero_base': inventory.get(
                'champion_contact_damage_overrides_zero_base', 0),
            'static_event_cue_entries_available': inventory.get('entries_with_static_event_cues', 0),
            'static_attack_cued_animation_entries_available': inventory.get('entries_with_attack_cued_animations', 0),
            'static_mechanism_candidates_by_role': inventory.get('by_role', {}),
        }

    def _profile_static_mechanism_candidates(self, profile):
        candidate, match_basis, entity_config_key = self._static_catalog.resolve(
            self._static_mechanism_candidates, profile['key'])
        if candidate is None:
            return None
        contact = candidate['contact_damage']
        return {
            'base_contact_damage_candidate': contact['base_candidate'],
            'roster_scope': candidate.get('roster_scope'),
            'static_candidate_match_basis': match_basis,
            'static_entity_config_key': entity_config_key,
            'static_role': candidate.get('role'),
            'static_display_name': candidate.get('display_name'),
            'entity_config_names': candidate.get('entity_config_names', []),
            'champion_variant_allowed': contact['champion_allowed'],
            'champion_contact_damage_candidate_available': contact['champion_candidate'],
            'champion_contact_damage_candidate_for_profile': profile['is_champion'] is True,
            'champion_overrides_zero_base_candidate_for_profile': (
                profile['is_champion'] is True and contact['champion_overrides_zero_base_candidate']),
            'static_event_cues': candidate['static_event_cues'],
            'attack_cued_animation_names': candidate['attack_cued_animation_names'],
        }

    @staticmethod
    def _mechanism_signature(entry):
        mechanism = entry['mechanism']
        if mechanism not in ('contact_damage', 'tear_emission', 'projectile_emission', 'bomb_emission',
                             'laser_emission', 'knife_emission', 'attack_effect', 'unknown_effect_emission',
                             'summon_or_split'):
            return None
        obj = entry['object']
        evidence = entry['evidence']
        properties = {}
        if mechanism == 'contact_damage':
            properties = {key: evidence.get(key) for key in ('collision_damage', 'collision_class', 'state')}
        if mechanism == 'tear_emission':
            tear = evidence.get('tear') or {}
            properties = {key: tear.get(key) for key in ('fall_speed', 'fall_accel', 'range', 'flags')}
        if mechanism == 'projectile_emission':
            properties = {key: evidence.get(key) for key in ('projectile_flags_raw', 'projectile_flags', 'modifiers')}
        if mechanism == 'bomb_emission':
            countdown = evidence.get('countdown')
            properties = {'countdown_class': 'unknown' if countdown is None else
                          'immediate' if AttackMechanismDetector._number(countdown) <= 0 else 'timed',
                          'explosion_radius': evidence.get('explosion_radius')}
        if mechanism == 'laser_emission':
            laser = evidence.get('laser') or {}
            properties = {key: laser.get(key) for key in ('max_distance', 'is_circle', 'radius', 'radius_expansion', 'scale')}
        if mechanism == 'knife_emission':
            knife = evidence.get('knife') or {}
            properties = {key: knife.get(key) for key in ('max_distance', 'charge', 'is_flying')}
        if mechanism in ('attack_effect', 'unknown_effect_emission'):
            properties = {key: evidence.get(key) for key in ('effect_variant_name', 'collision_damage', 'collision_class')}
        if mechanism == 'summon_or_split':
            properties = {'child_identity': evidence.get('child_identity')}
        return {
            'mechanism': mechanism,
            'confidence': entry['confidence'],
            'object': {key: obj.get(key) for key in ('type', 'variant', 'subtype')},
            'properties': AttackMechanismDetector._signature_value(properties),
        }

    @staticmethod
    def _signature_value(value):
        if isinstance(value, float):
            return round(value, 3)
        if isinstance(value, dict):
            return {key: AttackMechanismDetector._signature_value(item) for key, item in value.items()}
        if isinstance(value, (list, tuple)):
            return [AttackMechanismDetector._signature_value(item) for item in value]
        return value

    def _add_static_animation_event_candidates(self, current, entity, key, profile_key, frame, previous):
        animation = str(entity.get('animation') or '')
        candidate_entry, identity_match_basis, entity_config_key = self._static_catalog.resolve(
            self._static_event_candidates, key)
        candidates = (candidate_entry or {}).get(animation.casefold(), {})
        if not candidates:
            return []
        animation_entry, _, _ = self._static_catalog.resolve(self._static_animations, key)
        animation_data = (animation_entry or {}).get(animation.casefold(), {})
        definitions_by_path = {definition['path']: definition for definition in animation_data.get('definitions', ())}
        try:
            frame_value = float(entity.get('animation_frame'))
        except (TypeError, ValueError):
            return []
        animation_frame = round(frame_value)
        exact_frame = abs(frame_value - animation_frame) <= 0.1
        same_animation = previous is not None and str(previous.get('animation') or '').casefold() == animation.casefold()
        try:
            previous_frame = float(previous.get('animation_frame')) if same_animation else None
        except (TypeError, ValueError):
            previous_frame = None
        previous_snapshot_frame = self._int(previous.get('frame'), None) if previous else None
        snapshot_gap = frame - previous_snapshot_frame if previous_snapshot_frame is not None else None
        crossed_snapshot = (same_animation and snapshot_gap is not None and 0 < snapshot_gap <= 4 and
                            previous_frame is not None and previous_frame < frame_value)
        crossed_animation_loop = (same_animation and snapshot_gap is not None and 0 < snapshot_gap <= 4 and
                                  previous_frame is not None and previous_frame > frame_value)
        crossed_animation_start = (not same_animation and 0 < frame_value <= 2 and
                                   (previous is None or
                                    snapshot_gap is not None and 0 < snapshot_gap <= 2))
        events = [
            (event_frame, event, 'exact_frame')
            for event_frame, values in candidates.items() if exact_frame and event_frame == animation_frame
            for event in values
        ]
        if crossed_snapshot:
            events.extend((event_frame, event, 'crossed_snapshot_interval')
                          for event_frame, values in candidates.items()
                          if previous_frame < event_frame <= frame_value and
                          not (exact_frame and event_frame == animation_frame)
                          for event in values)
        if crossed_animation_loop:
            for event_frame, values in candidates.items():
                for event in values:
                    definition = definitions_by_path.get(event['path'])
                    frame_count = self._int(definition.get('frame_count'), 0) if definition else 0
                    if not definition or not definition.get('loop') or frame_count <= 0:
                        continue
                    loop_arc_frames = (frame_value - previous_frame) % frame_count
                    if loop_arc_frames == 0:
                        loop_arc_frames = frame_count
                    distance = (event_frame - previous_frame) % frame_count
                    if distance == 0:
                        distance = frame_count
                    if (not (exact_frame and event_frame == animation_frame) and
                            distance <= min(snapshot_gap, loop_arc_frames) + 0.1):
                        events.append((event_frame, event, 'crossed_animation_loop'))
        if crossed_animation_start:
            events.extend((event_frame, event, 'crossed_animation_start')
                          for event_frame, values in candidates.items()
                          if 0 <= event_frame <= frame_value and not (exact_frame and event_frame == animation_frame)
                          for event in values)
        new_events = []
        for event_frame, candidate, match_basis in events:
            event = {key: candidate[key] for key in
                     ('animation', 'event_name', 'frame', 'trigger_index', 'cues', 'animation_cues',
                      'cue_sources', 'path')}
            event['entity_config_key'] = entity_config_key
            event['identity_match_basis'] = identity_match_basis
            signature_key = json.dumps(event, ensure_ascii=False, sort_keys=True, separators=(',', ':'))
            profile_events = self._observed_static_animation_event_candidates.setdefault(profile_key, {})
            record = profile_events.get(signature_key)
            is_new = record is None
            if record is None:
                record = {**event, 'observations': 0, 'exact_frame_observations': 0,
                          'crossed_snapshot_observations': 0, 'crossed_animation_start_observations': 0,
                          'crossed_animation_loop_observations': 0,
                          'first_frame': frame, 'last_frame': frame}
                profile_events[signature_key] = record
            if record['last_frame'] != frame or record['observations'] == 0:
                record['observations'] += 1
                record[{'exact_frame': 'exact_frame_observations',
                        'crossed_snapshot_interval': 'crossed_snapshot_observations',
                        'crossed_animation_start': 'crossed_animation_start_observations',
                        'crossed_animation_loop': 'crossed_animation_loop_observations'}[match_basis]] += 1
            record['last_frame'] = frame
            if is_new:
                new_events.append({'key': key, 'profile_key': profile_key, **record})
            self._add(current, 'static_animation_event_candidate', entity, entity, 'entity_itself',
                      {'animation': animation, 'animation_frame': frame_value,
                       'static_event_frame': event_frame, 'trigger_index': candidate['trigger_index'],
                       'entity_config_key': entity_config_key,
                       'identity_match_basis': identity_match_basis,
                       'match_basis': match_basis,
                       'event_name': candidate['event_name'], 'event_cues': candidate['cues'],
                       'animation_cues': candidate['animation_cues'],
                       'cue_sources': candidate['cue_sources'],
                       'static_animation_path': candidate['path'],
                       'static_source_version': self._static_event_source_version},
                      'static_candidate', frame)
        return new_events

    def _add_npc_signals(self, current, entity, key, frame):
        source, basis = self._source(entity, {}, {})
        source = source or entity
        basis = 'entity_itself' if source is entity else basis
        collision_class = self._int(entity.get('collision_class'), 0)
        if self._number(entity.get('collision_damage')) > 0 and collision_class in (1, 2, 4) and not entity.get('dead'):
            self._add(current, 'contact_damage', entity, source, basis,
                      {'collision_damage': entity.get('collision_damage'),
                       'collision_class': collision_class,
                       'state': entity.get('state'), 'state_frame': entity.get('state_frame')},
                      'observed_property', frame)
        projectile_delay = self._number(entity.get('projectile_delay'))
        if projectile_delay > 0:
            self._add(current, 'pending_projectile_timer', entity, source, basis,
                      {'projectile_delay': projectile_delay,
                       'projectile_cooldown': entity.get('projectile_cooldown'),
                       'animation': entity.get('animation'), 'state': entity.get('state'),
                       'i1': entity.get('i1'), 'i2': entity.get('i2'),
                       'v1': entity.get('v1'), 'v2': entity.get('v2'),
                       'target_position': entity.get('target_position')},
                      'timer_candidate', frame)
        animation = str(entity.get('animation') or '')
        family = self._animation_mechanism(animation)
        if family is None:
            return
        mechanism = 'attack_animation' if family != 'unclassified_npc_action' else family
        if family == 'unclassified_npc_action':
            self._unknown_animations.add((key, animation))
        self._add(current, mechanism, entity, source, basis,
                  {'animation': animation, 'animation_family': family,
                   'animation_frame': entity.get('animation_frame'),
                   'state': entity.get('state'), 'state_frame': entity.get('state_frame'),
                   'projectile_delay': entity.get('projectile_delay'),
                   'projectile_cooldown': entity.get('projectile_cooldown'),
                   'i1': entity.get('i1'), 'i2': entity.get('i2'),
                   'v1': entity.get('v1'), 'v2': entity.get('v2'),
                   'target_position': entity.get('target_position')},
                  'animation_heuristic' if mechanism == 'attack_animation' else 'unclassified', frame)

    def _add(self, current, mechanism, entity, source, source_basis, evidence, confidence, frame):
        obj = self._descriptor(entity)
        source_data = self._descriptor(source) if source else None
        animation_key = (
            (evidence.get('animation'), evidence.get('event_name'), evidence.get('static_event_frame'),
             evidence.get('trigger_index'), evidence.get('animation_frame'))
            if mechanism == 'static_animation_event_candidate' else
            evidence.get('animation') if mechanism in ('attack_animation', 'unclassified_npc_action') else None
        )
        object_key = (obj.get('address'), obj.get('seed'), obj['key'], mechanism, animation_key)
        event_key = '|'.join(str(part) for part in object_key)
        current[event_key] = {
            'event_key': event_key,
            'mechanism': mechanism,
            'mechanism_definition': MECHANISM_CATALOG[mechanism],
            'confidence': confidence or MECHANISM_CATALOG[mechanism]['confidence'],
            'source_basis': source_basis,
            'source': source_data,
            'object': obj,
            'evidence': evidence,
            'first_frame': self._active.get(event_key, {}).get('first_frame', frame),
            'last_frame': frame,
        }

    def _descriptor(self, entity):
        if entity is None:
            return None
        typ = self._int(entity.get('type'), -1)
        variant = self._int(entity.get('variant'), 0)
        subtype = self._int(entity.get('subtype'), 0) if entity.get('subtype') is not None else None
        identity = entity.get('npc_identity') if isinstance(entity.get('npc_identity'), dict) else {}
        key = identity.get('key') or f'{typ}.{variant}.{subtype if subtype is not None else "*"}'
        catalog = self._catalog.get(key) or {}
        static_candidate, _, _ = self._static_catalog.resolve(self._static_mechanism_candidates, key)
        static_candidate = static_candidate or {}
        catalog = {**catalog, **identity}
        return {
            'key': key,
            'profile_key': self._profile_key(entity, key),
            'type_name': identity.get('type_name'),
            'name_zh': (identity.get('name_zh') or catalog.get('name_zh') or
                        static_candidate.get('name_zh')),
            'display_name': (identity.get('display_name') or static_candidate.get('display_name') or
                             catalog.get('name_zh') or key),
            'category': identity.get('category') or catalog.get('category') or static_candidate.get('category'),
            'role': (catalog.get('role') or static_candidate.get('role') or self._role(entity, key))
                    if typ >= NPC_MIN else 'attack_object',
            'type': typ, 'variant': variant, 'subtype': subtype,
            'champion_color': self._int(entity.get('champion_color'), -1)
                              if typ >= NPC_MIN and entity.get('champion_color') is not None else None,
            'champion_color_name': self._champion_color_names.get(self._int(entity.get('champion_color'), -1))
                                   if typ >= NPC_MIN and entity.get('champion_color') is not None else None,
            'is_champion': self._int(entity.get('champion_color'), -1) >= 0
                           if typ >= NPC_MIN and entity.get('champion_color') is not None else None,
            'is_boss': bool(entity.get('is_boss')) if entity.get('is_boss') is not None else None,
            'address': entity.get('address'), 'seed': entity.get('seed'),
            'animation': entity.get('animation'),
            'position': [entity.get('x'), entity.get('y')],
            'velocity': [entity.get('vx'), entity.get('vy')],
            'radius': entity.get('radius'),
        }

    def _source(self, entity, by_address, entity_type_names):
        typ = self._int(entity.get('type'), -1)
        if NPC_MIN <= typ <= NPC_MAX:
            return entity, 'entity_itself'
        seen = set()
        todo = [(entity, 'entity_link')]
        while todo:
            current, basis = todo.pop(0)
            address = current.get('address')
            if address in seen:
                continue
            seen.add(address)
            current_type = self._int(current.get('type'), -1)
            if NPC_MIN <= current_type <= NPC_MAX and not self._friendly(current, by_address):
                return current, basis
            familiar = current.get('familiar') or {}
            for link, link_basis in ((current.get('spawner'), 'spawner'), (current.get('parent'), 'parent'),
                                     (current.get('owner'), 'owner'), (familiar.get('owner'), 'familiar_owner')):
                if isinstance(link, dict):
                    todo.append((link, link_basis))
                elif link is not None and link in by_address:
                    todo.append((by_address[link], link_basis))
        spawner_type = self._int(entity.get('spawner_type'), -1)
        if NPC_MIN <= spawner_type <= NPC_MAX:
            variant = self._int(entity.get('spawner_variant'), 0)
            key = f'{spawner_type}.{variant}.*'
            return {'type': spawner_type, 'variant': variant, 'subtype': None,
                    'npc_identity': {'key': key, 'type_name': entity_type_names.get(spawner_type)}}, 'spawner_type_fields'
        return None, 'unattributed'

    def _spawn_source(self, entity, by_address):
        todo = [(entity, 'entity_itself')]
        seen = set()
        fallback_source = None
        while todo:
            current, basis = todo.pop(0)
            address = current.get('address')
            if address in seen:
                continue
            seen.add(address)
            current_type = self._int(current.get('type'), -1)
            if current is not entity and NPC_MIN <= current_type <= NPC_MAX and not self._friendly(current, by_address):
                return current, basis
            spawner_type = self._int(current.get('spawner_type'), -1)
            if fallback_source is None and NPC_MIN <= spawner_type <= NPC_MAX:
                variant = self._int(current.get('spawner_variant'), 0)
                key = f'{spawner_type}.{variant}.*'
                fallback_source = ({'type': spawner_type, 'variant': variant, 'subtype': None,
                                   'npc_identity': {'key': key}}, 'spawner_type_fields')
            familiar = current.get('familiar') or {}
            for link, link_basis in ((current.get('spawner'), 'spawner'), (current.get('parent'), 'parent'),
                                     (current.get('owner'), 'owner'), (familiar.get('owner'), 'familiar_owner')):
                source = link if isinstance(link, dict) else by_address.get(link)
                if source:
                    todo.append((source, link_basis))
        if fallback_source:
            return fallback_source
        return None, 'unattributed'

    @staticmethod
    def _effect_mechanism(entity, effect_variant_names):
        name = effect_variant_names.get(entity.get('variant'), '')
        if AttackMechanismDetector._number(entity.get('collision_damage')) > 0:
            return 'attack_effect'
        if name in ATTACK_EFFECTS or name.startswith(ATTACK_EFFECT_PREFIXES):
            return 'attack_effect'
        return 'unknown_effect_emission'

    @staticmethod
    def _object_evidence(entity, mechanism, projectile_flags, effect_variant_names):
        evidence = {'collision_damage': entity.get('collision_damage'),
                    'collision_class': entity.get('collision_class'),
                    'state': entity.get('state'), 'state_frame': entity.get('state_frame'),
                    'animation': entity.get('animation'), 'animation_frame': entity.get('animation_frame'),
                    'velocity': [entity.get('vx'), entity.get('vy')]}
        if mechanism == 'projectile_emission':
            flags = int((entity.get('projectile') or {}).get('flags', 0) or 0)
            evidence['projectile_flags_raw'] = flags
            active_flags = [name for name, value in projectile_flags.items()
                            if isinstance(value, int) and value > 0 and flags & value == value]
            evidence['projectile_flags'] = active_flags
            evidence['modifiers'] = [name for name, values in PROJECTILE_MODIFIERS.items()
                                     if any(flag in active_flags for flag in values)]
            evidence['height'] = (entity.get('projectile') or {}).get('height')
        if mechanism == 'tear_emission':
            evidence['tear'] = {key: (entity.get('tear') or {}).get(key)
                                for key in ('height', 'fall_speed', 'fall_accel', 'range', 'flags')}
        if mechanism == 'bomb_emission':
            evidence['countdown'] = (entity.get('bomb') or {}).get('countdown')
            evidence['explosion_radius'] = (entity.get('bomb') or {}).get('explosion_radius')
        if mechanism == 'laser_emission':
            laser = entity.get('laser') or {}
            evidence['laser'] = {key: laser.get(key) for key in
                                 ('timeout', 'angle', 'endpoint', 'max_distance', 'is_circle', 'radius',
                                  'radius_expansion', 'scale')}
            evidence['laser']['sample_count'] = len(laser.get('samples') or [])
        if mechanism == 'knife_emission':
            evidence['knife'] = dict(entity.get('knife') or {})
        if entity.get('type') == 1000:
            evidence['effect_variant_name'] = effect_variant_names.get(entity.get('variant'))
        return evidence

    @staticmethod
    def _animation_mechanism(animation):
        text = animation.casefold()
        if not text or any(text.startswith(prefix) for prefix in NON_ATTACK_ANIMATIONS):
            return None
        for family, tokens in ANIMATION_CUES:
            if any(token in text for token in tokens):
                return family
        return 'unclassified_npc_action'

    @staticmethod
    def _friendly(entity, by_address):
        seen = set()
        todo = [entity]
        unresolved_familiar = False
        hostile_npc_seen = False
        while todo:
            current = todo.pop()
            address = current.get('address')
            if address in seen:
                continue
            seen.add(address)
            typ = current.get('type', -1)
            if typ == 1 or int(current.get('flags', 0) or 0) & (FRIENDLY | CHARMED):
                return True
            if NPC_MIN <= typ <= NPC_MAX:
                hostile_npc_seen = True
            if NPC_MIN <= current.get('spawner_type', -1) <= NPC_MAX:
                hostile_npc_seen = True
            familiar = current.get('familiar') or {}
            familiar_owner = familiar.get('owner', current.get('owner'))
            if typ == 3 and not (isinstance(familiar_owner, dict) or familiar_owner in by_address):
                unresolved_familiar = True
            for link in (current.get('parent'), current.get('spawner'), current.get('owner'), familiar.get('owner')):
                if isinstance(link, dict):
                    todo.append(link)
                elif link is not None and link in by_address:
                    todo.append(by_address[link])
        if hostile_npc_seen:
            return False
        return unresolved_familiar

    @staticmethod
    def _monster_key(entity):
        identity = entity.get('npc_identity') or {}
        return identity.get('key') or f"{entity.get('type', -1)}.{entity.get('variant', 0)}.{entity.get('subtype', 0)}"

    def _profile_key(self, entity, key=None):
        key = key or self._monster_key(entity)
        raw_champion = entity.get('champion_color')
        champion = self._int(raw_champion, -1) if raw_champion is not None else None
        color = 'unknown' if champion is None else 'none' if champion == -1 else self._champion_color_names.get(champion, f'unknown:{champion}')
        boss = 'unknown' if entity.get('is_boss') is None else str(int(bool(entity.get('is_boss'))))
        return f'{key}|champion={color}|boss={boss}'

    def _role(self, entity, key):
        catalog = self._catalog.get(key) or {}
        if catalog.get('role'):
            return catalog['role']
        typ = self._int(entity.get('type'), -1)
        variant = self._int(entity.get('variant'), 0)
        allowed_variants = MINIBOSS_TYPE_VARIANTS.get(typ, set())
        if typ in MINIBOSS_TYPE_VARIANTS and (allowed_variants is None or variant in allowed_variants):
            return 'miniboss'
        if catalog.get('category') == 'boss' or entity.get('is_boss'):
            return 'boss'
        if not catalog:
            return 'unclassified_npc'
        return 'monster'

    @staticmethod
    def _npc_state_token(entity, profile_key):
        return (entity.get('address'), entity.get('seed'), profile_key)

    @staticmethod
    def _int(value, default):
        try:
            return int(value)
        except (TypeError, ValueError):
            return default

    @staticmethod
    def _number(value):
        try:
            return float(value)
        except (TypeError, ValueError):
            return 0.0
