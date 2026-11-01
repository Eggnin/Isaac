import copy
import json
import math
from pathlib import Path
import unittest
from unittest.mock import Mock
import numpy as np

from engine_egress import TimedEgress
from engine_motion import EngineMotion
from engine_search import BeamSearch,HazardAtlas
from planner import Body
from realtime_room_test import wait_native_fixture

ROOT=Path(__file__).resolve().parents[1]


class TimedEscapeTests(unittest.TestCase):
    def terrain(self):
        valid=np.zeros((500,650),bool);valid[150:410,70:570]=True
        return valid

    def test_faster_player_crosses_before_moving_enemy_closes_the_same_edge(self):
        valid=self.terrain();enemy=Body(1,160.,200.,-60.,0.,6.,'enemy')
        fast=TimedEgress().prepare(valid,[enemy],240.,0,8.)
        slow=TimedEgress().prepare(valid,[enemy],60.,0,8.)
        edge=((80.,200.),(120.,200.))
        self.assertIn(edge,fast.initial_transitions)
        self.assertNotIn(edge,slow.initial_transitions)
        self.assertLess(fast.step,slow.step)

    def test_corner_and_open_space_are_not_given_the_same_failed_retreat_score(self):
        field=TimedEgress().prepare(self.terrain(),[Body(1,1000.,300.,0.,0.,8.)],240.,0,10.)
        self.assertGreater(field.cost((80.,160.)),field.cost((320.,280.)))

    def test_timed_graph_never_crosses_a_solid_wall(self):
        valid=self.terrain();valid[:,310:370]=False
        field=TimedEgress().prepare(valid,[Body(1,1000.,300.,0.,0.,8.)],240.,0,10.)
        self.assertFalse(any(a[0]<310 and b[0]>370 or b[0]<310 and a[0]>370 for a,b in field.initial_transitions))

    def test_soft_chase_branch_cannot_remove_its_measured_body_from_escape_advice(self):
        actual=Body(1,100.,200.,0.,0.,10.,'enemy')
        warning=Body(1,100.,200.,100.,0.,10.,'warning',pursuit_speed=100.)
        field=TimedEgress().prepare(self.terrain(),[actual,warning],240.,0,8.)
        self.assertNotIn(((80.,200.),(120.,200.)),field.initial_transitions)

    def test_escape_advice_cannot_replace_a_geometry_clear_route_with_a_collision(self):
        class BadAdvice:
            metadata={}
            def cost(self,p,frames=0):return -p[0]*1000
        search=BeamSearch();mask=np.ones((500,650),bool)
        search.choose((100.,240.),mask,[Body(1,200.,240.,-70.,0.,8.,'enemy',latency_padding=100.)],
            10.,150.,(0.,0.),lambda p:0.,crowd_pressure=True,egress=BadAdvice())
        self.assertEqual(search.last_report['geometry_hits'],0)
        self.assertTrue(any(c['geometry_hits']>0 for c in search.last_report['candidate_summary']))

    def test_vectorized_twenty_chasers_match_independent_reference(self):
        bodies=[Body(i,200+100*math.cos(i),250+100*math.sin(i),-30.,20.,8.,
            'hazard',pursuit_speed=100.+i,pursuit_turn=.3+i*.01) for i in range(20)]
        atlas=HazardAtlas(bodies,10.)
        paths=np.array([[(200.+i,250.) for i in range(1,25)],[(200.,250.-i) for i in range(1,25)]])
        starts=np.array([(200.,250.)]*2)
        actual=atlas.measure(paths,starts,0,include_geometry=True,full_paths=paths,player_start=(200.,250.))
        expected=atlas.measure(paths,starts,0,reference=True,include_geometry=True,full_paths=paths,player_start=(200.,250.))
        for a,b in zip(actual,expected):np.testing.assert_allclose(a,b,atol=1e-9)


class SwarmTargetTests(unittest.TestCase):
    def test_native_swarm_profiles_do_not_invent_an_unknown_multiplayer_target(self):
        case=json.loads((ROOT/'tests/regression_data/combat051.json').read_text(encoding='utf-8'))['swarm-before-corner']
        base=next(r['snapshot'] for r in case['sequence'] if r['snapshot']['frame']==199)
        enums=json.loads((ROOT/'src/engine_enums.json').read_text(encoding='utf-8'))
        for mode in ('offline','unknown','remote'):
            with self.subTest(mode=mode):
                s=copy.deepcopy(base);s['enums']=enums;p=s['local_player']
                e=next(e for e in s['entities'] if e['type']==281)
                if mode!='offline':s['players'].append({**p,'address':123456,'x':500.,'y':300.})
                if mode=='remote':e['target']=123456
                motion=EngineMotion();models=motion.update(s,p)['models']
                b=Body(e['address'],e['x'],e['y'],e['vx']*30,e['vy']*30,e['radius'],'enemy')
                branches=motion.apply(s,p,[b],models)
                chase=[b for b in branches if b.trajectory is not None]
                self.assertTrue(chase)
                if mode=='offline':self.assertTrue(any(b.pursuit_speed>0 for b in chase))
                else:self.assertFalse(any(b.pursuit_speed>0 for b in chase))
                if mode=='unknown':self.assertTrue(any(b.kind=='warning' for b in chase))


class NativeRoomReadinessTests(unittest.TestCase):
    def worker(self):
        p={'address':1,'type':1,'controller_index':0,'controls_enabled':True}
        snapshot={'frame':20,'room_config':{'variant':991351},'local_player':p,'players':[p],
            'entities':[{'type':281}]*4,'difficulty':0}
        worker=Mock();worker.reader.snapshot.return_value=snapshot
        return worker,snapshot

    def test_native_fixture_is_verified_without_calling_menu_input(self):
        worker,_=self.worker();report={}
        wait_native_fixture(worker,{'variant':991351,'minimum_entities':{'281':4}},1.,report,Mock(),clock=lambda:0.)
        self.assertFalse(report['hard_mode_verified'])
        self.assertEqual(report['startup_mode'],'native_room_fixture')
        worker.input.set_keys.assert_not_called()

    def test_wrong_room_or_missing_monsters_fails_instead_of_testing_random_rooms(self):
        for reason in ('room','monsters'):
            with self.subTest(reason=reason):
                worker,snapshot=self.worker()
                if reason=='room':snapshot['room_config']['variant']=1
                else:snapshot['entities']=[]
                with self.assertRaises(RuntimeError):
                    wait_native_fixture(worker,{'variant':991351,'minimum_entities':{'281':4}},1.,{},Mock(),clock=lambda:0.)


if __name__=='__main__':unittest.main()
