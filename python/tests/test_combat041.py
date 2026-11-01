"""Regression from the user's 116 completed 040 room-test runs."""
import copy
import json
from pathlib import Path
import tempfile
from types import SimpleNamespace
import unittest
from unittest.mock import Mock,patch

class RecordedApproachTests(unittest.TestCase):
    def replay(self,name):
        from test_combat039 import RecordedCombatTests
        helper=RecordedCombatTests()
        helper.cases=lambda:json.loads((Path(__file__).parent/'regression_data/combat041.json').read_text(encoding='utf-8'))
        return helper.replay(name)

    def test_misaligned_horfs_approach_without_waiting_for_wall_rejection(self):
        for name in ('run-0023','run-0115'):
            with self.subTest(run=name):
                snap,update=self.replay(name);search=update['search']
                self.assertFalse(search['blocked_shot_approach'])
                self.assertTrue(search['attack_approach'])
                self.assertEqual(search['attack_approach_reason'],'no_predicted_shot')
                self.assertEqual(search['hits'],0)
                self.assertNotEqual(update['decision'].move,(0,0))
                self.assertLess(search['first_segment_progress_cost'],search['start_progress_cost'])
                self.assertTrue(all(update['world']['walkable'][round(y),round(x)] for x,y in update['decision'].path))

    def test_unreachable_enemy_lane_uses_only_observed_breakable_grid_goal(self):
        snap,update=self.replay('run-0035')
        self.assertFalse(any(r['reachable'] for r in update['search']['target_routes']))
        goal=update['search']['grid_objective']
        cell=next(c for c in snap['grid_cells'] if c['index']==goal['index'])
        self.assertEqual((cell['type'],cell['variant'],cell['collision']),(14,0,3))
        self.assertIsNone(update['decision'].target)
        self.assertFalse(update['world']['walkable'][goal['y'],goal['x']])

    def test_wall_approach_keeps_collision_filter(self):
        snap,update=self.replay('run-0121')
        self.assertTrue(update['search']['blocked_shot_approach'])
        self.assertEqual(update['search']['hits'],0)
        self.assertLess(update['search']['first_segment_progress_cost'],update['search']['start_progress_cost'])


class OpenDoorCompletionTests(unittest.TestCase):
    def run_room(self,mode,*,closed=False,paused=False,transitional=False,reject=False):
        import realtime_room_test as realtime
        from room_test_transport import BridgeCommandRejected
        runner=realtime
        case=json.loads((Path(__file__).parent/'regression_data/combat041.json').read_text(encoding='utf-8'))['run-0043']['snapshot']
        self.assertTrue(case['room_clear'])
        snapshots=[]
        for i in range(6):
            snap=copy.deepcopy(case);snap['frame']+=i*3
            snap['paused']=paused;snap['transitional']=transitional
            snap['local_player']['dead']=i==5
            if closed:
                for door in snap['doors']:door.update(state=1,collision=4)
            snapshots.append(snap)
        # The native open-door fixture still contains living type292 NPCs.
        targets=[e for e in case['entities'] if e.get('type')==292]
        self.assertTrue(targets)
        with tempfile.TemporaryDirectory() as directory:
            output=Path(directory);config=output/'config.json';config.write_text('{}')
            worker=Mock();worker.input._held=set();worker.window.foreground.return_value=False
            worker.diagnostics.dropped=worker.diagnostics.write_errors=0
            worker.reader.snapshot.side_effect=snapshots
            worker.process_snapshot.side_effect=lambda s,**kw:{'player':s['local_player'],'world':{'targets':targets,'bodies':[]}}
            bridge=Mock();bridge.connect.return_value={'bridge_revision':'realtime-038','frame':1}
            bridge.next_room.side_effect=BridgeCommandRejected('door_not_open') if reject else None
            bridge.next_room.return_value={'frame':100,'generation':2}
            bridge.step.return_value={'frame':100}
            args=SimpleNamespace(output=output,room_test_config=config,no_turbo=True,pid=7,process_mode='steam',startup_timeout=10,
                stall_seconds=30,room_seconds=600,seconds=0,stop_file=None,realtime=False)
            with patch.object(runner,'ControlWorker',return_value=worker),patch.object(runner,'identify'),\
                 patch.object(runner,'wait_engine_ready',return_value=Mock(pid=7,launch_report={})),\
                 patch.object(runner,'start_hard_run'),patch.object(runner,'RoomBridge',return_value=bridge),\
                 patch.object(runner,'hotkey_pressed',return_value=False),patch.object(runner.time,'sleep'):
                runner.main(args)
            result=json.loads((output/'observer-result.json').read_text(encoding='utf-8'))
            self.assertEqual(result['stop_reason'],'player_dead',result.get('fatal_error'))
            return bridge,result

    def test_real_open_door_can_complete_with_remaining_targets(self):
        bridge,result=self.run_room('realtime')
        bridge.next_room.assert_called_once();bridge.step.assert_not_called()
        self.assertEqual(len(result['room_results']),1)
        self.assertEqual(result['room_results'][0]['completion'],'observed_open_door')

    def test_closed_or_paused_or_transitional_room_cannot_complete(self):
        for kw in ({'closed':True},{'paused':True},{'transitional':True}):
            with self.subTest(kw=kw):
                bridge,result=self.run_room('realtime',**kw)
                bridge.next_room.assert_not_called();self.assertEqual(result['room_results'],[])

    def test_bridge_still_rechecks_door_before_transition(self):
        bridge,result=self.run_room('realtime',reject=True)
        bridge.next_room.assert_called_once();self.assertEqual(result['room_results'],[])


if __name__=='__main__':unittest.main()
