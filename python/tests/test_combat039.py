import copy
import json
import math
from pathlib import Path
import queue
import tempfile
import time
import unittest
from unittest.mock import Mock

import numpy as np

from engine_app import ControlWorker
from engine_aim import EngineAim
from engine_grid_attack import blocking_poop_shot
from engine_search import BeamSearch
from planner import Planner
from room_mechanism import RoomMechanism
from run_journal import RunJournal
from test_regressions_032 import normal_room


SOURCE=Path(__file__).parent


class RecordedCombatTests(unittest.TestCase):
    def cases(self):return json.loads((SOURCE/'regression_data/combat039.json').read_text(encoding='utf-8'))

    def replay(self,name):
        case=self.cases()[name];s=copy.deepcopy(case['snapshot'])
        s['enums']=json.loads((Path(__file__).resolve().parents[1]/'src/engine_enums.json').read_text(encoding='utf-8'))
        with tempfile.TemporaryDirectory() as directory:
            control=Mock(requires_foreground=False);control._held=set()
            worker=ControlWorker(queue.Queue(),input_controller=control,dry_control=True,log_dir=Path(directory))
            worker.enabled=True;worker.last_frame=s['frame']-1;worker.idle_router=RoomMechanism()
            worker._log=Mock();worker.diagnostics.record=Mock()
            update=worker.motion.update;compensate=worker.motion.compensate
            def fixed(s,p,**kw):
                result=update(s,p,**kw);result.update(copy.deepcopy(case['motion']));return result
            def delayed(bodies,delay,*a,**kw):return compensate(bodies,case['motion']['local_delay_budget_ms']/1000,*a,**kw)
            worker.motion.update=fixed;worker.motion.compensate=delayed;s['_read_started']=time.perf_counter()
            try:return s,worker.process_snapshot(s,foreground=False,dt=1/30)
            finally:worker.shutdown()

    def test_recorded_wall_reversals_choose_a_forward_navigation_segment(self):
        for name in ('run-0005','run-0007'):
            with self.subTest(case=name):
                s,r=self.replay(name)
                self.assertNotEqual(r['decision'].move,(0,0))
                self.assertLess(r['search']['first_segment_progress_cost'],r['search']['start_progress_cost'])
                self.assertEqual(r['search']['hits'],0)
                self.assertLess(r['search']['selected_goal_cost'],r['search']['start_goal_cost'])
                self.assertEqual(r['search']['immediate_progress_frames'],4)
                self.assertTrue(all(r['world']['walkable'][round(y),round(x)] for x,y in r['decision'].path))

    def test_recorded_nest_enclosed_in_poop_shoots_only_the_observed_barrier(self):
        s,r=self.replay('run-0006')
        self.assertEqual(r['decision'].fire,'right')
        self.assertEqual(r['aim']['grid_attack']['grid_index'],66)
        self.assertEqual(r['aim']['predicted_hit_channels'],0)
        self.assertFalse(r['world']['walkable'][280,280])
        self.assertFalse(r['world']['shot_walkable'][280,280])

    def test_breach_does_not_shoot_rocks_tnt_or_modified_tears(self):
        s,r=self.replay('run-0006');profile=r['profile'];player=s['local_player']
        for change in ('rock','tnt','tear_flags','stoney'):
            with self.subTest(change=change):
                ss=copy.deepcopy(s);p=copy.deepcopy(player)
                if change=='rock':next(c for c in ss['grid_cells'] if c['index']==66)['type']=2
                elif change=='tnt':ss['grid_cells'].append({'index':1,'type':12})
                elif change=='tear_flags':p['tear_flags']=8
                world=dict(r['world'])
                if change=='stoney':world['shot_blockers']=[{'x':180.,'y':280.,'radius':13.}]
                self.assertIsNone(blocking_poop_shot(ss,p,profile,world,r['decision'],r['search']))

    def test_poop_collision_changes_are_native_progress_without_movement(self):
        with tempfile.TemporaryDirectory() as directory:
            clock=[0.];journal=RunJournal(directory,stall_seconds=10,clock=lambda:clock[0],semantic_progress=True)
            s={'frame':1,'level_stage':1,'room_index':84,'entities':[],'grid_cells':[{'index':66,'type':14,'variant':0,'state':0,'collision':3}]}
            p={'x':80.,'y':280.};journal.observe(s,p,{})
            clock[0]=9;s['grid_cells'][0]['collision']=0;journal.observe(s,p,{})
            clock[0]=18;self.assertIsNone(journal.timeout_reason());journal.close('test')

    def test_wall_blocked_attack_approach_can_cross_soft_comfort_band(self):
        s,r=self.replay('run-0003')
        self.assertIsNone(r['decision'].fire)
        self.assertEqual(r['search']['hits'],0)
        self.assertTrue(r['search']['blocked_shot_approach'])
        self.assertLess(r['search']['first_segment_progress_cost'],r['search']['start_progress_cost'])
        self.assertEqual(r['search']['progress_policy'],'reachable_navigation')

    def test_tear_inheritance_uses_robust_samples_and_current_player_velocity(self):
        aim=EngineAim();aim.inheritance.extend([1.2]*26+[0.05]*3+[2.2]*3)
        profile={'attack_range':260.,'projectile_speed':300.,'weapons':[{'owner':'player','type':1}]}
        player={'x':0.,'y':0.,'vx':2.,'vy':0.,'radius':10.,'stats':{'tear_range':260.}}
        target={'address':1,'x':0.,'y':-120.,'vx':0.,'vy':0.,'radius':8.}
        fire=aim.choose(profile,player,[target],np.ones((300,300),dtype=bool),[(0.,-4.)],1)
        self.assertIsNone(fire)
        self.assertEqual(aim.last_report['inheritance_coefficient'],1.2)
        self.assertEqual(aim.last_report['inheritance_samples'],32)
        self.assertAlmostEqual(aim.last_report['inheritance_spread'],2.15)

    def test_recorded_hopper_shot_is_not_predicted_as_a_vertical_hit(self):
        player={'address':2180005988,'x':431.3135986328125,'y':357.24566650390625,
                'vx':2.145369529724121,'vy':0.03491424396634102,'radius':10.,
                'stats':{'tear_range':260.}}
        target={'address':1955933412,'type':15,'x':418.1556396484375,'y':218.6268768310547,
                'vx':0.39681050181388855,'vy':1.66327965259552,'radius':13.,
                'state':8,'animation':'Attack','animation_frame':8.}
        profile={'attack_range':260.,'projectile_speed':330.,'weapons':[{'owner':'player','type':1}]}
        path=[(435.8355273575752,357.6569121308661)]
        mask=np.ones((640,640),dtype=bool)
        snapshot={'room':1,'entities':[{'type':2,'address':1953870884,'x':438.6261,'y':344.3206,
            'vx':3.90523,'vy':-10.,'age':0,'parent':player['address'],'spawner':player['address'],
            'tear':{'flags':0}}]}
        aim=EngineAim();aim.room=1;aim.last_direction='up';aim.inheritance.extend([1.247]*31)
        aim.observe(snapshot,player)
        self.assertAlmostEqual(aim.inheritance[-1],1.82,places=2)
        self.assertIsNone(aim.choose(profile,player,[target],mask,path,target['address']))
        self.assertEqual(aim.last_report['inheritance_coefficient'],1.247)
        self.assertEqual(aim.last_report['predicted_hit_channels'],0)

        uncalibrated=EngineAim()
        self.assertEqual(uncalibrated.choose(profile,player,[target],mask,path,target['address']),'up')


class TerminalProbeTests(unittest.TestCase):
    def test_escape_probes_keep_geometry_but_do_not_query_unused_attack_goals(self):
        world=normal_room();planner=Planner();valid=planner._valid_centers(world['walkable'],10.)
        calls=[]
        def goal(p):calls.append(p);return p[0]*.01
        search=BeamSearch();search.choose((320.,280.),valid,[],10.,162.,(0.,0.),goal,path_goal_weight=1.,recovery_mask=world['walkable'])
        extreme,_,_=search._trace((320.,280.),(0.,0.),(-1,0),162.,.8,0.,1.,24,valid)
        self.assertGreaterEqual(min(p[0] for p in calls),extreme[-1][0]-1e-8)
        self.assertEqual(search.last_report['routes_preserved'],9)
        self.assertEqual(search.last_report['segments'],6)


if __name__=='__main__':unittest.main()
