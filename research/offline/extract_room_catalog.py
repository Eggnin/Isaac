#!/usr/bin/env python3
"""Extract an Afterbirth STB room table from a local KAGE archive."""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import struct
import sys
from pathlib import Path


REPO = Path(__file__).resolve().parents[2]
ARCHIVE_MODULE = REPO / "research/the-browsing-of-isaac/scripts/recomp/assets/archive.py"


def load_archive_module():
    spec = importlib.util.spec_from_file_location("isaac_archive", ARCHIVE_MODULE)
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    return module


def parse_afterbirth_stb(data: bytes) -> list[dict]:
    header_packer = struct.Struct("<4sI")
    room_begin_packer = struct.Struct("<IIIBH")
    room_end_packer = struct.Struct("<fBBBBH")
    door_packer = struct.Struct("<hh?")
    stack_packer = struct.Struct("<hhB")
    entity_packer = struct.Struct("<HHHf")

    header, count = header_packer.unpack_from(data, 0)
    if header != b"STB1":
        raise ValueError(f"expected STB1, found {header!r}")
    offset = header_packer.size
    rooms = []

    for index in range(count):
        room_type, variant, subtype, difficulty, name_length = room_begin_packer.unpack_from(data, offset)
        offset += room_begin_packer.size
        name = data[offset:offset + name_length].decode("utf-8", "replace")
        offset += name_length
        weight, width, height, shape, door_count, stack_count = room_end_packer.unpack_from(data, offset)
        offset += room_end_packer.size

        doors = []
        for _ in range(door_count):
            x, y, exists = door_packer.unpack_from(data, offset)
            offset += door_packer.size
            doors.append({"x": x + 1, "y": y + 1, "exists": bool(exists)})

        spawns = []
        for _ in range(stack_count):
            x, y, entity_count = stack_packer.unpack_from(data, offset)
            offset += stack_packer.size
            entities = []
            for _ in range(entity_count):
                entity_type, entity_variant, entity_subtype, entity_weight = entity_packer.unpack_from(data, offset)
                offset += entity_packer.size
                entities.append({
                    "type": entity_type,
                    "variant": entity_variant,
                    "subtype": entity_subtype,
                    "weight": entity_weight,
                })
            spawns.append({"x": x + 1, "y": y + 1, "entities": entities})

        room_command = f"d.{variant}" if room_type == 1 else f"x.{room_type}.{variant}"
        rooms.append({
            "index": index,
            "room": room_command,
            "type": room_type,
            "variant": variant,
            "subtype": subtype,
            "name": name,
            "difficulty": difficulty,
            "weight": weight,
            "width": width + 2,
            "height": height + 2,
            "shape": shape,
            "doors": doors,
            "spawns": spawns,
            "entityCount": sum(len(spawn["entities"]) for spawn in spawns),
        })

    if offset != len(data):
        raise ValueError(f"parsed {offset} of {len(data)} bytes")
    return rooms


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--archive", default=str(REPO / "research/runtime-instance/resources/packed/afterbirthp.a"))
    parser.add_argument("--entry", default="rooms/01.basement.stb")
    parser.add_argument("--output", default=str(REPO / "research/room-configs/basement-rooms.json"))
    args = parser.parse_args()

    archive_module = load_archive_module()
    archive_path = Path(args.archive)
    with archive_module.Archive(str(archive_path)) as archive:
        entry = archive.find(args.entry)
        if entry is None:
            raise SystemExit(f"archive entry not found: {args.entry}")
        data = archive.decode(entry)

    rooms = parse_afterbirth_stb(data)
    report = {
        "format": "j460-afterbirthp-stb1-room-catalog-v1",
        "source": {
            "archive": str(archive_path),
            "archiveSha256": hashlib.sha256(archive_path.read_bytes()).hexdigest(),
            "entry": args.entry,
            "entrySha256": hashlib.sha256(data).hexdigest(),
            "decodedBytes": len(data),
        },
        "roomCount": len(rooms),
        "rooms": rooms,
    }
    output = Path(args.output)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    normal_combat = [
        room for room in rooms
        if room["type"] == 1 and room["entityCount"] > 0
    ]
    print(json.dumps({
        "output": str(output),
        "rooms": len(rooms),
        "normalRoomsWithEntities": len(normal_combat),
    }, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
