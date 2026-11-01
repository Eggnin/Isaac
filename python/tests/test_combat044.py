"""043 run regression: airborne target loss must not disable evasion."""
import copy
import json
from pathlib import Path
import unittest

from engine_motion import EngineMotion

SOURCE=Path(__file__).parent


class RecordedAirborneEvasionTests(unittest.TestCase):
    def cases(self):return json.loads((SOURCE/'regression_data/combat044.json').read_text(encoding='utf-8'))

    def replay(self,name):
        from test_combat039 import RecordedCombatTests
        helper=RecordedCombatTests();helper.cases=self.cases
        return helper.replay(name)

    def model(self,name):
        snap=self.cases()[name]['snapshot'];snap['enums']=json.loads((Path(__file__).resolve().parents[1]/'src/engine_enums.json').read_text(encoding='utf-8'))
        return snap,EngineMotion().update(snap,snap['local_player'],nominal_speed=5.4)

    def test_real_airborne_snapshots_evade_without_a_navigation_goal(self):
        for name in ('damage-3-lead-6','damage-3-lead-1','damage-4-lead-6','damage-4-lead-1'):
            with self.subTest(case=name):
                snap,u=self.replay(name)
                self.assertFalse(u['world']['targets'])
                self.assertTrue(u['world']['bodies'])
                self.assertEqual(u['route']['status'],'dodging_residual_danger')
                self.assertEqual(u['route']['evasion_mode'],'hazard_search_without_goal')
                self.assertEqual(u['search']['backend'],'external_numpy_beam')
                self.assertNotEqual(u['decision'].move,(0,0))
                self.assertGreaterEqual(len(u['decision'].path),24)
                self.assertTrue(all(u['world']['walkable'][round(y),round(x)] for x,y in u['decision'].path))

    def test_spider_jump_reserves_native_destination_before_observed_landing_damage(self):
        snap,r=self.model('damage-3-lead-12');spider=next(e for e in snap['entities'] if e['type']==215)
        reserve=next(b for b in r['hazards'] if b.id==spider['address'] and b.kind=='hazard' and
                     (b.x,b.y)==tuple(spider['target_position']))
        observed_damage_delay=(864-snap['frame'])/30
        self.assertGreater(reserve.start_after,0)
        self.assertLess(reserve.start_after,observed_damage_delay)
        self.assertGreater(reserve.end_after,observed_damage_delay)
        _,u=self.replay('damage-3-lead-12');self.assertNotEqual(u['decision'].move,(0,0))

    def test_both_spider_walk_types_keep_native_committed_destination(self):
        snap,r=self.model('damage-1-lead-6')
        actors=[e for e in snap['entities'] if e['type'] in (215,250) and e['animation']=='Walk']
        self.assertEqual(len(actors),2)
        for e in actors:
            self.assertTrue(any(b.id==e['address'] and b.kind=='hazard' and
                (b.x,b.y)==tuple(e['target_position']) for b in r['hazards']))

    def test_widow_braking_keeps_observed_location_instead_of_extrapolating_only(self):
        snap,r=self.model('damage-4-lead-1');boss=next(e for e in snap['entities'] if e['type']==100)
        self.assertEqual(boss['target_position'],[0.,0.])
        reserve=[b for b in r['hazards'] if b.id==boss['address'] and b.kind=='hazard' and b.vx==b.vy==0 and
                 (b.x,b.y)==(boss['x'],boss['y'])]
        self.assertTrue(reserve);self.assertTrue(any(b.start_after==0 and b.end_after>=.6 for b in reserve))
        # The existing moving jump reservation is retained as another branch.
        self.assertTrue(any(b.id==boss['address'] and (b.vx!=0 or b.vy!=0) for b in r['hazards']))

    def test_widow_takeoff_does_not_invent_a_stationary_landing_at_player(self):
        snap,r=self.model('damage-4-lead-12');boss=next(e for e in snap['entities'] if e['type']==100)
        self.assertLess(boss['animation_frame'],14)
        self.assertFalse(any(b.id==boss['address'] and b.vx==b.vy==0 and
            b.start_after==0 and b.kind=='hazard' for b in r['hazards']))


if __name__=='__main__':unittest.main()
