"""Offline checks: all keyboard calls are mocked; no real input is sent."""
import ctypes
import tempfile
from pathlib import Path
import queue
import struct
import unittest
from unittest.mock import Mock,patch

import win_platform as wp
from engine_app import ControlWorker
from engine_diagnostics import EngineDiagnostics
from input_ime import GameImeGuard
from engine_reader import EngineReader
import test_engine_app as app_fixtures


class InputEncodingTests(unittest.TestCase):
    def test_both_encodings_preserve_arrow_extension_and_release_pair(self):
        window=Mock(hwnd=1);window.foreground.return_value=True
        for mode in ('scancode','virtualkey'):
            with self.subTest(mode=mode):
                sent=[]
                def capture(count,pointer,size):
                    item=ctypes.cast(pointer,ctypes.POINTER(wp.INPUT)).contents
                    sent.append((item.ki.wVk,item.ki.wScan,item.ki.dwFlags))
                    return 1
                with patch.object(wp.user32,'SendInput',side_effect=capture),patch.object(wp.GameImeGuard,'acquire'),patch.object(wp.GameImeGuard,'restore'):
                    control=wp.InputController(window,mode=mode)
                    control.set_keys({'right'});control.set_keys({'right'});control.close()
                self.assertEqual(len(sent),2)
                self.assertEqual(sent[1][2],sent[0][2]|wp.KEYEVENTF_KEYUP)
                self.assertTrue(sent[0][2]&wp.KEYEVENTF_EXTENDEDKEY)
                self.assertEqual(sent[0][0],0 if mode=='scancode' else 0x27)
                self.assertEqual(sent[0][1],0x4d if mode=='scancode' else 0)

    def test_delivery_state_does_not_claim_engine_consumed_os_key(self):
        control=wp.InputController(Mock())
        control._held={'w','right'}
        with patch.object(wp.user32,'GetAsyncKeyState',side_effect=lambda key:0x8000 if key==0x57 else 0):
            state=control.delivery_state()
        self.assertEqual(state['os_pressed'],['w'])
        self.assertFalse(state['engine_consumption_verified'])


class EngineControlGateTests(unittest.TestCase):
    def test_engine_disabled_or_cooldown_releases_without_clearing_preference(self):
        for enabled,cooldown in ((False,0),(True,6)):
            with self.subTest(enabled=enabled,cooldown=cooldown),tempfile.TemporaryDirectory() as directory:
                fake_input=app_fixtures.FakeInput();world=app_fixtures.FakeWorld();planner=Mock()
                worker=ControlWorker(queue.Queue(),window=Mock(),input_controller=fake_input,
                    world=world,planner=planner,log_dir=Path(directory))
                worker.enabled=True
                player=app_fixtures.EngineAppWorkerTests.player_record()
                player.update(controls_enabled=enabled,controls_cooldown=cooldown)
                try:
                    result=worker.process_snapshot(app_fixtures.EngineAppWorkerTests.snapshot(player),foreground=True,dt=1/30)
                    self.assertTrue(worker.enabled)
                    self.assertIn('不允许角色操作',result['status'])
                    self.assertIsNone(result['decision'])
                    self.assertGreater(fake_input.release_calls,0)
                    self.assertEqual(fake_input.set_calls,[])
                    planner.decide.assert_not_called()
                    self.assertEqual(world.calls,[])
                finally:worker.shutdown()

    def test_diagnostics_keep_tears_and_native_control_flags(self):
        player={'controls_enabled':True,'controls_cooldown':0}
        tear={'type':2,'address':10,'tear':{'height':-5,'range':120}}
        compact=EngineDiagnostics._compact({'entities':[tear]},player,{'bodies':[]},None,{})
        self.assertEqual(compact['entities'][0]['tear']['range'],120)
        self.assertTrue(compact['player']['controls_enabled'])


class ImeGuardTests(unittest.TestCase):
    def test_game_only_close_once_and_restore_original_open_state(self):
        api=Mock();api.ime_window.return_value=77;api.is_window.return_value=True
        api.command.side_effect=[1,0,0,0]
        guard=GameImeGuard(api)
        guard.acquire(12);guard.acquire(12);guard.restore()
        self.assertEqual(api.ime_window.call_args_list,[unittest.mock.call(12)])
        self.assertEqual(api.command.call_args_list,[unittest.mock.call(77,5),
            unittest.mock.call(77,6,0),unittest.mock.call(77,5),unittest.mock.call(77,6,1)])

    def test_already_closed_ime_is_not_changed(self):
        api=Mock();api.ime_window.return_value=77;api.command.return_value=0
        guard=GameImeGuard(api);guard.acquire(12);guard.acquire(12);guard.restore()
        self.assertEqual(api.command.call_args_list,[unittest.mock.call(77,5)])

    def test_failed_close_retains_restoration_and_never_claims_success(self):
        api=Mock();api.ime_window.return_value=77;api.is_window.return_value=True
        api.command.side_effect=[1,0,1,0]
        guard=GameImeGuard(api)
        with self.assertRaises(OSError):guard.acquire(12)
        self.assertFalse(guard.report['changed'])
        guard.restore()
        self.assertEqual(api.command.call_args_list[-1],unittest.mock.call(77,6,1))


class KeyboardStateTests(unittest.TestCase):
    def reader(self,binding=83):
        reader=object.__new__(EngineReader);reader.base=0x400000
        device=0x100000;table=0x110000;mapping=0x120000
        data=bytearray(0xc4)
        struct.pack_into('<I',data,0,0xba1678)
        struct.pack_into('<II',data,8,2,0)
        struct.pack_into('<III',data,0x10,mapping,mapping+128,mapping+128)
        rows=[(k,-1,-1,-1) for k in (65,68,87,binding,263,262,265,264)]
        keys=bytearray(349);keys[83]=1
        memory={0xc57b20:struct.pack('<III',table,table+8,table+8),
                table:struct.pack('<II',device,0),device:bytes(data),
                mapping:b''.join(struct.pack('<iiii',*r) for r in rows),0xc78c10:bytes(keys)}
        def read(address,size):
            for base,raw in memory.items():
                if base<=address and address+size<=base+len(raw):return raw[address-base:address-base+size]
            raise OSError('Fixture memory range unavailable')
        reader.read=read
        return reader

    def test_engine_keyboard_action_state_uses_its_actual_bindings(self):
        state=self.reader()._keyboard_state()
        self.assertEqual(state['status'],'verified_current_build')
        self.assertEqual(state['devices'][0]['pressed_actions'],[False,False,False,True,False,False,False,False])

    def test_unknown_binding_never_becomes_a_verified_action_map(self):
        state=self.reader(binding=400)._keyboard_state()
        self.assertEqual(state['status'],'unavailable')
        self.assertEqual(state['devices'],[])


if __name__=='__main__':unittest.main()
