import copy
import json
from pathlib import Path
import unittest

from engine_world import EngineWorld
from planner import Planner
from room_mechanism import RoomMechanism,ConsecutiveBlocker


class RecordedWaitTests(unittest.TestCase):
    def cases(self):return json.loads((Path(__file__).parent/'regression_data/waits037.json').read_text(encoding='utf-8'))

    def test_last_enemy_death_waits_for_actual_open_door(self):
        s=self.cases()['defeated_enemy_door_delay'];p=s['local_player'];task=RoomMechanism()
        world=EngineWorld().update(s,p);self.assertFalse(world['targets'])
        task.decide(s,p,world,{},Planner())
        self.assertEqual(task.last_report['status'],'waiting_for_room_clear')
        self.assertFalse(ConsecutiveBlocker().observe(2,s['frame'],task.last_report['status']))
        s['frame']+=15;s['room_clear']=True;s['doors'][0].update(state=2,collision=5)
        task.decide(s,p,world,{},Planner())
        self.assertEqual(task.last_report['status'],'room_complete_hold')

    def test_recorded_hidden_round_worm_is_waiting_not_unknown_or_attackable(self):
        s=self.cases()['round_worm_dig_in'];p=s['local_player'];task=RoomMechanism()
        world=EngineWorld().update(s,p);self.assertFalse(world['targets'])
        decision=task.decide(s,p,world,{},Planner())
        self.assertEqual(task.last_report['status'],'waiting_for_attackable_enemy')
        self.assertEqual(task.last_report['observed_enemies'][0]['type'],244)
        self.assertIsNone(decision.fire)
        worm=next(e for e in s['entities'] if e['type']==244);worm['collision_class']=4;worm['visible']=True
        self.assertTrue(EngineWorld().update(s,p)['targets'])

    def test_unknown_timeout_counts_continuous_unknown_frames_not_room_age(self):
        watch=ConsecutiveBlocker()
        self.assertFalse(watch.observe(2,306,'unknown_blocker'))
        self.assertFalse(watch.observe(2,395,'unknown_blocker'))
        self.assertTrue(watch.observe(2,396,'unknown_blocker'))

    def test_combat_and_room_change_reset_unknown_wait(self):
        watch=ConsecutiveBlocker()
        watch.observe(2,57,'unknown_blocker');watch.observe(2,60,'combat')
        self.assertFalse(watch.observe(2,144,'unknown_blocker'))
        self.assertFalse(watch.observe(3,234,'unknown_blocker'))


if __name__=='__main__':unittest.main()
