import unittest
import numpy as np

from engine_kiting import KiteController
from engine_search import BeamSearch
from planner import Body


class KitingTests(unittest.TestCase):
    def terrain(self):
        valid=np.zeros((500,650),bool);valid[150:411,70:571]=True
        return valid

    def pack(self,positions=((160.,200.),(180.,210.))):
        result=[]
        for i,(x,y) in enumerate(positions):
            result.extend((Body(i,x,y,90.,0.,8.),Body(i,x,y,90.,0.,8.,'hazard',
                pursuit_speed=90.,pursuit_inertia=.92,pursuit_gain=12.,pursuit_old_weight=.68)))
        return result

    def test_available_speed_is_compared_with_future_pursuit_speed(self):
        controller=KiteController();valid=self.terrain();bodies=self.pack()
        plan,status=controller.plan(valid,bodies,(320.,200.),140.,140.,30)
        self.assertIsNone(plan)
        self.assertEqual(status['reason'],'insufficient_speed_advantage')
        self.assertAlmostEqual(status['enemy_speed_estimate'],150.)
        plan,status=controller.plan(valid,bodies,(320.,200.),260.,240.,31)
        self.assertIsNotNone(plan)
        self.assertGreater(status['speed_ratio'],1.7)
        self.assertEqual(status['mode'],'trailing_pack')

    def test_faster_player_keeps_moving_with_pack_behind_even_if_attack_goal_is_backwards(self):
        valid=self.terrain();bodies=self.pack();plan,status=KiteController().plan(valid,bodies,(320.,200.),260.,240.,30)
        search=BeamSearch()
        move,_,_=search.choose((320.,200.),valid,bodies,10.,260.,(8.,0.),
            lambda p:p[0],kite=plan,crowd_pressure=True,allow_hold=False)
        self.assertGreater(move[0],0)
        self.assertEqual(search.last_report['geometry_hits'],0)
        self.assertLess(search.last_report['kite_cost'],0)

    def test_top_left_corner_chooses_an_exit_instead_of_up_or_left(self):
        valid=self.terrain();bodies=self.pack(((200.,300.),(400.,300.)))
        plan,_=KiteController().plan(valid,bodies,(80.,160.),260.,0.,30)
        self.assertIsNotNone(plan)
        search=BeamSearch()
        move,_,_=search.choose((80.,160.),valid,bodies,10.,260.,(0.,0.),lambda p:0.,
            kite=plan,crowd_pressure=True)
        self.assertGreaterEqual(move[0],0)
        self.assertGreaterEqual(move[1],0)
        self.assertNotEqual(move,(0,0))

    def test_opposite_edge_does_not_fake_half_a_lap_of_progress(self):
        plan,_=KiteController().plan(self.terrain(),self.pack(),(320.,200.),260.,240.,30)
        self.assertLess(plan.cost((400.,200.)),plan.cost((320.,360.)))

    def test_route_plans_a_turn_before_running_out_of_room(self):
        valid=self.terrain();bodies=self.pack(((300.,200.),(280.,230.)))
        plan,_=KiteController().plan(valid,bodies,(500.,200.),260.,240.,30)
        search=BeamSearch()
        move,path,_=search.choose((500.,200.),valid,bodies,10.,260.,(8.,0.),
            lambda p:0.,kite=plan,crowd_pressure=True)
        self.assertNotEqual(move,(0,0))
        self.assertGreater(path[-1][1],240.)
        self.assertLess(path[-1][0],560.)

    def test_narrow_dead_end_is_not_labeled_a_safe_kiting_loop(self):
        valid=np.zeros((500,650),bool);valid[150:410,100:155]=True
        plan,status=KiteController().plan(valid,self.pack(),(120.,250.),260.,200.,30)
        self.assertIsNone(plan)
        self.assertEqual(status['reason'],'no_reachable_terrain_loop')

    def test_loop_and_join_cannot_cross_a_wall(self):
        valid=self.terrain();valid[:,300:340]=False
        controller=KiteController();plan,_=controller.plan(valid,self.pack(),(180.,260.),260.,200.,30)
        self.assertIsNotNone(plan)
        self.assertLess(plan.corners[:,0].max(),300.)
        for a,b in zip(plan.corners,plan.ends):self.assertTrue(controller._line_valid(valid,a,b))

    def test_unknown_or_remote_pursuit_is_not_assumed_to_be_chasing_us(self):
        bodies=[Body(1,180.,200.,90.,0.,8.),Body(1,180.,200.,90.,0.,8.,'warning',pursuit_speed=90.)]
        plan,status=KiteController().plan(self.terrain(),bodies,(320.,200.),260.,200.,30)
        self.assertIsNone(plan)
        self.assertEqual(status['reason'],'not_all_contact_enemies_have_known_local_pursuit')

    def test_kiting_goal_cannot_replace_collision_free_route_with_contact(self):
        class BadKite:
            def prepare(self,points):pass
            def cost(self,p):return -p[0]*1000
        search=BeamSearch();valid=self.terrain()
        search.choose((100.,240.),valid,[Body(1,200.,240.,-70.,0.,8.)],10.,150.,(0.,0.),
            lambda p:0.,kite=BadKite(),crowd_pressure=True)
        self.assertEqual(search.last_report['geometry_hits'],0)
        self.assertTrue(any(c['geometry_hits']>0 for c in search.last_report['candidate_summary']))


if __name__=='__main__':unittest.main()
