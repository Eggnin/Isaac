"""A native zero-risk forecast that actually shot TNT within its blast."""
import copy
import json
from pathlib import Path
import unittest

from engine_world import EngineWorld

ROOT=Path(__file__).resolve().parents[1]


class NativeTNTTests(unittest.TestCase):
    def test_native_movable_tnt_marks_attack_target_and_actual_player_area_as_explosive(self):
        case=json.loads((ROOT/'tests/regression_data/combat049.json').read_text(encoding='utf-8'))['movable_tnt']
        sample=max((r for r in case['sequence'] if r['snapshot']['frame']<=case['damage']['frame']-12),
                   key=lambda r:r['snapshot']['frame'])
        s=copy.deepcopy(sample['snapshot']);s['enums']=json.loads((ROOT/'src/engine_enums.json').read_text(encoding='utf-8'))
        seed=case['damage']['engine_damage_attempts'][0]['source_entity']['InitSeed']
        e=next(e for e in s['entities'] if e.get('seed')==seed)
        p=s['local_player'];world=EngineWorld().update(s,p)
        self.assertEqual(e['type'],292);self.assertEqual(e['variant'],0)
        target=next(t for t in world['targets'] if t['address']==e['address'])
        self.assertEqual(target['blast_radius'],80)
        hazards=[b for b in world['bodies'] if b.id==e['address'] and b.kind=='hazard' and b.radius>=80]
        self.assertTrue(hazards)
        self.assertTrue(any(((b.x-p['x'])**2+(b.y-p['y'])**2)**.5 < b.radius+p['radius'] for b in hazards))
        self.assertEqual(sample['decision']['fire'],'up')
        self.assertEqual(sample['decision']['search']['geometry_hits'],0)


if __name__=='__main__':unittest.main()
