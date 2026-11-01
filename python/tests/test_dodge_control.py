"""Exercise the real dodge planner and worker without sending game input."""
from pathlib import Path
import queue
import tempfile
import unittest

import numpy

from engine_app import ControlWorker
from engine_diagnostics import EngineDiagnostics
from engine_kiting import KiteController
from engine_search import HazardAtlas
from planner import Body


class RecordingInput:
    requires_foreground = True

    def __init__(self):
        self._held = set()
        self.sent = []

    def set_keys(self, keys):
        self._held = set(keys)
        self.sent.append(set(keys))

    def release_all(self):
        self._held.clear()

    def close(self):
        self.release_all()


class DodgeControlTests(unittest.TestCase):
    def snapshot(self, entities):
        return {
            'complete': True, 'frame': 30, 'room': 1, 'entities': entities,
            'grid_cells': [], 'grid_width': 15, 'grid_height': 9,
            'local_player': {
                'address': 1, 'x': 320., 'y': 280., 'vx': 0., 'vy': 0., 'radius': 9.,
                'stats': {'move_speed': 1., 'can_fly': False, 'can_shoot': True,
                          'shot_speed': 1., 'damage': 3.5, 'tear_range': 260., 'max_fire_delay': 10.},
                'collectibles': {}, 'weapons': [{'type': 1, 'owner': 1, 'slot': 1,
                                                'charge': 0., 'max_fire_delay': 10., 'num_fired': 0}],
            },
        }

    def test_projectile_without_enemy_still_triggers_movement_only_evasion(self):
        with tempfile.TemporaryDirectory() as directory:
            recorded = RecordingInput()
            worker = ControlWorker(queue.Queue(), window=object(), input_controller=recorded,
                                   log_dir=Path(directory), dodge_only=True)
            worker.enabled = True
            worker.synchronous_test = True
            try:
                snapshot = self.snapshot([{
                    'type': 9, 'variant': 0, 'subtype': 0, 'address': 2, 'seed': 2,
                    'x': 370., 'y': 280., 'vx': -6., 'vy': 0., 'radius': 5.,
                    'collision_class': 1, 'collision_damage': 1.,
                }])
                worker.process_snapshot(snapshot, foreground=True, dt=1/30)
                result = worker.process_snapshot({**snapshot, 'frame': 31}, foreground=True, dt=1/30)
                self.assertIsNotNone(result['decision'])
                self.assertNotEqual(result['decision'].move, (0, 0))
                self.assertIsNone(result['decision'].fire)
                self.assertIsNone(result['decision'].target)
                self.assertEqual(result['search']['geometry_hits'], 0)
                self.assertTrue(recorded.sent)
                self.assertTrue(recorded.sent[-1] <= {'w', 'a', 's', 'd'})
                self.assertEqual(result['search']['target_routes'], [])
            finally:
                worker.shutdown()

    def test_enemy_does_not_create_a_shooting_goal(self):
        with tempfile.TemporaryDirectory() as directory:
            recorded = RecordingInput()
            worker = ControlWorker(queue.Queue(), window=object(), input_controller=recorded,
                                   log_dir=Path(directory), dodge_only=True)
            worker.enabled = True
            worker.synchronous_test = True
            try:
                snapshot = self.snapshot([{
                    'type': 10, 'variant': 0, 'subtype': 0, 'address': 2, 'seed': 2,
                    'x': 460., 'y': 280., 'vx': 0., 'vy': 0., 'radius': 12.,
                    'health': 10., 'collision_class': 1, 'collision_damage': 1.,
                }])
                worker.process_snapshot(snapshot, foreground=True, dt=1/30)
                result = worker.process_snapshot({**snapshot, 'frame': 31}, foreground=True, dt=1/30)
                self.assertIsNotNone(result['decision'])
                self.assertIsNone(result['decision'].fire)
                self.assertIsNone(result['decision'].target)
                self.assertEqual(result['search']['target_routes'], [])
                self.assertTrue(all(keys <= {'w', 'a', 's', 'd'} for keys in recorded.sent))
            finally:
                worker.shutdown()


class AttackControlTests(unittest.TestCase):
    def test_default_worker_automatically_fires_at_a_clear_target(self):
        with tempfile.TemporaryDirectory() as directory:
            recorded = RecordingInput()
            worker = ControlWorker(queue.Queue(), window=object(), input_controller=recorded,
                                   log_dir=Path(directory))
            worker.enabled = True
            worker.synchronous_test = True
            snapshot = DodgeControlTests().snapshot([{
                'type': 10, 'variant': 0, 'subtype': 0, 'address': 2, 'seed': 2,
                'x': 460., 'y': 280., 'vx': 0., 'vy': 0., 'radius': 12.,
                'health': 10., 'collision_class': 1, 'collision_damage': 1.,
            }])
            try:
                worker.process_snapshot(snapshot, foreground=True, dt=1/30)
                result = worker.process_snapshot({**snapshot, 'frame': 31}, foreground=True, dt=1/30)
                self.assertEqual(result['decision'].fire, 'right')
                self.assertEqual(result['motion']['observation_gap_frames'], 1)
                self.assertEqual(result['search']['geometry_hits'], 0)
                self.assertIn('right', recorded.sent[-1])
                self.assertTrue(result['search']['target_routes'])
            finally:
                worker.shutdown()


class SharedPursuitPrefixTests(unittest.TestCase):
    def test_branching_paths_match_independent_pursuit_for_every_collision_metric(self):
        random = numpy.random.default_rng(657)
        start = (320., 280.)
        for base in (0, 4, 20):
            prefixes = numpy.asarray(start) + numpy.cumsum(random.normal(0, 5, (4, base, 2)), axis=1)
            prefixes = numpy.repeat(prefixes, 9, axis=0)
            origins = prefixes[:, -1] if base else numpy.tile(start, (36, 1))
            branches = origins[:, None, :] + numpy.cumsum(random.normal(0, 5, (36, 4, 2)), axis=1)
            full = numpy.concatenate((prefixes, branches), axis=1)
            for inertia in ((0., 0.), (.92, .85), (.92, 0.)):
                bodies = [Body(index, 270.+index*60, 250., 75., 20., 12., 'hazard',
                               pursuit_speed=100., pursuit_turn=.2, pursuit_inertia=value,
                               pursuit_gain=12. if value else 0., pursuit_old_weight=.68)
                          for index, value in enumerate(inertia)]
                bodies.extend((
                    Body(3, 380., 270., -60., 0., 5., 'projectile'),
                    Body(4, 290., 230., 0., 0., 4., 'hazard', end=(360., 320.)),
                    Body(5, 320., 280., 0., 0., 3., 'hazard', ring_radius=45., ring_growth=20.),
                ))
                atlas = HazardAtlas(bodies, 9.)
                actual = atlas.measure(branches, origins, base, include_geometry=True,
                                       full_paths=full, player_start=start)
                expected = atlas.measure(branches, origins, base, reference=True, include_geometry=True,
                                         full_paths=full, player_start=start)
                with self.subTest(base=base, inertia=inertia):
                    for metric, reference in zip(actual, expected):
                        numpy.testing.assert_allclose(metric, reference, rtol=1e-9, atol=1e-9)


class DamageHistoryTests(unittest.TestCase):
    def test_damage_retains_every_observed_preceding_frame(self):
        import json

        with tempfile.TemporaryDirectory() as directory:
            diagnostics = EngineDiagnostics(directory)
            player = {'address': 1, 'seed': 1, 'x': 320., 'y': 280.,
                      'health_parts': {'red': 6}, 'damage_cooldown': 0}
            for frame in range(10):
                diagnostics.record({'frame': frame, 'room': 1}, player, {}, None, {})
            diagnostics.record({'frame': 10, 'room': 1},
                               {**player, 'health_parts': {'red': 5}, 'damage_cooldown': 60}, {}, None, {})
            diagnostics.close()
            event = json.loads((Path(directory) / 'damage-events.jsonl').read_text(encoding='utf-8'))
            self.assertEqual([row['frame'] for row in event['before']], list(range(10)))
            self.assertEqual(event['current']['frame'], 10)
            self.assertEqual(diagnostics.dropped, 0)
            self.assertEqual(diagnostics.write_errors, 0)


class LazyKitingTerrainTests(unittest.TestCase):
    def test_unknown_enemy_skips_loop_build_then_known_pursuit_builds_it(self):
        valid = numpy.zeros((500, 650), bool)
        valid[150:411, 70:571] = True
        controller = KiteController()
        enemy = Body(1, 160., 200., 90., 0., 8.)
        plan, status = controller.plan(valid, [enemy], (320., 200.), 260., 240., 30)
        self.assertIsNone(plan)
        self.assertEqual(status['reason'], 'not_all_contact_enemies_have_known_local_pursuit')
        self.assertIsNone(controller.rectangles)
        pursuit = Body(1, 160., 200., 90., 0., 8., 'hazard', pursuit_speed=90.,
                       pursuit_inertia=.92, pursuit_gain=12., pursuit_old_weight=.68)
        plan, status = controller.plan(valid, [enemy, pursuit], (320., 200.), 260., 240., 31)
        self.assertIsNotNone(plan)
        self.assertTrue(controller.rectangles)
        self.assertTrue(status['active'])


if __name__ == '__main__':
    unittest.main()
