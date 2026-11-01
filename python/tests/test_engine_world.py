"""Focused contracts for the read-only engine snapshot adapter."""
import unittest

import numpy as np

from engine_world import EngineWorld


def player(**kw):
    return {"x": 320, "y": 280, "radius": 9, "stats": {"can_fly": False}, **kw}


def snapshot(**kw):
    return {"room": 4, "grid_width": 15, "grid_height": 9, "frame": 1,
            "grid_cells": [], "entities": [], **kw}


def test_spikes_and_greed_button_are_excluded_for_ground_and_flying_players():
    cells = [
        {"index": 4 * 15 + 6, "type": 8, "variant": 0, "state": 0, "collision": 0},
        {"index": 4 * 15 + 7, "type": 9, "variant": 0, "state": 0, "collision": 0},
        {"index": 4 * 15 + 8, "type": 20, "variant": 2, "state": 0, "collision": 0},
    ]
    world = EngineWorld()
    grounded = world.update(snapshot(grid_cells=cells), player())
    flying = world.update(snapshot(grid_cells=cells), player(stats={"can_fly": True}))
    for x in (280, 320, 360):
        assert not grounded["walkable"][280, x]
    assert flying["walkable"][280, 280]
    assert flying["walkable"][280, 320]
    assert not flying["walkable"][280, 360]


def test_flight_crosses_pits_objects_and_poop_but_not_walls():
    cells = [{"index": i, "type": 0, "variant": 0, "state": 0, "collision": c}
             for i, c in zip((66, 67, 68, 69), (1, 2, 3, 4))]
    world = EngineWorld()
    ground = world.update(snapshot(grid_cells=cells), player())["walkable"]
    fly = world.update(snapshot(grid_cells=cells), player(stats={"can_fly": True}))["walkable"]
    for col in range(6, 10):
        x = 40 + 40 * col
        assert not ground[280, x]
    for col in (6, 7, 8):
        assert fly[280, 40 + 40 * col]
    assert not fly[280, 40 + 40 * 9]


def test_friendly_familiar_and_its_projectiles_are_filtered():
    entities = [
        {"type": 3, "address": 10, "owner": 1, "x": 200, "y": 200},
        {"type": 9, "address": 11, "parent": 10, "x": 220, "y": 200,
         "collision_damage": 1, "collision_class": 1, "radius": 5},
        {"type": 1, "address": 1, "x": 320, "y": 280},
        {"type": 9, "address": 12, "x": 400, "y": 200,
         "collision_damage": 1, "collision_class": 1, "radius": 5},
        {"type": 10, "address": 13, "x": 450, "y": 200, "health": 5,
         "collision_class": 1, "collision_damage": 1},
    ]
    result = EngineWorld().update(snapshot(entities=entities), player())
    assert [b.id for b in result["bodies"] if b.kind == "projectile"] == [12]
    assert len(result["targets"]) == 1


def test_large_room_expands_walkable_bounds():
    world = EngineWorld()
    result = world.update(snapshot(grid_width=29, grid_height=17), player())
    assert result["walkable"].shape[1] > 640
    assert result["walkable"][740, 1120]


def test_laser_becomes_a_chain_of_local_projectile_capsules():
    e = {"type": 7, "address": 33, "x": 200, "y": 200, "radius": 2,
         "collision_damage": 1,
         "laser": {"samples": [[100, 100], [200, 100], [300, 100]], "scale": 1}}
    result = EngineWorld().update(snapshot(entities=[e]), player())
    laser_bodies = [b for b in result["bodies"] if b.kind == "projectile"]
    assert len(laser_bodies) == 2
    assert all(b.radius < 20 for b in laser_bodies)
    assert min(b.x for b in laser_bodies) <= 100
    assert max(b.end[0] for b in laser_bodies) >= 300


def test_stoney_remains_a_target_without_becoming_a_hazard():
    e = {"type": 302, "address": 90, "x": 400, "y": 240, "health": 10,
         "collision_class": 1, "collision_damage": 0}
    result = EngineWorld().update(snapshot(entities=[e]), player())
    assert not result["targets"]
    assert [b.kind for b in result["bodies"]] == ["obstacle"]


def test_contact_harmless_npc_is_a_target_body_and_invisible_laser_stays_hazardous():
    npc = {"type": 10, "address": 91, "x": 400, "y": 240, "health": 10,
           "collision_class": 1, "collision_damage": 0}
    laser = {"type": 7, "address": 92, "x": 200, "y": 200, "visible": False,
             "collision_damage": 1,
             "laser": {"timeout": 4, "samples": [[100, 100], [300, 100]]}}
    result = EngineWorld().update(snapshot(entities=[npc, laser]), player())
    assert [b for b in result["bodies"] if b.kind == "target"]
    assert [b for b in result["bodies"] if b.kind == "projectile"]


def test_terrain_arrays_are_reused_when_only_frame_changes():
    world = EngineWorld()
    first = world.update(snapshot(), player())
    second = world.update(snapshot(frame=2), player())
    assert first["walkable"] is second["walkable"]
    assert first["shot_walkable"] is second["shot_walkable"]
    assert isinstance(first["walkable"], np.ndarray)


def load_tests(loader, tests, pattern):
    """Expose the module's assertion functions to standard unittest discovery."""
    suite = unittest.TestSuite()
    for name, test in sorted(globals().items()):
        if name.startswith("test_") and callable(test):
            suite.addTest(unittest.FunctionTestCase(test, description=name))
    return suite
