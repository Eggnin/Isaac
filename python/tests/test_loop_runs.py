import contextlib
import io
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import Mock,patch

from hard_run_route import HardRunRoute
from loop_history import record_run
from planner import Planner
from run_journal import RunJournal
from test_regressions_032 import normal_room


class LoopRunTests(unittest.TestCase):
    def test_boss_clear_waits_for_exit_then_routes_to_observed_trapdoor(self):
        route=HardRunRoute();world=normal_room();player={'stats':{'move_speed':1.}}
        s={'difficulty':1,'level_stage':1,'room_index':124,'frame':100,'room_clear':True,
           'room_config':{'type':5},'grid_width':15,'grid_cells':[],'entities':[],'doors':[]}
        route.decide(s,player,world,{},Planner())
        self.assertEqual(route.last_report['status'],'waiting_for_floor_exit')
        s['grid_cells']=[{'index':97,'type':18,'collision':0}]
        route.decide(s,player,world,{},Planner())
        self.assertEqual(route.last_report['status'],'waiting_for_floor_exit')
        s['grid_cells'][0]['type']=17
        decision=route.decide(s,player,world,{},Planner())
        self.assertEqual(route.last_report['status'],'approaching_next_floor')
        self.assertEqual(decision.move,(0,1))

    def test_watchdog_does_not_credit_repeating_the_same_tiles_but_credits_damage(self):
        with tempfile.TemporaryDirectory() as directory:
            clock=[0.];journal=RunJournal(directory,stall_seconds=10,clock=lambda:clock[0])
            p={'x':100.,'y':200.,'health_parts':{'red':6}}
            enemy={'type':10,'address':3,'seed':4,'health':10}
            s={'frame':1,'level_stage':1,'room_index':84,'entities':[enemy],'room_clear':False}
            journal.observe(s,p,{})
            clock[0]=9;enemy['health']=9;journal.observe(s,p,{})
            clock[0]=18;journal.observe(s,p,{})
            self.assertIsNone(journal.timeout_reason())
            clock[0]=20;journal.observe(s,p,{})
            self.assertEqual(journal.timeout_reason(),'stuck_timeout')
            journal.close('stuck_timeout')

    def test_until_death_keeps_running_after_first_damage(self):
        import fixture_observer
        with tempfile.TemporaryDirectory() as directory:
            worker=Mock();worker.input.requires_foreground=False;worker.window.foreground.return_value=False
            worker.diagnostics.dropped=worker.diagnostics.write_errors=0
            snapshots=[];updates=[]
            for frame,health,dead in ((15,6,False),(16,5,False),(17,0,True)):
                p={'x':320.,'y':280.,'health_parts':{'red':health},'damage_cooldown':0,'dead':dead}
                snapshots.append({'frame':frame,'difficulty':1,'level_stage':1,'room_index':84,'entities':[],
                                  'local_player':p,'room_clear':False})
                updates.append({'status':'running','player':p,'decision':None,'world':{},'profile':{},'route':{'status':'combat'}})
            worker.reader.snapshot.side_effect=snapshots;worker.process_snapshot.side_effect=updates
            guard=Mock(pid=7,launch_report={'engine_ready':True});guard.poll.return_value=None;guard.state.return_value={}
            argv=['--pid','7','--seconds','0','--output',directory,'--input-mode','windowmessage','--whole-run','--until-death']
            with patch('fixture_observer.ControlWorker',return_value=worker),patch('native_session.wait_engine_ready',return_value=guard),\
                 patch('fixture_observer.hotkey_pressed',return_value=False),contextlib.redirect_stdout(io.StringIO()):
                fixture_observer.main(argv)
            result=json.loads((Path(directory)/'observer-result.json').read_text(encoding='utf-8'))
            self.assertEqual(result['stop_reason'],'player_dead')
            self.assertEqual(result['observations'],3);self.assertEqual(result['damage_observations'],2)
            events=[json.loads(line) for line in (Path(directory)/'events.jsonl').read_text(encoding='utf-8').splitlines()]
            self.assertEqual(events[-1]['event'],'run_ended');self.assertEqual(events[-1]['reason'],'player_dead')

    def test_history_retains_separate_runs_and_accumulates_reasons(self):
        with tempfile.TemporaryDirectory() as directory:
            root=Path(directory);session=root/'session';session.mkdir()
            for number,reason in ((1,'player_dead'),(2,'stuck_timeout')):
                attempt=session/f'run-{number}';attempt.mkdir();run=attempt/'external033-until-death-1';run.mkdir()
                (attempt/'program-build.json').write_text(json.dumps({'version':'0.3.3','sha256':'abc'}))
                (run/'observer-result.json').write_text(json.dumps({'stop_reason':reason,'visited_rooms':[[2,84]],'damage_observations':1}))
                (run/'backups.json').write_text('[]');(run/'restoration.json').write_text('{"restored":true}')
                record_run(session,attempt,root)
            memory=json.loads((root/'loop-memory.json').read_text())
            self.assertEqual(memory['total_runs'],2);self.assertEqual(memory['maximum_stage_observed'],2)
            self.assertEqual(memory['end_reasons'],{'player_dead':1,'stuck_timeout':1})
            self.assertEqual(len((session/'runs.jsonl').read_text().splitlines()),2)


if __name__=='__main__':unittest.main()
