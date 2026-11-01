import unittest
import time
from unittest.mock import Mock
from hard_run_start import menu_action


class HardRunMenuTests(unittest.TestCase):
    def character(self,**kw):
        return {'mode':'menu','menu_id':5,'character_status':0,
                'character_input_possible':True,'character_unlocked':True,
                'character_difficulty':0,'character_selection':1,**kw}

    def test_normal_mode_is_changed_before_confirming_start(self):
        self.assertEqual(menu_action(self.character()),'down')
        self.assertEqual(menu_action(self.character(character_difficulty=1)),'enter')

    def test_greedier_is_not_mistaken_for_hard_mode(self):
        self.assertEqual(menu_action(self.character(character_difficulty=3)),'up')

    def test_random_character_is_not_confirmed(self):
        self.assertEqual(menu_action(self.character(character_difficulty=1,character_selection=0)),'right')

    def test_delete_save_prompt_is_never_confirmed(self):
        self.assertIsNone(menu_action({'mode':'menu','menu_id':2,'save_state':1,'save_selection':0}))

    def test_continue_selection_is_moved_to_new_run(self):
        self.assertEqual(menu_action({'mode':'menu','menu_id':3,'game_selection':1}),'up')

    def test_no_keys_during_character_transition_or_unknown_menu(self):
        self.assertIsNone(menu_action(self.character(character_input_possible=False)))
        self.assertIsNone(menu_action({'mode':'menu','menu_id':20}))
        self.assertIsNone(menu_action({'mode':'game'}))

    def test_only_verified_pre_menu_mode_is_skipped(self):
        self.assertEqual(menu_action({'mode':'startup_screen','engine_mode':3}),'enter')
        self.assertIsNone(menu_action({'mode':'unavailable','engine_mode':0}))

    def test_startup_focus_loss_is_not_misreported_as_engine_timeout(self):
        from hard_run_start import start_hard_run
        worker=Mock();worker.window.foreground.return_value=False
        report={}
        with self.assertRaisesRegex(RuntimeError,'input focus lost'):
            start_hard_run(worker,time.monotonic()+1,report)
        self.assertEqual(report['failure'],'input_focus_lost')
        worker.reader.menu_snapshot.assert_not_called()
        worker.input.release_all.assert_called_once()


if __name__=='__main__':unittest.main()
