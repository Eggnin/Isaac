import copy
import json
import math
from pathlib import Path
import unittest

import numpy as np

from engine_behaviors import active_pursuit_profile
from engine_motion import EngineMotion
from engine_search import HazardAtlas
from planner import Body

ROOT=Path(__file__).resolve().parents[1]


class SwarmInertiaTests(unittest.TestCase):
    def sample(self):
        case=json.loads((ROOT/'tests/regression_data/combat051.json').read_text(encoding='utf-8'))['swarm-before-corner']
        s=copy.deepcopy(next(r['snapshot'] for r in case['sequence'] if r['snapshot']['frame']==199))
        s['enums']=json.loads((ROOT/'src/engine_enums.json').read_text(encoding='utf-8'))
        return s,next(e for e in s['entities'] if e['type']==281)

    def test_inertial_parameters_are_version_variant_and_phase_scoped(self):
        s,e=self.sample()
        self.assertEqual(active_pursuit_profile(s,e).inertia,.92)
        for change in ('version','variant','animation','type'):
            with self.subTest(change=change):
                other=copy.deepcopy(s);entity=copy.deepcopy(e)
                if change=='version':other['profile']['engine_version']='unknown'
                elif change=='variant':entity['variant']=1
                elif change=='animation':entity['animation']='Death'
                else:entity['type']=85
                self.assertIsNone(active_pursuit_profile(other,entity))

    def test_swarm_turning_back_does_not_instantly_reverse_existing_velocity(self):
        s,e=self.sample();p=s['local_player']
        e.update(x=300.,y=280.,vx=5.,vy=0.)
        p.update(x=100.,y=280.,vx=0.,vy=0.)
        s['players']=[p];s['entities']=[e]
        motion=EngineMotion();observed=motion.update(s,p);model=observed['models'][e['address']]
        self.assertEqual(model['position_scale_source'],'native_profile')
        self.assertAlmostEqual(model['velocity'][0],120.)
        raw=Body(e['address'],300.,280.,150.,0.,e['radius'])
        branches=motion.apply(s,p,[raw],observed['models'])
        chase=next(b for b in branches if b.pursuit_inertia>0)
        self.assertGreater(chase.trajectory[1][0],300.)
        self.assertLess(chase.trajectory[24][0],chase.trajectory[8][0])
        self.assertTrue(any(b.trajectory is None for b in branches))
        self.assertEqual(chase.radius,raw.radius)

    def test_mixed_inertial_and_turn_rate_chasers_match_independent_reference(self):
        bodies=[]
        for i in range(20):
            bodies.append(Body(i,200+90*math.cos(i),250+90*math.sin(i),
                -120.,30.,8.,'hazard',pursuit_speed=125.,pursuit_turn=.3,
                pursuit_inertia=.92 if i%2 else 0.,pursuit_gain=12. if i%2 else 0.,
                pursuit_old_weight=.68 if i%2 else 0.))
        atlas=HazardAtlas(bodies,10.)
        paths=np.array([[(200.+i,250.) for i in range(1,25)],
            [(200.,250.-i) for i in range(1,25)]])
        for base in (0,8):
            starts=np.array([(200.,250.)]*2) if base==0 else paths[:,base-1,:]
            kwargs=dict(include_geometry=True,full_paths=paths,player_start=(200.,250.))
            actual=atlas.measure(paths[:,base:,:],starts,base,**kwargs)
            reference=atlas.measure(paths[:,base:,:],starts,base,reference=True,**kwargs)
            for a,b in zip(actual,reference):np.testing.assert_allclose(a,b,atol=1e-9)


if __name__=='__main__':unittest.main()
