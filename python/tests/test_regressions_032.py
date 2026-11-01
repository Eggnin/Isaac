"""Terrain escape reproductions from the 2026-10-24 native combat log."""
import math
import unittest

import numpy as np

from engine_search import BeamSearch
from engine_motion import EngineMotion
from engine_world import EngineWorld
from planner import Planner, Body


def normal_room():
    cells = [{'index': row*15+col, 'type': 15, 'collision': 4}
             for row in range(9) for col in range(15)
             if row in (0, 8) or col in (0, 14)]
    snapshot = {'room': 1, 'frame': 1, 'grid_width': 15, 'grid_height': 9,
                'grid_cells': cells, 'entities': []}
    player = {'x': 320., 'y': 280., 'radius': 10., 'stats': {}}
    return EngineWorld().update(snapshot, player)


class ObservedBoundaryEscapeTests(unittest.TestCase):
    def test_native_rock_margin_can_recover_without_entering_raw_rock(self):
        mask=normal_room()['walkable'].copy();mask[260:300,340:380]=False
        valid=Planner()._valid_centers(mask,10.)
        start=(345.9981384277344,256.1815490722656)
        self.assertTrue(mask[round(start[1]),round(start[0])])
        self.assertFalse(valid[round(start[1]),round(start[0])])
        path,_,_=BeamSearch._trace(start,(0.,0.),(0,-1),162.,.8,0.,1.,24,valid,
                                   recovery_mask=mask,recovery_distance=12.)
        self.assertTrue(valid[round(path[-1][1]),round(path[-1][0])])
        self.assertTrue(all(mask[round(y),round(x)] for x,y in path))
        into,_,_=BeamSearch._trace(start,(0.,0.),(0,1),162.,.8,0.,1.,24,valid,
                                   recovery_mask=mask,recovery_distance=12.)
        self.assertTrue(all(math.dist(p,start)<1e-5 for p in into))

    def test_observed_legal_bottom_right_position_can_escape_inward(self):
        valid = Planner()._valid_centers(normal_room()['walkable'], 10.)
        start = (569.9974975585938, 409.65911865234375)
        self.assertFalse(valid[round(start[1]), round(start[0])])
        path, _, _ = BeamSearch._trace(start, (0.5262458, 0.), (-1, -1),
                                       162., .8, 0., 1., 8, valid)
        self.assertGreater(math.dist(path[-1], start), 8.)
        self.assertTrue(valid[round(path[-1][1]), round(path[-1][0])])

    def test_rounding_recovery_does_not_allow_motion_deeper_into_wall(self):
        valid = Planner()._valid_centers(normal_room()['walkable'], 10.)
        start = (569.9974975585938, 409.65911865234375)
        path, _, _ = BeamSearch._trace(start, (0., 0.), (1, 1), 162., .8, 0., 1., 8, valid)
        self.assertTrue(all(math.dist(point, start) < 1e-5 for point in path))

    def test_start_inside_a_wide_obstacle_is_not_teleported_through_it(self):
        valid = np.ones((100, 100), dtype=bool)
        valid[30:70, 30:70] = False
        start = (50., 50.)
        path, _, _ = BeamSearch._trace(start, (0., 0.), (1, 0), 180., .8, 0., 1., 24, valid)
        self.assertTrue(all(point == start for point in path))

    def test_safe_start_cannot_cross_a_one_pixel_wall(self):
        valid = np.ones((100, 100), dtype=bool)
        valid[:, 50] = False
        path, _, _ = BeamSearch._trace((45., 50.), (0., 0.), (1, 0),
                                       180., .8, 0., 1., 24, valid)
        self.assertTrue(all(round(x) < 50 for x, _ in path))

    def test_planner_keeps_hazards_and_finds_an_actual_escape_from_wall_corner(self):
        world = normal_room()
        start = (569.9974975585938, 409.65911865234375)
        # The observed hostile hopper is approaching from above/left. A frozen
        # moving body is used here; this is not a claim to replay its state AI.
        hostile = Body(1, 530., 380., 60., 30., 13., 'enemy')
        planner = Planner()
        decision = planner.decide(start, [hostile], world['walkable'], 1/30,
                                  speed=162., player_radius=10., shot_walkable=world['shot_walkable'])
        self.assertGreater(max(math.dist(p, start) for p in decision.path), 8.)
        self.assertEqual(planner._search.last_report['routes_preserved'], 9)
        self.assertNotEqual(decision.move, (1, 0))


class LatencyDisplacementTests(unittest.TestCase):
    def test_scaled_observed_player_motion_uses_the_same_units_as_path_integration(self):
        enemy = Body(1, 100., 100., 60., 0., 10., 'enemy')
        # Two native displacement steps per sampled engine frame, measured by
        # position_a+position_b=2. The old unscaled call padded only 15 pixels.
        result = EngineMotion.compensate([enemy], .1, (3.*2., 0.))[0]
        self.assertAlmostEqual(result.latency_padding, 24.)

    def test_speed_bound_covers_acceleration_from_a_stationary_sample(self):
        enemy = Body(1, 100., 100., 60., 0., 10., 'enemy')
        result = EngineMotion.compensate([enemy], .1, (0., 0.), player_speed_bound=240.)[0]
        self.assertAlmostEqual(result.latency_padding, 30.)
        self.assertEqual(result.radius, enemy.radius)

    def test_legacy_call_keeps_existing_motion_and_activation_padding(self):
        hazard = Body(1, 100., 100., 60., 0., 10., 'hazard', start_after=.2)
        result = EngineMotion.compensate([hazard], .1, (1., 0.))[0]
        self.assertAlmostEqual(result.latency_padding, 9.)
        self.assertAlmostEqual(result.start_after, .1)


class ObservedWalkingTargetTests(unittest.TestCase):
    def predict(self,target=1,animation='WalkHori'):
        local={'type':1,'address':1,'x':100.,'y':200.,'vx':0.,'vy':0.}
        remote={'type':1,'address':2,'x':100.,'y':0.,'vx':0.,'vy':0.}
        enemy={'type':10,'address':3,'x':100.,'y':100.,'target':target,'animation':animation}
        snap={'entities':[local,remote,enemy],'players':[local,remote]}
        model={3:{'velocity':(90.,0.),'acceleration':(0.,0.),'turn_per_second':0.}}
        body=Body(3,100.,100.,90.,0.,13.,'enemy')
        return EngineMotion.apply(snap,local,[body],model)

    def test_walking_target_adds_only_soft_pursuit_and_keeps_measured_body(self):
        result=self.predict()
        self.assertEqual(result[0].kind,'enemy')
        warning=next(b for b in result if b.kind=='warning')
        self.assertGreater(warning.trajectory[1][1],100.)

    def test_observed_remote_target_is_not_replaced_with_local_player(self):
        warning=next(b for b in self.predict(target=2) if b.kind=='warning')
        self.assertLess(warning.trajectory[1][1],100.)

    def test_unknown_target_or_shoot_animation_does_not_invent_walking_pursuit(self):
        self.assertFalse(any(b.kind=='warning' for b in self.predict(target=0)))
        self.assertFalse(any(b.kind=='warning' for b in self.predict(animation='Shoot')))


class QueuedSpiderDestinationTests(unittest.TestCase):
    def test_regular_spider_idle_spacing_does_not_shrink_with_zero_velocity(self):
        e={'type':85,'variant':0,'address':3,'animation':'Idle'}
        s={'entities':[e],'enums':{'EntityType':{'ENTITY_SPIDER':85}}}
        actual=Body(3,118.12457,315.62704,0.,0.,13.,'enemy')
        result=EngineMotion.apply(s,{},[actual],{})
        self.assertEqual(result[0].radius,actual.radius)
        self.assertEqual(result[0].safety_buffer,120.)
        e['variant']=1
        self.assertEqual(EngineMotion.apply(s,{},[actual],{})[0].safety_buffer,0.)

    def test_idle_spider_reserves_native_destination_before_dash_velocity_exists(self):
        spider={'type':85,'variant':0,'address':3,'x':233.76945,'y':316.43466,
                'vx':.004,'vy':-.00135,'radius':13.,'collision_damage':1.,
                'state_frame':15,'animation':'Idle','target_position':(294.4736,407.)}
        snap={'room':1,'frame':143,'entities':[spider],
              'enums':{'EntityType':{'ENTITY_SPIDER':85}}}
        result=EngineMotion().update(snap,{'x':295.9,'y':393.5},nominal_speed=5.4)
        reserve=next(b for b in result['hazards'] if b.kind=='hazard')
        self.assertEqual((reserve.x,reserve.y),(294.4736,407.))
        self.assertLessEqual(reserve.start_after,1/30)
        self.assertTrue(any(b.kind=='warning' and b.end==(294.4736,407.) for b in result['hazards']))

    def test_zero_destination_or_other_type_does_not_invent_a_spider_dash(self):
        e={'type':10,'address':3,'x':100.,'y':100.,'vx':0.,'vy':0.,'radius':13.,
           'collision_damage':1.,'animation':'Idle','target_position':(200.,200.)}
        s={'room':1,'frame':1,'entities':[e],'enums':{'EntityType':{'ENTITY_SPIDER':85}}}
        self.assertFalse(EngineMotion().update(s,{},nominal_speed=5.)['hazards'])
        e.update(type=85,target_position=(0.,0.))
        self.assertFalse(EngineMotion().update(s,{},nominal_speed=5.)['hazards'])


class NativeLeaperLandingTests(unittest.TestCase):
    def test_committed_hop_reserves_actual_destination_before_contact(self):
        e={'type':54,'variant':0,'address':3,'x':314.13666,'y':205.86336,
           'vx':8.3299,'vy':-8.3299,'radius':13.,'collision_damage':1.,
           'animation':'Hop','animation_frame':13,'target_position':(360.,160.)}
        s={'room':1,'frame':67,'entities':[e],'enums':{'EntityType':{'ENTITY_LEAPER':54}}}
        result=EngineMotion().update(s,{'x':376.7439,'y':150.0077},nominal_speed=5.4)
        self.assertTrue(any(b.kind=='hazard' and (b.x,b.y)==(360.,160.) and
                            b.start_after==0 for b in result['hazards']))
        e['animation']='Idle'
        self.assertFalse(EngineMotion().update(s,{},nominal_speed=5.4)['hazards'])


class DiskMaskEquivalenceTests(unittest.TestCase):
    def test_view_intersection_matches_full_disk_on_holes_and_room_edges(self):
        rng=np.random.default_rng(32024)
        mask=rng.random((31,43))>.025
        for radius in (0.,.6,1.,2.5,10.,50.):
            expected=np.ones_like(mask)
            for y,x in np.ndindex(mask.shape):
                expected[y,x]=all(0<=y+dy<mask.shape[0] and 0<=x+dx<mask.shape[1] and mask[y+dy,x+dx]
                    for dy in range(-math.ceil(radius),math.ceil(radius)+1)
                    for dx in range(-math.ceil(radius),math.ceil(radius)+1)
                    if dx*dx+dy*dy<=radius*radius)
            np.testing.assert_array_equal(Planner()._valid_centers(mask,radius),expected)


class PlayerPositionUnitTests(unittest.TestCase):
    def calibrated(self):
        motion=EngineMotion();frame=0;x=100.
        motion.observe(frame,(3.,0.),None,5.4,position=(x,200.))
        for gap in (2,4,6):
            frame+=gap;x+=6.*gap
            motion.observe(frame,(3.,0.),None,5.4,position=(x,200.))
        return motion

    def test_stable_units_are_observed_across_actual_two_to_six_frame_gaps(self):
        motion=self.calibrated()
        self.assertAlmostEqual(motion.position_a+motion.position_b,2.)
        self.assertFalse(motion.ready)
        self.assertFalse(motion.position_rows)

    def test_room_reset_preserves_units_but_discards_teleport_and_inertia_samples(self):
        motion=self.calibrated();motion._entities={3:{'frame':12}}
        motion.reset_room()
        motion.observe(13,(3.,0.),None,5.4,position=(320.,160.))
        self.assertAlmostEqual(motion.position_a+motion.position_b,2.)
        self.assertFalse(motion.position_rows)
        self.assertFalse(motion._entities)
        motion.reset()
        self.assertEqual(motion.position_a+motion.position_b,1.)

    def test_native_grid_contact_preserves_free_fit_and_breaks_sample_chains(self):
        motion=self.calibrated();motion.ready=True;motion.speed=4.4
        before=(len(motion.rows),len(motion.position_rows),motion.position_a,motion.position_b)
        for frame in range(13,29):
            result=motion.update({'frame':frame,'room':1,'entities':[]},
                {'x':200.,'y':200.,'vx':.04,'vy':0.,'grid_colliding':True},
                nominal_speed=5.4,input_vector=(1,0))
        self.assertFalse(result['player_fit_eligible'])
        self.assertEqual((len(motion.rows),len(motion.position_rows),motion.position_a,motion.position_b),before)
        self.assertEqual(motion.speed,4.4)
        motion.update({'frame':29,'room':1,'entities':[]},{'x':210.,'y':200.,'vx':3.,'vy':0.},
                      nominal_speed=5.4,input_vector=(1,0))
        self.assertEqual(len(motion.rows),before[0])
        self.assertEqual(len(motion.position_rows),before[1])

    def test_room_edge_clamping_is_excluded_even_when_native_grid_flag_is_false(self):
        state={'frame':1,'room':1,'grid_width':15,'grid_height':9,'grid_cells':[],'entities':[]}
        player={'x':302.,'y':150.01,'vx':0.,'vy':.01,'radius':10.,'grid_colliding':False}
        motion=EngineMotion();motion.nominal_speed=5.4;motion.ready=True;motion.speed=4.4
        for frame in range(1,18):
            state['frame']=frame
            result=motion.update(state,player,nominal_speed=5.4,input_vector=(0,-1))
        self.assertFalse(result['player_fit_eligible'])
        self.assertEqual(motion.speed,4.4);self.assertFalse(motion.rows)
        self.assertTrue(motion.update(state,player,nominal_speed=5.4,input_vector=(0,1))['player_fit_eligible'])


class NativeTickingSpiderLandingTests(unittest.TestCase):
    def test_backward_launch_reserves_observed_destination_without_retargeting(self):
        e={'type':250,'address':3,'x':696.7036,'y':184.3282,'vx':-4.4777,'vy':-.5643,
           'radius':13.,'collision_damage':1.,'animation':'Jump','animation_frame':5.,
           'target_position':(843.8812,183.0841)}
        snap={'room':1,'frame':537,'entities':[e],
              'enums':{'EntityType':{'ENTITY_TICKING_SPIDER':250}}}
        result=EngineMotion().update(snap,{'x':100.,'y':300.},nominal_speed=5.4)
        reserve=next(b for b in result['hazards'] if (b.x,b.y)==e['target_position'])
        self.assertEqual(reserve.kind,'hazard')
        self.assertLess(reserve.start_after,.25)
        self.assertTrue(any(b.kind=='warning' and b.end==e['target_position'] for b in result['hazards']))
        e['target_position']=(0.,0.)
        self.assertFalse(any(b.end for b in EngineMotion().update(snap,{},nominal_speed=5.4)['hazards']))


class RetreatTerrainCacheTests(unittest.TestCase):
    def test_cached_geometry_rechecks_all_new_hazards_and_rebuilds_for_new_terrain(self):
        from engine_retreat import EngineRetreat
        mask=normal_room()['walkable'];cache={}
        bodies=[Body(1,320.,280.,0.,0.,25.,'enemy')]
        EngineRetreat.prepare(mask,bodies,10.,162.,terrain_cache=cache)
        topology=cache['topology']
        bodies=[Body(1,80.,160.,60.,0.,25.,'enemy'),Body(2,480.,280.,0.,-60.,40.,'hazard')]
        cached=EngineRetreat.prepare(mask,bodies,10.,162.,terrain_cache=cache)
        reference=EngineRetreat.prepare(mask,bodies,10.,162.)
        self.assertIs(cache['topology'],topology)
        self.assertEqual(cached._layers,reference._layers)
        self.assertEqual(cached._depth,reference._depth)
        self.assertEqual(cached._space,reference._space)
        changed=mask.copy();changed[240:320,300:340]=False
        EngineRetreat.prepare(changed,bodies,10.,162.,terrain_cache=cache)
        self.assertIs(cache['topology'][0],changed)


if __name__ == '__main__':
    unittest.main()
