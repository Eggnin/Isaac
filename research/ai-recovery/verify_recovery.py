#!/usr/bin/env python3
"""Verify the generated recovery artifacts and the claims used by the report."""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parent


def require(condition: bool, message: str) -> None:
    if not condition:
        raise RuntimeError(message)


def main() -> int:
    main_manifest = json.loads(
        (ROOT / "ghidra-export" / "ai-decompiled.json").read_text(encoding="utf-8")
    )
    helper_manifest = json.loads(
        (ROOT / "ghidra-helpers" / "ai-decompiled.json").read_text(encoding="utf-8")
    )
    case_map = json.loads((ROOT / "dispatcher-cases.json").read_text(encoding="utf-8"))
    index = json.loads((ROOT / "ai-semantics-index.json").read_text(encoding="utf-8"))
    evidence = json.loads((ROOT / "case-evidence.json").read_text(encoding="utf-8"))
    runtime_coverage = json.loads(
        (ROOT / "RUNTIME-FIELD-COVERAGE-20261029.json").read_text(encoding="utf-8")
    )

    require(main_manifest["functionCount"] == 239, "main target count")
    require(main_manifest["decompiledCount"] == 239, "main decompile count")
    require(main_manifest["errorCounts"] == {}, "main decompile errors")
    require(helper_manifest["decompiledCount"] == helper_manifest["functionCount"], "helper errors")
    require(helper_manifest["functionCount"] >= 30, "helper export unexpectedly short")

    for item in main_manifest["functions"]:
        for field in ("cFile", "asmFile"):
            path = ROOT / "ghidra-export" / item[field]
            require(path.is_file() and path.stat().st_size > 0, f"missing {path}")

    require(case_map["dispatcher"]["caseCount"] == 242, "case count")
    require(
        case_map["summary"]["caseKinds"] == {"delegate": 226, "inline": 14, "no_handler": 2},
        "case classification",
    )
    require(
        case_map["summary"]["identityKinds"] == {"delegate": 582, "inline": 63, "no_handler": 8},
        "identity classification",
    )
    require(len(list((ROOT / "case-assemblies").glob("case_*.asm"))) == 242, "case asm count")

    require(index["summary"]["functionCount"] == 239, "index function count")
    require(index["summary"]["statusCounts"].get("decompiled") == 239, "index decompile count")
    require(
        index["summary"]["dispatcherRoles"]
        == {"delegate_handler": 226, "inline_case_first_call_only": 12, "legacy_target_without_effective_type_route": 1},
        "index roles",
    )

    require(
        set(evidence["cases"])
        == {"matriarch", "vis_fatty_state_16", "ultra_greed", "big_horn_state_13", "delirium"},
        "case evidence targets",
    )
    for case in evidence["cases"].values():
        require(case["decompiled"], "case missing pseudo-C")
        require(all(item["text"] for item in case["decompiled"]), "empty pseudo-C evidence")
        require(case["assembly"], "case missing assembly")
        require(all(item["text"] for item in case["assembly"]), "empty assembly evidence")

    require(len(runtime_coverage["identity_coverage"]) == 653, "identity coverage rows")
    require(
        runtime_coverage["metrics"]["identity_ai_handler_route"]["numerator"] == 645,
        "effective AI handler identity count",
    )
    require(
        runtime_coverage["metrics"]["identity_live_external_observed"]["numerator"] <= 653,
        "live external identity count",
    )
    require(
        runtime_coverage["verification"].get("build_test", {}).get("failed") == 0,
        "runtime coverage build tests",
    )
    require(
        runtime_coverage["verification"].get("offline_replay", {}).get("frame_valid"),
        "runtime coverage offline replay",
    )
    field_rows = {row["key"]: row for row in runtime_coverage["fields"]}
    for key in (
        "ai_i1",
        "ai_i2",
        "delirium_attack_id",
        "delirium_cycle_id",
        "shield_strength",
        "shield_history_capacity",
    ):
        require(field_rows[key]["highest_status"] == 2, f"{key} live status")
    require(
        field_rows["state"]["highest_status"] == 5,
        "State should reach planner-consumed status",
    )

    required_files = [
        ROOT / "AI-FUNCTION-CATALOG.md",
        ROOT / "AI-RECOVERY-REPORT-20261029.md",
        ROOT / "README.md",
        ROOT / "ai-semantics-index.json",
        ROOT / "dispatcher-cases.json",
        ROOT / "case-evidence.json",
        ROOT / "RUNTIME-FIELD-COVERAGE-20261029.json",
        ROOT / "RUNTIME-FIELD-COVERAGE-20261029.tsv",
        ROOT / "RUNTIME-IDENTITY-COVERAGE-20261029.tsv",
        ROOT / "RUNTIME-FIELD-COVERAGE-20261029.md",
        ROOT / "toolchain.json",
    ]
    for path in required_files:
        require(path.is_file() and path.stat().st_size > 0, f"missing {path}")

    report = (ROOT / "AI-RECOVERY-REPORT-20261029.md").read_text(encoding="utf-8")
    for marker in (
        "Matriarch `413.0.0`",
        "Vis Fatty `886.0.0` State 16",
        "Ultra Greed `406.0.0`",
        "Big Horn `411.0.0` State 13",
        "Delirium `412.0.0`",
        "已从反编译代码恢复",
        "尚未确认",
    ):
        require(marker in report, f"report missing marker: {marker}")

    print("Recovery artifacts verified")
    print(f"Main functions: {main_manifest['decompiledCount']}/{main_manifest['functionCount']}")
    print(f"Dispatcher cases: {case_map['summary']['caseKinds']}")
    print(f"Identity routes: {case_map['summary']['identityKinds']}")
    print(f"Helpers: {helper_manifest['decompiledCount']}/{helper_manifest['functionCount']}")
    print(f"Direct calls indexed: {index['summary']['directCallSites']}")
    print(f"Case evidence targets: {len(evidence['cases'])}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
