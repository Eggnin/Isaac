import unittest

from engine_kiting import KiteController
import test_combat055 as baseline


class KitingContinuityTests(unittest.TestCase):
    def setUp(self):
        self.helper=baseline.KitingTests();self.valid=self.helper.terrain();self.controller=KiteController()

    def test_recent_repeated_free_speed_survives_a_braking_turn(self):
        bodies=self.helper.pack()
        for frame in (20,21,22):
            self.controller.plan(self.valid,bodies,(320.,200.),260.,250.,frame)
        plan,status=self.controller.plan(self.valid,bodies,(330.,200.),120.,20.,23,speed_sample_eligible=False)
        self.assertIsNotNone(plan)
        self.assertEqual(status['observed_sustained_speed'],250.)
        plan,status=self.controller.plan(self.valid,bodies,(340.,200.),120.,20.,90,speed_sample_eligible=False)
        self.assertIsNone(plan)
        self.assertEqual(status['observed_sustained_speed'],0.)

    def test_pack_position_change_does_not_reverse_a_route_that_is_still_advancing(self):
        first,_=self.controller.plan(self.valid,self.helper.pack(),(320.,200.),260.,240.,30)
        direction=first.direction
        next_plan,_=self.controller.plan(self.valid,self.helper.pack(((480.,200.),(490.,230.))),
            (400.,200.),260.,240.,75)
        self.assertEqual(next_plan.direction,direction)

    def test_encircled_start_gets_a_real_gathering_goal_with_observed_collision_checks(self):
        bodies=self.helper.pack(((120.,200.),(120.,360.),(520.,200.),(520.,360.)))
        plan,status=self.controller.plan(self.valid,bodies,(80.,280.),260.,240.,30)
        self.assertIsNotNone(plan)
        self.assertEqual(status['mode'],'gathering_pack')
        goal=status['gather_goal']
        self.assertIsNotNone(goal)
        self.assertTrue(self.controller._line_valid(self.valid,(80.,280.),goal))
        dx,dy=goal[0]-80,goal[1]-280;length=(dx*dx+dy*dy)**.5
        forward=(80+dx/length*30,280+dy/length*30)
        self.assertLess(plan.cost(forward),plan.cost((80.,280.)))


if __name__=='__main__':unittest.main()
