import json
from pathlib import Path
import tempfile
import unittest

from engine_event_journal import EngineEventJournal
from engine_world import EngineWorld
from engine_motion import EngineMotion
from room_mechanism import RoomMechanism
from planner import Planner

DATA=Path(__file__).parent/'regression_data'

class EventTimingTests(unittest.TestCase):
    def test_nineteen_native_requests_match_including_seven_old_boundary_failures(self):
        fixture=json.loads((DATA/'events046.json').read_text(encoding='utf-8'))
        for case in fixture['cases']:
            with self.subTest(run=case['run'],frame=case['frame']),tempfile.TemporaryDirectory() as directory:
                out=Path(directory);cfg={k:str(out/name) for k,name in
                    [('capture_path','raw'),('capture_damage_path','index'),('capture_status_path','status')]}
                journal=EngineEventJournal(cfg,out);event=case['event']
                snap={'frame':case['previous_frame'],'local_player':{'seed':case['player_seed']},
                    'level_stage':event['stage'],'room_index':event['room']}
                try:
                    journal.observe(snap,0)
                    Path(cfg['capture_damage_path']).write_text(json.dumps(fixture['header'])+'\n'+json.dumps(event)+'\n')
                    snap['frame']=case['frame'];journal.observe(snap,1)
                    snap['frame']+=1;journal.observe(snap,1)
                    result=json.loads((out/'damage-source-links.jsonl').read_text())
                    self.assertEqual(result['association'],'unique_engine_callback_candidate')
                    self.assertEqual(result['engine_damage_attempts'][0]['callback_seq'],event['seq'])
                    self.assertFalse(result['applied_damage_source_confirmed'])
                finally:journal.file.close()

    def test_inclusive_boundary_never_reuses_a_request_for_next_health_change(self):
        fixture=json.loads((DATA/'events046.json').read_text(encoding='utf-8'))
        case=fixture['cases'][0];event=case['event'];event['frame']=101
        with tempfile.TemporaryDirectory() as directory:
            out=Path(directory);cfg={'capture_path':str(out/'raw'),'capture_damage_path':str(out/'index'),'capture_status_path':str(out/'status')}
            journal=EngineEventJournal(cfg,out)
            snap={'frame':100,'local_player':{'seed':case['player_seed']},'level_stage':event['stage'],'room_index':event['room']}
            try:
                journal.observe(snap,0);(out/'index').write_text(json.dumps(event)+'\n')
                snap['frame']=101;journal.observe(snap,1)
                snap['frame']=102;journal.observe(snap,2)
                snap['frame']=103;journal.observe(snap,2)
                rows=list(map(json.loads,(out/'damage-source-links.jsonl').read_text().splitlines()))
                self.assertEqual(rows[0]['association'],'unique_engine_callback_candidate')
                self.assertEqual(rows[1]['association'],'no_matching_engine_callback')
                self.assertEqual(rows[1]['unmatched_reason'],'callbacks_already_associated')
            finally:journal.file.close()

    def test_environment_flags_and_spawner_survive_native_request_indexing(self):
        fixture=json.loads((DATA/'events046.json').read_text(encoding='utf-8'))
        with tempfile.TemporaryDirectory() as directory:
            out=Path(directory);cfg={'capture_path':str(out/'raw'),'capture_damage_path':str(out/'index'),'capture_status_path':str(out/'status')}
            (out/'index').write_text('\n'.join(json.dumps(e) for e in [fixture['header']]+[c['event'] for c in fixture['cases']])+'\n')
            journal=EngineEventJournal(cfg,out)
            try:
                journal.poll()
                poop=[a for a in journal.attempts if a['environment_kind']=='DAMAGE_POOP']
                self.assertEqual(len(poop),2);self.assertTrue(all(a['source_category']=='environment' for a in poop))
                self.assertTrue(any(a['source_category']=='explosion' for a in journal.attempts))
                self.assertTrue(any(a['source_spawner'].get('Type')==12 for a in journal.attempts))
            finally:journal.file.close()

class ButtonNavigationTests(unittest.TestCase):
    def cases(self):return json.loads((DATA/'buttons046.json').read_text(encoding='utf-8'))
    def replay(self,case):
        snapshot=self.cases()[case]
        snapshot['enums']=json.loads((DATA.parents[1]/'src/engine_enums.json').read_text(encoding='utf-8'))
        player=snapshot['local_player'];world=EngineWorld().update(snapshot,player)
        motion=EngineMotion().update(snapshot,player)
        router=RoomMechanism();decision=router.decide(snapshot,player,world,motion,Planner())
        return snapshot,world,router,decision

    def test_actual_tnt_barrier_is_reported_as_unreachable_not_a_pressed_plate_failure(self):
        _,_,router,decision=self.replay('14')
        self.assertEqual(router.last_report['navigation_resolution'],10)
        self.assertIsNone(router.last_report['navigation_distance'])
        self.assertEqual(router.last_report['status'],'plate_route_blocked')
        self.assertIn(12,router.last_report['barrier_types'])
        self.assertEqual(router.last_report['phase'],'approaching_plate')

    def test_actual_hazard_detour_is_not_stuck_at_soft_comfort_boundary(self):
        _,_,router,decision=self.replay('6')
        self.assertNotEqual(decision.move,(0,0))
        self.assertEqual(router.last_report['status'],'approaching_pressure_plate')

    def test_navigation_time_cannot_be_reported_as_a_pressed_plate_failure(self):
        snapshot,world,router,_=self.replay('14')
        snapshot['frame']+=180
        router.decide(snapshot,snapshot['local_player'],world,{},Planner())
        self.assertNotEqual(router.last_report['status'],'plate_no_effect')
        self.assertIsNotNone(router.attempt)

class SafetyAndCacheTests(unittest.TestCase):
    def test_twenty_pixel_graph_missing_a_corridor_falls_back_without_walking_through_walls(self):
        import numpy as np
        router=RoomMechanism();planner=Planner()
        walk=np.zeros((200,200),dtype=bool);walk[20:180,81:120]=True
        world={'walkable':walk,'player_position':(100.,140.),'player_radius':10.,'bodies':[]}
        decision=router.navigate_goal({'frame':1,'grid_cells':[]},{'stats':{'move_speed':1.}},world,{},planner,(100.,60.),prefer_progress=True)
        self.assertEqual(router.last_report['navigation_resolution'],10)
        self.assertIsNotNone(router.last_report['navigation_distance'])
        self.assertLess(decision.move[1],0)
        valid=planner._valid_centers(walk,10.)
        self.assertTrue(all(valid[round(y),round(x)] for x,y in decision.path))

    def test_blocked_plate_still_evades_an_incoming_projectile(self):
        from planner import Body
        snapshot=json.loads((DATA/'buttons046.json').read_text(encoding='utf-8'))['14']
        player=snapshot['local_player'];world=EngineWorld().update(snapshot,player)
        world['bodies'].append(Body(7,420.,190.,-240.,0.,6.,'projectile'))
        router=RoomMechanism();planner=Planner()
        decision=router.decide(snapshot,player,world,{},planner)
        self.assertEqual(router.last_report['status'],'plate_route_blocked')
        self.assertEqual(router.last_report['evasion_mode'],'blocked_goal_hazard_search')
        self.assertNotEqual(decision.move,(0,0))

    def test_damaging_poop_has_an_envelope_and_destroyed_poop_does_not(self):
        from test_regressions_032 import normal_room
        s={'grid_width':15,'grid_height':9,'entities':[],'grid_cells':[
            {'index':27,'type':14,'variant':1,'state':0,'collision':3},
            {'index':28,'type':14,'variant':1,'state':1000,'collision':0}]}
        player={'x':526.41046142578,'y':187.25662231445,'radius':10.,'stats':{'can_fly':False}}
        world=EngineWorld().update(s,player)
        hazards=[b for b in world['bodies'] if b.kind=='hazard']
        self.assertEqual(len(hazards),1)
        self.assertLess(((hazards[0].x-player['x'])**2+(hazards[0].y-player['y'])**2)**.5,hazards[0].radius+10)

    def test_stale_control_release_preserves_terrain_cache_but_clears_unsent_actions(self):
        from test_regressions_032 import normal_room
        planner=Planner();world=normal_room()
        valid=planner._valid_centers(world['walkable'],10.)
        planner._firing_nav.prepare(valid);graph=planner._firing_nav.graph
        planner._last_move=(1,0);planner.release_control()
        self.assertEqual(planner._last_move,(0,0))
        self.assertIs(planner._valid_centers(world['walkable'],10.),valid)
        self.assertIs(planner._firing_nav.graph,graph)

if __name__=='__main__':unittest.main()
