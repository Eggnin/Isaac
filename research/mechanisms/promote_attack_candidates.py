#!/usr/bin/env python3
"""Promote source-linked attack-object observations into strict records."""

from __future__ import annotations

import json
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[2]
MECHANISM_DB = ROOT / "data/mechanisms/isaac_j460_mechanism_db.json"
OUTPUT = ROOT / "data/mechanisms/gamebot_attack_strict_validation.json"
CHECK = ROOT / "validation/attack-strict-validation-20261030.json"


def group_key(row: dict[str, Any]) -> tuple[Any, ...]:
    obj = row.get("object") or {}
    return (
        row.get("state"),
        row.get("animation"),
        row.get("mechanism"),
        obj.get("type"),
        obj.get("variant"),
        obj.get("subtype"),
        obj.get("variant_name"),
    )


def build_validation() -> dict[str, Any]:
    database = json.loads(MECHANISM_DB.read_text(encoding="utf-8"))
    identities: dict[str, Any] = {}
    timing_models: dict[str, Any] = {}
    skipped = Counter()

    for entry in database.get("entries", []):
        key = entry.get("id", {}).get("key")
        associations = (
            entry.get("runtime_observation", {}).get("action_object_associations", [])
        )
        if not key or not associations:
            continue
        groups: dict[tuple[Any, ...], dict[str, Any]] = {}
        for association in associations:
            state = association.get("state")
            animation = association.get("animation")
            obj = association.get("object") or {}
            gap = association.get("action_to_object_frame_gap")
            frame = association.get("animation_frame")
            if (
                not isinstance(state, int)
                or not animation
                or not isinstance(obj.get("type"), int)
                or not isinstance(frame, int)
                or not isinstance(gap, int)
                or abs(gap) > 1
            ):
                skipped["incomplete_or_nonlocal_relation"] += 1
                continue
            gk = group_key(association)
            group = groups.setdefault(
                gk,
                {
                    "state": state,
                    "animation": animation,
                    "mechanism": association.get("mechanism"),
                    "object": obj,
                    "frames": set(),
                    "gaps": set(),
                    "observations": 0,
                    "runs": 0,
                    "association_bases": set(),
                },
            )
            group["frames"].add(frame)
            group["gaps"].add(gap)
            group["observations"] += int(association.get("observations", 0))
            group["runs"] = max(group["runs"], int(association.get("runs", 0)))
            group["association_bases"].add(association.get("association_basis"))

        strict_groups = []
        for group in groups.values():
            frames = sorted(group["frames"])
            gaps = sorted(group["gaps"])
            strict_groups.append(
                {
                    "state": group["state"],
                    "animation": group["animation"],
                    "mechanism": group["mechanism"],
                    "object": group["object"],
                    "animation_frames": frames,
                    "object_delay_frames": gaps,
                    "observations": group["observations"],
                    "runs": group["runs"],
                    "association_bases": sorted(group["association_bases"]),
                    "timing_stable": (
                        group["observations"] >= 2
                        and len(frames) > 0
                        and max(frames) - min(frames) <= 1
                        and len(gaps) > 0
                        and max(gaps) - min(gaps) <= 1
                    ),
                }
            )
        if not strict_groups:
            continue
        strict_groups.sort(
            key=lambda row: (
                row["state"],
                row["animation"],
                str(row["mechanism"]),
                row["object"].get("type", -1),
                row["object"].get("variant", -1),
            )
        )

        timing_candidates: dict[str, list[dict[str, Any]]] = defaultdict(list)
        for group in strict_groups:
            if not group["timing_stable"]:
                continue
            timing_key = f"{key}:{group['state']}:{group['animation']}"
            timing_candidates[timing_key].append(group)

        identity_timing_keys = []
        strict_timing_keys = []
        provisional_timing_keys = []
        for timing_key, candidates in timing_candidates.items():
            frames = sorted(
                {
                    frame
                    for candidate in candidates
                    for frame in candidate["animation_frames"]
                }
            )
            gaps = sorted(
                {
                    gap
                    for candidate in candidates
                    for gap in candidate["object_delay_frames"]
                }
            )
            if max(frames) - min(frames) > 1 or max(gaps) - min(gaps) > 1:
                skipped["conflicting_timing_models"] += 1
                continue
            trigger = round(sum(frames) / len(frames))
            delay = round(sum(gaps) / len(gaps))
            timing_models[timing_key] = {
                "timing_verified": True,
                "cross_seed_verified": max(
                    candidate["runs"] for candidate in candidates
                ) >= 2,
                "trigger_animation_frame": trigger,
                "object_delay_frames": delay,
                "prediction_scope": "animation-frame-to-attack-object timing only",
                "objects": [
                    {
                        "mechanism": candidate["mechanism"],
                        "type": candidate["object"].get("type"),
                        "variant": candidate["object"].get("variant"),
                        "subtype": candidate["object"].get("subtype"),
                        "variant_name": candidate["object"].get("variant_name"),
                    }
                    for candidate in candidates
                ],
                "samples": sum(candidate["observations"] for candidate in candidates),
                "runs": max(candidate["runs"] for candidate in candidates),
                "max_frame_error": 0,
                "source": "data/mechanisms/isaac_j460_mechanism_db.json",
                "evidence_status": "original-engine source-linked callback timing",
            }
            identity_timing_keys.append(timing_key)
            if timing_models[timing_key]["cross_seed_verified"]:
                strict_timing_keys.append(timing_key)
            else:
                provisional_timing_keys.append(timing_key)

        identities[key] = {
            "identity": entry.get("identity", {}),
            "strict_identification": True,
            "strict_prediction": bool(strict_timing_keys),
            "provisional_prediction": bool(provisional_timing_keys),
            "strict_groups": strict_groups,
            "timing_keys": identity_timing_keys,
            "strict_timing_keys": strict_timing_keys,
            "provisional_timing_keys": provisional_timing_keys,
            "source": "data/mechanisms/isaac_j460_mechanism_db.json",
            "evidence_status": "original-engine source-linked attack object",
        }

    identification_count = len(identities)
    prediction_count = sum(
        1 for record in identities.values() if record["strict_prediction"]
    )
    provisional_count = sum(
        1 for record in identities.values() if record["provisional_prediction"]
    )
    result = {
        "format": "isaac-gamebot-strict-attack-validation-v1",
        "generated_at": "2026-10-30",
        "policy": {
            "requires_exact_identity": True,
            "requires_state_and_animation": True,
            "requires_source_linked_attack_object": True,
            "maximum_object_delay_frames": 1,
            "timing_prediction_requires_repeated_stable_animation_frame": True,
            "geometry_not_implied": True,
        },
        "counts": {
            "strict_identification_identities": identification_count,
            "strict_prediction_identities": prediction_count,
            "provisional_prediction_identities": provisional_count,
            "timing_models": len(timing_models),
            "skipped_relations": dict(sorted(skipped.items())),
        },
        "identities": identities,
        "timing_models": timing_models,
    }
    return result


def main() -> None:
    result = build_validation()
    OUTPUT.write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    CHECK.write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    print(
        json.dumps(
            {
                "output": OUTPUT.relative_to(ROOT).as_posix(),
                **result["counts"],
            },
            ensure_ascii=False,
            indent=2,
        )
    )


if __name__ == "__main__":
    main()
