-- Observational capture only: every registered callback returns nil.
local M={}
function M.start(mod,cfg,json,clock)
 local state={protocol=1,mode='all_callbacks_raw',enabled=false,complete=false,seen=0,written=0,counts={},catalog={}}
 local file,damage_file
 local closed=false
 local function fail(message) state.error=state.error or tostring(message);state.complete=false end
 local function get(value,key)
  local ok,result=pcall(function() return value[key] end)
  if ok then return result end
  return nil,tostring(result)
 end
 local function identity(value)
  if value==nil then return {kind='nil'} end
  local row={kind='entity_ref',representation=tostring(value)}
  for _,key in ipairs({'Type','Variant','SubType','InitSeed','Index'}) do
   local v,err=get(value,key);if type(v)=='number' then row[key]=tostring(v) end
   if err then row.unavailable_fields=row.unavailable_fields or {};row.unavailable_fields[key]=err end
  end
  if GetPtrHash then local ok,h=pcall(GetPtrHash,value);if ok then row.ptr_hash=tostring(h) end end
  return row
 end
 local encode
 local function field(value,key,seen)
  local v,err=get(value,key)
  if err then return {kind='read_error',error=err} end
  return encode(v,seen)
 end
 encode=function(value,seen)
  local kind=type(value)
  if kind=='nil' then return {kind='nil'} end
  if kind=='number' then
   if math.type and math.type(value)=='integer' then return {kind='integer',value=tostring(value)} end
   if value~=value or value==math.huge or value==-math.huge then return {kind='number',representation=tostring(value)} end
   return {kind='number',value=value}
  end
  if kind=='boolean' or kind=='string' then return {kind=kind,value=value} end
  if kind=='table' then
   if seen[value] then return {kind='reference',id=seen[value]} end
   local id=seen.next;seen.next=id+1;seen[value]=id
   local entries={};for k,v in next,value do entries[#entries+1]={key=encode(k,seen),value=encode(v,seen)} end
   return {kind='table',id=id,entries=entries}
  end
  if kind=='userdata' or kind=='cdata' then
   local row={kind=kind,representation=tostring(value),fields={}}
   local seed=get(value,'InitSeed');local typ=get(value,'Type')
   if type(seed)=='number' and type(typ)=='number' then
    row.class='entity';row.identity=identity(value)
    local exists=get(value,'Exists')
    if type(exists)=='function' then
     local ok,alive=pcall(exists,value)
     if ok and not alive then row.state='removed_reference';return row end
    end
    local casts={[1]='ToPlayer',[2]='ToTear',[3]='ToFamiliar',[4]='ToBomb',[5]='ToPickup',
                 [7]='ToLaser',[8]='ToKnife',[9]='ToProjectile',[1000]='ToEffect'}
    local cast=get(value,casts[typ] or (typ>=10 and typ<1000 and 'ToNPC' or ''))
    if type(cast)=='function' then local ok,typed=pcall(cast,value);if ok and typed then value=typed end end
    for _,key in ipairs({'Type','Variant','SubType','InitSeed','Index','FrameCount','Position','Velocity',
      'HitPoints','MaxHitPoints','CollisionDamage','EntityCollisionClass','GridCollisionClass','State','StateFrame','Visible','ControllerIndex',
      'TargetPosition','I1','I2','V1','V2','Damage','TearFlags','ProjectileFlags','Timeout','Height','FallingSpeed','FallingAcceleration','Scale','PositionOffset'}) do
     row.fields[key]=field(value,key,seen)
    end
    local parent,parent_error=get(value,'Parent');local spawner,spawner_error=get(value,'SpawnerEntity')
    row.fields.Parent=parent_error and {kind='read_error',error=parent_error} or identity(parent)
    row.fields.SpawnerEntity=spawner_error and {kind='read_error',error=spawner_error} or identity(spawner)
    if typ==1 then
     local player=value;local cast=get(value,'ToPlayer')
     if type(cast)=='function' then local ok,p=pcall(cast,value);if ok and p then player=p end end
     for _,name in ipairs({'GetHearts','GetSoulHearts','GetBoneHearts','GetDamageCooldown'}) do
      local method=get(player,name)
      if type(method)=='function' then
       local ok,v=pcall(method,player);if ok then row.fields[name]=encode(v,seen) else row.fields[name]={kind='read_error',error=tostring(v)} end
      end
     end
    end
    local fn=get(value,'GetSprite')
    if type(fn)=='function' then
     local ok,sprite=pcall(fn,value)
     if ok and sprite then
      local ok1,animation=pcall(function() return sprite:GetAnimation() end)
      local ok2,frame=pcall(function() return sprite:GetFrame() end)
      if ok1 then row.fields.animation=encode(animation,seen) end
      if ok2 then row.fields.animation_frame=encode(frame,seen) end
     end
    end
   elseif get(value,'Entity')~=nil or type(typ)=='number' then
    row.class='entity_source';row.fields.Type=field(value,'Type',seen)
    row.fields.Variant=field(value,'Variant',seen);row.fields.Entity=field(value,'Entity',seen)
   elseif type(get(value,'X'))=='number' and type(get(value,'Y'))=='number' then
    row.class='vector';row.fields.X=encode(get(value,'X'),seen);row.fields.Y=encode(get(value,'Y'),seen)
   else
    row.class='opaque'
    for _,key in ipairs({'R','G','B','A','RO','GO','BO','Scale','Offset','ColorizeR','ColorizeG','ColorizeB','ColorizeA'}) do
     local v=get(value,key);if v~=nil and type(v)~='function' then row.fields[key]=encode(v,seen) end
    end
    local fn=get(value,'GetSeed');if type(fn)=='function' then local ok,v=pcall(fn,value);if ok then row.fields.seed=encode(v,seen) end end
   end
   return row
  end
  return {kind=kind,representation=tostring(value)}
 end
 local function write(handle,value)
  if not handle then fail('capture_file_not_open');return false end
  local ok,line=pcall(json.encode,value)
  if not ok then fail('encode_failed: '..tostring(line));return false end
  local good,result,err=pcall(handle.write,handle,line..'\n')
  if not good or not result then fail('write_failed: '..tostring(err or result));return false end
  return true
 end
 local function flush(handle)
  if handle then local ok,result,err=pcall(handle.flush,handle);if not ok or not result then fail('flush_failed: '..tostring(err or result)) end end
 end
 local function context()
  local row={};local ok,game=pcall(Game)
  if ok then
   local a,v=pcall(function() return game:GetFrameCount() end);if a then row.frame=v end
   local b,level=pcall(function() return game:GetLevel() end)
   if b then
    local c,stage=pcall(function() return level:GetStage() end);if c then row.stage=stage end
    local d,room=pcall(function() return level:GetCurrentRoomIndex() end);if d then row.room=room end
   end
  end
  if clock then local a,v=pcall(clock);if a then row.time=v end end
  return row
 end
 local status_file
 function state.finish(reason)
  if closed then return state end
  closed=true;state.complete=state.enabled and not state.error and state.seen==state.written
  local ending={kind='capture_end',reason=reason,frame=context().frame,seen=state.seen,written=state.written,complete=state.complete,error=state.error}
  write(file,ending);flush(file);flush(damage_file)
  if state.error then state.complete=false end
  for _,handle in ipairs({file,damage_file}) do
   local ok,result,err=pcall(handle.close,handle)
   if not ok or not result then fail('close_failed: '..tostring(err or result));state.complete=false end
  end
  state.closed=true
  -- Functions are not serializable. status() returns only data.
  status_file();return state
 end
 function state.status()
  local data={};for k,v in pairs(state) do if type(v)~='function' then data[k]=v end end;return data
 end
 -- status_file uses data only; never hand method functions to the encoder.
 status_file=function()
  if not cfg.capture_status_path then return end
  local f,why=io.open(cfg.capture_status_path,'w');if not f then fail('status_open_failed: '..tostring(why));return end
  write(f,state.status());flush(f);f:close()
 end
 local why;file,why=io.open(cfg.capture_path,'a')
 if not file then fail('capture_open_failed: '..tostring(why));return state end
 if file:seek('end')~=0 then fail('capture_path_already_contains_data');file:close();file=nil;return state end
 damage_file,why=io.open(cfg.capture_damage_path,'a')
 if not damage_file then fail('damage_index_open_failed: '..tostring(why));file:close();file=nil;return state end
 if damage_file:seek('end')~=0 then fail('damage_path_already_contains_data');file:close();damage_file:close();file=nil;damage_file=nil;return state end
 file:setvbuf('full',1024*1024);damage_file:setvbuf('full',65536)
 state.enabled=true
 local groups={}
 for name,id in pairs(ModCallbacks) do
  if type(id)=='number' then groups[id]=groups[id] or {};table.insert(groups[id],name) end
 end
 local ids={};for id in pairs(groups) do ids[#ids+1]=id end;table.sort(ids)
 for _,id in ipairs(ids) do
  local callback_id=id;local names=groups[id];table.sort(names)
  local entry={id=id,names=names,registered=false};state.catalog[#state.catalog+1]=entry
  local fn=function(_, ...)
   if closed then return end
   state.seen=state.seen+1;state.counts[tostring(callback_id)]=(state.counts[tostring(callback_id)] or 0)+1
   local row=context();row.kind='callback';row.seq=state.seen;row.callback_id=callback_id;row.callback=names[1];row.callback_names=names;row.arg_count=select('#',...);row.args={}
   if not state.error then
    local packed=table.pack(...)
    local ok,why=pcall(function()
     local seen={next=1};for i=1,packed.n do row.args[i]=encode(packed[i],seen) end
     if write(file,row) then state.written=state.written+1 end
     if callback_id==ModCallbacks.MC_ENTITY_TAKE_DMG then write(damage_file,row);flush(file);flush(damage_file) end
    end)
    if not ok then fail('callback_serialization_failed: '..tostring(why)) end
   end
   if callback_id==ModCallbacks.MC_POST_UPDATE then
    flush(file);flush(damage_file)
    if state.error or (row.frame or 0)%30==0 then status_file() end
   end
   if callback_id==ModCallbacks.MC_PRE_GAME_EXIT then state.finish('engine_pre_game_exit') end
   -- Nil for every callback: never cancel damage, collision, AI or input.
  end
  local ok,why=pcall(function()
   if mod.AddPriorityCallback then mod:AddPriorityCallback(id,-2147483647,fn) else mod:AddCallback(id,fn) end
  end)
  entry.registered=ok;if not ok then entry.error=tostring(why);fail('callback_registration_failed: '..tostring(id)) end
 end
 local header={kind='capture_header',protocol=1,mode=state.mode,catalog=state.catalog,observer_mod=mod.Name,
  arguments='native callback arguments; typed values and entity identities/public fields; opaque objects explicitly tagged',
  damage_flags=encode(DamageFlag or {},{next=1})}
 write(file,header);write(damage_file,header)
 flush(file);status_file()
 return state
end
return M
