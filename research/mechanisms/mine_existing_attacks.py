"""Mine existing original-engine logs for source-linked boss attack objects.

This is offline validation of observations that already exist. It does not start the
game, install mods, teleport, or spawn test rooms. Only exact Type/Variant/Subtype
matches from the 119 static boss candidates are considered.

The script can optionally append the mined associations to the mechanism database so
the existing promotion and runtime-semantics generators can consume them.
"""
from __future__ import annotations

import argparse
import csv
import io
import json
import shutil
import sys
import time
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parents[2]
SESSIONS = ROOT / "sessions"
VALIDATION = ROOT / "validation"
NPC_CATALOG = ROOT / "data/npc/engine_npc_entity_catalog.tsv"
RUNTIME = ROOT / "data/mechanisms/gamebot_runtime_semantics.json"
MECHANISM_DB = ROOT / "data/mechanisms/isaac_j460_mechanism_db.json"
ENUMS = ROOT / "python/src/engine_enums.json"

OUTPUTS = {
    "boss": (ROOT / "data/mechanisms/gamebot_session_attack_associations.json",
             ROOT / "validation/boss-existing-log-strict-promotions-20261030.json"),
    "monster": (ROOT / "data/mechanisms/gamebot_session_monster_attack_associations.json",
                ROOT / "validation/monster-existing-log-strict-promotions-20261030.json"),
}

ATTACK_EFFECTS = {
    "BOMB_EXPLOSION", "TARGET", "BROKEN_SHOVEL_SHADOW", "MOM_FOOT_STOMP", "MOMS_HAND",
    "ROCKET", "SMALL_ROCKET", "CRACK_THE_SKY", "ENEMY_BRIMSTONE_SWIRL", "HUSH_LASER",
    "HUSH_LASER_UP", "SHOCKWAVE", "SHOCKWAVE_DIRECTIONAL", "SHOCKWAVE_RANDOM",
    "BIG_CRACKWAVE", "MOTHER_SHOCKWAVE", "FIRE_JET", "FIRE_WAVE", "HOT_BOMB_FIRE",
    "DARK_BALL_SMOKE_PARTICLE", "SMOKE_CLOUD", "BROWN_CLOUD",
}
ATTACK_EFFECT_PREFIXES = (
    "CREEP_", "FIRE_", "SHOCKWAVE", "CRACKWAVE", "ROCKET", "MOM_FOOT",
    "MOMS_HAND", "HUSH_LASER", "LASER_",
)
NON_ATTACK_ANIMATIONS = (
    "idle", "walk", "fly", "appear", "disappear", "death", "dead", "die",
    "hit", "hurt", "takehit", "stun", "recover",
)


def load_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def read_candidates(role: str, report_path: Path) -> dict[tuple[int, int, int], str]:
    with NPC_CATALOG.open(encoding="utf-8", newline="") as handle:
        rows = list(csv.DictReader(handle, delimiter="\t"))
    runtime = load_json(RUNTIME)
    candidates = {}
    for row in rows:
        if row["role"] != role or row["strict_attack_recognition"] != "no":
            continue
        level = ((runtime.get("identities", {}).get(row["key"]) or {})
                 .get("attack_recognition", {}).get("level"))
        if level and level != "no_attack_candidate":
            candidates[tuple(map(int, row["key"].split(".")))] = row["key"]
    # Keep re-mining identities promoted by a previous run so same-seed evidence can
    # be corrected without changing their strict-recognition status. Use the mechanism
    # database marker instead of the report, otherwise an old report could re-introduce
    # identities that were already strict before this miner existed.
    if MECHANISM_DB.exists():
        try:
            database = load_json(MECHANISM_DB)
            for entry in database.get("entries", []):
                key = entry.get("id", {}).get("key")
                if not key:
                    continue
                identity = entry.get("identity") or {}
                if identity.get("role") != role:
                    continue
                associations = (entry.get("runtime_observation") or {}).get("action_object_associations") or []
                if any(item.get("evidence_source") == "existing-session-logs" for item in associations):
                    candidates[tuple(map(int, key.split(".")))] = key
        except Exception:
            pass
    return candidates


def effect_names() -> dict[int, str]:
    enums = load_json(ENUMS)
    return {value: name for name, value in (enums.get("EffectVariant") or {}).items()}


def mechanism(entity: dict[str, Any], names: dict[int, str]) -> str | None:
    entity_type = entity.get("type")
    if entity_type == 9:
        return "projectile_emission"
    if entity_type == 7:
        return "laser_emission"
    if entity_type == 4:
        return "bomb_emission"
    if entity_type == 1000:
        name = names.get(entity.get("variant"), "")
        if name in ATTACK_EFFECTS or name.startswith(ATTACK_EFFECT_PREFIXES):
            return "attack_effect"
        return None
    if isinstance(entity_type, int) and 10 <= entity_type <= 999:
        return "summon_or_split_relation"
    return None


def attack_animation(animation: str | None) -> bool:
    text = (animation or "").lower()
    return bool(text) and not any(token in text for token in NON_ATTACK_ANIMATIONS)


def frame_source(path: Path, line: str) -> dict[str, Any] | None:
    try:
        outer = json.loads(line)
    except Exception:
        return None
    if "frame_json" in outer:
        try:
            frame = json.loads(outer["frame_json"])
        except Exception:
            return None
    else:
        frame = outer.get("frame")
    if not isinstance(frame, dict) or not frame.get("valid"):
        return None
    return frame


def source_files() -> list[Path]:
    files = []
    if SESSIONS.exists():
        files.extend(sorted(SESSIONS.glob("*/frames-*.jsonl")))
    if VALIDATION.exists():
        files.extend(sorted(VALIDATION.glob("**/*windows*.jsonl")))
    return files


def run_seed(path: Path, cache: dict[Path, str | None]) -> str | None:
    directory = path.parent
    if directory not in cache:
        seed = None
        report = directory / "report.json"
        if report.exists():
            try:
                seed = load_json(report).get("seed")
            except Exception:
                seed = None
        cache[directory] = seed
    return cache[directory]


def scan(files: list[Path], candidates: dict[tuple[int, int, int], str], names: dict[int, str]):
    groups: dict[tuple[Any, ...], dict[str, Any]] = {}
    seen_boss = Counter()
    seed_cache: dict[Path, str | None] = {}
    started = time.time()
    for path in files:
        run = path.relative_to(ROOT).as_posix()
        seed = run_seed(path, seed_cache)
        previous_addresses: set[int] = set()
        previous_bosses: dict[int, dict[str, Any]] = {}
        room = None
        with path.open(encoding="utf-8") as handle:
            for line in handle:
                frame = frame_source(path, line)
                if frame is None:
                    continue
                current_room = frame.get("room")
                if current_room != room:
                    previous_addresses = set()
                    previous_bosses = {}
                    room = current_room
                entities = frame.get("entities") or []
                by_address = {entity.get("address"): entity for entity in entities}
                bosses: dict[int, dict[str, Any]] = {}
                for entity in entities:
                    identity = (entity.get("type"), entity.get("variant"), entity.get("subtype"))
                    if identity in candidates:
                        bosses[entity.get("address")] = entity
                        seen_boss[candidates[identity]] += 1
                for entity in entities:
                    address = entity.get("address")
                    if address in previous_addresses:
                        continue
                    source_address = None
                    source_basis = None
                    if entity.get("parent_in_snapshot") and entity.get("parent") in bosses:
                        source_address = entity["parent"]
                        source_basis = "parent"
                    elif entity.get("spawner_in_snapshot") and entity.get("spawner") in bosses:
                        source_address = entity["spawner"]
                        source_basis = "spawner"
                    if source_address is None:
                        continue
                    boss = bosses[source_address]
                    boss_key = candidates[(boss.get("type"), boss.get("variant"), boss.get("subtype"))]
                    object_identity = (entity.get("type"), entity.get("variant"), entity.get("subtype"))
                    if object_identity == (boss.get("type"), boss.get("variant"), boss.get("subtype")):
                        continue
                    object_mechanism = mechanism(entity, names)
                    if object_mechanism is None or not attack_animation(boss.get("animation")):
                        continue
                    birth = entity.get("birth")
                    clock = frame.get("clock")
                    gap = None
                    action = boss
                    if isinstance(birth, int) and isinstance(clock, int):
                        if birth == clock:
                            gap = 0
                        elif birth == clock - 1:
                            gap = 1
                            previous = previous_bosses.get(source_address)
                            if previous:
                                action = previous
                    if gap is None:
                        continue
                    group_key = (
                        boss_key, action.get("state"), action.get("animation"),
                        object_mechanism, object_identity[0], object_identity[1], object_identity[2],
                    )
                    group = groups.setdefault(group_key, {
                        "key": boss_key,
                        "state": action.get("state"),
                        "animation": action.get("animation"),
                        "mechanism": object_mechanism,
                        "object": {
                            "type": object_identity[0],
                            "variant": object_identity[1],
                            "subtype": object_identity[2],
                            "variant_name": None,
                        },
                        "frame_counts": Counter(),
                        "gaps": set(),
                        "runs": set(),
                        "seeds": set(),
                        "rooms": set(),
                        "bases": set(),
                        "examples": [],
                    })
                    group["frame_counts"][action.get("animation_frame")] += 1
                    group["gaps"].add(gap)
                    group["runs"].add(run)
                    if seed:
                        group["seeds"].add(seed)
                    group["rooms"].add(current_room)
                    group["bases"].add(source_basis)
                    if len(group["examples"]) < 3:
                        group["examples"].append({
                            "run": run,
                            "room": current_room,
                            "clock": clock,
                            "boss_frame": action.get("animation_frame"),
                            "object_birth": birth,
                            "source_basis": source_basis,
                        })
                previous_addresses = set(by_address)
                previous_bosses = {
                    address: {
                        "state": entity.get("state"),
                        "animation": entity.get("animation"),
                        "animation_frame": entity.get("animation_frame"),
                    }
                    for address, entity in bosses.items()
                }
    records = []
    for group_key, group in groups.items():
        frames = sorted(frame for frame in group["frame_counts"] if isinstance(frame, (int, float)))
        observations = sum(group["frame_counts"].values())
        runs = len(group["runs"])
        seed_count = len(group["seeds"])
        gaps = sorted(group["gaps"])
        timing_stable = (
            observations >= 2
            and bool(frames)
            and max(frames) - min(frames) <= 1
            and len(gaps) == 1
        )
        records.append({
            "key": group["key"],
            "state": group["state"],
            "animation": group["animation"],
            "mechanism": group["mechanism"],
            "object": group["object"],
            "animation_frames": frames,
            "frame_counts": {str(frame): count for frame, count in sorted(group["frame_counts"].items())},
            "object_delay_frames": gaps,
            "observations": observations,
            "runs": runs,
            "run_ids": sorted(group["runs"]),
            "seeds": sorted(group["seeds"]),
            "seed_count": seed_count,
            "rooms": len(group["rooms"]),
            "association_bases": sorted(group["bases"]),
            "timing_stable": timing_stable,
            "strict_recognition": observations >= 1,
            "strict_prediction": timing_stable and seed_count >= 2,
            "provisional_prediction": timing_stable and seed_count <= 1,
            "examples": group["examples"],
        })
    records.sort(key=lambda item: (item["key"], item["state"] if isinstance(item["state"], int) else -1,
                                   item["animation"] or "", item["mechanism"]))
    return records, seen_boss, round(time.time() - started, 1)


def apply_to_mechanism_db(records: list[dict[str, Any]], role: str) -> dict[str, Any]:
    database = load_json(MECHANISM_DB)
    by_key: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for record in records:
        if record["strict_recognition"]:
            by_key[record["key"]].append(record)
    touched = set()
    for entry in database.get("entries", []):
        identity = entry.get("identity") or {}
        if identity.get("role") != role:
            continue
        observation = entry.setdefault("runtime_observation", {})
        associations = observation.setdefault("action_object_associations", [])
        # Clear this role's previous session-mined layer before rebuilding it. This
        # also removes stale markers from older mining attempts.
        associations[:] = [
            item for item in associations
            if not str(item.get("evidence_source", "")).endswith("session-logs")
        ]
        key = entry.get("id", {}).get("key")
        if key not in by_key:
            continue
        for record in by_key[key]:
            for frame_text, count in record["frame_counts"].items():
                frame = int(round(float(frame_text)))
                gap = record["object_delay_frames"][0]
                associations.append({
                    "state": record["state"],
                    "animation": record["animation"],
                    "candidate_family": "observed_source_linked",
                    "state_frame": 0,
                    "animation_frame": frame,
                    "mechanism": record["mechanism"],
                    "object": record["object"],
                    "action_to_object_frame_gap": gap,
                    "association_basis": "same_frame" if gap == 0 else "previous_frame_state",
                    "confidence": "source_linked_temporal_cooccurrence",
                    "observations": count,
                    "runs": max(1, record["seed_count"]),
                    "evidence_source": "existing-session-logs",
                    "evidence_runs": record["run_ids"][:5],
                    "evidence_seeds": record["seeds"],
                })
        touched.add(key)
    return {"database": database, "touched": sorted(touched)}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apply", action="store_true", help="append mined associations to the mechanism database")
    parser.add_argument("--limit", type=int, default=0, help="debug: limit number of files")
    parser.add_argument("--role", choices=sorted(OUTPUTS), default="boss", help="NPC role to mine")
    args = parser.parse_args()

    output_path, report_path = OUTPUTS[args.role]
    candidates = read_candidates(args.role, report_path)
    names = effect_names()
    files = source_files()
    if args.limit:
        files = files[:args.limit]
    print(f"scanning {len(files)} existing log files for {len(candidates)} {args.role} candidates", file=sys.stderr)
    records, seen_boss, seconds = scan(files, candidates, names)
    strict_recognition = [record for record in records if record["strict_recognition"]]
    strict_prediction = [record for record in records if record["strict_prediction"]]
    provisional = [record for record in records if record["provisional_prediction"]]
    output = {
        "format": f"isaac-gamebot-existing-log-{args.role}-attack-associations-v1",
        "generated_at": "2026-10-30",
        "scope": f"offline validation of existing original-engine logs for role={args.role}; no new game run",
        "policy": {
            "exact_identity": True,
            "source_link_required": True,
            "maximum_object_delay_frames": 1,
            "minimum_observations_for_strict_recognition": 1,
            "strict_prediction_requires_two_distinct_run_seeds": True,
            "same_seed_runs_are_provisional_only": True,
            "static_candidates_only": True,
        },
        "sources": {
            "files": len(files),
            "sessions": sum(1 for path in files if path.parts[-3] == "sessions"),
            "validation_windows": sum(1 for path in files if path.parts[-3] != "sessions"),
            "scan_seconds": seconds,
        },
        "counts": {
            "candidate_identities": len(candidates),
            "identities_seen": len(seen_boss),
            "association_groups": len(records),
            "strict_recognition_identities": len({record["key"] for record in strict_recognition}),
            "strict_prediction_identities": len({record["key"] for record in strict_prediction}),
            "provisional_identities": len({record["key"] for record in provisional}),
        },
        "seen_identities": dict(sorted(seen_boss.items())),
        "records": records,
    }
    output_path.write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    report = {
        "format": f"isaac-gamebot-{args.role}-existing-log-promotions-v1",
        "generated_at": "2026-10-30",
        "source": f"data/mechanisms/{output_path.name}",
        "counts": output["counts"],
        "strict_recognition": [
            {key: record[key] for key in ("key", "state", "animation", "mechanism", "object",
                                          "animation_frames", "observations", "runs", "run_ids",
                                          "seeds", "seed_count")}
            for record in strict_recognition
        ],
        "strict_prediction": [
            {key: record[key] for key in ("key", "state", "animation", "mechanism", "object",
                                          "animation_frames", "observations", "runs", "run_ids",
                                          "seeds", "seed_count")}
            for record in strict_prediction
        ],
        "provisional": [
            {key: record[key] for key in ("key", "state", "animation", "mechanism", "object",
                                          "animation_frames", "observations", "runs", "run_ids",
                                          "seeds", "seed_count")}
            for record in provisional
        ],
        "evidence_files": sorted({run for record in records for run in record["run_ids"]}),
    }
    report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    if args.apply:
        backup = Path(str(MECHANISM_DB) + f".before-{args.role}-mining")
        shutil.copy2(MECHANISM_DB, backup)
        result = apply_to_mechanism_db(records, args.role)
        MECHANISM_DB.write_text(json.dumps(result["database"], ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        print(f"applied to {len(result['touched'])} identities; backup {backup}", file=sys.stderr)

    print(json.dumps(output["counts"], ensure_ascii=False))
    print(f"Wrote {output_path}")
    print(f"Wrote {report_path}")


if __name__ == "__main__":
    main()
