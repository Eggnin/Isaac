import importlib.util
from pathlib import Path
import sys
import unittest

import numpy as np

MODULE_PATH = (Path(__file__).resolve().parents[1]/'src'/'planner.py')
spec = importlib.util.spec_from_file_location("planner", MODULE_PATH)
planner = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = planner
spec.loader.exec_module(planner)
Body, Planner = planner.Body, planner.Planner


class PlannerTests(unittest.TestCase):
    def test_fast_projectile_crossing_between_samples_is_detected(self):
        crossing=Body(4,0,50,5000,0,2,'projectile')
        self.assertGreater(Planner._risk([(100,50)],(100,50),(0,0),[crossing],5,.04),100)
        expired=Body(4,0,50,5000,0,2,'projectile',end_after=.005)
        self.assertLess(Planner._risk([(100,50)],(100,50),(0,0),[expired],5,.04),1)

    def test_laser_segment_and_ring_have_hollow_geometry(self):
        beam=Body(4,10,10,0,0,2,'projectile',end=(200,10))
        ring=Body(5,100,100,0,0,2,'projectile',ring_radius=60)
        self.assertGreater(Planner._risk([(100,10)],(100,10),(0,0),[beam],5,.04),100)
        self.assertEqual(Planner._risk([(100,200)],(100,200),(0,0),[beam],5,.04),0)
        self.assertLess(Planner._risk([(100,100)],(100,100),(0,0),[ring],5,.04),3)
        self.assertGreater(Planner._risk([(160,100)],(160,100),(0,0),[ring],5,.04),100)

    def arena(self, h=180, w=320):
        return np.ones((h, w), dtype=bool)

    def test_incoming_projectile_prompts_side_step(self):
        p = Planner()
        result = p.decide((100, 90), [Body(1, 145, 90, -110, 0, 5, "projectile")],
                          self.arena(), 1 / 60, speed=140, player_radius=5)
        self.assertNotEqual(result.move, (0, 0))
        self.assertGreaterEqual(result.risk, 0)
        self.assertTrue(all(0 <= x < 240 and 0 <= y < 180 for x, y in result.path))

    def test_damage_cooldown_prioritizes_escape_and_increases_standoff(self):
        bodies = [Body(10, 145, 90, 0, 0, 10, "enemy")]
        baseline = Planner()
        baseline.decide((100, 90), bodies, self.arena(), 1 / 60, speed=100)
        baseline_report = baseline._search.last_report
        self.assertFalse(baseline_report["crowd_pressure"])

        injured = Planner()
        injured.decide((100, 90), bodies, self.arena(), 1 / 60, speed=100,
                       motion={"damage_cooldown": 60})
        injured_report = injured._search.last_report
        self.assertTrue(injured_report["injury_evasion_active"])
        self.assertEqual(injured_report["injury_cooldown_frames"], 60)
        self.assertTrue(injured_report["crowd_pressure"])
        self.assertEqual(injured_report["stand_off_clearance"],
                         baseline_report["stand_off_clearance"] + 48)

    def test_static_wall_is_not_crossed(self):
        walkable = self.arena(100, 130)
        walkable[:, 67] = False
        p = Planner()
        result = p.decide((45, 50), [Body(1, 90, 50, 0, 0, 8)], walkable,
                          1 / 60, speed=90, player_radius=4)
        self.assertTrue(all(x < 63 for x, _ in result.path))

    def test_wall_truncates_a_safe_step_instead_of_rejecting_it(self):
        walkable = self.arena(100, 130)
        walkable[:, 67] = False
        planner = Planner()
        valid = planner._valid_centers(walkable, 4)
        trace = planner._trace((45, 50), (1, 0), 90, 0.8, valid)
        self.assertIsNotNone(trace)
        self.assertGreater(max(x for x, _ in trace), 45)
        self.assertLess(max(x for x, _ in trace), 63)

    def test_walkable_center_cache_tracks_array_and_radius(self):
        planner = Planner()
        first = self.arena()
        a = planner._valid_centers(first, 4)
        self.assertIs(a, planner._valid_centers(first, 4))
        self.assertIsNot(a, planner._valid_centers(first, 5))
        self.assertIsNot(planner._valid_centers(first, 4), planner._valid_centers(self.arena(), 4))

    def test_confined_room_stays_put(self):
        walkable = np.zeros((90, 90), dtype=bool)
        walkable[35:55, 35:55] = True
        result = Planner().decide((45, 45), [], walkable, 1 / 60, speed=130, player_radius=3)
        self.assertEqual(result.move, (0, 0))
        self.assertIsNone(result.target)

    def test_empty_room_hands_control_back(self):
        result = Planner().decide((100, 80), [], self.arena(), 1 / 60)
        self.assertEqual(result.move, (0, 0))
        self.assertIsNone(result.fire)
        self.assertIsNone(result.target)

    def test_empty_room_clears_previous_movement(self):
        planner = Planner()
        planner._last_move = (1, 0)
        planner._target_id = 44
        start = (100.0, 80.0)
        result = planner.decide(start, [], self.arena(), 1 / 60)
        self.assertEqual(result.move, (0, 0))
        self.assertEqual(result.path, [start])
        self.assertEqual(planner._last_move, (0, 0))
        self.assertIsNone(planner._target_id)

    def test_far_enemy_is_a_goal_for_safe_approach(self):
        result = Planner().decide((100, 150), [Body(12, 520, 150, 0, 0, 12)],
                                  self.arena(300, 640), 1 / 60, speed=100)
        self.assertEqual(result.target, 12)
        self.assertEqual(result.move, (1, 0))

    def test_cardinal_shot_requires_alignment_and_range(self):
        p = Planner()
        aligned = p.decide((30, 45), [Body(7, 260, 45, 0, 0, 12)], self.arena(), 1 / 60)
        self.assertEqual(aligned.fire, "right")
        self.assertEqual(aligned.target, 7)
        diagonal = p.decide((30, 45), [Body(8, 130, 110, 0, 0, 8)], self.arena(), 1 / 60)
        self.assertIsNone(diagonal.fire)

    def test_valid_range_hit_works_without_close_approach(self):
        result = Planner().decide((30, 70), [Body(9, 270, 70, 0, 0, 10)],
                                  self.arena(), 1 / 60, attack_range=280)
        self.assertEqual(result.fire, "right")
        self.assertEqual(result.move, (0, 0))

    def test_wall_blocks_shot_line(self):
        walkable = self.arena(120, 220)
        walkable[:, 110] = False
        result = Planner().decide((55, 60), [Body(2, 160, 60, 0, 0, 10)],
                                  walkable, 1 / 60, player_radius=3)
        self.assertIsNone(result.fire)

    def test_escape_threats_are_advanced_to_the_horizon(self):
        threat = Body(3, 10, 20, 5, -2, 4, "projectile")
        future = Planner._future_bodies([threat], 0.8)[0]
        self.assertEqual((future.x, future.y), (14, 18.4))


if __name__ == "__main__":
    unittest.main()

