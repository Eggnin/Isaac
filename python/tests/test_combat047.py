"""Regress native hazards that were absent from 046's collision forecast."""
import copy
import json
from pathlib import Path
import unittest

from engine_world import EngineWorld

ROOT=Path(__file__).resolve().parents[1]


class PreActivationHazardTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.cases=json.loads((ROOT/'tests/regression_data/combat047.json').read_text(encoding='utf-8'))
        cls.enums=json.loads((ROOT/'src/engine_enums.json').read_text(encoding='utf-8'))

    def native(self,name,lead=1):
        case=self.cases[name];frame=case['damage']['frame']
        row=max((r for r in case['sequence'] if r['snapshot']['frame']<=frame-lead),
                key=lambda r:r['snapshot']['frame'])
        snapshot=copy.deepcopy(row['snapshot']);snapshot['enums']=self.enums
        seed=case['damage']['engine_damage_attempts'][0]['source_entity']['InitSeed']
        entity=next(e for e in snapshot['entities'] if e.get('seed')==seed)
        return snapshot,entity

    def test_native_airborne_source_is_reserved_before_collision_class_changes(self):
        for lead in (6,3,1):
            with self.subTest(lead=lead):
                s,e=self.native('airborne_projectile',lead)
                self.assertEqual(e['collision_class'],0)
                world=EngineWorld().update(s,s['local_player'])
                body=next(b for b in world['bodies'] if b.id==e['address'] and b.kind=='projectile')
                self.assertEqual(body.radius,e['radius'])
                self.assertEqual(body.start_after,0.)
                self.assertTrue(any(n['entity']==e['address'] and n['hypothesis']=='projectile_collision_may_activate' for n in world['notes']))

    def test_non_hostile_and_enemy_only_projectiles_stay_excluded(self):
        s,e=self.native('airborne_projectile')
        for reason in ('cant_hit','enemy_only','friendly','dead','no_damage'):
            with self.subTest(reason=reason):
                ss=copy.deepcopy(s);ee=next(x for x in ss['entities'] if x['address']==e['address'])
                if reason=='cant_hit':ee['projectile']['flags']=self.enums['ProjectileFlags']['CANT_HIT_PLAYER']
                elif reason=='enemy_only':ee['collision_class']=3
                elif reason=='friendly':ee['parent']=ss['local_player']['address']
                elif reason=='dead':ee['dead']=True
                else:ee['collision_damage']=0
                world=EngineWorld().update(ss,ss['local_player'])
                self.assertFalse(any(b.id==ee['address'] and b.kind=='projectile' for b in world['bodies']))

    def test_native_fire_bomb_has_contact_danger_before_its_fuse_ends(self):
        s,e=self.native('hot_bomb')
        self.assertEqual(e['collision_damage'],0.)
        self.assertEqual(e['bomb']['countdown'],36)
        world=EngineWorld().update(s,s['local_player'])
        bodies=[b for b in world['bodies'] if b.id==e['address'] and b.kind=='hazard']
        self.assertTrue(any(b.start_after==0 and b.radius==e['radius'] for b in bodies))
        self.assertTrue(any(b.start_after>0 and b.radius==e['bomb']['explosion_radius'] for b in bodies))

    def test_hot_bomb_contact_does_not_apply_to_owned_or_inactive_bombs(self):
        s,e=self.native('hot_bomb')
        for reason in ('owned','ordinary','no_collision','dead'):
            with self.subTest(reason=reason):
                ss=copy.deepcopy(s);ee=next(x for x in ss['entities'] if x['address']==e['address'])
                if reason=='owned':ee['parent']=ss['local_player']['address']
                elif reason=='ordinary':ee['variant']=0
                elif reason=='no_collision':ee['collision_class']=0
                else:ee['dead']=True
                world=EngineWorld().update(ss,ss['local_player'])
                # Self-damaging explosions still matter, even for owned bombs.
                self.assertTrue(any(b.id==e['address'] and b.radius==80 and b.start_after>0 for b in world['bodies']))
                self.assertFalse(any(b.id==e['address'] and b.kind=='hazard' and b.start_after==0 for b in world['bodies']))


if __name__=='__main__':unittest.main()
