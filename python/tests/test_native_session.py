import json
import contextlib
import io
from pathlib import Path
import tempfile
import unittest
from unittest.mock import Mock,patch

from native_session import GameProcess, StartupError, wait_engine_ready


class Clock:
    now=0.
    def __call__(self):return self.now
    def sleep(self,seconds):self.now+=seconds


class Guard:
    def __init__(self,pid=7,code=None):
        self.pid=pid;self.code=code;self.path='game.exe';self.closed=False
    def poll(self):return self.code
    def close(self):self.closed=True
    check_alive=GameProcess.check_alive


class NativeReadinessTests(unittest.TestCase):
    def run_gate(self,directory,*,window=None,guard=None,reader=None,mode='native',timeout=.3):
        window=window or Mock(find=Mock(return_value=True),process_id=Mock(return_value=7),foreground=Mock(return_value=True))
        guard=guard or Guard()
        reader=reader or Mock(profile={'file_sha256':'verified'},menu_snapshot=Mock(return_value={'mode':'menu','menu_id':1}))
        clock=Clock();factory=Mock(return_value=guard)
        result=wait_engine_ready(window,999 if mode=='steam' else 7,mode,directory,timeout=timeout,
            reader_factory=Mock(return_value=reader),guard_factory=factory,clock=clock,sleep=clock.sleep)
        return result,factory,window,reader

    def test_engine_state_required_and_reader_closed_after_handshake(self):
        with tempfile.TemporaryDirectory() as directory:
            reader=Mock(profile={'file_sha256':'verified'},menu_snapshot=Mock(side_effect=[{'mode':'unavailable'},{'mode':'startup_screen','engine_mode':3}]))
            guard,_,window,reader=self.run_gate(directory,reader=reader)
            record=json.loads((Path(directory)/'launch-handshake.json').read_text())
            self.assertEqual(reader.menu_snapshot.call_count,2)
            self.assertTrue(record['engine_ready']);self.assertEqual(window.target_pid,7)
            reader.close.assert_called_once();self.assertFalse(guard.closed)
            guard.close()

    def test_steam_launcher_pid_is_not_mistaken_for_game_pid(self):
        with tempfile.TemporaryDirectory() as directory:
            guard,factory,window,_=self.run_gate(directory,mode='steam')
            factory.assert_called_once_with(7)
            self.assertEqual(guard.launch_report['launcher_pid'],999)
            self.assertEqual(guard.launch_report['game_pid'],7)
            self.assertEqual(window.target_pid,7)

    def test_early_exit_reports_real_code_without_waiting_for_window_timeout(self):
        with tempfile.TemporaryDirectory() as directory:
            window=Mock(find=Mock(return_value=False));guard=Guard(code=53)
            with self.assertRaisesRegex(StartupError,'code=53'):
                self.run_gate(directory,window=window,guard=guard)
            report=json.loads((Path(directory)/'launch-handshake.json').read_text())
            self.assertEqual(report['phase'],'process_exited_before_ready')
            self.assertEqual(report['exit_code'],53)
            self.assertFalse(report['engine_ready']);window.find.assert_not_called()
            self.assertTrue(guard.closed)

    def test_alive_window_timeout_is_reported_as_alive_and_not_as_a_crash(self):
        with tempfile.TemporaryDirectory() as directory:
            with self.assertRaises(StartupError):
                self.run_gate(directory,window=Mock(find=Mock(return_value=False)))
            report=json.loads((Path(directory)/'launch-handshake.json').read_text())
            self.assertEqual(report['phase'],'window_timeout')
            self.assertTrue(report['process_alive_at_timeout'])

    def test_uninitialized_engine_does_not_count_as_ready(self):
        with tempfile.TemporaryDirectory() as directory:
            reader=Mock(menu_snapshot=Mock(return_value={'mode':'unavailable'}))
            with self.assertRaises(StartupError):self.run_gate(directory,reader=reader)
            report=json.loads((Path(directory)/'launch-handshake.json').read_text())
            self.assertEqual(report['phase'],'engine_readiness_timeout')
            self.assertFalse(report['engine_ready'])

    def test_different_process_window_is_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            window=Mock(find=Mock(return_value=True),process_id=Mock(return_value=8))
            with self.assertRaisesRegex(StartupError,'differs from owned'):self.run_gate(directory,window=window)

    def test_process_exit_after_handshake_is_detected_immediately(self):
        with tempfile.TemporaryDirectory() as directory:
            guard,_,_,_=self.run_gate(directory);guard.code=0xc0000005
            with self.assertRaisesRegex(StartupError,'c0000005'):guard.check_alive()

    def test_observer_keeps_first_failure_when_later_cleanup_or_status_query_fails(self):
        import fixture_observer
        for failing_cleanup in ('shutdown','process_status'):
            with self.subTest(failing_cleanup=failing_cleanup),tempfile.TemporaryDirectory() as directory:
                worker=Mock();worker.diagnostics.dropped=worker.diagnostics.write_errors=0
                guard=Mock(launch_report={'engine_ready':True})
                guard.state.return_value={'alive':True}
                if failing_cleanup=='shutdown':worker.shutdown.side_effect=OSError('cleanup failure')
                else:guard.state.side_effect=OSError('status failure')
                argv=['fixture_observer.py','--pid','7','--seconds','1','--output',directory,'--start-hard-run']
                with patch('sys.argv',argv),patch('fixture_observer.ControlWorker',return_value=worker),\
                     patch('native_session.wait_engine_ready',return_value=guard),\
                     patch('hard_run_start.start_hard_run',side_effect=RuntimeError('primary startup failure')),\
                     contextlib.redirect_stdout(io.StringIO()):
                    with self.assertRaisesRegex(RuntimeError,'primary startup failure'):fixture_observer.main()
                report=json.loads((Path(directory)/'observer-result.json').read_text())
                self.assertEqual(report['fatal_error']['message'],'primary startup failure')
                self.assertIn('cleanup_error' if failing_cleanup=='shutdown' else 'process_status_error',report)

    def test_focus_loss_stops_fixture_without_background_planning(self):
        import fixture_observer
        with tempfile.TemporaryDirectory() as directory:
            worker=Mock();worker.diagnostics.dropped=worker.diagnostics.write_errors=0
            guard=Mock(pid=7,launch_report={'engine_ready':True})
            guard.poll.return_value=None;guard.state.return_value={'alive':True}
            worker.window.foreground.return_value=False
            worker.reader.snapshot.return_value={'frame':42,'room_index':84,'difficulty':1,'paused':True}
            argv=['fixture_observer.py','--pid','7','--seconds','1','--output',directory]
            with patch('sys.argv',argv),patch('fixture_observer.ControlWorker',return_value=worker),\
                 patch('native_session.wait_engine_ready',return_value=guard),\
                 contextlib.redirect_stdout(io.StringIO()):
                fixture_observer.main()
            report=json.loads((Path(directory)/'observer-result.json').read_text())
            self.assertEqual(report['stop_reason'],'input_focus_lost')
            self.assertEqual(report['input_interruption']['frame'],42)
            self.assertEqual(report['control_frames'],0)
            self.assertEqual(report['shadow_planning_frames'],0)
            worker._release.assert_called_once_with('fixture_input_focus_lost')
            worker.process_snapshot.assert_not_called()
            worker.shutdown.assert_called_once()


if __name__=='__main__':unittest.main()
