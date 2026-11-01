"""Offline shot traits, global target reachability and batched geometry."""
import math
import struct
import unittest
import numpy as np
from engine_aim import EngineAim
from engine_weapons import make_profile
from engine_world import EngineWorld
from firing_navigation import FiringNavigation
from planner import Planner,Body
from shot_geometry import lines_clear,channel_mask
from engine_reader import EngineReader
import test_engine_weapons as weapons_fixture
import test_engine_world as world_fixture


class TearEffectTests(unittest.TestCase):
    def setUp(self):
        self.player=weapons_fixture.player();self.player.update(x=80.,y=80.)
        self.target={'address':2,'x':200.,'y':80.,'radius':10.,'vx':0.,'vy':0.}
        self.normal=np.ones((320,340),dtype=bool);self.normal[:,120:130]=False
        self.spectral=np.ones_like(self.normal)
        self.blocker={'address':3,'x':150.,'y':80.,'radius':10.}

    def profile(self,flags):
        self.player['tear_flags']=flags
        return make_profile(self.player,[])

    def fire(self,flags,blockers=()):
        aim=EngineAim();profile=self.profile(flags)
        return aim.choose(profile,self.player,[self.target],self.normal,[(80.,80.)],2,blockers,self.spectral)

    def test_spectral_and_piercing_have_independent_obstructions(self):
        self.assertIsNone(self.fire(0))
        self.assertEqual(self.fire(1),'right')
        self.assertIsNone(self.fire(2)) # piercing does not pass a rock
        self.assertIsNone(self.fire(1,[self.blocker])) # spectral does not pass bodies
        self.assertEqual(self.fire(3,[self.blocker]),'right')

    def test_spectral_still_obeys_room_wall_mask(self):
        self.spectral[:,160:170]=False
        self.assertIsNone(self.fire(1))

    def test_position_cost_uses_same_tear_effect_rules(self):
        def cost(flags,blockers=()):
            return EngineAim.position_cost(self.profile(flags),self.player,[self.target],(80,80),2,
                                           blockers,self.normal,self.spectral)
        self.assertGreater(cost(0),cost(1))
        self.assertGreater(cost(1,[self.blocker]),cost(3,[self.blocker]))
        self.assertEqual(cost(0),cost(2))

    def test_flags_are_native_player_scoped_not_random_tears_or_other_players(self):
        self.player['tear_flags']=(1<<100)|3
        familiar={'address':400,'type':3,'variant':1,'x':100.,'y':90.,
                  'familiar':{'owner':100,'weapon':weapons_fixture.channel(1)}}
        profile=make_profile(self.player,[familiar])
        self.assertEqual(profile['weapons'][0]['tear_flags'],(1<<100)|3)
        self.assertFalse(profile['weapons'][1]['spectral'])
        self.assertFalse(profile['weapons'][1]['body_pass'])
        self.player.pop('tear_flags')
        random_tear={'address':900,'type':2,'parent':100,'tear':{'flags':3}}
        self.assertFalse(make_profile(self.player,[random_tear])['weapons'][0]['spectral'])

    def test_piercing_scores_multiple_intersections(self):
        targets=[dict(self.target,x=80.,y=170.,address=4),dict(self.target,x=80.,y=240.,address=5),self.target]
        aim=EngineAim();profile=self.profile(2)
        clear=np.ones_like(self.normal)
        self.assertEqual(aim.choose(profile,self.player,targets,clear,[(80.,80.)],2),'down')

    def test_world_spectral_mask_does_not_change_movement_or_ordinary_shots(self):
        cells=[{'index':4*15+col,'collision':collision,'type':2,'variant':0,'state':0}
               for col,collision in ((6,3),(7,4))]
        world=EngineWorld().update(world_fixture.snapshot(grid_cells=cells),world_fixture.player())
        self.assertFalse(world['walkable'][280,280]);self.assertFalse(world['shot_walkable'][280,280])
        self.assertTrue(world['spectral_shot_walkable'][280,280])
        self.assertFalse(world['spectral_shot_walkable'][280,320])

    def test_reader_preserves_all_128_flag_bits_and_neighbor_range(self):
        reader=object.__new__(EngineReader)
        reader._vector=lambda *args:b'';reader._weapon=lambda *args:None
        raw=bytearray(0x2ea0);flags=(1<<100)|3
        raw[0x1488:0x1498]=flags.to_bytes(16,'little');struct.pack_into('<f',raw,0x1480,320.)
        entity={'type':1}
        reader._entity_details(100,bytes(raw),entity)
        self.assertEqual(entity['tear_flags'],flags)
        self.assertEqual(entity['stats']['tear_range'],320.)


class TargetRouteTests(unittest.TestCase):
    def test_unreachable_near_enemy_loses_to_reachable_far_enemy_even_with_priority(self):
        mask=np.ones((340,340),dtype=bool);mask[:,140:160]=False
        enemies=[Body(1,200.,100.,0,0,10,'target'),Body(2,70.,280.,0,0,10,'target')]
        planner=Planner()
        result=planner.decide((80,100),enemies,mask,1/30,player_radius=5,attack_range=90,
                              target_info={1:{'priority':100,'health':1,'player_damage':3.5}})
        self.assertEqual(result.target,2)
        routes={r['target']:r for r in planner._search.last_report['target_routes']}
        self.assertFalse(routes[1]['reachable']);self.assertTrue(routes[2]['reachable'])

    def test_detour_cost_is_compared_for_all_targets(self):
        mask=np.ones((340,340),dtype=bool);mask[0:290,120:140]=False
        enemies=[Body(1,170.,160.,0,0,10,'target'),Body(2,80.,280.,0,0,10,'target')]
        planner=Planner()
        result=planner.decide((80,160),enemies,mask,1/30,player_radius=5,attack_range=110)
        routes={r['target']:r for r in planner._search.last_report['target_routes']}
        self.assertTrue(routes[1]['reachable'])
        self.assertGreater(routes[1]['route_distance'],routes[2]['route_distance']+100)
        self.assertEqual(result.target,2)

    def test_spectral_firing_seeds_can_be_across_rock_but_movement_never_crosses_it(self):
        valid=np.ones((220,340),dtype=bool);valid[:,140:160]=False
        nav=FiringNavigation();nav.prepare(valid)
        target=Body(1,210,110,0,0,10,'target');start=nav.from_start((80,110)).ravel()
        plain=nav.seeds(target,[{'mask':valid,'range':180,'offset':(0,0),'blockers':()}])
        spectral=nav.seeds(target,[{'mask':np.ones_like(valid),'range':180,'offset':(0,0),'blockers':()}])
        self.assertFalse(np.any(np.isfinite(start[plain])))
        self.assertTrue(np.any(np.isfinite(start[spectral])))
        # Terrain graph remains disconnected, even for spectral tears.
        self.assertTrue(np.all(np.isinf(nav.from_start((80,110))[:,8:])))

    def test_coarse_graph_cannot_step_over_thin_wall(self):
        valid=np.ones((100,100),dtype=bool);valid[:,39:42]=False
        nav=FiringNavigation();nav.prepare(valid)
        self.assertTrue(np.all(np.isinf(nav.from_start((25,30))[:,2:])))


class BatchGeometryTests(unittest.TestCase):
    def test_ray_samples_match_scalar_reference_including_bounds_and_rounding(self):
        rng=np.random.default_rng(1030)
        mask=rng.random((220,340))>.015
        starts=rng.uniform((-20,-20),(360,240),(600,2));ends=rng.uniform((-20,-20),(360,240),(600,2))
        starts=np.vstack((starts,[(.5,1.5),(30.,40.),(30.,40.)]))
        ends=np.vstack((ends,[(7.5,6.5),(30.,40.),(140.,40.)]))
        expected=[EngineAim._line_clear(mask,a,b) for a,b in zip(starts,ends)]
        np.testing.assert_array_equal(lines_clear(mask,starts,ends),expected)

    def test_batched_navigation_connections_match_scalar(self):
        rng=np.random.default_rng(2030)
        valid=np.ones((240,340),dtype=bool);valid[80:150,120:180]=False
        nav=FiringNavigation();nav.prepare(valid)
        field=nav.distances([(0,0.)]);positions=rng.uniform((0,0),(339,239),(200,2))
        expected=[Planner._nav_cost(field,p,valid) for p in positions]
        np.testing.assert_allclose(nav.costs(field,positions),expected,rtol=1e-13,atol=1e-12)

    def test_batched_attack_cost_matches_independent_scalar_geometry(self):
        rng=np.random.default_rng(3030);player=weapons_fixture.player();player.update(x=80.,y=80.)
        target={'address':2,'x':200.,'y':150.,'radius':12.,'vx':-1.5,'vy':.5}
        normal=np.ones((320,340),dtype=bool);normal[40:210,120:135]=False
        spectral=np.ones_like(normal);spectral[:,300:]=False
        positions=rng.uniform((20,20),(300,290),(100,2))
        blocker={'x':160.,'y':140.,'radius':12.}
        from shot_geometry import body_blocks_segment
        for flags in (0,1,2,3):
            player['tear_flags']=flags;profile=make_profile(player,[]);expected=[]
            for origin in positions:
                time=min(1.,math.dist(origin,(target['x'],target['y']))/profile['projectile_speed'])
                point=(target['x']+target['vx']*30*time,target['y']+target['vy']*30*time)
                dx,dy=point[0]-origin[0],point[1]-origin[1]
                cost=min(12.,max(0,min(abs(dx),abs(dy))-14)*.04+max(0,math.hypot(dx,dy)-260)*.03)
                if not EngineAim._line_clear(spectral if flags&1 else normal,origin,point):cost+=8.
                if not flags&2 and body_blocks_segment(origin,point,[blocker]):cost+=8.
                expected.append(cost)
            actual=EngineAim.position_cost_batch(profile,player,[target],positions,2,[blocker],normal,spectral)
            np.testing.assert_allclose(actual,expected,rtol=1e-13,atol=1e-12)


if __name__=='__main__':unittest.main()
