import copy
import json
from pathlib import Path
import queue
import tempfile
import time
from types import SimpleNamespace
import unittest
from unittest.mock import Mock,patch

from engine_app import ControlWorker
from room_mechanism import RoomMechanism
from room_test_transport import RoomBridge
from run_journal import RunJournal
from test_regressions_032 import normal_room
from planner import Planner

SOURCE=Path(__file__).parent


class RoomMechanismTests(unittest.TestCase):
    def state(self):
        return {'frame':20,'level_stage':1,'room_index':96,'difficulty':1,'room_clear':False,
                'grid_width':15,'grid_cells':[{'index':67,'type':20,'variant':0,'state':0,'collision':0}],
                'doors':[],'entities':[]}

    def test_real_recorded_tnt_barrier_is_not_misreported_as_button_contact(self):
        s=json.loads((SOURCE/'regression_data/pressure_plate035.json').read_text(encoding='utf-8'))
        s['enums']=json.loads((Path(__file__).resolve().parents[1]/'src/engine_enums.json').read_text(encoding='utf-8'))
        with tempfile.TemporaryDirectory() as directory:
            control=Mock();control._held=set()
            worker=ControlWorker(queue.Queue(),input_controller=control,dry_control=True,log_dir=Path(directory))
            worker.enabled=True;worker.last_frame=s['frame']-1;worker.idle_router=RoomMechanism()
            worker._log=Mock();worker.diagnostics.record=Mock()
            s['_read_started']=time.perf_counter()
            try:
                update=worker.process_snapshot(s,foreground=False,dt=1/30)
                self.assertEqual(update['route']['status'],'plate_route_blocked')
                self.assertEqual(update['route']['goal'],(320,280))
                self.assertIn(12,update['route']['barrier_types'])
                self.assertIsNone(worker.idle_router.attempt['contact_since'])
            finally:worker.shutdown()

    def test_each_observed_completion_evidence_ends_attempt(self):
        for change,evidence in (('state','plate_state_changed'),('door','door_opened'),('clear','room_clear')):
            with self.subTest(change=change):
                s=self.state();task=RoomMechanism();world=normal_room();p={'stats':{'move_speed':1.}}
                task.decide(s,p,world,{},Planner());s['frame']+=1
                if change=='state':s['grid_cells'][0]['state']=3
                elif change=='door':s['doors']=[{'state':2,'collision':5}]
                else:s['room_clear']=True
                task.decide(s,p,world,{},Planner())
                self.assertIn(evidence,task.last_report['evidence']);self.assertIsNone(task.attempt)

    def test_no_effect_is_recorded_once_without_retrying_same_plate(self):
        s=self.state();task=RoomMechanism();w=normal_room();p={'stats':{'move_speed':1.}}
        task.decide(s,p,w,{},Planner());s['frame']+=180
        task.decide(s,p,w,{},Planner());self.assertEqual(task.last_report['status'],'plate_no_effect')
        s['frame']+=1;task.decide(s,p,w,{},Planner())
        self.assertEqual(task.last_report['status'],'unknown_blocker');self.assertIsNone(task.attempt)

    def test_reward_greed_unknown_and_already_pressed_are_not_candidates(self):
        for variant,state in ((1,0),(2,0),(3,0),(0,3)):
            s=self.state();s['grid_cells'][0].update(variant=variant,state=state)
            self.assertFalse(RoomMechanism.plate_candidates(s))

    def test_open_door_holds_without_loot_or_door_movement(self):
        s=self.state();s['room_clear']=True;s['doors']=[{'slot':0,'state':2,'collision':5,'x':40,'y':280}]
        s['entities']=[{'type':5,'variant':100,'subtype':1,'x':240,'y':280,'pickup':{'price':0}}]
        task=RoomMechanism();decision=task.decide(s,{'stats':{'move_speed':1.}},normal_room(),{},Planner())
        self.assertEqual(decision.move,(0,0));self.assertEqual(task.last_report['status'],'room_complete_hold')

    def test_semantic_watchdog_does_not_credit_new_tiles_but_credits_plate_state(self):
        with tempfile.TemporaryDirectory() as directory:
            clock=[0.];j=RunJournal(directory,stall_seconds=10,clock=lambda:clock[0],semantic_progress=True)
            s=self.state();p={'x':100,'y':200};j.observe(s,p,{})
            clock[0]=9;p['x']=300;j.observe(s,p,{})
            clock[0]=11;self.assertEqual(j.timeout_reason(),'stuck_timeout')
            s['grid_cells'][0]['state']=3;j.observe(s,p,{})
            self.assertIsNone(j.timeout_reason());j.close('test')


class RoomTransportTests(unittest.TestCase):
    def boundary(self,frame=20,generation=1):
        return {'type':'boundary','protocol':1,'seq':2,'frame':frame,'generation':generation,'players':1,'controller':0}

    def test_step_requires_exact_game_frame_advance(self):
        b=RoomBridge({});b.boundary=self.boundary();b._send=Mock()
        b.receive=Mock(return_value=self.boundary(22))
        with self.assertRaisesRegex(RuntimeError,'step_mismatch'):b.step({'w'},1)

    def test_teleport_requires_observed_room_generation_change(self):
        b=RoomBridge({});b.boundary=self.boundary();b._send=Mock();b.receive=Mock(return_value=self.boundary(22))
        with self.assertRaisesRegex(RuntimeError,'transition_not_observed'):b.next_room()
        b.receive=Mock(return_value=self.boundary(22,2));b.next_room()

    def test_rejects_nonlocal_or_multiple_player_boundary(self):
        b=RoomBridge({});packet=self.boundary();packet['players']=2
        b.buffer=(json.dumps(packet)+'\n').encode()
        with self.assertRaisesRegex(RuntimeError,'ownership_rejected'):b.receive()


class RoomRunnerTests(unittest.TestCase):
    def test_open_door_teleports_then_damage_continues_until_actual_death(self):
        import room_test_runner
        with tempfile.TemporaryDirectory() as directory:
            output=Path(directory);config=output/'config.json';config.write_text('{}')
            snapshots=[];boundaries=[]
            for frame in range(1,8):
                room=84 if frame<=5 else 85;generation=1 if frame<=5 else 2
                p={'x':320.,'y':280.,'radius':10.,'controller_index':0,'dead':frame==7,
                   'health_parts':{'red':6 if frame==1 else 0 if frame==7 else 5},'damage_cooldown':0,'weapons':[]}
                snapshots.append({'frame':frame,'level_stage':1,'room_index':room,'local_player':p,'players':[p],
                    'room_clear':True,'entities':[],'doors':[{'slot':0,'state':2,'collision':5}]})
                boundaries.append({'frame':frame,'generation':generation,'seq':frame,'dead':frame==7})
            worker=Mock();worker.window.foreground.return_value=False
            worker.diagnostics.dropped=worker.diagnostics.write_errors=0
            worker.reader.snapshot.side_effect=snapshots
            worker.process_snapshot.side_effect=lambda s,**kw:{'player':s['local_player'],'world':{'targets':[],'bodies':[]},'status':'running'}
            bridge=Mock();bridge.connect.return_value=boundaries[0]
            bridge.step.side_effect=boundaries[1:5]+boundaries[6:7];bridge.next_room.return_value=boundaries[5]
            guard=Mock(pid=7,launch_report={})
            args=SimpleNamespace(output=output,room_test_config=config,no_turbo=True,stop_file=None,pid=7,
                                 process_mode='steam',startup_timeout=10,stall_seconds=30,room_seconds=600,seconds=0)
            with patch.object(room_test_runner,'ControlWorker',return_value=worker),\
                 patch.object(room_test_runner,'wait_engine_ready',return_value=guard),\
                 patch.object(room_test_runner,'identify'),patch.object(room_test_runner,'start_hard_run'),\
                 patch.object(room_test_runner,'RoomBridge',return_value=bridge),\
                 patch.object(room_test_runner,'hotkey_pressed',return_value=False):
                room_test_runner.main(args)
            result=json.loads((output/'observer-result.json').read_text(encoding='utf-8'))
            self.assertEqual(result['stop_reason'],'player_dead')
            self.assertEqual(result['observations'],7);self.assertEqual(result['damage_observations'],2)
            self.assertGreater(result['game_seconds'],0)
            self.assertIsNotNone(result['effective_game_speed'])
            self.assertEqual(len(result['room_results']),1);bridge.next_room.assert_called_once()


if __name__=='__main__':unittest.main()
