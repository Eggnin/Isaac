"""Real Lua io.open regression, including the original Unicode-path failure."""
import ctypes,json,sys
from pathlib import Path
from lupa.lua53 import LuaRuntime

root=Path(__file__).resolve().parents[1]
check=json.loads(Path(sys.argv[1]).read_text(encoding='utf-8-sig'))
canonical=Path(check['expected_run'])
assert canonical.is_dir() and not str(canonical).isascii()
lua=LuaRuntime(unpack_returned_tuples=True)
probe=lua.eval('function(p) local f,e=io.open(p,"a"); if not f then return false,e end f:close(); return true end')
legacy=probe(str(canonical/'old-path-probe.jsonl'))
legacy_opened=legacy is True
acp=ctypes.WinDLL('kernel32').GetACP()
if acp==936:assert not legacy_opened,'Original narrow-CRT path failure was not reproduced'
if legacy_opened:(canonical/'old-path-probe.jsonl').unlink()

cfg=lua.execute(check['lua'])
names={'capture_path':'engine-events.jsonl','capture_damage_path':'engine-damage-events.jsonl','capture_status_path':'engine-event-status.json'}
for key,name in names.items():
    assert cfg[key].isascii(),cfg[key]
    assert Path(cfg[key]).parent.samefile(canonical)
game=Path(r'D:\Steam\steamapps\common\The Binding of Isaac Rebirth\resources\scripts')
lua.execute((game/'enums.lua').read_text(encoding='utf-8').split('CallbackPriority =')[0])
native_json=lua.execute((game/'json.lua').read_text(encoding='utf-8'))
lua.execute("""callbacks={};mod={Name='path-regression',AddPriorityCallback=function(_,id,priority,fn) callbacks[id]=fn end}
function Game() return {GetFrameCount=function() return 42 end,GetLevel=function() return {
 GetStage=function() return 1 end,GetCurrentRoomIndex=function() return 84 end} end} end""")
collector=lua.execute((root/'runtime/bridge/engine_event_capture.lua').read_text(encoding='utf-8'))
state=collector.start(lua.globals().mod,cfg,native_json,None)
assert state.enabled and not state.error,state.error
lua.globals().callbacks[lua.globals().ModCallbacks.MC_POST_UPDATE](lua.globals().mod)
state.finish('offline_path_check')
assert state.closed and state.complete and not state.error,state.error
for key,name in names.items():
    assert (canonical/name).samefile(cfg[key])
    assert (canonical/name).stat().st_size>0
raw=[json.loads(line) for line in (canonical/'engine-events.jsonl').read_text(encoding='utf-8').splitlines()]
assert raw[-1]['kind']=='capture_end' and raw[-1]['complete']
status=json.loads((canonical/'engine-event-status.json').read_text(encoding='utf-8'))
assert status['closed'] and status['complete']
report={'windows_acp':acp,'original_unicode_path_opened':legacy_opened,
    'existing_unicode_directory_confirmed':True,'ascii_alias':'D:\\IsaacAssistIO',
    'real_lua_capture_files_created':3,'same_physical_files_verified':3,
    'capture_end_complete':True,'alias_reuse_verified':check['alias_reused'],
    'powershell_major':check['powershell_major'],'syntax_checks':check['syntax_checks'],
    'apostrophe_path_verified':"'" in check['capture_directory'],
    'game_launched':False,'full_suite_run':False}
destination=root/'records/validation/capture045-path-fix.json'
destination.write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
print(json.dumps(report))
