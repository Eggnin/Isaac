#!/usr/bin/env python3
"""Extract observed Entity_NPC Invincible intervals from Gamebot JSONL."""

from __future__ import annotations

import argparse
import json
from collections import defaultdict
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[2]


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--sessions", type=Path, default=ROOT / "sessions")
    parser.add_argument(
        "--output",
        type=Path,
        default=(
            ROOT
            / "research/state-semantics/"
            "external-invincibility-20261029.json"
        ),
    )
    args = parser.parse_args()

    files = sorted(args.sessions.glob("**/frames-*.jsonl"))
    candidate_files = []
    for path in files:
        with path.open("rb") as handle:
            contains = False
            while True:
                chunk = handle.read(1024 * 1024)
                if not chunk:
                    break
                if b'"invulnerable":true' in chunk:
                    contains = True
                    break
        if contains:
            candidate_files.append(path)

    instances: dict[tuple[str, int], dict[str, Any]] = {}
    skipped_lines = 0
    for path in candidate_files:
        run = path.parent.name
        with path.open("r", encoding="utf-8") as handle:
            for line in handle:
                if '"invulnerable":true' not in line:
                    continue
                try:
                    record = json.loads(line)
                except json.JSONDecodeError:
                    skipped_lines += 1
                    continue
                frame = record.get("frame", record)
                clock = frame.get("clock")
                room = frame.get("room")
                for entity in frame.get("entities", []):
                    if entity.get("invulnerable") is not True:
                        continue
                    address = entity.get("address")
                    if not isinstance(address, int):
                        continue
                    key = (run, address)
                    current = instances.get(key)
                    state = entity.get("state")
                    animation = entity.get("animation")
                    if (
                        current is None
                        or (
                            isinstance(clock, int)
                            and isinstance(current.get("last_clock"), int)
                            and clock - current["last_clock"] > 120
                        )
                    ):
                        current = {
                            "run": run,
                            "file": path.relative_to(ROOT).as_posix(),
                            "address": address,
                            "identity": {
                                "type": entity.get("type"),
                                "variant": entity.get("variant"),
                                "subtype": entity.get("subtype"),
                            },
                            "room": room,
                            "first_clock": clock,
                            "last_clock": clock,
                            "observations": 0,
                            "states": defaultdict(int),
                            "animations": defaultdict(int),
                            "hp_min": entity.get("hp"),
                            "hp_max": entity.get("hp"),
                        }
                        instances[key] = current
                    current["last_clock"] = clock
                    current["observations"] += 1
                    if state is not None:
                        current["states"][state] += 1
                    if animation:
                        current["animations"][animation] += 1
                    hp = entity.get("hp")
                    if isinstance(hp, (int, float)):
                        current["hp_min"] = min(current["hp_min"], hp)
                        current["hp_max"] = max(current["hp_max"], hp)

    grouped: dict[tuple[int, int, int], dict[str, Any]] = defaultdict(
        lambda: {
            "windows": 0,
            "runs": set(),
            "states": defaultdict(int),
            "animations": defaultdict(int),
            "durations": [],
            "examples": [],
        }
    )
    for instance in instances.values():
        identity = instance["identity"]
        key = (
            identity["type"],
            identity["variant"],
            identity["subtype"],
        )
        group = grouped[key]
        group["windows"] += 1
        group["runs"].add(instance["run"])
        for state, count in instance["states"].items():
            group["states"][state] += count
        for animation, count in instance["animations"].items():
            group["animations"][animation] += count
        duration = (
            instance["last_clock"] - instance["first_clock"] + 1
            if isinstance(instance["first_clock"], int)
            and isinstance(instance["last_clock"], int)
            else None
        )
        if duration is not None:
            group["durations"].append(duration)
        if len(group["examples"]) < 16:
            group["examples"].append(
                {
                    **instance,
                    "states": dict(instance["states"]),
                    "animations": dict(instance["animations"]),
                    "observed_duration_clocks": duration,
                    "end_observed": False,
                }
            )

    output: dict[str, Any] = {
        "format": "isaac-external-invincibility-observations-v1",
        "sources": {
            "session_files_scanned": len(files),
            "files_with_invincible_true": [
                path.relative_to(ROOT).as_posix() for path in candidate_files
            ],
        },
        "method": (
            "stream JSONL frame records; group invulnerable=true observations "
            "by run and entity address; split intervals after a >120 clock gap"
        ),
        "limitations": [
            "An observed true interval proves the external field value, not the internal cause.",
            "Files end while an entity is active; absence of a later false sample does not prove the window never ended.",
        ],
        "skipped_lines": skipped_lines,
        "identities": [],
        "summary": {
            "identities": len(grouped),
            "windows": len(instances),
            "observations": sum(v["observations"] for v in instances.values()),
        },
    }
    for key, group in sorted(grouped.items()):
        durations = group["durations"]
        output["identities"].append(
            {
                "key": f"{key[0]}.{key[1]}.{key[2]}",
                "type": key[0],
                "variant": key[1],
                "subtype": key[2],
                "windows": group["windows"],
                "runs": sorted(group["runs"]),
                "states": dict(sorted(group["states"].items())),
                "animations": dict(
                    sorted(
                        group["animations"].items(),
                        key=lambda item: (-item[1], item[0]),
                    )
                ),
                "observed_duration_clocks": {
                    "min": min(durations) if durations else None,
                    "max": max(durations) if durations else None,
                },
                "examples": group["examples"],
                "evidence": "external_read_process_memory_jsonl",
                "cause_confirmed": False,
            }
        )

    args.output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("w", encoding="utf-8", newline="\n") as handle:
        json.dump(output, handle, ensure_ascii=False, indent=2)
        handle.write("\n")
    print(
        json.dumps(
            {
                "output": args.output.relative_to(ROOT).as_posix(),
                **output["summary"],
            }
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
