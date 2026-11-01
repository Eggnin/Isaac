"""Bounded combat context, with disk serialization off the control thread."""
from collections import deque
import json
import math
from pathlib import Path
import queue
import threading
import time


def _clean(value):
    if isinstance(value,float):return value if math.isfinite(value) else None
    if isinstance(value,dict):return {str(k):_clean(v) for k,v in value.items()}
    if isinstance(value,(list,tuple)):return [_clean(v) for v in value]
    return value


class EngineDiagnostics:
    def __init__(self,log_dir):
        self.log_dir=Path(log_dir);self.history=deque(maxlen=60)
        self.last_key=None;self.last_frame=None;self.last_health=None;self.last_cooldown=0
        self.last_sample=-999;self.pending=queue.Queue(maxsize=16)
        self.thread=None;self.dropped=0;self.write_errors=0;self.closed=False
        self.retain_all=False

    def reset_context(self):
        self.history.clear();self.last_key=None;self.last_frame=None
        self.last_health=None;self.last_cooldown=0;self.last_sample=-999

    @staticmethod
    def _compact(snapshot,player,world,decision,context):
        fields=('address','seed','type','variant','subtype','x','y','vx','vy','radius',
                'collision_class','collision_damage','health','dead','invulnerable','is_boss',
                'champion_color','target','target_position','animation','animation_frame',
                'state','state_frame','projectile_delay','parent','spawner','grid_colliding')
        entities=[]
        for e in snapshot.get('entities',[]):
            if e.get('type') in (1,2,3,4,5,7,8,9) or e.get('type',0)>=10:
                item={k:e[k] for k in fields if k in e}
                for kind in ('tear','familiar','knife','bomb','pickup','projectile','laser','effect'):
                    if kind in e:item[kind]=dict(e[kind] or {})
                entities.append(item)
        hazards=[]
        for b in world.get('bodies',[]):
            item={k:getattr(b,k) for k in ('id','kind','x','y','vx','vy','radius','start_after',
                  'end_after','end','end_velocity','ring_radius','ring_growth','angular_velocity',
                  'safety_buffer','latency_padding','pursuit_speed','pursuit_turn')}
            if b.trajectory:item['trajectory_samples']={i:b.trajectory[i] for i in (0,4,8,16,24,32,40) if i<len(b.trajectory)}
            hazards.append(item)
        return {'time':time.time(),'frame':snapshot.get('frame'),'room':snapshot.get('room'),
                'difficulty':snapshot.get('difficulty'),
                'room_clear':snapshot.get('room_clear'),
                'level_stage':snapshot.get('level_stage'),'room_index':snapshot.get('room_index'),
                'room_config':snapshot.get('room_config'),
                'grid_collision_source':snapshot.get('grid_collision_source'),
                'player':{k:player.get(k) for k in ('address','seed','x','y','vx','vy','radius',
                          'health_parts','damage_cooldown','stats','controller_index',
                          'controls_enabled','controls_cooldown','grid_colliding')},
                'locality':snapshot.get('locality'),'capture_frame_span':snapshot.get('capture_frame_span'),
                'entities':entities,'hazards':hazards,
                'targets':[{k:t.get(k) for k in ('address','type','variant','x','y','health','blast_radius')} for t in world.get('targets',[])],
                'decision':None if decision is None else {'move':decision.move,'fire':decision.fire,
                              'target':decision.target,'risk':decision.risk,'path':list(decision.path)},
                'context':context}

    def record(self,snapshot,player,world,decision,context):
        if self.closed:return
        frame=snapshot.get('frame',0)
        key=(snapshot.get('level_stage'),snapshot.get('room_index'),snapshot.get('room'),
             player.get('address'),player.get('seed'))
        if key!=self.last_key or (self.last_frame is not None and frame<self.last_frame):self.reset_context()
        self.last_key=key
        if frame==self.last_frame:return
        self.last_frame=frame
        parts=player.get('health_parts') or {}
        health=tuple(parts.get(k,0) for k in ('red','soul','bone'))
        cooldown=player.get('damage_cooldown',0) or 0
        reasons=[]
        if self.last_health is not None and any(a<b for a,b in zip(health,self.last_health)):
            reasons.append('health_decrease')
        if cooldown>0 and self.last_cooldown<=0:reasons.append('damage_cooldown_started')
        before_health=self.last_health;self.last_health=health;self.last_cooldown=cooldown
        current=self._compact(snapshot,player,world,decision,context)
        if reasons:
            event={'events':reasons,'previous_health':before_health,'current_health':health,
                   'source_attribution':'unknown; observed health/cooldown only',
                   'before':list(self.history),'current':current}
            self._enqueue(('damage',event))
            self._enqueue(('damage_snapshot',snapshot))
        self.history.append(current)
        if not reasons and frame-self.last_sample<6:return
        self.last_sample=frame
        self._enqueue(('combat',current))

    def _enqueue(self,item):
        if self.closed:return
        if self.thread is None:
            self.thread=threading.Thread(target=self._write_loop,name='isaac-diagnostics',daemon=True)
            self.thread.start()
        try:self.pending.put_nowait(item)
        except queue.Full:
            self.dropped+=1
            # Preserve latest evidence rather than stalling input for disk I/O.
            try:self.pending.get_nowait();self.pending.task_done()
            except queue.Empty:pass
            try:self.pending.put_nowait(item)
            except queue.Full:self.dropped+=1

    def _append(self,name,record,limit):
        path=self.log_dir/name
        if not self.retain_all and path.exists() and path.stat().st_size>=limit:
            path.replace(self.log_dir/(path.stem+'.previous'+path.suffix))
        with path.open('a',encoding='utf-8') as f:f.write(json.dumps(_clean(record),ensure_ascii=False,separators=(',',':'))+'\n')

    def _write_loop(self):
        while True:
            item=self.pending.get()
            try:
                if item is None:return
                kind,record=item;self.log_dir.mkdir(parents=True,exist_ok=True)
                if kind=='damage':
                    temp=self.log_dir/'damage-context.tmp'
                    temp.write_text(json.dumps(_clean(record),ensure_ascii=False,separators=(',',':')),encoding='utf-8')
                    temp.replace(self.log_dir/'damage-context.json')
                    self._append('damage-events.jsonl',record,4*1024*1024)
                elif kind=='event':self._append('control-events.jsonl',record,4*1024*1024)
                elif kind=='engine':self._append('engine.jsonl',record,16*1024*1024)
                elif kind=='damage_snapshot':
                    stage=int(record.get('level_stage') or 0)
                    index=int(record.get('room_index') if record.get('room_index') is not None else -1)
                    frame=int(record.get('frame') or 0)
                    name=f'damage-snapshot-{stage}-{index}-{frame}.json'
                    (self.log_dir/name).write_text(json.dumps(_clean(record),ensure_ascii=False),encoding='utf-8')
                elif kind in ('snapshot','error'):
                    name='engine-snapshot.json' if kind=='snapshot' else 'engine-error.json'
                    (self.log_dir/name).write_text(json.dumps(_clean(record),ensure_ascii=False),encoding='utf-8')
                else:self._append('combat.jsonl',record,8*1024*1024)
            except Exception:self.write_errors+=1
            finally:self.pending.task_done()

    def close(self):
        if self.closed:return
        self.closed=True
        if self.thread is not None:
            try:self.pending.put(None,timeout=2)
            except queue.Full:return
            self.thread.join(timeout=3)
