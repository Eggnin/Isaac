import importlib.util
from pathlib import Path
import queue
import sys
import unittest
from unittest.mock import Mock

import numpy as np

from planner import Body, Decision

MODULE_PATH = (Path(__file__).resolve().parents[1]/'src'/'engine_app.py')
sys.path.insert(0, str(MODULE_PATH.parent))
spec = importlib.util.spec_from_file_location("engine_app", MODULE_PATH)
engine_app = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = engine_app
spec.loader.exec_module(engine_app)


class FakeInput:
    def __init__(self):
        self.set_calls = []
        self.release_calls = 0
        self.close_calls = 0

    def set_keys(self, keys):
        self.set_calls.append(set(keys))

    def release_all(self):
        self.release_calls += 1

    def close(self):
        self.close_calls += 1


class FakeWorld:
    def __init__(self, data=None):
        self.data = data or {"walkable": object(), "shot_walkable": object(),
                             "bodies": [], "targets": [],
                             "player_position": (50.0, 60.0), "player_radius": 9.0}
        self.calls = []

    def update(self, snapshot, player):
        self.calls.append((snapshot, player))
        return self.data

    def reset(self):
        pass


class FakePlanner:
    def __init__(self):
        self.kwargs = None

    def decide(self, *args, **kwargs):
        self.kwargs = kwargs
        return Decision((1, 0), "up", 77, [(50, 60)], 0.0)


class FakeWeaponController:
    def __init__(self):
        self.calls = []
        self.reset_calls = 0

    def update(self, profile, fire, target_present, dt):
        self.calls.append((profile, fire, target_present, dt))
        return {"right"}

    def reset(self):
        self.reset_calls += 1


class EngineAppWorkerTests(unittest.TestCase):
    def make_worker(self, *, world=None, planner=None, weapons=None):
        fake_input = FakeInput()
        worker = engine_app.ControlWorker(
            queue.Queue(), window=Mock(), input_controller=fake_input,
            reader_factory=Mock(), world=world or FakeWorld(),
            planner=planner or FakePlanner(), weapon_controller=weapons or FakeWeaponController(),
            log_dir=Path("unused-test-log-path"))
        worker._log = Mock()
        worker._error_log = Mock()
        worker._save_first_snapshot = Mock()
        return worker, fake_input

    @staticmethod
    def snapshot(player=None, *, frame=11, paused=False, transitional=False, entities=None):
        return {"complete": True, "frame": frame, "room": 1,
                "paused": paused, "transitional": transitional,
                "local_player": player, "entities": entities or [],
                "grid_cells": [], "grid_width": 15, "grid_height": 9}

    @staticmethod
    def player_record(can_shoot=True):
        return {"address": 10, "x": 50.0, "y": 60.0, "vx": 0.0, "vy": 0.0,
                "character": "Isaac", "radius": 9.0,
                "stats": {"can_shoot": can_shoot, "move_speed": 0.7,
                          "shot_speed": 1.2, "damage": 3.5, "tear_range": 260.0,
                          "max_fire_delay": 10.0, "can_fly": False},
                "collectibles": {},
                "weapons": [{"type": 1, "owner": 10, "charge": 0.0,
                             "max_charge": 0.0, "fire_delay": 0.0,
                             "max_fire_delay": 10.0, "num_fired": 0,
                             "main_entity": 0, "slot": 1}]}

    def test_pause_releases_without_turning_off_user_toggle(self):
        worker, fake_input = self.make_worker()
        worker.set_enabled(True)
        fake_input.release_calls = 0
        worker.last_frame = 10
        result = worker.process_snapshot(self.snapshot(self.player_record(), frame=11, paused=True),
                                         foreground=True, dt=1 / 30)
        self.assertTrue(worker.enabled)
        self.assertEqual(fake_input.set_calls, [])
        self.assertEqual(fake_input.release_calls, 1)
        self.assertIn("暂停", result["status"])

    def test_focus_loss_temporarily_releases_but_keeps_enabled(self):
        world_data = {"walkable": object(), "shot_walkable": object(), "bodies": [],
                      "targets": [], "player_position": (50.0, 60.0), "player_radius": 9.0}
        worker, fake_input = self.make_worker(world=FakeWorld(world_data))
        worker.set_enabled(True)
        fake_input.release_calls = 0
        worker.last_frame = 10
        result = worker.process_snapshot(self.snapshot(self.player_record(), frame=11),
                                         foreground=False, dt=1 / 30)
        self.assertTrue(worker.enabled)
        self.assertEqual(fake_input.set_calls, [])
        self.assertEqual(fake_input.release_calls, 1)
        self.assertIn("失焦", result["status"])

    def test_empty_room_releases_and_does_not_move_through_door(self):
        world_data = {"walkable": object(), "shot_walkable": object(), "bodies": [],
                      "targets": [], "player_position": (50.0, 60.0), "player_radius": 9.0}
        worker, fake_input = self.make_worker(world=FakeWorld(world_data))
        worker.set_enabled(True)
        fake_input.release_calls = 0
        worker.last_frame = 10
        result = worker.process_snapshot(self.snapshot(self.player_record(), frame=11),
                                         foreground=True, dt=1 / 30)
        self.assertTrue(worker.enabled)
        self.assertEqual(fake_input.set_calls, [])
        self.assertEqual(fake_input.release_calls, 1)
        self.assertIn("无目标与弹幕", result["status"])

    def test_profile_and_planner_parameters_are_read_automatically(self):
        targets = [{"address": 77, "type": 10, "health": 20.0,
                    "x": 150.0, "y": 60.0, "radius": 10.0}]
        bodies = [Body(77, 150, 60, 0, 0, 10, "enemy")]
        world_data = {"walkable": object(), "shot_walkable": np.ones((240, 360), dtype=bool), "bodies": bodies,
                      "targets": targets, "player_position": (50.0, 60.0), "player_radius": 8.0}
        planner = FakePlanner()
        weapons = FakeWeaponController()
        worker, fake_input = self.make_worker(world=FakeWorld(world_data), planner=planner, weapons=weapons)
        worker.set_enabled(True)
        fake_input.release_calls = 0
        worker.last_frame = 10
        player = self.player_record()
        result = worker.process_snapshot(self.snapshot(player, frame=11, entities=targets),
                                         foreground=True, dt=1 / 30)
        self.assertEqual(result["profile"]["weapons"][0]["name"], "tears")
        self.assertAlmostEqual(planner.kwargs["speed"], 0.7 * 5.4 * 30)
        self.assertAlmostEqual(planner.kwargs["projectile_speed"], 360.0)
        self.assertEqual(planner.kwargs["shooter_origin"], (50.0, 60.0))
        target_info = planner.kwargs["target_info"][77]
        self.assertEqual(target_info["address"], 77)
        self.assertEqual(target_info["health"], 20.0)
        self.assertEqual(target_info["incoming_damage"], 0.0)
        self.assertEqual(target_info["player_damage"], 3.5)
        self.assertEqual(fake_input.set_calls, [{"d", "right"}])
        self.assertTrue(weapons.calls[0][2])

    def test_background_backend_controls_without_claiming_window_is_foreground(self):
        target={'address':77,'type':10,'health':20.,'x':150.,'y':60.,'radius':10.}
        world={'walkable':object(),'shot_walkable':np.ones((240,360),dtype=bool),
               'bodies':[Body(77,150,60,0,0,10,'enemy')],'targets':[target],
               'player_position':(50.,60.),'player_radius':8.}
        worker,controller=self.make_worker(world=FakeWorld(world))
        controller.requires_foreground=False;worker.set_enabled(True);worker.last_frame=10
        result=worker.process_snapshot(self.snapshot(self.player_record(),entities=[target]),foreground=False,dt=1/30)
        self.assertFalse(result['foreground']);self.assertTrue(result['control_available'])
        self.assertFalse(result['dry_control'])
        self.assertEqual(controller.set_calls,[{'d','right'}])
        controller.set_calls.clear()
        worker.process_snapshot(self.snapshot(self.player_record(),frame=12,paused=True),foreground=False,dt=1/30)
        self.assertFalse(controller.set_calls)

    def test_shutdown_releases_and_closes_input(self):
        worker, fake_input = self.make_worker()
        worker.enabled = True
        worker.shutdown()
        self.assertGreaterEqual(fake_input.release_calls, 1)
        self.assertEqual(fake_input.close_calls, 1)
        self.assertFalse(worker.enabled)


if __name__ == "__main__":
    unittest.main()
