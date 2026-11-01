#!/usr/bin/env python3
"""Extract stable code/assembly evidence for the requested deep-dive cases."""

from __future__ import annotations

import json
import sqlite3
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parent
AI_DIR = ROOT / "ghidra-export"
HELPER_DIR = ROOT / "ghidra-helpers"
UPSTREAM = ROOT.parent / "the-browsing-of-isaac"
INDEX_PATH = UPSTREAM / "output" / "decomp" / "7122ac287799" / "index" / "pe-index.sqlite"
PE_PATH = Path(r"D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe")
OUTPUT = ROOT / "case-evidence.json"

sys.path.insert(0, str(UPSTREAM / "scripts" / "decomp" / "tools"))
from pe import PEImage  # noqa: E402

CASES = {
    "matriarch": {
        "identity": "413.0.0",
        "files": [
            {
                "label": "State 3 rage gate and RageBegin entry",
                "path": AI_DIR / "AI_004c59d0_004c59d0.c",
                "startLine": 275,
                "endLine": 351,
            },
            {
                "label": "State 13 RageLoop, projectile emission, RageEnd",
                "path": AI_DIR / "AI_004c59d0_004c59d0.c",
                "startLine": 739,
                "endLine": 830,
            },
        ],
        "assembly": [
            {
                "label": "rage gate",
                "path": AI_DIR / "AI_004c59d0_004c59d0.asm",
                "start": 0x004C61B8,
                "end": 0x004C6228,
            },
            {
                "label": "state 13 body and end",
                "path": AI_DIR / "AI_004c59d0_004c59d0.asm",
                "start": 0x004C72D5,
                "end": 0x004C781E,
            },
        ],
    },
    "vis_fatty_state_16": {
        "identity": "886.0.0",
        "files": [
            {
                "label": "State 4 to State 16 entry",
                "path": AI_DIR / "AI_004ea3d0_004ea3d0.c",
                "startLine": 140,
                "endLine": 165,
            },
            {
                "label": "State 16 update",
                "path": AI_DIR / "AI_004ea3d0_004ea3d0.c",
                "startLine": 324,
                "endLine": 428,
            },
            {
                "label": "Other variant State 8 RageEnd path",
                "path": AI_DIR / "AI_004ea3d0_004ea3d0.c",
                "startLine": 743,
                "endLine": 787,
            },
        ],
        "assembly": [
            {
                "label": "variant branch and State 16 entry",
                "path": AI_DIR / "AI_004ea3d0_004ea3d0.asm",
                "start": 0x004EA411,
                "end": 0x004EAD74,
            },
            {
                "label": "State 16 RageDown and attack object",
                "path": AI_DIR / "AI_004ea3d0_004ea3d0.asm",
                "start": 0x004EB4E2,
                "end": 0x004EB5A8,
            },
        ],
    },
    "ultra_greed": {
        "identity": "406.0.0",
        "files": [
            {
                "label": "shield initialization",
                "path": AI_DIR / "AI_0059edb0_0059edb0.c",
                "startLine": 217,
                "endLine": 273,
            },
            {
                "label": "shield values for states 100, 400, 510",
                "path": AI_DIR / "AI_0059edb0_0059edb0.c",
                "startLine": 447,
                "endLine": 458,
            },
            {
                "label": "State 400 Guard",
                "path": AI_DIR / "AI_0059edb0_0059edb0.c",
                "startLine": 717,
                "endLine": 761,
            },
            {
                "label": "State 500 and 510 Spin",
                "path": AI_DIR / "AI_0059edb0_0059edb0.c",
                "startLine": 763,
                "endLine": 884,
            },
            {
                "label": "State 600 attack emission",
                "path": AI_DIR / "AI_0059edb0_0059edb0.c",
                "startLine": 1390,
                "endLine": 1415,
            },
            {
                "label": "boss event to state mapping",
                "path": AI_DIR / "AI_0059edb0_0059edb0.c",
                "startLine": 2319,
                "endLine": 2399,
            },
            {
                "label": "death-state invincibility",
                "path": AI_DIR / "AI_0059edb0_0059edb0.c",
                "startLine": 2428,
                "endLine": 2513,
            },
            {
                "label": "common damage filter",
                "path": HELPER_DIR / "HELPER_Entity_DamageFilter_006ac560.c",
                "startLine": 1,
                "endLine": 52,
            },
            {
                "label": "shield damage absorption",
                "path": HELPER_DIR / "HELPER_006d7230_ShieldDamageAbsorption_006d7230.c",
                "startLine": 1,
                "endLine": 126,
            },
        ],
        "assembly": [
            {
                "label": "initial shield writes",
                "path": AI_DIR / "AI_0059edb0_0059edb0.asm",
                "start": 0x0059F216,
                "end": 0x0059F259,
            },
            {
                "label": "state dependent shield strength",
                "path": AI_DIR / "AI_0059edb0_0059edb0.asm",
                "start": 0x0059F6D0,
                "end": 0x0059F738,
            },
            {
                "label": "damage filter",
                "path": HELPER_DIR / "HELPER_Entity_DamageFilter_006ac560.asm",
                "start": 0x006AC560,
                "end": 0x006AC5C1,
            },
            {
                "label": "shield damage absorption",
                "path": HELPER_DIR / "HELPER_006d7230_ShieldDamageAbsorption_006d7230.asm",
                "start": 0x006D7270,
                "end": 0x006D7514,
            },
        ],
    },
    "big_horn_state_13": {
        "identity": "411.0.0",
        "files": [
            {
                "label": "entry to State 13",
                "path": AI_DIR / "AI_00453140_00453140.c",
                "startLine": 340,
                "endLine": 360,
            },
            {
                "label": "State 13 first frame and charge selection",
                "path": AI_DIR / "AI_00453140_00453140.c",
                "startLine": 520,
                "endLine": 548,
            },
            {
                "label": "State 13 Shoot event and spawned objects",
                "path": AI_DIR / "AI_00453140_00453140.c",
                "startLine": 549,
                "endLine": 736,
            },
            {
                "label": "State 13 exit conditions",
                "path": AI_DIR / "AI_00453140_00453140.c",
                "startLine": 766,
                "endLine": 793,
            },
        ],
        "assembly": [
            {
                "label": "State 13 entry",
                "path": AI_DIR / "AI_00453140_00453140.asm",
                "start": 0x00453EAC,
                "end": 0x00453F56,
            },
            {
                "label": "State 13 first frame",
                "path": AI_DIR / "AI_00453140_00453140.asm",
                "start": 0x00453F56,
                "end": 0x00454038,
            },
        ],
    },
    "delirium": {
        "identity": "412.0.0",
        "files": [
            {
                "label": "DeliriumState and state updates",
                "path": AI_DIR / "AI_004a6500_004a6500.c",
                "startLine": 176,
                "endLine": 240,
            },
            {
                "label": "CycleID decode and AttackID/CycleID writes",
                "path": AI_DIR / "AI_004a6500_004a6500.c",
                "startLine": 535,
                "endLine": 715,
            },
            {
                "label": "form selection and application",
                "path": AI_DIR / "AI_004a6500_004a6500.c",
                "startLine": 751,
                "endLine": 818,
            },
            {
                "label": "State 16 initialization",
                "path": AI_DIR / "AI_004a6500_004a6500.c",
                "startLine": 1063,
                "endLine": 1084,
            },
            {
                "label": "AttackID byte split and pattern selector",
                "path": HELPER_DIR / "HELPER_Delirium_AttackIDDispatchA_004a8b70.c",
                "startLine": 97,
                "endLine": 352,
            },
            {
                "label": "AttackID projectile emission and repack",
                "path": HELPER_DIR / "HELPER_Delirium_AttackIDDispatchA_004a8b70.c",
                "startLine": 353,
                "endLine": 500,
            },
            {
                "label": "CycleID decode and borrowed-form AI dispatch",
                "path": HELPER_DIR / "HELPER_Delirium_CycleAndAttackDispatchB_004a9860.c",
                "startLine": 38,
                "endLine": 428,
            },
            {
                "label": "form ANM2/state application",
                "path": HELPER_DIR / "HELPER_Delirium_ApplyFormAndState_004a5d10.c",
                "startLine": 13,
                "endLine": 280,
            },
        ],
        "assembly": [
            {
                "label": "CycleID decode and form selection",
                "path": AI_DIR / "AI_004a6500_004a6500.asm",
                "start": 0x004A6D4F,
                "end": 0x004A6E31,
            },
            {
                "label": "CycleID elapsed update",
                "path": AI_DIR / "AI_004a6500_004a6500.asm",
                "start": 0x004A7722,
                "end": 0x004A77D6,
            },
            {
                "label": "borrowed Type dispatch",
                "path": HELPER_DIR / "HELPER_Delirium_CycleAndAttackDispatchB_004a9860.asm",
                "start": 0x004A9860,
                "end": 0x004A9940,
            },
            {
                "label": "AttackID selectors",
                "path": HELPER_DIR / "HELPER_Delirium_AttackIDDispatchA_004a8b70.asm",
                "start": 0x004A8BA8,
                "end": 0x004A8DA8,
            },
            {
                "label": "AttackID FireProjectiles call",
                "path": HELPER_DIR / "HELPER_Delirium_AttackIDDispatchA_004a8b70.asm",
                "start": 0x004A96B0,
                "end": 0x004A9816,
            },
        ],
    },
}


def slice_file(path: Path, start_line: int, end_line: int) -> str:
    lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
    start = max(1, start_line)
    end = min(len(lines), end_line)
    return "\n".join(lines[start - 1:end])


def slice_assembly(path: Path, start: int, end: int) -> str:
    del path  # The listing file is retained as a navigable artifact; the index is gap-free.
    db = sqlite3.connect(f"file:{INDEX_PATH}?mode=ro", uri=True)
    pe = PEImage(PE_PATH, verify_hash=False)
    rows = db.execute(
        "SELECT va, size, mn, ops FROM insn WHERE va>=? AND va<=? ORDER BY va",
        (start, end),
    ).fetchall()
    db.close()
    result = []
    for address, size, mnemonic, operands in rows:
        raw = pe.read_va(address, size)[0].hex()
        result.append(f"{address:08x}  {raw:<24} {mnemonic.upper():8s} {operands}")
    return "\n".join(result)


def main() -> int:
    document = {
        "format": "isaac-j460-ai-case-evidence-v1",
        "sourceBinarySha256": "7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F",
        "cases": {},
    }
    for key, spec in CASES.items():
        files = []
        for item in spec["files"]:
            files.append(
                {
                    "label": item["label"],
                    "file": str(item["path"].relative_to(ROOT)).replace("\\", "/"),
                    "startLine": item["startLine"],
                    "endLine": item["endLine"],
                    "text": slice_file(item["path"], item["startLine"], item["endLine"]),
                }
            )
        assembly = []
        for item in spec["assembly"]:
            assembly.append(
                {
                    "label": item["label"],
                    "file": str(item["path"].relative_to(ROOT)).replace("\\", "/"),
                    "start": f"0x{item['start']:08x}",
                    "end": f"0x{item['end']:08x}",
                    "text": slice_assembly(item["path"], item["start"], item["end"]),
                }
            )
        document["cases"][key] = {
            "identity": spec["identity"],
            "decompiled": files,
            "assembly": assembly,
        }
    OUTPUT.write_text(json.dumps(document, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"Wrote case evidence to {OUTPUT}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
