import ctypes
import importlib.util
from pathlib import Path
import unittest
from unittest.mock import Mock, patch

import numpy as np

MODULE_PATH = (Path(__file__).resolve().parents[1]/'src'/'win_platform.py')
spec = importlib.util.spec_from_file_location("win_platform", MODULE_PATH)
wp = importlib.util.module_from_spec(spec)
spec.loader.exec_module(wp)


class WinPlatformTests(unittest.TestCase):
    def test_pointer_sized_layouts(self):
        self.assertEqual(ctypes.sizeof(wp.INPUT), 40 if ctypes.sizeof(ctypes.c_void_p) == 8 else 28)
        self.assertEqual(ctypes.sizeof(wp.KEYBDINPUT), 24 if ctypes.sizeof(ctypes.c_void_p) == 8 else 16)

    def test_find_missing_window(self):
        window = wp.GameWindow()
        fake_user = Mock()
        fake_user.EnumWindows.side_effect = lambda callback, _: True
        with patch.object(wp, "user32", fake_user), patch.object(wp, "gdi32", object()), patch.object(wp, "kernel32", object()):
            self.assertFalse(window.find())
        self.assertIsNone(window.hwnd)

    def test_capture_requires_window(self):
        window = wp.GameWindow()
        with self.assertRaises(RuntimeError):
            window.client_rect()

    def test_activation_targets_only_the_owned_game_and_reports_windows_denial(self):
        window=wp.GameWindow(target_pid=7);window.hwnd=123
        fake_user=Mock();fake_user.IsIconic.return_value=True
        window.process_id=Mock(return_value=8)
        window.foreground=Mock(return_value=False)
        with patch.object(wp,'user32',fake_user):
            self.assertFalse(window.activate())
            fake_user.SetForegroundWindow.assert_not_called()
            window.process_id.return_value=7
            self.assertFalse(window.activate())
            fake_user.ShowWindow.assert_called_once_with(123,9)
            fake_user.SetForegroundWindow.assert_called_once_with(123)

    def test_input_no_window_never_sends(self):
        window = wp.GameWindow()
        controller = wp.InputController(window)
        fake_user = Mock()
        with patch.object(wp, "user32", fake_user), patch.object(wp, "gdi32", object()), patch.object(wp, "kernel32", object()):
            controller.set_keys({"w"})
        fake_user.SendInput.assert_not_called()

    def test_key_validation(self):
        controller = wp.InputController(wp.GameWindow())
        with self.assertRaises(ValueError):
            controller.set_keys({"space"})

    def test_focus_loss_releases_only_held_keys(self):
        window = wp.GameWindow()
        window.hwnd = 123
        window.foreground = Mock(side_effect=[True, False])
        controller = wp.InputController(window)
        with patch.object(controller, "_send") as send:
            controller.set_keys({"w", "left"})
            controller.set_keys({"w", "left"})
            window.foreground = Mock(return_value=False)
            controller.set_keys({"w"})
        self.assertEqual(send.call_args_list, [
            unittest.mock.call("left", False), unittest.mock.call("w", False),
            unittest.mock.call("left", True), unittest.mock.call("w", True),
        ])
        self.assertEqual(controller._held, set())

    def test_state_delta_and_close_release(self):
        window = wp.GameWindow()
        window.hwnd = 123
        window.foreground = Mock(return_value=True)
        controller = wp.InputController(window)
        with patch.object(controller, "_send") as send:
            controller.set_keys({"w"})
            controller.set_keys({"w"})
            controller.set_keys({"w", "a"})
            controller.close()
        self.assertEqual(send.call_args_list, [
            unittest.mock.call("w", False), unittest.mock.call("a", False),
            unittest.mock.call("a", True), unittest.mock.call("w", True),
        ])
        self.assertEqual(controller._held, set())
        self.assertTrue(controller._closed)

    def test_background_messages_stay_on_the_owned_window_and_release_held_keys(self):
        window=wp.GameWindow(target_pid=7);window.hwnd=123
        window.process_id=Mock(return_value=7);window.foreground=Mock(return_value=False)
        controller=wp.InputController(window,mode='windowmessage')
        fake_user=Mock();fake_user.PostMessageW.return_value=True
        with patch.object(wp,'user32',fake_user):
            controller.set_keys({'w','right'});controller.release_all()
            self.assertEqual(fake_user.PostMessageW.call_args_list,[
                unittest.mock.call(123,0x100,0x27,1|(0x4d<<16)|(1<<24)),
                unittest.mock.call(123,0x100,0x57,1|(0x11<<16)),
                unittest.mock.call(123,0x101,0x27,1|(0x4d<<16)|(1<<24)|(1<<30)|(1<<31)),
                unittest.mock.call(123,0x101,0x57,1|(0x11<<16)|(1<<30)|(1<<31))])
            window.process_id.return_value=8
            with self.assertRaisesRegex(RuntimeError,'selected game PID'):controller.set_keys({'w'})
        fake_user.SendInput.assert_not_called();window.foreground.assert_not_called()
        self.assertFalse(controller._held)


if __name__ == "__main__":
    unittest.main()
