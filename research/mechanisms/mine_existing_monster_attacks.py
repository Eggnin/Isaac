"""Mine existing original-engine logs for source-linked normal-monster attack objects.

This is the monster-scope counterpart of mine_existing_boss_attacks.py. It only
re-reads logs that already exist under sessions/ and validation/; it does not start
the game, install mods, teleport, or spawn test rooms.

Only EntityConfigs with role=monster are considered. All 322 monster identities are
scanned, including ones already promoted, so additional timing keys can be recorded
without changing the promotion policy.
"""
from __future__ import annotations

import argparse
import csv
import hashlib
import json
import shutil
import sys
from collections import Counter
from pathlib import Path
from typing import Any

import mine_existing_boss_attacks as base

ROOT = Path(__file__).resolve().parents[2]
CATALOG = ROOT / "data/npc/engine_npc_entity_catalog.tsv"
MECHANISM_DB = ROOT / "data/mechanisms/isaac_j460_mechanism_db.json"
OUTPUT = ROOT / "data/mechanisms/gamebot_session_monster_attack_associations.json"
REPORT = ROOT / "validation/monster-existing-log-strict-promotions-20261030.json"


def load_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest().upper()


def read_monster_candidates() -> dict[tuple[int, int, int], str]:
    with CATALOG.open(encoding="utf-8-sig", newline="") as handle:
        rows = list(csv.DictReader(handle, delimiter="\t"))
    candidates: dict[tuple[int, int, int], str] = {}
    for row in rows:
        if row.get("role") != "monster":
            continue
        key = row.get("key")
        if not key:
            continue
        candidates[tuple(map(int, key.split(".")))] = key
    assert len(candidates) == 322, "monster catalog must contain 322 unique identities"
    return candidates


def apply_to_mechanism_db(records: list[dict[str, Any]]) -> tuple[dict[str, Any], list[str]]:
    database = load_json(MECHANISM_DB)
    by_key: dict[str, list[dict[str, Any]]] = {}
    for record in records:
        if record["strict_recognition"]:
            by_key.setdefault(record["key"], []).append(record)
    touched: set[str] = set()
    for entry in database.get("entries", []):
        key = entry.get("id", {}).get("key")
        if key not in by_key:
            continue
        observation = entry.setdefault("runtime_observation", {})
        associations = observation.setdefault("action_object_associations", [])
        associations[:] = [
            item
            for item in associations
            if item.get("evidence_source") != "existing-monster-session-logs"
        ]
        for record in by_key[key]:
            for frame_text, count in record["frame_counts"].items():
                frame = int(round(float(frame_text)))
                gap = record["object_delay_frames"][0]
                associations.append(
                    {
                        "state": record["state"],
                        "animation": record["animation"],
                        "candidate_family": "observed_source_linked",
                        "state_frame": 0,
                        "animation_frame": frame,
                        "mechanism": record["mechanism"],
                        "object": record["object"],
                        "action_to_object_frame_gap": gap,
                        "association_basis": (
                            "same_frame" if gap == 0 else "previous_frame_state"
                        ),
                        "confidence": "source_linked_temporal_cooccurrence",
                        "observations": count,
                        "runs": max(1, record["seed_count"]),
                        "evidence_source": "existing-monster-session-logs",
                        "evidence_runs": record["run_ids"][:5],
                        "evidence_seeds": record["seeds"],
                    }
                )
        touched.add(key)
    return database, sorted(touched)


def source_files() -> list[Path]:
    """Every existing log using the current full-frame schema."""
    files: list[Path] = []
    if base.SESSIONS.exists():
        files.extend(sorted(base.SESSIONS.glob("*/frames-*.jsonl")))
    releases = ROOT / "releases"
    if releases.exists():
        files.extend(sorted(releases.glob("**/sessions/*/frames-*.jsonl")))
    if base.VALIDATION.exists():
        files.extend(sorted(base.VALIDATION.glob("**/*windows*.jsonl")))
    return files


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--apply", action="store_true", help="append mined associations to the mechanism database"
    )
    parser.add_argument("--limit", type=int, default=0, help="debug: limit number of files")
    args = parser.parse_args()

    candidates = read_monster_candidates()
    names = base.effect_names()
    files = source_files()
    if args.limit:
        files = files[: args.limit]
    print(
        f"scanning {len(files)} existing log files for {len(candidates)} monster identities",
        file=sys.stderr,
    )
    records, seen, seconds = base.scan(files, candidates, names)
    strict_recognition = [record for record in records if record["strict_recognition"]]
    strict_prediction = [record for record in records if record["strict_prediction"]]
    provisional = [record for record in records if record["provisional_prediction"]]
    output = {
        "format": "isaac-gamebot-existing-log-monster-attack-associations-v1",
        "generated_at": "2026-10-30",
        "scope": "offline validation of existing original-engine session/validation logs; no new game run",
        "policy": {
            "exact_identity": True,
            "role": "monster",
            "source_link_required": True,
            "maximum_object_delay_frames": 1,
            "minimum_observations_for_strict_recognition": 1,
            "strict_prediction_requires_two_distinct_run_seeds": True,
            "same_seed_runs_are_provisional_only": True,
        },
        "source_catalog_sha256": sha256(CATALOG),
        "sources": {
            "files": len(files),
            "sessions": sum(1 for path in files if path.parts[-3] == "sessions"),
            "validation_windows": sum(1 for path in files if path.parts[-3] != "sessions"),
            "scan_seconds": seconds,
        },
        "counts": {
            "candidate_identities": len(candidates),
            "identities_seen": len(seen),
            "association_groups": len(records),
            "strict_recognition_identities": len({r["key"] for r in strict_recognition}),
            "strict_prediction_identities": len({r["key"] for r in strict_prediction}),
            "provisional_identities": len({r["key"] for r in provisional}),
        },
        "seen_identities": dict(sorted(seen.items())),
        "records": records,
    }
    OUTPUT.write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    def slim(rows: list[dict[str, Any]]) -> list[dict[str, Any]]:
        keys = (
            "key",
            "state",
            "animation",
            "mechanism",
            "object",
            "animation_frames",
            "observations",
            "runs",
            "run_ids",
            "seeds",
            "seed_count",
        )
        return [{key: row[key] for key in keys} for row in rows]

    report = {
        "format": "isaac-gamebot-monster-existing-log-promotions-v1",
        "generated_at": "2026-10-30",
        "source": OUTPUT.relative_to(ROOT).as_posix(),
        "counts": output["counts"],
        "strict_recognition": slim(strict_recognition),
        "strict_prediction": slim(strict_prediction),
        "provisional": slim(provisional),
        "evidence_files": sorted({run for record in records for run in record["run_ids"]}),
    }
    REPORT.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    if args.apply:
        backup = Path(str(MECHANISM_DB) + ".before-monster-mining")
        shutil.copy2(MECHANISM_DB, backup)
        touched = apply_to_mechanism_db(records)
        database, touched = touched
        MECHANISM_DB.write_text(
            json.dumps(database, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )
        print(f"applied to {len(touched)} identities; backup {backup}", file=sys.stderr)

    print(json.dumps(output["counts"], ensure_ascii=False))
    print(f"Wrote {OUTPUT}")
    print(f"Wrote {REPORT}")


if __name__ == "__main__":
    main()
