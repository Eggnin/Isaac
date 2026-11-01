"""Execute the real Lua bridge with Lua 5.3; no game or network is started."""
from pathlib import Path
import unittest

from lupa.lua53 import LuaRuntime


ENVIRONMENT=r'''
callbacks={}
ModCallbacks={MC_POST_NEW_ROOM=1,MC_INPUT_ACTION=2,MC_POST_UPDATE=3,MC_PRE_GAME_EXIT=4}
InputHook={IS_ACTION_PRESSED=0,IS_ACTION_TRIGGERED=1,GET_ACTION_VALUE=2}
ButtonAction={ACTION_LEFT=0,ACTION_RIGHT=1,ACTION_UP=2,ACTION_DOWN=3,
 ACTION_SHOOTLEFT=4,ACTION_SHOOTRIGHT=5,ACTION_SHOOTUP=6,ACTION_SHOOTDOWN=7}
function RegisterMod() return {AddCallback=function(_,id,fn) callbacks[id]=fn end} end
function include() return {port=0,token='offline'} end
local message=0
local client={settimeout=function() end,setoption=function() end,send=function(_,s) return #s end,close=function() end}
function client:receive() message=message+1;return message==1 and 'hello' or 'step' end
local accepted=false
package.preload.socket=function() return {bind=function() return {
 settimeout=function() end,accept=function() if accepted then return nil end;accepted=true;return client end},nil end,
 gettime=function() return 0 end} end
package.preload.json=function() return {encode=function() return '{}' end,decode=function(s)
 if s=='hello' then return {cmd='hello',token='offline'} end
 return {cmd='step',seq=1,keys={'w','right'},frames=1}
 end} end
players=1
player={ControllerIndex=0,ToPlayer=function(self) return self end,IsDead=function() return false end}
Isaac={GetPlayer=function() return player end}
local level={GetStage=function() return 1 end,GetCurrentRoomIndex=function() return 84 end}
function Game() return {GetNumPlayers=function() return players end,GetFrameCount=function() return 16 end,
 GetLevel=function() return level end} end
'''


def run_contract(source):
    lua=LuaRuntime(unpack_returned_tuples=True);lua.execute(ENVIRONMENT);lua.execute(source)
    # Establish a fake authenticated client and apply one held movement/fire
    # command through the actual POST_UPDATE implementation, not a reimplementation.
    lua.execute('callbacks[ModCallbacks.MC_POST_UPDATE]()')
    lua.execute(r'''
local fn=callbacks[ModCallbacks.MC_INPUT_ACTION]
for action=0,7 do
 local held=action==ButtonAction.ACTION_UP or action==ButtonAction.ACTION_SHOOTRIGHT
 local value=fn(nil,player,InputHook.GET_ACTION_VALUE,action)
 assert(type(value)=='number','GET_ACTION_VALUE must return a number, action='..action)
 assert(value==(held and 1 or 0),'unexpected analog action value')
 local pressed=fn(nil,player,InputHook.IS_ACTION_PRESSED,action)
 assert(type(pressed)=='boolean' and pressed==held,'pressed state/type mismatch')
 local triggered=fn(nil,player,InputHook.IS_ACTION_TRIGGERED,action)
 assert(type(triggered)=='boolean' and triggered==held,'triggered state/type mismatch')
end
assert(fn(nil,nil,InputHook.GET_ACTION_VALUE,0)==nil)
assert(fn(nil,player,InputHook.GET_ACTION_VALUE,99)==nil)
player.ControllerIndex=3
assert(fn(nil,player,InputHook.GET_ACTION_VALUE,0)==nil)
player.ControllerIndex=0;players=2
assert(fn(nil,player,InputHook.GET_ACTION_VALUE,0)==nil)
''')


class LuaInputContractTests(unittest.TestCase):
    def test_current_bridge_returns_correct_types_for_all_eight_actions(self):
        run_contract((Path(__file__).resolve().parents[1]/'runtime/bridge/room_test_bridge.lua').read_text(encoding='utf-8'))

    def test_original_argument_order_reproduces_the_contract_failure(self):
        source=(Path(__file__).resolve().parents[1]/'runtime/bridge/room_test_bridge.lua').read_text(encoding='utf-8')
        broken=source.replace('function(_,entity,hook,action)','function(_,entity,action,hook)')
        self.assertNotEqual(source,broken)
        with self.assertRaisesRegex(Exception,'GET_ACTION_VALUE must return a number'):run_contract(broken)


if __name__=='__main__':unittest.main()
