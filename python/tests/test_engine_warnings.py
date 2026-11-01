"""Contracts for observed laser windups and delayed damage effects."""
import unittest

from engine_warnings import Warnings


ENUMS = {
    "EntityType": {"ENTITY_PLAYER": 1, "ENTITY_EYE": 28, "ENTITY_LASER": 7, "ENTITY_EFFECT": 1000},
    "EffectVariant": {"TARGET": 67, "ROCKET": 69, "ENEMY_BRIMSTONE_SWIRL": 171},
    "CollectibleType": {"COLLECTIBLE_MARKED": 404, "COLLECTIBLE_EPIC_FETUS": 52},
}


def player(**kw):
    return {"x": 300, "y": 200, "radius": 9, "stats": {"can_fly": False}, **kw}


def snap(room=1, frame=10, entities=None):
    return {"room": room, "frame": frame, "grid_width": 15, "grid_height": 9,
            "enums": ENUMS, "entities": entities or []}


def test_eye_windup_keeps_locked_direction_and_respects_activation_frame():
    eye = {"type": 28, "variant": 0, "address": 50, "x": 100, "y": 200,
           "animation": "Shoot", "animation_frame": 2}
    warnings = Warnings()
    first = warnings.capture(snap(entities=[eye]), player())
    assert len(first) == 1 and abs(first[0].start_after - 9 / 30) < 1e-6
    assert first[0].end is not None
    eye["animation_frame"] = 3
    second = warnings.capture(snap(frame=11, entities=[eye]), player(x=100, y=400))
    assert second
    assert second[0].end == first[0].end


def test_invisible_damaging_laser_is_still_reported():
    laser = {"type": 7, "address": 1, "visible": False, "x": 100, "y": 100,
             "collision_damage": 1,
             "laser": {"timeout": 0, "endpoint": [260, 100],
                       "samples": [[100, 100], [260, 100]], "scale": 1}}
    bodies = Warnings().capture(snap(entities=[laser]), player())
    assert len(bodies) == 1
    assert all(b.kind == "projectile" for b in bodies)
    assert bodies[0].end == (260, 100)


def test_timeout_below_zero_does_not_hide_persistent_circle_beam():
    laser = {"type": 7, "address": 8, "x": 200, "y": 200, "radius": 80,
             "laser": {"timeout": -1, "is_circle": True, "radius": 80,
                       "radius_expansion": 0, "scale": 1}}
    bodies = Warnings().capture(snap(entities=[laser]), player())
    assert len(bodies) == 1 and bodies[0].ring_radius == 80


def test_expanding_laser_ring_covers_circumference_not_center():
    laser = {"type": 7, "address": 2, "x": 200, "y": 200, "radius": 100,
             "laser": {"timeout": 5, "is_circle": True, "radius": 100,
                       "radius_expansion": 1, "scale": 1}}
    bodies = Warnings().capture(snap(entities=[laser]), player())
    assert len(bodies) == 1
    assert bodies[0].x == 200 and bodies[0].y == 200
    assert bodies[0].ring_radius == 100
    assert bodies[0].ring_growth == 30


def test_marked_target_is_suppressed_but_rocket_shadow_remains():
    source = {"type": 1, "address": 1, "x": 0, "y": 0}
    target = {"type": 1000, "variant": 67, "address": 2, "spawner": 1,
              "x": 200, "y": 200, "radius": 10, "timeout": 30}
    rocket = {"type": 1000, "variant": 69, "address": 3, "spawner": 1,
              "x": 240, "y": 200, "radius": 10, "timeout": 30}
    w = Warnings()
    marked_player = player(collectibles={404: True})
    bodies = w.capture(snap(entities=[source, target, rocket]), marked_player)
    assert bodies and all(b.id != 2 for b in bodies)
    epic_player = player(collectibles={404: True, 52: True})
    bodies = Warnings().capture(snap(entities=[source, target, rocket]), epic_player)
    assert any(b.id == 2 for b in bodies)


def test_room_change_discards_locked_eye_direction():
    eye = {"type": 28, "variant": 0, "address": 5, "x": 100, "y": 200,
           "animation": "Shoot", "animation_frame": 2}
    w = Warnings()
    w.capture(snap(room=1, entities=[eye]), player())
    eye["animation_frame"] = 3
    w.capture(snap(room=2, frame=11, entities=[eye]), player(x=100, y=400))
    assert next(iter(w._tracks.values()))["aim"] is None


def test_eye_lock_survives_one_missed_poll_but_not_a_later_attack():
    eye = {"type": 28, "variant": 0, "address": 6, "x": 100, "y": 200,
           "animation": "Shoot", "animation_frame": 2}
    w = Warnings()
    first = w.capture(snap(frame=10, entities=[eye]), player())
    eye["animation_frame"] = 4
    skipped = w.capture(snap(frame=12, entities=[eye]), player(x=100, y=400))
    assert skipped[0].end == first[0].end
    eye["animation_frame"] = 2
    restarted = w.capture(snap(frame=30, entities=[eye]), player(x=100, y=400))
    assert restarted[0].end != first[0].end


def load_tests(loader, tests, pattern):
    """Expose the module's assertion functions to standard unittest discovery."""
    suite = unittest.TestSuite()
    for name, test in sorted(globals().items()):
        if name.startswith("test_") and callable(test):
            suite.addTest(unittest.FunctionTestCase(test, description=name))
    return suite
