"""Known pursuit without target pointers, plus native death-blast reservations."""
import copy
import json
from pathlib import Path
import unittest

from engine_behaviors import active_pursuit_profile
from engine_motion import EngineMotion
from engine_world import EngineWorld

ROOT=Path(__file__).resolve().parents[1]


class NativeBehaviorTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.cases=json.loads((ROOT/'tests/regression_data/combat048.json').read_text(encoding='utf-8'))
        cls.enums=json.loads((ROOT/'src/engine_enums.json').read_text(encoding='utf-8'))

    def native(self,name,lead=12):
        case=self.cases[name];frame=case['damage']['frame']
        row=max((r for r in case['sequence'] if r['snapshot']['frame']<=frame-lead),
                key=lambda r:r['snapshot']['frame'])
        s=copy.deepcopy(row['snapshot']);s['enums']=self.enums
        seed=case['damage']['engine_damage_attempts'][0]['source_entity']['InitSeed']
        e=next(e for e in s['entities'] if e.get('seed')==seed)
        return s,e

    def bodies(self,s):
        p=s['local_player'];motion=EngineMotion();result=motion.update(s,p)
        world=EngineWorld().update(s,p)
        return motion.apply(s,p,world['bodies'],result['models']),result

    def test_native_chaser_uses_candidate_pursuit_without_dropping_measured_path(self):
        for name in ('long_legs_corner','long_legs_turn'):
            with self.subTest(name=name):
                s,e=self.native(name);self.assertEqual(e['target'],0)
                bodies,motion=self.bodies(s)
                self.assertTrue(any(b.id==e['address'] and b.pursuit_speed>0 and b.kind=='hazard' for b in bodies))
                self.assertTrue(any(b.id==e['address'] and b.kind=='enemy' and b.trajectory is None for b in bodies))
                self.assertTrue(any(p['entity']==e['address'] and p['target_basis']=='single_available_player'
                                    for p in motion['pursuit_profiles']))

    def test_unknown_multiplayer_target_stays_soft_and_remote_target_is_respected(self):
        for mode in ('unknown','remote'):
            with self.subTest(mode=mode):
                s,e=self.native('long_legs_turn')
                remote={**s['players'][0],'address':123456,'x':400.,'y':200.}
                s['players'].append(remote)
                if mode=='remote':e['target']=remote['address']
                bodies,_=self.bodies(s)
                branches=[b for b in bodies if b.id==e['address'] and b.trajectory is not None]
                self.assertTrue(branches)
                self.assertFalse(any(b.pursuit_speed>0 for b in branches))
                self.assertTrue(any(b.kind==('warning' if mode=='unknown' else 'hazard') for b in branches))

    def test_profile_requires_verified_version_variant_and_active_phase(self):
        s,e=self.native('long_legs_turn')
        self.assertIsNotNone(active_pursuit_profile(s,e))
        for reason in ('version','variant','attack','missing_enum'):
            with self.subTest(reason=reason):
                ss=copy.deepcopy(s);ee=next(x for x in ss['entities'] if x['address']==e['address'])
                if reason=='version':ss['profile']['engine_version']='unverified'
                elif reason=='variant':ee['variant']=1
                elif reason=='attack':ee['animation']='Attack'
                else:ss['enums']={'EntityType':{}}
                self.assertIsNone(active_pursuit_profile(ss,ee))
                bodies,_=self.bodies(ss)
                self.assertFalse(any(b.id==e['address'] and b.pursuit_speed>0 for b in bodies))

    def test_native_ticking_spider_is_reserved_as_explosive_before_and_after_death(self):
        s,e=self.native('ticking_spider')
        world=EngineWorld();p=s['local_player']
        before=world.update(s,p)
        self.assertTrue(any(b.id==e['address'] and b.kind=='hazard' and b.radius>=80 for b in before['bodies']))
        self.assertEqual(next(t for t in before['targets'] if t['address']==e['address'])['blast_radius'],80)
        s['frame']+=1;e['dead']=True
        after=world.update(s,p)
        self.assertTrue(any(b.id==e['address'] and b.radius>=80 and b.kind=='hazard' for b in after['bodies']))
        s['frame']+=1;s['entities']=[x for x in s['entities'] if x['address']!=e['address']]
        removed=world.update(s,p)
        self.assertTrue(any(b.id==e['address'] and b.radius>=80 and b.kind=='hazard' for b in removed['bodies']))

    def test_friendly_ticking_spider_does_not_add_hostile_explosion(self):
        s,e=self.native('ticking_spider');e['flags']|=EngineWorld.FRIENDLY
        world=EngineWorld().update(s,s['local_player'])
        self.assertFalse(any(b.id==e['address'] and b.kind=='hazard' and b.radius>=80 for b in world['bodies']))


if __name__=='__main__':unittest.main()
