import importlib.util
from pathlib import Path
import sys
import unittest

MODULE_PATH = (Path(__file__).resolve().parents[1]/'src'/'engine_weapons.py')
spec = importlib.util.spec_from_file_location("engine_weapons", MODULE_PATH)
engine_weapons = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = engine_weapons
spec.loader.exec_module(engine_weapons)
make_profile = engine_weapons.make_profile
EngineWeaponController = engine_weapons.EngineWeaponController


def player(*, weapons=None, character="Isaac", can_shoot=True, stats=None, collectibles=None, address=100):
    return {
        "address": address, "x": 40.0, "y": 50.0, "vx": 0.0, "vy": 0.0,
        "character": character,
        "stats": {"move_speed": 1.0, "shot_speed": 1.0, "damage": 3.5,
                  "tear_range": 260.0, "max_fire_delay": 10.0,
                  "can_fly": False, "can_shoot": can_shoot, **(stats or {})},
        "collectibles": collectibles or {},
        "weapons": weapons if weapons is not None else [{
            "type": 1, "owner": address, "charge": 0.0, "max_charge": None,
            "fire_delay": 0.0, "max_fire_delay": 10.0, "num_fired": 0,
            "main_entity": 0, "slot": 1,
        }],
    }


def channel(kind, charge=0.0, maximum=None, **kw):
    return {"type": kind, "owner": 100, "charge": charge, "max_charge": maximum,
            "fire_delay": 0.0, "max_fire_delay": 10.0, "num_fired": 0,
            "main_entity": 0, "slot": 1, **kw}


def profile_for(weapons, **kwargs):
    return make_profile(player(weapons=weapons, **kwargs), [])


class EngineWeaponControllerTests(unittest.TestCase):
    def test_ordinary_weapon_fires_only_with_valid_direction(self):
        profile = profile_for([channel(1)])
        controller = EngineWeaponController()
        self.assertEqual(controller.update(profile, None, True, 1 / 30), set())
        self.assertEqual(controller.update(profile, "left", True, 1 / 30), {"left"})

    def test_missing_target_or_can_shoot_releases(self):
        profile = profile_for([channel(1)])
        controller = EngineWeaponController()
        self.assertEqual(controller.update(profile, "up", True, 1 / 30), {"up"})
        self.assertEqual(controller.update(profile, "up", False, 1 / 30), set())
        self.assertEqual(controller.update(profile, "up", True, 1 / 30), {"up"})
        disabled = profile_for([channel(1)], can_shoot=False)
        self.assertEqual(controller.update(disabled, "up", True, 1 / 30), set())

    def test_true_charge_releases_only_when_observed_charge_is_full_and_aimed(self):
        profile = profile_for([channel(2, charge=8, maximum=10)])
        controller = EngineWeaponController()
        self.assertEqual(controller.update(profile, "right", True, 1 / 30), {"right"})
        profile["weapons"][0]["charge_value"] = 10
        profile["predicted_hit"] = False
        self.assertEqual(controller.update(profile, None, True, 1 / 30), {"right"})
        profile["predicted_hit"] = True
        self.assertEqual(controller.update(profile, "down", True, 1 / 30), {"down"})
        self.assertEqual(controller.update(profile, "down", True, 1 / 30), set())
        profile["weapons"][0]["charge_value"] = 1
        self.assertEqual(controller.update(profile, "down", True, 1 / 30), set())
        self.assertEqual(controller.update(profile, "down", True, 1 / 30), {"down"})

    def test_missing_prediction_does_not_release_full_charge_from_old_direction(self):
        profile = profile_for([channel(2, charge=8, maximum=10)])
        controller = EngineWeaponController()
        self.assertEqual(controller.update(profile, "right", True, 1 / 30), {"right"})
        profile["weapons"][0]["charge_value"] = 10
        # Legacy/incomplete callers may not supply predicted_hit. A missing
        # current direction still cannot authorize release on the cached aim.
        self.assertNotIn("predicted_hit", profile)
        self.assertEqual(controller.update(profile, None, True, 1 / 30), {"right"})
        self.assertNotEqual(controller.last_report["reason"], "charge_release")

    def test_owned_brimstone_tail_delays_recharge_but_mixed_beam_does_not(self):
        weapons = [channel(2, charge=10, maximum=10, main_entity=700), channel(3)]
        person = player(weapons=weapons)
        own_brim = {"type": 7, "variant": 1, "address": 700, "parent": 100,
                    "spawner": 100, "dead": False,
                    "laser": {"timeout": 12, "shrink": False, "endpoint": [300, 50]}}
        profile = make_profile(person, [own_brim])
        self.assertTrue(profile["brim_tail_active"])
        controller = EngineWeaponController()
        self.assertEqual(controller.update(profile, "right", True, 1 / 30), set())
        # An unrelated type-3 laser is not tied to the Brimstone main entity.
        unrelated = {"type": 7, "variant": 9, "address": 701, "parent": 100,
                     "spawner": 100, "dead": False,
                     "laser": {"timeout": 9999, "shrink": False, "endpoint": [400, 50]}}
        ordinary_mix = make_profile(person, [unrelated])
        self.assertFalse(ordinary_mix["brim_tail_active"])
        self.assertEqual(controller.update(ordinary_mix, "right", True, 1 / 30), set())

    def test_lilith_uses_owned_incubus_shooter_origin(self):
        person = player(character="Lilith")
        familiar = {"type": 3, "variant": 80, "address": 501, "x": 47.0, "y": 59.0,
                    "dead": False, "familiar": {"owner": 100,
                    "weapon": {"type": 1, "owner": 100, "slot": 1,
                               "charge": 0, "max_charge": None}}}
        profile = make_profile(person, [familiar])
        self.assertEqual(profile["shooter_origin"], (47.0, 59.0))
        self.assertEqual(profile["shooter_familiar"], 501)
        self.assertTrue(profile["can_shoot"])
        numeric_character = make_profile(player(character=13), [familiar])
        self.assertEqual(numeric_character["shooter_origin"], (47.0, 59.0))

    def test_familiar_charge_weapon_is_included(self):
        person = player(weapons=[])
        familiar = {"type": 3, "variant": 42, "address": 502, "x": 60., "y": 70.,
                    "dead": False, "familiar": {"owner": 100,
                    "weapon": {"type": 7, "owner": 502, "slot": 1,
                               "charge": 30., "max_charge": 60.}}}
        profile = make_profile(person, [familiar])
        self.assertTrue(profile["charge"])
        self.assertEqual(len(profile["weapons"]), 1)
        self.assertEqual(profile["weapons"][0]["owner"], "familiar")
        controller = EngineWeaponController()
        self.assertEqual(controller.update(profile, "up", True, 1 / 30), {"up"})
        profile["weapons"][0]["charge_value"] = 60
        # The direction change first aligns the familiar's next shot; release
        # follows once the selected direction remains stable for a tick.
        self.assertEqual(controller.update(profile, "left", True, 1 / 30), {"left"})
        self.assertEqual(controller.update(profile, "left", True, 1 / 30), set())

    def test_profile_stats_ranges_and_cursor_modes(self):
        profile = make_profile(player(collectibles={"329": 1, "394": 1}), [])
        self.assertTrue(profile["supported"])
        self.assertTrue(profile["can_shoot"])
        self.assertEqual(profile["cursor"]["kind"], "marked")
        self.assertGreater(profile["attack_range"], 0)
        self.assertEqual(profile["projectile_speed"], 300.0)
        self.assertEqual(profile["projectile_speed_estimated"], False)
        ludo = make_profile(player(weapons=[channel(8)], collectibles={"329": 1}), [])
        self.assertEqual(ludo["cursor"]["kind"], "ludovico")
        occult = make_profile(player(weapons=[channel(2)], collectibles={"572": 1}), [])
        self.assertEqual(occult["cursor"]["kind"], "occult")
        unknown = profile_for([channel(777)])
        self.assertFalse(unknown["supported"])
        self.assertTrue(unknown["unsupported"])
        self.assertEqual(EngineWeaponController().update(unknown, "right", True, .03), set())

    def test_charge_without_max_is_marked_as_an_estimate(self):
        profile = profile_for([channel(7, charge=0, maximum=None)])
        self.assertTrue(profile["charge"])
        self.assertTrue(profile["weapons"][0]["charge_estimated"])
        self.assertIn("estimated", profile["charge_estimate_note"])


if __name__ == "__main__":
    unittest.main()
