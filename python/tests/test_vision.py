import sys
from pathlib import Path
import unittest

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))
from vision import Perception, PlayerTracker, cv2


class VisionTests(unittest.TestCase):
    @staticmethod
    def textured_frame(seed=1):
        frame = np.full((180, 240, 3), 92, dtype=np.uint8)
        rng = np.random.default_rng(seed)
        patch = rng.integers(15, 245, size=(34, 33, 3), dtype=np.uint8)
        frame[60:94, 64:97] = patch
        return frame, patch

    def test_tracker_select_and_small_motion(self):
        first, patch = self.textured_frame()
        tracker = PlayerTracker()
        tracker.select(first, (80, 90))
        second = np.full_like(first, 92)
        second[62:96, 67:100] = patch
        point = tracker.update(second, 1 / 30)
        self.assertIsNotNone(point)
        self.assertAlmostEqual(point[0], 83, delta=1)
        self.assertAlmostEqual(point[1], 92, delta=1)
        self.assertGreaterEqual(tracker.confidence, .68)

    def test_tracker_rejects_flat_template(self):
        frame = np.full((100, 120, 3), 80, dtype=np.uint8)
        with self.assertRaises(ValueError):
            PlayerTracker().select(frame, (60, 65))

    def test_tracker_loss_is_unreliable(self):
        first, _ = self.textured_frame()
        tracker = PlayerTracker()
        tracker.select(first, (80, 90))
        missing = np.random.default_rng(44).integers(160, 250, size=first.shape, dtype=np.uint8)
        self.assertIsNone(tracker.update(missing, 1 / 30))
        self.assertLess(tracker.confidence, .68)
        self.assertEqual(tracker.misses, 1)

    def test_perception_stops_on_large_scene_change(self):
        perception = Perception()
        perception.self_tracker.position = np.array((80., 80.), dtype=np.float32)
        perception.previous = np.random.default_rng(1).integers(15, 90, (100, 140), dtype=np.uint8)
        changed = np.random.default_rng(2).integers(160, 250, (100, 140, 3), dtype=np.uint8)
        player, bodies = perception.update(changed, 1 / 30)
        self.assertIsNone(player)
        self.assertEqual(bodies, [])
        self.assertTrue(perception.scene_changed)
        self.assertIsNone(perception.self_tracker.position)

    def test_fixed_red_projectile_after_background_learning(self):
        h, w = 240, 320
        perception = Perception()
        perception.bounds = (10, 10, 310, 230)
        perception.self_tracker.update = lambda frame, dt: (160., 170.)
        perception.self_tracker.confidence = .95
        perception._terrain = lambda frame, player: np.ones((h, w), dtype=bool)
        base = np.random.default_rng(6).integers(75, 110, (h, w, 3), dtype=np.uint8)
        for _ in range(18):
            perception.update(base, 1 / 30)
        self.assertEqual(perception.frame_count, 18)
        with_bullet = base.copy()
        with_bullet[98:108, 207:217] = (0, 0, 255)
        perception.update(with_bullet, 1 / 30)
        _, bodies = perception.update(with_bullet, 1 / 30)
        self.assertTrue(any(body.kind == "projectile" for body in bodies), bodies)

    def test_possible_friendly_requires_direction_confirmation(self):
        perception = Perception()
        perception.note_fire("right", (100., 100.))
        first = perception._associate([(120., 90., 4., "projectile")], .05, (100., 100.))
        self.assertEqual(first, [])
        self.assertEqual(perception.tracks[0].kind, "possible_friendly")
        second = perception._associate([(128., 90., 4., "projectile")], .05, (100., 100.))
        self.assertEqual(second, [])
        self.assertEqual(perception.tracks[0].kind, "friendly")

    def test_blocker_remains_blocked_under_player_fill(self):
        perception = Perception()
        frame = np.full((180, 200, 3), 90, dtype=np.uint8)
        perception.bounds = (10, 10, 190, 170)
        lab = cv2.cvtColor(frame, cv2.COLOR_BGR2LAB).astype(np.float32)
        perception.floor_color = np.median(lab[20:30, 20:30], axis=(0, 1))
        perception.blockers = [(70, 70, 90, 90)]
        walkable = perception._terrain(frame, (80, 80))
        self.assertFalse(walkable[80, 80])
        self.assertFalse(walkable[75, 75])
        self.assertTrue(walkable[100, 100])


if __name__ == "__main__":
    unittest.main()
