"""Native spider timing must not postpone a known landing reservation."""
import copy
import json
from pathlib import Path
import struct
import unittest

from engine_behaviors import npc_state_frame
from engine_motion import EngineMotion

ROOT=Path(__file__).resolve().parents[1]


class NativeSpiderTimingTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.cases=json.loads((ROOT/'tests/regression_data/combat050.json').read_text(encoding='utf-8'))
        cls.enums=json.loads((ROOT/'src/engine_enums.json').read_text(encoding='utf-8'))

    def sample(self,case,frame):
        row=next(r for r in self.cases[case]['sequence'] if r['snapshot']['frame']==frame)
        s=copy.deepcopy(row['snapshot']);s['enums']=self.enums
        seed=self.cases[case]['damage']['engine_damage_attempts'][0]['source_entity']['InitSeed']
        e=next(e for e in s['entities'] if e.get('seed')==seed)
        return s,e,row

    def test_reader_matches_native_negative_counter_instead_of_uint32_wrap(self):
        import engine_reader
        from test_engine_reader import EngineReaderDecodeTests
        request=self.cases['spider-2']['damage']['engine_damage_attempts'][0]
        native=int(request['source_reference']['fields']['Entity']['fields']['StateFrame']['value'])
        self.assertEqual(native,-3)
        raw=EngineReaderDecodeTests().entity_bytes(kind=85)
        struct.pack_into('<i',raw,0x410,native)
        self.assertEqual(engine_reader.decode_entity(1234,raw).state_frame,native)

    def test_truncated_player_identity_never_exposes_partial_indices(self):
        import engine_reader
        from test_engine_reader import EngineReaderDecodeTests
        raw=EngineReaderDecodeTests().entity_bytes(kind=1,length=0x1620)
        with self.assertRaisesRegex(ValueError,'Incomplete player identity'):
            engine_reader.decode_entity(1234,raw[:0x161c])

    def test_idle_to_walk_never_delays_an_already_reserved_native_destination(self):
        for frame,phase in ((711,'Idle'),(716,'Walk')):
            with self.subTest(frame=frame):
                s,e,_=self.sample('spider-1',frame);self.assertEqual(e['animation'],phase)
                result=EngineMotion().update(s,s['local_player'])
                destination=tuple(e['target_position'])
                reserve=next(b for b in result['hazards'] if b.id==e['address'] and b.kind=='hazard' and (b.x,b.y)==destination)
                self.assertEqual(reserve.start_after,0.)
                self.assertLessEqual(reserve.end_after,24/30)

    def test_legacy_negative_tail_remains_active_and_bounded_without_editing_raw_snapshot(self):
        s,e,_=self.sample('spider-2',793)
        self.assertEqual(e['state_frame'],4294967294)
        self.assertEqual(npc_state_frame(e),-2)
        motion=EngineMotion().update(s,s['local_player'])
        dash=next(d for d in motion['committed_dashes'] if d['entity']==e['address'])
        self.assertEqual(dash['state_frame'],-2)
        self.assertEqual(dash['raw_state_frame'],4294967294)
        self.assertEqual(dash['reservation_start'],0.)
        self.assertLessEqual(dash['reservation_lifetime'],24/30)
        self.assertEqual(e['state_frame'],4294967294)

    def test_single_committed_spider_enables_early_escape_ranking(self):
        from test_combat039 import RecordedCombatTests
        s,e,row=self.sample('spider-2',788)
        s['entities']=[x for x in s['entities'] if x['type']==1 or x['address']==e['address']]
        helper=RecordedCombatTests()
        helper.cases=lambda:{'case':{'snapshot':s,'motion':copy.deepcopy(row['decision']['motion'])}}
        _,update=helper.replay('case')
        self.assertEqual({b.id for b in update['world']['bodies'] if b.kind in ('enemy','hazard')},{e['address']})
        self.assertTrue(update['search']['committed_dash_pressure'])
        self.assertTrue(update['search']['crowd_pressure'])
        self.assertEqual(update['motion']['committed_dashes'][0]['reservation_start'],0.)


if __name__=='__main__':unittest.main()
