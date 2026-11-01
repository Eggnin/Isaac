"""Early Slide coverage for the frozen 0.5.7 observations."""
import copy
import json
import math
from pathlib import Path
import unittest

from engine_motion import EngineMotion

ROOT = Path(__file__).resolve().parents[1]


class RecordedSlideCoverageTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.cases = json.loads((ROOT / "tests/regression_data/combat058.json").read_text(encoding="utf-8"))

    def recorded_slides(self):
        return [
            (case, entity)
            for case in self.cases.values()
            for entity in case["snapshot"]["entities"]
            if entity.get("type") == 220
            and entity.get("variant") == 0
            and entity.get("state") == 4
            and str(entity.get("animation", "")).lower() == "slide"
            and math.hypot(entity.get("vx", 0), entity.get("vy", 0)) >= 3
        ]

    def corridor(self, motion_type, snapshot, entity):
        result = motion_type().update(snapshot, snapshot["local_player"], eligible=False)
        return [
            body
            for body in result["hazards"]
            if body.id == entity["address"] and body.kind == "hazard" and body.end is not None
        ]

    def assert_corridor(self, motion_type, snapshot, entity):
        lanes = self.corridor(motion_type, snapshot, entity)
        self.assertTrue(lanes, f"missing forward Slide corridor for seed={entity['seed']} frame={entity['animation_frame']}")
        for lane in lanes:
            dx = lane.end[0] - lane.x
            dy = lane.end[1] - lane.y
            self.assertGreaterEqual(math.hypot(dx, dy), 80.0)
            self.assertGreater(dx * entity["vx"] + dy * entity["vy"], 0.0)

    def test_recorded_type_220_slide_loop_frames_have_forward_corridors(self):
        slides = self.recorded_slides()
        self.assertEqual({entity["animation_frame"] for _, entity in slides}, {0.0, 1.0, 2.0, 3.0})
        self.assertEqual({case["snapshot"]["profile"]["engine_version"] for case, _ in slides}, {"v1.9.7.17.J460"})

        missing = []
        for case, entity in slides:
            self.assertEqual(entity["npc_identity"]["type_name"], "ENTITY_SQUIRT")
            self.assertIn("not damage-source attribution", case["scope"])
            if not self.corridor(EngineMotion, case["snapshot"], entity):
                missing.append((case["source_frame"], entity["seed"], entity["animation_frame"]))

        self.assertFalse(missing, f"missing corridors in recorded Slide observations: {missing}")

    def test_non_slide_non_j460_and_friendly_observations_are_excluded(self):
        source = next(case for case in self.cases.values() if case["source_frame"] == 1944)
        entity = next(e for e in source["snapshot"]["entities"] if e["type"] == 220 and e["animation_frame"] == 0)
        cases = {}
        for name in ("non_slide", "non_j460", "friendly"):
            cases[name] = copy.deepcopy(source["snapshot"])
        next(e for e in cases["non_slide"]["entities"] if e["address"] == entity["address"])["animation"] = "Walk"
        cases["non_j460"]["profile"]["engine_version"] = "unverified"
        friendly = next(e for e in cases["friendly"]["entities"] if e["address"] == entity["address"])
        friendly["flags"] = int(friendly.get("flags", 0)) | EngineMotion.FRIENDLY

        for name, snapshot in cases.items():
            with self.subTest(case=name):
                changed = next(e for e in snapshot["entities"] if e["address"] == entity["address"])
                self.assertFalse(self.corridor(EngineMotion, snapshot, changed))


if __name__ == "__main__":
    unittest.main()
