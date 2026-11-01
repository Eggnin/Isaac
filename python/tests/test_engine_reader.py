import ast
import hashlib
from pathlib import Path
import struct
import sys
import unittest
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parent))
import engine_reader


class EngineReaderDecodeTests(unittest.TestCase):
    @staticmethod
    def entity_bytes(kind=10, length=0xB68):
        raw = bytearray(length)
        struct.pack_into("<I", raw, 0x20, 23)      # list index
        struct.pack_into("<I", raw, 0x28, kind)    # type
        struct.pack_into("<I", raw, 0x2C, 4)      # variant
        struct.pack_into("<I", raw, 0x30, 2)      # subtype
        struct.pack_into("<f", raw, 0x33C, 321.5)
        struct.pack_into("<f", raw, 0x340, 123.25)
        struct.pack_into("<f", raw, 0x360, -14.0)
        struct.pack_into("<f", raw, 0x364, 6.5)
        struct.pack_into("<f", raw, 0x370, 18.0)
        struct.pack_into("<f", raw, 0x380, 9.5)
        struct.pack_into("<f", raw, 0x388, 3.25)
        struct.pack_into("<Q", raw, 0x168, 0x123456789)
        raw[0x171] = 1
        raw[0x173] = 0
        struct.pack_into("<I", raw, 0x3EC, 99)
        if kind >= 10 and kind != 1000 and length >= 0xB68:
            struct.pack_into("<I", raw, 0xB64, 7)
            struct.pack_into("<I", raw, 0x410, 16)
        return raw

    def test_entity_coordinates_motion_collision_and_state(self):
        entity = engine_reader.decode_entity(0x123400, self.entity_bytes())
        self.assertEqual((entity.index, entity.type, entity.variant, entity.subtype), (23, 10, 4, 2))
        self.assertEqual((entity.x, entity.y, entity.vx, entity.vy), (321.5, 123.25, -14.0, 6.5))
        self.assertEqual((entity.radius, entity.collision_damage, entity.health), (18.0, 3.25, 9.5))
        self.assertEqual((entity.state, entity.state_frame), (7, 16))
        self.assertTrue(entity.visible)
        self.assertFalse(entity.dead)

    def test_grid_contact_uses_verified_getter_byte_not_neighboring_boolean(self):
        raw=self.entity_bytes();raw[0x172]=1
        self.assertFalse(engine_reader.decode_entity(0x123400,raw).grid_colliding)
        raw[0x190]=1
        self.assertTrue(engine_reader.decode_entity(0x123400,raw).grid_colliding)

    def test_player_specific_indices(self):
        raw = self.entity_bytes(kind=1, length=0x1620)
        # Current J460 offsets, also used by the frozen 049 reader.
        # The old fixture wrote the previous layout eight bytes earlier.
        struct.pack_into("<I", raw, 0x1618, 2)
        struct.pack_into("<I", raw, 0x161C, 1)
        entity = engine_reader.decode_entity(0x100000, raw)
        self.assertEqual(entity.type, 1)
        self.assertEqual((entity.controller_index, entity.player_index), (2, 1))
        self.assertIsNone(entity.state)

    def test_nan_invalid_type_and_short_read_are_rejected(self):
        raw = self.entity_bytes()
        struct.pack_into("<f", raw, 0x33C, float("nan"))
        with self.assertRaises(ValueError):
            engine_reader.decode_entity(1, raw)
        raw = self.entity_bytes(kind=2000)
        with self.assertRaises(ValueError):
            engine_reader.decode_entity(1, raw)
        with self.assertRaises(ValueError):
            engine_reader.decode_entity(1, bytearray(0x40F))

    def test_static_profile_reads_only_executable_file(self):
        exe = engine_reader.GAME
        if not exe.is_file():
            self.skipTest(f"静态测试文件不存在：{exe}")
        digest = hashlib.sha256(exe.read_bytes()).hexdigest().upper()
        if digest != engine_reader.SUPPORTED_HASH:
            with self.assertRaises(ValueError):
                engine_reader.identify(exe)
        else:
            profile = engine_reader.identify(exe)
            self.assertEqual(profile["file_sha256"], digest)
            self.assertGreaterEqual(profile["preferred_base"], 0x400000)
            self.assertIn("player_list_offset", profile)
        self.assertFalse(hasattr(engine_reader, "PROCESS_VM_WRITE"))

    def test_module_has_no_process_write_api_or_permission(self):
        source_path = Path(engine_reader.__file__)
        tree = ast.parse(source_path.read_text(encoding="utf-8-sig"))
        names = {node.id for node in ast.walk(tree) if isinstance(node, ast.Name)}
        attrs = {node.attr for node in ast.walk(tree) if isinstance(node, ast.Attribute)}
        self.assertFalse({"PROCESS_VM_WRITE", "PROCESS_ALL_ACCESS", "PROCESS_VM_OPERATION"} & names)
        self.assertFalse({"WriteProcessMemory", "NtWriteVirtualMemory", "VirtualProtectEx"} & attrs)
        self.assertIn("PROCESS_VM_READ", names)


class PartitionSnapshotTests(unittest.TestCase):
    def reader(self):
        reader=engine_reader.EngineReader.__new__(engine_reader.EngineReader)
        reader.base=0x400000
        reader.profile={'game_slot_rva':0x8000,'player_list_offset':0x1baa8}
        game,room,player,npc=0x1000000,0x2000000,0x3000000,0x4000000
        memory={reader.base+0x8000:struct.pack('<I',game),
                game+0x18300:struct.pack('<I',room),
                room+12:struct.pack('<II',15,9),
                game+0x1baa8:struct.pack('<III',0x5000000,0x5000004,0x5000004),
                0x5000000:struct.pack('<I',player),
                player:bytes(EngineReaderDecodeTests.entity_bytes(1,0x1620)),
                npc:bytes(EngineReaderDecodeTests.entity_bytes())}
        # Observed layout: main excludes the player; persistent holds the player;
        # update overlaps both. The output must include each entity exactly once.
        for offset,data,pointers in [(0x20,0x5000100,[npc]),(0x30,0x5000200,[player]),
                                      (0x40,0x5000300,[player,npc])]:
            memory[room+0x1218+offset]=struct.pack('<IIII',0,data,256,len(pointers))
            memory[data]=struct.pack('<'+'I'*len(pointers),*pointers)
        def read(address,size):
            for start,raw in memory.items():
                if start<=address and address+size<=start+len(raw):
                    return raw[address-start:address-start+size]
            raise ValueError('Unexpected read')
        reader.read=read
        return reader,room,player,npc

    def test_player_in_persistent_list_and_overlapping_entities(self):
        reader,_,player,npc=self.reader()
        result=reader.snapshot()
        self.assertEqual({e['address'] for e in result['entities']},{player,npc})
        self.assertEqual(len(result['entities']),2)
        self.assertEqual([p['address'] for p in result['players']],[player])
        self.assertEqual(result['entity_partitions'],{'main':1,'persistent':1,'update':2})
        self.assertFalse(result['control_enabled'])

    def test_partition_change_during_read_discards_snapshot(self):
        reader,room,_,_=self.reader()
        read=reader.read
        reads=0
        def changed(address,size):
            nonlocal reads
            raw=read(address,size)
            if address==room+0x1218+0x30:
                reads+=1
                if reads>1:
                    return raw[:-4]+struct.pack('<I',2)
            return raw
        reader.read=changed
        with self.assertRaisesRegex(ValueError,'changed during read'):
            reader.snapshot()


if __name__ == "__main__":
    unittest.main()
