"""Audit which monster identities already feed Planner threats vs still lack geometry.

This is a read-only coverage audit. It does not promote models or create warnings.
"""
from pathlib import Path
import csv
import io
import json
from collections import Counter

ROOT = Path(__file__).resolve().parents[2]
CATALOG = ROOT / "data/npc/engine_npc_entity_catalog.tsv"
MONSTER_CATALOG = ROOT / "data/npc/monster_strict_attack_catalog.tsv"
RUNTIME = ROOT / "data/mechanisms/gamebot_runtime_semantics.json"
GEOMETRY = ROOT / "data/mechanisms/gamebot_monster_geometry.json"
PATTERNS = ROOT / "data/mechanisms/gamebot_monster_geometry_patterns.json"
OUT_JSON = ROOT / "validation/planner-threat-coverage-20261030.json"
OUT_MD = ROOT / "data/npc/PLANNER-THREAT-COVERAGE.md"
OUT_TSV = ROOT / "data/npc/planner_threat_coverage.tsv"


def load(path):
    return json.loads(path.read_text(encoding="utf-8"))


def main():
    rows = list(csv.DictReader(io.open(CATALOG, encoding="utf-8", newline=""), delimiter="\t"))
    monster_rows = list(csv.DictReader(io.open(MONSTER_CATALOG, encoding="utf-8", newline=""), delimiter="\t"))
    monster_classification = {row["key"]: row.get("remaining_classification", "") for row in monster_rows}
    runtime = load(RUNTIME)
    geometry = load(GEOMETRY)
    patterns = load(PATTERNS)

    contact = set()
    attack_planning = set()
    attack_verified_only = set()
    for model in geometry.get("models", []):
        key = model.get("target_identity")
        if model.get("kind") == "contact" and model.get("planning_validated"):
            contact.add(key)
        elif model.get("kind") != "contact":
            if model.get("planning_validated"):
                attack_planning.add(key)
            elif model.get("geometry_verified"):
                attack_verified_only.add(key)
    pattern = {rule.get("target_identity") for rule in patterns.get("rules", [])}
    warning_rule = set()
    for rule in runtime.get("warning_rules", []):
        for variant in rule.get("variants", []):
            for subtype in rule.get("subtypes", [0]):
                warning_rule.add((rule.get("type"), variant, subtype))

    records = []
    for row in rows:
        if row.get("role") != "monster":
            continue
        key = row["key"]
        type_, variant, subtype = map(int, key.split("."))
        attack_recognition = runtime["identities"][key]["attack_recognition"]
        has_rule = (type_, variant, subtype) in warning_rule
        has_pattern = key in pattern
        has_attack_model = key in attack_planning
        covered = has_rule or has_pattern or has_attack_model
        if has_rule or has_pattern or has_attack_model:
            status = "pre_spawn_covered"
        elif key in attack_verified_only:
            status = "reactive_geometry_only"
        else:
            status = "no_attack_geometry"
        records.append({
            "key": key,
            "name_zh": row["name_zh"],
            "strict_attack_recognition": row["strict_attack_recognition"],
            "strict_attack_prediction": row["strict_attack_prediction"],
            "remaining_classification": monster_classification.get(key, ""),
            "contact_planning_validated": key in contact,
            "attack_geometry_status": status,
            "warning_rule": has_rule,
            "pattern": has_pattern,
            "planning_validated_attack_model": has_attack_model,
            "geometry_verified_only": key in attack_verified_only,
        })

    strict = [r for r in records if r["strict_attack_prediction"] == "yes"]
    strict_gap = [r for r in strict if r["attack_geometry_status"] != "pre_spawn_covered"]
    contact_only = [r for r in records if r["remaining_classification"] == "contact_only"]
    counts = {
        "monster_identities": len(records),
        "contact_only": len(contact_only),
        "contact_only_planning_validated": sum(r["contact_planning_validated"] for r in contact_only),
        "strict_prediction": len(strict),
        "strict_prediction_pre_spawn_covered": len(strict) - len(strict_gap),
        "strict_prediction_geometry_gap": len(strict_gap),
        "status_counts": dict(Counter(r["attack_geometry_status"] for r in records)),
    }

    OUT_TSV.write_text(
        "key\tname_zh\tstrict_attack_prediction\tcontact_planning_validated\tattack_geometry_status\tremaining_classification\n"
        + "\n".join(
            f"{r['key']}\t{r['name_zh']}\t{r['strict_attack_prediction']}\t"
            f"{r['contact_planning_validated']}\t{r['attack_geometry_status']}\t{r['remaining_classification']}"
            for r in records
        ) + "\n",
        encoding="utf-8",
    )

    lines = [
        "# Monster Planner 威胁覆盖审计",
        "",
        "本审计只读现有几何模型、弹幕模式、预警规则和怪物严格目录；不新增威胁、不修改运行时语义。",
        "",
        "## 汇总",
        "",
        "| 项目 | 数量 |",
        "| --- | ---: |",
        f"| role=monster 身份 | {counts['monster_identities']} |",
        f"| contact_only 身份 | {counts['contact_only']} |",
        f"| contact_only 已有 planning_validated 接触模型 | {counts['contact_only_planning_validated']} |",
        f"| 严格预测身份 | {counts['strict_prediction']} |",
        f"| 严格预测已有预生成威胁覆盖 | {counts['strict_prediction_pre_spawn_covered']} |",
        f"| 严格预测缺少攻击几何 | {counts['strict_prediction_geometry_gap']} |",
        "",
        "## 接触型安全",
        "",
        f"37 个 `contact_only` 中，{counts['contact_only_planning_validated']} 个已经有 `planning_validated` 接触模型；"
        "这部分不需要再补测试。",
        "",
        "## 严格预测但缺攻击几何",
        "",
        "| 精确身份 | 名称 | 覆盖状态 |",
        "| --- | --- | --- |",
    ]
    for record in strict_gap:
        lines.append(f"| `{record['key']}` | {record['name_zh']} | {record['attack_geometry_status']} |")
    lines += [
        "",
        "## 建议优先级",
        "",
        "1. Boss 高伤害招式：`268.0.0`、`916.0.0`、`905.0.0`、`43.0.0`、`52.1.0`、`405.0.0`。",
        "2. 普通怪高频弹幕：`12.0.0`、`14.0.0`、`14.1.0`、`15.0.0`、`15.1.0`、`207.0.0`、`244.0.0`。",
        "3. `311.0.0`、`802.0.0`、`825.0.0` 有静态接触候选但无运行接触几何，先补接触测试。",
        "",
        "这些缺口需要几何验证或预生成模式，不是继续补时点能解决的。",
    ]
    OUT_MD.write_text("\n".join(lines) + "\n", encoding="utf-8")

    validation = {
        "format": "isaac-gamebot-planner-threat-coverage-v1",
        "generated_at": "2026-10-30",
        "sources": {
            "data/npc/engine_npc_entity_catalog.tsv": str(CATALOG.relative_to(ROOT)),
            "data/mechanisms/gamebot_runtime_semantics.json": str(RUNTIME.relative_to(ROOT)),
            "data/mechanisms/gamebot_monster_geometry.json": str(GEOMETRY.relative_to(ROOT)),
            "data/mechanisms/gamebot_monster_geometry_patterns.json": str(PATTERNS.relative_to(ROOT)),
        },
        "counts": counts,
        "strict_prediction_geometry_gap_keys": [r["key"] for r in strict_gap],
        "contact_only_missing_geometry": [r["key"] for r in contact_only if not r["contact_planning_validated"]],
        "identities": {r["key"]: r for r in records},
    }
    OUT_JSON.write_text(json.dumps(validation, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(counts, ensure_ascii=False))
    print(f"Wrote {OUT_JSON}")
    print(f"Wrote {OUT_MD}")
    print(f"Wrote {OUT_TSV}")


if __name__ == "__main__":
    main()
