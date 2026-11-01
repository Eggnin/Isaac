import sys
from pathlib import Path
import queue
import unittest
import tempfile
import json
from unittest.mock import Mock, patch

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))
import app
from planner import Decision


class WeaponControllerTests(unittest.TestCase):
    def test_normal_and_sustain_follow_only_valid_fire(self):
        for mode in ("普通", "持续"):
            weapon = app.WeaponController(mode)
            self.assertEqual(weapon.update(None, 1 / 30), (set(), None))
            self.assertEqual(weapon.update("left", 1 / 30), ({"left"}, "left"))

    def test_charge_releases_when_ready_and_holds_tail(self):
        weapon = app.WeaponController("蓄力", charge_seconds=1.0, release_tail_seconds=0.4)
        self.assertEqual(weapon.update("right", 0.5), ({"right"}, None))
        self.assertEqual(weapon.update(None, 0.5), ({"right"}, None))
        self.assertEqual(weapon.update("right", 0.1), (set(), "right"))
        self.assertEqual(weapon.update("left", 0.2), (set(), None))
        self.assertEqual(weapon.update("left", 0.2), (set(), None))
        self.assertEqual(weapon.phase, "charging")
        self.assertEqual(weapon.update("left", 0.1), ({"left"}, None))


class WorkerSafetyTests(unittest.TestCase):
    def make_worker(self):
        controller = Mock()
        perception = Mock()
        perception.frame_count = 0
        worker = app.Worker(queue.Queue(), window=Mock(), input_controller=controller,
                            perception=perception, planner=Mock(), capture_enabled=False)
        return worker, controller, perception

    def test_f6_requires_foreground_reliable_player_and_background(self):
        worker, controller, perception = self.make_worker()
        worker.latest_foreground = True
        worker.latest_reliable = True
        perception.frame_count = 17
        self.assertFalse(worker._enable_auto())
        perception.frame_count = 18
        self.assertTrue(worker._enable_auto())
        self.assertTrue(worker.auto_enabled)
        controller.release_all.assert_not_called()

    def test_stop_auto_always_releases_and_resets(self):
        worker, controller, _ = self.make_worker()
        worker.auto_enabled = True
        worker.weapon.phase = "releasing"
        worker._stop_auto("测试停止")
        self.assertFalse(worker.auto_enabled)
        self.assertEqual(worker.weapon.phase, "charging")
        controller.release_all.assert_called_once_with()

    def test_release_error_is_visible_and_disables_control(self):
        worker, controller, perception = self.make_worker()
        controller.release_all.side_effect = RuntimeError("mock key failure")
        worker.auto_enabled = True
        worker._stop_auto("失焦")
        worker.latest_foreground = True
        worker.latest_reliable = True
        perception.frame_count = 20
        self.assertFalse(worker._enable_auto())
        self.assertIn("mock key failure", worker.last_status)
        self.assertTrue(worker.input_failed)

    def test_f7_edge_stops_without_starting_game(self):
        worker, controller, _ = self.make_worker()
        worker.auto_enabled = True
        with patch.object(app, "hotkey_pressed", side_effect=lambda vk: vk == app.VK_F7):
            worker._handle_hotkeys(None)
        self.assertFalse(worker.auto_enabled)
        controller.release_all.assert_called_once_with()

    def test_valid_planned_fire_is_recorded_as_fired(self):
        worker, controller, perception = self.make_worker()
        player = (20.0, 30.0)
        perception.update.return_value = (player, [])
        perception.self_tracker.misses = 0
        perception.self_tracker.confidence = 0.95
        perception.scene_changed = False
        perception.walkable = np.ones((80, 100), dtype=bool)
        perception.reason = "识别正常"
        perception.frame_count = 18
        decision = Decision((1, 0), "right", 7, [player], 0.0)
        worker.planner.decide.return_value = decision
        worker.auto_enabled = True
        worker.latest_foreground = True
        worker._log = Mock()
        worker._process_frame(np.zeros((80, 100, 3), dtype=np.uint8), 1 / 30, True)
        controller.set_keys.assert_called_once_with({"d", "right"})
        perception.note_fire.assert_called_once_with("right", player)

    def test_engine_probe_failure_is_saved_and_status_survives_visual_updates(self):
        worker,controller,perception=self.make_worker()
        worker.window.hwnd=123
        with tempfile.TemporaryDirectory() as folder:
            worker.log_dir=Path(folder)
            with patch.object(app,'user32',Mock()),patch.object(app,'EngineReader',side_effect=ValueError('wrong layout')):
                worker._probe_engine()
            report=json.loads((Path(folder)/'engine-probe.json').read_text(encoding='utf-8'))
            self.assertFalse(report['ok'])
            self.assertEqual(report['error'],'wrong layout')
            self.assertFalse(worker.auto_enabled)
            controller.release_all.assert_called_once_with()
            worker.latest_frame=np.zeros((80,100,3),dtype=np.uint8)
            perception.self_tracker.confidence=.9
            worker.last_status='普通视觉状态'
            worker._publish(False,0)
            messages=[]
            while not worker.updates.empty():
                messages.append(worker.updates.get_nowait())
            self.assertIn('wrong layout',messages[-1]['engine_probe_status'])


if __name__ == "__main__":
    unittest.main()
