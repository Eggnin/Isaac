#!/usr/bin/env python3
"""Recover J460 NPC state, invincibility, and boss-phase evidence.

The output is an evidence database, not a source-code reconstruction. A literal
state number, pointer source, comparison, or animation string is recorded only
when the local PE index contains that evidence.
"""

from __future__ import annotations

import argparse
import bisect
import hashlib
import json
import re
import sqlite3
import struct
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[2]
UPSTREAM = ROOT / "research/the-browsing-of-isaac"
TOOLS = UPSTREAM / "scripts/decomp/tools"
GAME = (
    ROOT
    / "SteamPlaceholder"
)
GAME_PATH = Path(
    r"D:\Steam\steamapps\common\The Binding of Isaac Rebirth\isaac-ng.exe"
)
INDEX_PATH = (
    UPSTREAM / "output/decomp/7122ac287799/index/pe-index.sqlite"
)
MECHANISM_DB = ROOT / "data/mechanisms/isaac_j460_mechanism_db.json"
ANIMATION_DB = ROOT / "data/npc/engine_monster_animation_catalog.json"
READER_PATH = ROOT / "cpp/src/reader.cpp"
OUTPUT = ROOT / "data/mechanisms/isaac_j460_state_semantics.json"
CHECK_OUTPUT = ROOT / "validation/state-semantics-check.json"
RUNTIME_REPORTS = [
    ROOT / "research/state-semantics/state-semantics-runtime-20261029.json",
    ROOT / "research/state-semantics/state-semantics-invincibility-20261029.json",
    ROOT / "research/state-semantics/state-semantics-high-value-20261029.json",
    ROOT / "research/state-semantics/state-semantics-delirium-fields-20261029.json",
    ROOT / "research/state-semantics/state-semantics-ai-smoke-20261029.json",
]
EXTERNAL_INVINCIBILITY = (
    ROOT
    / "research/state-semantics/external-invincibility-20261029.json"
)

sys.path.insert(0, str(TOOLS))
from pe import PEImage  # noqa: E402


AI_DISPATCH_VA = 0x006C2990
AI_CASE_TABLE_VA = 0x006C41DC
AI_MAP_TABLE_VA = 0x006C45A4
AI_CASE_COUNT = 242
AI_TYPE_MIN = 10
AI_TYPE_MAX = 967

TAKE_DAMAGE_VA = 0x006ACE60
DAMAGE_PRE_FILTER_VA = 0x006AC560

STATE_DISP = 0xB64
STATE_FRAME_DISP = 0x410
INVINCIBLE_DISP = 0x3B0
HEALTH_DISP = 0x380
MAX_HEALTH_DISP = 0x384
SPEED_MULTIPLIER_DISP = 0x39C
SHIELD_STRENGTH_DISP = 0xC40
PROJECTILE_COOLDOWN_DISP = 0xBA0
PROJECTILE_DELAY_DISP = 0xBA4
BOSS_FLAG_DISP = 0xC3D
BOSS_STATUS_COOLDOWN_DISP = 0x238
VARIANT_DISP = 0x2C
SUBTYPE_DISP = 0x30
SPAWNER_TYPE_DISP = 0x34

TRACKED_FIELDS = [
    STATE_DISP,
    STATE_FRAME_DISP,
    INVINCIBLE_DISP,
    HEALTH_DISP,
    MAX_HEALTH_DISP,
    SPEED_MULTIPLIER_DISP,
    SHIELD_STRENGTH_DISP,
    PROJECTILE_COOLDOWN_DISP,
    PROJECTILE_DELAY_DISP,
    BOSS_FLAG_DISP,
    BOSS_STATUS_COOLDOWN_DISP,
    VARIANT_DISP,
    SUBTYPE_DISP,
    SPAWNER_TYPE_DISP,
]

KNOWN_CALLS = {
    0x0040A380: "ANM2::Play",
    0x0040A940: "ANM2::Play/overlay variant",
    0x00428B20: "entity spawn relay",
    0x006FE410: "entity create dispatcher",
    0x006CB2E0: "Entity_NPC::FireProjectiles",
    0x006CCDD0: "Entity_NPC::FireBossProjectiles",
    0x0067F010: "weighted outcome picker",
    0x006BEC40: "NPC projectile/entity helper",
    0x006BE840: "Entity_NPC::GetPlayerTarget",
    0x006EAF80: "unknown NPC helper",
}

CURATED_MODELS = [
    {
        "key": "413.0.0",
        "name": "Matriarch",
        "ai_function": "0x004c59d0",
        "phase_index_field": "Entity_NPC+0xbc4 (AI I2)",
        "phase_timer_field": "Entity_NPC+0xbc0 (AI I1)",
        "health_fields": ["Entity+0x380", "Entity+0x384"],
        "health_fraction_table": {
            "addresses": "0x00b60170..0x00b6017c",
            "values": [0.8, 0.65, 0.5, 0.35],
            "reference_site": "0x004c5a7d",
            "semantics": "candidate damage/phase thresholds; table is multiplied by MaxHealth",
        },
        "phase_index_update": {
            "sites": ["0x004c5f17", "0x004c5f2c"],
            "effect": "increment AI I2 and add 0x5a to AI I1",
        },
        "phase_index_reset": {
            "site": "0x004c5f5b",
            "effect": "state=3, AI I1=0, AI I2=0",
        },
        "rage": {
            "trigger": {
                "sites": "0x004c61d0..0x004c6223",
                "conditions": [
                    "AI I1 > 300",
                    "AI I2 > 2",
                    "RNG modulo 5 == 0",
                ],
                "effects": [
                    "state=13",
                    "StateFrame=0",
                    "AI I1=400",
                    "ANM2 animation RageBegin",
                ],
            },
            "loop": {
                "site": "0x004c7460",
                "effect": "RageLoop with StateFrame increment and AI I1 decrement by 2 per frame",
            },
            "end": {
                "sites": ["0x004c77dd", "0x004c7802"],
                "condition": "AI I1 <= 0",
                "effects": ["RageEnd", "state=3", "AI I1=0"],
            },
        },
        "runtime_validation": {
            "report": "research/state-semantics/state-semantics-runtime-20261029.json",
            "observed_state_13": True,
            "transition_frame": 2381,
            "hp_at_transition": 329.5,
            "animation": "RageBegin",
        },
        "runtime_phase_transitions": [
            {"frame": 1, "hp": 700, "max_hp": 700, "ai_i2": 0},
            {"frame": 797, "hp": 559, "max_hp": 700, "ai_i2": 1},
            {"frame": 1843, "hp": 453.5, "max_hp": 700, "ai_i2": 2},
            {"frame": 2309, "hp": 329.5, "max_hp": 700, "ai_i2": 3},
            {"frame": 2381, "hp": 329.5, "max_hp": 700, "ai_i2": 3, "state": 13, "animation": "RageBegin"},
        ],
        "confidence": {
            "phase_index_and_fields": "static_control_flow_confirmed",
            "hp_fraction_effect": "offline_runtime_phase_index_correlation; exact threshold branch still static",
            "rage_transition": "offline_runtime_verified",
            "preattack_warning": "not_established",
        },
    },
    {
        "key": "886.1.0",
        "name": "Fetal Demon",
        "ai_function": "0x004ea3d0",
        "variant_gate": {
            "site": "0x004ea413",
            "condition": "Variant == 1",
        },
        "state_switch": {
            "site": "0x004ea42d..0x004ea444",
            "range": "0..8",
        },
        "rage_start": {
            "condition_sites": ["0x004ead10", "0x004ead1d"],
            "conditions": [
                "State == 4",
                "Child pointer +0x3c0 == 0",
            ],
            "effect_sites": ["0x004ead45", "0x004ead4f", "0x004ead63"],
            "effects": [
                "state=16",
                "ProjectileDelay=0",
                "ANM2 animation RageStart",
                "SFX 0x138",
            ],
        },
        "rage_end": {
            "site": "0x004ea934",
            "effects": [
                "ANM2 animation RageEnd",
                "state=4",
                "ProjectileCooldown=60..89",
            ],
        },
        "rage_facing_animation": {
            "site": "0x004eb589",
            "effect": "select RageDown or RageUp from vertical facing/velocity sign",
        },
        "runtime_validation": {
            "report": "research/state-semantics/state-semantics-runtime-20261029.json",
            "observed_states": [1, 7],
            "target_disappeared_frame": 322,
            "rage_start_observed": False,
            "runtime_conflict": (
                "Direct variant-1 spawn had Child=0 and State 7 Rage/Walk02; "
                "State 16 did not occur, so the static State 16 branch is unresolved"
            ),
        },
        "confidence": {
            "rage_start_condition": "static_control_flow_confirmed",
            "rage_start_runtime": "not_verified_for_variant_1",
            "enrage_behavior": "candidate_pending_runtime_state_16",
        },
    },
    {
        "key": "79.0.0",
        "name": "Gemini",
        "ai_function": "0x0043ef30",
        "rage_named_animations": ["Rage", "RageBody"],
        "runtime_observed_states": [1, 3, 4, 8],
        "runtime_observed_children": ["79.10.0", "79.20.0"],
        "interpretation": (
            "Rage-named animation exists, but the observed runtime path includes "
            "parent/child split behavior. Do not classify it as a temporary "
            "enrage until the state-call association is resolved."
        ),
        "confidence": {
            "animation_resource": "resource_confirmed",
            "state_attack_relation": "unknown",
            "enrage": "not_confirmed",
        },
    },
    {
        "key": "412.0.0",
        "name": "Delirium",
        "ai_function": "0x004a6500",
        "phase_fields": {
            "boss_type": "Entity_NPC+0xbc8",
            "boss_variant": "Entity_NPC+0xbcc",
            "transformation_timer": "Entity_NPC+0xbd0",
            "remaining_attacks": "Entity_NPC+0xbd2",
            "delirium_state": "Entity_NPC+0xbd3",
            "attack_id": "Entity_NPC+0xbd8",
            "attack_angle": "Entity_NPC+0xbdc",
            "cycle_id": "Entity_NPC+0xbe0",
        },
        "field_encoding": {
            "attack_id": "raw uint32; low 24 bits retained separately because disassembly masks 0xffffff",
            "cycle_id": "64-bit packed value at 0xbe0..0xbe7; 0x4a6d6e and 0x4a7722 unpack overlapping bit fields",
        },
        "confidence": {
            "field_layout": "REPENTOGON_layout_external_reader_and_disassembly_confirmed",
            "phase_semantics": "delirium_state_and_timer_observed; attack id meaning unresolved",
            "offline_transition_validation": "delirium_state_transitions_observed; attack map not completed",
        },
    },
]

STATE_WRITE_RE = re.compile(
    r"(?:dword|byte|word)\s+ptr\s+\[[^\]]+\+\s*0xb64\],\s*(0x[0-9a-f]+|\d+)",
    re.I,
)
FIELD_RE = re.compile(
    r"\[[^\]]+\+\s*(0x[0-9a-f]+|\d+)\]",
    re.I,
)
IMM_RE = re.compile(r"\b(0x[0-9a-f]+|\d+)\b", re.I)
REG_IMM_CMP_RE = re.compile(
    r"cmp\s+(e(?:ax|bx|cx|dx|si|di|bp)|[abcd][lh]),\s*(0x[0-9a-f]+|\d+)",
    re.I,
)
REG_STATE_CMP_RE = re.compile(
    r"cmp\s+(?:dword\s+ptr\s+)?\[[^\]]+\+\s*0xb64\],\s*(0x[0-9a-f]+|\d+)",
    re.I,
)
REG_TEST_RE = re.compile(
    r"test\s+(e(?:ax|bx|cx|dx|si|di|bp)),\s*\1",
    re.I,
)
LOAD_STATE_RE = re.compile(
    r"mov\s+(e(?:ax|bx|cx|dx|si|di|bp)),\s*dword\s+ptr\s+\[[^\]]+\+\s*0xb64\]",
    re.I,
)
LOAD_FRAME_RE = re.compile(
    r"mov\s+(e(?:ax|bx|cx|dx|si|di|bp)),\s*dword\s+ptr\s+\[[^\]]+\+\s*0x410\]",
    re.I,
)
ABSOLUTE_FLOAT_RE = re.compile(r"\[\s*(0x[0-9a-f]{6,8})\s*\]", re.I)


def load_json(path: Path) -> Any:
    with path.open("r", encoding="utf-8") as handle:
        return json.load(handle)


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest().upper()


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def path_label(path: Path) -> str:
    try:
        return rel(path)
    except ValueError:
        return path.as_posix()


def hex_va(value: int | None) -> str | None:
    return None if value is None else f"0x{value:08x}"


def parse_int(text: str) -> int | None:
    try:
        return int(text, 0)
    except ValueError:
        return None


def instruction_text(row: tuple[int, str, str]) -> str:
    return f"{hex_va(row[0])} {row[1]} {row[2]}".strip()


class PeIndex:
    def __init__(self) -> None:
        self.pe = PEImage(GAME_PATH, verify_hash=False)
        self.db = sqlite3.connect(
            f"file:{INDEX_PATH.as_posix()}?mode=ro", uri=True
        )
        rows = self.db.execute(
            "select start,end,ninsn from func order by start"
        ).fetchall()
        self.functions = rows
        self.function_starts = [row[0] for row in rows]

    def containing_function(self, va: int) -> tuple[int, int, int] | None:
        index = bisect.bisect_right(self.function_starts, va) - 1
        if index < 0:
            return None
        function = self.functions[index]
        return function if va < function[1] else None

    def instructions(self, start: int, end: int) -> list[tuple[int, str, str]]:
        rows = self.db.execute(
            "select va,mn,ops from insn where va>=? and va<?",
            (start, end),
        ).fetchall()
        rows.sort(key=lambda row: row[0])
        return rows

    def calls(self, start: int, end: int) -> list[tuple[int, int | None, str]]:
        rows = self.db.execute(
            "select src,dst,kind from xref "
            "where src>=? and src<? and kind in "
            "('call','call_slot','call_mem')",
            (start, end),
        ).fetchall()
        rows.sort(key=lambda row: row[0])
        return rows

    def callers(self, target: int) -> list[tuple[int, int]]:
        return self.db.execute(
            "select src,dst from xref where dst=? and kind in "
            "('call','call_slot','call_mem') order by src",
            (target,),
        ).fetchall()

    def field_rows(self, displacement: int) -> list[tuple[int, str, str, int]]:
        return self.db.execute(
            "select va,kind,base,size from fld where disp=?",
            (displacement,),
        ).fetchall()

    def read_bytes(self, va: int, size: int) -> bytes:
        result = self.pe.read_va(va, size)
        return result[0] if isinstance(result, tuple) else result


def decode_string(pe: PeIndex, address: int | None) -> str | None:
    if address is None or not (0x00400000 <= address < 0x00C00000):
        return None
    try:
        raw = pe.pe.read_va(address, 128)
        data = raw[0] if isinstance(raw, tuple) else raw
    except Exception:
        return None
    terminator = data.find(b"\0")
    if terminator >= 0:
        data = data[:terminator]
    if not data or len(data) > 96:
        return None
    try:
        text = data.decode("ascii")
    except UnicodeDecodeError:
        return None
    if not all(32 <= ord(char) < 127 for char in text):
        return None
    return text


def decode_dispatcher(pe: PeIndex) -> tuple[dict[int, int | None], dict[int, int]]:
    cases = [
        struct.unpack(
            "<I", pe.read_bytes(AI_CASE_TABLE_VA + index * 4, 4)
        )[0]
        for index in range(AI_CASE_COUNT)
    ]
    mapping = list(pe.read_bytes(AI_MAP_TABLE_VA, AI_TYPE_MAX - AI_TYPE_MIN + 1))
    function_end = pe.containing_function(AI_DISPATCH_VA)[1]
    rows = pe.instructions(AI_DISPATCH_VA, function_end)
    calls_by_site: dict[int, list[int | None]] = defaultdict(list)
    for source, destination, _kind in pe.calls(AI_DISPATCH_VA, function_end):
        calls_by_site[source].append(destination)

    case_ai: dict[int, int | None] = {}
    for target in sorted(set(cases)):
        first_call = None
        for va, mnemonic, ops in rows:
            if va < target:
                continue
            if calls_by_site.get(va):
                first_call = calls_by_site[va][0]
                break
            if mnemonic == "jmp" and "0x6c41af" in ops:
                break
            if va > target + 0x400:
                break
        case_ai[target] = first_call

    type_to_case: dict[int, int] = {}
    type_to_ai: dict[int, int | None] = {}
    for enemy_type in range(AI_TYPE_MIN, AI_TYPE_MAX + 1):
        case_index = mapping[enemy_type - AI_TYPE_MIN]
        type_to_case[enemy_type] = case_index
        type_to_ai[enemy_type] = case_ai.get(cases[case_index])
    return type_to_ai, type_to_case


def group_field_refs(
    pe: PeIndex,
) -> tuple[dict[int, dict[int, list[tuple[int, str, str, int]]]], dict[int, list[int]]]:
    by_function: dict[int, dict[int, list[tuple[int, str, str, int]]]] = defaultdict(
        lambda: defaultdict(list)
    )
    all_rows: dict[int, list[tuple[int, str, str, int]]] = {}
    for displacement in TRACKED_FIELDS:
        rows = pe.field_rows(displacement)
        all_rows[displacement] = rows
        for va, kind, base, size in rows:
            function = pe.containing_function(va)
            if function:
                by_function[function[0]][displacement].append(
                    (va, kind, base, size)
                )
    return by_function, all_rows


def choose_this_base(
    refs: dict[int, list[tuple[int, str, str, int]]],
) -> str:
    votes: Counter[str] = Counter()
    for displacement, weight in [
        (STATE_DISP, 4),
        (STATE_FRAME_DISP, 3),
        (INVINCIBLE_DISP, 2),
        (HEALTH_DISP, 2),
        (MAX_HEALTH_DISP, 2),
        (SPEED_MULTIPLIER_DISP, 1),
    ]:
        for _va, _kind, base, _size in refs.get(displacement, []):
            if base not in {"esp", "ebp"}:
                votes[base] += weight
    return votes.most_common(1)[0][0] if votes else "edi"


def candidate_string_addresses(
    rows: list[tuple[int, str, str]], center: int, radius: int = 60
) -> list[int]:
    center_index = next(
        (index for index, row in enumerate(rows) if row[0] == center), 0
    )
    lo = max(0, center_index - radius)
    hi = min(len(rows), center_index + radius + 1)
    addresses: list[int] = []
    for _va, mnemonic, ops in rows[lo:hi]:
        if mnemonic not in {"push", "mov", "lea"}:
            continue
        for match in IMM_RE.finditer(ops):
            value = parse_int(match.group(1))
            if value and 0x00B18000 <= value < 0x00C00000:
                addresses.append(value)
    return sorted(set(addresses))


def call_strings(
    pe: PeIndex,
    rows: list[tuple[int, str, str]],
    calls: list[tuple[int, int | None, str]],
    center: int,
    radius: int = 60,
) -> list[dict[str, Any]]:
    center_index = next(
        (index for index, row in enumerate(rows) if row[0] == center), 0
    )
    lo = max(0, center_index - 10)
    hi = min(len(rows), center_index + radius + 1)
    allowed = {row[0] for row in rows[lo:hi]}
    output: list[dict[str, Any]] = []
    for va, destination, _kind in calls:
        if va not in allowed or destination not in {0x0040A380, 0x0040A940}:
            continue
        call_index = next(
            (index for index, row in enumerate(rows) if row[0] == va), None
        )
        if call_index is None:
            continue
        strings: list[str] = []
        for previous in reversed(rows[max(0, call_index - 8) : call_index]):
            if previous[1] not in {"push", "mov"}:
                continue
            for match in IMM_RE.finditer(previous[2]):
                text = decode_string(pe, parse_int(match.group(1)))
                if text:
                    strings.append(text)
            if strings:
                break
        output.append(
            {
                "call_site": hex_va(va),
                "callee": hex_va(destination),
                "strings": strings,
            }
        )
    return output


def extract_literal_target(ops: str) -> int | None:
    match = STATE_WRITE_RE.search(ops)
    return parse_int(match.group(1)) if match else None


def extract_conditions(
    rows: list[tuple[int, str, str]],
    center: int,
    base: str,
) -> dict[str, Any]:
    center_index = next(
        (index for index, row in enumerate(rows) if row[0] == center), 0
    )
    lo = max(0, center_index - 28)
    context = rows[lo : center_index + 1]
    variant_conditions: list[dict[str, Any]] = []
    state_constants: set[int] = set()
    state_frame_constants: set[int] = set()
    health_comparisons: list[dict[str, Any]] = []
    speed_writes: list[dict[str, Any]] = []
    invincible_writes: list[dict[str, Any]] = []
    raw: list[str] = []

    state_register = None
    for va, mnemonic, ops in context:
        raw.append(instruction_text((va, mnemonic, ops)))
        load = LOAD_STATE_RE.search(f"{mnemonic} {ops}")
        if load:
            state_register = load.group(1).lower()
        if state_register:
            comparison = REG_IMM_CMP_RE.search(f"{mnemonic} {ops}")
            if comparison and comparison.group(1).lower() == state_register:
                value = parse_int(comparison.group(2))
                if value is not None:
                    state_constants.add(value)
            test = REG_TEST_RE.search(f"{mnemonic} {ops}")
            if test and test.group(1).lower() == state_register:
                state_constants.add(0)
        direct_comparison = REG_STATE_CMP_RE.search(f"{mnemonic} {ops}")
        if direct_comparison:
            value = parse_int(direct_comparison.group(1))
            if value is not None:
                state_constants.add(value)
        field_match = FIELD_RE.search(f"{mnemonic} {ops}")
        displacement = (
            parse_int(field_match.group(1)) if field_match else None
        )
        if displacement in {VARIANT_DISP, SUBTYPE_DISP, SPAWNER_TYPE_DISP}:
            immediate = IMM_RE.findall(ops)
            variant_conditions.append(
                {
                    "field": hex_va(displacement),
                    "instruction": instruction_text((va, mnemonic, ops)),
                    "immediates": immediate,
                }
            )
        if displacement == STATE_FRAME_DISP:
            immediate = IMM_RE.search(ops)
            if immediate:
                value = parse_int(immediate.group(1))
                if value is not None:
                    state_frame_constants.add(value)
        if displacement in {HEALTH_DISP, MAX_HEALTH_DISP} and (
            mnemonic in {"comiss", "ucomiss", "cmp"}
            or "comiss" in ops
            or "ucomiss" in ops
        ):
            health_comparisons.append(
                {
                    "field": hex_va(displacement),
                    "instruction": instruction_text((va, mnemonic, ops)),
                }
            )
        if (
            displacement == SPEED_MULTIPLIER_DISP
            and "movss" in mnemonic
            and "ptr" in ops
        ):
            speed_writes.append(
                {
                    "instruction": instruction_text((va, mnemonic, ops)),
                }
            )
        if (
            displacement == INVINCIBLE_DISP
            and mnemonic in {"mov", "or"}
            and "ptr" in ops
        ):
            invincible_writes.append(
                {
                    "instruction": instruction_text((va, mnemonic, ops)),
                }
            )

    return {
        "source_state_constants": sorted(state_constants),
        "state_frame_constants": sorted(state_frame_constants),
        "variant_subtype_conditions": variant_conditions,
        "health_comparisons": health_comparisons,
        "speed_multiplier_writes_near": speed_writes,
        "invincible_writes_near": invincible_writes,
        "raw_context": raw,
    }


def state_reads(
    field_refs: list[tuple[int, str, str, int]],
    rows: list[tuple[int, str, str]],
    base: str,
) -> list[dict[str, Any]]:
    row_positions = {row[0]: index for index, row in enumerate(rows)}
    output: list[dict[str, Any]] = []
    for va, kind, ref_base, size in field_refs:
        if ref_base != base or kind not in {"r", "rw"}:
            continue
        index = row_positions.get(va)
        if index is None:
            continue
        mnemonic, ops = rows[index][1], rows[index][2]
        load = LOAD_STATE_RE.search(f"{mnemonic} {ops}")
        register = load.group(1).lower() if load else None
        comparisons: list[int] = []
        if register:
            for next_va, next_mnemonic, next_ops in rows[index + 1 : index + 9]:
                match = REG_IMM_CMP_RE.search(f"{next_mnemonic} {next_ops}")
                if match and match.group(1).lower() == register:
                    value = parse_int(match.group(2))
                    if value is not None:
                        comparisons.append(value)
        output.append(
            {
                "site": hex_va(va),
                "kind": kind,
                "base": ref_base,
                "size": size,
                "instruction": instruction_text((va, mnemonic, ops)),
                "loaded_register": register,
                "nearby_compare_constants": sorted(set(comparisons)),
            }
        )
    return output


def extract_field_writes(
    field_refs: list[tuple[int, str, str, int]],
    rows: list[tuple[int, str, str]],
    base: str,
    displacement: int,
) -> list[dict[str, Any]]:
    by_va = {row[0]: row for row in rows}
    output: list[dict[str, Any]] = []
    for va, kind, ref_base, size in field_refs:
        if ref_base != base or kind not in {"w", "rw"}:
            continue
        row = by_va.get(va)
        if not row:
            continue
        value = None
        if displacement in {INVINCIBLE_DISP, SPEED_MULTIPLIER_DISP}:
            operands = row[2]
            value_match = re.search(
                r"\],\s*(0x[0-9a-f]+|-?\d+)",
                operands,
                re.I,
            )
            if value_match:
                value = parse_int(value_match.group(1))
        output.append(
            {
                "site": hex_va(va),
                "kind": kind,
                "base": ref_base,
                "size": size,
                "instruction": instruction_text(row),
                "literal_value": value,
            }
        )
    return output


def known_calls_near(
    calls: list[tuple[int, int | None, str]],
    center: int,
    radius: int = 80,
) -> list[dict[str, Any]]:
    attack_targets = {
        0x00428B20,
        0x006FE410,
        0x006CB2E0,
        0x006CCDD0,
        0x006BEC40,
    }
    output: list[dict[str, Any]] = []
    for va, destination, kind in calls:
        if destination not in attack_targets or abs(va - center) > radius:
            continue
        output.append(
            {
                "call_site": hex_va(va),
                "callee": hex_va(destination),
                "name": KNOWN_CALLS.get(destination, "known_attack_related_helper"),
                "kind": kind,
            }
        )
    return output


def extract_health_conditions(
    pe: PeIndex,
    rows: list[tuple[int, str, str]],
    health_refs: list[tuple[int, str, str, int]],
    state_writes: list[dict[str, Any]],
) -> list[dict[str, Any]]:
    positions = {row[0]: index for index, row in enumerate(rows)}
    output: list[dict[str, Any]] = []
    for va, _kind, _base, _size in health_refs:
        index = positions.get(va)
        if index is None:
            continue
        context = rows[max(0, index - 12) : min(len(rows), index + 13)]
        comparisons = []
        for context_va, mnemonic, ops in context:
            if "comiss" not in mnemonic and "ucomiss" not in mnemonic:
                continue
            constants = []
            for match in ABSOLUTE_FLOAT_RE.finditer(ops):
                address = parse_int(match.group(1))
                if address is None:
                    continue
                try:
                    raw = pe.read_bytes(address, 4)
                    value = struct.unpack("<f", raw)[0]
                except Exception:
                    continue
                if value == value and abs(value) < 1e9:
                    constants.append(
                        {
                            "address": hex_va(address),
                            "float": value,
                        }
                    )
            comparisons.append(
                {
                    "site": hex_va(context_va),
                    "instruction": instruction_text(
                        (context_va, mnemonic, ops)
                    ),
                    "absolute_float_constants": constants,
                }
            )
        nearby_state_writes = [
            {
                "site": write["site"],
                "target_state": write.get("literal_target"),
                "distance_instructions": abs(
                    positions.get(int(write["site"], 16), index) - index
                ),
            }
            for write in state_writes
            if int(write["site"], 16) in positions
            and abs(positions[int(write["site"], 16)] - index) <= 160
        ]
        if comparisons or nearby_state_writes:
            output.append(
                {
                    "health_field_site": hex_va(va),
                    "comparisons": comparisons,
                    "nearby_state_writes": nearby_state_writes,
                }
            )
    return output


def animation_names_by_type(animation_catalog: dict[str, Any]) -> dict[int, set[str]]:
    result: dict[int, set[str]] = defaultdict(set)
    for animation in animation_catalog.get("animations", []):
        try:
            enemy_type = int(animation["key"].split(".")[0])
        except (KeyError, ValueError):
            continue
        result[enemy_type].add(animation["name"])
    return result


def runtime_actions_by_identity(mechanism_db: dict[str, Any]) -> dict[str, list[dict[str, Any]]]:
    result: dict[str, list[dict[str, Any]]] = {}
    for entry in mechanism_db.get("entries", []):
        actions = entry.get("runtime_observation", {}).get("actions", [])
        if actions:
            result[entry["id"]["key"]] = actions
    return result


def infer_state_label(
    state: int,
    animations: list[str],
    tags: set[str],
) -> dict[str, Any]:
    lowered = " ".join(animations).lower()
    if "rage" in lowered:
        tags.add("enrage_animation")
    if "phase" in lowered:
        tags.add("phase_animation")
    if not animations:
        label = "unknown"
    elif any(
        token in lowered
        for token in [
            "walk",
            "idle",
            "move",
            "float",
            "fly",
            "appear",
            "spawn",
        ]
    ):
        label = "movement_or_idle_animation_candidate"
    elif any(
        token in lowered
        for token in [
            "attack",
            "shoot",
            "charge",
            "jump",
            "roll",
            "stomp",
            "rage",
            "land",
        ]
    ):
        label = "attack_or_special_animation_candidate"
    else:
        label = "animation_semantics_unclassified"
    return {
        "label": label,
        "evidence": "runtime_animation" if animations else "none",
        "state": state,
        "animations": animations,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, default=OUTPUT)
    parser.add_argument("--check-output", type=Path, default=CHECK_OUTPUT)
    args = parser.parse_args()

    pe = PeIndex()
    mechanism_db = load_json(MECHANISM_DB)
    animation_catalog = load_json(ANIMATION_DB)
    runtime_reports = [
        (path, load_json(path))
        for path in RUNTIME_REPORTS
        if path.exists()
    ]
    runtime_validation_by_key: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for path, report in runtime_reports:
        for result in report.get("cases", []):
            runtime_validation_by_key[result.get("key")].append(
                {
                    "report": rel(path),
                    "status": result.get("status"),
                    "run_directory": result.get("runDirectory"),
                    "summary": result.get("summary"),
                    "state_transitions": result.get("stateTransitions", []),
                }
            )
    external_invincibility = (
        load_json(EXTERNAL_INVINCIBILITY)
        if EXTERNAL_INVINCIBILITY.exists()
        else {"identities": []}
    )
    external_invincibility_by_key = {
        item["key"]: item
        for item in external_invincibility.get("identities", [])
    }
    type_to_ai, type_to_case = decode_dispatcher(pe)
    field_refs, all_field_rows = group_field_refs(pe)

    animations_by_type = animation_names_by_type(animation_catalog)
    runtime_actions = runtime_actions_by_identity(mechanism_db)

    identities_by_type: dict[int, list[dict[str, Any]]] = defaultdict(list)
    for entry in mechanism_db["entries"]:
        identities_by_type[entry["id"]["type"]].append(entry)

    ai_functions = sorted(
        {function for function in type_to_ai.values() if function is not None}
    )
    function_data: dict[int, dict[str, Any]] = {}
    for function in ai_functions:
        function_row = pe.containing_function(function)
        if not function_row:
            continue
        start, end, instruction_count = function_row
        rows = pe.instructions(start, end)
        calls = pe.calls(start, end)
        refs = field_refs.get(function, {})
        base = choose_this_base(refs)
        state_field_refs = refs.get(STATE_DISP, [])
        state_writes = []
        for va, kind, ref_base, size in state_field_refs:
            if ref_base != base or kind not in {"w", "rw"}:
                continue
            row = next((row for row in rows if row[0] == va), None)
            if not row:
                continue
            conditions = extract_conditions(rows, va, base)
            state_writes.append(
                {
                    "site": hex_va(va),
                    "kind": kind,
                    "base": ref_base,
                    "size": size,
                    "instruction": instruction_text(row),
                    "literal_target": extract_literal_target(row[2]),
                    "known_calls_near": known_calls_near(calls, va),
                    **conditions,
                }
            )

        reads = state_reads(state_field_refs, rows, base)
        state_frame_writes = extract_field_writes(
            refs.get(STATE_FRAME_DISP, []), rows, base, STATE_FRAME_DISP
        )
        invincible_writes = extract_field_writes(
            refs.get(INVINCIBLE_DISP, []), rows, base, INVINCIBLE_DISP
        )
        speed_writes = extract_field_writes(
            refs.get(SPEED_MULTIPLIER_DISP, []),
            rows,
            base,
            SPEED_MULTIPLIER_DISP,
        )
        projectile_cooldown_writes = extract_field_writes(
            refs.get(PROJECTILE_COOLDOWN_DISP, []),
            rows,
            base,
            PROJECTILE_COOLDOWN_DISP,
        )
        projectile_delay_writes = extract_field_writes(
            refs.get(PROJECTILE_DELAY_DISP, []),
            rows,
            base,
            PROJECTILE_DELAY_DISP,
        )
        health_conditions = extract_health_conditions(
            pe,
            rows,
            refs.get(HEALTH_DISP, []) + refs.get(MAX_HEALTH_DISP, []),
            state_writes,
        )

        animation_call_records = []
        for write in state_writes:
            site = int(write["site"], 16)
            animation_call_records.extend(
                call_strings(pe, rows, calls, site, radius=80)
            )
        unique_animation_calls: dict[tuple[int, tuple[str, ...]], dict[str, Any]] = {}
        for call in animation_call_records:
            key = (int(call["call_site"], 16), tuple(call.get("strings", [])))
            unique_animation_calls[key] = call
        function_data[function] = {
            "va": hex_va(function),
            "start": hex_va(start),
            "end": hex_va(end),
            "instructions": instruction_count,
            "this_base": base,
            "state_writes": state_writes,
            "state_reads": reads,
            "state_frame_writes": state_frame_writes,
            "invincible_writes": invincible_writes,
            "speed_multiplier_writes": speed_writes,
            "projectile_cooldown_writes": projectile_cooldown_writes,
            "projectile_delay_writes": projectile_delay_writes,
            "health_conditions": health_conditions,
            "animation_calls_near_state_writes": list(unique_animation_calls.values()),
        }

    type_records: dict[int, dict[str, Any]] = {}
    for enemy_type in range(AI_TYPE_MIN, AI_TYPE_MAX + 1):
        ai_function = type_to_ai.get(enemy_type)
        identities = identities_by_type.get(enemy_type, [])
        type_records[str(enemy_type)] = {
            "type": enemy_type,
            "case_index": type_to_case.get(enemy_type),
            "ai_function": hex_va(ai_function),
            "identities": [
                {
                    "key": entry["id"]["key"],
                    "variant": entry["id"]["variant"],
                    "subtype": entry["id"]["subtype"],
                    "name": entry["identity"]["display_name"],
                    "name_zh": entry["identity"]["name_zh"],
                    "role": entry["identity"]["role"],
                    "category": entry["identity"]["category"],
                }
                for entry in identities
            ],
        }

    per_identity: list[dict[str, Any]] = []
    boss_graphs: list[dict[str, Any]] = []
    enrage_candidates: list[dict[str, Any]] = []
    speed_change_candidates: list[dict[str, Any]] = []
    invincibility_database: list[dict[str, Any]] = []

    for entry in mechanism_db["entries"]:
        enemy_type = entry["id"]["type"]
        ai_function = type_to_ai.get(enemy_type)
        function = function_data.get(ai_function or -1, {})
        exact_actions = runtime_actions.get(entry["id"]["key"], [])
        exact_runtime_runs = runtime_validation_by_key.get(entry["id"]["key"], [])
        external_invincible = external_invincibility_by_key.get(
            entry["id"]["key"]
        )
        runtime_state_animations: dict[int, set[str]] = defaultdict(set)
        state_frame_ranges: dict[int, dict[str, int]] = {}
        for action in exact_actions:
            state = action.get("state")
            if not isinstance(state, int):
                continue
            if action.get("animation"):
                runtime_state_animations[state].add(action["animation"])
            state_frame_ranges.setdefault(
                state,
                {
                    "min": action.get("state_frame_min", 0),
                    "max": action.get("state_frame_max", 0),
                },
            )
            state_frame_ranges[state]["min"] = min(
                state_frame_ranges[state]["min"],
                action.get("state_frame_min", 0),
            )
            state_frame_ranges[state]["max"] = max(
                state_frame_ranges[state]["max"],
                action.get("state_frame_max", 0),
            )
        for run in exact_runtime_runs:
            for transition in run.get("state_transitions", []):
                state = transition.get("state")
                if not isinstance(state, int):
                    continue
                if transition.get("animation"):
                    runtime_state_animations[state].add(transition["animation"])
                frame = transition.get("stateFrame")
                if isinstance(frame, int):
                    state_frame_ranges.setdefault(
                        state, {"min": frame, "max": frame}
                    )
                    state_frame_ranges[state]["min"] = min(
                        state_frame_ranges[state]["min"], frame
                    )
                    state_frame_ranges[state]["max"] = max(
                        state_frame_ranges[state]["max"], frame
                    )

        static_writes = function.get("state_writes", [])
        animation_set = animations_by_type.get(enemy_type, set())
        animation_calls = function.get("animation_calls_near_state_writes", [])
        static_animations_by_state: dict[int, set[str]] = defaultdict(set)
        dynamic_animation_strings: set[str] = set()
        for call in animation_calls:
            call_site = int(call["call_site"], 16)
            nearest = min(
                (
                    write
                    for write in static_writes
                    if write.get("literal_target") is not None
                ),
                key=lambda write: abs(int(write["site"], 16) - call_site),
                default=None,
            )
            if nearest is None or abs(int(nearest["site"], 16) - call_site) > 80:
                continue
            target = nearest["literal_target"]
            for text in call.get("strings", []):
                if text in animation_set:
                    static_animations_by_state[target].add(text)
        for text in animation_set:
            if "rage" in text.lower() or "phase" in text.lower():
                dynamic_animation_strings.add(text)

        states = sorted(
            set(runtime_state_animations)
            | {
                write["literal_target"]
                for write in static_writes
                if write.get("literal_target") is not None
            }
        )
        if entry["id"]["key"] == "886.1.0":
            # AI_004ea3d0 diverges before the State 16 branch when Variant is 1.
            states = [state for state in states if state != 16]
        state_map: list[dict[str, Any]] = []
        for state in states:
            tags: set[str] = set()
            runtime_animations = sorted(runtime_state_animations.get(state, set()))
            static_animations = sorted(static_animations_by_state.get(state, set()))
            writes = [
                write
                for write in static_writes
                if write.get("literal_target") == state
            ]
            if writes:
                tags.add("static_state_write")
            if runtime_animations:
                tags.add("runtime_state_animation")
            if static_animations:
                tags.add("static_animation_call_candidate")
            if any(
                write.get("health_comparisons")
                for write in writes
            ):
                tags.add("health_condition_near_write")
            if any(
                write.get("state_frame_constants")
                for write in writes
            ):
                tags.add("state_frame_condition_near_write")
            if any(
                write.get("variant_subtype_conditions")
                for write in writes
            ):
                tags.add("variant_or_subtype_gate_near_write")
            if any(
                write.get("speed_multiplier_writes_near")
                for write in writes
            ):
                tags.add("speed_multiplier_near_write")
            if any(
                write.get("invincible_writes_near")
                for write in writes
            ):
                tags.add("invincible_near_write")
            semantics = infer_state_label(
                state, sorted(set(runtime_animations + static_animations)), tags
            )
            state_map.append(
                {
                    "state": state,
                    "state_frame_range_observed": state_frame_ranges.get(state),
                    "runtime_animations": runtime_animations,
                    "static_animation_calls": static_animations,
                    "semantics": semantics,
                    "write_sites": [
                        {
                            key: value
                            for key, value in write.items()
                            if key != "raw_context"
                        }
                        for write in writes
                    ],
                    "tags": sorted(tags),
                    "attack_calls": [
                        call
                        for write in writes
                        for call in write.get("known_calls_near", [])
                    ],
                    "status": (
                        "runtime_observed"
                        if runtime_animations
                        else "static_candidate"
                        if writes or static_animations
                        else "unknown"
                    ),
                }
            )

        entry_output = {
            "key": entry["id"]["key"],
            "identity": {
                "type": enemy_type,
                "variant": entry["id"]["variant"],
                "subtype": entry["id"]["subtype"],
                "name": entry["identity"]["display_name"],
                "name_zh": entry["identity"]["name_zh"],
                "role": entry["identity"]["role"],
                "category": entry["identity"]["category"],
            },
            "ai_function": hex_va(ai_function),
            "ai_function_data_ref": hex_va(ai_function),
            "ai_function_summary": {
                "instructions": function.get("instructions"),
                "this_base": function.get("this_base"),
                "state_write_count": len(function.get("state_writes", [])),
                "state_read_count": len(function.get("state_reads", [])),
            },
            "state_map": state_map,
            "runtime_actions": exact_actions,
            "runtime_validation": exact_runtime_runs,
            "external_invincibility_observations": external_invincible,
            "invincibility": {
                "entity_flag": "invincible(+0x3b0)",
                "ai_writes": function.get("invincible_writes", []),
                "external_readable": True,
                "live_external_verified": False,
            },
            "rage_or_phase_animation_candidates": sorted(dynamic_animation_strings),
            "phase_fields": {
                "generic_phase_field_found": False,
                "state_field": hex_va(STATE_DISP),
                "boss_flag": hex_va(BOSS_FLAG_DISP),
                "delirium_fields": {
                    "boss_type": "0xbc8",
                    "boss_variant": "0xbcc",
                    "state": "0xbd3",
                    "attack_id": "0xbd8",
                    "cycle_id": "0xbe0",
                },
            },
            "evidence": {
                "static_state_writes": bool(static_writes),
                "runtime_state_animations": bool(runtime_state_animations),
                "offline_original_engine_state_transition": any(
                    run.get("state_transitions") for run in exact_runtime_runs
                ),
                "static_pre_attack_rule": bool(
                    entry.get("external_memory_support", {}).get(
                        "specific_pre_attack_rules"
                    )
                ),
                "offline_original_engine_identity_probe": bool(
                    entry.get("runtime_observation", {})
                    .get("identity_probe", {})
                    .get("rooms")
                ),
            },
        }
        per_identity.append(entry_output)

        enrage_states = []
        speed_change_states = []
        for node in state_map:
            animation_text = " ".join(
                node.get("runtime_animations", [])
                + node.get("static_animation_calls", [])
            ).lower()
            explicit_rage_animation = "rage" in animation_text
            speed_with_condition = (
                "speed_multiplier_near_write" in node["tags"]
                and (
                    "health_condition_near_write" in node["tags"]
                    or "state_frame_condition_near_write" in node["tags"]
                )
            )
            if explicit_rage_animation:
                enrage_states.append(node["state"])
            elif speed_with_condition:
                speed_change_states.append(node["state"])
        if dynamic_animation_strings or enrage_states:
            runtime_states = {
                transition.get("state")
                for run in exact_runtime_runs
                for transition in run.get("state_transitions", [])
            }
            enrage_candidates.append(
                {
                    "key": entry["id"]["key"],
                    "identity": entry_output["identity"],
                    "animation_candidates": sorted(dynamic_animation_strings),
                    "state_candidates": enrage_states,
                    "state_evidence": [
                        node
                        for node in state_map
                        if node["state"] in enrage_states
                    ],
                    "runtime_verified_states": sorted(
                        state
                        for state in enrage_states
                        if state in runtime_states
                    ),
                    "evidence": (
                        "static_animation_state_and_condition_candidates; "
                        "runtime state transitions recorded separately"
                    ),
                }
            )
        if speed_change_states:
            speed_change_candidates.append(
                {
                    "key": entry["id"]["key"],
                    "identity": entry_output["identity"],
                    "state_candidates": speed_change_states,
                    "state_evidence": [
                        node
                        for node in state_map
                        if node["state"] in speed_change_states
                    ],
                    "evidence": (
                        "speed multiplier write with nearby health or "
                        "StateFrame condition; cause not established"
                    ),
                }
            )
        runtime_invincible_transitions = [
            transition
            for run in exact_runtime_runs
            for transition in run.get("state_transitions", [])
            if transition.get("previousInvulnerable") is not None
            and transition.get("invulnerable")
            != transition.get("previousInvulnerable")
        ]
        if (
            function.get("invincible_writes")
            or runtime_invincible_transitions
            or external_invincible
        ):
            invincibility_database.append(
                {
                    "key": entry["id"]["key"],
                    "identity": entry_output["identity"],
                    "ai_function": hex_va(ai_function),
                    "writes": function["invincible_writes"],
                    "state_candidates": [
                        node["state"]
                        for node in state_map
                        if "invincible_near_write" in node["tags"]
                    ],
                    "external_readable": True,
                    "starts_and_ends": (
                        "literal_value_1_candidate_start; "
                        "literal_value_0_candidate_end"
                    ),
                    "runtime_invincible_transitions": (
                        runtime_invincible_transitions
                    ),
                    "runtime_verified": bool(runtime_invincible_transitions),
                    "external_invincibility_observations": external_invincible,
                    "external_live_verified": bool(external_invincible),
                }
            )

        if entry["identity"]["role"] == "boss":
            graph_edges = []
            for state_node in state_map:
                target_state = state_node["state"]
                for write in state_node["write_sites"]:
                    sources = write.get("source_state_constants") or [
                        "entry_or_unresolved"
                    ]
                    for source in sources:
                        graph_edges.append(
                            {
                                "from_state": source,
                                "to_state": target_state,
                                "evidence": "static_state_write_and_nearby_compare",
                                "site": write["site"],
                                "instruction": write["instruction"],
                                "state_frame_constants": write.get(
                                    "state_frame_constants", []
                                ),
                                "health_comparisons": write.get(
                                    "health_comparisons", []
                                ),
                                "variant_subtype_conditions": write.get(
                                    "variant_subtype_conditions", []
                                ),
                                "speed_multiplier_writes_near": write.get(
                                    "speed_multiplier_writes_near", []
                                ),
                                "invincible_writes_near": write.get(
                                    "invincible_writes_near", []
                                ),
                            }
                        )
            boss_graphs.append(
                {
                    "key": entry["id"]["key"],
                    "identity": entry_output["identity"],
                    "ai_function": hex_va(ai_function),
                    "nodes": state_map,
                    "edges": graph_edges,
                    "health_conditions": function.get("health_conditions", []),
                    "status": (
                        "runtime_observed_plus_static"
                        if any(node["status"] == "runtime_observed" for node in state_map)
                        else "static_candidate"
                    ),
                }
            )

    damage_filters = {
        "take_damage_entry": {
            "va": hex_va(TAKE_DAMAGE_VA),
            "function": next(
                (
                    {
                        "start": hex_va(row[0]),
                        "end": hex_va(row[1]),
                        "instructions": row[2],
                    }
                    for row in pe.functions
                    if row[0] == TAKE_DAMAGE_VA
                ),
                None,
            ),
            "direct_callers": [
                {
                    "call_site": hex_va(source),
                    "caller": hex_va(
                        pe.containing_function(source)[0]
                        if pe.containing_function(source)
                        else None
                    ),
                }
                for source, _destination in pe.callers(TAKE_DAMAGE_VA)
            ],
        },
        "pre_filter": {
            "va": hex_va(DAMAGE_PRE_FILTER_VA),
            "field_refs": [
                {
                    "displacement": hex_va(displacement),
                    "rows": [
                        {
                            "site": hex_va(va),
                            "kind": kind,
                            "base": base,
                            "size": size,
                        }
                        for va, kind, base, size in rows
                        if pe.containing_function(va)
                        and pe.containing_function(va)[0] == DAMAGE_PRE_FILTER_VA
                    ],
                }
                for displacement, rows in all_field_rows.items()
                if displacement
                in {
                    INVINCIBLE_DISP,
                    HEALTH_DISP,
                    MAX_HEALTH_DISP,
                    BOSS_STATUS_COOLDOWN_DISP,
                    SHIELD_STRENGTH_DISP,
                }
            ],
        },
        "common_observed_checks": [
            "entity type must be in the NPC update range",
            "EntityCollisionClass must be an active collision class",
            "invincible(+0x3b0) rejects damage when nonzero",
            "dead(+0x173) rejects damage",
        ],
    }

    summary = {
        "types_mapped": sum(
            1 for function in type_to_ai.values() if function is not None
        ),
        "unique_ai_functions": len(ai_functions),
        "ai_functions_with_state_write_or_read": sum(
            bool(data["state_writes"] or data["state_reads"])
            for data in function_data.values()
        ),
        "ai_functions_with_state_frame_refs": sum(
            bool(data["state_frame_writes"])
            for data in function_data.values()
        ),
        "ai_functions_with_invincible_writes": sum(
            bool(data["invincible_writes"])
            for data in function_data.values()
        ),
        "state_write_sites": sum(
            len(data["state_writes"]) for data in function_data.values()
        ),
        "state_frame_write_sites": sum(
            len(data["state_frame_writes"]) for data in function_data.values()
        ),
        "invincible_write_sites": sum(
            len(data["invincible_writes"]) for data in function_data.values()
        ),
        "identity_records": len(per_identity),
        "boss_records": len(boss_graphs),
        "boss_with_static_edges": sum(
            bool(graph["edges"]) for graph in boss_graphs
        ),
        "enrage_candidates": len(enrage_candidates),
        "speed_change_candidates": len(speed_change_candidates),
        "invincibility_records": len(invincibility_database),
        "runtime_state_observed_identities": sum(
            any(state["runtime_animations"] for state in row["state_map"])
            for row in per_identity
        ),
        "runtime_probe_identities": len(runtime_validation_by_key),
        "runtime_state_transition_identities": sum(
            any(run.get("state_transitions") for run in row["runtime_validation"])
            for row in per_identity
        ),
        "runtime_invincible_transition_identities": sum(
            any(
                transition.get("previousInvulnerable") is not None
                and
                transition.get("invulnerable")
                != transition.get("previousInvulnerable")
                for run in row["runtime_validation"]
                for transition in run.get("state_transitions", [])
            )
            for row in per_identity
        ),
        "external_invincible_identities": len(
            external_invincibility_by_key
        ),
    }
    expected = {
        "Monstro": 0x0046C0A0,
        "Widow": 0x0046FBE0,
        "The Cage": 0x004878A0,
        "Cross Stoney": 0x00508F40,
    }
    observed = {
        "Monstro": type_to_ai.get(20),
        "Widow": type_to_ai.get(100),
        "The Cage": type_to_ai.get(265),
        "Cross Stoney": type_to_ai.get(302),
    }
    checks = [
        {
            "name": f"{name} AI mapping",
            "expected": hex_va(expected[name]),
            "actual": hex_va(observed[name]),
        }
        for name in expected
    ]
    checks.extend(
        [
            {
                "name": "state writer AI count",
                "expected_min": 200,
                "actual": summary["ai_functions_with_state_write_or_read"],
            },
            {
                "name": "state-frame AI count",
                "expected_min": 100,
                "actual": summary["ai_functions_with_state_frame_refs"],
            },
            {
                "name": "invincible writer AI count",
                "expected_min": 40,
                "actual": summary["ai_functions_with_invincible_writes"],
            },
            {
                "name": "rage animation type 79",
                "expected_present": "RageBody",
                "actual_present": "RageBody" in animations_by_type.get(79, set()),
            },
            {
                "name": "rage animation type 413",
                "expected_present": "RageBegin",
                "actual_present": "RageBegin" in animations_by_type.get(413, set()),
            },
            {
                "name": "rage animation type 886",
                "expected_present": "RageStart",
                "actual_present": "RageStart" in animations_by_type.get(886, set()),
            },
            {
                "name": "Matriarch runtime state 13",
                "expected_present": 13,
                "actual_present": 13
                in {
                    transition.get("state")
                    for run in runtime_validation_by_key.get("413.0.0", [])
                    for transition in run.get("state_transitions", [])
                },
            },
            {
                "name": "external invincible Eternal Fly",
                "expected_present": True,
                "actual_present": "96.0.0" in external_invincibility_by_key,
            },
            {
                "name": "external invincible Wall Hugger",
                "expected_present": True,
                "actual_present": "218.0.0" in external_invincibility_by_key,
            },
            {
                "name": "external invincible Stoney",
                "expected_present": True,
                "actual_present": "302.0.0" in external_invincibility_by_key,
            },
            {
                "name": "Delirium AI mapping",
                "expected": "0x004a6500",
                "actual": hex_va(type_to_ai.get(412)),
            },
            {
                "name": "reader exports max health",
                "expected": True,
                "actual": "e.max_hp=finite_float(raw,0x384"
                in READER_PATH.read_text(encoding="utf-8"),
            },
            {
                "name": "reader exports AI I1/I2",
                "expected": True,
                "actual": "e.ai_i1=unpack<int>(raw,0xbc0)"
                in READER_PATH.read_text(encoding="utf-8"),
            },
            {
                "name": "reader exports Delirium fields",
                "expected": True,
                "actual": "e.delirium_state=unpack<uint8_t>(raw,0xbd3)"
                in READER_PATH.read_text(encoding="utf-8"),
            },
        ]
    )
    for check in checks:
        if "expected_min" in check:
            check["pass"] = check["actual"] >= check["expected_min"]
        elif "expected_present" in check:
            check["pass"] = check["actual_present"]
        else:
            check["pass"] = check["actual"] == check["expected"]
    if not all(check["pass"] for check in checks):
        raise RuntimeError(
            "state semantics checks failed: "
            + json.dumps([check for check in checks if not check["pass"]])
        )

    output = {
        "format": "isaac-j460-state-semantics-v1",
        "game_sha256": sha256(GAME_PATH),
        "sources": {
            path_label(path): {
                "sha256": sha256(path),
                "bytes": path.stat().st_size,
            }
            for path in [
                GAME_PATH,
                INDEX_PATH,
                MECHANISM_DB,
                ANIMATION_DB,
                READER_PATH,
                EXTERNAL_INVINCIBILITY,
                *[path for path, _report in runtime_reports],
            ]
            if path.exists()
        },
        "dispatcher": {
            "va": hex_va(AI_DISPATCH_VA),
            "case_table": hex_va(AI_CASE_TABLE_VA),
            "map_table": hex_va(AI_MAP_TABLE_VA),
            "case_count": AI_CASE_COUNT,
            "type_min": AI_TYPE_MIN,
            "type_max": AI_TYPE_MAX,
            "evidence": "unique local PE jump table and direct call extraction",
        },
        "field_offsets": {
            "state": hex_va(STATE_DISP),
            "state_frame": hex_va(STATE_FRAME_DISP),
            "invincible": hex_va(INVINCIBLE_DISP),
            "health": hex_va(HEALTH_DISP),
            "max_health": hex_va(MAX_HEALTH_DISP),
            "speed_multiplier": hex_va(SPEED_MULTIPLIER_DISP),
            "shield_strength": hex_va(SHIELD_STRENGTH_DISP),
            "projectile_cooldown": hex_va(PROJECTILE_COOLDOWN_DISP),
            "projectile_delay": hex_va(PROJECTILE_DELAY_DISP),
            "boss_flag": hex_va(BOSS_FLAG_DISP),
            "boss_status_cooldown": hex_va(BOSS_STATUS_COOLDOWN_DISP),
            "ai_v1": "0xbb0",
            "ai_v2": "0xbb8",
            "ai_i1": "0xbc0",
            "ai_i2": "0xbc4",
            "delirium_boss_type": "0xbc8",
            "delirium_boss_variant": "0xbcc",
            "delirium_transformation_timer": "0xbd0",
            "delirium_remaining_attacks": "0xbd2",
            "delirium_state": "0xbd3",
            "delirium_attack_id": "0xbd8",
            "delirium_attack_angle": "0xbdc",
            "delirium_cycle_id": "0xbe0",
        },
        "state_semantics": {
            "generic_unified_state_enum": False,
            "state_is_per_ai_function": True,
            "state_frame_is_per_state": True,
            "unknown_states_retained": True,
        },
        "type_map": type_records,
        "ai_functions": {
            hex_va(function): data for function, data in sorted(function_data.items())
        },
        "identities": per_identity,
        "boss_phase_graphs": boss_graphs,
        "curated_phase_models": CURATED_MODELS,
        "enrage_candidates": enrage_candidates,
        "speed_change_candidates": speed_change_candidates,
        "invincibility": {
            "damage_model": damage_filters,
            "records": invincibility_database,
        },
        "evidence_definitions": {
            "static_state_write": "Literal write to Entity_NPC+0xB64 in the mapped AI function.",
            "static_state_read": "Read from Entity_NPC+0xB64 and nearby comparison constants.",
            "runtime_state_animation": "State and animation observed together in the historical callback index.",
            "state_frame_condition": "StateFrame offset appears in the local comparison window.",
            "health_condition": "HP or MaxHP appears in the local comparison window.",
            "invincible_write": "A write to +0x3B0 in the mapped AI function.",
            "phase_edge": "A state write with a nearby state comparison; not yet runtime-verified.",
        },
        "limitations": [
            "A nearby comparison is a candidate condition, not proof of the branch source.",
            "Shared AI functions can serve multiple variants and subtypes.",
            "A state animation is descriptive behavior, not proof of damage or invincibility.",
            "Offline training validation and external live-memory timing are separate evidence.",
        ],
        "summary": summary,
    }

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.check_output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("w", encoding="utf-8", newline="\n") as handle:
        json.dump(output, handle, ensure_ascii=False, indent=2)
        handle.write("\n")
    validation = {
        "format": "isaac-j460-state-semantics-validation-v1",
        "database": rel(args.output),
        "database_sha256": sha256(args.output),
        "database_bytes": args.output.stat().st_size,
        "pass": True,
        "checks": checks,
        "summary": summary,
    }
    with args.check_output.open("w", encoding="utf-8", newline="\n") as handle:
        json.dump(validation, handle, ensure_ascii=False, indent=2)
        handle.write("\n")
    print(
        json.dumps(
            {
                "output": rel(args.output),
                "sha256": validation["database_sha256"],
                "bytes": validation["database_bytes"],
                "summary": summary,
            },
            ensure_ascii=False,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
