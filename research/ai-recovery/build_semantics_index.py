#!/usr/bin/env python3
"""Index Ghidra AI decompiles and attach address-stable assembly evidence."""

from __future__ import annotations

import json
import re
from collections import Counter
from pathlib import Path


SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[1]
EXPORT_DIR = SCRIPT_DIR / "ghidra-export"
MANIFEST_PATH = EXPORT_DIR / "ai-decompiled.json"
DISPATCH_CASES_PATH = SCRIPT_DIR / "dispatcher-cases.json"
STATE_SEMANTICS_PATH = REPO_ROOT / "data" / "mechanisms" / "isaac_j460_state_semantics.json"
INDEX_PATH = SCRIPT_DIR / "ai-semantics-index.json"
SUMMARY_PATH = SCRIPT_DIR / "ai-semantics-summary.tsv"

FIELDS = {
    0x028: "entity.type",
    0x02C: "entity.variant",
    0x030: "entity.subtype",
    0x238: "boss_status_effect_cooldown",
    0x380: "entity.health",
    0x384: "entity.max_health",
    0x39C: "entity.speed_multiplier",
    0x3B0: "entity.invincible",
    0x3C0: "entity.child",
    0x40C: "entity.collision_damage",
    0x410: "entity.state_frame",
    0xBA0: "entity.projectile_cooldown",
    0xBA4: "entity.projectile_delay",
    0xBB0: "entity.ai_v1",
    0xBB4: "entity.ai_v2",
    0xBB8: "entity.ai_v3",
    0xBBC: "entity.ai_v4",
    0xBC0: "entity.ai_i1",
    0xBC4: "entity.ai_i2",
    0xBC8: "delirium.boss_type",
    0xBCC: "delirium.boss_variant",
    0xBD0: "delirium.transformation_timer",
    0xBD2: "delirium.remaining_attacks",
    0xBD3: "delirium.state",
    0xBD8: "delirium.attack_id",
    0xBDC: "delirium.attack_angle",
    0xBE0: "delirium.cycle_id",
    0xC3D: "entity.is_boss",
    0xC40: "entity.shield_strength",
    0xC44: "entity.shield_damage_history_capacity",
}

KNOWN_CALLS = {
    0x00428B20: "entity_spawn_relay",
    0x006CB2E0: "Entity_NPC::FireProjectiles",
    0x006CCDD0: "Entity_NPC::FireBossProjectiles",
    0x006BEC40: "Entity_NPC::projectile_helper",
    0x006FE410: "Entity::Create dispatcher",
    0x006EEF60: "Isaac::genrand_int32",
    0x006ACE60: "Entity::TakeDamage",
    0x006AC560: "damage_filter",
}

CONTROL_KEYWORDS = re.compile(
    r"\b(if|else|switch|case|while|for|return|break|continue|goto)\b|"
    r"==|!=|<=|>=|<|>"
)
FIELD_PATTERN = re.compile(r"(?:^|[^0-9A-Za-z_])(?:0x)?([0-9a-fA-F]{2,4})(?![0-9A-Za-z_])")
ASM_PATTERN = re.compile(r"^([0-9a-f]{8})\s+(.+?)\s{2,}([a-zA-Z].*)$")
CALL_SITE_PATTERN = re.compile(r"\bcall\b\s+(.+)$", re.IGNORECASE)
C_FUNCTION_CALL = re.compile(r"\b(FUN_[0-9a-fA-F]+|[A-Za-z_][A-Za-z0-9_:]*)\s*\(")
NON_CALL_WORDS = {
    "if",
    "for",
    "while",
    "switch",
    "sizeof",
    "return",
    "defined",
}


def parse_field_refs(text: str) -> list[int]:
    refs: set[int] = set()
    for match in FIELD_PATTERN.finditer(text):
        value = int(match.group(1), 16)
        if value in FIELDS:
            refs.add(value)
    return sorted(refs)


def parse_assembly(path: Path) -> list[dict[str, object]]:
    instructions: list[dict[str, object]] = []
    for raw_line in path.read_text(encoding="utf-8").splitlines():
        if raw_line.startswith(";"):
            continue
        match = ASM_PATTERN.match(raw_line)
        if not match:
            continue
        address, raw_bytes, text = match.groups()
        fields = parse_field_refs(text)
        call = CALL_SITE_PATTERN.search(text)
        target: int | None = None
        if call:
            target_match = re.search(r"(?:0x)?([0-9a-fA-F]{8})", call.group(1))
            if target_match:
                target = int(target_match.group(1), 16)
        instructions.append(
            {
                "address": f"0x{address}",
                "bytes": raw_bytes.strip(),
                "text": text,
                "fields": [
                    {"offset": f"0x{offset:03x}", "name": FIELDS[offset]}
                    for offset in fields
                ],
                "callTarget": f"0x{target:08x}" if target is not None else None,
                "callName": KNOWN_CALLS.get(target) if target is not None else None,
            }
        )
    return instructions


def parse_c(path: Path) -> tuple[list[dict[str, object]], list[str]]:
    lines = path.read_text(encoding="utf-8").splitlines()
    references: list[dict[str, object]] = []
    calls: set[str] = set()
    for line_number, line in enumerate(lines, start=1):
        stripped = line.strip()
        for match in C_FUNCTION_CALL.finditer(line):
            name = match.group(1).rstrip(":")
            if name not in NON_CALL_WORDS:
                calls.add(name)
        offsets = parse_field_refs(line)
        if not offsets:
            continue
        for offset in offsets:
            lhs = line.split("=", 1)[0] if "=" in line else ""
            is_write = bool(re.search(rf"\b0x{offset:x}\b", lhs))
            context = "\n".join(lines[max(0, line_number - 3): min(len(lines), line_number + 2)])
            references.append(
                {
                    "line": line_number,
                    "offset": f"0x{offset:03x}",
                    "name": FIELDS[offset],
                    "kind": "write" if is_write else "read_or_test",
                    "condition": bool(CONTROL_KEYWORDS.search(stripped)),
                    "text": stripped,
                    "context": context,
                }
            )
    return references, sorted(calls)


def window_for_address(
    instructions: list[dict[str, object]],
    address: str,
    before: int = 3,
    after: int = 4,
) -> list[dict[str, object]]:
    for index, instruction in enumerate(instructions):
        if instruction["address"] == address:
            return instructions[max(0, index - before): min(len(instructions), index + after + 1)]
    return []


def main() -> int:
    manifest = json.loads(MANIFEST_PATH.read_text(encoding="utf-8"))
    dispatcher_cases = json.loads(DISPATCH_CASES_PATH.read_text(encoding="utf-8"))
    semantics = json.loads(STATE_SEMANTICS_PATH.read_text(encoding="utf-8"))
    source_functions = semantics["ai_functions"]

    delegate_types: dict[str, set[int]] = {}
    delegate_identities: dict[str, set[str]] = {}
    inline_first_call_types: dict[str, set[int]] = {}
    no_handler_first_call_types: dict[str, set[int]] = {}
    for case in dispatcher_cases["cases"]:
        if case["kind"] == "delegate" and case["delegateTarget"]:
            delegate_types.setdefault(case["delegateTarget"], set()).update(case["types"])
            delegate_identities.setdefault(case["delegateTarget"], set()).update(
                identity["key"] for identity in case["identities"]
            )
        elif case["kind"] == "inline":
            for target in case["existingFirstCallTargets"]:
                inline_first_call_types.setdefault(target, set()).update(case["types"])
        elif case["kind"] == "no_handler":
            for target in case["existingFirstCallTargets"]:
                no_handler_first_call_types.setdefault(target, set()).update(case["types"])

    indexed_functions: list[dict[str, object]] = []
    status_counts: Counter[str] = Counter()
    total_field_refs = 0
    total_direct_calls = 0
    total_danger_candidates = 0

    for item in manifest["functions"]:
        function: dict[str, object] = {
            "va": item["va"],
            "name": item["name"],
            "types": [int(value) for value in item["types"].split(",") if value],
            "identities": [value for value in item["identities"].split(",") if value],
            "ghidraEntry": item.get("ghidraEntry"),
            "instructions": item.get("instructions", 0),
            "incomingCalls": item.get("incomingCalls", 0),
            "outgoingCalls": item.get("outgoingCalls", 0),
            "cFile": item.get("cFile"),
            "asmFile": item.get("asmFile"),
            "decompileStatus": "decompiled" if item.get("cFile") else "failed",
            "decompileError": item.get("error"),
            "evidenceLevels": [
                "decompiled_pseudoc" if item.get("cFile") else "not_recovered",
                "assembly_and_function_address",
                "static_cross_references",
            ],
        }
        status_counts[function["decompileStatus"]] += 1

        if item.get("cFile") and item.get("asmFile"):
            c_path = EXPORT_DIR / item["cFile"]
            asm_path = EXPORT_DIR / item["asmFile"]
            c_refs, c_calls = parse_c(c_path)
            instructions = parse_assembly(asm_path)
            direct_calls = []
            for index, instruction in enumerate(instructions):
                if instruction["callTarget"] is None:
                    continue
                direct_calls.append(
                    {
                        "site": instruction["address"],
                        "target": instruction["callTarget"],
                        "name": instruction["callName"],
                        "instruction": instruction["text"],
                        "argumentWindow": instructions[max(0, index - 12): index + 1],
                    }
                )
            danger_candidates = [
                call for call in direct_calls if call["name"] is not None
            ]
            field_addresses = [
                {
                    "site": instruction["address"],
                    "fields": instruction["fields"],
                    "instruction": instruction["text"],
                }
                for instruction in instructions
                if instruction["fields"]
            ]
            function["cFieldReferences"] = c_refs
            function["cCalls"] = c_calls
            function["assemblyFieldReferences"] = field_addresses
            function["directCalls"] = direct_calls
            function["publicDangerOrEntityCalls"] = danger_candidates
            function["sourceStateWrites"] = source_functions.get(item["va"], {}).get("state_writes", [])
            function["sourceStateFrameWrites"] = source_functions.get(item["va"], {}).get(
                "state_frame_writes", []
            )
            function["sourceInvincibleWrites"] = source_functions.get(item["va"], {}).get(
                "invincible_writes", []
            )
            function["sourceEvidenceContexts"] = [
                {
                    "site": write["site"],
                    "context": window_for_address(instructions, write["site"], 5, 6),
                }
                for write in function["sourceStateWrites"]
            ]
            total_field_refs += len(c_refs)
            total_direct_calls += len(direct_calls)
            total_danger_candidates += len(danger_candidates)
        indexed_functions.append(function)

    for function in indexed_functions:
        delegate = function["va"] in delegate_types
        inline_only = (
            not delegate
            and function["va"] in inline_first_call_types
            and bool(inline_first_call_types[function["va"]])
        )
        function["dispatcherRole"] = (
            "delegate_handler"
            if delegate
            else "inline_case_first_call_only"
            if inline_only
            else "legacy_target_without_effective_type_route"
        )
        function["dispatcherDelegateTypes"] = sorted(delegate_types.get(function["va"], []))
        function["dispatcherDelegateIdentities"] = sorted(
            delegate_identities.get(function["va"], [])
        )
        function["legacyInlineCaseTypes"] = sorted(
            inline_first_call_types.get(function["va"], [])
        )
        function["legacyNoHandlerTypes"] = sorted(
            no_handler_first_call_types.get(function["va"], [])
        )

    output = {
        "format": "isaac-j460-ai-semantics-index-v1",
        "gameSha256": semantics["game_sha256"],
        "manifest": "ghidra-export/ai-decompiled.json",
        "fieldNames": {f"0x{offset:03x}": name for offset, name in FIELDS.items()},
        "knownCalls": {f"0x{address:08x}": name for address, name in KNOWN_CALLS.items()},
        "dispatcherClassification": dispatcher_cases["summary"],
        "summary": {
            "functionCount": len(indexed_functions),
            "statusCounts": dict(status_counts),
            "dispatcherRoles": dict(
                Counter(function["dispatcherRole"] for function in indexed_functions)
            ),
            "fieldReferenceLines": total_field_refs,
            "directCallSites": total_direct_calls,
            "publicDangerOrEntityCallSites": total_danger_candidates,
        },
        "evidence": {
            "decompiled_pseudoc": "Ghidra function body exists for the exact dispatcher target.",
            "assembly_and_function_address": "Address-stable listing and function entry are retained.",
            "static_cross_references": "Direct calls and field references are indexed; conditional execution is not implied.",
            "runtime_unverified": "Static recovery does not show that a branch fires in a particular fight.",
        },
        "functions": indexed_functions,
    }
    INDEX_PATH.write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    with SUMMARY_PATH.open("w", encoding="utf-8", newline="") as handle:
        handle.write("va\tdispatcher_role\ttypes\tdecompile_status\tinstructions\tincoming_calls\toutgoing_calls\tfield_refs\tpublic_danger_calls\terrors\n")
        for function in indexed_functions:
            handle.write(
                "\t".join(
                    [
                        function["va"],
                        function["dispatcherRole"],
                        ",".join(str(value) for value in function["types"]),
                        function["decompileStatus"],
                        str(function["instructions"]),
                        str(function["incomingCalls"]),
                        str(function["outgoingCalls"]),
                        str(len(function.get("cFieldReferences", []))),
                        str(len(function.get("publicDangerOrEntityCalls", []))),
                        function.get("decompileError") or "",
                    ]
                )
                + "\n"
            )

    print(f"Indexed {len(indexed_functions)} functions")
    print(f"Decompiled: {status_counts.get('decompiled', 0)}")
    print(f"Failed: {status_counts.get('failed', 0)}")
    print(f"Output: {INDEX_PATH}")
    return 0 if status_counts.get("failed", 0) == 0 else 2


if __name__ == "__main__":
    raise SystemExit(main())
