"""Offline regression coverage for 0.2.7 motion calibration and safety guidance."""
import math
import queue
import tempfile
import unittest
from pathlib import Path
from unittest.mock import Mock

import numpy as np
from unittest.mock import Mock

from engine_motion import EngineMotion
from engine_retreat import EngineRetreat
from engine_world import EngineWorld
from engine_app import ControlWorker
from planner import Body


def snapshot(frame, entity):
    return {"frame": frame, "room": 17, "entities": [dict(entity)]}


def entity(*, address=0x1234, seed=91, typ=10, variant=0, x=100., y=100.,
           vx=4., vy=0., radius=5., collision_damage=1.):
    return {"address": address, "seed": seed, "type": typ, "variant": variant,
            "x": x, "y": y, "vx": vx, "vy": vy, "radius": radius,
            "collision_damage": collision_damage}


class PositionScaleCalibrationTests(unittest.TestCase):
    def test_scale_one_and_two_calibrate_across_frame_gaps_two_through_six(self):
        for scale in (1., 2.):
            with self.subTest(scale=scale):
                fitter = EngineMotion()
                e = entity()
                frame = 0
                pos = 100.
                models = None
                fitter.update(snapshot(frame, entity(x=pos)), {"x": 0, "y": 0}, nominal_speed=4.)
                for gap in (2, 3, 4, 5, 6):
                    frame += gap
                    pos += 4. * scale * gap
                    models = fitter.update(snapshot(frame, entity(x=pos)),
                                           {"x": 0, "y": 0}, nominal_speed=4.)["models"]
                model = models[0x1234]
                self.assertTrue(model["scale_observed"])
                self.assertEqual(model["scale_samples"], 5)
                self.assertAlmostEqual(model["position_scale"], scale, places=6)
                self.assertAlmostEqual(model["velocity"][0], 4. * scale * 30., places=6)

    def test_reversing_and_lateral_position_jumps_do_not_calibrate(self):
        for destination in ((84., 100.), (100., 116.)):
            with self.subTest(destination=destination):
                fitter = EngineMotion()
                fitter.update(snapshot(0, entity(x=100., y=100.)), {}, nominal_speed=4.)
                result = fitter.update(snapshot(2, entity(x=destination[0], y=destination[1])),
                                       {}, nominal_speed=4.)
                model = result["models"][0x1234]
                self.assertEqual(model["scale_samples"], 0)
                self.assertFalse(model["scale_observed"])
                self.assertEqual(model["position_scale"], 1.)

    def test_duplicate_frame_does_not_add_calibration_confidence(self):
        fitter = EngineMotion()
        fitter.update(snapshot(0, entity(x=100.)), {}, nominal_speed=4.)
        result = fitter.update(snapshot(2, entity(x=116.)), {}, nominal_speed=4.)
        self.assertEqual(result["models"][0x1234]["scale_samples"], 1)
        duplicate = fitter.update(snapshot(2, entity(x=116.)), {}, nominal_speed=4.)
        self.assertEqual(duplicate["models"][0x1234]["scale_samples"], 1)

    def test_reused_address_with_changed_identity_restarts_calibration(self):
        fitter = EngineMotion()
        fitter.update(snapshot(0, entity(x=100.)), {}, nominal_speed=4.)
        for frame, x in ((1, 108.), (2, 116.), (3, 124.)):
            result = fitter.update(snapshot(frame, entity(x=x)), {}, nominal_speed=4.)
        self.assertTrue(result["models"][0x1234]["scale_observed"])
        changed = entity(seed=92, x=132.)
        result = fitter.update(snapshot(4, changed), {}, nominal_speed=4.)
        self.assertEqual(result["models"][0x1234]["scale_samples"], 0)
        self.assertFalse(result["models"][0x1234]["scale_observed"])
        self.assertEqual(result["models"][0x1234]["position_scale"], 1.)
        changed = entity(seed=92, x=140.)
        result = fitter.update(snapshot(5, changed), {}, nominal_speed=4.)
        self.assertEqual(result["models"][0x1234]["scale_samples"], 1)

    def test_unit_estimate_change_is_not_reported_as_acceleration(self):
        fitter = EngineMotion()
        result = fitter.update(snapshot(0, entity(x=100.)), {}, nominal_speed=4.)
        for frame, x in ((1, 108.), (2, 116.), (3, 124.)):
            result = fitter.update(snapshot(frame, entity(x=x)), {}, nominal_speed=4.)
        model = result["models"][0x1234]
        self.assertEqual(model["position_scale"], 2.)
        self.assertFalse(model["abrupt_velocity_change"])
        self.assertAlmostEqual(math.hypot(*model["acceleration"]), 0., places=6)

    def test_body_and_target_velocities_share_calibration_without_mutating_snapshot(self):
        fitter = EngineMotion()
        for frame, x in ((0, 100.), (1, 108.), (2, 116.), (3, 124.)):
            result = fitter.update(snapshot(frame, entity(x=x)), {}, nominal_speed=4.)
        models = result["models"]
        raw = entity(x=124.)
        raw_copy = dict(raw)
        body = Body(0x1234, 124., 100., 4., 0., 5., "enemy")
        scaled_body = EngineMotion.apply({"entities": [raw]}, {}, [body], models)[0]
        self.assertAlmostEqual(scaled_body.vx, 240.)
        target = {"address": 0x1234, "x": 124., "y": 100., "vx": 4., "vy": 0.}
        scaled_target = EngineMotion.apply_targets([target], models)[0]
        self.assertAlmostEqual(scaled_target["vx"], 8.)
        self.assertAlmostEqual(scaled_target["prediction_scale"], 2.)
        self.assertEqual(raw, raw_copy)
        self.assertEqual(target["vx"], 4.)
        self.assertEqual(target["vy"], 0.)

    def test_prediction_snapshot_preserves_source_and_aligns_special_reserve_with_target(self):
        motion = EngineMotion()
        jumping = entity(address=0x111, seed=11, typ=10, x=100., vx=4.)
        target = entity(address=0x222, seed=22, typ=11, x=200., vx=4.)
        entities = [jumping, target]
        models = {}
        for frame, offset in ((0, 0.), (1, 8.), (2, 16.)):
            current = [dict(jumping, x=100. + offset), dict(target, x=200. + offset)]
            observed = {"frame": frame, "room": 17, "entities": current}
            models = motion.update(observed, {}, nominal_speed=4.)["models"]
        original_vx = target["vx"]
        predicted = motion.prediction_snapshot(
            {"room": 17, "frame": 2, "entities": [
                {**jumping, "x": 116., "animation": "walk", "collision_class": 0,
                 "health": 5., "variant": 0},
                {**target, "x": 216., "collision_class": 1, "health": 5.}]}, models)
        self.assertEqual(target["vx"], original_vx)
        self.assertEqual(predicted["entities"][0]["vx"], 8.)
        self.assertEqual(predicted["entities"][0]["raw_velocity"], (4., 0.))

        world = EngineWorld()
        player = {"x": 80., "y": 100., "radius": 9., "stats": {"can_fly": False}}
        world_result = world.update(predicted | {"grid_width": 15, "grid_height": 9,
                                                  "grid_cells": [], "enums": {"EntityType": {
                                                      "ENTITY_MONSTRO": 10}}}, player)
        reserve = next(body for body in world_result["bodies"]
                       if body.id == 0x111 and body.kind == "hazard")
        output_target = next(item for item in world_result["targets"] if item["address"] == 0x222)
        self.assertAlmostEqual(reserve.vx, output_target["vx"] * 30.)
        self.assertAlmostEqual(reserve.vx, 240.)


class ControlWorkerPredictionOrderTests(unittest.TestCase):
    @staticmethod
    def player_record():
        return {"address": 1, "seed": 1, "x": 80., "y": 100., "vx": 0., "vy": 0.,
                "character": "Isaac", "radius": 9.,
                "stats": {"move_speed": .7, "shot_speed": 1., "tear_range": 260.,
                          "max_fire_delay": 10., "can_fly": False, "can_shoot": True},
                "health_parts": {"red": 6, "soul": 0, "bone": 0},
                "damage_cooldown": 0, "collectibles": {},
                "weapons": [{"type": 1, "owner": 1, "charge": 0., "max_charge": 0.,
                             "fire_delay": 0., "max_fire_delay": 10., "num_fired": 0,
                             "main_entity": 0, "slot": 1}]}

    def test_process_snapshot_fits_then_captures_world_once(self):
        with tempfile.TemporaryDirectory() as temp:
            events = []
            world = EngineWorld()
            real_world_update = world.update

            def update_world(snapshot_value, player_value):
                events.append("world")
                self.assertTrue(events[-2] == "prediction")
                return real_world_update(snapshot_value, player_value)

            world.update = Mock(side_effect=update_world)
            worker = ControlWorker(queue.Queue(), window=Mock(), input_controller=Mock(),
                                   reader_factory=Mock(), world=world, log_dir=Path(temp))
            real_motion_update = worker.motion.update
            real_prediction = worker.motion.prediction_snapshot

            def update_motion(*args, **kwargs):
                events.append("motion")
                return real_motion_update(*args, **kwargs)

            def prediction_snapshot(*args, **kwargs):
                events.append("prediction")
                return real_prediction(*args, **kwargs)

            worker.motion.update = update_motion
            worker.motion.prediction_snapshot = prediction_snapshot
            try:
                record = entity(address=0x333, seed=33, x=100., vx=4.)
                record.update(collision_class=1, health=5.)
                for frame, x in ((0, 100.), (1, 108.), (2, 116.)):
                    record = {**record, "x": x}
                    current = {"complete": True, "frame": frame, "room": 1,
                               "paused": False, "transitional": False,
                               "local_player": self.player_record(),
                               "entities": [record], "grid_cells": [],
                               "grid_width": 15, "grid_height": 9}
                    events.clear()
                    worker.process_snapshot(current, foreground=True, dt=1 / 30)
                    self.assertEqual(events, ["motion", "prediction", "world"])
                    self.assertEqual(world.update.call_count, frame + 1)
                    passed_entity = world.update.call_args.args[0]["entities"][0]
                    if frame == 2:
                        self.assertEqual(passed_entity["raw_velocity"], (4., 0.))
                        self.assertEqual(passed_entity["vx"], 8.)
            finally:
                worker.diagnostics.close()


class SafetyGuidanceTests(unittest.TestCase):
    @staticmethod
    def maze():
        # A compact chamber has one narrow connection to a large reachable room.
        walkable = np.zeros((560, 640), dtype=bool)
        walkable[160:321, 40:201] = True
        walkable[240:281, 200:361] = True
        walkable[120:441, 360:601] = True
        return walkable

    def test_obstacle_only_and_unpressured_position_have_no_safety_goal(self):
        walkable = np.ones((560, 640), dtype=bool)
        stone = Body(1, 320., 280., 0., 0., 20., "obstacle")
        self.assertIsNone(EngineRetreat.prepare(walkable, [stone], 5., 120.))
        field = EngineRetreat.prepare(walkable,
            [Body(2, 40., 40., 0., 0., 5., "projectile")], 5., 120.)
        self.assertIsNotNone(field)
        self.assertIsNone(field.safety_guidance((320., 280.)))

    def test_pressure_prefers_reachable_roomy_region_without_wall_shortcuts(self):
        walkable = self.maze()
        # Approaches the small chamber; future pressure blocks its current side.
        projectile = Body(3, 240., 240., -120., 0., 5., "projectile")
        field = EngineRetreat.prepare(walkable, [projectile], 5., 120.)
        guide = field.safety_guidance((160., 240.))
        self.assertIsNotNone(guide)
        self.assertTrue(guide.metadata["active"])
        # The large room is a valid roomy destination through the narrow lane.
        self.assertLess(guide((400., 240.)), guide((160., 240.)))

        # Add a full wall between another open pocket and the map. Guidance
        # cannot invent a straight-line route across it.
        separated = walkable.copy()
        separated[:, 520:] = False
        separated[240:281, 560:601] = True  # isolated, too small to be a roomy seed
        isolated = EngineRetreat.prepare(separated, [projectile], 5., 120.)
        isolated_guide = isolated.safety_guidance((160., 240.))
        self.assertIsNotNone(isolated_guide)
        self.assertEqual(isolated_guide((560., 240.)), 32.)
        # The sole 40px-wide corridor remains traversable: the code applies a
        # soft direction cost and does not ban the corridor's nodes.
        self.assertIn((3, 4), field._nodes)
        self.assertFalse(field._layers[0]["blocked"][(3, 4)])

    def test_planner_passes_active_safety_guidance_to_search(self):
        from planner import Planner

        planner = Planner()
        planner._search.choose = Mock(return_value=((0, 0), [(160., 240.)], 0.))
        threat = Body(4, 240., 240., -120., 0., 5., "projectile")
        planner.decide((160., 240.), [threat], self.maze(), 1 / 30,
                       speed=120., player_radius=5., frame=1)
        self.assertTrue(planner._search.choose.called)
        kwargs = planner._search.choose.call_args.kwargs
        self.assertTrue(callable(kwargs["safety_goal"]))
        self.assertTrue(kwargs["safety_goal"].metadata["active"])


if __name__ == "__main__":
    unittest.main()
