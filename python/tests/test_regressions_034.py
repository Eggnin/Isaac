import copy
import json
from pathlib import Path
import queue
import tempfile
import time
import unittest
from unittest.mock import Mock

from engine_app import ControlWorker
from engine_world import EngineWorld
from hard_run_route import HardRunRoute
from planner import Planner,Body
from test_regressions_032 import normal_room


class RecordedStallTests(unittest.TestCase):
    def test_six_recorded_zero_input_stalls_now_make_safe_progress(self):
        source=Path(__file__).parent
        cases=json.loads((source/'regression_data/stalls034.json').read_text(encoding='utf-8'))
        enums=json.loads((Path(__file__).resolve().parents[1]/'src/engine_enums.json').read_text(encoding='utf-8'))
        for name,case in cases.items():
            with self.subTest(name=name),tempfile.TemporaryDirectory() as directory:
                snapshot=copy.deepcopy(case['snapshot']);snapshot['enums']=enums
                controller=Mock();controller._held=set()
                worker=ControlWorker(queue.Queue(),input_controller=controller,log_dir=Path(directory),dry_control=True)
                worker.enabled=True;worker.last_frame=snapshot['frame']-1
                worker._log=Mock();worker.diagnostics.record=Mock();worker.diagnostics._enqueue=Mock()
                worker.idle_router=HardRunRoute();original_update=worker.motion.update
                def fixed(s,p,**kwargs):
                    result=original_update(s,p,**kwargs);result.update(copy.deepcopy(case['motion']));return result
                worker.motion.update=fixed;snapshot['_read_started']=time.perf_counter()
                try:
                    update=worker.process_snapshot(snapshot,foreground=True,dt=1/30)
                    decision=update['decision']
                    self.assertIsNotNone(decision);self.assertNotEqual(decision.move,(0,0))
                    self.assertEqual(update['search']['hits'],0)
                    walkable=update['world']['walkable']
                    self.assertTrue(all(walkable[round(y),round(x)] for x,y in decision.path))
                    if name=='run-0021':
                        self.assertFalse(update['world']['targets'])
                        self.assertTrue(any(body.kind=='hazard' for body in update['world']['bodies']))
                        self.assertEqual(update['route']['status'],'approaching_door')
                finally:worker.shutdown()

    def test_fireplace_is_optional_but_its_contact_danger_remains(self):
        fireplace={'type':33,'address':3,'x':400.,'y':280.,'radius':13.,'health':5.,
                   'collision_damage':1.,'collision_class':4}
        enemy={**fireplace,'type':10,'address':4,'x':500.}
        world=EngineWorld().update({'entities':[fireplace,enemy],'room_clear':True},
                                 {'x':320.,'y':280.,'radius':10.,'stats':{}})
        self.assertEqual([e['address'] for e in world['targets']],[4])
        danger=next(b for b in world['bodies'] if b.id==3)
        self.assertEqual(danger.kind,'hazard');self.assertEqual(danger.radius,13.)
        uncleared=EngineWorld().update({'entities':[fireplace],'room_clear':False},
                                      {'x':320.,'y':280.,'radius':10.,'stats':{}})
        self.assertEqual([e['address'] for e in uncleared['targets']],[3])

    def test_cleared_door_crossing_still_searches_around_remaining_projectiles(self):
        world=normal_room();world['player_position']=(80.,280.)
        world['bodies']=[Body(9,50.,280.,0.,0.,5.,'projectile')]
        state={'difficulty':1,'level_stage':1,'room_index':84,'frame':20,
               'doors':[{'slot':0,'x':40.,'y':280.,'target_room_type':1,'target_room_index':83,'collision':5,'state':2}]}
        planner=Planner()
        decision=HardRunRoute().decide(state,{'stats':{'move_speed':1.}},world,{},planner)
        self.assertEqual(planner._search.last_report['hits'],0)
        self.assertEqual(len(decision.path),24)
        self.assertTrue(all((x-50)**2+(y-280)**2>15**2 for x,y in decision.path))


if __name__=='__main__':unittest.main()
