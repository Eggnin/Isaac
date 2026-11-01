#!/usr/bin/env python3
"""Render a navigable Markdown catalog from the machine-readable recovery index."""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parent
INDEX = ROOT / "ai-semantics-index.json"
CASES = ROOT / "dispatcher-cases.json"
OUTPUT = ROOT / "AI-FUNCTION-CATALOG.md"


def short(values: list[str], limit: int = 20) -> str:
    if len(values) <= limit:
        return ", ".join(values) if values else "(none)"
    return ", ".join(values[:limit]) + f", ... (+{len(values) - limit})"


def main() -> int:
    data = json.loads(INDEX.read_text(encoding="utf-8"))
    cases = json.loads(CASES.read_text(encoding="utf-8"))
    functions = data["functions"]
    lines = [
        "# J460 AI Function Catalog",
        "",
        "This catalog is generated from the exact Ghidra exports. It is an index to",
        "code-backed evidence, not a substitute for the complete pseudo-C and assembly.",
        "",
        "Common Ghidra aliases in 32-bit entity pointers:",
        "",
        "| Offset | Meaning | Ghidra int-array spelling |",
        "| --- | --- | --- |",
        "| `+0xB64` | NPC State | `param_1[0x2d9]` |",
        "| `+0x410` | StateFrame | `param_1[0x104]` |",
        "| `+0xBC0` | AI I1 | `param_1[0x2f0]` |",
        "| `+0xBC4` | AI I2 | `param_1[0x2f1]` |",
        "| `+0xBD8` | Delirium AttackID | `param_1[0x2f6]` |",
        "| `+0xBDC` | Delirium AttackAngle | `param_1[0x2f7]` |",
        "| `+0xBE0` | Delirium CycleID low dword | `param_1[0x2f8]` |",
        "| `+0xBE4` | Delirium CycleID high dword | `param_1[0x2f9]` |",
        "| `+0xC40` | ShieldStrength | `param_1[0x310]` |",
        "| `+0xC44` | shield damage-history capacity | `param_1[0x311]` |",
        "| `+0x3B0` | Invincible | byte at `param_1 + 0xec` in uniform int view |",
        "",
        "## Summary",
        "",
        f"- Ghidra target functions: {data['summary']['functionCount']}",
        f"- Successfully decompiled: {data['summary']['statusCounts'].get('decompiled', 0)}",
        f"- Dispatcher roles: `{data['summary']['dispatcherRoles']}`",
        f"- Dispatcher cases: `{data['dispatcherClassification']['caseKinds']}`",
        f"- Identity routes: `{data['dispatcherClassification']['identityKinds']}`",
        f"- Indexed direct call sites: {data['summary']['directCallSites']}",
        f"- Indexed field-reference lines: {data['summary']['fieldReferenceLines']}",
        "",
        "## Delegate Functions",
        "",
    ]

    for function in functions:
        if function["dispatcherRole"] != "delegate_handler":
            continue
        lines.extend(
            [
                f"### `{function['va']}`",
                "",
                f"- C: [{function['cFile']}](ghidra-export/{function['cFile']})",
                f"- ASM: [{function['asmFile']}](ghidra-export/{function['asmFile']})",
                f"- Types: `{', '.join(str(value) for value in function['types'])}`",
                f"- Identities: `{short(function['identities'])}`",
                f"- Incoming calls: {function['incomingCalls']}; outgoing calls: {function['outgoingCalls']}",
            ]
        )
        state_writes = function.get("sourceStateWrites", [])
        if state_writes:
            values = []
            for write in state_writes:
                target = write.get("literal_target")
                target_text = str(target) if target is not None else "dynamic"
                values.append(f"{write['site']} -> State {target_text}")
            lines.append(f"- State writes: `{'; '.join(values)}`")
        state_frame_writes = function.get("sourceStateFrameWrites", [])
        if state_frame_writes:
            lines.append(
                "- StateFrame writes: `"
                + "; ".join(write["site"] for write in state_frame_writes)
                + "`"
            )
        invincible_writes = function.get("sourceInvincibleWrites", [])
        if invincible_writes:
            lines.append(
                "- Invincible writes: `"
                + "; ".join(
                    f"{write['site']} = {write.get('literal_value', 'dynamic')}"
                    for write in invincible_writes
                )
                + "`"
            )
        danger_calls = function.get("publicDangerOrEntityCalls", [])
        if danger_calls:
            lines.append(
                "- Shared attack/spawn calls: `"
                + "; ".join(
                    f"{call['site']} -> {call['name']} ({call['target']})"
                    for call in danger_calls
                )
                + "`"
            )
        if not function.get("cFieldReferences"):
            lines.append("- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.")
        lines.append("")

    lines.extend(
        [
            "## Inline Dispatcher Cases",
            "",
            "These identities have no standalone update function. Their bodies are inside",
            "`HELPER_Entity_NPC_Update_dispatcher_006c2990.c`; each printable interval is",
            "also mirrored under `case-assemblies/`.",
            "",
            "| Case | VA range | Types | Identities | Calls in case body |",
            "| ---: | --- | --- | --- | --- |",
        ]
    )
    for case in cases["cases"]:
        if case["kind"] != "inline":
            continue
        calls = ", ".join(call["site"] for call in case["calls"]) or "(none)"
        lines.append(
            "| {caseIndex} | `{caseVa}..{caseEndExclusive}` | `{types}` | `{identities}` | `{calls}` |".format(
                caseIndex=case["caseIndex"],
                caseVa=case["caseVa"],
                caseEndExclusive=case["caseEndExclusive"],
                types=", ".join(str(value) for value in case["types"]) or "(none)",
                identities=short([item["key"] for item in case["identities"]], 12),
                calls=calls,
            )
        )

    lines.extend(
        [
            "",
            "## Legacy Targets Without A Live Case Route",
            "",
            "The older 239-target extraction treated the first call in each case as an AI",
            "entry. The following targets are not reached as delegate handlers and are",
            "kept only as recovered auxiliary functions:",
            "",
        ]
    )
    for function in functions:
        if function["dispatcherRole"] == "delegate_handler":
            continue
        lines.append(
            f"- `{function['va']}`: {function['dispatcherRole']}; "
            f"inline types `{function.get('legacyInlineCaseTypes', [])}`; "
            f"no-handler types `{function.get('legacyNoHandlerTypes', [])}`."
        )

    OUTPUT.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"Wrote {OUTPUT}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
