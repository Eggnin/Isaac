"""Offline regressions for a live rock-occlusion/coarse-grid stall."""
import json
import math
from pathlib import Path
import queue
import tempfile
import unittest
from unittest.mock import Mock

import numpy as np

from engine_app import ControlWorker
from engine_aim import EngineAim
from planner import Planner
import test_engine_app as app_fixtures


class NavigationInterpolationTests(unittest.TestCase):
    def test_legal_pixel_can_connect_when_rounded_coarse_cell_is_blocked(self):
        valid=np.ones((100,100),dtype=bool)
        valid[40:60,40:60]=False
        field=np.zeros((5,5));field[2,2]=math.inf
        # (41,39) is legal but rounds onto blocked (50,50).
        self.assertTrue(valid[39,41])
        self.assertTrue(math.isfinite(Planner._nav_cost(field,(41.,39.),valid)))

    def test_connection_cannot_jump_across_a_thin_wall(self):
        valid=np.ones((100,100),dtype=bool);valid[:,48:54]=False
        field=np.full((5,5),math.inf);field[1,3]=0.
        self.assertTrue(math.isinf(Planner._nav_cost(field,(40.,30.),valid)))

    def test_invalid_and_outside_positions_are_not_navigation_sources(self):
        field=np.zeros((5,5));valid=np.ones((100,100),dtype=bool);valid[40,40]=False
        for position in ((40,40),(-1,10),(100,10)):
            self.assertTrue(math.isinf(Planner._nav_cost(field,position,valid)))


class TerrainFiringCostTests(unittest.TestCase):
    def test_blocked_tear_lane_is_not_perfect_but_grid_pass_exception_survives(self):
        player={'x':80.,'y':80.,'radius':10.,'stats':{'tear_range':260.}}
        target={'address':2,'x':180.,'y':80.,'radius':10.,'vx':0.,'vy':0.}
        clear=np.ones((200,240),dtype=bool);rock=clear.copy();rock[:,120:130]=False
        profile={'primary_weapon_types':[1],'attack_range':260.,'projectile_speed':300.,'shooter_origin':(80.,80.)}
        aim=EngineAim()
        self.assertGreater(aim.position_cost(profile,player,[target],(80.,80.),2,shot_mask=rock),
                           aim.position_cost(profile,player,[target],(80.,80.),2,shot_mask=clear))
        profile['primary_weapon_types']=[2]
        self.assertEqual(aim.position_cost(profile,player,[target],(80.,80.),2,shot_mask=rock),
                         aim.position_cost(profile,player,[target],(80.,80.),2,shot_mask=clear))


class LiveSnapshotStallTests(unittest.TestCase):
    def test_recorded_large_room_selects_safe_progress_instead_of_zero_cost_stop(self):
        snapshot=json.loads((Path(__file__).parent/'fixtures/stuck-large-room-028.json').read_text(encoding='utf-8'))
        with tempfile.TemporaryDirectory() as directory:
            worker=ControlWorker(queue.Queue(),window=Mock(),input_controller=app_fixtures.FakeInput(),
                                 dry_control=True,log_dir=Path(directory))
            worker.enabled=True;worker.last_frame=snapshot['frame']-1
            try:
                update=worker.process_snapshot(snapshot,foreground=True,dt=1/30)
                self.assertNotEqual(update['decision'].move,(0,0))
                self.assertEqual(update['search']['hits'],0)
                self.assertGreater(update['search']['start_goal_cost'],0)
                self.assertLess(update['search']['selected_goal_cost'],update['search']['start_goal_cost'])
                self.assertEqual(update['search']['firing_navigation_status'],'reachable')
                valid=worker.planner._valid_centers(update['world']['walkable'],update['world']['player_radius'])
                self.assertTrue(all(valid[round(y),round(x)] for x,y in update['decision'].path))
            finally:worker.shutdown()


if __name__=='__main__':unittest.main()
