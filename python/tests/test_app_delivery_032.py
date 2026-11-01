import json
from pathlib import Path
import queue
import tempfile
import unittest
from unittest.mock import Mock,patch

from engine_app import ControlWorker
from game_launch import prepare_background_launch


class DesktopDeliveryTests(unittest.TestCase):
    def worker(self,directory):
        worker=ControlWorker(queue.Queue(),window=Mock(),input_controller=Mock(),
                             reader_factory=Mock(),log_dir=Path(directory))
        worker._post=Mock();worker._release=Mock();worker._error_log=Mock();worker._hotkey_loop=Mock()
        return worker

    def test_background_backend_binds_after_reader_connection_and_unbinds_on_disconnect(self):
        with tempfile.TemporaryDirectory() as directory:
            worker=ControlWorker(queue.Queue(),window=Mock(),reader_factory=Mock(),log_dir=Path(directory))
            worker._release=Mock()
            self.assertEqual(worker.input.mode,'windowmessage')
            worker._connect(7)
            self.assertEqual(worker.window.target_pid,7)
            reader=worker.reader
            worker._close_reader()
            self.assertIsNone(worker.window.target_pid)
            reader.close.assert_called_once()

    def test_auto_start_keeps_polling_commands_and_enables_only_after_startup(self):
        with tempfile.TemporaryDirectory() as directory:
            worker=self.worker(directory)
            worker.commands.put('start_hard_run');worker._drain_commands()
            self.assertFalse(worker.enabled);self.assertTrue(worker.pending_hard_start)
            with patch('hard_run_start.start_hard_run',side_effect=lambda *a,**kw:kw['check_alive']()) as start:
                worker._start_pending_run()
            start.assert_called_once()
            self.assertTrue(worker.enabled);self.assertFalse(worker.pending_hard_start)

    def test_stop_command_cancels_auto_start_without_enabling_control(self):
        with tempfile.TemporaryDirectory() as directory:
            worker=self.worker(directory);worker.pending_hard_start=True
            worker.commands.put('disable')
            with patch('hard_run_start.start_hard_run',side_effect=lambda *a,**kw:kw['check_alive']()):
                worker._start_pending_run()
            self.assertFalse(worker.enabled);self.assertFalse(worker.pending_hard_start)

    def test_background_option_preserves_other_bytes_and_retains_original_backup(self):
        with tempfile.TemporaryDirectory() as directory:
            path=Path(directory)/'options.ini';logs=Path(directory)/'logs'
            original=b'Language=13\r\nSteamCloud=1\r\nPauseOnFocusLost=1\r\nEnableMods=0\r\n'
            path.write_bytes(original)
            record=prepare_background_launch(logs,options_path=path)
            self.assertEqual(path.read_bytes(),original.replace(b'PauseOnFocusLost=1',b'PauseOnFocusLost=0'))
            self.assertEqual(Path(record['backup']).read_bytes(),original)
            self.assertIsNone(prepare_background_launch(logs,options_path=path))
            self.assertEqual(len(list(logs.glob('options-before-*.ini'))),1)
            self.assertEqual(json.loads((logs/'background-setting.json').read_text(encoding='utf-8'))['PauseOnFocusLost'],0)


if __name__=='__main__':unittest.main()
