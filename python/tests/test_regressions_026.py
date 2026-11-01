"""Offline regression contracts for geometric exits and fast hazard metrics."""
import math
import json
import queue
import tempfile
import unittest
from pathlib import Path
from unittest.mock import Mock

import numpy as np

from engine_search import BeamSearch, HazardAtlas
from engine_aim import EngineAim
from engine_app import ControlWorker
from planner import Body, Decision, Planner
from shot_geometry import body_blocks_segment


class EscapeDirectionTests(unittest.TestCase):
    @staticmethod
    def nodes(points):
        return [{"p": point} for point in points]

    def test_co_directional_and_wall_slide_outputs_count_once(self):
        origin = (100., 100.)
        same = [(160., 100.), (150., 104.), (140., 96.), (120., 101.)]
        self.assertEqual(BeamSearch.escape_directions(self.nodes(same), origin), 1)

        walkable = np.ones((100, 100), dtype=bool)
        walkable[:, 55:] = False
        start = (50., 50.)
        traced = []
        for direction in BeamSearch.DIRECTIONS[1:]:
            path, _, _ = BeamSearch._trace(start, (0., 0.), direction, 240., 0.,
                                           0., 1., 8, walkable)
            traced.append({"p": path[-1]})
        safe_inputs = [node for node in traced if math.dist(start, node["p"]) >= 4]
        geometric = BeamSearch.escape_directions(safe_inputs, start)
        self.assertGreater(len(safe_inputs), geometric)
        self.assertEqual(len(safe_inputs), 7)
        self.assertEqual(geometric, 5)

    def test_order_independence_and_orthogonal_opposite_separation(self):
        origin = (0., 0.)
        points = [(100., 0.), (98., 8.), (90., 18.),
                  (0., 100.), (-100., 0.), (0., -100.)]
        nodes = self.nodes(points)
        count = BeamSearch.escape_directions(nodes, origin)
        self.assertEqual(count, 4)
        self.assertEqual(BeamSearch.escape_directions(list(reversed(nodes)), origin), count)
        for seed in (3, 11, 28, 20261026):
            order = np.random.default_rng(seed).permutation(len(nodes))
            self.assertEqual(BeamSearch.escape_directions([nodes[i] for i in order], origin), count)

    def test_inertia_that_collapses_inputs_is_counted_by_actual_trace_direction(self):
        valid = np.ones((200, 200), dtype=bool)
        origin = (100., 100.)
        nodes = []
        for direction in ((0., 1.), (0., -1.), (1., 0.), (-1., 0.)):
            path, _, _ = BeamSearch._trace(origin, (3., 0.), direction, 50., .95,
                                           0., 1., 4, valid)
            nodes.append({"p": path[-1]})
        self.assertTrue(all(math.dist(origin, n["p"]) >= 4 for n in nodes))
        self.assertEqual(BeamSearch.escape_directions(nodes, origin), 1)

    def test_narrow_lane_escape_stays_selectable_and_wall_corner_is_not_banned(self):
        corridor = np.zeros((100, 100), dtype=bool)
        corridor[10:90, 47:54] = True
        search = BeamSearch()
        move, path, _ = search.choose((50., 50.), corridor,
            [Body(7, 50., 25., 0., 0., 10., "projectile")], 3., 100.,
            (0., 0.), lambda p: 0., allow_hold=False)
        self.assertEqual(move, (0, 1))
        self.assertTrue(path)
        self.assertTrue(all(corridor[int(round(y)), int(round(x))] for x, y in path))
        report = search.last_report
        self.assertGreaterEqual(report["distinct_clear_exits"], 2)
        self.assertGreaterEqual(report["safe_exit_inputs"], report["distinct_clear_exits"])

        wall = np.ones((100, 100), dtype=bool)
        wall[:, 55:] = False
        corner = BeamSearch()
        move, path, _ = corner.choose((50., 50.), wall, [], 3., 100., (0., 0.),
                                      lambda p: abs(p[1] - 80.), allow_hold=False)
        self.assertNotEqual(move, (0, 0))
        self.assertTrue(all(wall[int(round(y)), int(round(x))] for x, y in path))


class HazardAtlasParityTests(unittest.TestCase):
    @staticmethod
    def assert_metrics_match(testcase, optimized, reference):
        testcase.assertEqual(len(optimized), 7)
        testcase.assertEqual(len(reference), 7)
        for index, (actual, expected) in enumerate(zip(optimized, reference)):
            if index in (0, 1):
                np.testing.assert_array_equal(actual, expected)
            else:
                np.testing.assert_allclose(actual, expected, rtol=1e-11, atol=1e-10,
                                           equal_nan=True)

    def test_seeded_all_circle_metrics_match_reference(self):
        rng = np.random.default_rng(20261026)
        route_count, frames = 48, 14
        starts = rng.uniform([40., 40.], [560., 500.], size=(route_count, 2))
        steps = rng.normal(0., 13., size=(route_count, frames, 2))
        paths = starts[:, None, :] + np.cumsum(steps, axis=1)
        starts[0] = (0., 100.)
        paths[0] = np.column_stack((np.arange(1, frames + 1) * 20.,
                                     np.full(frames, 100.)))
        # Negative zero and stationary displacements exercise the zero-vector path.
        starts[1] = (-0., 100.)
        paths[1] = np.tile(np.array([-0., 100.]), (frames, 1))
        # Exact tangency: player radius + body radius = 10 px.
        starts[2] = (0., 0.)
        paths[2] = np.column_stack((np.arange(1, frames + 1) * 20.,
                                     np.full(frames, 10.)))
        # A trajectory body exercises interpolated observed motion.
        trajectory = tuple((300. + i * 1.5, 160. + math.sin(i / 3.) * 8.)
                           for i in range(8))
        bodies = [
            Body(1, 180., 100., -1800., 0., 2., "projectile"),  # High-speed crossing.
            Body(2, 100., 140., 0., 0., 5., "projectile", start_after=.2,
                 end_after=.36, latency_padding=1.5),
            Body(3, 100., 140., 0., 0., 5., "projectile", start_after=0.,
                 end_after=.03),  # Expired before most frames.
            Body(4, 360., 260., 0., 0., 48., "hazard", safety_buffer=76.),  # Blast reserve.
            Body(5, 240., 220., 0., 0., 18., "warning", start_after=.15,
                 end_after=.45),
            Body(6, 180., 100., 0., 0., 16., "obstacle"),
            Body(7, 300., 160., 0., 0., 7., "enemy", trajectory=trajectory,
                 latency_padding=.75),
        ]
        # Keep active start/end values sorted for the randomly generated bodies.
        start_choices = (0., .1, .25, .5)
        end_choices = (.1, .3, .6, 1.0)
        for i in range(32):
            start_after = float(rng.choice(start_choices))
            end_after = float(rng.choice([x for x in end_choices if x >= start_after]))
            bodies.append(Body(100 + i, *rng.uniform(20., 540., size=2),
                *rng.uniform(-2600., 2600., size=2), rng.uniform(0., 18.),
                "warning" if i % 7 == 0 else "obstacle" if i % 11 == 0 else
                "hazard" if i % 5 == 0 else "projectile",
                start_after=start_after, end_after=end_after,
                latency_padding=float(rng.choice([0., .5, 2.])),
                safety_buffer=float(rng.choice([0., 20., 75.])))
            )
        atlas = HazardAtlas(bodies, radius=5., horizon=40)
        optimized = atlas.measure(paths, starts, 0)
        reference = atlas.measure(paths, starts, 0, reference=True)
        self.assert_metrics_match(self, optimized, reference)
        self.assertEqual(len(atlas.bodies), len(bodies))

    def test_mixed_line_ring_and_circle_metrics_match_reference(self):
        rng = np.random.default_rng(91026)
        starts = rng.uniform(30., 260., size=(20, 2))
        paths = starts[:, None, :] + np.cumsum(rng.normal(0., 9., (20, 10, 2)), axis=1)
        starts[0] = (0., 100.)
        paths[0] = np.column_stack((np.arange(1, 11) * 20., np.full(10, 100.)))
        bodies = [
            Body(1, 100., 100., 0., 0., 3., "projectile", end=(240., 100.),
                 end_velocity=(0., 5.), latency_padding=2.),
            Body(2, 150., 150., 0., 0., 3., "hazard", ring_radius=32.,
                 ring_growth=25.),
            Body(3, 165., 100., -500., 0., 4., "enemy", start_after=.1,
                 end_after=.28),
        ]
        atlas = HazardAtlas(bodies, radius=7., horizon=40)
        optimized = atlas.measure(paths, starts, 0)
        reference = atlas.measure(paths, starts, 0, reference=True)
        self.assert_metrics_match(self, optimized, reference)


class OpaqueShotBlockerTests(unittest.TestCase):
    def setUp(self):
        self.aim = EngineAim()
        self.player = {"address": 1, "x": 100., "y": 100., "radius": 9.,
                       "stats": {"tear_range": 260.}}
        self.target = {"address": 2, "x": 200., "y": 100., "radius": 10.,
                       "vx": 0., "vy": 0.}
        self.blocker = {"address": 3, "x": 150., "y": 100., "radius": 8.}
        self.mask = np.ones((320, 360), dtype=bool)

    def tear_channel_profile(self):
        return {"weapons": [{"owner": "player", "type": 1}],
                "primary_weapon_types": [1], "attack_range": 260.,
                "projectile_speed": 300., "shooter_origin": (100., 100.)}

    def test_segment_blocker_only_between_origin_and_target(self):
        self.assertTrue(body_blocks_segment((100., 100.), (200., 100.), [self.blocker]))
        behind = {"x": 220., "y": 100., "radius": 20.}
        after_target = {"x": 150., "y": 120., "radius": 8.}
        self.assertFalse(body_blocks_segment((100., 100.), (200., 100.), [behind]))
        self.assertFalse(body_blocks_segment((100., 100.), (200., 100.), [after_target]))

    def test_tear_is_rejected_and_blocked_position_costs_more(self):
        profile = self.tear_channel_profile()
        fire = self.aim.choose(profile, self.player, [self.target], self.mask,
                               [(100., 100.)], 2, [self.blocker])
        self.assertIsNone(fire)
        self.assertEqual(self.aim.last_report["no_fire_reason"], "no_predicted_hit")
        self.assertGreater(self.aim.last_report["rejections"]["body_blocker"], 0)

        clear_cost = EngineAim.position_cost(profile, self.player, [self.target],
                                             (100., 100.), 2, blockers=())
        blocked_cost = EngineAim.position_cost(profile, self.player, [self.target],
                                               (100., 100.), 2, blockers=[self.blocker])
        side_clear = EngineAim.position_cost(profile, self.player, [self.target],
                                             (100., 125.), 2, blockers=())
        side_blockers = EngineAim.position_cost(profile, self.player, [self.target],
                                                (100., 125.), 2, blockers=[self.blocker])
        self.assertGreater(blocked_cost, clear_cost)
        self.assertAlmostEqual(side_blockers, side_clear, places=10)

    def test_beam_weapons_ignore_ordinary_body_occlusion(self):
        for kind in (2, 3):  # Brimstone and Tech laser channels pass bodies.
            with self.subTest(weapon_type=kind):
                profile = {"weapons": [{"owner": "player", "type": kind}],
                           "primary_weapon_types": [kind], "attack_range": 260.,
                           "projectile_speed": 300., "shooter_origin": (100., 100.)}
                fire = self.aim.choose(profile, self.player, [self.target], self.mask,
                                       [(100., 100.)], 2, [self.blocker])
                self.assertEqual(fire, "right")
                self.assertIsNone(self.aim.last_report["no_fire_reason"])
                with_blocker = EngineAim.position_cost(profile, self.player, [self.target],
                    (100., 100.), 2, blockers=[self.blocker])
                without_blocker = EngineAim.position_cost(profile, self.player, [self.target],
                    (100., 100.), 2, blockers=())
                self.assertAlmostEqual(with_blocker, without_blocker, places=10)

    def test_navigation_does_not_seed_behind_stoney_on_same_shot_line(self):
        planner = Planner()
        walkable = np.ones((240, 360), dtype=bool)
        target = Body(2, 200., 100., 0., 0., 10., "enemy")
        valid = planner._valid_centers(walkable, 0.)
        empty_shot_mask = walkable.copy()
        baseline = planner._navigation_field(valid, empty_shot_mask, target, 260., (0., 0.), ())
        blocked = planner._navigation_field(valid, empty_shot_mask, target, 260., (0., 0.),
                                            [{**self.blocker, "type": 302}])
        seed_position = (110., 90.)
        self.assertTrue(np.isfinite(planner._nav_cost(baseline, seed_position)))
        # The cell can still be reached from a nearby valid firing lane; its
        # value must lose the zero-cost seed status behind the blocker.
        self.assertGreater(planner._nav_cost(blocked, seed_position),
                           planner._nav_cost(baseline, seed_position))

    class InputStub:
        def __init__(self):
            self._held = set()

        def set_keys(self, keys):
            self._held = set(keys)

        def release_all(self):
            self._held.clear()

        def close(self):
            self._held.clear()

    class WorldStub:
        def __init__(self, data):
            self.data = data

        def update(self, snapshot, player):
            return self.data

        def reset(self):
            pass

    class PlannerProbe:
        def __init__(self):
            self.kwargs = None

        def decide(self, *args, **kwargs):
            self.kwargs = kwargs
            self.attack_cost_at_start = kwargs["attack_cost"]((50., 60.), 77)
            return Decision((0, 0), None, 77, [(50., 60.)], 0.)

        def reset(self):
            pass

    def test_app_passes_opaque_blockers_into_planner_and_aim(self):
        blocker = {"address": 88, "type": 302, "x": 100., "y": 60., "radius": 9.}
        target = {"address": 77, "type": 10, "x": 150., "y": 60., "radius": 10.,
                  "health": 10., "collision_class": 1, "collision_damage": 1}
        world = {"walkable": np.ones((180, 240), dtype=bool),
                 "shot_walkable": np.ones((180, 240), dtype=bool),
                 "bodies": [Body(77, 150., 60., 0., 0., 10., "enemy"),
                            Body(88, 100., 60., 0., 0., 9., "obstacle")],
                 "targets": [target], "shot_blockers": [blocker],
                 "player_position": (50., 60.), "player_radius": 9.}
        temp = tempfile.TemporaryDirectory()
        planner = self.PlannerProbe()
        worker = ControlWorker(queue.Queue(), window=Mock(), input_controller=self.InputStub(),
            reader_factory=Mock(), world=self.WorldStub(world), planner=planner, log_dir=Path(temp.name))
        worker.enabled = True
        worker.last_frame = 10
        player = {"address": 10, "seed": 1, "x": 50., "y": 60., "vx": 0., "vy": 0.,
                  "character": "Isaac", "radius": 9., "health_parts": {"red": 6},
                  "damage_cooldown": 0, "collectibles": {},
                  "stats": {"move_speed": .7, "shot_speed": 1., "tear_range": 260.,
                            "max_fire_delay": 10., "can_fly": False, "can_shoot": True},
                  "weapons": [{"type": 1, "owner": 10, "charge": 0., "max_charge": 0.,
                               "fire_delay": 0., "max_fire_delay": 10., "num_fired": 0,
                               "main_entity": 0, "slot": 1}]}
        snapshot = {"complete": True, "frame": 11, "room": 1, "paused": False,
                    "transitional": False, "local_player": player, "entities": [target, blocker],
                    "grid_cells": [], "grid_width": 15, "grid_height": 9}
        try:
            result = worker.process_snapshot(snapshot, foreground=True, dt=1 / 30)
            worker.diagnostics.close()
            self.assertEqual(planner.kwargs["shot_blockers"], [blocker])
            self.assertGreater(planner.attack_cost_at_start, 0.)
            self.assertIsNone(result["decision"].fire)
            self.assertGreater(worker.aim.last_report["rejections"]["body_blocker"], 0)
            engine_log = [json.loads(line) for line in
                          (Path(temp.name) / "engine.jsonl").read_text(encoding="utf-8").splitlines()]
            self.assertGreater(engine_log[-1]["aim"]["rejections"]["body_blocker"], 0)
        finally:
            worker.diagnostics.close()
            temp.cleanup()


if __name__ == "__main__":
    unittest.main()
