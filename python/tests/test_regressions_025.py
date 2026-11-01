"""Offline regression contracts for the 0.2.5 safety and combat fixes."""
import json
import queue
import tempfile
import unittest
from pathlib import Path
from unittest.mock import Mock

import numpy as np

from engine_hazards import SpecialHazards
from engine_diagnostics import EngineDiagnostics
from engine_aim import EngineAim
from engine_retreat import EngineRetreat, _blocked_batch, _blocked_batch_reference
from engine_search import BeamSearch, HazardAtlas
from engine_world import EngineWorld
from planner import Body, Planner
from planner import Decision
from engine_weapons import EngineWeaponController
from engine_app import ControlWorker


class Regression025Tests(unittest.TestCase):
    def test_retreat_circle_kernel_matches_reference_for_seeded_mixed_cases(self):
        rng = np.random.default_rng(20261023)
        starts = rng.uniform(0., 300., size=(64, 2))
        ends = rng.uniform(0., 300., size=(64, 2))
        ends[:8] = starts[:8]  # Include zero-length route segments.
        starts[8], ends[8] = (0., 0.), (100., 0.)  # Exact tangent to circle 2.
        starts[9], ends[9] = (100., 100.), (260., 100.)  # Crosses line body 6.
        starts[10], ends[10] = (120., 160.), (200., 160.)  # Crosses ring 7.
        times = np.array([0., .05, .1, .2, .35, .6, .9])
        bodies = [
            Body(1, 50., 20., 0., 0., 3., "hazard", latency_padding=5.),
            # Exact tangent: player radius 2 + body radius 3 + padding 5 = 10.
            Body(2, 50., 10., 0., 0., 3., "hazard", latency_padding=5.),
            Body(3, 120., 140., 25., -8., 12., "hazard", start_after=.1,
                 end_after=.6, latency_padding=2.),
            Body(4, 80., 90., -14., 9., 7., "hazard", start_after=.2,
                 end_after=.35),
            Body(5, 190., 120., 0., 0., 6., "warning",
                 start_after=.05, end_after=.9),
            Body(6, 110., 100., 1., 2., 3., "projectile",
                 end=(250., 100.), end_velocity=(-4., 1.), latency_padding=1.),
            Body(7, 160., 160., 0., 0., 2., "hazard", ring_radius=22.,
                 ring_growth=3., latency_padding=2.),
        ]
        scenarios = [
            ("mixed lines/rings/circles", starts, ends, times, bodies, 2.),
            ("circles only", starts[:24], ends[:24], times,
             [b for b in bodies if b.end is None and b.ring_radius is None], 2.),
        ]
        # Add seeded circles with varied motion and active intervals while
        # retaining fixed, reproducible geometry.
        random_circles = []
        for i in range(24):
            random_circles.append(Body(100+i, *rng.uniform(0., 300., size=2),
                *rng.uniform(-30., 30., size=2), rng.uniform(0., 16.), "hazard",
                start_after=float(rng.choice([0., .1, .2])),
                end_after=float(rng.choice([.35, .6, .9])),
                latency_padding=float(rng.choice([0., 1., 4.])))
            )
        scenarios.append(("seeded moving circles", starts, ends, times, random_circles, 4.))
        for name, a, b, sample_times, hazards, radius in scenarios:
            with self.subTest(name=name):
                actual = _blocked_batch(a, b, sample_times, hazards, radius)
                expected = _blocked_batch_reference(a, b, sample_times, hazards, radius)
                np.testing.assert_array_equal(actual, expected)

    def test_allow_hold_false_never_reports_stationary_firing(self):
        search = BeamSearch()
        valid = np.ones((180, 240), dtype=bool)
        search.choose((100., 90.), valid, [], 5., 100., (0., 0.), lambda p: 0.,
                      allow_hold=False)
        self.assertIsNone(search.last_report["hold_reason"])
        self.assertNotEqual(search.last_report["hold_reason"], "safe_stationary_firing")

    def test_attack_alignment_can_beat_extra_stand_off(self):
        planner = Planner()
        walkable = np.ones((240, 360), dtype=bool)
        enemy = Body(7, 290., 120., 0., 0., 10., "enemy")
        result = planner.decide((90., 120.), [enemy], walkable, 1 / 30,
                                speed=180., player_radius=5., attack_range=125.)
        self.assertEqual(result.target, enemy.id)
        self.assertTrue(result.path)
        self.assertGreater(result.path[-1][0], 90.)
        self.assertLessEqual(np.linalg.norm(np.subtract(result.path[-1], (enemy.x, enemy.y))),
                             125. + enemy.radius + 15.)

    def test_obstacle_is_soft_route_cost_not_physical_danger_or_dead_end(self):
        obstacle = Body(302, 100., 100., 0., 0., 16., "obstacle")
        atlas = HazardAtlas([obstacle], radius=8., horizon=40)
        # A stationary route through the obstacle records obstruction only.
        path = np.tile(np.array([[[100., 100.]]]), (1, 4, 1))
        metrics = atlas.measure(path, np.array([[100., 100.]]), 0)
        hits, _, _, warnings, _, comfort, obstruction = (m[0] for m in metrics)
        self.assertEqual(hits, 0)
        self.assertEqual(warnings, 0.)
        self.assertEqual(comfort, 0.)
        self.assertGreater(obstruction, 0.)

        # A clear long-term route remains available around the obstacle.
        search = BeamSearch()
        valid = np.ones((220, 260), dtype=bool)
        search.choose((70., 110.), valid, [obstacle], 8., 150., (0., 0.),
                      lambda p: abs(p[0] - 200.) + abs(p[1] - 110.), allow_hold=False)
        self.assertTrue(search.last_report["predicted_safe"])

        # The same dangerous long-horizon reservation gets the same escape
        # field whether or not a soft obstacle is present in the body list.
        danger = Body(8, 130., 110., 0., 0., 12., "hazard")
        with_obstacle = EngineRetreat.prepare(valid, [danger, obstacle], 8., 150.)
        without_obstacle = EngineRetreat.prepare(valid, [danger], 8., 150.)
        self.assertIsNotNone(with_obstacle)
        self.assertIsNotNone(without_obstacle)
        self.assertEqual(with_obstacle.cost((70., 110.)), without_obstacle.cost((70., 110.)))

        snapshot = {"room": 1, "frame": 1, "grid_width": 15, "grid_height": 9,
                    "grid_cells": [], "entities": [
                        {"type": 302, "address": 302, "x": 100, "y": 100,
                         "radius": 16, "collision_class": 2, "collision_damage": 0}]}
        world = EngineWorld().update(snapshot, {"x": 70, "y": 110, "radius": 8,
                                                "stats": {"can_fly": False}})
        self.assertTrue(any(b.kind == "obstacle" for b in world["bodies"]))

    def test_explosive_npc_reserve_is_hazard_and_survives_disappearance_briefly(self):
        hazards = SpecialHazards()
        entity = {"type": 10, "variant": 0, "address": 44, "seed": 9,
                  "x": 200., "y": 180., "radius": 12., "collision_class": 1,
                  "collision_damage": 1, "health": 10.}
        base = {"room": 3, "frame": 20, "grid_width": 15, "grid_height": 9,
                "enums": {"EntityType": {"ENTITY_BOOMFLY": 10}}, "entities": [entity]}
        first = hazards.capture(base, {"x": 320, "y": 280, "stats": {}}, np.ones((560, 640), bool))
        reserves = [b for b in first if b.kind == "hazard"]
        self.assertTrue(any(b.radius >= 80 for b in reserves))
        self.assertFalse(any(b.kind == "warning" for b in reserves))
        later = dict(base, frame=21, entities=[])
        retained = hazards.capture(later, {"x": 320, "y": 280, "stats": {}}, np.ones((560, 640), bool))
        self.assertTrue(any(b.kind == "hazard" and b.radius >= 80 for b in retained))
        expired = hazards.capture(dict(base, frame=26, entities=[]),
                                  {"x": 320, "y": 280, "stats": {}}, np.ones((560, 640), bool))
        self.assertFalse(any(b.kind == "hazard" and b.radius >= 80 for b in expired))


class EngineDiagnosticsTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.logs = Path(self.temp.name)
        self.diag = EngineDiagnostics(self.logs)

    def tearDown(self):
        self.diag.close()
        self.temp.cleanup()

    @staticmethod
    def sample(frame, *, room=1, red=6, cooldown=0):
        snapshot = {"frame": frame, "room": room, "entities": [
            {"type": 10, "address": 91, "x": 210, "y": 160,
             "collision_class": 1, "collision_damage": 1, "health": 8}]}
        player = {"address": 1, "seed": 2, "x": 100, "y": 100,
                  "health_parts": {"red": red, "soul": 0, "bone": 0},
                  "damage_cooldown": cooldown}
        world = {"bodies": [Body(91, 210, 160, 0, 0, 12, "enemy")],
                 "targets": [{"address": 91, "type": 10, "x": 210,
                              "y": 160, "health": 8}]}
        return snapshot, player, world

    def record(self, frame, **kw):
        self.diag.record(*self.sample(frame, **kw), decision=None,
                         context={"aim": {"no_fire_reason": "test"},
                                  "search": {"predicted_safe": True},
                                  "weapon_control": {"held_keys": []},
                                  "status": "dry", "enabled": False, "keys": []})

    def test_damage_event_keeps_prior_frames_and_unknown_attribution(self):
        self.record(1)
        self.record(2, red=5, cooldown=20)
        self.diag.close()
        event = json.loads((self.logs / "damage-context.json").read_text(encoding="utf-8"))
        self.assertEqual(event["events"], ["health_decrease", "damage_cooldown_started"])
        self.assertEqual(event["source_attribution"], "unknown; observed health/cooldown only")
        self.assertEqual([x["frame"] for x in event["before"]], [1])
        self.assertEqual(event["current"]["frame"], 2)

    def test_cooldown_start_is_logged_as_observation(self):
        self.record(1, red=6, cooldown=0)
        self.record(2, red=6, cooldown=12)
        self.diag.close()
        event = json.loads((self.logs / "damage-context.json").read_text(encoding="utf-8"))
        self.assertEqual(event["events"], ["damage_cooldown_started"])

    def test_unchanged_health_and_cooldown_do_not_create_damage_report(self):
        self.record(1)
        self.record(7)
        self.diag.close()
        self.assertFalse((self.logs / "damage-context.json").exists())
        combat = (self.logs / "combat.jsonl").read_text(encoding="utf-8").splitlines()
        self.assertEqual([json.loads(line)["frame"] for line in combat], [1, 7])

    def test_repeated_engine_frame_does_not_duplicate_damage_event(self):
        self.record(1, red=6)
        self.record(1, red=5, cooldown=10)
        self.record(2, red=5, cooldown=10)
        self.diag.close()
        events = (self.logs / "damage-events.jsonl").read_text(encoding="utf-8").splitlines()
        self.assertEqual(len(events), 1)
        self.assertEqual(json.loads(events[0])["current"]["frame"], 2)

    def test_room_change_resets_history_and_close_flushes_context(self):
        self.record(1, room=1, red=6)
        self.record(2, room=1, red=5)
        self.record(3, room=2, red=5)
        self.record(4, room=2, red=4)
        self.diag.close()
        events = [json.loads(line) for line in
                  (self.logs / "damage-events.jsonl").read_text(encoding="utf-8").splitlines()]
        self.assertEqual(len(events), 2)
        latest = events[-1]
        self.assertEqual(latest["current"]["room"], 2)
        self.assertEqual([x["room"] for x in latest["before"]], [2])
        self.assertEqual(latest["current"]["context"]["aim"]["no_fire_reason"], "test")
        combat = [json.loads(line) for line in
                  (self.logs / "combat.jsonl").read_text(encoding="utf-8").splitlines()]
        self.assertTrue(any(item["room"] == 2 and item["frame"] == 4 for item in combat))

    def test_unwritable_log_directory_does_not_raise_from_record(self):
        self.diag.close()
        blocker = self.logs / "ordinary-file"
        blocker.write_text("not a directory", encoding="utf-8")
        diag = EngineDiagnostics(blocker)
        try:
            snapshot, player, world = self.sample(1)
            diag.record(snapshot, player, world, None, {"aim": {}, "keys": []})
            diag.close()
            self.assertGreater(diag.write_errors, 0)
        finally:
            diag.close()


class EngineAimReportTests(unittest.TestCase):
    def setUp(self):
        self.aim = EngineAim()
        self.mask = np.ones((520, 520), dtype=bool)
        self.player = {"x": 100., "y": 100., "radius": 9.,
                       "stats": {"tear_range": 100.}}
        self.profile = {"weapons": [{"owner": "player", "type": 1}],
                        "attack_range": 100., "projectile_speed": 300.,
                        "shooter_origin": (100., 100.)}

    def test_out_of_range_target_is_reported(self):
        target = {"address": 2, "x": 230., "y": 100., "radius": 10.}
        self.assertIsNone(self.aim.choose(self.profile, self.player, [target], self.mask,
                                          [(100., 100.)], 2))
        self.assertEqual(self.aim.last_report["no_fire_reason"], "no_predicted_hit")
        self.assertGreater(self.aim.last_report["rejections"]["out_of_range"], 0)

    def test_safe_hit_reports_direction_and_score(self):
        target = {"address": 2, "x": 150., "y": 100., "radius": 10.}
        self.assertEqual(self.aim.choose(self.profile, self.player, [target], self.mask,
                                         [(100., 100.)], 2), "right")
        self.assertIsNone(self.aim.last_report["no_fire_reason"])
        self.assertTrue(any(x["direction"] == "right" and x["hits"] == 1
                            for x in self.aim.last_report["direction_scores"]))

    def test_close_explosive_target_is_intercepted_and_explained(self):
        profile = {**self.profile, "explosive": True}
        target = {"address": 2, "x": 150., "y": 100., "radius": 10., "blast_radius": 80.}
        self.assertIsNone(self.aim.choose(profile, self.player, [target], self.mask,
                                          [(100., 100.)], 2))
        self.assertEqual(self.aim.last_report["no_fire_reason"], "explosion_risk")
        self.assertGreater(self.aim.last_report["rejections"]["explosion_risk"], 0)


class EngineControlDiagnosticIntegrationTests(unittest.TestCase):
    class InputStub:
        def __init__(self):
            self._held = set()
            self.calls = []

        def set_keys(self, keys):
            self._held = set(keys)
            self.calls.append(set(keys))

        def release_all(self):
            self._held.clear()

        def close(self):
            self._held.clear()

    class WorldStub:
        def __init__(self, world):
            self.data = world

        def update(self, snapshot, player):
            return self.data

        def reset(self):
            pass

    class PlannerStub:
        def decide(self, *args, **kwargs):
            return Decision((0, 0), None, 77, [(50., 60.)], 0.)

        def reset(self):
            pass

    @staticmethod
    def player_record():
        return {"address": 10, "seed": 1, "x": 50., "y": 60., "vx": 0., "vy": 0.,
                "character": "Isaac", "radius": 9.,
                "stats": {"move_speed": .7, "shot_speed": 1., "tear_range": 260.,
                          "max_fire_delay": 10., "can_fly": False, "can_shoot": True},
                "health_parts": {"red": 6, "soul": 0, "bone": 0},
                "damage_cooldown": 0, "collectibles": {},
                "weapons": [{"type": 1, "owner": 10, "charge": 0., "max_charge": 0.,
                             "fire_delay": 0., "max_fire_delay": 10., "num_fired": 0,
                             "main_entity": 0, "slot": 1}]}

    def run_case(self, target_x):
        temp = tempfile.TemporaryDirectory()
        inputs = self.InputStub()
        target = {"address": 77, "type": 10, "variant": 0, "x": target_x,
                  "y": 60., "radius": 10., "health": 10., "collision_class": 1,
                  "collision_damage": 1}
        world = {"walkable": np.ones((240, 360), dtype=bool),
                 "shot_walkable": np.ones((240, 360), dtype=bool),
                 "bodies": [Body(77, target_x, 60., 0., 0., 10., "enemy")],
                 "targets": [target], "shot_blockers": [],
                 "player_position": (50., 60.), "player_radius": 9.}
        worker = ControlWorker(queue.Queue(), window=Mock(),
                               input_controller=inputs, reader_factory=Mock(),
                               world=self.WorldStub(world), planner=self.PlannerStub(),
                               weapon_controller=EngineWeaponController(), log_dir=Path(temp.name))
        worker.enabled = True
        worker.last_frame = 10
        snapshot = {"complete": True, "frame": 11, "room": 1, "paused": False,
                    "transitional": False, "local_player": self.player_record(),
                    "entities": [target], "grid_cells": [], "grid_width": 15,
                    "grid_height": 9}
        try:
            update = worker.process_snapshot(snapshot, foreground=True, dt=1 / 30)
            worker.diagnostics.close()
            records = [json.loads(line) for line in
                       (Path(temp.name) / "combat.jsonl").read_text(encoding="utf-8").splitlines()]
            engine_records = [json.loads(line) for line in
                              (Path(temp.name) / "engine.jsonl").read_text(encoding="utf-8").splitlines()]
            return temp, inputs, update, records[-1], engine_records[-1]
        except Exception:
            worker.diagnostics.close()
            temp.cleanup()
            raise

    def test_process_snapshot_logs_normal_attack_and_held_keys(self):
        temp, inputs, update, record, engine_record = self.run_case(150.)
        try:
            self.assertEqual(update["decision"].fire, "right")
            self.assertEqual(record["context"]["weapon_control"]["reason"], "normal_attack")
            self.assertEqual(record["context"]["weapon_control"]["keys"], ["right"])
            self.assertEqual(record["context"]["aim"]["direction"], "right")
            self.assertEqual(record["context"]["keys"], ["right"])
            self.assertEqual(engine_record["aim"]["direction"], "right")
            self.assertEqual(engine_record["weapon_control"]["reason"], "normal_attack")
            self.assertEqual(inputs.calls, [{"right"}])
        finally:
            temp.cleanup()

    def test_process_snapshot_logs_no_safe_aim_and_empty_attack_keys(self):
        temp, inputs, update, record, engine_record = self.run_case(500.)
        try:
            self.assertIsNone(update["decision"].fire)
            self.assertEqual(record["context"]["aim"]["no_fire_reason"], "no_predicted_hit")
            self.assertGreater(record["context"]["aim"]["rejections"]["out_of_range"], 0)
            self.assertEqual(record["context"]["weapon_control"]["reason"], "no_safe_aim")
            self.assertEqual(record["context"]["weapon_control"]["keys"], [])
            self.assertEqual(engine_record["aim"]["no_fire_reason"], "no_predicted_hit")
            self.assertEqual(engine_record["weapon_control"]["reason"], "no_safe_aim")
            self.assertEqual(inputs.calls, [set()])
        finally:
            temp.cleanup()


if __name__ == "__main__":
    unittest.main()
