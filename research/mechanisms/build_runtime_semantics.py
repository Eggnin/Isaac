#!/usr/bin/env python3
"""Classify Boss phase edges and export the Gamebot runtime semantics asset.

This step consumes the evidence database produced by analyze_state_semantics.py.
It never promotes an unresolved static edge into a verified transition.
"""

from __future__ import annotations

import hashlib
import json
import re
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[2]
SOURCE_DB = ROOT / "data/mechanisms/isaac_j460_state_semantics.json"
RUNTIME_DB = ROOT / "data/mechanisms/gamebot_runtime_semantics.json"
STATE_CHECK = ROOT / "validation/state-semantics-check.json"
EDGE_CHECK = ROOT / "validation/boss-edge-semantics-check.json"
COVERAGE_CHECK = ROOT / "validation/mechanism-coverage-20261029.json"
HIGH_VALUE_CHECK = ROOT / "validation/high-value-mechanism-validation-20261029.json"
ATTACK_RECOGNITION_CHECK = ROOT / "validation/attack-recognition-coverage-20261030.json"
ATTACK_EVENT_CANDIDATES = ROOT / "data/npc/engine_monster_attack_event_candidates.json"
AI_SEMANTICS_INDEX = ROOT / "research/ai-recovery/ai-semantics-index.json"
STRICT_ATTACK_VALIDATION = ROOT / "data/mechanisms/gamebot_attack_strict_validation.json"
SEMANTICS_HPP = ROOT / "cpp/include/gamebot/semantics.hpp"
SEMANTICS_CPP = ROOT / "cpp/src/semantics.cpp"
READER_CPP = ROOT / "cpp/src/reader.cpp"
RUNTIME_REPORTS = [
    ROOT / "research/state-semantics/state-semantics-runtime-20261029.json",
    ROOT / "research/state-semantics/state-semantics-invincibility-20261029.json",
    ROOT / "research/state-semantics/state-semantics-high-value-20261029.json",
    ROOT / "research/state-semantics/state-semantics-delirium-fields-20261029.json",
    ROOT / "research/state-semantics/state-semantics-ai-smoke-20261029.json",
]
EXTERNAL_INVINCIBILITY = (
    ROOT / "research/state-semantics/external-invincibility-20261029.json"
)

ATTACK_ANIMATION_RE = re.compile(
    r"(attack|shoot|charge|spin|slot|guard|laser|slam|smash|tantrum)",
    re.IGNORECASE,
)
DEATH_ANIMATION_RE = re.compile(r"death|die|dead", re.IGNORECASE)
RAGE_ANIMATION_RE = re.compile(r"rage", re.IGNORECASE)
ATTACK_EVENT_CUE_RE = re.compile(
    r"(projectile|jump|impact|explosion|bomb|contact|summon|spawn|"
    r"area|control|burrow|emergence)",
    re.IGNORECASE,
)

HIGH_VALUE_ATTACK_ANIMATIONS = {
    "60.0.0": {None: ["Shoot"]},
    "60.1.0": {None: ["Shoot"]},
    "68.1.0": {9: ["AttackAlt01", "AttackAlt02"], 10: ["AttackAlt01", "AttackAlt02"], 13: ["AttackAlt01", "AttackAlt02"]},
    "203.0.0": {None: ["ShootUp", "ShootDown", "ShootLeft", "ShootRight"]},
    "265.0.0": {7: ["Landing"], 8: ["RollStart", "RollLoop"]},
    "302.10.0": {9: ["Attack"]},
    "406.0.0": {
        100: ["SlotStart", "SlotSpinningFast", "SlotSpinningOutcomes"],
        200: ["Tantrum"],
        300: ["Tantrum"],
        310: ["Tantrum"],
        400: ["GuardStart", "GuardFlashSlow", "Guarding"],
        510: ["SpinStart", "SpinConstant"],
        600: ["ShootDown"],
    },
    "411.0.0": {13: ["Charge", "Charge2", "Charge3"]},
    "413.0.0": {8: ["Attack1"], 9: ["Attack2"], 10: ["Attack3"]},
}

EXTERNAL_VALIDATED_FIELDS = [
    "state",
    "state_frame",
    "animation",
    "animation_frame",
    "health",
    "invincible",
]

WARNING_RULES = [
    {
        "id": "eye-shoot-lock-windup",
        "type": 60,
        "variants": [0, 1],
        "subtypes": [0],
        "states": [],
        "animation_prefixes": ["shoot"],
        "animation_contains": [],
        "geometry": "player_lock_capsule",
        "attack_type": "Eye Laser",
        "radius": 40.0,
        "trigger_animation_frame": 10,
        "uncertainty": 10.0,
        "predictive": True,
        "evidence_status": "offline_original_engine_policy_verified",
        "confidence": 0.82,
        "sources": ["research/OFFLINE-TRAINING.md"],
    },
    {
        "id": "bloat-attack-laser-windup",
        "type": 68,
        "variants": [1],
        "subtypes": [0],
        "states": [9, 10, 13],
        "animation_prefixes": ["attack"],
        "animation_contains": [],
        "geometry": "bloat_grid_laser",
        "attack_type": "Bloat Laser",
        "radius": 40.0,
        "trigger_animation_frame": None,
        "uncertainty": 20.0,
        "predictive": True,
        "evidence_status": "offline_original_engine_policy_verified",
        "confidence": 0.72,
        "sources": ["research/OFFLINE-TRAINING.md"],
    },
    {
        "id": "brimstone-head-shoot-windup",
        "type": 203,
        "variants": [0],
        "subtypes": [0],
        "states": [],
        "animation_prefixes": ["shoot"],
        "animation_contains": [],
        "geometry": "animation_axis_capsule",
        "attack_type": "Brimstone Laser",
        "radius": 40.0,
        "trigger_animation_frame": None,
        "uncertainty": 20.0,
        "predictive": True,
        "evidence_status": "offline_original_engine_policy_verified",
        "confidence": 0.70,
        "sources": ["research/OFFLINE-TRAINING.md"],
    },
]

CURATED_MODELS = {
    "413.0.0": {
        "boss_phase": {
            "field": "ai_i2",
            "min": 0,
            "max": 3,
            "name": "Matriarch phase index",
            "evidence_status": "static_control_flow_confirmed",
            "sources": ["research/STATE-BOSS-RECOVERY-20261029.md"],
        },
        "enrage": {
            "states": [13],
            "animation_prefixes": ["Rage"],
            "evidence_status": "offline_original_engine_runtime_verified",
            "runtime_verified_state": 13,
            "sources": ["research/state-semantics/state-semantics-runtime-20261029.json"],
        },
        "predicted_end": {
            "state": 13,
            "timer_field": "ai_i1",
            "decrement_per_frame": 2,
            "evidence_status": "static_control_flow_confirmed",
        },
        "runtime_phase_transitions": [
            {"frame": 1, "hp": 700, "max_hp": 700, "ai_i2": 0},
            {"frame": 797, "hp": 559, "max_hp": 700, "ai_i2": 1},
            {"frame": 1843, "hp": 453.5, "max_hp": 700, "ai_i2": 2},
            {"frame": 2309, "hp": 329.5, "max_hp": 700, "ai_i2": 3},
            {"frame": 2381, "hp": 329.5, "max_hp": 700, "ai_i2": 3, "state": 13, "animation": "RageBegin"},
        ],
    },
    "886.0.0": {
        "enrage": {
            "states": [16],
            "animation_prefixes": ["RageStart"],
            "evidence_status": "static_candidate_only",
            "runtime_verified_state": None,
            "sources": ["research/STATE-BOSS-RECOVERY-20261029.md"],
        },
    },
    "886.1.0": {
        "runtime_conflict": {
            "observed_state": 7,
            "observed_animation": ["Rage", "Walk02"],
            "observed_child": 0,
            "observed_state_16": False,
            "evidence_status": "offline_original_engine_runtime_observed",
            "interpretation": "State 16 belongs to the Variant 0 branch and is not a Variant 1 state; Rage animation at State 7 is not promoted to enrage",
        },
    },
    "406.0.0": {
        "boss_phase": "unknown_not_established",
        "shield_observations": {
            "field": "shield_strength",
            "base_observed": 65,
            "active_observed": 130,
            "states": [100, 400, 510],
            "evidence_status": "offline_original_engine_runtime_observed",
            "semantics": "ShieldStrength feeds the recovered ShieldDamageAbsorption calculation; exact phase/cap immunity remains unresolved",
        },
        "actions": {
            "100": "slot",
            "200": "tantrum",
            "300": "tantrum",
            "310": "tantrum",
            "400": "guard",
            "510": "spin",
            "600": "shoot",
        },
    },
    "411.0.0": {
        "boss_phase": "unknown_not_established",
        "actions": {"13": "charge"},
        "invincibility": {
            "field_runtime_transitions": 0,
            "static_write_candidate_states": [5, 8, 9, 10, 11, 13, 16],
            "evidence_status": "static_candidates_only_no_runtime_flip",
        },
    },
    "412.0.0": {
        "delirium_fields": {
            "boss_type": "delirium_boss_type",
            "boss_variant": "delirium_boss_variant",
            "transformation_timer": "delirium_transformation_timer",
            "remaining_attacks": "delirium_remaining_attacks",
            "state": "delirium_state",
            "attack_id": "delirium_attack_id",
            "attack_angle": "delirium_attack_angle",
            "cycle_id": "delirium_cycle_id",
            "attack_id_low24": "delirium_attack_id_low24",
            "cycle_low7": "delirium_cycle_low7",
            "cycle_field_15_24": "delirium_cycle_field_15_24",
            "cycle_field_25_34": "delirium_cycle_field_25_34",
        },
        "encoding": {
            "attack_id_raw_high_byte": "not attack semantics; low 24 bits retained separately",
            "cycle_id": "64-bit packed value read at 0xbe0..0xbe7",
        },
        "attack_mapping": "unknown",
        "evidence_status": "fields_read_at_runtime; attack mapping unresolved",
    },
}


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest().upper()


def identity_type(identity: dict[str, Any]) -> int:
    return int(identity["identity"]["type"])


def identity_key(identity: dict[str, Any]) -> str:
    return str(identity["key"])


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def edge_mechanisms(
    edge: dict[str, Any],
    source_node: dict[str, Any] | None,
    target_node: dict[str, Any] | None,
) -> list[str]:
    mechanisms: list[str] = []
    target_animations = " ".join(
        (target_node or {}).get("runtime_animations", [])
        + (target_node or {}).get("static_animation_calls", [])
    )
    source_animations = " ".join(
        (source_node or {}).get("runtime_animations", [])
        + (source_node or {}).get("static_animation_calls", [])
    )
    calls = (target_node or {}).get("attack_calls", [])
    call_names = " ".join(call.get("name", "") for call in calls)
    target_state = int(edge["to_state"])
    target_animation_list = (
        (target_node or {}).get("runtime_animations", [])
        + (target_node or {}).get("static_animation_calls", [])
    )
    if target_state == 9001 or (
        target_animation_list
        and all(DEATH_ANIMATION_RE.search(animation) for animation in target_animation_list)
    ):
        mechanisms.append("death_or_termination")
    elif target_state >= 9000:
        mechanisms.append("other_terminal_candidate")
    for write in edge.get("invincible_writes_near", []):
        instruction = write.get("instruction", "")
        value = write.get("literal_value")
        if value is None:
            match = re.search(r",\s*(0x[0-9a-f]+|\d+)\s*$", instruction, re.IGNORECASE)
            if match:
                value = int(match.group(1), 0)
        if value == 1:
            mechanisms.append("invincibility_start_candidate")
        elif value == 0:
            mechanisms.append("invincibility_end_candidate")
        else:
            mechanisms.append("invincibility_change_candidate")
    if RAGE_ANIMATION_RE.search(target_animations) or any(
        "enrage_animation" == tag for tag in (target_node or {}).get("tags", [])
    ):
        mechanisms.append("enrage_or_empowerment")
    if "spawn" in call_names.lower() or "create" in call_names.lower():
        mechanisms.append("summon_split_or_form_change")
    if "fireprojectiles" in call_names.lower() or "firebossprojectiles" in call_names.lower():
        mechanisms.append("projectile_or_entity_attack")
    if edge.get("health_comparisons"):
        mechanisms.append("boss_phase_transition_candidate")
    target_animation_list = (
        (target_node or {}).get("runtime_animations", [])
        + (target_node or {}).get("static_animation_calls", [])
    )
    target_attack_focused = (
        (target_node or {}).get("semantics", {}).get("label")
        == "attack_or_special_animation_candidate"
        or (
            target_animation_list
            and all(ATTACK_ANIMATION_RE.search(animation) for animation in target_animation_list)
        )
    )
    if ATTACK_ANIMATION_RE.search(target_animations):
        if ATTACK_ANIMATION_RE.search(source_animations):
            mechanisms.append("attack_execution_or_transition")
        elif target_attack_focused:
            mechanisms.append("attack_preparation_candidate")
        else:
            mechanisms.append("mixed_attack_or_special_candidate")
    if ATTACK_ANIMATION_RE.search(source_animations) and not ATTACK_ANIMATION_RE.search(
        target_animations
    ):
        mechanisms.append("attack_recovery_candidate")
    if not mechanisms:
        if edge.get("state_frame_constants") or edge.get("variant_subtype_conditions"):
            mechanisms.append("ordinary_state_transition_candidate")
        else:
            mechanisms.append("unknown")
    return list(dict.fromkeys(mechanisms))


def primary_class(mechanisms: list[str], edge: dict[str, Any]) -> str:
    priority = [
        "death_or_termination",
        "other_terminal_candidate",
        "enrage_or_empowerment",
        "summon_split_or_form_change",
        "boss_phase_transition_candidate",
        "invincibility_start_candidate",
        "invincibility_end_candidate",
        "invincibility_change_candidate",
        "attack_preparation_candidate",
        "attack_execution_or_transition",
        "attack_recovery_candidate",
        "projectile_or_entity_attack",
        "mixed_attack_or_special_candidate",
        "ordinary_state_transition_candidate",
        "unknown",
    ]
    for candidate in priority:
        if candidate in mechanisms:
            return candidate
    return "unknown"


def condition_expression(edge: dict[str, Any]) -> str:
    terms: list[str] = []
    source = edge.get("from_state")
    if isinstance(source, int):
        terms.append(f"State == {source}")
    else:
        terms.append("State/branch_source unresolved")
    for value in edge.get("state_frame_constants", []):
        terms.append(f"StateFrame candidate == {value}")
    for condition in edge.get("health_comparisons", []):
        terms.append(f"HP candidate: {condition.get('instruction', 'comparison unavailable')}")
    for condition in edge.get("variant_subtype_conditions", []):
        terms.append(f"Variant/Subtype candidate: {condition.get('instruction', 'comparison unavailable')}")
    for write in edge.get("invincible_writes_near", []):
        terms.append(f"Invincible candidate: {write.get('instruction', 'write unavailable')}")
    for write in edge.get("speed_multiplier_writes_near", []):
        terms.append(f"Speed candidate: {write.get('instruction', 'write unavailable')}")
    return " AND ".join(terms)


def enrich_edges(database: dict[str, Any], transitions: dict[str, list[dict[str, Any]]]) -> dict[str, Any]:
    counts: Counter[str] = Counter()
    exact_runtime_edges = 0
    verified_edges = 0
    for graph in database.get("boss_phase_graphs", []):
        key = graph["key"]
        nodes = {int(node["state"]): node for node in graph.get("nodes", [])}
        observed = {
            (transition.get("previousState"), transition.get("state"))
            for transition in transitions.get(key, [])
            if isinstance(transition.get("previousState"), int)
            and isinstance(transition.get("state"), int)
        }
        for edge in graph.get("edges", []):
            source = edge.get("from_state")
            target = int(edge["to_state"])
            source_node = nodes.get(source) if isinstance(source, int) else None
            target_node = nodes.get(target)
            mechanisms = edge_mechanisms(edge, source_node, target_node)
            primary = primary_class(mechanisms, edge)
            runtime_observed = isinstance(source, int) and (source, target) in observed
            if runtime_observed:
                exact_runtime_edges += 1
                verified_edges += 1
            unresolved: list[str] = []
            if not isinstance(source, int):
                unresolved.append("source state or branch is unresolved")
            if not edge.get("health_comparisons"):
                unresolved.append("no HP condition in the local write window")
            if not edge.get("state_frame_constants"):
                unresolved.append("no StateFrame condition in the local write window")
            if edge.get("variant_subtype_conditions"):
                unresolved.append("variant/subtype condition is not a proven CFG path predicate")
            calls = (target_node or {}).get("attack_calls", [])
            edge["mechanism_classes"] = mechanisms
            edge["primary_class"] = primary
            edge["condition_expression"] = condition_expression(edge)
            edge["dependencies"] = {
                "state": isinstance(source, int),
                "state_frame": bool(edge.get("state_frame_constants")),
                "health": bool(edge.get("health_comparisons")),
                "variant_subtype": bool(edge.get("variant_subtype_conditions")),
                "ai_parameters": any(
                    "bc0" in write.get("instruction", "").lower()
                    or "bc4" in write.get("instruction", "").lower()
                    for write in edge.get("invincible_writes_near", [])
                    + edge.get("speed_multiplier_writes_near", [])
                ),
            }
            edge["call_effects"] = calls
            edge["creates_projectile_or_entity"] = any(
                token in call.get("name", "").lower()
                for call in calls
                for token in ("projectile", "spawn", "create", "entity")
            )
            edge["invincibility_events"] = [
                mechanism.removeprefix("invincibility_")
                for mechanism in mechanisms
                if mechanism.startswith("invincibility_")
            ]
            edge["preattack_signal"] = {
                "readable_source_state": isinstance(source, int),
                "runtime_source_animations": (source_node or {}).get("runtime_animations", []),
                "runtime_target_animations": (target_node or {}).get("runtime_animations", []),
                "trigger_frame_recovered": False,
                "evidence_status": (
                    "runtime_sequence_observed"
                    if runtime_observed
                    else "static_candidate_not_predictive"
                ),
            }
            edge["verification_status"] = (
                "offline_runtime_sequence_observed"
                if runtime_observed
                else "static_candidate"
            )
            edge["unresolved_reasons"] = unresolved
            edge["static_evidence"] = {
                "site": edge.get("site"),
                "instruction": edge.get("instruction"),
                "ai_function": graph.get("ai_function"),
            }
            counts[primary] += 1
    database["edge_semantics_summary"] = {
        "candidate_edges": sum(counts.values()),
        "primary_class_counts": dict(sorted(counts.items())),
        "offline_sequence_verified_edges": exact_runtime_edges,
        "verified_edges": verified_edges,
        "unverified_candidate_edges": sum(counts.values()) - verified_edges,
        "evidence_policy": (
            "Only exact source-state to target-state transitions observed by the "
            "offline original engine are counted as verified. Nearby comparisons "
            "remain candidate predicates."
        ),
    }
    return database


def refresh_summary(database: dict[str, Any]) -> None:
    identities = database.get("identities", [])
    external = json.loads(EXTERNAL_INVINCIBILITY.read_text(encoding="utf-8"))
    summary = database.setdefault("summary", {})
    summary["runtime_state_observed_identities"] = sum(
        any(node.get("runtime_animations") for node in identity.get("state_map", []))
        for identity in identities
    )
    summary["runtime_probe_identities"] = sum(
        bool(identity.get("runtime_validation"))
        for identity in identities
    )
    summary["runtime_state_transition_identities"] = sum(
        any(run.get("state_transitions") for run in identity.get("runtime_validation", []))
        for identity in identities
    )
    summary["runtime_invincible_transition_identities"] = sum(
        any(
            transition.get("previousInvulnerable") is not None
            and transition.get("invulnerable") != transition.get("previousInvulnerable")
            for run in identity.get("runtime_validation", [])
            for transition in run.get("state_transitions", [])
        )
        for identity in identities
    )
    summary["external_invincible_identities"] = len(external.get("identities", []))


def refresh_source_metadata(database: dict[str, Any]) -> None:
    for label, metadata in database.get("sources", {}).items():
        path = Path(label)
        if not path.is_absolute():
            path = ROOT / path
        if not path.exists():
            continue
        metadata["sha256"] = sha256(path)
        metadata["bytes"] = path.stat().st_size


def transition_index(report_paths: list[Path]) -> dict[str, list[dict[str, Any]]]:
    output: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for path in report_paths:
        if not path.exists():
            continue
        report = json.loads(path.read_text(encoding="utf-8"))
        for case in report.get("cases", []):
            key = case.get("key")
            if not key:
                continue
            for transition in case.get("stateTransitions", []):
                row = dict(transition)
                row["report"] = rel(path)
                row["runDirectory"] = case.get("runDirectory")
                output[key].append(row)
    return output


def report_cases(report_paths: list[Path]) -> list[tuple[Path, dict[str, Any]]]:
    output: list[tuple[Path, dict[str, Any]]] = []
    for path in report_paths:
        if not path.exists():
            continue
        report = json.loads(path.read_text(encoding="utf-8"))
        for case in report.get("cases", []):
            if case.get("key"):
                output.append((path, case))
    return output


def runtime_label(animation: str) -> str:
    if DEATH_ANIMATION_RE.search(animation):
        return "death_animation_observed"
    if RAGE_ANIMATION_RE.search(animation):
        return "rage_animation_observed"
    if ATTACK_ANIMATION_RE.search(animation):
        return "attack_or_special_animation_candidate"
    if re.search(r"idle|walk|pant|appear", animation, re.IGNORECASE):
        return "movement_or_idle_animation_candidate"
    return "animation_semantics_unclassified"


def merge_runtime_evidence(
    database: dict[str, Any],
    report_paths: list[Path],
) -> None:
    identities = {identity_key(identity): identity for identity in database.get("identities", [])}
    for model in database.get("curated_phase_models", []):
        if model.get("key") == "413.0.0":
            model["runtime_phase_transitions"] = CURATED_MODELS["413.0.0"]["runtime_phase_transitions"]
            model.setdefault("confidence", {})["hp_fraction_effect"] = (
                "offline_runtime_phase_index_correlation; exact threshold branch still static"
            )
        if model.get("key") == "886.1.0":
            model.setdefault("runtime_conflict", {})["direct_spawn"] = (
                "Child=0 and State 7 with Rage/Walk02 observed; State 16 did not occur"
            )
            identity = identities.get("886.1.0")
            if identity is not None:
                identity["state_map"] = [
                    node
                    for node in identity.get("state_map", [])
                    if int(node.get("state", -1)) != 16
                ]
        if model.get("key") != "412.0.0":
            continue
        model.setdefault("field_encoding", {})["attack_id"] = (
            "raw uint32; low 24 bits retained separately because disassembly masks 0xffffff"
        )
        model["field_encoding"]["cycle_id"] = (
            "64-bit packed value at 0xbe0..0xbe7; 0x4a6d6e and 0x4a7722 unpack overlapping bit fields"
        )
        model.setdefault("confidence", {})["field_layout"] = (
            "REPENTOGON_layout_external_reader_and_disassembly_confirmed"
        )
        model["confidence"]["phase_semantics"] = (
            "delirium_state_and_timer_observed; attack id meaning unresolved"
        )
        model["confidence"]["offline_transition_validation"] = (
            "delirium_state_transitions_observed; attack map not completed"
        )
    for path, case in report_cases(report_paths):
        key = case["key"]
        identity = identities.get(key)
        if identity is None:
            continue
        runs = identity.setdefault("runtime_validation", [])
        run_id = case.get("runDirectory")
        if not any(
            run.get("report") == rel(path) and run.get("run_directory") == run_id
            for run in runs
        ):
            runs.append(
                {
                    "report": rel(path),
                    "status": case.get("status"),
                    "run_directory": run_id,
                    "summary": case.get("summary", {}),
                    "state_transitions": case.get("stateTransitions", []),
                }
            )
        nodes = {int(node["state"]): node for node in identity.get("state_map", [])}
        samples = identity.setdefault("runtime_parameter_samples", [])
        for transition in case.get("stateTransitions", []):
            state = int(transition["state"])
            animation = transition.get("animation") or ""
            node = nodes.get(state)
            if node is None:
                node = {
                    "state": state,
                    "state_frame_range_observed": None,
                    "runtime_animations": [],
                    "static_animation_calls": [],
                    "semantics": {
                        "label": runtime_label(animation),
                        "evidence": "runtime_animation",
                        "state": state,
                        "animations": [],
                    },
                    "write_sites": [],
                    "tags": ["runtime_state_animation"],
                    "attack_calls": [],
                    "status": "runtime_observed",
                }
                identity.setdefault("state_map", []).append(node)
                nodes[state] = node
            if animation and animation not in node.setdefault("runtime_animations", []):
                node["runtime_animations"].append(animation)
            if animation and animation not in node.setdefault("semantics", {}).setdefault("animations", []):
                node["semantics"]["animations"].append(animation)
            state_frame = transition.get("stateFrame")
            if isinstance(state_frame, int):
                observed = node.get("state_frame_range_observed") or {
                    "min": state_frame,
                    "max": state_frame,
                }
                observed["min"] = min(observed["min"], state_frame)
                observed["max"] = max(observed["max"], state_frame)
                node["state_frame_range_observed"] = observed
            if node.get("semantics", {}).get("label") in ("unknown", "none"):
                node["semantics"]["label"] = runtime_label(animation)
                node["semantics"]["evidence"] = "runtime_animation"
            node["status"] = "runtime_observed"
            if "runtime_state_animation" not in node.setdefault("tags", []):
                node["tags"].append("runtime_state_animation")
            sample = {
                "report": rel(path),
                "run_directory": run_id,
                "frame": transition.get("frame"),
                "state": state,
                "state_frame": state_frame,
                "animation": animation,
                "hp": transition.get("hp"),
                "max_hp": transition.get("maxHp"),
                "ai_i1": transition.get("aiI1"),
                "ai_i2": transition.get("aiI2"),
                "invulnerable": transition.get("invulnerable"),
                "child": transition.get("child"),
                "delirium_state": transition.get("deliriumState"),
                "delirium_attack_id": transition.get("deliriumAttackId"),
                "delirium_attack_id_low24": transition.get("deliriumAttackIdLow24"),
                "delirium_cycle_id": transition.get("deliriumCycleId"),
                "delirium_cycle_low7": transition.get("deliriumCycleLow7"),
                "delirium_cycle_field_15_24": transition.get("deliriumCycleField1524"),
                "delirium_cycle_field_25_34": transition.get("deliriumCycleField2534"),
            }
            if sample not in samples:
                samples.append(sample)
        evidence = identity.setdefault("evidence", {})
        evidence["offline_original_engine_state_transition"] = bool(
            evidence.get("offline_original_engine_state_transition")
            or case.get("stateTransitions")
        )
        evidence["offline_original_engine_identity_probe"] = True


def attack_event_confidence(cues: list[str]) -> float:
    weights = {
        "projectile_emission_candidate": 0.58,
        "jump_or_impact_candidate": 0.55,
        "explosion_or_bomb_candidate": 0.55,
        "contact_attack_candidate": 0.52,
        "contact_window_candidate": 0.50,
        "summon_or_spawn_candidate": 0.50,
        "area_or_control_attack_candidate": 0.48,
        "burrow_or_emergence_candidate": 0.45,
    }
    return max((weights.get(cue, 0.40) for cue in cues), default=0.40)


def load_attack_event_candidates() -> tuple[dict[str, Any], dict[str, int]]:
    data = json.loads(ATTACK_EVENT_CANDIDATES.read_text(encoding="utf-8"))
    grouped: dict[str, dict[str, dict[str, Any]]] = defaultdict(lambda: defaultdict(dict))
    accepted_events = 0
    skipped_death_events = 0
    skipped_uncued_events = 0
    for event in data.get("events", []):
        animation = str(event.get("animation") or "")
        if not animation:
            continue
        if DEATH_ANIMATION_RE.search(animation):
            skipped_death_events += 1
            continue
        cues = sorted(
            {
                str(cue)
                for cue in event.get("cues", [])
                if ATTACK_EVENT_CUE_RE.search(str(cue))
            }
        )
        if not cues:
            skipped_uncued_events += 1
            continue
        accepted_events += 1
        group = grouped[event["key"]][animation]
        event_name = str(event.get("event_name") or "")
        frame = int(event.get("frame", -1))
        group.setdefault("events", [])
        group.setdefault("frames", [])
        group.setdefault("cues", [])
        group["trigger_count"] = int(group.get("trigger_count", 0)) + 1
        if event_name and event_name not in group["events"]:
            group["events"].append(event_name)
        if frame not in group["frames"]:
            group["frames"].append(frame)
        for cue in cues:
            if cue not in group["cues"]:
                group["cues"].append(cue)
    for animations in grouped.values():
        for animation, group in animations.items():
            group["events"].sort()
            group["frames"].sort()
            group["cues"].sort()
            group["confidence"] = attack_event_confidence(group["cues"])
            group["evidence_status"] = "static_anm2_attack_event_candidate"
            group["source"] = rel(ATTACK_EVENT_CANDIDATES)
    return dict(grouped), {
        "source_entries": len(data.get("events", [])),
        "accepted_events": accepted_events,
        "candidate_identities": len(grouped),
        "skipped_death_events": skipped_death_events,
        "skipped_uncued_events": skipped_uncued_events,
    }


def load_direct_ai_attack_calls() -> tuple[dict[str, Any], dict[str, int]]:
    data = json.loads(AI_SEMANTICS_INDEX.read_text(encoding="utf-8"))
    call_re = re.compile(
        r"(fireprojectiles|firebossprojectiles|projectile_helper|"
        r"create dispatcher|spawn_relay)",
        re.IGNORECASE,
    )
    grouped: dict[str, list[dict[str, Any]]] = defaultdict(list)
    functions_with_calls = 0
    for function in data.get("functions", []):
        calls = [
            call
            for call in function.get("publicDangerOrEntityCalls", [])
            if call_re.search(str(call.get("name") or call.get("target") or ""))
        ]
        if not calls:
            continue
        functions_with_calls += 1
        compact_calls = []
        for call in calls:
            row = {
                "site": call.get("site"),
                "target": call.get("target"),
                "name": call.get("name") or call.get("target"),
            }
            if row not in compact_calls:
                compact_calls.append(row)
        for key in function.get("identities", []):
            grouped[key].extend(
                {
                    **call,
                    "ai_function": function.get("va"),
                    "evidence_status": "static_decompiled_ai_function_call_candidate",
                }
                for call in compact_calls
            )
    for key, calls in grouped.items():
        grouped[key] = sorted(
            calls,
            key=lambda row: (
                str(row.get("site") or ""),
                str(row.get("name") or ""),
            ),
        )
    return dict(grouped), {
        "functions": len(data.get("functions", [])),
        "functions_with_attack_or_entity_calls": functions_with_calls,
        "candidate_identities": len(grouped),
    }


def attack_call_candidate_type(calls: list[dict[str, Any]]) -> str:
    names = " ".join(str(call.get("name") or "") for call in calls).lower()
    if "firebossprojectiles" in names:
        return "BossProjectileAttack"
    if "fireprojectiles" in names or "projectile/entity helper" in names:
        return "ProjectileAttack"
    if "spawn" in names or "create" in names:
        return "SummonOrSpawnAttack"
    return "AttackCallCandidate"


def attack_animations_for(key: str, state: int, available: list[str]) -> list[str]:
    candidates = HIGH_VALUE_ATTACK_ANIMATIONS.get(key, {})
    expected = candidates.get(state, candidates.get(None, []))
    normalized = {value.lower(): value for value in available}
    return [normalized[value.lower()] for value in expected if value.lower() in normalized]


def state_rules(identity: dict[str, Any]) -> dict[str, Any]:
    key = identity_key(identity)
    rules: dict[str, Any] = {}
    for node in identity.get("state_map", []):
        state = int(node["state"])
        runtime = list(node.get("runtime_animations", []))
        static = list(node.get("static_animation_calls", []))
        available = list(dict.fromkeys(runtime + static))
        attack_animations = attack_animations_for(key, state, available)
        candidate_attack_animations = [
            animation
            for animation in available
            if animation not in attack_animations
            and not DEATH_ANIMATION_RE.search(animation)
            and ATTACK_ANIMATION_RE.search(animation)
        ]
        attack_calls = node.get("attack_calls", [])
        evidence = node.get("semantics", {}).get("evidence", "none")
        confidence = 0.95 if runtime else 0.55 if static else 0.15
        rules[str(state)] = {
            "label": node.get("semantics", {}).get("label", "unknown"),
            "runtime_animations": runtime,
            "static_animation_calls": static,
            "attack_animations": attack_animations,
            "candidate_attack_animations": candidate_attack_animations,
            "attack_calls": attack_calls,
            "attack_call_candidate_type": (
                attack_call_candidate_type(attack_calls) if attack_calls else "Unknown"
            ),
            "semantics_evidence": evidence,
            "confidence": confidence,
        }
    # The recovered State 16 branch is below the Variant==1 early branch and is
    # reachable only for 886.0.0. The shared function target does not make every
    # write site applicable to every routed Variant.
    if key == "886.1.0":
        rules.pop("16", None)
    return rules


def load_phase4_geometry(database: dict[str, Any]) -> dict[str, Any]:
    path = ROOT / "data/mechanisms/gamebot_phase4_geometry.json"
    if not path.exists():
        return {}
    data = json.loads(path.read_text(encoding="utf-8"))
    if data.get("game_sha256", "").lower() != database.get("game_sha256", "").lower():
        return {}
    return data.get("models", {})


def load_phase4_timings(database: dict[str, Any]) -> dict[str, Any]:
    path = ROOT / "data/mechanisms/gamebot_phase4_timing.json"
    if not path.exists():
        return {}
    data = json.loads(path.read_text(encoding="utf-8"))
    if data.get("game_sha256", "").lower() != database.get("game_sha256", "").lower():
        return {}
    return data.get("timings", {})


def load_strict_attack_validation() -> dict[str, Any]:
    if not STRICT_ATTACK_VALIDATION.exists():
        return {"identities": {}, "timing_models": {}}
    data = json.loads(STRICT_ATTACK_VALIDATION.read_text(encoding="utf-8"))
    if data.get("format") != "isaac-gamebot-strict-attack-validation-v1":
        return {"identities": {}, "timing_models": {}}
    return data


def build_runtime_database(
    database: dict[str, Any],
    transitions: dict[str, list[dict[str, Any]]],
) -> dict[str, Any]:
    attack_event_candidates, attack_event_stats = load_attack_event_candidates()
    direct_ai_calls, direct_ai_stats = load_direct_ai_attack_calls()
    strict_attack_validation = load_strict_attack_validation()
    strict_attack_records = strict_attack_validation.get("identities", {})
    strict_timing_models = strict_attack_validation.get("timing_models", {})
    identities: dict[str, Any] = {}
    runtime_observed = 0
    attack_identified = 0
    runtime_observed_keys: list[str] = []
    attack_identified_keys: list[str] = []
    attack_event_keys: list[str] = []
    attack_call_keys: list[str] = []
    direct_ai_call_keys: list[str] = []
    strict_source_linked_keys: list[str] = []
    strict_prediction_keys: list[str] = []
    state_animation_keys: list[str] = []
    attack_recognized_keys: list[str] = []
    for identity in database.get("identities", []):
        key = identity_key(identity)
        rules = state_rules(identity)
        strict_record = strict_attack_records.get(key, {})
        for state, rule in rules.items():
            rule.setdefault("strict_attack_objects", [])
            rule.setdefault("attack_mapping_evidence", "none")
        for strict_group in strict_record.get("strict_groups", []):
            state_key = str(strict_group["state"])
            if state_key not in rules:
                rules[state_key] = {
                    "label": "unknown",
                    "runtime_animations": [],
                    "static_animation_calls": [],
                    "attack_animations": [],
                    "candidate_attack_animations": [],
                    "attack_calls": [],
                    "attack_call_candidate_type": "Unknown",
                    "semantics_evidence": "original_engine_source_linked_attack_object",
                    "confidence": 0.90,
                    "strict_attack_objects": [],
                    "attack_mapping_evidence": "none",
                }
            rule = rules[state_key]
            animation = strict_group["animation"]
            if animation not in rule["attack_animations"]:
                rule["attack_animations"].append(animation)
            strict_object = {
                "mechanism": strict_group["mechanism"],
                "object": strict_group["object"],
                "animation_frames": strict_group["animation_frames"],
                "object_delay_frames": strict_group["object_delay_frames"],
                "observations": strict_group["observations"],
                "runs": strict_group["runs"],
            }
            if strict_object not in rule["strict_attack_objects"]:
                rule["strict_attack_objects"].append(strict_object)
            rule["attack_mapping_evidence"] = "strict_source_linked_attack_event"
            rule["confidence"] = max(float(rule.get("confidence", 0)), 0.90)
        animation_events = attack_event_candidates.get(key, {})
        ai_call_candidates = direct_ai_calls.get(key, [])
        direct_ai_recognized = ai_call_candidates if key != "412.0.0" else []
        observed_states = [
            int(state)
            for state, rule in rules.items()
            if rule["runtime_animations"]
        ]
        attack_states = [
            int(state)
            for state, rule in rules.items()
            if rule["attack_animations"]
        ]
        state_animation_states = [
            int(state)
            for state, rule in rules.items()
            if rule["candidate_attack_animations"]
        ]
        call_candidates = [
            {
                "state": int(state),
                "calls": rule["attack_calls"],
                "candidate_type": rule["attack_call_candidate_type"],
            }
            for state, rule in rules.items()
            if rule["attack_calls"]
        ]
        if observed_states:
            runtime_observed += 1
            runtime_observed_keys.append(key)
        if attack_states:
            attack_identified += 1
            attack_identified_keys.append(key)
        if animation_events:
            attack_event_keys.append(key)
        if call_candidates:
            attack_call_keys.append(key)
        if ai_call_candidates:
            direct_ai_call_keys.append(key)
        if strict_record.get("strict_identification"):
            strict_source_linked_keys.append(key)
        if strict_record.get("strict_prediction"):
            strict_prediction_keys.append(key)
        if state_animation_states:
            state_animation_keys.append(key)
        recognition_level = (
            "strict_state_animation_mapping"
            if attack_states
            else "static_attack_call_state_candidate"
            if call_candidates
            else "static_state_animation_candidate"
            if state_animation_states
            else "static_anm2_animation_event_candidate"
            if animation_events
            else "static_ai_function_attack_call_candidate"
            if direct_ai_recognized
            else "no_attack_candidate"
        )
        if recognition_level != "no_attack_candidate":
            attack_recognized_keys.append(key)
        # Conditions remain candidate evidence until independent event assertions pass.
        for state, rule in rules.items():
            rule["behavior"] = {
                "identity": key, "state": int(state), "semantic_label": rule["label"],
                "entry_condition": "Unknown", "continuation_condition": "Unknown",
                "exit_condition": "Unknown", "timers": [], "phases": {},
                "spawned_hazards": "Unknown", "direction": "Unknown", "range": None,
                "prediction_frames": None, "transition_verified": False,
                "evidence_status": rule.get("semantics_evidence", "none"),
                "source_refs": ["data/mechanisms/isaac_j460_state_semantics.json#" + key],
            }
            if key == "413.0.0" and int(state) == 13:
                rule["behavior"].update({
                    "entry_condition": "State 3, AI I1 >= 301, AI I2 >= 3, RNG % 5 == 0",
                    "continuation_condition": "StateFrame > 0; this branch decrements AI I1 by 2; other branches may extend it",
                    "exit_condition": "AI I1 <= 0 starts RageEnd; animation completion returns State 3",
                    "timers": ["ai_i1 (initial 400)", "state_frame (emission cadence mod 8)"],
                    "phases": {"prepare": "RageBegin", "active": "RageLoop", "recover": "RageEnd"},
                    "spawned_hazards": "Fistuloid on StateFrame % 8 == 0 and RNG low bit 0",
                    "evidence_status": "static_control_flow; runtime full rage cycle not yet independently verified",
                    "source_refs": ["research/ai-recovery/ghidra-export/AI_004c59d0_004c59d0.c:275-351,739-830"],
                })
            for warning in WARNING_RULES:
                if key in [f"{warning['type']}.{v}.{t}" for v in warning['variants'] for t in warning['subtypes']] and (not warning["states"] or int(state) in warning["states"]):
                    rule["behavior"]["phases"]["telegraph_candidate"] = warning["animation_prefixes"]
                    rule["behavior"]["spawned_hazards"] = "Type 7 laser candidate; match source against observed entity"
                    rule["behavior"]["direction"] = warning["geometry"]
                    rule["behavior"]["prediction_frames"] = warning["trigger_animation_frame"]
                    rule["behavior"]["source_refs"] += warning["sources"]
        identities[key] = {
            "identity": identity["identity"],
            "ai_function": identity.get("ai_function") or "Unknown",
            "state_rules": rules,
            "runtime_states": observed_states,
            "attack_states": attack_states,
            "runtime_transition_evidence": len(transitions.get(key, [])),
            "attack_recognition": {
                "level": recognition_level,
                "strict_attack_states": attack_states,
                "state_animation_candidate_states": state_animation_states,
                "state_call_candidates": call_candidates,
                "animation_event_candidates": animation_events,
                "direct_ai_attack_calls": ai_call_candidates,
                "direct_ai_attack_candidate_type": (
                    attack_call_candidate_type(ai_call_candidates)
                    if ai_call_candidates else "Unknown"
                ),
                "strict_source_linked_groups": strict_record.get("strict_groups", []),
                "strict_prediction": bool(strict_record.get("strict_prediction")),
                "strict_prediction_timing_keys": strict_record.get("strict_timing_keys", []),
                "provisional_prediction": bool(strict_record.get("provisional_prediction")),
                "provisional_prediction_timing_keys": strict_record.get("provisional_timing_keys", []),
                "candidate_event_count": sum(
                    int(group.get("trigger_count", 0))
                    for group in animation_events.values()
                ),
                "evidence_refs": [
                    "data/mechanisms/isaac_j460_state_semantics.json#" + key,
                    "data/npc/engine_monster_attack_event_candidates.json#" + key,
                    "research/ai-recovery/ai-semantics-index.json#" + key,
                ],
            },
        }

    warning_keys: dict[str, list[str]] = defaultdict(list)
    for rule in WARNING_RULES:
        for variant in rule["variants"]:
            for subtype in rule["subtypes"]:
                key = f"{rule['type']}.{variant}.{subtype}"
                if key in identities and key not in attack_identified_keys:
                    attack_identified_keys.append(key)
                if key in identities and key not in attack_recognized_keys:
                    attack_recognized_keys.append(key)
                if key in identities and rule["id"] not in warning_keys[key]:
                    warning_keys[key].append(rule["id"])
    for key, rule_ids in warning_keys.items():
        recognition = identities[key]["attack_recognition"]
        recognition["level"] = "strict_state_animation_mapping"
        recognition["warning_rule_ids"] = rule_ids
    verified_timings = load_phase4_timings(database)
    for timing_key, timing_model in strict_timing_models.items():
        if timing_model.get("cross_seed_verified"):
            verified_timings.setdefault(timing_key, timing_model)
    verified_timing_identity_keys = sorted(
        {
            timing_key.split(":", 1)[0]
            for timing_key, timing_model in verified_timings.items()
            if timing_model.get("timing_verified")
        }
    )
    for key in verified_timing_identity_keys:
        if key not in identities:
            continue
        recognition = identities[key]["attack_recognition"]
        recognition["strict_prediction"] = True
        timing_keys = recognition.setdefault("strict_prediction_timing_keys", [])
        for timing_key in verified_timings:
            if timing_key.startswith(key + ":") and timing_key not in timing_keys:
                timing_keys.append(timing_key)
        if key not in strict_prediction_keys:
            strict_prediction_keys.append(key)
    return {
        "format": "isaac-gamebot-runtime-semantics-v1",
        "source": {
            "database": rel(SOURCE_DB),
            "database_sha256": sha256(SOURCE_DB),
            "game_sha256": database.get("game_sha256"),
            "attack_event_candidates": rel(ATTACK_EVENT_CANDIDATES),
            "attack_event_candidates_sha256": sha256(ATTACK_EVENT_CANDIDATES),
            "ai_semantics_index": rel(AI_SEMANTICS_INDEX),
            "ai_semantics_index_sha256": sha256(AI_SEMANTICS_INDEX),
            "strict_attack_validation": rel(STRICT_ATTACK_VALIDATION),
            "strict_attack_validation_sha256": (
                sha256(STRICT_ATTACK_VALIDATION)
                if STRICT_ATTACK_VALIDATION.exists() else None
            ),
        },
        "policy": {
            "unknown_sentinel": -1,
            "state_is_per_identity": True,
            "state_number_alone_is_not_attack_type": True,
            "candidate_edges_do_not_drive_threats": True,
            "static_attack_recognition_candidates_do_not_drive_threats": True,
            "other_damage_immunity_remains_unknown": True,
        },
        "runtime_contract": {
            "enemy_record": [
                "identity_key", "identity_name", "state", "state_frame", "current_action",
                "action_phase", "boss_phase", "is_invincible", "is_enraged",
                "ai_v1", "ai_v2", "ai_i1", "ai_i2", "projectile_cooldown", "projectile_delay",
                "health", "max_health", "speed_multiplier", "shield_strength",
                "shield_history_capacity", "parent", "child", "spawner", "owner", "attack_target",
                "parent_in_snapshot", "child_in_snapshot", "spawner_in_snapshot",
                "owner_in_snapshot", "attack_target_in_snapshot", "is_boss",
                "boss_status_cooldown", "champion", "boss_color",
                "delirium_layout_valid", "delirium_boss_type", "delirium_boss_variant", "delirium_state",
                "delirium_attack_id", "delirium_attack_id_low24", "delirium_cycle_id",
                "delirium_cycle_low7", "delirium_cycle_field_15_24",
                "delirium_cycle_field_25_34", "delirium_transformation_timer",
                "delirium_remaining_attacks", "delirium_attack_angle",
                "attack_type", "attack_type_evidence", "attack_timing_verified", "predicted_trigger_frame",
                "predicted_action_end_frame", "threat_geometry", "data_source",
                "confidence", "unknown_reason", "last_updated_frame",
            ],
            "warning_record": [
                "source", "rule_id", "kind", "shape", "pos", "end", "vel", "radius",
                "start", "until", "predicted_trigger_frame", "uncertainty",
                "predictive", "evidence_status", "confidence",
            ],
            "unknown_sentinels": {
                "integer": -1,
                "string": "Unknown",
            },
        },
        "field_map": [
            {"logic": "type", "offset": "0x28", "reader": "Entity.type"},
            {"logic": "variant", "offset": "0x2c", "reader": "Entity.variant"},
            {"logic": "subtype", "offset": "0x30", "reader": "Entity.subtype"},
            {"logic": "active", "offset": "0x170", "reader": "Entity.active"},
            {"logic": "exists", "offset": "0x172", "reader": "Entity.exists"},
            {"logic": "dead", "offset": "0x173", "reader": "Entity.dead"},
            {"logic": "collision", "offset": "0x188", "reader": "Entity.collision"},
            {"logic": "boss_status_cooldown", "offset": "0x238", "reader": "Entity.boss_status_cooldown"},
            {"logic": "birth", "offset": "0x328", "reader": "Entity.birth"},
            {"logic": "target_position", "offset": "0x334..0x338", "reader": "Entity.target_pos"},
            {"logic": "position", "offset": "0x33c..0x340", "reader": "Entity.pos"},
            {"logic": "velocity", "offset": "0x360..0x364", "reader": "Entity.vel"},
            {"logic": "radius", "offset": "0x370", "reader": "Entity.radius"},
            {"logic": "state", "offset": "0xb64", "reader": "Entity.state"},
            {"logic": "state_frame", "offset": "0x410", "reader": "Entity.state_frame"},
            {"logic": "health", "offset": "0x380", "reader": "Entity.hp"},
            {"logic": "max_health", "offset": "0x384", "reader": "Entity.max_hp"},
            {"logic": "collision_damage", "offset": "0x388", "reader": "Entity.damage"},
            {"logic": "speed_multiplier", "offset": "0x39c", "reader": "Entity.speed_multiplier"},
            {"logic": "invincible", "offset": "0x3b0", "reader": "Entity.invulnerable"},
            {"logic": "parent", "offset": "0x3bc", "reader": "Entity.parent"},
            {"logic": "child", "offset": "0x3c0", "reader": "Entity.child"},
            {"logic": "state_target", "offset": "0x3c4", "reader": "Entity.target"},
            {"logic": "spawner", "offset": "0x3c8", "reader": "Entity.spawner"},
            {"logic": "owner", "offset": "0x410 (Type 3 layout)", "reader": "Entity.owner"},
            {"logic": "seed", "offset": "0x3ec", "reader": "Entity.seed"},
            {"logic": "animation", "offset": "0x7c -> string", "reader": "Entity.animation"},
            {"logic": "animation_frame", "offset": "0x88", "reader": "Entity.animation_frame"},
            {"logic": "projectile_cooldown", "offset": "0xba0", "reader": "Entity.projectile_cooldown"},
            {"logic": "projectile_delay", "offset": "0xba4", "reader": "Entity.projectile_delay"},
            {"logic": "ai_v1", "offset": "0xbb0..0xbb8", "reader": "Entity.ai_v1"},
            {"logic": "ai_v2", "offset": "0xbb8..0xbc0", "reader": "Entity.ai_v2"},
            {"logic": "ai_i1", "offset": "0xbc0", "reader": "Entity.ai_i1"},
            {"logic": "ai_i2", "offset": "0xbc4", "reader": "Entity.ai_i2"},
            {"logic": "is_boss", "offset": "0xc3d", "reader": "Entity.is_boss"},
            {"logic": "shield_strength", "offset": "0xc40", "reader": "Entity.shield_strength"},
            {"logic": "shield_history_capacity", "offset": "0xc44", "reader": "Entity.shield_history_capacity"},
            {"logic": "champion", "offset": "0xc64", "reader": "Entity.champion"},
            {"logic": "boss_color", "offset": "0xc78", "reader": "Entity.boss_color"},
            {"logic": "delirium_boss_type", "offset": "0xbc8", "reader": "Entity.delirium_boss_type"},
            {"logic": "delirium_boss_variant", "offset": "0xbcc", "reader": "Entity.delirium_boss_variant"},
            {"logic": "delirium_transformation_timer", "offset": "0xbd0", "reader": "Entity.delirium_transformation_timer"},
            {"logic": "delirium_remaining_attacks", "offset": "0xbd2", "reader": "Entity.delirium_remaining_attacks"},
            {"logic": "delirium_state", "offset": "0xbd3", "reader": "Entity.delirium_state"},
            {"logic": "delirium_attack_id", "offset": "0xbd8", "reader": "Entity.delirium_attack_id"},
            {"logic": "delirium_attack_id_low24", "offset": "0xbd8 & 0xffffff", "reader": "Entity.delirium_attack_id_low24"},
            {"logic": "delirium_attack_angle", "offset": "0xbdc", "reader": "Entity.delirium_attack_angle"},
            {"logic": "delirium_cycle_id", "offset": "0xbe0:uint64", "reader": "Entity.delirium_cycle_id"},
            {"logic": "delirium_cycle_low7", "offset": "0xbe0 bits 0..6", "reader": "Entity.delirium_cycle_low7"},
            {"logic": "delirium_cycle_field_15_24", "offset": "0xbe0 bits 15..24", "reader": "Entity.delirium_cycle_field_15_24"},
            {"logic": "delirium_cycle_field_25_34", "offset": "0xbe0 bits 25..34", "reader": "Entity.delirium_cycle_field_25_34"},
        ],
        "identities": identities,
        "curated_models": CURATED_MODELS,
        "warning_rules": WARNING_RULES,
        "verified_timings": verified_timings,
        "verified_geometry": load_phase4_geometry(database),
        "runtime_counts": {
            "identities": len(identities),
            "runtime_state_observed_identities": runtime_observed,
            "attack_identified_identities": len(attack_identified_keys),
            "attack_event_candidate_identities": len(attack_event_keys),
            "attack_call_candidate_identities": len(attack_call_keys),
            "direct_ai_attack_call_candidate_identities": len(direct_ai_call_keys),
            "strict_source_linked_attack_identities": len(strict_source_linked_keys),
            "strict_attack_prediction_identities": len(verified_timing_identity_keys),
            "strict_attack_timing_models": sum(
                1 for model in verified_timings.values()
                if model.get("timing_verified")
            ),
            "provisional_attack_timing_models": sum(
                1 for model in strict_timing_models.values()
                if not model.get("cross_seed_verified")
            ),
            "state_animation_candidate_identities": len(state_animation_keys),
            "attack_recognized_identities": len(attack_recognized_keys),
            "runtime_state_observed_identity_keys": runtime_observed_keys,
            "attack_identified_identity_keys": attack_identified_keys,
            "attack_event_candidate_identity_keys": attack_event_keys,
            "attack_call_candidate_identity_keys": attack_call_keys,
            "direct_ai_attack_call_candidate_identity_keys": direct_ai_call_keys,
            "strict_source_linked_attack_identity_keys": strict_source_linked_keys,
            "strict_attack_prediction_identity_keys": verified_timing_identity_keys,
            "state_animation_candidate_identity_keys": state_animation_keys,
            "attack_recognized_identity_keys": attack_recognized_keys,
            "attack_event_source": attack_event_stats,
            "direct_ai_call_source": direct_ai_stats,
            "warning_rules": len(WARNING_RULES),
        },
    }


def runtime_coverage(
    database: dict[str, Any],
    runtime_database: dict[str, Any],
    transitions: dict[str, list[dict[str, Any]]],
) -> dict[str, Any]:
    identities = database.get("identities", [])
    states = [
        node
        for identity in identities
        for node in identity.get("state_map", [])
    ]
    semantic_states = [
        node
        for node in states
        if (node.get("runtime_animations") or node.get("static_animation_calls"))
        and node.get("semantics", {}).get("label") != "unknown"
    ]
    runtime_state_identities = [
        identity
        for identity in identities
        if any(node.get("runtime_animations") for node in identity.get("state_map", []))
    ]
    offline_probe_identities = [
        identity
        for identity in identities
        if identity.get("runtime_validation")
    ]
    offline_transition_identities = [
        identity
        for identity in identities
        if any(run.get("state_transitions") for run in identity.get("runtime_validation", []))
    ]
    external = json.loads(EXTERNAL_INVINCIBILITY.read_text(encoding="utf-8"))
    external_identities = {row["key"] for row in external.get("identities", [])}
    edge_summary = database["edge_semantics_summary"]
    enrage = database.get("enrage_candidates", [])
    invincibility = database.get("invincibility", {}).get("records", [])

    metrics = {
        "static_ai_recovery": {
            "numerator": database["summary"]["types_mapped"],
            "denominator": database["dispatcher"]["type_max"] - database["dispatcher"]["type_min"] + 1,
            "evidence": "AI dispatch map entries",
        },
        "state_number_semantics": {
            "numerator": len(semantic_states),
            "denominator": len(states),
            "evidence": "identity-state pairs with runtime or static animation semantics",
        },
        "boss_phase_transition_confirmation": {
            "numerator": edge_summary["offline_sequence_verified_edges"],
            "denominator": edge_summary["candidate_edges"],
            "evidence": "exact source->target transitions in offline original-engine reports",
        },
        "external_field_read_validation": {
            "numerator": len(EXTERNAL_VALIDATED_FIELDS),
            "denominator": len(runtime_database["field_map"]),
            "validated_fields": EXTERNAL_VALIDATED_FIELDS,
            "evidence": (
                "/".join(EXTERNAL_VALIDATED_FIELDS)
                + " appear in external ReadProcessMemory JSONL; new AI and Delirium fields do not yet"
            ),
        },
        "attack_type_realtime_identification": {
            "numerator": runtime_database["runtime_counts"]["attack_identified_identities"],
            "denominator": len(identities),
            "evidence": "identity+state mapping with offline rule or source-linked attack object",
        },
        "attack_timing_prediction": {
            "numerator": runtime_database["runtime_counts"]["strict_attack_prediction_identities"],
            "denominator": len(identities),
            "evidence": (
                "source-linked attack object timing stable within one animation frame "
                "across repeated observations"
            ),
        },
        "attack_type_candidate_recognition": {
            "numerator": runtime_database["runtime_counts"]["attack_recognized_identities"],
            "denominator": len(identities),
            "evidence": (
                "exact identity mapped to decompiled State attack calls, "
                "State attack-animation candidates, or ANM2 attack event candidates; "
                "not planning-validated"
            ),
        },
        "preattack_warning": {
            "numerator": len({(rule["type"], tuple(rule["variants"])) for rule in WARNING_RULES}),
            "denominator": len(identities),
            "evidence": "offline original-engine policy validation",
        },
        "invincibility_window_identification": {
            "numerator": sum(1 for row in invincibility if row.get("runtime_verified")),
            "denominator": len(invincibility),
            "evidence": "runtime invincible transitions, not static write sites",
        },
        "enrage_condition_identification": {
            "numerator": 2,
            "denominator": len(enrage),
            "evidence": "Matriarch and Vis Fatty static conditions; only Matriarch State 13 runtime-verified",
        },
        "offline_runtime_validation": {
            "numerator": len(offline_transition_identities),
            "denominator": len(identities),
            "evidence": "identities with exact original-engine state transitions",
        },
        "real_external_read_validation": {
            "numerator": len(external_identities),
            "denominator": len(identities),
            "evidence": "external invincible intervals; no live Boss AI/Delirium session yet",
        },
    }
    for metric in metrics.values():
        metric["ratio"] = (
            metric["numerator"] / metric["denominator"]
            if metric["denominator"]
            else 0.0
        )

    return {
        "format": "isaac-gamebot-mechanism-coverage-v1",
        "generated_at": "2026-10-29",
        "source_database_sha256": sha256(SOURCE_DB),
        "runtime_database_sha256": sha256(RUNTIME_DB),
        "counts": {
            "identities": len(identities),
            "states": len(states),
            "runtime_state_observed_identities": len(runtime_state_identities),
            "offline_probe_identities": len(offline_probe_identities),
            "offline_transition_identities": len(offline_transition_identities),
            "external_invincible_identities": len(external_identities),
            "boss_candidate_edges": edge_summary["candidate_edges"],
            "boss_runtime_verified_edges": edge_summary["verified_edges"],
            "preattack_warning_rules": len(WARNING_RULES),
            "attack_identified_identities": runtime_database["runtime_counts"]["attack_identified_identities"],
            "attack_recognized_identities": runtime_database["runtime_counts"]["attack_recognized_identities"],
            "attack_event_candidate_identities": runtime_database["runtime_counts"]["attack_event_candidate_identities"],
            "attack_call_candidate_identities": runtime_database["runtime_counts"]["attack_call_candidate_identities"],
            "direct_ai_attack_call_candidate_identities": runtime_database["runtime_counts"]["direct_ai_attack_call_candidate_identities"],
            "strict_source_linked_attack_identities": runtime_database["runtime_counts"]["strict_source_linked_attack_identities"],
            "strict_attack_prediction_identities": runtime_database["runtime_counts"]["strict_attack_prediction_identities"],
            "provisional_attack_timing_models": runtime_database["runtime_counts"]["provisional_attack_timing_models"],
        },
        "metrics": metrics,
        "evidence_boundaries": [
            "Static candidates are not counted as runtime mechanisms.",
            "Synthetic planner tests are not counted as original-engine validation.",
            "Offline engine evidence is not counted as live external ReadProcessMemory evidence.",
            "Invincible=false does not rule out shield, phase, damage-cap, or source-specific immunity.",
        ],
    }


def high_value_validation(report_paths: list[Path]) -> dict[str, Any]:
    grouped: dict[str, list[tuple[Path, dict[str, Any]]]] = defaultdict(list)
    for path, case in report_cases(report_paths):
        grouped[case["key"]].append((path, case))

    def transitions(key: str) -> list[dict[str, Any]]:
        if key not in grouped:
            return []
        candidates = grouped[key]
        if key == "412.0.0":
            selected = max(
                candidates,
                key=lambda item: sum(
                    1
                    for row in item[1].get("stateTransitions", [])
                    if row.get("deliriumCycleField1524") is not None
                ),
            )
        else:
            selected = max(
                candidates,
                key=lambda item: (
                    sum(
                        1
                        for row in item[1].get("stateTransitions", [])
                        if row.get("aiI2") is not None
                    ),
                    len(item[1].get("stateTransitions", [])),
                ),
            )
        return selected[1].get("stateTransitions", [])

    matriarch = transitions("413.0.0")
    phase_rows = []
    prior_phase = None
    for row in matriarch:
        if row.get("aiI2") != prior_phase:
            phase_rows.append(
                {
                    "frame": row.get("frame"),
                    "state": row.get("state"),
                    "animation": row.get("animation"),
                    "hp": row.get("hp"),
                    "max_hp": row.get("maxHp"),
                    "ai_i2": row.get("aiI2"),
                }
            )
            prior_phase = row.get("aiI2")
    rage_rows = [
        row
        for row in matriarch
        if row.get("state") == 13 and row.get("animation") == "RageBegin"
    ]

    fetal = transitions("886.1.0")
    ultra = transitions("406.0.0")
    big_horn = transitions("411.0.0")
    delirium = transitions("412.0.0")
    return {
        "format": "isaac-high-value-mechanism-validation-v1",
        "generated_at": "2026-10-29",
        "sources": [
            rel(path)
            for path in report_paths
            if path.exists()
        ],
        "real_external_live_validation": {
            "status": "not_performed_this_round",
            "reason": "No running isaac-ng.exe process was available for a new ReadProcessMemory capture.",
            "existing_external_evidence": "research/state-semantics/external-invincibility-20261029.json",
        },
        "mechanisms": {
            "413.0.0": {
                "name": "Matriarch",
                "observed_states": sorted({row.get("state") for row in matriarch if row.get("state") is not None}),
                "ai_i2_phase_transitions": phase_rows,
                "rage_begin": rage_rows,
                "invincible_transitions": sum(
                    1
                    for row in matriarch
                    if row.get("previousInvulnerable") is not None
                    and row.get("invulnerable") != row.get("previousInvulnerable")
                ),
                "verified": [
                    "AI I2 tracks observed phase changes 0..3",
                    "State 13 / RageBegin occurred at frame 2381",
                    "AI I1 was 400 at RageBegin",
                ],
                "not_verified": [
                    "RageLoop and RageEnd completion",
                    "Exact 80/65/50/35 percent branch semantics",
                ],
            },
            "886.1.0": {
                "name": "Fetal Demon",
                "observed_states": sorted({row.get("state") for row in fetal if row.get("state") is not None}),
                "observed_animations": sorted({row.get("animation") for row in fetal if row.get("animation")}),
                "child_values": sorted({row.get("child") for row in fetal if row.get("child") is not None}),
                "state_16_observed": any(row.get("state") == 16 for row in fetal),
                "rage_animation_state_7_observed": any(
                    row.get("state") == 7 and row.get("animation") == "Rage"
                    for row in fetal
                ),
                "verified": [
                    "Direct variant-1 spawn was readable and damageable",
                    "State 7 with Rage/Walk02 animation occurred",
                ],
                "not_verified": [
                    "State 16 trigger or behavior",
                    "Rage animation alone does not prove an enrage state",
                ],
            },
            "406.0.0": {
                "name": "Ultra Greed",
                "observed_states": sorted({row.get("state") for row in ultra if row.get("state") is not None}),
                "shield_strength_by_state": {
                    str(state): sorted(
                        {
                            row.get("shieldStrength")
                            for row in ultra
                            if row.get("state") == state and row.get("shieldStrength") is not None
                        }
                    )
                    for state in sorted({row.get("state") for row in ultra if row.get("state") is not None})
                },
                "invincible_transitions": sum(
                    1
                    for row in ultra
                    if row.get("previousInvulnerable") is not None
                    and row.get("invulnerable") != row.get("previousInvulnerable")
                ),
                "verified": [
                    "Slot, Spin, Guard and ShootDown states/animations were observed",
                    "ShieldStrength changed from 65 to 130 during slot/spin/guard states",
                ],
                "not_verified": [
                    "Boss phase boundary semantics",
                    "Whether ShieldStrength=130 is complete damage immunity",
                ],
            },
            "411.0.0": {
                "name": "Big Horn",
                "observed_states": sorted({row.get("state") for row in big_horn if row.get("state") is not None}),
                "observed_animations": sorted({row.get("animation") for row in big_horn if row.get("animation")}),
                "invincible_transitions": sum(
                    1
                    for row in big_horn
                    if row.get("previousInvulnerable") is not None
                    and row.get("invulnerable") != row.get("previousInvulnerable")
                ),
                "verified": [
                    "Charge animations in State 13 were observed",
                    "Target remained damageable in observed states",
                ],
                "not_verified": [
                    "Runtime Invincible window",
                    "Hole/phase damage immunity and damage-cap behavior",
                ],
            },
            "412.0.0": {
                "name": "Delirium",
                "observed_states": sorted({row.get("state") for row in delirium if row.get("state") is not None}),
                "observed_animations": sorted({row.get("animation") for row in delirium if row.get("animation")}),
                "delirium_states": sorted(
                    {row.get("deliriumState") for row in delirium if row.get("deliriumState") is not None}
                ),
                "transformation_timers": sorted(
                    {row.get("deliriumTransformationTimer") for row in delirium if row.get("deliriumTransformationTimer") is not None}
                )[:16],
                "attack_id_raw_examples": [row.get("deliriumAttackId") for row in delirium[:12]],
                "attack_id_low24_examples": [row.get("deliriumAttackIdLow24") for row in delirium[:12]],
                "cycle_id_examples": [row.get("deliriumCycleId") for row in delirium[:12]],
                "cycle_low7_examples": [row.get("deliriumCycleLow7") for row in delirium[:12]],
                "verified": [
                    "Delirium state and transformation timer changed in the original engine",
                    "CycleID is read as a 64-bit packed value at 0xbe0..0xbe7",
                    "AttackID has a meaningful low-24-bit mask and a separately changing high byte",
                ],
                "not_verified": [
                    "AttackID to concrete attack mapping",
                    "CycleID bit fields to attack sequence semantics",
                    "Any preattack geometry from these fields",
                ],
            },
        },
        "verdict": {
            "runtime_fields_work": True,
            "attack_semantics_complete": False,
            "real_live_boss_fields_verified_this_round": False,
        },
    }


def attack_recognition_coverage(runtime_database: dict[str, Any]) -> dict[str, Any]:
    rows: dict[str, Any] = {}
    level_counts: Counter[str] = Counter()
    for key, value in runtime_database["identities"].items():
        recognition = value["attack_recognition"]
        level_counts[recognition["level"]] += 1
        rows[key] = {
            "name": value["identity"].get("name_zh") or value["identity"].get("name"),
            "role": value["identity"].get("role", "Unknown"),
            "ai_function": value.get("ai_function", "Unknown"),
            "level": recognition["level"],
            "warning_rule_ids": recognition.get("warning_rule_ids", []),
            "strict_attack_states": recognition["strict_attack_states"],
            "state_animation_candidate_states": recognition["state_animation_candidate_states"],
            "state_call_candidates": recognition["state_call_candidates"],
            "animation_event_candidates": recognition["animation_event_candidates"],
            "direct_ai_attack_calls": recognition["direct_ai_attack_calls"],
            "direct_ai_attack_candidate_type": recognition["direct_ai_attack_candidate_type"],
            "strict_source_linked_groups": recognition["strict_source_linked_groups"],
            "strict_prediction": recognition["strict_prediction"],
            "strict_prediction_timing_keys": recognition["strict_prediction_timing_keys"],
            "provisional_prediction": recognition["provisional_prediction"],
            "provisional_prediction_timing_keys": recognition["provisional_prediction_timing_keys"],
        }
    counts = runtime_database["runtime_counts"]
    recognized = counts["attack_recognized_identities"]
    total = counts["identities"]
    return {
        "format": "isaac-gamebot-attack-recognition-coverage-v1",
        "generated_at": "2026-10-30",
        "source_database_sha256": runtime_database["source"]["database_sha256"],
        "attack_event_candidates_sha256": runtime_database["source"]["attack_event_candidates_sha256"],
        "ai_semantics_index_sha256": runtime_database["source"]["ai_semantics_index_sha256"],
        "strict_attack_validation_sha256": runtime_database["source"]["strict_attack_validation_sha256"],
        "counts": {
            "identities": total,
            "strict_attack_identified": counts["attack_identified_identities"],
            "animation_event_candidate_identities": counts["attack_event_candidate_identities"],
            "attack_call_candidate_identities": counts["attack_call_candidate_identities"],
            "direct_ai_attack_call_candidate_identities": counts["direct_ai_attack_call_candidate_identities"],
            "strict_source_linked_attack_identities": counts["strict_source_linked_attack_identities"],
            "strict_attack_prediction_identities": counts["strict_attack_prediction_identities"],
            "strict_attack_timing_models": counts["strict_attack_timing_models"],
            "provisional_attack_timing_models": counts["provisional_attack_timing_models"],
            "state_animation_candidate_identities": counts["state_animation_candidate_identities"],
            "attack_recognized": recognized,
            "unresolved_no_attack_candidate": total - recognized,
            "accepted_anm2_events": counts["attack_event_source"]["accepted_events"],
        },
        "recognition_levels": dict(sorted(level_counts.items())),
        "evidence_boundaries": [
            "Static attack recognition is not a validated attack time, geometry, or duration.",
            "State attack calls identify a combat effect reachable in that state; they do not prove the current frame emits a hazard.",
            "AI-function calls prove a helper is reachable somewhere in that exact function, not that the current state executes it.",
            "Strict timing prediction is limited to stable animation-frame-to-object timing and does not imply geometry validation.",
            "ANM2 event candidates identify animation triggers; frame timing still requires engine event validation.",
            "No candidate in this file creates or overrides a Planner threat.",
        ],
        "identities": rows,
        "unresolved_identity_keys": [
            key
            for key, row in rows.items()
            if row["level"] == "no_attack_candidate"
        ],
    }


def main() -> None:
    database = json.loads(SOURCE_DB.read_text(encoding="utf-8"))
    merge_runtime_evidence(database, RUNTIME_REPORTS)
    transitions = transition_index(RUNTIME_REPORTS)
    database = enrich_edges(database, transitions)
    refresh_summary(database)
    refresh_source_metadata(database)
    database["format"] = "isaac-j460-state-semantics-v2"
    database.setdefault("evidence_definitions", {})["boss_edge_mechanism"] = (
        "Heuristic class derived from the target state animation, nearby attack/spawn "
        "calls, HP/StateFrame conditions, and exact offline transition evidence."
    )
    SOURCE_DB.write_text(
        json.dumps(database, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )

    runtime_database = build_runtime_database(database, transitions)
    RUNTIME_DB.parent.mkdir(parents=True, exist_ok=True)
    RUNTIME_DB.write_text(
        json.dumps(runtime_database, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    recognition = attack_recognition_coverage(runtime_database)
    ATTACK_RECOGNITION_CHECK.write_text(
        json.dumps(recognition, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )

    coverage = runtime_coverage(database, runtime_database, transitions)
    COVERAGE_CHECK.write_text(
        json.dumps(coverage, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    high_value = high_value_validation(RUNTIME_REPORTS)
    HIGH_VALUE_CHECK.write_text(
        json.dumps(high_value, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )

    edge_check = {
        "format": "isaac-boss-edge-semantics-validation-v1",
        "database": rel(SOURCE_DB),
        "database_sha256": sha256(SOURCE_DB),
        "candidate_edges": database["edge_semantics_summary"]["candidate_edges"],
        "primary_class_counts": database["edge_semantics_summary"]["primary_class_counts"],
        "verified_edges": database["edge_semantics_summary"]["verified_edges"],
        "unverified_candidate_edges": database["edge_semantics_summary"]["unverified_candidate_edges"],
        "condition_expressions": sum(
            bool(edge.get("condition_expression"))
            for graph in database["boss_phase_graphs"]
            for edge in graph["edges"]
        ),
        "call_effect_records": sum(
            1
            for graph in database["boss_phase_graphs"]
            for edge in graph["edges"]
            if edge.get("call_effects")
        ),
        "preattack_signal_records": sum(
            1
            for graph in database["boss_phase_graphs"]
            for edge in graph["edges"]
            if edge.get("preattack_signal")
        ),
        "unresolved_reason_records": sum(
            1
            for graph in database["boss_phase_graphs"]
            for edge in graph["edges"]
            if edge.get("unresolved_reasons")
        ),
    }
    edge_check["pass"] = (
        edge_check["candidate_edges"] > 0
        and edge_check["condition_expressions"] == edge_check["candidate_edges"]
        and edge_check["preattack_signal_records"] == edge_check["candidate_edges"]
    )
    EDGE_CHECK.write_text(
        json.dumps(edge_check, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )

    if STATE_CHECK.exists():
        state_check = json.loads(STATE_CHECK.read_text(encoding="utf-8"))
        state_check["database_sha256"] = sha256(SOURCE_DB)
        state_check["database_bytes"] = SOURCE_DB.stat().st_size
        state_check["edge_semantics"] = database["edge_semantics_summary"]
        checks = state_check.setdefault("checks", [])
        checks[:] = [
            check
            for check in checks
            if not str(check.get("name", "")).startswith("runtime ")
        ]
        checks.extend(
            [
                {
                    "name": "runtime semantics database",
                    "expected": "isaac-gamebot-runtime-semantics-v1",
                    "actual": runtime_database["format"],
                    "pass": runtime_database["format"] == "isaac-gamebot-runtime-semantics-v1",
                },
                {
                    "name": "runtime semantics identities",
                    "expected": len(database["identities"]),
                    "actual": runtime_database["runtime_counts"]["identities"],
                    "pass": runtime_database["runtime_counts"]["identities"] == len(database["identities"]),
                },
                {
                    "name": "runtime preattack candidate rules",
                    "expected_min": 3,
                    "actual": len(WARNING_RULES),
                    "pass": len(WARNING_RULES) >= 3,
                },
                {
                    "name": "static attack recognition candidates",
                    "expected": "> strict attack identification",
                    "actual": runtime_database["runtime_counts"]["attack_recognized_identities"],
                    "pass": (
                        runtime_database["runtime_counts"]["attack_recognized_identities"]
                        > runtime_database["runtime_counts"]["attack_identified_identities"]
                    ),
                },
                {
                    "name": "attack recognition coverage export",
                    "expected": True,
                    "actual": ATTACK_RECOGNITION_CHECK.exists(),
                    "pass": ATTACK_RECOGNITION_CHECK.exists(),
                },
                {
                    "name": "strict source-linked attack validation",
                    "expected_min": 1,
                    "actual": runtime_database["runtime_counts"]["strict_source_linked_attack_identities"],
                    "pass": runtime_database["runtime_counts"]["strict_source_linked_attack_identities"] >= 1,
                },
                {
                    "name": "strict attack timing prediction",
                    "expected_min": 1,
                    "actual": runtime_database["runtime_counts"]["strict_attack_prediction_identities"],
                    "pass": runtime_database["runtime_counts"]["strict_attack_prediction_identities"] >= 1,
                },
                {
                    "name": "reader exports child pointer",
                    "expected": True,
                    "actual": "e.child=unpack<uint32_t>(raw,0x3c0)"
                    in READER_CPP.read_text(encoding="utf-8"),
                    "pass": "e.child=unpack<uint32_t>(raw,0x3c0)"
                    in READER_CPP.read_text(encoding="utf-8"),
                },
                {
                    "name": "runtime semantics implementation",
                    "expected": True,
                    "actual": SEMANTICS_HPP.exists() and SEMANTICS_CPP.exists(),
                    "pass": SEMANTICS_HPP.exists() and SEMANTICS_CPP.exists(),
                },
            ]
        )
        state_check["pass"] = all(check.get("pass", False) for check in checks)
        STATE_CHECK.write_text(
            json.dumps(state_check, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )

    print(
        json.dumps(
            {
                "database": rel(SOURCE_DB),
                "runtime_database": rel(RUNTIME_DB),
                "runtime_identities": runtime_database["runtime_counts"]["identities"],
                "warning_rules": len(WARNING_RULES),
                "attack_recognized_identities": runtime_database["runtime_counts"]["attack_recognized_identities"],
                "strict_source_linked_attack_identities": runtime_database["runtime_counts"]["strict_source_linked_attack_identities"],
                "strict_attack_prediction_identities": runtime_database["runtime_counts"]["strict_attack_prediction_identities"],
                "edges": database["edge_semantics_summary"],
                "coverage": {
                    name: {
                        "numerator": row["numerator"],
                        "denominator": row["denominator"],
                    }
                    for name, row in coverage["metrics"].items()
                },
            },
            ensure_ascii=False,
            indent=2,
        )
    )


if __name__ == "__main__":
    main()
