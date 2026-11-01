import copy,json
from concurrent.futures import Future
from pathlib import Path
import unittest
from unittest.mock import Mock
import numpy as np
from engine_motion import EngineMotion
from engine_egress import TimedEgress,PendingEgress
from planner import Body

ROOT=Path(__file__).resolve().parents[1]


class HotStartUnitsTests(unittest.TestCase):
    def test_native_gapped_observations_recover_player_displacement_units_before_first_hit(self):
        case=json.loads((ROOT/'tests/regression_data/combat052.json').read_text(encoding='utf-8'))['native-hotstart']
        enums=json.loads((ROOT/'src/engine_enums.json').read_text(encoding='utf-8'))
        motion=EngineMotion();result=None
        for row in case['sequence']:
            s=copy.deepcopy(row['snapshot'])
            if s['frame']>25:break
            s['enums']=enums
            result=motion.update(s,s['local_player'])
        self.assertIsNotNone(result)
        self.assertGreater(result['position_a']+result['position_b'],1.8)
        self.assertLess(result['position_a']+result['position_b'],2.4)
        self.assertGreaterEqual(result['position_bootstrap_samples'],3)
        self.assertFalse(result['position_ready']) # not falsely labelled a full inertia/position fit

    def test_one_position_impulse_does_not_recalibrate_units(self):
        motion=EngineMotion()
        for frame,x in ((0,100.),(1,102.),(2,104.),(3,110.)):
            result=motion.observe(frame,(1.,0.),None,5.4,position=(x,100.))
        self.assertEqual(result['position_a']+result['position_b'],1.)


class NonblockingAdviceTests(unittest.TestCase):
    def test_pending_future_returns_terrain_advice_without_waiting_for_search(self):
        valid=np.ones((500,650),bool);future=Future();executor=Mock();executor.submit.return_value=future
        guidance=TimedEgress();guidance.executor=executor
        value=guidance.advise(valid,[Body(1,300.,200.,-50.,0.,8.)],200.,10,10.)
        self.assertIsInstance(value,PendingEgress)
        self.assertFalse(future.done())

    def test_completed_previous_room_field_is_discarded_after_terrain_changes(self):
        old=np.ones((500,650),bool);new=old.copy()
        guidance=TimedEgress();future=Future();executor=Mock();executor.submit.return_value=future
        guidance.executor=executor
        guidance.advise(old,[Body(1,300.,200.,-50.,0.,8.)],200.,10,10.)
        epoch=guidance.epoch
        future.set_result((object(),None,epoch))
        executor.submit.return_value=Future()
        value=guidance.advise(new,[Body(1,300.,200.,-50.,0.,8.)],200.,11,10.)
        self.assertIsInstance(value,PendingEgress)
        self.assertIs(value.valid,new)


if __name__=='__main__':unittest.main()
