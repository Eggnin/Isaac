#!/usr/bin/env python3
"""Build a stable Ghidra seed list from recovered AI function evidence."""

from __future__ import annotations

import csv
import json
from pathlib import Path


SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[1]
SEMANTICS_PATH = REPO_ROOT / "data" / "mechanisms" / "isaac_j460_state_semantics.json"
TSV_PATH = SCRIPT_DIR / "ai-seeds.tsv"
MAP_PATH = SCRIPT_DIR / "ai-seed-map.json"


def main() -> int:
    document = json.loads(SEMANTICS_PATH.read_text(encoding="utf-8"))
    functions = document["ai_functions"]
    type_map = document["type_map"]

    types_by_function: dict[str, list[int]] = {}
    identities_by_function: dict[str, list[dict[str, object]]] = {}
    for type_key, mapping in type_map.items():
        function_va = mapping["ai_function"]
        types_by_function.setdefault(function_va, []).append(int(type_key))
        identities_by_function.setdefault(function_va, []).extend(mapping["identities"])

    missing = sorted(set(functions) - set(types_by_function), key=lambda value: int(value, 16))
    if missing:
        raise RuntimeError(f"AI functions without Type mappings: {missing}")

    rows: list[dict[str, object]] = []
    for function_va in sorted(functions, key=lambda value: int(value, 16)):
        function = functions[function_va]
        types = sorted(types_by_function[function_va])
        identities = sorted(
            identities_by_function.get(function_va, []),
            key=lambda item: item["key"],
        )
        rows.append(
            {
                "va": function_va,
                "ghidra_name": f"AI_{function_va[2:]}",
                "start": function["start"],
                "end": function["end"],
                "instruction_count": function["instructions"],
                "types": types,
                "identities": identities,
            }
        )

    if len(rows) != 239:
        raise RuntimeError(f"Expected 239 AI functions, got {len(rows)}")

    with TSV_PATH.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.writer(handle, delimiter="\t", lineterminator="\n")
        writer.writerow(["va", "name", "types", "identity_keys", "evidence"])
        for row in rows:
            writer.writerow(
                [
                    row["va"],
                    row["ghidra_name"],
                    ",".join(str(value) for value in row["types"]),
                    ",".join(item["key"] for item in row["identities"]),
                    "; ".join(
                        [
                            f"dispatcher={document['dispatcher']['va']}",
                            f"end={row['end']}",
                            f"instructions={row['instruction_count']}",
                        ]
                    ),
                ]
            )

    output = {
        "format": "isaac-j460-ai-ghidra-seeds-v1",
        "game_sha256": document["game_sha256"],
        "dispatcher": document["dispatcher"],
        "source": str(SEMANTICS_PATH.relative_to(REPO_ROOT)).replace("\\", "/"),
        "function_count": len(rows),
        "type_count": len(type_map),
        "identity_count": sum(len(row["identities"]) for row in rows),
        "functions": rows,
    }
    MAP_PATH.write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"Wrote {len(rows)} functions to {TSV_PATH}")
    print(f"Wrote seed metadata to {MAP_PATH}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
