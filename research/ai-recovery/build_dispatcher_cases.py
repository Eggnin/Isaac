#!/usr/bin/env python3
"""Decode the 242 NPC dispatcher cases without collapsing inline cases."""

from __future__ import annotations

import json
import sqlite3
import struct
import sys
from collections import Counter
from pathlib import Path


SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[1]
UPSTREAM = REPO_ROOT / "research" / "the-browsing-of-isaac"
PE_PATH = Path(r"D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe")
INDEX_PATH = UPSTREAM / "output" / "decomp" / "7122ac287799" / "index" / "pe-index.sqlite"
SEMANTICS_PATH = REPO_ROOT / "data" / "mechanisms" / "isaac_j460_state_semantics.json"
JSON_PATH = SCRIPT_DIR / "dispatcher-cases.json"
TSV_PATH = SCRIPT_DIR / "dispatcher-cases.tsv"
ASM_DIR = SCRIPT_DIR / "case-assemblies"

sys.path.insert(0, str(UPSTREAM / "scripts" / "decomp" / "tools"))
from pe import PEImage  # noqa: E402


CASE_TABLE_VA = 0x006C41DC
MAP_TABLE_VA = 0x006C45A4
TYPE_MIN = 10
TYPE_MAX = 967
CASE_COUNT = 242
DISPATCH_EPILOGUE = 0x006C41AF


def main() -> int:
    pe = PEImage(PE_PATH, verify_hash=False)
    semantics = json.loads(SEMANTICS_PATH.read_text(encoding="utf-8"))
    db = sqlite3.connect(f"file:{INDEX_PATH}?mode=ro", uri=True)

    cases = [
        struct.unpack_from("<I", pe.buf, pe.va_to_off(CASE_TABLE_VA + index * 4))[0]
        for index in range(CASE_COUNT)
    ]
    mapping = list(
        pe.buf[pe.va_to_off(MAP_TABLE_VA): pe.va_to_off(MAP_TABLE_VA) + TYPE_MAX - TYPE_MIN + 1]
    )
    if len(mapping) != TYPE_MAX - TYPE_MIN + 1:
        raise RuntimeError("Dispatcher mapping table length mismatch")

    unique_targets = sorted(set(cases))
    next_target = {
        target: (
            unique_targets[index + 1]
            if index + 1 < len(unique_targets)
            else DISPATCH_EPILOGUE
        )
        for index, target in enumerate(unique_targets)
    }

    type_rows = {
        int(type_key): mapping[int(type_key) - TYPE_MIN]
        for type_key in semantics["type_map"]
    }
    identities_by_case: dict[int, list[dict[str, object]]] = {}
    types_by_case: dict[int, list[int]] = {}
    for type_key, mapping_row in semantics["type_map"].items():
        enemy_type = int(type_key)
        if type_rows[enemy_type] != mapping_row["case_index"]:
            raise RuntimeError(f"Type {enemy_type} case map mismatch")
        case_index = mapping_row["case_index"]
        types_by_case.setdefault(case_index, []).append(enemy_type)
        identities_by_case.setdefault(case_index, []).extend(mapping_row["identities"])

    ASM_DIR.mkdir(parents=True, exist_ok=True)
    case_rows: list[dict[str, object]] = []
    for case_index, target in enumerate(cases):
        end = next_target[target]
        instructions = list(
            db.execute(
                "SELECT va, mn, ops FROM insn WHERE va>=? AND va<? ORDER BY va",
                (target, end),
            )
        )
        calls = [
            {"site": f"0x{address:08x}", "instruction": f"{mn} {ops}"}
            for address, mn, ops in instructions
            if mn == "call"
        ]
        delegate = None
        if (
            len(instructions) >= 3
            and instructions[0][1] == "mov"
            and instructions[0][2].strip() == "ecx, edi"
            and instructions[1][1] == "call"
            and instructions[2][1] == "jmp"
        ):
            destination = instructions[1][2].strip()
            if re_full_hex(destination):
                delegate = f"0x{int(destination, 16):08x}"

        if not instructions:
            kind = "no_handler"
        elif delegate:
            kind = "delegate"
        else:
            kind = "inline"

        existing_targets = sorted(
            {
                semantics["type_map"][str(enemy_type)]["ai_function"]
                for enemy_type in types_by_case.get(case_index, [])
                if semantics["type_map"][str(enemy_type)].get("ai_function")
            }
        )
        identities = sorted(
            identities_by_case.get(case_index, []),
            key=lambda item: item["key"],
        )
        row = {
            "caseIndex": case_index,
            "caseVa": f"0x{target:08x}",
            "caseEndExclusive": f"0x{end:08x}",
            "kind": kind,
            "delegateTarget": delegate,
            "existingFirstCallTargets": existing_targets,
            "types": sorted(types_by_case.get(case_index, [])),
            "identityCount": len(identities),
            "identities": identities,
            "instructionCount": len(instructions),
            "calls": calls,
        }
        case_rows.append(row)

        asm_path = ASM_DIR / f"case_{case_index:03d}_{target:08x}.asm"
        lines = [
            f"; case_index={case_index} target=0x{target:08x} kind={kind}",
            f"; delegate={delegate or ''}",
            f"; types={','.join(str(value) for value in row['types'])}",
        ]
        for address, mnemonic, operands in instructions:
            lines.append(f"{address:08x}  {mnemonic:8s} {operands}")
        asm_path.write_text("\n".join(lines) + "\n", encoding="utf-8")

    kind_counts = Counter(row["kind"] for row in case_rows)
    identity_kind_counts: Counter[str] = Counter()
    for row in case_rows:
        identity_kind_counts[row["kind"]] += int(row["identityCount"])

    output = {
        "format": "isaac-j460-dispatcher-cases-v1",
        "gameSha256": semantics["game_sha256"],
        "dispatcher": {
            "va": "0x006c2990",
            "caseTable": f"0x{CASE_TABLE_VA:08x}",
            "mapTable": f"0x{MAP_TABLE_VA:08x}",
            "typeMin": TYPE_MIN,
            "typeMax": TYPE_MAX,
            "caseCount": CASE_COUNT,
            "uniqueCaseTargets": len(unique_targets),
        },
        "classification": {
            "delegate": "Case body is exactly mov ecx,edi/call target/jmp epilogue.",
            "inline": "Case contains logic in the dispatcher body and has no standalone AI entry.",
            "no_handler": "Case has no instructions before the shared epilogue.",
        },
        "summary": {
            "caseKinds": dict(kind_counts),
            "identityKinds": dict(identity_kind_counts),
            "typeCount": len(type_rows),
            "identityCount": sum(row["identityCount"] for row in case_rows),
        },
        "cases": case_rows,
    }
    JSON_PATH.write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    with TSV_PATH.open("w", encoding="utf-8", newline="") as handle:
        handle.write(
            "case_index\tcase_va\tcase_end\tkind\tdelegate_target\ttypes\tidentity_count\tidentity_keys\n"
        )
        for row in case_rows:
            handle.write(
                "\t".join(
                    [
                        str(row["caseIndex"]),
                        row["caseVa"],
                        row["caseEndExclusive"],
                        row["kind"],
                        row["delegateTarget"] or "",
                        ",".join(str(value) for value in row["types"]),
                        str(row["identityCount"]),
                        ",".join(item["key"] for item in row["identities"]),
                    ]
                )
                + "\n"
            )

    print(f"Cases: {len(case_rows)} {dict(kind_counts)}")
    print(f"Identity routes: {dict(identity_kind_counts)}")
    print(f"Output: {JSON_PATH}")
    return 0


def re_full_hex(text: str) -> bool:
    return text.startswith("0x") and all(
        char in "0123456789abcdefABCDEF" for char in text[2:]
    )


if __name__ == "__main__":
    raise SystemExit(main())
