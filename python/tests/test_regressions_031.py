"""Offline reproductions of online ownership and duplicate observation faults."""
import math
from pathlib import Path
import queue
import struct
import tempfile
import unittest
from unittest.mock import Mock, patch

from engine_app import ControlWorker
from engine_reader import EngineReader
from engine_world import EngineWorld
from planner import Decision
import test_engine_app as app_tests


class NetworkOwnershipTests(unittest.TestCase):
    def reader(self, devices):
        reader = EngineReader.__new__(EngineReader)
        reader.base = 0x400000
        reader.profile = {'isaac_slot_rva': 0x8000}
        isaac, vector_data = 0x1000000, 0x2000000
        vector = isaac + 0x4b3d8
        memory = {
            reader.base + 0x8000: struct.pack('<I', isaac),
            vector: struct.pack('<III', vector_data, vector_data + len(devices)*4,
                                vector_data + len(devices)*4),
            vector_data: b''.join(struct.pack('<I', 0x3000000 + i*0x1000)
                                  for i in range(len(devices))),
            0xc5ac00: struct.pack('<I', 0x7000000),
        }
        for i, (controller, local) in enumerate(devices):
            address, vtable, owner = 0x3000000+i*0x1000, 0x4000000+i*0x1000, 0x5000000+i*0x1000
            raw = bytearray(0x378)
            struct.pack_into('<I', raw, 0xc, controller)
            struct.pack_into('<II', raw, 0x370, vtable, owner)
            data = bytearray(0x24)
            data[0] = int(local)  # Native IsLocal's data[0]&1 fallback.
            memory[address] = bytes(raw)
            memory[vtable+20] = struct.pack('<I', reader.base+0x65f260)
            memory[owner] = bytes(data)

        def read(address, size):
            for start, data in memory.items():
                if start <= address and address+size <= start+len(data):
                    return data[address-start:address-start+size]
            raise ValueError(f'Unexpected synthetic read {address:#x}/{size}')

        reader.read = read
        return reader

    def test_online_indices_three_and_four_select_only_local_four(self):
        reader = self.reader([(3, False), (4, True)])
        local, info = reader._local_controllers([{'controller_index': 3}, {'controller_index': 4}])
        self.assertEqual(local, {4})
        self.assertEqual(info['method'], 'native_net_input_ownership')

    def test_unmatched_network_devices_never_fall_back_to_controller_zero(self):
        reader = self.reader([(3, False), (4, True)])
        local, info = reader._local_controllers([{'controller_index': 0}])
        self.assertEqual(local, set())
        self.assertEqual(info['method'], 'native_net_input_ownership')

    def test_matching_remote_zero_is_not_treated_as_offline_keyboard(self):
        reader = self.reader([(0, False), (4, True)])
        local, _ = reader._local_controllers([{'controller_index': 0}])
        self.assertEqual(local, set())

    def test_empty_network_vector_retains_offline_keyboard(self):
        local, info = self.reader([])._local_controllers([{'controller_index': 0}])
        self.assertEqual(local, {0})
        self.assertEqual(info['method'], 'offline_keyboard_controller')


class ObservationFrameTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.input = app_tests.FakeInput()
        self.world = EngineWorld()
        self.world.update = Mock(wraps=self.world.update)
        self.planner = Mock()
        self.planner.decide.return_value = Decision((1, 0), None, None, [(50., 60.)], 0.)
        self.planner._search.last_report = {}
        self.worker = ControlWorker(queue.Queue(), window=Mock(), input_controller=self.input,
                                    world=self.world, planner=self.planner,
                                    log_dir=Path(self.temp.name))
        self.worker.enabled = True
        self.worker.last_frame = 9
        self.worker.motion.update = Mock(wraps=self.worker.motion.update)
        self.player = dict(app_tests.EngineAppWorkerTests.player_record(), seed=1)

    def tearDown(self):
        self.worker.diagnostics.close()
        self.temp.cleanup()

    def snapshot(self, frame, *, angle=0., **kw):
        radians = math.radians(angle)
        laser = {'type': 7, 'address': 77, 'seed': 7, 'x': 100., 'y': 200.,
                 'radius': 3., 'collision_damage': 1.,
                 'laser': {'angle': angle, 'timeout': 20,
                           'endpoint': (100.+200.*math.cos(radians), 200.+200.*math.sin(radians))}}
        return {'complete': True, 'frame': frame, 'room': 1, 'local_player': self.player,
                'entities': [laser], 'grid_width': 15, 'grid_height': 9,
                'grid_cells': [], **kw}

    def process(self, snapshot, foreground=True):
        return self.worker.process_snapshot(snapshot, foreground=foreground, dt=1/30)

    def test_repeated_frame_retains_rotating_beam_prediction_without_reobserving(self):
        self.process(self.snapshot(10))
        first = self.process(self.snapshot(11, angle=10.))
        self.assertNotEqual(first['world']['bodies'][0].angular_velocity, 0.)
        duplicate = self.process(self.snapshot(11, angle=10.))
        self.assertEqual(self.world.update.call_count, 2)
        self.assertEqual(self.worker.motion.update.call_count, 2)
        self.assertEqual(duplicate['world']['bodies'][0].angular_velocity,
                         first['world']['bodies'][0].angular_velocity)
        self.assertEqual(self.planner.decide.call_count, 2)
        self.assertIsNone(duplicate['decision'])

    def test_duplicate_frame_focus_loss_still_releases_keys(self):
        self.process(self.snapshot(10))
        releases = self.input.release_calls
        result = self.process(self.snapshot(10), foreground=False)
        self.assertGreater(self.input.release_calls, releases)
        self.assertIn('失焦', result['status'])
        self.assertEqual(self.world.update.call_count, 1)

    def test_stalled_frame_still_expires_held_keys(self):
        self.process(self.snapshot(10))
        with patch('engine_app.time.monotonic', return_value=self.worker.last_frame_time+.11):
            result = self.process(self.snapshot(10))
        self.assertIn('等待新的引擎帧', result['status'])
        self.assertGreater(self.input.release_calls, 0)

    def test_pause_does_not_overwrite_motion_or_warning_observations(self):
        self.process(self.snapshot(10))
        result = self.process(self.snapshot(10, paused=True))
        self.assertIn('暂停', result['status'])
        self.assertEqual(self.world.update.call_count, 1)

    def test_frame_rewind_discards_previous_prediction_context(self):
        self.process(self.snapshot(10))
        self.process(self.snapshot(11, angle=10.))
        self.planner.reset.reset_mock()
        result = self.process(self.snapshot(1, angle=30.))
        self.planner.reset.assert_called_once()
        self.assertEqual(result['world']['bodies'][0].angular_velocity, 0.)
        self.assertIsNone(result['decision'])

    def test_local_player_identity_change_discards_previous_planning_context(self):
        self.process(self.snapshot(10))
        self.planner.reset.reset_mock()
        self.player = dict(self.player, address=20, seed=2)
        result = self.process(self.snapshot(11))
        self.planner.reset.assert_called_once()
        self.assertIsNone(result['decision'])
        self.assertGreater(self.input.release_calls, 0)

    def test_invalid_frame_never_reaches_prediction_or_input(self):
        result = self.process(self.snapshot(True))
        self.assertIsNone(result['decision'])
        self.assertEqual(self.world.update.call_count, 0)
        self.assertEqual(self.input.set_calls, [])

    def test_reused_room_pointer_with_new_native_index_resets_context(self):
        self.process(self.snapshot(10,level_stage=1,room_index=84))
        self.planner.reset.reset_mock()
        result=self.process(self.snapshot(11,level_stage=1,room_index=83))
        self.planner.reset.assert_called_once()
        self.assertIsNone(result['decision'])


class NativeTerrainTests(unittest.TestCase):
    def terrain(self, stage, typ, *, with_door=False, room_clear=True):
        reader = EngineReader.__new__(EngineReader)
        reader.base = 0x400000
        reader.profile = {'frame_offset': 0x100, 'isaac_slot_rva': 0x200, 'difficulty_offset':0x300}
        reader._enums = {}
        game, isaac, room, descriptor, config, grid = (0x1000000+i*0x10000 for i in range(6))
        pointers = [0]*135
        pointers[4] = grid
        paths = [0]*135
        paths[:4] = [999, 1000, 3000, 4000]
        data = bytearray(0x40)
        struct.pack_into('<I', data, 4, 2)
        struct.pack_into('<I', data, 0x3c, 3)
        cfg = bytearray(0x4c)
        struct.pack_into('<I', cfg, 0, stage)
        struct.pack_into('<I', cfg, 8, typ)
        struct.pack_into('<I', cfg, 0x48, 1)
        memory = {game:struct.pack('<I',1), game+0x18304:struct.pack('<i',84),
                  room+0x724:bytes(32),
                  game+0x100: struct.pack('<I', 20), reader.base+0x200: struct.pack('<I', isaac),
                  game+0x300: struct.pack('<I', 1),
                  isaac+8: struct.pack('<I', 2), game+0x18300: struct.pack('<I', room),
                  room+4: struct.pack('<I', descriptor), descriptor+0x10: struct.pack('<I', config),
                  descriptor+0x44:bytes([int(room_clear)]),
                  config: bytes(cfg), room+0x24: struct.pack('<135I', *pointers),
                  room+0x76c: struct.pack('<135i', *paths), grid: bytes(data)}
        for offset in (0x264f4, 0x1d520, 0x1d654, 0x1ba78, 0x1b83c, 0x23a74):
            memory[game+offset] = b'\0'*4
        if with_door:
            address=0x1060000
            memory[room+0x724]=struct.pack('<I',address)+bytes(28)
            door=bytearray(0x398)
            for offset,value in ((4,16),(12,2),(0x24,60),(0x3c,5),(0x15c,1),(0x160,1),
                                 (0x280,9999),(0x394,83)):
                struct.pack_into('<I',door,offset,value)
            memory[address]=bytes(door)

        def read(address, size):
            for start, raw in memory.items():
                if start <= address and address+size <= start+len(raw):
                    return raw[address-start:address-start+size]
            raise ValueError('Unexpected synthetic terrain read')

        reader.read = read
        result = {'grid_width': 15, 'grid_height': 9}
        reader._room_details(result, game, room)
        return result

    def test_native_stage_35_dungeon_branch_ignores_paths_and_grid_collision(self):
        result = self.terrain(35, 16)
        self.assertTrue(all(c['collision'] == 0 for c in result['grid_cells']))
        self.assertEqual(result['grid_cells'][1]['grid_path'], 1000)
        self.assertEqual(result['room_config']['stage_id'], 35)
        self.assertEqual(result['room_config']['type'], 16)
        self.assertEqual(result['difficulty'],1)
        self.assertEqual(result['level_stage'],1)
        self.assertEqual(result['room_index'],84)

    def test_normal_room_retains_native_path_thresholds_and_grid_collision(self):
        result = self.terrain(1, 1)
        self.assertEqual([c['collision'] for c in result['grid_cells'][:5]], [0, 3, 1, 3, 3])

    def test_stage_alone_does_not_disable_collision(self):
        result = self.terrain(35, 1)
        self.assertEqual(result['grid_cells'][1]['collision'], 3)

    def test_current_native_door_target_uses_394_not_legacy_280(self):
        door=self.terrain(1,1,with_door=True)['doors'][0]
        self.assertEqual(door['target_room_index'],83)
        self.assertEqual((door['x'],door['y']),(40,280))
        self.assertEqual(door['collision'],5)

    def test_native_room_clear_bit_is_independent_of_empty_entities_or_door_presence(self):
        self.assertTrue(self.terrain(1,5)['room_clear'])
        self.assertFalse(self.terrain(1,5,room_clear=False)['room_clear'])


if __name__ == '__main__':
    unittest.main()
