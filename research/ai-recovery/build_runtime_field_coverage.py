#!/usr/bin/env python3
"""Build the runtime external-memory field coverage audit.

The report deliberately keeps code recovery, reader implementation, live
external-memory observation, semantic interpretation, and planner use as
separate evidence levels.
"""

from __future__ import annotations

import json
import re
import tempfile
from collections import Counter, defaultdict
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any, Iterable


ROOT = Path(__file__).resolve().parents[2]
AI_DIR = ROOT / "research/ai-recovery"
GHIDRA_DIR = AI_DIR / "ghidra-export"
INDEX_PATH = AI_DIR / "ai-semantics-index.json"
CASES_PATH = AI_DIR / "dispatcher-cases.json"
EVIDENCE_PATH = AI_DIR / "case-evidence.json"
RUNTIME_DB_PATH = ROOT / "data/mechanisms/gamebot_runtime_semantics.json"
READER_PATH = ROOT / "cpp/src/reader.cpp"
MODEL_PATH = ROOT / "cpp/include/gamebot/model.hpp"
SEMANTICS_PATH = ROOT / "cpp/src/semantics.cpp"
PLANNER_PATH = ROOT / "cpp/src/planner.cpp"
BINARY_PATH = ROOT / "bin/IsaacGamebot.exe"
BUILD_LOG = ROOT / "validation/runtime-field-coverage-build-20261029.log"
OFFLINE_REPLAY = ROOT / "validation/runtime-semantics-real-frame-replay-final2-20261029.jsonl"

OUT_JSON = AI_DIR / "RUNTIME-FIELD-COVERAGE-20261029.json"
OUT_TSV = AI_DIR / "RUNTIME-FIELD-COVERAGE-20261029.tsv"
OUT_IDENTITY_TSV = AI_DIR / "RUNTIME-IDENTITY-COVERAGE-20261029.tsv"
OUT_MD = AI_DIR / "RUNTIME-FIELD-COVERAGE-20261029.md"

STATUSES = {
    1: "已从代码恢复",
    2: "已实现外部读取",
    3: "已通过真实运行时读取验证",
    4: "已完成语义映射",
    5: "已进入策略决策",
    6: "尚未验证或无法直接读取",
}

OFFLINE_REPORTS = [
    ROOT / "research/state-semantics/state-semantics-runtime-20261029.json",
    ROOT / "research/state-semantics/state-semantics-invincibility-20261029.json",
    ROOT / "research/state-semantics/state-semantics-high-value-20261029.json",
    ROOT / "research/state-semantics/state-semantics-delirium-fields-20261029.json",
    ROOT / "research/state-semantics/state-semantics-ai-smoke-20261029.json",
]

ASM_LINE = re.compile(r"^([0-9a-f]{8})\s+(.+?)\s{2,}([a-zA-Z].*)$")
THIS_MEMORY = re.compile(
    r"\[((?:E(?:AX|BX|CX|DX|SI|DI|BP|SP)))\s*([+-])\s*0x([0-9a-fA-F]+)\]",
    re.IGNORECASE,
)
MOV_REG_REG = re.compile(
    r"^MOV\s+(E(?:AX|BX|CX|DX|SI|DI|BP|SP))\s*,\s*(E(?:AX|BX|CX|DX|SI|DI|BP|SP))$",
    re.IGNORECASE,
)
WRITE_DEST = re.compile(
    r"^(MOV|LEA|POP|XOR|ADD|SUB|INC|DEC|AND|OR|SHL|SHR|SAR|IMUL|MUL|DIV|IDIV)"
    r"\s+(E(?:AX|BX|CX|DX|SI|DI|BP|SP))(?:\s*,|$)",
    re.IGNORECASE,
)
ZHL_FIELD = re.compile(
    r"^\s*(?P<type>[A-Za-z_][A-Za-z0-9_:<>* ]*?)\s+"
    r"(?P<name>[A-Za-z_][A-Za-z0-9_]*)\s*:\s*0x(?P<offset>[0-9a-fA-F]+)\s*;",
)


def sha256(path: Path) -> str:
    import hashlib

    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def sha256_from_values(values: Iterable[str]) -> str:
    import hashlib

    digest = hashlib.sha256()
    for value in values:
        digest.update(value.encode("utf-8"))
        digest.update(b"\0")
    return digest.hexdigest()


def rel(path: Path) -> str:
    return path.resolve().relative_to(ROOT).as_posix()


def load_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def identity_key(value: dict[str, Any]) -> str:
    return f"{value.get('type', 0)}.{value.get('variant', 0)}.{value.get('subtype', 0)}"


def parse_zhl_layout(path: Path) -> dict[int, dict[str, str]]:
    layout: dict[int, dict[str, str]] = {}
    for line in path.read_text(encoding="utf-8").splitlines():
        match = ZHL_FIELD.match(line)
        if not match:
            continue
        offset = int(match.group("offset"), 16)
        layout[offset] = {
            "type": match.group("type").strip(),
            "name": match.group("name").lstrip("_"),
            "source": rel(path),
        }
    return layout


def infer_size(text: str) -> int:
    lower = text.lower()
    if "byte ptr" in lower:
        return 1
    if "word ptr" in lower:
        return 2
    if "qword ptr" in lower:
        return 8
    if "xmmword ptr" in lower:
        return 16
    if "dword ptr" in lower or "movss" in lower:
        return 4
    if "movsd" in lower:
        return 8
    return 4


def memory_access(text: str, match: re.Match[str]) -> str:
    upper = text.upper()
    mnemonic = upper.split(None, 1)[0]
    ref_start = match.start()
    comma = upper.find(",")
    if mnemonic in {"INC", "DEC", "NOT", "NEG"}:
        return "rw"
    if comma >= 0 and ref_start < comma:
        return "w"
    return "r"


def this_registers(instructions: list[tuple[str, str, str]]) -> dict[str, set[str]]:
    """Approximate MSVC this-pointer aliases without guessing arbitrary bases."""

    aliases = {"ECX"}
    out: dict[str, set[str]] = {}
    persistent = {"EAX", "EBX", "ECX", "EDX", "ESI", "EDI", "EBP", "ESP"}
    for address, _raw, text in instructions:
        upper = text.upper()
        out[address] = set(aliases - {"ECX", "ESP"})
        moved = MOV_REG_REG.match(upper)
        written = WRITE_DEST.match(upper)
        if moved:
            destination, source = moved.groups()
            if source in aliases:
                aliases.add(destination)
            elif destination in persistent:
                aliases.discard(destination)
        elif written and written.group(2) in persistent:
            aliases.discard(written.group(2))
        if upper.startswith(("CALL ", "XCHG ")):
            aliases.discard("ECX")
            aliases.discard("EDX")
            aliases.discard("EAX")
    return out


def parse_assembly(path: Path) -> list[tuple[str, str, str]]:
    rows: list[tuple[str, str, str]] = []
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        match = ASM_LINE.match(line)
        if match:
            rows.append((f"0x{match.group(1)}", match.group(2), match.group(3)))
    return rows


@dataclass
class Field:
    key: str
    offset: int | None
    type_name: str
    category: str
    description: str
    reader: str = ""
    reader_json: str = ""
    explicit_identities: set[str] = field(default_factory=set)
    planner_consumed: bool = False
    planner_reason: str = ""
    semantics_complete: bool = False
    semantics_note: str = ""
    code_recovered: bool = False
    code_evidence: list[dict[str, Any]] = field(default_factory=list)
    runtime_observed: bool = False
    runtime_validated: bool = False
    runtime_note: str = ""
    offline_observed: bool = False
    offline_correlated: bool = False
    unresolved_reason: str = ""
    confirmed_layout: bool = False
    zhl_name: str = ""


def rf(
    key: str,
    offset: int | None,
    type_name: str,
    category: str,
    description: str,
    reader: str,
    reader_json: str,
    *,
    planner: bool = False,
    planner_reason: str = "",
    semantics: bool = False,
    semantics_note: str = "",
    identities: Iterable[str] = (),
    confirmed: bool = True,
    unresolved: str = "",
) -> Field:
    return Field(
        key=key,
        offset=offset,
        type_name=type_name,
        category=category,
        description=description,
        reader=reader,
        reader_json=reader_json,
        explicit_identities=set(identities),
        planner_consumed=planner,
        planner_reason=planner_reason,
        semantics_complete=semantics,
        semantics_note=semantics_note,
        confirmed_layout=confirmed,
        unresolved_reason=unresolved,
    )


def canonical_fields() -> list[Field]:
    planner_base = "Planner uses the field directly or through an identity-specific threat rule."
    fields = [
        rf("type", 0x28, "int32", "identity", "Entity Type", "Entity.type", "type",
           planner=True, planner_reason="Targeting and hard-coded threat identity checks.", semantics=True),
        rf("variant", 0x2C, "int32", "identity", "Entity Variant", "Entity.variant", "variant",
           planner=True, planner_reason="Variant-specific threat and warning rules.", semantics=True),
        rf("subtype", 0x30, "int32", "identity", "Entity Subtype", "Entity.subtype", "subtype",
           planner=True, planner_reason="Exact identity and exception routing.", semantics=True),
        rf("spawner_type", 0x34, "int32", "relationship", "Spawner type", "Entity.spawner_type", "spawner_type",
           planner=True, planner_reason="Hostile projectile ownership checks use spawner type.", semantics=True),
        rf("flags", 0x168, "uint64", "base", "Entity flags", "Entity.flags", "flags",
           planner=True, planner_reason="Friendly and no-target flag gates.", semantics=True),
        rf("active", 0x170, "bool", "lifecycle", "Active flag", "Entity.active", "active",
           planner=True, planner_reason="Entity liveness gate.", semantics=True),
        rf("exists", 0x172, "bool", "lifecycle", "Exists flag", "Entity.exists", "exists",
           planner=True, planner_reason="Entity liveness gate.", semantics=True),
        rf("dead", 0x173, "bool", "lifecycle", "Dead flag", "Entity.dead", "dead",
           planner=True, planner_reason="Entity liveness gate.", semantics=True),
        rf("grid_collision", 0x184, "int32", "collision", "Grid collision class", "Entity.grid_collision", "grid_collision",
           semantics=True),
        rf("collision", 0x188, "int32", "collision", "Entity collision class", "Entity.collision", "collision",
           planner=True, planner_reason="Targetability and contact threat classification.", semantics=True),
        rf("boss_status_cooldown", 0x238, "int32", "boss", "Boss status-effect cooldown",
           "Entity.boss_status_cooldown", "boss_status_cooldown",
           semantics_note="Known layout, but no identity-specific AI use is yet mapped to Planner."),
        rf("birth", 0x328, "int32", "lifecycle", "Spawn clock", "Entity.birth", "birth", semantics=True),
        rf("target_pos", 0x334, "Vector2", "position", "AI target position", "Entity.target_pos", "target_pos",
           planner=True, planner_reason="Landing and aimed-attack geometry uses the observed target position.",
           semantics=True),
        rf("position", 0x33C, "Vector2", "position", "Entity position", "Entity.pos", "pos",
           planner=True, planner_reason=planner_base, semantics=True),
        rf("velocity", 0x360, "Vector2", "motion", "Entity velocity", "Entity.vel", "vel",
           planner=True, planner_reason="Shot interception and moving-threat prediction.", semantics=True),
        rf("radius", 0x370, "float32", "geometry", "Entity collision radius", "Entity.radius", "radius",
           planner=True, planner_reason="Contact and hazard clearance.", semantics=True),
        rf("health", 0x380, "float32", "health", "Current health", "Entity.hp", "hp",
           planner=True, planner_reason="Navigation progress uses HP reductions.", semantics=True),
        rf("max_health", 0x384, "float32", "health", "Maximum health", "Entity.max_hp", "max_hp",
           semantics=True, semantics_note="Raw value is exposed; no Boss phase threshold is inferred from it alone."),
        rf("collision_damage", 0x388, "float32", "damage", "Collision damage", "Entity.damage", "damage",
           planner=True, planner_reason="Contact threat requires positive collision damage.", semantics=True),
        rf("speed_multiplier", 0x39C, "float32", "motion", "Speed multiplier", "Entity.speed_multiplier", "speed_multiplier",
           semantics=True, semantics_note="Observer only; current Planner consumes derived velocity, not this field."),
        rf("invincible", 0x3B0, "bool", "damage_filter", "Damage-filter invincible flag",
           "Entity.invulnerable", "invulnerable", planner=True,
           planner_reason="Invincible entities are excluded from target selection.",
           semantics_note="The flag is not a complete explanation of shield, phase, damage-cap, or source immunity."),
        rf("parent", 0x3BC, "EntityPtr", "relationship", "Parent entity pointer", "Entity.parent", "parent",
           planner=True, planner_reason="Observed parent/spawner/owner links propagate allegiance and laser motion.",
           semantics=True),
        rf("child", 0x3C0, "EntityPtr", "relationship", "Child entity pointer", "Entity.child", "child",
           semantics_note="Raw and snapshot-resolved value are exposed; child-specific semantics remain per AI."),
        rf("target", 0x3C4, "EntityPtr", "relationship", "AI target entity pointer", "Entity.target", "target",
           semantics_note="Snapshot resolution is checked, but attack ownership is not inferred from the pointer alone."),
        rf("spawner", 0x3C8, "EntityPtr", "relationship", "Spawner entity pointer", "Entity.spawner", "spawner",
           planner=True, planner_reason="Spawn ownership contributes to hostile-source classification.",
           semantics=True),
        rf("owner", 0x410, "EntityPtr", "relationship", "Entity owner pointer (Type 3 layout)", "Entity.owner", "owner",
           planner=True, planner_reason="Resolved owner links contribute to allegiance propagation.", semantics=True),
        rf("seed", 0x3EC, "uint32", "identity", "Entity seed", "Entity.seed", "seed", semantics=True),
        rf("animation", 0x7C, "ANM2 ptr", "animation", "Animation object string", "Entity.animation", "animation",
           planner=True, planner_reason="Animation/state rules drive warning geometry.", semantics=True),
        rf("animation_frame", 0x88, "float32", "animation", "Animation frame", "Entity.animation_frame", "animation_frame",
           planner=True, planner_reason="Eye Laser warning trigger timing uses animation frame.", semantics=True),
        rf("state_frame", 0x410, "int32", "timer", "AI state frame", "Entity.state_frame", "state_frame",
           planner=True, planner_reason="Hard-coded and semantic warning windows compare StateFrame.", semantics=True),
        rf("projectile_cooldown", 0xBA0, "int32", "timer", "NPC projectile cooldown",
           "Entity.projectile_cooldown", "projectile_cooldown", semantics=True),
        rf("projectile_delay", 0xBA4, "int32", "timer", "NPC projectile delay",
           "Entity.projectile_delay", "projectile_delay", semantics=True),
        rf("ai_v1_x", 0xBB0, "float32", "ai_parameter", "AI vector 1 X", "Entity.ai_v1.x", "ai_v1.x",
           semantics_note="Raw value is exposed; per-identity meaning is not established."),
        rf("ai_v1_y", 0xBB4, "float32", "ai_parameter", "AI vector 1 Y", "Entity.ai_v1.y", "ai_v1.y",
           semantics_note="Raw value is exposed; per-identity meaning is not established."),
        rf("ai_v2_x", 0xBB8, "float32", "ai_parameter", "AI vector 2 X", "Entity.ai_v2.x", "ai_v2.x",
           semantics_note="Raw value is exposed; per-identity meaning is not established."),
        rf("ai_v2_y", 0xBBC, "float32", "ai_parameter", "AI vector 2 Y", "Entity.ai_v2.y", "ai_v2.y",
           semantics_note="Raw value is exposed; per-identity meaning is not established."),
        rf("ai_i1", 0xBC0, "int32", "ai_parameter", "AI integer 1", "Entity.ai_i1", "ai_i1",
           semantics_note="Matriarch State 13 uses it as a countdown, but generic semantics are not complete."),
        rf("ai_i2", 0xBC4, "int32", "ai_parameter", "AI integer 2", "Entity.ai_i2", "ai_i2",
           semantics_note="Matriarch uses it as a phase index, but generic semantics are not complete."),
        rf("state", 0xB64, "int32", "state", "NPC AI state", "Entity.state", "state",
           planner=True, planner_reason="Identity-specific state rules feed Planner warnings and actions.", semantics=True),
        rf("delirium_boss_type", 0xBC8, "uint32", "delirium", "Borrowed boss Type", "Entity.delirium_boss_type",
           "delirium_boss_type", semantics_note="Raw form selector; dispatch semantics are incomplete."),
        rf("delirium_boss_variant", 0xBCC, "uint32", "delirium", "Borrowed boss Variant",
           "Entity.delirium_boss_variant", "delirium_boss_variant",
           semantics_note="Raw form selector; dispatch semantics are incomplete."),
        rf("delirium_transformation_timer", 0xBD0, "uint16", "delirium", "Transformation timer",
           "Entity.delirium_transformation_timer", "delirium_transformation_timer",
           semantics_note="Observed raw timer; transition predicates are not mapped to Planner."),
        rf("delirium_remaining_attacks", 0xBD2, "uint8", "delirium", "Remaining attacks",
           "Entity.delirium_remaining_attacks", "delirium_remaining_attacks",
           semantics_note="Observed raw counter; counting semantics are not complete."),
        rf("delirium_state", 0xBD3, "uint8", "delirium", "Delirium sub-state",
           "Entity.delirium_state", "delirium_state", semantics_note="Observed sub-state; per-value actions are incomplete."),
        rf("delirium_attack_id", 0xBD8, "uint32", "delirium", "AttackID",
           "Entity.delirium_attack_id", "delirium_attack_id",
           semantics_note="Selectors exist, but AttackID-to-attack mapping remains incomplete."),
        rf("delirium_attack_angle", 0xBDC, "uint8", "delirium", "Attack angle byte",
           "Entity.delirium_attack_angle", "delirium_attack_angle",
           semantics_note="Raw angle is exposed; angle-to-entity geometry is not verified."),
        rf("delirium_cycle_id", 0xBE0, "uint64 packed", "delirium", "CycleID packed value",
           "Entity.delirium_cycle_id", "delirium_cycle_id",
           semantics_note="Packed fields are exposed, but all bit-field meanings are incomplete."),
        rf("is_boss", 0xC3D, "bool", "boss", "Boss flag", "Entity.is_boss", "is_boss",
           semantics=True),
        rf("shield_strength", 0xC40, "float32", "damage_filter", "Shield absorption strength",
           "Entity.shield_strength", "shield_strength",
           semantics_note="ShieldDamageAbsorption confirms damage scaling; complete immunity boundaries remain per AI."),
        rf("shield_history_capacity", 0xC44, "int32", "damage_filter", "Shield damage-history capacity",
           "Entity.shield_history_capacity", "shield_history_capacity",
           semantics=True, semantics_note="Ring-buffer capacity for the recovered shield absorption calculation."),
        rf("champion", 0xC64, "int32", "champion", "Champion ID", "Entity.champion", "champion",
           planner=True, planner_reason="Champion 5 is assigned elevated targeting priority.", semantics=True),
        rf("boss_color", 0xC78, "int32", "boss", "Boss color index", "Entity.boss_color", "boss_color",
           semantics_note="Readable visual/Boss field; no confirmed strategy use."),
    ]
    return fields


def derived_fields() -> list[Field]:
    return [
        rf("parent_in_snapshot", None, "bool", "derived_relationship", "Parent resolves in current frame",
           "", "parent_in_snapshot", semantics=True),
        rf("child_in_snapshot", None, "bool", "derived_relationship", "Child resolves in current frame",
           "", "child_in_snapshot", semantics=True),
        rf("target_in_snapshot", None, "bool", "derived_relationship", "Target resolves in current frame",
           "", "target_in_snapshot", semantics=True),
        rf("spawner_in_snapshot", None, "bool", "derived_relationship", "Spawner resolves in current frame",
           "", "spawner_in_snapshot", semantics=True),
        rf("owner_in_snapshot", None, "bool", "derived_relationship", "Owner resolves in current frame",
           "", "owner_in_snapshot", semantics=True),
        rf("delirium_layout_valid", None, "bool", "derived_delirium", "Type 412 Delirium layout is valid",
           "", "delirium_layout_valid", identities={"412.0.0"},
           semantics=True, semantics_note="Prevents shared NPC slots from being interpreted as Delirium on other Types."),
        rf("delirium_attack_id_low24", None, "uint24", "derived_delirium", "AttackID low 24 bits",
           "", "delirium_attack_id_low24", semantics_note="Mask is code-confirmed, but selector meaning is incomplete."),
        rf("delirium_cycle_low7", None, "uint7", "derived_delirium", "CycleID bits 0..6",
           "", "delirium_cycle_low7", semantics_note="Bit extraction is known; meaning is incomplete."),
        rf("delirium_cycle_field_15_24", None, "uint10", "derived_delirium", "CycleID bits 15..24",
           "", "delirium_cycle_field_15_24", semantics_note="Bit extraction is known; meaning is incomplete."),
        rf("delirium_cycle_field_25_34", None, "uint10", "derived_delirium", "CycleID bits 25..34",
           "", "delirium_cycle_field_25_34", semantics_note="Bit extraction is known; meaning is incomplete."),
        rf("boss_phase", None, "int32", "derived_boss", "Curated Boss phase index", "", "boss_phase",
           semantics_note="Only Matriarch AI I2 is currently mapped to a named phase index."),
        rf("is_enraged", None, "tri_state", "derived_boss", "Curated enrage state", "", "is_enraged",
           semantics_note="Matriarch State 13 has runtime evidence; Vis Fatty State 16 remains static-only."),
    ]


REAL_LOG_PATTERNS = [
    "sessions/native-*/frames-*.jsonl",
    "validation/live-readonly-*/observe-connected.jsonl",
    "validation/live-readonly-*/shadow-room-check.jsonl",
    "validation/background-input-*/readiness.jsonl",
    "validation/background-input-*/readiness-*.jsonl",
    "validation/background-input-*/before.jsonl",
]


def real_log_files() -> list[Path]:
    files: dict[str, Path] = {}
    for pattern in REAL_LOG_PATTERNS:
        for path in ROOT.glob(pattern):
            if path.is_file() and path.stat().st_size:
                files[rel(path)] = path
    return [files[key] for key in sorted(files)]


RUNTIME_TRANSITION_KEYS = {
    "state": "state",
    "state_frame": "stateFrame",
    "animation": "animation",
    "animation_frame": "animationFrame",
    "health": "hp",
    "max_health": "maxHp",
    "speed_multiplier": "speedMultiplier",
    "invincible": "invulnerable",
    "child": "child",
    "target": "target",
    "projectile_cooldown": "projectileCooldown",
    "projectile_delay": "projectileDelay",
    "ai_v1_x": "aiV1",
    "ai_v1_y": "aiV1",
    "ai_v2_x": "aiV2",
    "ai_v2_y": "aiV2",
    "ai_i1": "aiI1",
    "ai_i2": "aiI2",
    "is_boss": "isBoss",
    "shield_strength": "shieldStrength",
    "boss_color": "bossColor",
    "boss_status_cooldown": "bossStatusCooldown",
    "delirium_boss_type": "deliriumBossType",
    "delirium_boss_variant": "deliriumBossVariant",
    "delirium_transformation_timer": "deliriumTransformationTimer",
    "delirium_remaining_attacks": "deliriumRemainingAttacks",
    "delirium_state": "deliriumState",
    "delirium_attack_id": "deliriumAttackId",
    "delirium_attack_id_low24": "deliriumAttackIdLow24",
    "delirium_attack_angle": "deliriumAttackAngle",
    "delirium_cycle_id": "deliriumCycleId",
    "delirium_cycle_low7": "deliriumCycleLow7",
    "delirium_cycle_field_15_24": "deliriumCycleField1524",
    "delirium_cycle_field_25_34": "deliriumCycleField2534",
}


def runtime_value(entity: dict[str, Any], key: str) -> Any:
    if key in {"ai_v1_x", "ai_v1_y"}:
        return (entity.get("ai_v1") or {}).get("x" if key.endswith("x") else "y")
    if key in {"ai_v2_x", "ai_v2_y"}:
        return (entity.get("ai_v2") or {}).get("x" if key.endswith("x") else "y")
    if key == "position":
        return entity.get("pos")
    if key == "target_pos":
        return entity.get("target_pos")
    if key == "velocity":
        return entity.get("vel")
    if key == "collision_damage":
        return entity.get("damage")
    if key == "invincible":
        return entity.get("invulnerable")
    if key == "health":
        return entity.get("hp")
    if key == "max_health":
        return entity.get("maxHp", entity.get("max_hp"))
    if key == "animation":
        return entity.get("animation")
    if key in {"parent_in_snapshot", "child_in_snapshot", "target_in_snapshot", "spawner_in_snapshot", "owner_in_snapshot"}:
        raw_name = key.replace("_in_snapshot", "")
        if raw_name not in entity:
            return None
        raw = entity.get(raw_name)
        return bool(raw and raw in entity.get("__snapshot_addresses", set()))
    return entity.get(key)


def scan_real_runtime(field_keys: set[str]) -> dict[str, Any]:
    files = real_log_files()
    cache_path = Path(tempfile.gettempdir()) / "isaac-gamebot-runtime-field-coverage-cache-v6.json"
    fingerprint = sha256_from_values(
        [rel(path) for path in files]
        + [str(path.stat().st_size) for path in files]
        + [str(path.stat().st_mtime_ns) for path in files]
        + sorted(field_keys)
    )
    if cache_path.exists():
        try:
            cached = load_json(cache_path)
            if cached.get("fingerprint") == fingerprint and cached.get("payload"):
                return cached["payload"]
        except (OSError, json.JSONDecodeError, AttributeError):
            pass
    fields = {key: {"observed": False, "behavior_correlated": False, "count": 0} for key in field_keys}
    identities: set[str] = set()
    transition_identities: set[str] = set()
    transition_identities_by_field: dict[str, set[str]] = defaultdict(set)
    identities_with_field: dict[str, set[str]] = defaultdict(set)
    valid_frames = 0
    enemy_records = 0
    transitions = Counter()
    runtime_files: list[str] = []
    for path in files:
        previous: dict[int, dict[str, Any]] = {}
        previous_clock: int | None = None
        used = False
        with path.open("r", encoding="utf-8", errors="replace") as handle:
            for line in handle:
                if not line.strip():
                    continue
                try:
                    record = json.loads(line)
                except json.JSONDecodeError:
                    continue
                frame = record.get("frame") or {}
                if not frame.get("valid"):
                    continue
                valid_frames += 1
                used = True
                clock = int(frame.get("clock") or 0)
                if previous_clock is not None and clock < previous_clock:
                    previous.clear()
                previous_clock = clock
                entities = [e for e in frame.get("entities", []) if isinstance(e, dict)]
                addresses = {e.get("address") for e in entities if e.get("address")}
                current: dict[int, dict[str, Any]] = {}
                for entity in entities:
                    entity_type = int(entity.get("type") or 0)
                    if not 10 <= entity_type < 1000 or entity.get("dead"):
                        continue
                    enemy_records += 1
                    key = identity_key(entity)
                    identities.add(key)
                    addresses_value = entity.get("address")
                    if addresses_value:
                        current[int(addresses_value)] = {
                            "key": key,
                            "clock": clock,
                            "state": entity.get("state"),
                            "stateFrame": entity.get("stateFrame", entity.get("state_frame")),
                            "hp": entity.get("hp"),
                            "invulnerable": entity.get("invulnerable", entity.get("invincible")),
                            "animation": entity.get("animation"),
                            "animationFrame": entity.get("animationFrame", entity.get("animation_frame")),
                        }
                    entity["__snapshot_addresses"] = addresses
                    for field_key in field_keys:
                        value = runtime_value(entity, field_key)
                        if value is not None:
                            fields[field_key]["observed"] = True
                            fields[field_key]["count"] += 1
                            identities_with_field[field_key].add(key)
                    address = int(entity.get("address") or 0)
                    prior = previous.get(address) if address else None
                    if prior and prior["key"] == key:
                        if prior.get("state") is not None and entity.get("state") != prior.get("state"):
                            transitions["state"] += 1
                            transition_identities.add(key)
                            transition_identities_by_field["state"].add(key)
                        if prior.get("stateFrame") is not None and entity.get("stateFrame", entity.get("state_frame")) != prior.get("stateFrame"):
                            transitions["state_frame"] += 1
                            transition_identities_by_field["state_frame"].add(key)
                        hp = entity.get("hp")
                        if prior.get("hp") is not None and hp is not None and hp < prior.get("hp"):
                            transitions["health"] += 1
                            transition_identities_by_field["health"].add(key)
                        invulnerable = entity.get("invulnerable", entity.get("invincible"))
                        if prior.get("invulnerable") is not None and invulnerable != prior.get("invulnerable"):
                            transitions["invincible"] += 1
                            transition_identities_by_field["invincible"].add(key)
                        if entity.get("animation") != prior.get("animation"):
                            transitions["animation"] += 1
                            transition_identities_by_field["animation"].add(key)
                        animation_frame = entity.get("animationFrame", entity.get("animation_frame"))
                        if animation_frame != prior.get("animationFrame") and animation_frame is not None:
                            transitions["animation_frame"] += 1
                            transition_identities_by_field["animation_frame"].add(key)
                previous = current
        if used:
            runtime_files.append(rel(path))
    correlated = {"state", "state_frame", "health", "invincible", "animation", "animation_frame"}
    for key in correlated:
        if transitions[key]:
            fields[key]["behavior_correlated"] = True
    payload = {
        "files": runtime_files,
        "file_count": len(runtime_files),
        "valid_frames": valid_frames,
        "enemy_records": enemy_records,
        "identities": sorted(identities),
        "transition_identities": sorted(transition_identities),
        "identities_with_field": {key: sorted(value) for key, value in identities_with_field.items()},
        "identities_by_validated_field": {
            key: sorted(value) for key, value in transition_identities_by_field.items()
        },
        "transitions": dict(transitions),
        "fields": fields,
        "source_kind": "historical external ReadProcessMemory JSONL from live sessions",
    }
    cache_path.write_text(
        json.dumps({"fingerprint": fingerprint, "payload": payload}, ensure_ascii=False),
        encoding="utf-8",
    )
    return payload


def scan_offline_runtime(field_keys: set[str]) -> dict[str, Any]:
    fields = {key: {"observed": False, "correlated": False, "count": 0} for key in field_keys}
    identities: set[str] = set()
    transition_identities: set[str] = set()
    sources: list[str] = []
    cases = 0
    transitions = 0
    for path in OFFLINE_REPORTS:
        if not path.exists():
            continue
        report = load_json(path)
        used = False
        for case in report.get("cases", []):
            key = case.get("key")
            rows = case.get("stateTransitions") or []
            if not key or not rows:
                continue
            used = True
            cases += 1
            identities.add(key)
            if len({row.get("state") for row in rows}) > 1:
                transition_identities.add(key)
            for row in rows:
                transitions += 1
                for field_key in field_keys:
                    mapped = RUNTIME_TRANSITION_KEYS.get(field_key)
                    if not mapped:
                        continue
                    value = row.get(mapped)
                    if value is not None:
                        fields[field_key]["observed"] = True
                        fields[field_key]["count"] += 1
                        if field_key in {"state", "health", "invincible", "animation", "ai_i1", "ai_i2",
                                         "shield_strength", "delirium_state", "delirium_attack_id",
                                         "delirium_cycle_id", "delirium_transformation_timer"}:
                            fields[field_key]["correlated"] = True
        if used:
            sources.append(rel(path))
    return {
        "sources": sources,
        "cases": cases,
        "transition_rows": transitions,
        "identities": sorted(identities),
        "transition_identities": sorted(transition_identities),
        "fields": fields,
        "source_kind": "offline original-engine training probes; not counted as external RPM",
    }


def scan_ai_offsets(
    index: dict[str, Any],
    cases: dict[str, Any],
    layouts: dict[int, dict[str, str]],
    canonical: list[Field],
) -> tuple[list[dict[str, Any]], dict[str, list[dict[str, Any]]], dict[str, Any]]:
    function_by_va = {item["va"].lower(): item for item in index["functions"]}
    identity_routes: dict[str, dict[str, Any]] = {}
    for case in cases["cases"]:
        for identity in case["identities"]:
            identity_routes[identity["key"]] = {
                "case_index": case["caseIndex"],
                "case_va": case["caseVa"],
                "kind": case["kind"],
                "function": case.get("delegateTarget"),
                "types": case["types"],
            }
    refs_by_offset: dict[int, list[dict[str, Any]]] = defaultdict(list)
    known_refs: dict[str, list[dict[str, Any]]] = defaultdict(list)
    scanned_functions = 0
    for function in index["functions"]:
        if function.get("dispatcherRole") != "delegate_handler" or not function.get("asmFile"):
            continue
        scanned_functions += 1
        instructions = parse_assembly(GHIDRA_DIR / function["asmFile"])
        aliases = this_registers(instructions)
        identities = function.get("dispatcherDelegateIdentities", [])
        for address, raw, text in instructions:
            for match in THIS_MEMORY.finditer(text):
                register, sign, hex_offset = match.groups()
                if sign != "+":
                    continue
                offset = int(hex_offset, 16)
                if offset > 0x4000:
                    continue
                if register.upper() not in aliases.get(address, set()):
                    continue
                evidence = {
                    "site": address,
                    "instruction": text,
                    "bytes": raw,
                    "size": infer_size(text),
                    "access": memory_access(text, match),
                    "function": function["va"],
                    "function_file": function.get("cFile"),
                    "assembly_file": function.get("asmFile"),
                    "identities": identities,
                    "types": function.get("types", []),
                }
                refs_by_offset[offset].append(evidence)
                for field in canonical:
                    if field.offset == offset:
                        known_refs[field.key].append(evidence)
    return list(identity_routes.values()), refs_by_offset, {
        "scanned_delegate_functions": scanned_functions,
        "identity_routes": len(identity_routes),
    }


def build_offset_inventory(
    refs_by_offset: dict[int, list[dict[str, Any]]],
    canonical: list[Field],
    layouts: dict[int, dict[str, str]],
) -> list[dict[str, Any]]:
    canonical_by_offset = {field.offset: field for field in canonical if field.offset is not None}
    covered: set[int] = set()
    rows: list[dict[str, Any]] = []
    for offset in sorted(refs_by_offset):
        refs = refs_by_offset[offset]
        field = canonical_by_offset.get(offset)
        if field:
            covered.add(offset)
            continue
        # Byte/word subfields of a known scalar belong to the same logical field.
        parent = next(
            (
                candidate
                for candidate in canonical
                if candidate.offset is not None
                and candidate.offset < offset < candidate.offset + (16 if "Vector" in candidate.type_name else 8 if "uint64" in candidate.type_name else 4)
            ),
            None,
        )
        if parent:
            continue
        identities = sorted({identity for ref in refs for identity in ref["identities"]})
        layout = layouts.get(offset)
        rows.append(
            {
                "key": f"offset_0x{offset:x}",
                "offset": f"0x{offset:x}",
                "offset_int": offset,
                "type_name": (layout or {}).get("type", f"size-{max(ref['size'] for ref in refs)}"),
                "category": "unclassified_ai_slot" if not layout else "known_layout_unmodeled",
                "description": (layout or {}).get("name", "Unclassified direct AI field slot"),
                "evidence_count": len(refs),
                "reads": sum(ref["access"] in {"r", "rw"} for ref in refs),
                "writes": sum(ref["access"] in {"w", "rw"} for ref in refs),
                "identities": identities,
                "functions": sorted({ref["function"] for ref in refs}),
                "evidence": refs,
                "layout_source": (layout or {}).get("source"),
            }
        )
    return rows


def status_for(field_row: dict[str, Any], is_derived: bool = False) -> int:
    reader = bool(field_row.get("reader_implemented"))
    runtime = bool(field_row.get("runtime_behavior_correlated"))
    semantics = bool(field_row.get("semantics_complete"))
    planner = bool(field_row.get("planner_consumed"))
    recovered = bool(field_row.get("code_recovered"))
    if reader and runtime and semantics and planner:
        return 5
    if reader and runtime and semantics:
        return 4
    if reader and runtime:
        return 3
    if reader:
        return 2
    if recovered:
        return 1
    if is_derived:
        return 6
    return 6


def field_to_row(
    field: Field,
    refs: list[dict[str, Any]],
    real: dict[str, Any],
    offline: dict[str, Any],
    route_keys: set[str],
) -> dict[str, Any]:
    real_field = real["fields"].get(field.key, {})
    offline_field = offline["fields"].get(field.key, {})
    observed_identities = set(real.get("identities_with_field", {}).get(field.key, []))
    if field.offset is not None:
        applicable = sorted({identity for ref in refs for identity in ref["identities"]})
        if not applicable:
            applicable = sorted(route_keys or field.explicit_identities)
    else:
        applicable = sorted(observed_identities or field.explicit_identities or route_keys)
    reader_implemented = bool(field.reader or field.reader_json)
    row = {
        "key": field.key,
        "offset": f"0x{field.offset:x}" if field.offset is not None else "derived",
        "type": field.type_name,
        "category": field.category,
        "description": field.description,
        "confirmed_layout": field.confirmed_layout,
        "code_recovered": field.code_recovered or bool(refs),
        "evidence_count": len(refs),
        "reads": sum(ref["access"] in {"r", "rw"} for ref in refs),
        "writes": sum(ref["access"] in {"w", "rw"} for ref in refs),
        "reader_symbol": field.reader,
        "reader_implemented": reader_implemented,
        "runtime_key": field.reader_json,
        "runtime_value_observed": bool(real_field.get("observed")),
        "runtime_behavior_correlated": bool(real_field.get("behavior_correlated")),
        "runtime_observation_count": real_field.get("count", 0),
        "offline_runtime_observed": bool(offline_field.get("observed")),
        "offline_runtime_correlated": bool(offline_field.get("correlated")),
        "semantics_projected": reader_implemented and bool(field.reader_json),
        "semantics_complete": field.semantics_complete,
        "semantics_note": field.semantics_note,
        "planner_consumed": field.planner_consumed,
        "planner_reason": field.planner_reason,
        "applicable_identity_count": len(applicable),
        "applicable_identities": applicable,
        "runtime_observed_identities": sorted(observed_identities),
        "code_evidence": refs,
        "unresolved_reason": field.unresolved_reason,
        "evidence_status": [],
    }
    if row["code_recovered"]:
        row["evidence_status"].append("已从反编译代码恢复")
    if row["reader_implemented"]:
        row["evidence_status"].append("已实现外部读取")
    if row["runtime_behavior_correlated"]:
        row["evidence_status"].append("已通过真实运行时读取验证")
    if row["semantics_complete"]:
        row["evidence_status"].append("已完成语义映射")
    if row["planner_consumed"]:
        row["evidence_status"].append("已进入策略决策")
    row["highest_status"] = status_for(row, field.offset is None)
    row["highest_status_name"] = STATUSES[row["highest_status"]]
    return row


def candidate_to_row(candidate: dict[str, Any]) -> dict[str, Any]:
    layout_known = candidate["category"] == "known_layout_unmodeled"
    return {
        "key": candidate["key"],
        "offset": candidate["offset"],
        "type": candidate["type_name"],
        "category": candidate["category"],
        "description": candidate["description"],
        "confirmed_layout": layout_known,
        "code_recovered": True,
        "evidence_count": candidate["evidence_count"],
        "reads": candidate["reads"],
        "writes": candidate["writes"],
        "reader_symbol": "",
        "reader_implemented": False,
        "runtime_key": "",
        "runtime_value_observed": False,
        "runtime_behavior_correlated": False,
        "runtime_observation_count": 0,
        "offline_runtime_observed": False,
        "offline_runtime_correlated": False,
        "semantics_projected": False,
        "semantics_complete": False,
        "semantics_note": "",
        "planner_consumed": False,
        "planner_reason": "",
        "applicable_identity_count": len(candidate["identities"]),
        "applicable_identities": candidate["identities"],
        "runtime_observed_identities": [],
        "code_evidence": candidate["evidence"],
        "layout_source": candidate.get("layout_source"),
        "unresolved_reason": "Direct this-pointer access is recovered, but field meaning and safe external interpretation remain unconfirmed.",
        "evidence_status": ["已从反编译代码恢复"],
        "highest_status": 1,
        "highest_status_name": STATUSES[1],
    }


def clip_code(text: str, marker: str, before: int = 1, after: int = 16) -> str:
    lines = text.splitlines()
    index = next((i for i, line in enumerate(lines) if marker in line), 0)
    start = max(0, index - before)
    end = min(len(lines), index + after + 1)
    prefix = "// ...\n" if start else ""
    suffix = "\n// ..." if end < len(lines) else ""
    return prefix + "\n".join(lines[start:end]) + suffix


def high_value_cases(evidence: dict[str, Any]) -> dict[str, Any]:
    selected = {
        "matriarch": [
            ("RageBegin", "RageBegin"),
            ("RageLoop and RageEnd", "case (int *)0xd:"),
        ],
        "vis_fatty_state_16": [
            ("State 16 entry", "param_1 + 0xb64) == 4"),
            ("State 16 attack entity", "case 0x10:"),
        ],
        "ultra_greed": [
            ("Shield state writes", "shield values for states 100, 400, 510", "0xc40"),
            ("Shield damage absorption", "shield damage absorption", "0xc40"),
        ],
        "big_horn_state_13": [
            ("State 13 entry", "case (float *)0xd:"),
            ("State 13 Shoot event", 'FUN_0040b030("Shoot")'),
        ],
        "delirium": [
            ("AttackID and CycleID update", "CycleID decode and AttackID/CycleID writes", "0xbd8"),
            ("AttackID selector", "AttackID byte split and pattern selector", "0xbd8"),
        ],
    }
    output: dict[str, Any] = {}
    for case_key, requests in selected.items():
        case = evidence["cases"][case_key]
        snippets = []
        for request in requests:
            label, marker = request[:2]
            clip_marker = request[2] if len(request) > 2 else marker
            source = next(
                (
                    item
                    for item in case["decompiled"]
                    if marker.lower() in item["text"].lower()
                    or marker.lower() in item["label"].lower()
                ),
                None,
            )
            if source is None:
                continue
            snippets.append(
                {
                    "label": label,
                    "file": source["file"],
                    "line_start": source["startLine"],
                    "line_end": source["endLine"],
                    "text": clip_code(source["text"], clip_marker),
                }
            )
        output[case_key] = {
            "identity": case["identity"],
            "snippets": snippets,
            "assembly": case["assembly"],
            "evidence_status": (
                ["已从反编译代码恢复", "已从控制流和交叉引用确认"]
                + (["已通过离线运行验证"] if case_key in {"matriarch", "ultra_greed", "big_horn_state_13", "delirium"} else [])
            ),
            "runtime_gap": "No new external-memory session validated all fields listed for this case.",
        }
    return output


def verification_summary() -> dict[str, Any]:
    result: dict[str, Any] = {
        "binary": {
            "path": rel(BINARY_PATH) if BINARY_PATH.exists() else "",
            "sha256": sha256(BINARY_PATH) if BINARY_PATH.exists() else "",
            "bytes": BINARY_PATH.stat().st_size if BINARY_PATH.exists() else 0,
        },
        "build_test_log": rel(BUILD_LOG) if BUILD_LOG.exists() else "",
        "build_test": None,
        "offline_replay": None,
        "live_external_capture": {
            "performed": False,
            "reason": "No isaac-ng.exe process was available in this audit turn.",
        },
    }
    if BUILD_LOG.exists():
        text = BUILD_LOG.read_text(encoding="utf-8", errors="replace")
        matches = re.findall(r"(\d+) passed, (\d+) failed;", text)
        if matches:
            passed, failed = matches[-1]
            result["build_test"] = {
                "passed": int(passed),
                "failed": int(failed),
                "status": "passed" if failed == "0" else "failed",
            }
    if OFFLINE_REPLAY.exists():
        rows = [
            json.loads(line)
            for line in OFFLINE_REPLAY.read_text(encoding="utf-8").splitlines()
            if line.strip()
        ]
        if rows:
            first = rows[0]
            mechanisms = first.get("mechanisms") or {}
            result["offline_replay"] = {
                "path": rel(OFFLINE_REPLAY),
                "frames": len(rows),
                "mode": first.get("mode", "unknown"),
                "frame_valid": bool((first.get("frame") or {}).get("valid")),
                "identities": mechanisms.get("identities"),
                "known_states": mechanisms.get("known_states"),
                "unknown_states": mechanisms.get("unknown_states"),
                "known_attack_types": mechanisms.get("known_attack_types"),
                "predictive_warnings": mechanisms.get("predictive_warnings"),
                "decision_valid": bool((first.get("decision") or {}).get("valid")),
                "evidence_boundary": "Offline replay of a real captured frame; not a new live external-memory session.",
            }
    return result


def build_report() -> dict[str, Any]:
    index = load_json(INDEX_PATH)
    cases = load_json(CASES_PATH)
    evidence = load_json(EVIDENCE_PATH)
    runtime_db = load_json(RUNTIME_DB_PATH)
    entity_layout = parse_zhl_layout(ROOT / "research/repentogon-reference/libzhl/functions/Entity.zhl")
    npc_layout = parse_zhl_layout(ROOT / "research/repentogon-reference/libzhl/functions/EntityNPC.zhl")
    layouts = {**entity_layout, **npc_layout}
    canonical = canonical_fields()
    derived = derived_fields()
    route_keys = {
        identity["key"]
        for case in cases["cases"]
        for identity in case["identities"]
    }
    _routes, refs_by_offset, function_summary = scan_ai_offsets(index, cases, layouts, canonical)
    candidates = build_offset_inventory(refs_by_offset, canonical, layouts)

    for field_item in canonical:
        field_item.code_recovered = field_item.key in {
            "type", "variant", "subtype", "spawner_type", "flags", "active", "exists", "dead",
            "grid_collision", "collision", "boss_status_cooldown", "birth", "target_pos",
            "position", "velocity", "radius", "health", "max_health", "collision_damage",
            "speed_multiplier", "invincible", "parent", "child", "target", "spawner", "owner",
            "seed", "animation", "animation_frame", "state_frame", "projectile_cooldown",
            "projectile_delay", "ai_v1_x", "ai_v1_y", "ai_v2_x", "ai_v2_y", "ai_i1", "ai_i2",
            "state", "delirium_boss_type", "delirium_boss_variant", "delirium_transformation_timer",
            "delirium_remaining_attacks", "delirium_state", "delirium_attack_id",
            "delirium_attack_angle", "delirium_cycle_id", "is_boss", "shield_strength",
            "shield_history_capacity", "champion", "boss_color",
        } or bool(refs_by_offset.get(field_item.offset or -1))
    for field_item in derived:
        field_item.code_recovered = field_item.key == "delirium_layout_valid" or bool(
            refs_by_offset.get(0x3BC)
            or refs_by_offset.get(0x3C0)
            or refs_by_offset.get(0x3C4)
            or refs_by_offset.get(0x3C8)
            or refs_by_offset.get(0xBD8)
            or refs_by_offset.get(0xBE0)
            or refs_by_offset.get(0xBC4)
        )

    field_keys = {item.key for item in canonical + derived}
    real = scan_real_runtime(field_keys)
    offline = scan_offline_runtime(field_keys)
    rows = [
        field_to_row(item, refs_by_offset.get(item.offset or -1, []), real, offline, route_keys)
        for item in canonical + derived
    ]
    supporting_evidence = {
        "shield_strength": [
            {
                "file": "research/ai-recovery/ghidra-helpers/HELPER_006d7230_ShieldDamageAbsorption_006d7230.c",
                "line": 48,
                "text": "if (0.0 < *(float *)(local_24 + 0xc40))",
                "meaning": "Positive ShieldStrength enters the recovered shield absorption path.",
            },
            {
                "file": "research/ai-recovery/ghidra-helpers/HELPER_006d7230_ShieldDamageAbsorption_006d7230.c",
                "line": 93,
                "text": "fVar12 = *(float *)(param_1 + 900) / *(float *)(local_24 + 0xc40);",
                "meaning": "Damage is normalized by ShieldStrength.",
            },
        ],
        "shield_history_capacity": [
            {
                "file": "research/ai-recovery/ghidra-helpers/HELPER_006d7230_ShieldDamageAbsorption_006d7230.c",
                "line": 56,
                "text": "if (*(uint *)(local_24 + 0xc44) <= *(uint *)(local_24 + 0xc58))",
                "meaning": "Capacity gates resizing/purging of the shield damage-history ring buffer.",
            }
        ],
    }
    for row in rows:
        row["supporting_code_evidence"] = supporting_evidence.get(row["key"], [])
    candidate_rows = [candidate_to_row(item) for item in candidates]
    all_rows = rows + candidate_rows

    # Derived relationship and delirium variants inherit the live evidence of their source.
    source_for_derived = {
        "parent_in_snapshot": "parent",
        "child_in_snapshot": "child",
        "target_in_snapshot": "target",
        "spawner_in_snapshot": "spawner",
        "owner_in_snapshot": "owner",
        "delirium_attack_id_low24": "delirium_attack_id",
        "delirium_cycle_low7": "delirium_cycle_id",
        "delirium_cycle_field_15_24": "delirium_cycle_id",
        "delirium_cycle_field_25_34": "delirium_cycle_id",
    }
    by_key = {row["key"]: row for row in rows}
    for row in rows:
        source_key = source_for_derived.get(row["key"])
        if source_key:
            source = by_key[source_key]
            row["runtime_value_observed"] = source["runtime_value_observed"]
            row["runtime_behavior_correlated"] = False
            row["offline_runtime_observed"] = source["offline_runtime_observed"]
            row["offline_runtime_correlated"] = source["offline_runtime_correlated"]
            row["applicable_identities"] = source["applicable_identities"]
            row["applicable_identity_count"] = source["applicable_identity_count"]
            row["highest_status"] = status_for(row, True)
            row["highest_status_name"] = STATUSES[row["highest_status"]]
    recovered_raw = [
        row
        for row in all_rows
        if row["code_recovered"] and not row["category"].startswith("derived")
    ]
    implemented_raw = [row for row in recovered_raw if row["reader_implemented"]]
    validated_raw = [row for row in implemented_raw if row["runtime_behavior_correlated"]]
    semantic_raw = [row for row in implemented_raw if row["semantics_complete"]]
    planner_raw = [row for row in implemented_raw if row["planner_consumed"]]
    identified_attack_keys = set(runtime_db["runtime_counts"].get("attack_identified_identity_keys", []))
    live_identities_all = set(real["identities"])
    live_transition_identities_all = set(real["transition_identities"])
    live_identities = live_identities_all & route_keys
    live_transition_identities = live_transition_identities_all & route_keys
    exact_route_keys = {
        identity["key"]
        for case in cases["cases"]
        if case["kind"] != "no_handler"
        for identity in case["identities"]
    }
    generic_reader_keys = {
        key for key in route_keys
        if 10 <= int(key.split(".", 1)[0]) < 1000
    }
    identity_total = len(route_keys)
    route_by_key: dict[str, dict[str, Any]] = {}
    identity_metadata: dict[str, dict[str, Any]] = {}
    for case in cases["cases"]:
        for identity in case["identities"]:
            key = identity["key"]
            identity_type, identity_variant, identity_subtype = (
                int(part) for part in key.split(".")
            )
            route_by_key[key] = {
                "case_index": case["caseIndex"],
                "case_kind": case["kind"],
                "case_va": case["caseVa"],
                "ai_function": case.get("delegateTarget"),
                "effective_handler": case["kind"] != "no_handler",
            }
            identity_metadata[key] = {
                **identity,
                "type": identity_type,
                "variant": identity_variant,
                "subtype": identity_subtype,
            }
    live_fields_by_identity: dict[str, set[str]] = defaultdict(set)
    validated_fields_by_identity: dict[str, set[str]] = defaultdict(set)
    for field_key, identity_keys in real.get("identities_with_field", {}).items():
        for identity_key_value in identity_keys:
            live_fields_by_identity[identity_key_value].add(field_key)
    for field_key, identity_keys in real.get("identities_by_validated_field", {}).items():
        for identity_key_value in identity_keys:
            validated_fields_by_identity[identity_key_value].add(field_key)
    identity_coverage: list[dict[str, Any]] = []
    for key in sorted(route_keys, key=lambda value: tuple(int(part) for part in value.split("."))):
        route = route_by_key[key]
        runtime_identity = runtime_db.get("identities", {}).get(key, {})
        metadata = identity_metadata[key]
        state_rules = runtime_identity.get("state_rules", {})
        known_state_rules = [
            int(state)
            for state, rule in state_rules.items()
            if rule.get("label") not in {None, "", "unknown", "none"}
        ]
        attack_states = runtime_identity.get("attack_states", [])
        identity_coverage.append(
            {
                "identity_key": key,
                "type": metadata.get("type"),
                "variant": metadata.get("variant"),
                "subtype": metadata.get("subtype"),
                "name": metadata.get("name_zh") or metadata.get("name") or "Unknown",
                "category": metadata.get("category"),
                "ai_function": runtime_identity.get("ai_function") or route.get("ai_function") or "Unknown",
                "dispatcher_case_index": route["case_index"],
                "dispatcher_case_kind": route["case_kind"],
                "effective_ai_handler": route["effective_handler"],
                "generic_reader_eligible": 10 <= int(metadata.get("type", 0)) < 1000,
                "state_rule_count": len(state_rules),
                "known_state_rule_count": len(known_state_rules),
                "known_state_rules": known_state_rules,
                "attack_states": attack_states,
                "attack_mechanism_identified": key in identified_attack_keys,
                "live_external_observed": key in live_identities,
                "live_state_transition_observed": key in live_transition_identities,
                "live_observed_fields": sorted(live_fields_by_identity.get(key, set())),
                "live_behavior_validated_fields": sorted(validated_fields_by_identity.get(key, set())),
                "missing_semantics": not bool(known_state_rules),
                "reason": (
                    "" if route["effective_handler"] else
                    "No effective delegate or inline AI handler body was recovered for this identity route."
                ),
            }
        )
    unrouted_live_identity_coverage: list[dict[str, Any]] = []
    for key in sorted(
        live_identities_all - route_keys,
        key=lambda value: tuple(int(part) for part in value.split(".")),
    ):
        type_value, variant_value, subtype_value = (int(part) for part in key.split("."))
        runtime_identity = runtime_db.get("identities", {}).get(key, {})
        unrouted_live_identity_coverage.append(
            {
                "identity_key": key,
                "type": type_value,
                "variant": variant_value,
                "subtype": subtype_value,
                "name": (runtime_identity.get("identity") or {}).get("name") or "Unknown",
                "category": "unrouted_live_variant",
                "ai_function": runtime_identity.get("ai_function") or "Unknown",
                "effective_ai_handler": False,
                "generic_reader_eligible": 10 <= type_value < 1000,
                "known_state_rule_count": len(runtime_identity.get("state_rules", {})),
                "attack_mechanism_identified": key in identified_attack_keys,
                "live_external_observed": True,
                "live_state_transition_observed": key in live_transition_identities_all,
                "live_observed_fields": sorted(live_fields_by_identity.get(key, set())),
                "live_behavior_validated_fields": sorted(validated_fields_by_identity.get(key, set())),
                "reason": "Live Type/Variant/Subtype is absent from the recovered 653-route dispatcher table.",
            }
        )

    metrics = {
        "field_coverage": {
            "numerator": len(implemented_raw),
            "denominator": len(recovered_raw),
            "ratio": len(implemented_raw) / len(recovered_raw) if recovered_raw else 0.0,
            "definition": "Reader-implemented recovered raw/candidate slots divided by all recovered raw/candidate slots.",
        },
        "identity_ai_handler_route": {
            "numerator": len(exact_route_keys),
            "denominator": identity_total,
            "ratio": len(exact_route_keys) / identity_total if identity_total else 0.0,
            "definition": "Exact Type/Variant/Subtype routes with a delegate or inline AI handler body.",
        },
        "identity_generic_reader_eligible": {
            "numerator": len(generic_reader_keys),
            "denominator": identity_total,
            "ratio": len(generic_reader_keys) / identity_total if identity_total else 0.0,
            "definition": "Identity routes whose Type enters the generic NPC Reader path; this is capability, not validation.",
        },
        "identity_live_external_observed": {
            "numerator": len(live_identities),
            "denominator": identity_total,
            "ratio": len(live_identities) / identity_total if identity_total else 0.0,
            "definition": "Identities actually seen in historical live external-memory JSONL.",
        },
        "identity_live_state_transition": {
            "numerator": len(live_transition_identities),
            "denominator": identity_total,
            "ratio": len(live_transition_identities) / identity_total if identity_total else 0.0,
            "definition": "Identities with an observed live State transition in external-memory JSONL.",
        },
        "mechanism_identification": {
            "numerator": len(identified_attack_keys),
            "denominator": identity_total,
            "ratio": len(identified_attack_keys) / identity_total if identity_total else 0.0,
            "definition": "Identities with at least one verified identity+state+attack/animation mechanism in the runtime database.",
        },
        "real_runtime_field_validation": {
            "numerator": len(validated_raw),
            "denominator": len(implemented_raw),
            "ratio": len(validated_raw) / len(implemented_raw) if implemented_raw else 0.0,
            "definition": "Implemented fields with live external values correlated to a known transition/behavior.",
        },
        "semantic_mapping": {
            "numerator": len(semantic_raw),
            "denominator": len(implemented_raw),
            "ratio": len(semantic_raw) / len(implemented_raw) if implemented_raw else 0.0,
            "definition": "Implemented fields with complete field-level semantics; per-identity AI values still require their own maps.",
        },
        "planner_consumption": {
            "numerator": len(planner_raw),
            "denominator": len(implemented_raw),
            "ratio": len(planner_raw) / len(implemented_raw) if implemented_raw else 0.0,
            "definition": "Implemented fields directly consumed by the current Planner or its threat/warning path.",
        },
    }

    blockers = {
        "recovered_not_read": [
            {
                "offset": row["offset"],
                "description": row["description"],
                "identity_count": row["applicable_identity_count"],
                "reason": row["unresolved_reason"],
            }
            for row in candidate_rows
        ],
        "read_not_live_validated": [
            {
                "field": row["key"],
                "offset": row["offset"],
                "runtime_value_observed": row["runtime_value_observed"],
                "reason": "No live value has been correlated to a known transition/behavior.",
            }
            for row in rows
            if row["reader_implemented"] and not row["runtime_behavior_correlated"]
        ],
        "read_without_complete_semantics": [
            row["key"]
            for row in rows
            if row["reader_implemented"] and not row["semantics_complete"]
        ],
        "mapped_not_in_planner": [
            row["key"]
            for row in rows
            if row["semantics_complete"] and not row["planner_consumed"]
        ],
    }

    transient = [
        {
            "value": "FUN_006bec40 return / local vector",
            "class": "必须通过动态追踪或其他观测方式获取的瞬时值",
            "reason": "Computed target/aim vector is consumed locally and is not a stable entity field.",
        },
        {
            "value": "FUN_006eef60 return",
            "class": "必须通过动态追踪或其他观测方式获取的瞬时值",
            "reason": "RNG output controls branches, angle, and projectile spread but is not retained as a named NPC field.",
        },
        {
            "value": "FUN_0040b030(\"Shoot\") result",
            "class": "必须通过动态追踪或其他观测方式获取的瞬时值",
            "reason": "Animation-event edge exists only in the execution path and is not stored as a separate field.",
        },
        {
            "value": "Projectile spawn position/velocity/spread locals",
            "class": "可以通过已有持久字段推导的状态",
            "reason": "Can often be reconstructed from entity position, target position, State/StateFrame and emitted child entities, but must not be treated as a direct field.",
        },
        {
            "value": "Function argument temporaries and call-frame locals",
            "class": "当前无法可靠获取的值",
            "reason": "Register/stack lifetime prevents safe ReadProcessMemory access without tracing.",
        },
    ]

    unsupported_routes = []
    for case in cases["cases"]:
        if case["kind"] == "no_handler":
            unsupported_routes.append(
                {
                    "case_index": case["caseIndex"],
                    "types": case["types"],
                    "identities": [item["key"] for item in case["identities"]],
                    "reason": "No effective delegate/case body recovered.",
                }
            )

    output = {
        "format": "isaac-gamebot-runtime-field-coverage-v1",
        "generated_at": "2026-10-29",
        "sources": {
            "ai_semantics_index": rel(INDEX_PATH),
            "ai_semantics_index_sha256": sha256(INDEX_PATH),
            "dispatcher_cases": rel(CASES_PATH),
            "case_evidence": rel(EVIDENCE_PATH),
            "runtime_semantics": rel(RUNTIME_DB_PATH),
            "runtime_semantics_sha256": sha256(RUNTIME_DB_PATH),
            "reader": rel(READER_PATH),
            "model": rel(MODEL_PATH),
            "semantics": rel(SEMANTICS_PATH),
            "planner": rel(PLANNER_PATH),
            "real_external_logs": real["files"],
            "offline_original_engine_reports": offline["sources"],
        },
        "evidence_levels": STATUSES,
        "evidence_boundaries": [
            "Static field use proves a direct this-pointer access, not that the branch executes in a given fight.",
            "Reader implementation proves a common NPC-relative read, not that the field has identity-specific meaning.",
            "Historical JSONL without the new keys is not evidence for AI-v2, ShieldStrength, or Delirium external reads.",
            "Offline original-engine probes are kept separate from real external ReadProcessMemory verification.",
            "Unclassified offsets retain their raw offsets and are not assigned speculative gameplay names.",
        ],
        "live_process_check": {
            "isaac_ng_running_at_audit": False,
            "new_live_capture_performed": False,
            "reason": "No isaac-ng.exe process was running when this audit was generated.",
        },
        "static_recovery": {
            "function_count": index["summary"]["functionCount"],
            "decompiled_count": index["summary"]["statusCounts"].get("decompiled", 0),
            "dispatcher_case_count": cases["dispatcher"]["caseCount"],
            "case_kinds": cases["summary"]["caseKinds"],
            "identity_kinds": cases["summary"]["identityKinds"],
            "identity_total": identity_total,
            "exact_ai_handler_identity_count": len(exact_route_keys),
            "no_effective_handler_identities": sorted(route_keys - exact_route_keys),
            "function_summary": function_summary,
            "unsupported_routes": unsupported_routes,
        },
        "runtime_external_summary": {
            "source_kind": real["source_kind"],
            "file_count": real["file_count"],
            "valid_frames": real["valid_frames"],
            "enemy_records": real["enemy_records"],
            "identity_count": len(live_identities),
            "identity_keys": sorted(live_identities),
            "unrouted_live_identity_count": len(live_identities_all - route_keys),
            "unrouted_live_identity_keys": sorted(live_identities_all - route_keys),
            "live_state_transition_identity_count": len(live_transition_identities),
            "transitions": real["transitions"],
        },
        "offline_runtime_summary": {
            "source_kind": offline["source_kind"],
            "case_count": offline["cases"],
            "transition_rows": offline["transition_rows"],
            "identity_count": len(offline["identities"]),
            "identity_keys": offline["identities"],
        },
        "metrics": metrics,
        "fields": rows,
        "identity_coverage": identity_coverage,
        "unrouted_live_identity_coverage": unrouted_live_identity_coverage,
        "unclassified_offsets": candidate_rows,
        "counts": {
            "canonical_fields": len(canonical),
            "derived_fields": len(derived),
            "unclassified_or_unmodeled_slots": len(candidate_rows),
            "known_layout_unmodeled": sum(row["category"] == "known_layout_unmodeled" for row in candidate_rows),
            "npc_ai_region_unmodeled": sum(
                0xB40 <= int(row["offset"], 16) <= 0xC7C
                for row in candidate_rows
            ),
            "direct_ai_offsets": len(refs_by_offset),
        },
        "lists": blockers,
        "transient_or_non_addressable": transient,
        "high_value_cases": high_value_cases(evidence),
        "verification": {
            **verification_summary(),
            "status": "static_audit_and_offline_build_complete_live_fields_unverified",
            "new_live_boss_or_delirium_session": False,
        },
    }
    validate_output(output)
    return output


def validate_output(output: dict[str, Any]) -> None:
    if output["static_recovery"]["function_count"] != 239:
        raise RuntimeError("Expected 239 recovered AI functions")
    if output["static_recovery"]["decompiled_count"] != 239:
        raise RuntimeError("Expected 239 decompiled AI functions")
    if output["static_recovery"]["dispatcher_case_count"] != 242:
        raise RuntimeError("Expected 242 dispatcher cases")
    if output["static_recovery"]["identity_total"] != 653:
        raise RuntimeError("Expected 653 identity routes")
    if len(output["identity_coverage"]) != 653:
        raise RuntimeError("Expected one identity coverage row per route")
    if len(output["unrouted_live_identity_coverage"]) != output["runtime_external_summary"]["unrouted_live_identity_count"]:
        raise RuntimeError("Unrouted live identity matrix is incomplete")
    if any(
        not row["generic_reader_eligible"]
        for row in output["identity_coverage"]
    ):
        raise RuntimeError("An enemy identity is outside the generic NPC Reader path")
    for row in output["fields"] + output["unclassified_offsets"]:
        if row["highest_status"] not in STATUSES:
            raise RuntimeError(f"Invalid status for {row['key']}")
        if row["highest_status"] == 5 and not all(
            row[name]
            for name in ("reader_implemented", "runtime_behavior_correlated", "semantics_complete", "planner_consumed")
        ):
            raise RuntimeError(f"Planner status promoted without all prior evidence: {row['key']}")
    for key in (
        "ai_v1_x", "ai_v1_y", "ai_v2_x", "ai_v2_y", "ai_i1", "ai_i2",
        "shield_strength", "shield_history_capacity", "delirium_attack_id",
        "delirium_cycle_id", "delirium_transformation_timer",
    ):
        row = next(item for item in output["fields"] if item["key"] == key)
        if row["highest_status"] >= 3:
            raise RuntimeError(f"Field {key} was promoted to live validation without a new live session")


def markdown_report(output: dict[str, Any]) -> str:
    metrics = output["metrics"]
    counts = output["counts"]

    def pct(metric: dict[str, Any]) -> str:
        return f"{metric['numerator']}/{metric['denominator']} ({metric['ratio'] * 100:.1f}%)"

    lines = [
        "# Isaac Gamebot 全敌人运行时字段外部读取覆盖审计",
        "",
        "生成日期：2026-10-29",
        "",
        "## 结论",
        "",
        (
            "当前 Reader 已覆盖公共 NPC 的 State、StateFrame、AI 四元浮点槽、AI I1/I2、"
            "生命值、速度倍率、Invincible、ShieldStrength、护盾历史容量、父子/目标指针、"
            "投射物计时器、Boss 公共标志及 Delirium 原始字段。"
        ),
        (
            "但这不等于 653 个身份的战斗语义已经恢复。旧真实外部内存日志只验证了基础字段；"
            "新增 AI/Delirium 字段的正式游戏进程行为验证尚未补齐。"
            "训练引擎的真实跨进程值对照若已提供，则在文末和 training_external_* 列单独统计；"
            "原有内部 API 探针仍只列为离线证据。"
        ),
        "Delirium 专用槽只在 Type 412 下读取并标记为有效；其他 NPC 即使地址范围内有数据也不会被解释成 Delirium。",
        "",
        "## 覆盖率",
        "",
        "| 指标 | 覆盖 | 定义 |",
        "|---|---:|---|",
    ]
    labels = {
        "field_coverage": "字段覆盖率（已读取/全部已恢复字段槽）",
        "identity_ai_handler_route": "身份精确 AI 处理体路由覆盖率",
        "identity_generic_reader_eligible": "身份进入通用 NPC Reader 路径率",
        "identity_live_external_observed": "身份真实外部内存观测率",
        "identity_live_state_transition": "身份真实 State 变化观测率",
        "mechanism_identification": "身份级机制识别率",
        "real_runtime_field_validation": "已读取字段实机行为验证率",
        "semantic_mapping": "已读取字段完整语义映射率",
        "planner_consumption": "已读取字段 Planner 消费率",
    }
    definitions = {
        "field_coverage": "已实现 Reader 的已恢复字段槽 / 全部已恢复字段槽；派生输出不计入。",
        "identity_ai_handler_route": "Type/Variant/Subtype 有 delegate 或 inline AI 处理体的身份比例。",
        "identity_generic_reader_eligible": "Type 进入通用 NPC Reader 路径的身份比例；只表示读取能力。",
        "identity_live_external_observed": "历史真实外部内存 JSONL 中实际出现过的敌人身份比例。",
        "identity_live_state_transition": "历史真实外部内存 JSONL 中实际观察到 State 变化的身份比例。",
        "mechanism_identification": "已有身份+State+攻击/动画机制验证的身份比例。",
        "real_runtime_field_validation": "已实现字段中，真实外部值与已知变化或行为关联成功的比例。",
        "semantic_mapping": "已实现字段中，字段级语义完整的比例；不等于每个身份的参数语义都完整。",
        "planner_consumption": "已实现字段中被当前 Planner 或其威胁/预警路径实际消费的比例。",
    }
    for key, label in labels.items():
        metric = metrics[key]
        lines.append(f"| {label} | {pct(metric)} | {definitions[key]} |")
    lines += [
        "",
        (
            f"静态恢复：{output['static_recovery']['decompiled_count']}/"
            f"{output['static_recovery']['function_count']} 个 AI 函数有伪 C；"
            f"{output['static_recovery']['dispatcher_case_count']} 个分发 case；"
            f"{output['static_recovery']['exact_ai_handler_identity_count']}/"
            f"{output['static_recovery']['identity_total']} 个身份有精确 AI 处理体路由。"
        ),
        (
            "无有效处理体的身份："
            + ", ".join(f"`{key}`" for key in output["static_recovery"]["no_effective_handler_identities"])
            + "。"
        ),
        (
            f"字段矩阵：{counts['canonical_fields']} 个具名公共字段、"
            f"{counts['derived_fields']} 个派生字段、"
            f"{counts['unclassified_or_unmodeled_slots']} 个直接 AI 偏移尚未建模"
            f"（其中 {counts['known_layout_unmodeled']} 个有 REPENTOGON 布局名但无 Reader/语义；"
            f"{counts['npc_ai_region_unmodeled']} 个位于 `0xB40..0xC7C` NPC AI 槽区）。"
        ),
        (
            f"真实外部日志：{output['runtime_external_summary']['file_count']} 个文件、"
            f"{output['runtime_external_summary']['valid_frames']} 个有效帧、"
            f"{output['runtime_external_summary']['identity_count']} 个敌人身份。"
        ),
        (
            "另有 "
            f"{output['runtime_external_summary']['unrouted_live_identity_count']} 个实机身份键不在当前 653 路由表中："
            + ", ".join(
                f"`{key}`"
                for key in output["runtime_external_summary"]["unrouted_live_identity_keys"]
            )
            + "。这些身份可以进入通用 Reader，但不能声称已有精确 AI 函数覆盖。"
        ),
        "",
        "## 关键字段",
        "",
        "| 字段 | 偏移 | 类型 | 实机行为验证 | 语义 | Planner | 最高状态 |",
        "|---|---:|---|---|---|---|---|",
    ]
    show_keys = {
        "type", "variant", "subtype", "state", "state_frame", "health", "max_health",
        "speed_multiplier", "invincible", "parent", "child", "target", "spawner", "owner",
        "projectile_cooldown", "projectile_delay", "ai_v1_x", "ai_v1_y", "ai_v2_x",
        "ai_v2_y", "ai_i1", "ai_i2", "is_boss", "shield_strength",
        "shield_history_capacity", "champion", "boss_color", "delirium_boss_type",
        "delirium_boss_variant", "delirium_transformation_timer",
        "delirium_remaining_attacks", "delirium_state", "delirium_attack_id",
        "delirium_attack_angle", "delirium_cycle_id",
    }
    for row in output["fields"]:
        if row["key"] not in show_keys:
            continue
        yes_no = lambda value: "是" if value else "否"
        lines.append(
            f"| `{row['key']}` | `{row['offset']}` | `{row['type']}` | "
            f"{yes_no(row['runtime_behavior_correlated'])} | "
            f"{yes_no(row['semantics_complete'])} | {yes_no(row['planner_consumed'])} | "
            f"{row['highest_status']} {row['highest_status_name']} |"
        )

    lines += [
        "",
        "## 重点案例",
        "",
    ]
    case_titles = {
        "matriarch": "Matriarch `413.0.0`：RageBegin / RageLoop / RageEnd",
        "vis_fatty_state_16": "Vis Fatty `886.0.0`：State 16",
        "ultra_greed": "Ultra Greed `406.0.0`：护盾、伤害过滤、阶段转换",
        "big_horn_state_13": "Big Horn `411.0.0`：State 13",
        "delirium": "Delirium `412.0.0`：AttackID / CycleID / 分发",
    }
    for case_key, case in output["high_value_cases"].items():
        lines += [f"### {case_titles[case_key]}", ""]
        lines.append("证据状态：" + "；".join(case["evidence_status"]))
        lines.append("")
        for snippet in case["snippets"][:2]:
            lines.append(
                f"`{snippet['file']}:{snippet['line_start']}` - {snippet['label']}"
            )
            lines += ["```c", snippet["text"], "```", ""]
        assembly_refs = ", ".join(
            f"`{item['file']}` {item['start']}..{item['end']}"
            for item in case["assembly"][:3]
        )
        lines.append("关键汇编：" + assembly_refs)
        lines.append("")
        lines.append("实机缺口：" + case["runtime_gap"])
        lines.append("")

    lines += [
        "## 缺口清单",
        "",
        "### 已恢复但 Reader 尚未读取",
        "",
    ]
    for row in output["unclassified_offsets"][:40]:
        lines.append(
            f"- `{row['offset']}` `{row['description']}`："
            f"{row['applicable_identity_count']} 个身份，R{row['reads']}/W{row['writes']}。"
        )
    if len(output["unclassified_offsets"]) > 40:
        lines.append(f"- 其余 {len(output['unclassified_offsets']) - 40} 项见 TSV/JSON 全量矩阵。")

    lines += ["", "### 已读取但未完成真实行为验证", ""]
    for item in output["lists"]["read_not_live_validated"]:
        lines.append(
            f"- `{item['field']}` (`{item['offset']}`)："
            + ("实机出现过值，但未关联已知变化。" if item["runtime_value_observed"] else "当前实机日志中没有该字段。")
        )

    lines += ["", "### 已读取但没有完整语义", ""]
    lines.append(", ".join(f"`{item}`" for item in output["lists"]["read_without_complete_semantics"]))

    lines += ["", "### 已映射但未进入 Planner", ""]
    lines.append(", ".join(f"`{item}`" for item in output["lists"]["mapped_not_in_planner"]))

    lines += ["", "### 瞬时或无法直接读取", ""]
    for item in output["transient_or_non_addressable"]:
        lines.append(f"- {item['value']}：{item['class']}。{item['reason']}")

    verification = output["verification"]
    lines += ["", "## 代码与验证", ""]
    if verification.get("binary", {}).get("sha256"):
        binary = verification["binary"]
        lines.append(
            f"- 当前 EXE：`{binary['path']}`，{binary['bytes']} 字节，"
            f"SHA-256 `{binary['sha256']}`。"
        )
    if verification.get("build_test"):
        build_test = verification["build_test"]
        lines.append(
            f"- C++ 构建与测试：{build_test['passed']} 通过，{build_test['failed']} 失败；"
            f"日志见 `{verification['build_test_log']}`。"
        )
    if verification.get("offline_replay"):
        replay = verification["offline_replay"]
        lines.append(
            f"- 离线回放：{replay['frames']} 帧，帧有效={replay['frame_valid']}，"
            f"机制身份={replay['identities']}，已知 State={replay['known_states']}，"
            f"未知 State={replay['unknown_states']}，已知攻击类型={replay['known_attack_types']}，"
            f"预警={replay['predictive_warnings']}，决策有效={replay['decision_valid']}。"
        )
        lines.append("- 该回放是真实帧的离线重放，不作为新增 AI/Delirium 字段的实机外部读取证据。")
    lines.append(
        "- 本轮未启动 `isaac-ng.exe`，因此所有新 AI、ShieldStrength 和 Delirium 字段仍待真实外部内存会话验证。"
    )

    lines += [
        "",
        "## 优先级",
        "",
        "1. P0：在真实游戏中建立新 Reader 会话，记录 State/StateFrame/AI I1/I2/ShieldStrength/Delirium 原始字段；没有该项不得声称实机验证。",
        "2. P0：为 Matriarch、Vis Fatty、Ultra Greed、Big Horn、Delirium 建立逐帧外部 JSONL，并保存状态变化前后窗口、可观察弹幕/激光/召唤和 Planner 威胁输出。",
        "3. P1：按身份解析当前未建模的直接 AI 偏移，尤其是 `0xC04..0xC18`、`0xB40..0xB8C` 与高位 Boss 字段；先确定类型、读写在分支中的意义，再扩展 Entity。",
        "4. P1：把 Delirium AttackID/CycleID 的 selector 映射到具体攻击调用和危险实体，而不是仅输出打包值。",
        "5. P1：将已验证的 AI 阶段、投射物计时器和护盾吸收边界接入 MechanismSemantics，再评估 Planner 消费，不得跳过中间证据。",
        "6. P2：对 2 个 no-handler case 和其他无有效 AI 路由的身份单独确认实际运行时行为。",
        "",
        "## 交付文件",
        "",
        f"- JSON 全量矩阵：[`{rel(OUT_JSON)}`]({rel(OUT_JSON)})",
        f"- TSV 全量矩阵：[`{rel(OUT_TSV)}`]({rel(OUT_TSV)})",
        f"- 653 路由身份及实机未路由变种矩阵：[`{rel(OUT_IDENTITY_TSV)}`]({rel(OUT_IDENTITY_TSV)})",
        "- 239 个伪 C：[`research/ai-recovery/ghidra-export/`](ghidra-export/)",
        "- 地址化汇编：[`research/ai-recovery/ghidra-export/`](ghidra-export/)",
        "- 分发 case 证据：[`dispatcher-cases.json`](dispatcher-cases.json)",
        "- 重点案例证据：[`case-evidence.json`](case-evidence.json)",
        "",
    ]
    return "\n".join(lines)


def write_tsv(output: dict[str, Any]) -> None:
    columns = [
        "key", "offset", "type", "category", "description", "confirmed_layout",
        "code_recovered", "reader_implemented", "runtime_value_observed",
        "runtime_behavior_correlated", "semantics_complete", "planner_consumed",
        "highest_status", "highest_status_name", "applicable_identity_count",
        "evidence_count", "reads", "writes", "reader_symbol", "runtime_key",
        "unresolved_reason", "training_external_value_pass", "training_external_samples",
        "training_external_matches", "training_external_changes", "training_external_detected_changes",
    ]
    with OUT_TSV.open("w", encoding="utf-8", newline="") as handle:
        handle.write("\t".join(columns) + "\n")
        for row in output["fields"] + output["unclassified_offsets"]:
            values = []
            for column in columns:
                value = row.get(column, "")
                if isinstance(value, bool):
                    value = "true" if value else "false"
                values.append(str(value).replace("\t", " ").replace("\n", " "))
            handle.write("\t".join(values) + "\n")


def write_identity_tsv(output: dict[str, Any]) -> None:
    columns = [
        "coverage_set", "identity_key", "name", "type", "variant", "subtype", "category",
        "ai_function", "dispatcher_case_index", "dispatcher_case_kind",
        "effective_ai_handler", "generic_reader_eligible", "state_rule_count",
        "known_state_rule_count", "known_state_rules", "attack_states",
        "attack_mechanism_identified", "live_external_observed",
        "live_state_transition_observed", "live_observed_fields",
        "live_behavior_validated_fields", "reason", "training_external_samples",
        "training_external_mismatches", "training_external_states",
    ]
    with OUT_IDENTITY_TSV.open("w", encoding="utf-8", newline="") as handle:
        handle.write("\t".join(columns) + "\n")
        rows = [
            {**row, "coverage_set": "recovered_route"}
            for row in output["identity_coverage"]
        ] + [
            {**row, "coverage_set": "live_unrouted"}
            for row in output["unrouted_live_identity_coverage"]
        ]
        for row in rows:
            values = []
            for column in columns:
                value = row.get(column, "")
                if isinstance(value, bool):
                    value = "true" if value else "false"
                elif isinstance(value, list):
                    value = ",".join(str(item) for item in value)
                values.append(str(value).replace("\t", " ").replace("\n", " "))
            handle.write("\t".join(values) + "\n")


def merge_external_training(output: dict[str, Any], path: Path) -> str:
    """Keep mapped-Wasm RPM value evidence separate from native PE behavior evidence."""
    report = json.loads(path.read_text(encoding="utf-8"))
    if report.get("format") != "isaac-external-engine-validation-v1":
        raise ValueError("Unsupported external training report")
    if report["provenance"]["source_exe_sha256"].lower() != "7122ac28779925b24e23e2416f231322b1470388bd25e2c08665ad8d53b3ea4f":
        raise ValueError("External training source is not J460")
    observed = {row["key"]: row for row in report["fields"]}
    for row in output["fields"]:
        item = observed.get(row["key"], {})
        row.update({
            "training_external_value_pass": item.get("external_read_pass", False),
            "training_external_samples": item.get("samples", 0),
            "training_external_matches": item.get("matches", 0),
            "training_external_changes": item.get("changes", 0),
            "training_external_detected_changes": item.get("detected_changes", 0),
        })
    identities = {row["identity"]: row for row in report["identities"]}
    for row in output["identity_coverage"] + output["unrouted_live_identity_coverage"]:
        item = identities.get(row["identity_key"], {})
        row["training_external_samples"] = item.get("samples", 0)
        row["training_external_mismatches"] = item.get("mismatches", 0)
        row["training_external_states"] = item.get("states", [])
    output["external_training_validation"] = {
        "report": rel(path), "provenance": report["provenance"],
        "metrics": report["metrics"], "cases": report["cases"],
        "limitations": report["limitations"], "truth_source": report["truth_source"],
    }
    m = report["metrics"]
    return ("\n## 原版训练引擎跨进程值对照（独立统计）\n\n"
            f"报告：`{rel(path)}`。真实 ReadProcessMemory 读取 Node/WASM 原版 J460 提升引擎的线性内存。\n\n"
            f"字段值通过 {m['external_read_pass_fields']}/{m['implemented_fields']}；"
            f"值匹配 {m['value_matches']}/{m['value_samples']}；"
            f"变化检测 {m['detected_changes']}/{m['changes']}；"
            f"指针快照关系 {m['pointer_matches']}/{m['pointer_checks']}；"
            f"身份 {m['verified_identities']}；AI 状态 {m['verified_ai_states']}。\n\n"
            "内部真值与 Reader 共享恢复偏移，确认跨进程传输和解码一致性，不独立证明偏移语义。"
            "本批证据不改写历史正式 EXE 行为验证计数。攻击机制、攻击预警、Boss 阶段及 Planner 机制按报告单列。\n")


def main() -> int:
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--external-report", type=Path)
    args = parser.parse_args()
    latest = ROOT / "research/external-validation/latest-report.json"
    external_path = args.external_report
    if external_path is None and latest.exists():
        external_path = ROOT / json.loads(latest.read_text(encoding="utf-8"))["report"]
    output = build_report()
    appendix = merge_external_training(output, external_path.resolve()) if external_path else ""
    OUT_JSON.write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    write_tsv(output)
    write_identity_tsv(output)
    OUT_MD.write_text(markdown_report(output) + appendix, encoding="utf-8")
    if external_path:
        latest.write_text(json.dumps({"report": rel(external_path.resolve())}, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        "metrics": {key: {k: value[k] for k in ("numerator", "denominator", "ratio")} for key, value in output["metrics"].items()},
        "counts": output["counts"],
        "live_external": output["runtime_external_summary"],
        "outputs": [rel(OUT_JSON), rel(OUT_TSV), rel(OUT_IDENTITY_TSV), rel(OUT_MD)],
    }, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
