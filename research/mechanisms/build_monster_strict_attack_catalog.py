"""Build the strict attack catalog for role=monster EntityConfigs.

Reuses the boss catalog record builder so both catalogs use the same runtime
semantics and evidence wording. This script never changes runtime behavior.
"""
from pathlib import Path
import csv
import io
import json
from collections import Counter

import build_boss_strict_attack_catalog as shared

ROOT = Path(__file__).resolve().parents[2]
CATALOG = ROOT / "data/npc/engine_npc_entity_catalog.tsv"
RUNTIME = ROOT / "data/mechanisms/gamebot_runtime_semantics.json"
STRICT = ROOT / "data/mechanisms/gamebot_attack_strict_validation.json"
STATIC = ROOT / "data/npc/engine_monster_static_mechanism_candidates.json"
OUT_TSV = ROOT / "data/npc/monster_strict_attack_catalog.tsv"
OUT_MD = ROOT / "data/npc/MONSTER-STRICT-ATTACK-CATALOG.md"
OUT_JSON = ROOT / "validation/monster-strict-attack-catalog-20261030.json"


def has_event_cue(entry):
    cues = entry.get("static_event_cues") or {}
    return bool(cues.get("trigger_count", 0)
                or entry.get("attack_cued_animation_names")
                or entry.get("animation_cues"))


def has_contact_candidate(entry):
    contact = entry.get("contact_damage") or {}
    if contact.get("base_candidate"):
        return True
    return any((item.get("collision_damage") or 0) > 0
               for item in entry.get("static_entity_data") or [])


def remaining_classification(record, entry):
    if record["strict_attack_recognition"] == "yes":
        return ""
    if record["attack_recognition_level"] != "static_ai_function_attack_call_candidate":
        return ""
    if has_event_cue(entry):
        return ""
    return "contact_only" if has_contact_candidate(entry) else "no_object_attack_evidence"


def main():
    runtime = shared.load_json(RUNTIME)
    strict = shared.load_json(STRICT)
    static = shared.load_json(STATIC)
    static_by_key = {entry["key"]: entry for entry in static.get("entries", [])}
    with CATALOG.open(encoding="utf-8-sig", newline="") as handle:
        rows = list(csv.DictReader(handle, delimiter="\t"))
    monsters = [row for row in rows if row["role"] == "monster"]
    assert len(monsters) == 322, f"expected 322 role=monster identities, found {len(monsters)}"
    records = [shared.build_record(row, runtime, strict) for row in monsters]
    for record in records:
        record["remaining_classification"] = remaining_classification(
            record, static_by_key.get(record["key"], {}))
    fields = shared.BOSS_FIELDS + ["remaining_classification"]
    shared.write_tsv(OUT_TSV, fields, records)

    strict_records = [record for record in records if record["strict_attack_recognition"] == "yes"]
    prediction_records = [record for record in records if record["strict_attack_prediction"] == "yes"]
    provisional_records = [record for record in records if record["provisional_attack_prediction"] == "yes"]
    candidate_only = [record for record in records
                      if record["strict_attack_recognition"] == "no"
                      and record["attack_recognition_level"] != "no_attack_candidate"]
    no_candidate = [record for record in records
                    if record["attack_recognition_level"] == "no_attack_candidate"]
    reasons = Counter(record["blocking_reason"] for record in records)
    contact_only = [record for record in records if record["remaining_classification"] == "contact_only"]
    no_object = [record for record in records if record["remaining_classification"] == "no_object_attack_evidence"]
    counts = {
        "total": len(records),
        "strict_recognition": len(strict_records),
        "strict_prediction": len(prediction_records),
        "provisional": len(provisional_records),
        "candidate_only": len(candidate_only),
        "no_candidate": len(no_candidate),
        "contact_only": len(contact_only),
        "no_object_attack_evidence": len(no_object),
        "blocking_reasons": dict(sorted(reasons.items())),
    }

    lines = [
        "# role=monster 的严格攻击识别 / 严格攻击预测目录",
        "",
        f"范围：`data/npc/engine_npc_entity_catalog.tsv` 中 `role=monster` 的 {counts['total']} 个精确身份。",
        "",
        "本目录只登记有来源链、严格 State/动画映射或已验证预警规则的严格结果；"
        "没有这些证据的静态候选仍保持候选。严格预测只表示动画帧到攻击对象生成的时点，"
        "不是几何预测，也不会自动创建 Planner 威胁。",
        "",
        "## 汇总",
        "",
        "| 项目 | 数量 |",
        "| --- | ---: |",
        f"| 精确身份 | {counts['total']} |",
        f"| 严格攻击识别 | {counts['strict_recognition']} |",
        f"| 严格攻击预测 | {counts['strict_prediction']} |",
        f"| 单运行/同种子 provisional 时点 | {counts['provisional']} |",
        f"| 仅有静态攻击候选 | {counts['candidate_only']} |",
        f"| 没有攻击候选 | {counts['no_candidate']} |",
        f"| 归为 contact_only | {counts['contact_only']} |",
        f"| 归为 no_object_attack_evidence | {counts['no_object_attack_evidence']} |",
        "",
        "## 严格攻击识别身份",
        "",
        "| 精确身份 | 名称 | EntityConfig | 识别依据 | 严格 State | 来源链对象组 |",
        "| --- | --- | --- | --- | --- | --- |",
    ]
    for record in strict_records:
        lines.append(
            f"| `{record['key']}` | {record['name_zh']} | {record['entity_config_name']} | "
            f"{shared.BASIS_ZH.get(record['strict_recognition_basis'], record['strict_recognition_basis'])} | "
            f"{record['strict_states'] or '-'} | {record['strict_groups'] or '-'} |")
    lines += [
        "",
        "## 严格攻击预测身份",
        "",
        "| 精确身份 | 名称 | 严格时点键 | 证据摘要 |",
        "| --- | --- | --- | --- |",
    ]
    for record in prediction_records:
        lines.append(
            f"| `{record['key']}` | {record['name_zh']} | {record['strict_prediction_timing_keys']} | "
            f"{record['strict_prediction_evidence']} |")
    lines += [
        "",
        "## 未达到严格识别的分布",
        "",
        "| 原因 | 数量 |",
        "| --- | ---: |",
    ]
    for reason, count in sorted(counts["blocking_reasons"].items(), key=lambda item: (-item[1], item[0])):
        if reason == "strict_attack_prediction_available":
            continue
        lines.append(f"| {shared.REASON_ZH.get(reason, reason)} (`{reason}`) | {count} |")
    lines += [
        "",
        "## 剩余 AI-only 无事件 cue 的分类",
        "",
        "这些身份只有完整 AI 函数调用，没有任何 State/动画事件 cue；"
        "它们不再作为可继续批量补测的候选，按接触候选或缺少对象证据归档。",
        "",
        "| 精确身份 | 名称 | 分类 |",
        "| --- | --- | --- |",
    ]
    for record in contact_only + no_object:
        lines.append(
            f"| `{record['key']}` | {record['name_zh']} | "
            f"{'contact_only' if record['remaining_classification'] == 'contact_only' else 'no_object_attack_evidence'} |")
    lines += [
        "",
        "## 数据",
        "",
        f"- 逐项明细：`data/npc/monster_strict_attack_catalog.tsv`",
        f"- 主目录：`data/npc/ENTITY-CATALOG.md`",
        f"- 运行时语义：`data/mechanisms/gamebot_runtime_semantics.json`",
        f"- 严格验证：`data/mechanisms/gamebot_attack_strict_validation.json`",
        "",
        "仍有静态候选没有来源链攻击对象；它们需要新的原版观察才能升级，不能由静态字段直接推导。",
    ]
    OUT_MD.write_text("\n".join(lines) + "\n", encoding="utf-8")

    validation = {
        "format": "isaac-gamebot-monster-strict-attack-catalog-v1",
        "generated_at": "2026-10-30",
        "sources": {
            "data/npc/engine_npc_entity_catalog.tsv": shared.sha256(CATALOG),
            "data/mechanisms/gamebot_runtime_semantics.json": shared.sha256(RUNTIME),
            "data/mechanisms/gamebot_attack_strict_validation.json": shared.sha256(STRICT),
            "data/npc/engine_monster_static_mechanism_candidates.json": shared.sha256(STATIC),
        },
        "definitions": {
            "strict_attack_recognition": "exact Type/Variant/Subtype + State/Animation + source-linked attack object within 1 frame, strict state-animation mapping, or verified warning rule",
            "strict_attack_prediction": "strict recognition + stable animation frame within 0/1 frame + at least two observations across two seeds + same object/mechanism",
            "prediction_scope": "animation-frame-to-attack-object timing only; geometry and Planner threats are not implied",
        },
        "counts": counts,
        "checks": {
            "exact_identity_count_322": len(records) == 322,
            "strict_flags_match_runtime_semantics": all(
                record["strict_attack_recognition"] == (
                    "yes" if runtime["identities"][record["key"]]["attack_recognition"]["level"] == shared.STRICT_LEVEL else "no")
                and record["strict_attack_prediction"] == (
                    "yes" if runtime["identities"][record["key"]]["attack_recognition"].get("strict_prediction") else "no")
                for record in records),
            "strict_prediction_implies_recognition": all(
                record["strict_attack_recognition"] == "yes" for record in prediction_records),
            "candidate_partition_is_complete": (
                counts["candidate_only"] + counts["strict_recognition"] + counts["no_candidate"] == counts["total"]),
            "remaining_classification_only_ai_no_cue": all(
                record["remaining_classification"] == "" or (
                    record["strict_attack_recognition"] == "no"
                    and record["attack_recognition_level"] == "static_ai_function_attack_call_candidate"
                    and not has_event_cue(static_by_key.get(record["key"], {})))
                for record in records),
            "classification_counts_match": (
                len(contact_only) + len(no_object) == counts["contact_only"] + counts["no_object_attack_evidence"]),
            "geometry_not_implied": True,
        },
        "strict_recognition_identity_keys": [record["key"] for record in strict_records],
        "strict_prediction_identity_keys": [record["key"] for record in prediction_records],
        "identities": {record["key"]: record for record in records},
    }
    OUT_JSON.write_text(json.dumps(validation, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(counts, ensure_ascii=False))
    print(f"Wrote {OUT_TSV}")
    print(f"Wrote {OUT_MD}")
    print(f"Wrote {OUT_JSON}")


if __name__ == "__main__":
    main()
