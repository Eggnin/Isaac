"""Append-only per-run events and a wall-clock progress watchdog."""
import json
import math
from pathlib import Path
import time


class RunJournal:
    def __init__(self,directory,*,stall_seconds=30,room_seconds=600,clock=time.monotonic,semantic_progress=False):
        self.directory=Path(directory);self.directory.mkdir(parents=True,exist_ok=True)
        self.file=(self.directory/'events.jsonl').open('a',encoding='utf-8')
        self.clock=clock;self.started=clock();self.last_progress=self.started;self.room_started=self.started
        self.stall_seconds=stall_seconds;self.room_seconds=room_seconds
        self.room=None;self.room_clear=None;self.health=None;self.inventory={};self.tiles=set();self.enemy_low={}
        self.bosses=set();self.last_heartbeat=0.;self.last_action=None;self.counts={};self.last_error=None
        self.semantic_progress=semantic_progress;self.mechanism_states=None
        self.emit('run_started')

    def emit(self,kind,**details):
        self.counts[kind]=self.counts.get(kind,0)+1
        record={'event':kind,'elapsed_seconds':round(self.clock()-self.started,3),**details}
        self.file.write(json.dumps(record,ensure_ascii=False,separators=(',',':'),
            default=lambda value:value.tolist() if hasattr(value,'tolist') else str(value))+'\n');self.file.flush()

    def observe(self,snapshot,player,update):
        now=self.clock();frame=snapshot.get('frame');room=(snapshot.get('level_stage'),snapshot.get('room_index'))
        progress=False
        if room!=self.room:
            if self.room is not None and room[0]!=self.room[0]:self.emit('floor_changed',previous=self.room[0],stage=room[0],frame=frame)
            self.emit('room_entered',stage=room[0],room=room[1],frame=frame,config=snapshot.get('room_config'))
            self.room=room;self.room_started=now;self.tiles.clear();self.enemy_low.clear();self.bosses.clear();self.room_clear=None;progress=True
        clear=snapshot.get('room_clear')
        if clear is True and self.room_clear is False:
            self.emit('room_cleared',stage=room[0],room=room[1],frame=frame,bosses_seen=len(self.bosses));progress=True
        self.room_clear=clear
        for e in snapshot.get('entities',[]):
            if not 10<=e.get('type',0)<1000:continue
            identity=(e.get('address'),e.get('seed'));hp=e.get('health',0)
            old=self.enemy_low.get(identity)
            if old is None or hp<old:
                if old is not None:progress=True
                self.enemy_low[identity]=hp
            if e.get('is_boss') and identity not in self.bosses and hp>0:
                self.bosses.add(identity);self.emit('boss_seen',frame=frame,type=e['type'],variant=e.get('variant'),seed=e.get('seed'),health=hp)
        if player:
            health=player.get('health_parts') or {}
            if self.health is not None and health!=self.health:
                self.emit('health_changed',frame=frame,stage=room[0],room=room[1],before=self.health,after=health)
            self.health=dict(health)
            inventory=player.get('collectibles') or {}
            if inventory!=self.inventory:
                self.emit('inventory_changed',frame=frame,before=self.inventory,after=inventory);self.inventory=dict(inventory);progress=True
            tile=(int(player['x']//24),int(player['y']//24))
            if tile not in self.tiles:
                self.tiles.add(tile)
                if not self.semantic_progress:progress=True
        mechanism=tuple((c.get('index'),c.get('type'),c.get('variant'),c.get('state'),c.get('collision'))
                        for c in snapshot.get('grid_cells',[]) if c.get('type') in (14,20))
        if self.mechanism_states is not None and mechanism!=self.mechanism_states:progress=True
        self.mechanism_states=mechanism
        decision=update.get('decision')
        action=(tuple(decision.move),decision.fire) if decision else None
        if action!=self.last_action:
            self.emit('action_changed',frame=frame,action=action,status=update.get('status'));self.last_action=action
        if now-self.last_heartbeat>=1:
            self.emit('observation',frame=frame,stage=room[0],room=room[1],health=self.health,
                      position=[player.get('x'),player.get('y')] if player else None,
                      foreground=update.get('foreground'),route=update.get('route'),status=update.get('status'))
            self.last_heartbeat=now
        if progress:self.last_progress=now

    def error(self,message):
        if message!=self.last_error:self.emit('read_error',message=message);self.last_error=message

    def timeout_reason(self):
        now=self.clock()
        if now-self.last_progress>=self.stall_seconds:return 'stuck_timeout'
        if self.room is not None and self.room_seconds>0 and now-self.room_started>=self.room_seconds:return 'room_timeout'
        return None

    def close(self,reason):
        self.emit('run_ended',reason=reason,room=self.room,health=self.health)
        self.file.close()
