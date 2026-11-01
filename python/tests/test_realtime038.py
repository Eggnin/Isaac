import json
from pathlib import Path
import tempfile
from types import SimpleNamespace
import unittest
from unittest.mock import Mock,patch

from lupa.lua53 import LuaRuntime
from test_room_bridge036 import ENVIRONMENT
from room_test_transport import RoomBridge,BridgeGameExit,BridgeCommandRejected


class RealtimeLuaTests(unittest.TestCase):
    def environment(self):
        env=ENVIRONMENT.replace("return {cmd='hello',token='offline'}","return {cmd='hello',token='offline',mode='realtime'}")
        env=env.replace("message=message+1;return message==1 and 'hello' or 'step'",
            "message=message+1;receive_calls=message;if message>102 then error('blocking command receive') end;if message==1 then return 'hello' end;return nil,'timeout',''")
        env=env.replace("encode=function() return '{}' end","encode=function(value) last_packet=value;return '{}' end")
        lua=LuaRuntime(unpack_returned_tuples=True);lua.execute(env)
        lua.execute((Path(__file__).resolve().parents[1]/'runtime/bridge/room_test_bridge.lua').read_text(encoding='utf-8'))
        lua.execute('callbacks[ModCallbacks.MC_POST_UPDATE]()')
        return lua

    def test_engine_updates_return_without_waiting_for_planner_commands(self):
        lua=self.environment()
        lua.execute("assert(last_packet.mode=='realtime');for i=1,100 do callbacks[ModCallbacks.MC_POST_UPDATE]() end;assert(receive_calls==101)")

    def test_realtime_mode_leaves_every_production_input_action_untouched(self):
        lua=self.environment()
        lua.execute('for hook=0,2 do for action=0,7 do assert(callbacks[ModCallbacks.MC_INPUT_ACTION](nil,player,hook,action)==nil) end end')
        lua.execute("callbacks[ModCallbacks.MC_PRE_GAME_EXIT]();assert(last_packet.type=='game_exit')")


class RealtimeProtocolTests(unittest.TestCase):
    def test_realtime_transport_cannot_request_a_synchronous_step(self):
        b=RoomBridge({},realtime=True);b._send=Mock()
        with self.assertRaisesRegex(RuntimeError,'step_not_allowed'):b.step({'w'})
        b._send.assert_not_called()

    def test_game_exit_and_door_rejection_have_distinct_events(self):
        b=RoomBridge({});b.buffer=b'{"type":"game_exit"}\n'
        with self.assertRaises(BridgeGameExit):b.receive()
        b.buffer=b'{"type":"error","error":"door_not_open"}\n'
        with self.assertRaises(BridgeCommandRejected) as caught:b.receive()
        self.assertEqual(caught.exception.reason,'door_not_open')


class RealtimeRunnerTests(unittest.TestCase):
    def test_free_running_frames_keep_window_input_and_never_call_step(self):
        import realtime_room_test as runner
        with tempfile.TemporaryDirectory() as directory:
            output=Path(directory);config=output/'config.json';config.write_text('{}')
            snapshots=[]
            for i,frame in enumerate((20,23,26,29,32,35,38)):
                p={'x':320.,'y':280.,'radius':10.,'controller_index':0,'dead':i==6,
                    'health_parts':{'red':6 if i==0 else 0 if i==6 else 5},'damage_cooldown':0,'weapons':[]}
                snapshots.append({'frame':frame,'room':1 if i<5 else 2,'level_stage':1,'room_index':84 if i<5 else 85,
                    'players':[p],'local_player':p,'room_clear':True,'entities':[],'doors':[{'slot':0,'state':2,'collision':5}]})
            worker=Mock();worker.input._held=set();worker.window.foreground.return_value=False
            worker.diagnostics.dropped=worker.diagnostics.write_errors=0;worker.reader.snapshot.side_effect=snapshots
            worker.process_snapshot.side_effect=lambda s,**kw:{'player':s['local_player'],'world':{'targets':[],'bodies':[]},'status':'running'}
            bridge=Mock();bridge.connect.return_value={'bridge_revision':'realtime-038','frame':1}
            bridge.next_room.return_value={'frame':34,'generation':2};bridge.step.side_effect=AssertionError('game was blocked')
            args=SimpleNamespace(output=output,room_test_config=config,no_turbo=True,pid=7,process_mode='steam',startup_timeout=10,
                stall_seconds=30,room_seconds=600,seconds=0,stop_file=None)
            with patch.object(runner,'ControlWorker',return_value=worker),patch.object(runner,'identify'),\
                 patch.object(runner,'wait_engine_ready',return_value=Mock(pid=7,launch_report={})),\
                 patch.object(runner,'start_hard_run'),patch.object(runner,'RoomBridge',return_value=bridge),\
                 patch.object(runner,'hotkey_pressed',return_value=False),patch.object(runner.time,'sleep'):
                runner.main(args)
            result=json.loads((output/'observer-result.json').read_text(encoding='utf-8'))
            self.assertEqual(result['stop_reason'],'player_dead');self.assertFalse(result['engine_waits_for_planner'])
            self.assertEqual(result['max_observation_frame_gap'],3);self.assertEqual(result['damage_observations'],2)
            self.assertEqual(result['mode'],'realtime_windowmessage_room_test');self.assertEqual(len(result['room_results']),1)
            self.assertFalse(worker.synchronous_test);worker.input.close.assert_not_called();bridge.step.assert_not_called()
            self.assertAlmostEqual(result['game_seconds'],.6)


if __name__=='__main__':unittest.main()
