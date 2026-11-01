"""Shared launch geometry, real grid barriers and repeated laser-birth damage."""
import copy
import json
from pathlib import Path
import tempfile
import unittest
from types import SimpleNamespace
import numpy as np

from engine_aim import EngineAim
from engine_grid_attack import ordinary_poop_candidates
from engine_warnings import Warnings
from firing_navigation import FiringNavigation
from planner import Body
from combat_evidence import CombatEvidence

SOURCE=Path(__file__).parent


class SharedFiringGeometryTests(unittest.TestCase):
    def test_ordinary_tear_does_not_receive_an_area_damage_allowance(self):
        player={'x':108.,'y':250.,'vx':0.,'vy':0.,'stats':{'tear_range':200.}}
        profile={'attack_range':200.,'projectile_speed':330.,'weapons':[{'owner':'player','type':1}]}
        target={'address':1,'x':120.,'y':160.,'radius':5.}
        self.assertEqual(EngineAim.channels(profile,player)[0]['area_radius'],0)
        self.assertIsNone(EngineAim().choose(profile,player,[target],np.ones((300,300),dtype=bool),[(108.,250.)],1))

    def test_small_target_between_coarse_lines_uses_fine_advisory_navigation(self):
        from planner import Planner
        mask=np.ones((300,300),dtype=bool)
        channel={'speed':330.,'range':200.,'instantaneous':False,'eye':True,'radius':2,'area_radius':0}
        target=Body(1,120,160,0,0,5)
        planner=Planner()
        decision=planner.decide((220.,240.),[target],mask,1/30,player_radius=10,attack_range=200.,
            stationary_attack_ready=False,navigation_shots=[{'mask':mask,'range':200.,'offset':(0,0),'blockers':(),'channel':channel}])
        self.assertEqual(planner._search.last_report['firing_navigation_step'],10)
        self.assertEqual(planner._search.last_report['firing_navigation_status'],'reachable')
        self.assertEqual(planner._search.last_report['hits'],0)
        self.assertTrue(all(mask[round(y),round(x)] for x,y in decision.path))

    def test_every_stationary_seed_passes_actual_aim_including_moving_target(self):
        for vx,vy in ((0.,0.),(.7,-.3)):
            with self.subTest(velocity=(vx,vy)):
                mask=np.ones((300,300),dtype=bool);nav=FiringNavigation();nav.prepare(mask)
                player={'x':0.,'y':0.,'vx':0.,'vy':0.,'stats':{'tear_range':200.}}
                profile={'attack_range':200.,'projectile_speed':330.,'weapons':[{'owner':'player','type':1}]}
                target={'address':1,'x':120.,'y':165.,'radius':5.,'vx':vx,'vy':vy}
                channel=EngineAim.channels(profile,player)[0]
                policy={'mask':mask,'range':200.,'offset':(0,0),'blockers':(),
                        'channel':{k:channel[k] for k in ('speed','range','instantaneous','eye','radius','area_radius')},'targets':{1:target}}
                lanes=nav.seeds(Body(1,120,165,vx*30,vy*30,5),[policy]);self.assertGreater(len(lanes),0)
                for index in lanes:
                    x,y=nav.points[index];p={**player,'x':x,'y':y}
                    self.assertIsNotNone(EngineAim().choose(copy.deepcopy(profile),p,[target],mask,[(x,y)],1),(vx,vy,x,y))
                if vx==vy==0:
                    false_lane=np.flatnonzero(np.all(nav.points==(130,270),axis=1))[0]
                    self.assertNotIn(false_lane,lanes)

    def test_walls_and_body_blockers_remain_part_of_firing_lanes(self):
        mask=np.ones((300,300),dtype=bool);mask[140:180,170:190]=False
        nav=FiringNavigation();nav.prepare(np.ones_like(mask))
        channel={'speed':330.,'range':200.,'instantaneous':False,'eye':True,'radius':2}
        target=Body(1,120,160,0,0,8)
        policies=[{'mask':mask,'range':200.,'offset':(0,0),'blockers':[{'x':120.,'y':220.,'radius':18}], 'channel':channel}]
        lanes=nav.seeds(target,policies)
        for point in ((230,150),(110,270)):
            index=np.flatnonzero(np.all(nav.points==point,axis=1))[0];self.assertNotIn(index,lanes)


class BarrierRouteTests(unittest.TestCase):
    def replay(self,name,change=None):
        from test_combat039 import RecordedCombatTests
        cases=json.loads((SOURCE/'regression_data/combat042.json').read_text(encoding='utf-8'))
        if change:change(cases[name]['snapshot'])
        helper=RecordedCombatTests();helper.cases=lambda:cases
        return helper.replay(name)

    def test_previously_unreachable_barrier_has_a_route_without_clearing_physics(self):
        for name in ('run-0035','run-0041'):
            with self.subTest(case=name):
                snap,u=self.replay(name);goal=u['search']['grid_objective']
                self.assertIsNotNone(goal);self.assertIsNone(u['decision'].target)
                self.assertEqual(u['search']['hits'],0)
                self.assertFalse(u['world']['walkable'][goal['y'],goal['x']])
                self.assertFalse(u['world']['shot_walkable'][goal['y'],goal['x']])
                self.assertTrue(all(u['world']['walkable'][round(y),round(x)] for x,y in u['decision'].path))
                if name=='run-0041':
                    self.assertEqual(u['decision'].fire,'down')
                    self.assertEqual(u['aim']['grid_attack']['grid_index'],goal['index'])
                    self.assertEqual(u['aim']['predicted_hit_channels'],0)

    def test_real_rock_enclosure_reports_failure_instead_of_inventing_a_route(self):
        snap,u=self.replay('run-0031')
        self.assertIsNone(u['search']['grid_objective'])
        self.assertEqual(u['search']['terrain_resolution'],'no_reachable_breakable_barrier')
        self.assertIsNone(u['decision'].fire)

    def test_tnt_and_modified_tears_disable_grid_objectives(self):
        snap,u=self.replay('run-0035');profile=u['profile'];p=snap['local_player']
        for kind in ('tnt','flags','companions','rock'):
            with self.subTest(kind=kind):
                s=copy.deepcopy(snap);player=copy.deepcopy(p);pr=copy.deepcopy(profile)
                if kind=='tnt':s['grid_cells'].append({'index':1,'type':12})
                elif kind=='flags':player['tear_flags']=1
                elif kind=='companions':pr['companions']=[{}]
                else:
                    for c in s['grid_cells']:
                        if c['type']==14:c['type']=2
                self.assertFalse(ordinary_poop_candidates(s,player,pr))


class RecordedLaserWarningTests(unittest.TestCase):
    def test_thirteen_damage_records_have_prebirth_lane_reservation(self):
        cases=json.loads((SOURCE/'regression_data/damage042.json').read_text(encoding='utf-8'))
        self.assertEqual(len(cases),13)
        for case in cases:
            before=case['before'];current=case['current'];boss=next(e for e in before['entities'] if e['type']==49)
            snap={**before,'enums':{'EntityType':{'ENTITY_GLUTTONY':49}}}
            rays=[b for b in Warnings().capture(snap,before['player']) if b.id==boss['address'] and b.kind=='projectile' and b.end]
            self.assertTrue(rays,(case['source'],before['frame']))
            gap=(current['frame']-before['frame'])/30
            self.assertTrue(all(b.start_after<=gap+1e-9 for b in rays))
            self.assertTrue(all(b.end_after>=gap for b in rays))
            self.assertTrue(any(e['type']==7 and (e.get('parent')==boss['address'] or e.get('spawner')==boss['address']) for e in current['entities']))

    def test_idle_dead_friendly_or_other_variant_does_not_invent_normal_laser(self):
        base={'address':1,'type':49,'variant':0,'animation':'Idle','animation_frame':20,'x':200.,'y':200.}
        for change in ({},{'dead':True,'animation':'Attack01Down'},{'variant':1,'animation':'Attack01Down'},{'flags':1<<29,'animation':'Attack01Down'}):
            snap={'room':1,'frame':1,'entities':[{**base,**change}], 'enums':{'EntityType':{'ENTITY_GLUTTONY':49}}}
            self.assertFalse(Warnings().capture(snap,{'x':200.,'y':400.}))


class DamageEvidenceTests(unittest.TestCase):
    def test_damage_retains_previous_prediction_and_engine_response_without_attribution(self):
        with tempfile.TemporaryDirectory() as directory:
            evidence=CombatEvidence(directory);p={'controller_index':0,'x':100.,'y':100.,'health_parts':{'red':6}}
            snap={'frame':10,'local_player':p,'entities':[],'keyboard_input':{'devices':[{'controller_index':0,'pressed_actions':[False]*8}]}}
            update={'world':{'targets':[],'bodies':[]},'search':{'hits':0,'first_collision_frame':999}}
            evidence.observe(snap,update,{'d'},{'generation':1})
            snap['frame']=13;p['health_parts']={'red':5};evidence.observe(snap,update,set(),{'generation':1})
            event=json.loads((Path(directory)/'damage-0001.json').read_text(encoding='utf-8'))
            self.assertEqual(event['source_attribution'],'unknown')
            self.assertEqual(event['temporal_evidence']['observation_gap_frames'],3)
            self.assertEqual(event['temporal_evidence']['previous_predicted_collision_frames'],0)
            self.assertIn('d',event['temporal_evidence']['engine_input_mismatch'])
            snap['frame']=17;p['health_parts']={'red':4};evidence.observe(snap,update,set(),{'generation':2});evidence.close()
            changed=json.loads((Path(directory)/'damage-0002.json').read_text(encoding='utf-8'))
            self.assertIsNone(changed['temporal_evidence']['previous_frame'])


if __name__=='__main__':unittest.main()
