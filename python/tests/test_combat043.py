"""Keep body collision distinct from latency-envelope contact under pressure."""
import json
from pathlib import Path
from dataclasses import replace
import unittest
import numpy as np

from engine_search import HazardAtlas
from planner import Body

SOURCE=Path(__file__).parent


class RecordedCollisionPriorityTests(unittest.TestCase):
    def replay(self,name):
        from test_combat039 import RecordedCombatTests
        helper=RecordedCombatTests();helper.cases=lambda:json.loads((SOURCE/'regression_data/combat043.json').read_text(encoding='utf-8'))
        return helper.replay(name)

    def test_boss_clones_are_evaluated_without_silently_dropping_envelope_risk(self):
        snap,u=self.replay('damage-5-lead-12');search=u['search']
        self.assertEqual(snap['frame'],4165)
        self.assertEqual(search['candidate_pursuit_bodies'],2)
        self.assertTrue(search['crowd_pressure'])
        self.assertGreater(search['latency_envelope_hits'],0)
        self.assertEqual(search['latency_envelope_hits'],search['hits'])
        self.assertFalse(search['predicted_safe'])
        self.assertEqual(search['collision_policy'],'geometry_then_guarded_egress_then_future_envelope')
        atlas=HazardAtlas([replace(b,latency_padding=0) for b in u['world']['bodies']],u['world']['player_radius'])
        actual=atlas.measure(np.asarray([u['decision'].path]),np.asarray([u['world']['player_position']]),0,
            full_paths=np.asarray([u['decision'].path]),player_start=u['world']['player_position'])
        self.assertEqual(actual[0][0],search['geometry_hits'])
        self.assertTrue(all(u['world']['walkable'][round(y),round(x)] for x,y in u['decision'].path))

    def test_close_jump_case_reduces_geometry_exposure_frames_without_removing_margin(self):
        snap,u=self.replay('damage-4-lead-1')
        self.assertEqual(u['search']['geometry_hits'],3) # old selected route: 6
        self.assertGreater(u['search']['latency_envelope_hits'],u['search']['geometry_hits'])
        self.assertTrue(any(b.latency_padding>0 for b in u['world']['bodies']))


class GeometryMeasurementTests(unittest.TestCase):
    def test_candidate_pursuit_uses_the_whole_prefix_and_matches_segmented_measurement(self):
        bodies=[Body(1,200,100,-120,0,8,'hazard',pursuit_speed=120),
                Body(2,100,200,0,-120,8,'hazard',pursuit_speed=120)]
        atlas=HazardAtlas(bodies,10)
        full=np.array([[(100.,100.)]*24,[(100.-5*i,100.-5*i) for i in range(1,25)]])
        starts=np.array([(100.,100.)]*2)
        all_metrics=atlas.measure(full,starts,0,full_paths=full,player_start=(100.,100.))
        self.assertGreater(all_metrics[0][0],0);self.assertEqual(all_metrics[0][1],0)
        first=atlas.measure(full[:,:12],starts,0,full_paths=full[:,:12],player_start=(100.,100.))
        second=atlas.measure(full[:,12:],full[:,11],12,full_paths=full,player_start=(100.,100.))
        np.testing.assert_array_equal(first[0]+second[0],all_metrics[0])
        ref=atlas.measure(full,starts,0,reference=True,full_paths=full,player_start=(100.,100.))
        for got,want in zip(all_metrics,ref):np.testing.assert_allclose(got,want)

    def test_extra_metrics_match_independent_unpadded_swept_geometry(self):
        bodies=[Body(1,125,100,-20,0,8,latency_padding=25),
                Body(2,100,140,0,-25,5,'projectile',latency_padding=20),
                Body(3,90,90,0,0,4,'hazard',end=(150,90),end_velocity=(0,30),latency_padding=15),
                Body(4,100,100,0,0,2,'hazard',ring_radius=30,ring_growth=-20,latency_padding=12),
                Body(5,90,100,0,0,30,'warning',latency_padding=40)]
        paths=np.array([[(100+i,100.) for i in range(1,25)],[(100-i,100.) for i in range(1,25)]])
        starts=np.array([(100.,100.),(100.,100.)])
        padded=HazardAtlas(bodies,10);raw=HazardAtlas([replace(b,latency_padding=0) for b in bodies],10)
        result=padded.measure(paths,starts,0,include_geometry=True);expected=raw.measure(paths,starts,0)
        for got,want in zip(result[7:],expected[:3]):np.testing.assert_allclose(got,want,atol=1e-9)
        legacy=padded.measure(paths,starts,0)
        for got,want in zip(result[:7],legacy):np.testing.assert_allclose(got,want,atol=1e-9)

    def test_empty_atlas_and_soft_warning_do_not_invent_geometry_collisions(self):
        paths=np.array([[(100.,100.)]*4]);starts=np.array([(100.,100.)])
        for bodies in ([],[Body(1,100,100,0,0,50,'warning',latency_padding=100)]):
            metrics=HazardAtlas(bodies,10).measure(paths,starts,0,include_geometry=True)
            self.assertEqual(len(metrics),10);self.assertEqual(metrics[7][0],0)


class RecordedPursuitModelTests(unittest.TestCase):
    def cases(self):return json.loads((SOURCE/'regression_data/combat043.json').read_text(encoding='utf-8'))

    def test_big_spider_and_migraine_keep_native_destinations_before_contact(self):
        from engine_motion import EngineMotion
        for name,kind in (('damage-1-lead-6',94),('damage-3-lead-12',869)):
            s=self.cases()[name]['snapshot'];s['enums']=json.loads((Path(__file__).resolve().parents[1]/'src/engine_enums.json').read_text(encoding='utf-8'))
            r=EngineMotion().update(s,s['local_player'],nominal_speed=5.4)
            committed=[e for e in s['entities'] if e['type']==kind and e.get('target_position')!=[0.,0.]]
            self.assertTrue(committed)
            for e in committed:
                self.assertTrue(any(b.id==e['address'] and (b.x,b.y)==tuple(e['target_position']) and b.kind=='hazard' for b in r['hazards']))

    def test_offline_haunt_clones_are_distinct_chasers_and_unknown_online_target_is_soft(self):
        import copy
        from engine_motion import EngineMotion
        from engine_world import EngineWorld
        original=self.cases()['damage-5-lead-12']['snapshot']
        for target_mode in ('offline','unknown','remote'):
            s=copy.deepcopy(original);s['enums']=json.loads((Path(__file__).resolve().parents[1]/'src/engine_enums.json').read_text(encoding='utf-8'))
            if target_mode!='offline':s['players'].append({**s['players'][0],'address':123,'x':100.,'y':100.})
            if target_mode=='remote':
                for e in s['entities']:
                    if e['type']==260 and e['variant']==10:e['target']=123
            motion=EngineMotion();models=motion.update(s,s['local_player'],nominal_speed=5.4)['models']
            world=EngineWorld().update(s,s['local_player']);bodies=motion.apply(s,s['local_player'],world['bodies'],models)
            clones={e['address'] for e in s['entities'] if e['type']==260 and e['variant']==10}
            self.assertEqual(len(clones),2)
            local={b.id for b in bodies if b.pursuit_speed>0}
            if target_mode!='offline':
                self.assertFalse(local)
                expected='warning' if target_mode=='unknown' else 'hazard'
                self.assertTrue(all(any(b.id==i and b.kind==expected for b in bodies) for i in clones))
            else:self.assertEqual(local,clones)


class EscapePocketTests(unittest.TestCase):
    def test_pixel_valid_pocket_without_graph_exit_is_not_scored_as_safe_open_space(self):
        from engine_retreat import EngineRetreat
        from planner import Planner
        mask=np.zeros((500,650),dtype=bool);mask[140:400,60:360]=True;mask[180:194,360:460]=True
        valid=Planner()._valid_centers(mask,5.)
        self.assertTrue(valid[187,430])
        field=EngineRetreat.prepare(mask,[Body(1,100,350,0,0,8)],5.,130.,valid_centers=valid)
        self.assertIsNotNone(field)
        self.assertGreater(field.cost((430.,187.),require_exit=True),field.cost((220.,240.),require_exit=True))
        self.assertGreater(field.cost((430.,187.),require_exit=True),0)


if __name__=='__main__':unittest.main()
