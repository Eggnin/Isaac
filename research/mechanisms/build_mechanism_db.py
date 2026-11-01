#!/usr/bin/env python3
"""Build and verify the J460 monster/mechanism evidence database.

This is an analysis-time tool. The Gamebot runtime does not import this script
or depend on Python.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from collections import Counter
from datetime import date
from pathlib import Path
from typing import Any
from trap_room_catalog import annotate_database


ROOT = Path(__file__).resolve().parents[2]
STATIC_PATH = ROOT / "data/npc/engine_monster_static_mechanism_candidates.json"
EVENT_PATH = ROOT / "data/npc/engine_monster_attack_event_candidates.json"
AUDIT_PATH = (
    ROOT
    / "python/records/research/"
    "attack-reference-runtime-action-links-local-j460-20261026.json"
)
NPC_COVERAGE_PATH = ROOT / "research/npc-coverage-final.json"
RANDOM_COVERAGE_PATH = ROOT / "research/monster-random-coverage-final.json"
ENEMY_COVERAGE_PATH = ROOT / "research/enemy-coverage-current-3.json"
READER_PATH = ROOT / "cpp/src/reader.cpp"
PLANNER_PATH = ROOT / "cpp/src/planner.cpp"
RUNTIME_MANIFEST_PATH = ROOT / "research/runtime-inputs/manifest.json"
TRAINING_BOOT_PATH = (
    ROOT
    / "research/the-browsing-of-isaac/output/recomp/lift/"
    "boot-training-fast/boot.wasm"
)

GAME_SHA256 = "7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F"
GAME_VERSION = "1.9.7.17.J460"


def load_json(path: Path) -> Any:
    with path.open("r", encoding="utf-8") as handle:
        return json.load(handle)


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest().upper()


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def git_head(repo: Path) -> str | None:
    try:
        result = subprocess.run(
            ["git", "-C", str(repo), "rev-parse", "HEAD"],
            check=True,
            capture_output=True,
            text=True,
        )
        return result.stdout.strip()
    except (OSError, subprocess.CalledProcessError):
        return None


def parse_key(key: str) -> dict[str, int]:
    parts = [int(part) for part in key.split(".")]
    if len(parts) != 3:
        raise ValueError(f"invalid NPC key: {key}")
    return {"type": parts[0], "variant": parts[1], "subtype": parts[2]}


def compact_probe(npc_entry: dict[str, Any] | None) -> dict[str, Any] | None:
    if not npc_entry:
        return None
    rooms: dict[str, Any] = {}
    for room_name, room in npc_entry.get("rooms", {}).items():
        evidence = room.get("evidence", {})
        rooms[room_name] = {
            "status": room.get("status"),
            "source": evidence.get("source"),
            "evidence_file": evidence.get("file"),
            "observed_frames": evidence.get("observedFrames"),
            "hazard_kinds": evidence.get("hazardKinds", []),
            "policy_threat_kinds": evidence.get("policyThreatKinds", []),
            "run_directory": evidence.get("runDirectory"),
        }
    return rooms


def compact_random_probe(result: dict[str, Any] | None) -> dict[str, Any] | None:
    if not result:
        return None
    return {
        "outcome": result.get("outcome"),
        "exact_observed": result.get("exactObserved"),
        "spawn_source": result.get("spawnSource"),
        "spawn_command": result.get("spawnNPC"),
        "room": result.get("room"),
        "frames": result.get("frames"),
        "danger_frame_counts": result.get("dangerFrameCounts", {}),
        "decision_threat_counts": result.get("decisionThreatCounts", {}),
        "hit_count": result.get("hitCount"),
        "data_pass": result.get("dataPass"),
        "run_directory": result.get("runDirectory"),
    }


def static_event_records(
    audit_entry: dict[str, Any],
    raw_events: list[dict[str, Any]],
) -> tuple[list[dict[str, Any]], Counter[str]]:
    animation_defs = {
        (item.get("path"), item.get("name")): item
        for item in audit_entry.get("candidate_animations", [])
    }
    enriched = list(audit_entry.get("candidate_events", []))
    enriched_used: set[int] = set()
    records: list[dict[str, Any]] = []
    cue_counts: Counter[str] = Counter()
    for raw in raw_events:
        candidate: dict[str, Any] = {}
        for index, possible in enumerate(enriched):
            if index in enriched_used:
                continue
            if (
                possible.get("path") == raw.get("path")
                and possible.get("animation") == raw.get("animation")
                and possible.get("name") == raw.get("event_name")
                and possible.get("frame") == raw.get("frame")
            ):
                candidate = possible
                enriched_used.add(index)
                break
        cues = raw.get("cues", candidate.get("cues", []))
        for cue in cues:
            cue_counts[cue] += 1
        definition = animation_defs.get(
            (raw.get("path"), raw.get("animation")), {}
        )
        records.append(
            {
                "animation": raw.get("animation"),
                "event_name": raw.get("event_name"),
                "frame": raw.get("frame"),
                "trigger_index": raw.get("trigger_index"),
                "animation_frame_count": definition.get("frame_count"),
                "animation_loop": definition.get("loop"),
                "cues": cues,
                "animation_cues": raw.get("animation_cues", []),
                "cue_sources": raw.get("cue_sources", []),
                "compatible_runtime_mechanisms": candidate.get(
                    "compatible_runtime_mechanisms", []
                ),
                "compatible_runtime_mechanisms_observed": candidate.get(
                    "compatible_runtime_mechanisms_observed", []
                ),
                "animation_observed_in_runtime_profile": candidate.get(
                    "animation_observed_in_runtime_profile"
                ),
                "source_linked_temporal_associations": candidate.get(
                    "source_linked_temporal_associations", []
                ),
                "source_linked_temporal_associations_near_static_event_frame": (
                    candidate.get(
                        "source_linked_temporal_associations_near_static_event_frame",
                        [],
                    )
                ),
                "evidence": candidate.get("evidence", "static_candidate_only"),
                "phase_semantics": {
                    "preparation": "unknown",
                    "warning": "unknown",
                    "execution": "unknown",
                    "active": "unknown",
                    "recovery": "unknown",
                },
            }
        )
    return records, cue_counts


READER_FIELDS = [
    {
        "name": "type",
        "offset": "0x28",
        "kind": "int32",
        "live_external_capture": True,
    },
    {
        "name": "variant",
        "offset": "0x2c",
        "kind": "int32",
        "live_external_capture": True,
    },
    {
        "name": "subtype",
        "offset": "0x30",
        "kind": "int32",
        "live_external_capture": True,
    },
    {
        "name": "animation",
        "offset": "0x7c -> string",
        "kind": "pointer+std::string",
        "live_external_capture": True,
    },
    {
        "name": "animation_frame",
        "offset": "0x88",
        "kind": "float32",
        "live_external_capture": True,
    },
    {
        "name": "position",
        "offset": "0x33c,0x340",
        "kind": "float32[2]",
        "live_external_capture": True,
    },
    {
        "name": "velocity",
        "offset": "0x360,0x364",
        "kind": "float32[2]",
        "live_external_capture": True,
    },
    {
        "name": "target_position",
        "offset": "0x334,0x338",
        "kind": "float32[2]",
        "live_external_capture": True,
    },
    {
        "name": "parent",
        "offset": "0x3bc",
        "kind": "pointer32",
        "live_external_capture": True,
    },
    {
        "name": "target",
        "offset": "0x3c4",
        "kind": "pointer32",
        "live_external_capture": False,
        "verification": "REPENTOGON layout, Python reference, synthetic C++ fixture",
    },
    {
        "name": "spawner",
        "offset": "0x3c8",
        "kind": "pointer32",
        "live_external_capture": True,
    },
    {
        "name": "state",
        "offset": "0xb64",
        "kind": "int32",
        "live_external_capture": True,
    },
    {
        "name": "state_frame",
        "offset": "0x410",
        "kind": "int32",
        "live_external_capture": True,
    },
    {
        "name": "max_hp",
        "offset": "0x384",
        "kind": "float32",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity layout, synthetic C++ fixture",
    },
    {
        "name": "speed_multiplier",
        "offset": "0x39c",
        "kind": "float32",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity layout, synthetic C++ fixture",
    },
    {
        "name": "projectile_cooldown",
        "offset": "0xba0",
        "kind": "int32",
        "live_external_capture": False,
        "verification": (
            "REPENTOGON Entity_NPC layout, lifted J460 attack function, "
            "synthetic C++ fixture"
        ),
    },
    {
        "name": "projectile_delay",
        "offset": "0xba4",
        "kind": "int32",
        "live_external_capture": False,
        "verification": (
            "REPENTOGON Entity_NPC layout, lifted J460 attack function, "
            "synthetic C++ fixture"
        ),
    },
    {
        "name": "ai_v1",
        "offset": "0xbb0,0xbb4",
        "kind": "float32[2]",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "ai_v2",
        "offset": "0xbb8,0xbbc",
        "kind": "float32[2]",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "ai_i1",
        "offset": "0xbc0",
        "kind": "int32",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "ai_i2",
        "offset": "0xbc4",
        "kind": "int32",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "is_boss",
        "offset": "0xc3d",
        "kind": "uint8",
        "live_external_capture": False,
        "verification": "REPENTOGON layout, Python reference, synthetic C++ fixture",
    },
    {
        "name": "shield_strength",
        "offset": "0xc40",
        "kind": "float32",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "champion",
        "offset": "0xc64",
        "kind": "int32",
        "live_external_capture": True,
    },
    {
        "name": "boss_color",
        "offset": "0xc78",
        "kind": "int32",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "boss_status_effect_cooldown",
        "offset": "0x238",
        "kind": "int32",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity layout, synthetic C++ fixture",
    },
    {
        "name": "delirium_boss_type",
        "offset": "0xbc8",
        "kind": "uint32",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "delirium_boss_variant",
        "offset": "0xbcc",
        "kind": "uint32",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "delirium_transformation_timer",
        "offset": "0xbd0",
        "kind": "uint16",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "delirium_remaining_attacks",
        "offset": "0xbd2",
        "kind": "uint8",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "delirium_state",
        "offset": "0xbd3",
        "kind": "uint8",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "delirium_attack_id",
        "offset": "0xbd8",
        "kind": "uint32",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "delirium_attack_id_low24",
        "offset": "0xbd8 & 0xffffff",
        "kind": "uint32",
        "live_external_capture": False,
        "verification": "J460 Dispatcher decompilation mask at 0x004a83d9",
    },
    {
        "name": "delirium_attack_angle",
        "offset": "0xbdc",
        "kind": "uint8",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, synthetic C++ fixture",
    },
    {
        "name": "delirium_cycle_id",
        "offset": "0xbe0..0xbe7",
        "kind": "packed uint64",
        "live_external_capture": False,
        "verification": "REPENTOGON Entity_NPC layout, 0x004a6d6e/0x004a7722 packed access, synthetic C++ fixture",
    },
]


SPECIFIC_RULES = [
    {
        "keys": ["212.3.0"],
        "kind": "laser-warning",
        "condition": "AttackDown/Up/Left/Right animation maps to a directional beam.",
        "source": "cpp/src/planner.cpp:158",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["203.0.0"],
        "kind": "laser-warning",
        "condition": "ShootDown/Up/Left/Right animation maps to a directional beam.",
        "source": "cpp/src/planner.cpp:169",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["60.0.0", "60.1.0"],
        "kind": "laser-warning",
        "condition": "Shoot/Rotate animation supplies a delay and an aim lock.",
        "source": "cpp/src/planner.cpp:180",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["39.0.0"],
        "kind": "vis-windup",
        "condition": "State 9 with StateFrame in the calibrated 15..60 window.",
        "source": "cpp/src/planner.cpp:235",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["101.0.0"],
        "kind": "stomp",
        "condition": "StompArm/StompLeg during animation frames 0..13.",
        "source": "cpp/src/planner.cpp:242",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["20.0.0"],
        "kind": "monstro-landing",
        "condition": "Walk/JumpDown while collision is disabled, projected to landing.",
        "source": "cpp/src/planner.cpp:245",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["63.0.0", "99.0.0"],
        "kind": "charge",
        "condition": "State 8 with an attack/charge/slide/roll animation.",
        "source": "cpp/src/planner.cpp:254",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["265.0.0"],
        "kind": "roll",
        "condition": "State 8 and Roll* animation.",
        "source": "cpp/src/planner.cpp:266",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["265.0.0"],
        "kind": "cage-landing-creep",
        "condition": "State 7 and Landing animation.",
        "source": "cpp/src/planner.cpp:275",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["265.0.0"],
        "kind": "cage-rock-wave",
        "condition": "StateFrame projects an expanding ring from the landing target.",
        "source": "cpp/src/planner.cpp:279",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["68.1.0"],
        "kind": "laser-warning",
        "condition": "State 9/10/13 with Attack* animation selects horizontal or vertical beams.",
        "source": "cpp/src/planner.cpp:287",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["302.10.0"],
        "kind": "projectile-burst",
        "condition": "Activation transition projects the first four-way volley.",
        "source": "cpp/src/planner.cpp:207",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["25.0.0", "250.0.0", "292.0.0", "295.0.0"],
        "kind": "explosive-npc",
        "condition": "Known explosive NPC or champion color 5 reserves an 80-radius blast.",
        "source": "cpp/src/planner.cpp:32",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
    {
        "keys": ["55.1.0", "55.2.0", "16.2.0"],
        "kind": "explosive-npc",
        "condition": "Known self-detonating NPC reserves an 80-radius blast.",
        "source": "cpp/src/planner.cpp:32",
        "offline_test": True,
        "live_external_pre_attack_validated": False,
    },
]


CALL_GRAPH = {
    "evidence": "direct rel32/call-slot census over the local J460 PE index",
    "nodes": [
        {
            "id": "entity_npc_update",
            "symbol": "Entity_NPC::Update",
            "va": None,
            "resolution": "public vtable signature; local address not assigned here",
        },
        {
            "id": "get_player_target",
            "symbol": "Entity_NPC::GetPlayerTarget",
            "va": "0x006be840",
        },
        {
            "id": "fire_projectiles",
            "symbol": "Entity_NPC::FireProjectiles",
            "va": "0x006cb2e0",
        },
        {
            "id": "fire_boss_projectiles",
            "symbol": "Entity_NPC::FireBossProjectiles",
            "va": "0x006ccdd0",
        },
        {
            "id": "hornfel_update_ai",
            "symbol": "Entity_NPC::Hornfel_UpdateAI",
            "va": "0x004b92e0",
        },
        {
            "id": "genrand_int32",
            "symbol": "Isaac::genrand_int32",
            "va": "0x006eef60",
        },
        {
            "id": "spawn_relay",
            "symbol": "entity spawn relay",
            "va": "0x00428b20",
        },
        {
            "id": "entity_create",
            "symbol": "entity create dispatcher",
            "va": "0x006fe410",
        },
    ],
    "edges": [
        {
            "from": "fire_projectiles",
            "to": "spawn_relay",
            "call_sites_in_callee": 32,
        },
        {
            "from": "fire_projectiles",
            "to": "genrand_int32",
            "call_sites_in_callee": 35,
        },
        {
            "from": "fire_boss_projectiles",
            "to": "entity_create",
            "call_sites_in_callee": 1,
        },
        {
            "from": "hornfel_update_ai",
            "to": "fire_boss_projectiles",
            "call_sites_in_callee": 1,
            "call_site": "0x004b9a3e",
        },
        {
            "from": "hornfel_update_ai",
            "to": "spawn_relay",
            "call_sites_in_callee": 7,
        },
        {
            "from": "spawn_relay",
            "to": "entity_create",
            "call_sites_in_callee": 1,
            "call_site": "0x00428b3d",
        },
    ],
    "function_reuse": {
        "fire_projectiles": {
            "direct_caller_functions": 150,
            "direct_call_sites": 294,
        },
        "fire_boss_projectiles": {
            "direct_caller_functions": 61,
            "direct_call_sites": 86,
        },
        "spawn_relay": {
            "direct_caller_functions": 448,
            "direct_call_sites": 1807,
            "scope_warning": "shared by non-attack systems as well as attacks",
        },
    },
}


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--output",
        type=Path,
        default=ROOT / "data/mechanisms/isaac_j460_mechanism_db.json",
    )
    parser.add_argument(
        "--check-output",
        type=Path,
        default=ROOT / "validation/mechanism-db-check.json",
    )
    parser.add_argument("--generated-on", default=date.today().isoformat())
    args = parser.parse_args()

    static = load_json(STATIC_PATH)
    events = load_json(EVENT_PATH)
    audit = load_json(AUDIT_PATH)
    npc_coverage = load_json(NPC_COVERAGE_PATH)
    random_coverage = load_json(RANDOM_COVERAGE_PATH)
    enemy_coverage = load_json(ENEMY_COVERAGE_PATH)
    runtime_manifest = load_json(RUNTIME_MANIFEST_PATH)

    static_by_key = {entry["key"]: entry for entry in static["entries"]}
    audit_by_key = {entry["key"]: entry for entry in audit["entries"]}
    raw_events_by_key: dict[str, list[dict[str, Any]]] = {}
    for event in events["events"]:
        raw_events_by_key.setdefault(event["key"], []).append(event)
    npc_by_key = {
        f"{entry['key']}": entry for entry in npc_coverage.get("entries", [])
    }
    random_by_key = {
        entry["id"]: entry
        for entry in random_coverage.get("results", [])
        if entry.get("id")
    }

    if set(static_by_key) != set(audit_by_key):
        missing_audit = sorted(set(static_by_key) - set(audit_by_key))
        missing_static = sorted(set(audit_by_key) - set(static_by_key))
        raise RuntimeError(
            f"source key mismatch; missing_audit={missing_audit[:5]} "
            f"missing_static={missing_static[:5]}"
        )

    rules_by_key: dict[str, list[dict[str, Any]]] = {}
    for rule in SPECIFIC_RULES:
        for key in rule["keys"]:
            rules_by_key.setdefault(key, []).append(rule)

    entries: list[dict[str, Any]] = []
    static_event_total = 0
    static_cue_totals: Counter[str] = Counter()
    for key in sorted(
        static_by_key,
        key=lambda value: (
            parse_key(value)["type"],
            parse_key(value)["variant"],
            parse_key(value)["subtype"],
        ),
    ):
        source = static_by_key[key]
        audit_entry = audit_by_key[key]
        identity_probe = npc_by_key.get(key)
        random_probe = random_by_key.get(key)
        candidate_events, cue_counts = static_event_records(
            audit_entry, raw_events_by_key.get(key, [])
        )
        static_event_total += len(candidate_events)
        static_cue_totals.update(cue_counts)

        runtime_mechanisms = audit_entry.get("runtime_mechanisms", {})
        runtime_actions = audit_entry.get("runtime_actions", [])
        associations = audit_entry.get("runtime_action_mechanism_associations", [])
        runtime_attack_object_mechanisms = [
            name
            for name in runtime_mechanisms
            if name
            in {
                "attack_effect",
                "bomb_emission",
                "laser_emission",
                "projectile_emission",
            }
        ]
        entry_rules = rules_by_key.get(key, [])

        entries.append(
            {
                "id": {"key": key, **parse_key(key)},
                "identity": {
                    "display_name": source.get("display_name"),
                    "name_zh": source.get("name_zh"),
                    "entity_config_names": source.get("entity_config_names", []),
                    "category": source.get("category"),
                    "role": source.get("role"),
                    "roster_scope": source.get("roster_scope"),
                    "entity_definition_status": source.get(
                        "entity_definition_status"
                    ),
                },
                "static_entity_data": source.get("static_entity_data", []),
                "contact_damage_candidate": source.get("contact_damage", {}),
                "static_attack_candidates": candidate_events,
                "static_candidate_cue_counts": dict(sorted(cue_counts.items())),
                "runtime_observation": {
                    "profile_observed_in_callback_index": audit_entry.get(
                        "runtime_profile_observed"
                    ),
                    "unique_type_variant_fallback_profiles": audit_entry.get(
                        "runtime_profiles_unique_type_variant_fallback", []
                    ),
                    "npc_update_frames": audit_entry.get(
                        "runtime_observed_npc_update_frames", 0
                    ),
                    "runs": audit_entry.get("runtime_runs_observed", 0),
                    "actions": runtime_actions,
                    "mechanisms": runtime_mechanisms,
                    "attack_object_mechanisms": runtime_attack_object_mechanisms,
                    "action_object_associations": associations,
                    "identity_probe": {
                        "environment": "recompiled original J460 engine",
                        "live_external_process": False,
                        "rooms": compact_probe(identity_probe),
                    },
                    "random_combat_probe": {
                        "environment": "recompiled original J460 engine",
                        "live_external_process": False,
                        "result": compact_random_probe(random_probe),
                    },
                },
                "external_memory_support": {
                    "identity": {
                        "readable": True,
                        "evidence": "Type/Variant/SubType at 0x28/0x2c/0x30",
                    },
                    "state_and_animation": {
                        "readable": True,
                        "fields": [
                            "state",
                            "state_frame",
                            "animation",
                            "animation_frame",
                        ],
                    },
                    "npc_projectile_timers": {
                        "readable": True,
                        "fields": ["projectile_cooldown", "projectile_delay"],
                        "semantics": (
                            "shared scheduler fields; per-enemy meaning still requires "
                            "state/action correlation"
                        ),
                        "live_external_capture": False,
                    },
                    "attack_objects": {
                        "readable": True,
                        "types": {
                            "projectile": 9,
                            "tear": 2,
                            "laser": 7,
                            "bomb": 4,
                            "effect": 1000,
                        },
                    },
                    "specific_pre_attack_rules": entry_rules,
                    "pre_attack_general_candidate": bool(
                        audit_entry.get("runtime_profile_observed")
                        and (
                            runtime_actions
                            or "projectile_emission" in runtime_mechanisms
                        )
                    ),
                    "pre_attack_live_external_validated": False,
                },
                "evidence": {
                    "resource_definition": bool(source.get("static_entity_data")),
                    "static_animation_event_candidate": bool(candidate_events),
                    "runtime_identity_probe": bool(identity_probe),
                    "runtime_callback_index": bool(audit_entry.get("runtime_profile_observed")),
                    "runtime_attack_object_observed": bool(
                        runtime_attack_object_mechanisms
                    ),
                    "runtime_action_object_cooccurrence": bool(associations),
                    "specific_code_rule": bool(entry_rules),
                },
            }
        )

    runtime_mechanism_entries = sum(
        bool(entry["runtime_observation"]["mechanisms"]) for entry in entries
    )
    runtime_attack_object_entries = sum(
        bool(entry["runtime_observation"]["attack_object_mechanisms"])
        for entry in entries
    )
    fallback_mechanism_profiles = sum(
        sum(
            bool(profile.get("runtime_mechanisms"))
            for profile in entry["runtime_observation"][
                "unique_type_variant_fallback_profiles"
            ]
        )
        for entry in entries
    )
    fallback_attack_object_profiles = sum(
        sum(
            any(
                name
                in {
                    "attack_effect",
                    "bomb_emission",
                    "laser_emission",
                    "projectile_emission",
                }
                for name in profile.get("runtime_mechanisms", {})
            )
            for profile in entry["runtime_observation"][
                "unique_type_variant_fallback_profiles"
            ]
        )
        for entry in entries
    )
    identity_probe_entries = sum(
        bool(entry["runtime_observation"]["identity_probe"]["rooms"])
        for entry in entries
    )
    random_probe_entries = sum(
        bool(entry["runtime_observation"]["random_combat_probe"]["result"])
        for entry in entries
    )
    unmatched_random_targets = [
        {
            "id": result.get("id"),
            "name": result.get("name"),
            "outcome": result.get("outcome"),
            "reason": "runtime identity has no exact local EntityConfig",
            "run_directory": result.get("runDirectory"),
        }
        for result in random_coverage.get("results", [])
        if result.get("id") not in static_by_key
    ]
    unique_idd = len({entry["id"]["key"] for entry in entries})

    source_files = {
        rel(path): {"sha256": sha256(path), "bytes": path.stat().st_size}
        for path in [
            STATIC_PATH,
            EVENT_PATH,
            AUDIT_PATH,
            NPC_COVERAGE_PATH,
            RANDOM_COVERAGE_PATH,
            ENEMY_COVERAGE_PATH,
            READER_PATH,
            PLANNER_PATH,
            RUNTIME_MANIFEST_PATH,
        ]
    }
    if TRAINING_BOOT_PATH.exists():
        source_files[rel(TRAINING_BOOT_PATH)] = {
            "sha256": sha256(TRAINING_BOOT_PATH),
            "bytes": TRAINING_BOOT_PATH.stat().st_size,
        }

    database = {
        "format": "isaac-monster-mechanism-db-v1",
        "generated_on": args.generated_on,
        "scope": {
            "game_version": GAME_VERSION,
            "game_sha256": GAME_SHA256,
            "roster_entries": static["coverage"]["roster_entries"],
            "entity_catalog_entries": static["coverage"]["entity_catalog_entries"],
            "supplemental_unlisted_npc_entries": static["coverage"][
                "supplemental_unlisted_npc_entries"
            ],
            "active_mods_at_analysis": False,
            "installed_mod_enemy_definition_additions": 0,
            "mod_note": (
                "Current options.ini has EnableMods=0. Installed mods were inspected; "
                "only Skill Issues adds non-NPC warning effects (Type 1000 variants "
                "8745..8752), not monster identities."
            ),
        },
        "training_environment": {
            "kind": "recompiled original J460 engine in WebAssembly",
            "not_a_separate_modified_game_exe": True,
            "upstream_commit": git_head(ROOT / "research/the-browsing-of-isaac"),
            "runtime_manifest": rel(RUNTIME_MANIFEST_PATH),
            "runtime_inputs_ready": runtime_manifest.get("readyForParentBuild"),
            "training_boot_wasm": (
                {
                    "path": rel(TRAINING_BOOT_PATH),
                    **source_files[rel(TRAINING_BOOT_PATH)],
                }
                if rel(TRAINING_BOOT_PATH) in source_files
                else None
            ),
        },
        "evidence_definitions": {
            "resource_definition": "Parsed local J460 EntityConfig or ANM2 resource.",
            "static_call_relation": "Direct call or data-flow relation in the local PE.",
            "runtime_identity_probe": (
                "Exact NPC identity observed in the recompiled original engine."
            ),
            "runtime_callback_index": (
                "NPC update/action or attack-object evidence in the historical "
                "engine callback index."
            ),
            "source_linked_cooccurrence": (
                "Spawner/Parent pointer and a 0/1-frame action/object relation; "
                "correlation only."
            ),
            "offline_code_test": (
                "Native C++ unit/regression test over synthetic state."
            ),
            "external_live_read": (
                "ReadProcessMemory observation from the running game process."
            ),
            "pre_attack_live_external_validated": (
                "Live external observation proves the warning before the dangerous "
                "entity or hit exists."
            ),
        },
        "capability_levels": {
            "1_attack_logic_exists": "Static code or resource evidence exists.",
            "2_enemy_possesses_attack": (
                "Runtime action/object evidence exists for the exact identity."
            ),
            "3_current_attack_state_readable": (
                "External fields expose state/animation/timers, but per-enemy "
                "semantics must be confirmed."
            ),
            "4_pre_attack_identified": (
                "A specific state/timer rule identifies windup before danger."
            ),
            "5_danger_region_and_reaction_time": (
                "The rule computes geometry and timing and has matching runtime "
                "validation."
            ),
        },
        "external_memory_contract": {
            "reader_source": rel(READER_PATH),
            "version_gate": GAME_SHA256,
            "fields": READER_FIELDS,
            "entity_partitions": [
                "Room+0x1218+0x20",
                "Room+0x1218+0x30",
                "Room+0x1218+0x40",
            ],
            "limitations": [
                "State and animation values are readable but their attack meaning is per-enemy.",
                "ProjectileDelay is a shared NPC scheduler field, not proof of a specific attack.",
                "A pre-attack rule can be verified offline without proving live external timing.",
            ],
        },
        "call_graph": CALL_GRAPH,
        "boss_room_probes": enemy_coverage.get("results", []),
        "specific_pre_attack_rules": SPECIFIC_RULES,
        "entries": entries,
        "summary": {
            "entries": len(entries),
            "unique_ids": unique_idd,
            "identity_probe_entries": identity_probe_entries,
            "random_combat_probe_entries": random_probe_entries,
            "unmatched_random_combat_targets": unmatched_random_targets,
            "runtime_callback_profiles": audit["summary"][
                "runtime_profiles_matching_entity_catalog_including_unique_type_variant"
            ],
            "runtime_mechanism_entries_exact_identity": runtime_mechanism_entries,
            "runtime_mechanism_profiles_unique_type_variant_fallback": (
                fallback_mechanism_profiles
            ),
            "runtime_mechanism_profiles_total": (
                runtime_mechanism_entries + fallback_mechanism_profiles
            ),
            "runtime_attack_object_entries_exact_identity": (
                runtime_attack_object_entries
            ),
            "runtime_attack_object_profiles_unique_type_variant_fallback": (
                fallback_attack_object_profiles
            ),
            "runtime_attack_object_profiles_total": (
                runtime_attack_object_entries + fallback_attack_object_profiles
            ),
            "static_event_candidates": static_event_total,
            "static_event_candidates_with_cues": sum(
                value
                for cue, value in static_cue_totals.items()
                if cue != "unclassified"
            ),
            "static_event_candidates_with_event_or_animation_cues": sum(
                "unclassified" not in event.get("cue_sources", [])
                for entry in entries
                for event in entry["static_attack_candidates"]
            ),
            "static_event_candidates_unclassified": sum(
                event.get("cue_sources", []) == ["unclassified"]
                for entry in entries
                for event in entry["static_attack_candidates"]
            ),
            "static_event_cues": dict(sorted(static_cue_totals.items())),
            "entries_with_specific_pre_attack_rules": sum(
                bool(entry["external_memory_support"]["specific_pre_attack_rules"])
                for entry in entries
            ),
            "pre_attack_live_external_validated_entries": 0,
            "source_files": source_files,
        },
    }

    expected_event_count = events["candidate_event_count"]
    annotate_database(database)
    expected_runtime_profiles = audit["summary"][
        "runtime_profiles_matching_entity_catalog_including_unique_type_variant"
    ]
    expected_mechanisms = audit["summary"][
        "runtime_profiles_with_mechanism_evidence_including_unique_type_variant"
    ]
    expected_objects = audit["summary"][
        "runtime_profiles_with_attack_objects_including_unique_type_variant"
    ]
    checks = [
        {
            "name": "entry count",
            "expected": static["coverage"]["entity_catalog_entries"],
            "actual": len(entries),
        },
        {"name": "unique IDs", "expected": 653, "actual": unique_idd},
        {
            "name": "identity probe entries",
            "expected": 653,
            "actual": identity_probe_entries,
        },
        {
            "name": "random combat probes",
            "expected": random_coverage["summary"]["dataPassed"],
            "actual": random_probe_entries + len(unmatched_random_targets),
        },
        {
            "name": "runtime callback profiles",
            "expected": expected_runtime_profiles,
            "actual": audit["summary"][
                "runtime_profiles_matching_entity_catalog_including_unique_type_variant"
            ],
        },
        {
            "name": "runtime mechanism profiles",
            "expected": expected_mechanisms,
            "actual": runtime_mechanism_entries + fallback_mechanism_profiles,
        },
        {
            "name": "runtime attack-object profiles",
            "expected": expected_objects,
            "actual": runtime_attack_object_entries
            + fallback_attack_object_profiles,
        },
        {
            "name": "static event candidates",
            "expected": expected_event_count,
            "actual": static_event_total,
        },
        {
            "name": "reader exposes projectile delay",
            "expected": True,
            "actual": "projectile_delay" in READER_PATH.read_text(encoding="utf-8"),
        },
        {
            "name": "reader exposes target pointer",
            "expected": True,
            "actual": "e.target=unpack<uint32_t>(raw,0x3c4)" in READER_PATH.read_text(
                encoding="utf-8"
            ),
        },
    ]
    for check in checks:
        check["pass"] = check["expected"] == check["actual"]
    failed = [check for check in checks if not check["pass"]]
    if failed:
        raise RuntimeError(f"mechanism DB checks failed: {failed}")

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.check_output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("w", encoding="utf-8", newline="\n") as handle:
        json.dump(database, handle, ensure_ascii=False, indent=2)
        handle.write("\n")
    validation = {
        "format": "isaac-monster-mechanism-db-validation-v1",
        "database": rel(args.output),
        "database_sha256": sha256(args.output),
        "database_bytes": args.output.stat().st_size,
        "pass": True,
        "checks": checks,
        "summary": database["summary"],
    }
    with args.check_output.open("w", encoding="utf-8", newline="\n") as handle:
        json.dump(validation, handle, ensure_ascii=False, indent=2)
        handle.write("\n")
    print(
        json.dumps(
            {
                "database": rel(args.output),
                "sha256": validation["database_sha256"],
                "bytes": validation["database_bytes"],
                "pass": True,
            },
            ensure_ascii=False,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
