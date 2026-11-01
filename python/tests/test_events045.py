"""Execute the collector in Lua5.3 against the installed callback catalog."""
import json
from pathlib import Path
import tempfile
import unittest
from types import SimpleNamespace
from unittest.mock import patch

from lupa.lua53 import LuaRuntime
from engine_event_journal import EngineEventJournal
from room_test_transport import RoomBridge

SOURCE=Path(__file__).parent
GAME=Path(r'D:\Steam\steamapps\common\The Binding of Isaac Rebirth\resources\scripts')


class NativeObject:
    def __init__(self,**fields):self.fields=fields
    def __getitem__(self,key):return self.fields[key]
    def __str__(self):return 'NativeObject'


class LuaEventCaptureTests(unittest.TestCase):
    def environment(self,directory,*,reject=None,write_failure=False):
        lua=LuaRuntime(unpack_returned_tuples=True)
        lua.execute((GAME/'enums.lua').read_text(encoding='utf-8').split('CallbackPriority =')[0])
        native_json=lua.execute((GAME/'json.lua').read_text(encoding='utf-8'))
        lua.globals().native_json=native_json
        lua.execute('''callbacks={};mod={Name='test',AddPriorityCallback=function(_,id,priority,fn)
          assert(priority<0);if id==reject_id then error('not supported') end;callbacks[id]=fn end}
          function Game() return {GetFrameCount=function() return 42 end,GetLevel=function() return {
           GetStage=function() return 1 end,GetCurrentRoomIndex=function() return 84 end} end} end
          function GetPtrHash(value) return value.InitSeed end
        ''')
        lua.globals().reject_id=reject
        cfg=lua.table_from({'capture_path':str(Path(directory)/'engine-events.jsonl'),
             'capture_damage_path':str(Path(directory)/'engine-damage-events.jsonl'),
             'capture_status_path':str(Path(directory)/'engine-event-status.json')})
        if write_failure:
            lua.globals().capture_cfg=cfg
            lua.execute('''local original=io.open
              io.open=function(path,mode)
               local f,err=original(path,mode);if not f or path~=capture_cfg.capture_path then return f,err end
               return {seek=function(_,...) return f:seek(...) end,setvbuf=function(_,...) return f:setvbuf(...) end,
                write=function(_,data) if inject_write_failure then return nil,'disk full' end;return f:write(data) end,
                flush=function() return f:flush() end,close=function() return f:close() end}
              end''')
        module=lua.execute((Path(__file__).resolve().parents[1]/'runtime/bridge/engine_event_capture.lua').read_text(encoding='utf-8'))
        state=module.start(lua.globals().mod,cfg,native_json,None)
        lua.globals().capture_state=state
        return lua,state,dict(cfg.items())

    def test_all_native_catalog_callbacks_and_every_high_frequency_invocation_are_saved(self):
        with tempfile.TemporaryDirectory() as directory:
            lua,state,cfg=self.environment(directory)
            lua.execute('''for id,fn in pairs(callbacks) do if id~=ModCallbacks.MC_PRE_GAME_EXIT then
              assert(fn(mod,nil,false,42,'text',nil)==nil) end end
              for i=1,1000 do assert(callbacks[ModCallbacks.MC_POST_PROJECTILE_UPDATE](mod,i)==nil) end
              assert(callbacks[ModCallbacks.MC_PRE_GAME_EXIT](mod,false)==nil)''')
            rows=[json.loads(line) for line in Path(cfg['capture_path']).read_text(encoding='utf-8').splitlines()]
            catalog=rows[0]['catalog'];callbacks=[r for r in rows if r['kind']=='callback']
            self.assertGreaterEqual(len(catalog),74)
            self.assertTrue(all(c['registered'] for c in catalog))
            self.assertEqual(len(callbacks),len(catalog)+1000)
            self.assertEqual([r['seq'] for r in callbacks],list(range(1,len(callbacks)+1)))
            self.assertEqual(rows[-1]['written'],len(callbacks));self.assertTrue(rows[-1]['complete'])
            first=callbacks[0];self.assertEqual(first['arg_count'],5)
            self.assertEqual(first['args'][0]['kind'],'nil');self.assertEqual(first['args'][1]['value'],False)
            self.assertEqual(first['args'][4]['kind'],'nil')
            self.assertTrue(state.complete)

    def test_damage_source_userdata_and_64_bit_flags_are_captured_without_return_override(self):
        with tempfile.TemporaryDirectory() as directory:
            lua,state,cfg=self.environment(directory)
            source=NativeObject(Type=215,Variant=0,SubType=0,InitSeed=555,Index=9,
                Position=NativeObject(X=100.,Y=120.),Velocity=NativeObject(X=1.,Y=2.),Visible=False)
            player=NativeObject(Type=1,Variant=0,SubType=0,InitSeed=777,Index=0)
            lua.globals().target=player;lua.globals().source=NativeObject(Type=215,Variant=0,Entity=source)
            lua.execute('assert(callbacks[ModCallbacks.MC_ENTITY_TAKE_DMG](mod,target,1,(1<<60)+3,source,30)==nil);capture_state.finish("test")')
            rows=[json.loads(line) for line in Path(cfg['capture_damage_path']).read_text(encoding='utf-8').splitlines()]
            row=rows[-1];self.assertEqual(row['args'][2]['value'],str((1<<60)+3))
            ent=row['args'][3]['fields']['Entity'];self.assertEqual(ent['identity']['InitSeed'],'555')
            self.assertIs(ent['fields']['Visible']['value'],False)
            self.assertEqual(row['args'][0]['identity']['InitSeed'],'777')

    def test_registration_failure_and_existing_log_are_not_reported_complete(self):
        with tempfile.TemporaryDirectory() as directory:
            lua,state,cfg=self.environment(directory,reject=11)
            self.assertIn('registration',state.error);state.finish('test');self.assertFalse(state.complete)
            original=Path(cfg['capture_path']).read_bytes()
            _,again,_=self.environment(directory)
            self.assertIn('already_contains_data',again.error)
            self.assertEqual(Path(cfg['capture_path']).read_bytes(),original)

    def test_removed_userdata_keeps_identity_without_invoking_sprite_methods(self):
        with tempfile.TemporaryDirectory() as directory:
            lua,state,cfg=self.environment(directory)
            removed=NativeObject(Type=9,Variant=0,InitSeed=555,
                Exists=lua.eval('function() return false end'),GetSprite=lua.eval('function() error("removed sprite must not be read") end'))
            lua.globals().removed=removed
            lua.execute('callbacks[ModCallbacks.MC_POST_ENTITY_REMOVE](mod,removed);capture_state.finish("test")')
            rows=[json.loads(line) for line in Path(cfg['capture_path']).read_text().splitlines()]
            row=next(r for r in rows if r.get('callback')=='MC_POST_ENTITY_REMOVE')
            self.assertEqual(row['args'][0]['state'],'removed_reference')
            self.assertEqual(row['args'][0]['identity']['InitSeed'],'555');self.assertTrue(state.complete)

    def test_write_failure_is_explicit_not_a_silent_dropped_callback(self):
        with tempfile.TemporaryDirectory() as directory:
            lua,state,cfg=self.environment(directory)
            lua.execute('''local open=io.open
              -- Force the next serialization failure, keeping the callback return nil.
              native_json.encode=function() error('disk/encoder failure') end
              assert(callbacks[ModCallbacks.MC_POST_UPDATE](mod)==nil)
              capture_state.finish('test')''')
            self.assertIsNotNone(state.error);self.assertFalse(state.complete)
            self.assertGreater(state.seen,state.written)

    def test_file_write_failure_preserves_nil_return_and_marks_capture_incomplete(self):
        with tempfile.TemporaryDirectory() as directory:
            lua,state,cfg=self.environment(directory,write_failure=True)
            lua.execute('inject_write_failure=true;assert(callbacks[ModCallbacks.MC_POST_UPDATE](mod)==nil);capture_state.finish("test")')
            self.assertIn('write_failed',state.error);self.assertFalse(state.complete)
            self.assertEqual(state.seen,1);self.assertEqual(state.written,0)

    def test_real_bridge_input_contract_and_capture_finish_work_together(self):
        from test_room_bridge036 import ENVIRONMENT
        with tempfile.TemporaryDirectory() as directory:
            lua=LuaRuntime(unpack_returned_tuples=True);lua.execute(ENVIRONMENT)
            lua.globals().native_json=lua.execute((GAME/'json.lua').read_text(encoding='utf-8'))
            lua.globals().capture_module=lua.execute((Path(__file__).resolve().parents[1]/'runtime/bridge/engine_event_capture.lua').read_text(encoding='utf-8'))
            lua.globals().capture_cfg=lua.table_from({'port':0,'token':'offline',
                'capture_path':str(Path(directory)/'raw'),'capture_damage_path':str(Path(directory)/'damage'),
                'capture_status_path':str(Path(directory)/'status')})
            lua.execute('''observers={};function RegisterMod() return {
              AddCallback=function(_,id,fn) callbacks[id]=fn end,
              AddPriorityCallback=function(_,id,priority,fn) observers[id]=fn end} end
              function include(name) if name=='engine_event_capture' then return capture_module end;return capture_cfg end
              package.preload.json=function() return {
               encode=function(v) last_packet=v;return native_json.encode(v) end,
               decode=function(s) if s=='hello' then return {cmd='hello',token='offline'} end
                if s=='step' then return {cmd='step',seq=1,keys={'w','right'},frames=1} end
                return {cmd='finish_capture',seq=2} end} end
              function dispatch(id,...) if observers[id] then assert(observers[id](nil,...)==nil) end
               return callbacks[id](nil,...) end
            ''')
            # The environment supplies hello and then step; make the next receive finish.
            lua.execute("local client_receive=0;local old=package.preload.socket;package.preload.socket=function() local s=old();local bind=s.bind;s.bind=function(...) local server=bind(...);local accept=server.accept;server.accept=function(...) local c=accept(...);if c then c.receive=function() client_receive=client_receive+1;return client_receive==1 and 'hello' or client_receive==2 and 'step' or 'finish' end end;return c end;return server end;return s end")
            lua.execute((Path(__file__).resolve().parents[1]/'runtime/bridge/room_test_bridge.lua').read_text(encoding='utf-8'))
            lua.execute('''dispatch(ModCallbacks.MC_POST_UPDATE)
             for action=0,7 do for hook=0,2 do
              local value=dispatch(ModCallbacks.MC_INPUT_ACTION,player,hook,action)
              if hook==InputHook.GET_ACTION_VALUE then assert(type(value)=='number') else assert(type(value)=='boolean') end
             end end
             dispatch(ModCallbacks.MC_POST_UPDATE)
             assert(last_packet.type=='capture_finished');assert(last_packet.capture.complete)
            ''')
            rows=[json.loads(line) for line in (Path(directory)/'raw').read_text().splitlines()]
            self.assertTrue(rows[-1]['complete'])
            self.assertEqual(sum(r.get('callback')=='MC_INPUT_ACTION' for r in rows),24)


def integer(value):return {'kind':'integer','value':str(value)}
def entity(seed,kind=1):return {'kind':'userdata','class':'entity','identity':{'InitSeed':str(seed),'Type':str(kind)}}


class DamageAssociationTests(unittest.TestCase):
    def test_ambiguous_wrong_identity_and_unapplied_attempts_are_not_claimed_as_confirmed(self):
        for variant in ('multiple','wrong_room','wrong_seed','no_health_change'):
            with self.subTest(variant=variant),tempfile.TemporaryDirectory() as directory:
                out=Path(directory);cfg={'capture_path':str(out/'raw'),'capture_damage_path':str(out/'index'),'capture_status_path':str(out/'status')}
                journal=EngineEventJournal(cfg,out);snap={'frame':10,'level_stage':1,'room_index':84,'local_player':{'seed':777}}
                journal.observe(snap,0)
                row={'kind':'callback','callback':'MC_ENTITY_TAKE_DMG','seq':1,'frame':11,'stage':1,
                     'room':85 if variant=='wrong_room' else 84,
                     'args':[entity(999 if variant=='wrong_seed' else 777),integer(1),integer(0),{'kind':'nil'},integer(30)]}
                rows=[row,dict(row,seq=2)] if variant=='multiple' else [row]
                (out/'index').write_text(''.join(json.dumps(r)+'\n' for r in rows))
                snap['frame']=11;journal.observe(snap,0 if variant=='no_health_change' else 1)
                result=journal.finish({'closed':False,'complete':False})
                self.assertFalse(result['complete'])
                text=(out/'damage-source-links.jsonl').read_text()
                if variant=='no_health_change':self.assertEqual(text,'');continue
                link=json.loads(text);self.assertFalse(link['applied_damage_source_confirmed'])
                self.assertEqual(link['association'],'multiple_engine_callback_candidates' if variant=='multiple' else 'no_matching_engine_callback')

    def test_source_is_linked_by_frame_room_and_seed_not_nearest_entity(self):
        with tempfile.TemporaryDirectory() as directory:
            out=Path(directory);cfg={'capture_damage_path':str(out/'index.jsonl'),'capture_status_path':str(out/'status.json'),
                                   'capture_path':str(out/'raw.jsonl')}
            journal=EngineEventJournal(cfg,out)
            snap={'frame':10,'level_stage':1,'room_index':84,'local_player':{'seed':777}}
            journal.observe(snap,0)
            source={'kind':'userdata','class':'entity_source','fields':{'Type':integer(215),'Entity':entity(555,215)}}
            row={'kind':'callback','callback':'MC_ENTITY_TAKE_DMG','seq':8,'frame':11,'stage':1,'room':84,
                 'args':[entity(777.0),integer(1),integer(16),source,integer(30)]}
            (out/'index.jsonl').write_text(json.dumps(row)+'\n',encoding='utf-8')
            snap['frame']=11;journal.observe(snap,1)
            snap['frame']=12;journal.observe(snap,1)
            status={'closed':True,'complete':True,'seen':8,'written':8}
            (out/'raw.jsonl').write_text(json.dumps({'kind':'capture_end','seen':8,'written':8,'complete':True})+'\n')
            result=journal.finish(status)
            self.assertTrue(result['complete']);link=json.loads((out/'damage-source-links.jsonl').read_text())
            self.assertEqual(link['association'],'unique_engine_callback_candidate')
            self.assertEqual(link['engine_damage_attempts'][0]['source_entity']['InitSeed'],555)
            self.assertFalse(link['applied_damage_source_confirmed'])

    def test_missing_footer_cannot_be_reported_as_complete(self):
        with tempfile.TemporaryDirectory() as directory:
            out=Path(directory);cfg={'capture_path':str(out/'raw'),'capture_damage_path':str(out/'index'),'capture_status_path':str(out/'status')}
            journal=EngineEventJournal(cfg,out)
            self.assertFalse(journal.finish({'closed':True,'complete':True,'seen':0,'written':0})['complete'])

    def test_low_space_stops_without_rotating_or_deleting_existing_events(self):
        with tempfile.TemporaryDirectory() as directory:
            out=Path(directory);cfg={'capture_path':str(out/'raw'),'capture_damage_path':str(out/'index'),'capture_status_path':str(out/'status')}
            (out/'raw').write_text('preserve existing events\n');journal=EngineEventJournal(cfg,out)
            with patch('engine_event_journal.shutil.disk_usage',return_value=SimpleNamespace(free=1)):
                with self.assertRaisesRegex(RuntimeError,'disk_space_low'):journal.observe({'frame':1},0)
            journal.finish({'complete':False});self.assertEqual((out/'raw').read_text(),'preserve existing events\n')

    def test_loop_history_preserves_capture_completeness(self):
        from loop_history import record_run
        with tempfile.TemporaryDirectory() as directory:
            root=Path(directory);session=root/'session';attempt=session/'run-0001';run=attempt/'external045-room-test-1';run.mkdir(parents=True)
            capture={'complete':True,'status':{'seen':100,'written':100}}
            (run/'observer-result.json').write_text(json.dumps({'version':'0.4.5-external-core','stop_reason':'player_dead','engine_event_capture':capture}))
            summary=record_run(session,attempt,root)
            self.assertEqual(summary['engine_event_capture'],capture)
            history=json.loads((root/'runs-history.jsonl').read_text())
            self.assertTrue(history['engine_event_capture']['complete'])

    def test_finish_packet_does_not_advance_room_boundary_and_ignores_stop_only_for_bounded_flush(self):
        bridge=RoomBridge({},lambda:(_ for _ in ()).throw(RuntimeError('stop')))
        bridge.sock=object();bridge.boundary={'seq':7,'generation':3};sent=[];bridge._send=sent.append
        bridge.buffer=b'{"type":"capture_finished","protocol":1,"capture":{"closed":true,"complete":true}}\n'
        self.assertTrue(bridge.finish_capture()['complete']);self.assertEqual(bridge.boundary['seq'],7)
        self.assertEqual(sent[0]['cmd'],'finish_capture')


class RunnerCaptureTests(unittest.TestCase):
    def test_realtime_runner_closes_capture_and_marks_unconfirmed_capture_incomplete(self):
        from unittest.mock import Mock
        import realtime_room_test as runner
        for complete in (False,True):
            with self.subTest(complete=complete),tempfile.TemporaryDirectory() as directory:
                out=Path(directory);config=out/'config.json';config.write_text(json.dumps({'capture_mode':'all_callbacks_raw'}))
                snapshots=[]
                for i in range(4):
                    p={'x':320.,'y':280.,'radius':10.,'controller_index':0,'dead':i==3,'health_parts':{'red':6},'weapons':[]}
                    snapshots.append({'frame':10+i,'room':1,'level_stage':1,'room_index':84,'local_player':p,'players':[p],
                        'room_clear':False,'entities':[],'doors':[]})
                worker=Mock();worker.input._held=set();worker.window.foreground.return_value=False
                worker.diagnostics.dropped=worker.diagnostics.write_errors=0;worker.reader.snapshot.side_effect=snapshots
                worker.process_snapshot.side_effect=lambda s,**kw:{'player':s['local_player'],'world':{'targets':[],'bodies':[]}}
                bridge=Mock();bridge.connect.return_value={'mode':'realtime'};events=Mock()
                args=SimpleNamespace(output=out,room_test_config=config,no_turbo=True,pid=7,process_mode='steam',startup_timeout=10,
                    stall_seconds=30,room_seconds=600,seconds=0,stop_file=None)
                with patch.object(runner,'ControlWorker',return_value=worker),patch.object(runner,'identify'),\
                    patch.object(runner,'wait_engine_ready',return_value=Mock(pid=7,launch_report={})),\
                    patch.object(runner,'start_hard_run'),patch.object(runner,'RoomBridge',return_value=bridge),\
                    patch.object(runner,'EngineEventJournal',return_value=events),\
                    patch.object(runner,'finish_engine_capture',return_value={'complete':complete}) as finish,\
                    patch.object(runner,'hotkey_pressed',return_value=False),patch.object(runner.time,'sleep'):
                    runner.main(args)
                result=json.loads((out/'observer-result.json').read_text(encoding='utf-8'))
                self.assertEqual(result['stop_reason'],'player_dead' if complete else 'engine_event_capture_incomplete')
                self.assertEqual(events.observe.call_count,4);finish.assert_called_once_with(events,bridge)
                bridge.close.assert_called_once()


if __name__=='__main__':unittest.main()
