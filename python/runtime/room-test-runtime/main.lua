-- Test-only synchronous adapter. Production sensing/planning remains external.
-- Frame-boundary/TCP stepping follows Lceoliu/AIsaac's J460 bridge design.
local mod=RegisterMod('Isaac Assist Room Test 035',1)
local json=require('json')
local socket=require('socket') -- --luadebug, original game's LuaSocket
local cfg=include('room_test_config')
local server=assert(socket.bind('127.0.0.1',cfg.port))
server:settimeout(0)
local client=nil
local held={}
local triggered={}
local remaining=0
local seq=0
local generation=0
local visited={}
local floor=nil
local event='connected'
local partial=''
local transitions=0
local failure=nil
local realtime=false
local actions={a=ButtonAction.ACTION_LEFT,d=ButtonAction.ACTION_RIGHT,
 w=ButtonAction.ACTION_UP,s=ButtonAction.ACTION_DOWN,left=ButtonAction.ACTION_SHOOTLEFT,
 right=ButtonAction.ACTION_SHOOTRIGHT,up=ButtonAction.ACTION_SHOOTUP,down=ButtonAction.ACTION_SHOOTDOWN}

local function close()
 held={};triggered={};if client then client:close() end;client=nil;partial='';remaining=0
end
local function send(value)
 local encoded=json.encode(value)..'\n'
 local ok=client:send(encoded)
 if not ok then close();return false end
 return true
end
local function packet()
 local game=Game();local level=game:GetLevel();local p=Isaac.GetPlayer(0)
 return {type='boundary',protocol=1,bridge_revision='realtime-038',mode=realtime and 'realtime' or 'synchronous',seq=seq,frame=game:GetFrameCount(),generation=generation,
  stage=level:GetStage(),room=level:GetCurrentRoomIndex(),event=event,
  players=game:GetNumPlayers(),controller=p.ControllerIndex,dead=p:IsDead(),
  transitions=transitions,error=failure}
end
local function next_room()
 local game=Game();local level=game:GetLevel()
 local floor_key=tostring(level:GetStage())..':'..tostring(level:GetStageType())
 if floor~=floor_key then floor=floor_key;visited={} end
 visited[level:GetCurrentRoomIndex()]=true
 local rooms=level:GetRooms();local choices={}
 for i=0,rooms.Size-1 do
  local desc=rooms:Get(i)
  if desc.Data and desc.SafeGridIndex>=0 and not visited[desc.SafeGridIndex] and
     (desc.Data.Type==RoomType.ROOM_DEFAULT or desc.Data.Type==RoomType.ROOM_BOSS or desc.Data.Type==RoomType.ROOM_MINIBOSS) then
   choices[#choices+1]={index=desc.SafeGridIndex,boss=desc.Data.Type==RoomType.ROOM_BOSS}
  end
 end
 table.sort(choices,function(a,b) if a.boss~=b.boss then return not a.boss end;return a.index<b.index end)
 held={};triggered={};transitions=transitions+1
 if #choices>0 then
  game:ChangeRoom(choices[1].index)
 else
  -- Sample all regular floors repeatedly without healing or resurrecting.
  local stage=level:GetStage();Isaac.ExecuteCommand('stage '..tostring(stage>=12 and 1 or stage+1))
 end
 event='room_transition';remaining=2
end
mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM,function() generation=generation+1 end)
mod:AddCallback(ModCallbacks.MC_INPUT_ACTION,function(_,entity,hook,action)
 if realtime then return end -- ordinary test uses production window-message input
 if not client or not entity or not entity:ToPlayer() or Game():GetNumPlayers()~=1 or entity:ToPlayer().ControllerIndex~=0 then return end
 local value=held[action] and 1 or 0
 local controlled=false
 for _,id in pairs(actions) do if action==id then controlled=true;break end end
 if not controlled then return end
 if hook==InputHook.GET_ACTION_VALUE then return value end
 if hook==InputHook.IS_ACTION_PRESSED then return value==1 end
 if hook==InputHook.IS_ACTION_TRIGGERED then return triggered[action] or false end
end)
mod:AddCallback(ModCallbacks.MC_POST_UPDATE,function()
 triggered={}
 if not client then
  client=server:accept()
  if not client then return end
  client:setoption('tcp-nodelay',true)
  client:settimeout(2)
  local line=client:receive('*l')
  local ok,msg=pcall(json.decode,line or '')
  if not ok or msg.token~=cfg.token or msg.cmd~='hello' then close();return end
  realtime=msg.mode=='realtime'
  client:settimeout(realtime and 0 or .2);event='connected';remaining=0
  if realtime then seq=seq+1;send(packet());return end
 end
 if Game():GetNumPlayers()~=1 or Isaac.GetPlayer(0).ControllerIndex~=0 then
  failure='single_player_keyboard_required';send(packet());close();return
 end
 if realtime then
  -- One nonblocking command poll per engine update. No wait loop and no
  -- stepping/input callback in this mode; rendering and simulation run freely.
  if remaining>0 then
   remaining=remaining-1
   if remaining==0 then seq=seq+1;send(packet()) end
   return
  end
  local line,err,part=client:receive('*l')
  if not line then
   if err=='timeout' then partial=partial..(part or '') else close() end
   return
  end
  line=partial..line;partial=''
  local ok,msg=pcall(json.decode,line)
  if not ok then send({type='error',error='bad_json'});return end
  if msg.cmd=='close' then send({type='closed'});close();return end
  if msg.cmd~='next' or msg.seq~=seq then send({type='error',error='invalid_realtime_command'});return end
  local opened=false
  for slot=0,7 do local door=Game():GetRoom():GetDoor(slot);if door and door:IsOpen() then opened=true end end
  if not opened then send({type='error',error='door_not_open'});return end
  if Isaac.GetPlayer(0):IsDead() then send({type='error',error='player_dead'});return end
  local success,why=pcall(next_room)
  if not success then send({type='error',error=tostring(why)}) end
  return
 end
 if remaining>0 then remaining=remaining-1;if remaining>0 then return end end
 seq=seq+1
 if not send(packet()) then return end
 local deadline=socket.gettime()+120
 while client do
  local line,err,part=client:receive('*l')
  if line then
   line=partial..line;partial=''
   local ok,msg=pcall(json.decode,line)
   if not ok then send({type='error',error='bad_json'})
   elseif msg.cmd=='close' then send({type='closed'});close();return
   elseif msg.cmd=='step' and msg.seq==seq then
    local old=held;held={};triggered={}
    for _,key in ipairs(msg.keys or {}) do if actions[key] then held[actions[key]]=true;triggered[actions[key]]=not old[actions[key]] end end
    remaining=math.max(1,math.min(4,tonumber(msg.frames) or 1));event='step';return
   elseif msg.cmd=='next' and msg.seq==seq then
    local doors_open=false;local room=Game():GetRoom()
    for slot=0,7 do local door=room:GetDoor(slot);if door and door:IsOpen() then doors_open=true end end
    if not doors_open then send({type='error',error='door_not_open'})
    elseif Isaac.GetPlayer(0):IsDead() then send({type='error',error='player_dead'})
    else local success,why=pcall(next_room);if success then return else send({type='error',error=tostring(why)}) end end
   else send({type='error',error='invalid_command_or_sequence'}) end
  elseif err=='closed' then close();return
  elseif err=='timeout' then partial=partial..(part or '');if socket.gettime()>deadline then close();return end
  else close();return end
 end
end)
mod:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT,function()
 if client then send({type='game_exit',protocol=1,event='engine_pre_game_exit'}) end
 close()
end)
