"""Combat-only idle task: observed ordinary pressure plates, never loot/doors."""
import math

from hard_run_route import HardRunRoute
from planner import Decision
from engine_world import EngineWorld


class ConsecutiveBlocker:
    """Unknown-state grace begins when the state appears, not at room entry."""
    def __init__(self,frames=90):self.frames=frames;self.key=None;self.since=None

    def observe(self,generation,frame,status):
        if self.key!=generation or status!='unknown_blocker':self.key=generation;self.since=None
        if status!='unknown_blocker':return False
        if self.since is None or frame<self.since:self.since=frame
        return frame-self.since>=self.frames


class RoomMechanism(HardRunRoute):
    handles_idle_hazards=True

    def __init__(self):
        super().__init__();self.task_room=None;self.attempt=None;self.failed=set()

    def reset(self):
        super().reset();self.task_room=None;self.attempt=None;self.failed=set()

    @staticmethod
    def open_doors(snapshot):
        return [d for d in snapshot.get('doors',[]) if d.get('state')==2 and d.get('collision') in (0,5)]

    @staticmethod
    def plate_candidates(snapshot):
        # J460 GridEntityType=20. Only the ordinary variant (0), observed
        # unpressed state (0), collision-free grid cell. Reward/Greed excluded.
        if snapshot.get('room_clear') is not False or RoomMechanism.open_doors(snapshot):return []
        width=snapshot.get('grid_width') or 15
        return [{**c,'goal':(40+c['index']%width*40,120+c['index']//width*40)}
                for c in snapshot.get('grid_cells',[]) if c.get('type')==20 and
                c.get('variant')==0 and c.get('state')==0 and c.get('collision')==0 and c.get('index',-1)>=0]

    def decide(self,snapshot,player,world,motion,planner):
        key=self.room_key(snapshot);frame=snapshot['frame'];position=world['player_position']
        if self.task_room!=key:self.task_room=key;self.attempt=None;self.failed=set()
        self.last_report={'task':'room_mechanism','room':key}
        if self.attempt:
            index=self.attempt['index'];before=self.attempt['before'];doors_before=self.attempt['doors_before']
            cell=next((c for c in snapshot.get('grid_cells',[]) if c.get('index')==index),None)
            evidence=[]
            if cell and cell.get('state')!=before:evidence.append('plate_state_changed')
            if self.open_doors(snapshot) and not doors_before:evidence.append('door_opened')
            if snapshot.get('room_clear') is True:evidence.append('room_clear')
            if evidence:
                self.last_report.update(status='plate_effect_observed',plate=index,before_state=before,
                                        after_state=cell.get('state') if cell else None,evidence=evidence)
                self.attempt=None
                return Decision((0,0),None,None,[position],0.)
            near=math.dist(position,self.attempt['goal'])<=max(4.,min(6.,world.get('player_radius',10.)*.6))
            if near:
                if self.attempt['contact_since'] is None:self.attempt['contact_since']=frame
            else:self.attempt['contact_since']=None
            contacted=self.attempt['contact_since']
            if contacted is not None and frame-contacted>=90:
                self.failed.add(index);self.attempt=None
                self.last_report.update(status='plate_no_effect',plate=index,before_state=before,
                                        after_state=cell.get('state') if cell else None,failure='plate_no_effect',
                                        phase='observing_plate_effect',contact_since=contacted)
                return Decision((0,0),None,None,[position],0.)
        plates=[p for p in self.plate_candidates(snapshot) if p['index'] not in self.failed]
        if world.get('targets'):plates=[]
        if plates:
            plate=next((p for p in plates if self.attempt and p['index']==self.attempt['index']),None)
            plate=plate or min(plates,key=lambda p:math.dist(position,p['goal']))
            if self.attempt is None:
                self.attempt={'index':plate['index'],'started':frame,'before':plate['state'],
                    'doors_before':bool(self.open_doors(snapshot)),'goal':plate['goal'],'contact_since':None,
                    'best_distance':math.inf,'last_progress_frame':frame}
            self.last_report.update(status='approaching_pressure_plate',plate=plate['index'],
                                    phase='approaching_plate',before_state=self.attempt['before'],goal=plate['goal'],
                                    distance_to_plate=math.dist(position,plate['goal']),
                                    waiting_for='reach_plate_then_observe_state_or_door_or_clear_change')
            decision=self.navigate_goal(snapshot,player,world,motion,planner,plate['goal'],prefer_progress=True)
            distance=self.last_report.get('navigation_distance')
            if distance is not None and distance<self.attempt['best_distance']-2:
                self.attempt['best_distance']=distance;self.attempt['last_progress_frame']=frame
            near=math.dist(position,plate['goal'])<=max(4.,min(6.,world.get('player_radius',10.)*.6))
            if near:
                if self.attempt['contact_since'] is None:self.attempt['contact_since']=frame
                self.last_report.update(status='waiting_for_pressure_plate',phase='observing_plate_effect',
                    contact_since=self.attempt['contact_since'],waiting_for='plate_state_or_door_or_clear_change')
                if not any(b.kind in ('enemy','projectile','warning','hazard') for b in world['bodies']):
                    decision=Decision((0,0),None,None,[position],0.)
            elif frame-self.attempt['last_progress_frame']>=240:
                self.last_report.update(status='plate_navigation_stalled',phase='approaching_plate',
                    failure='no_navigation_progress',last_progress_frame=self.attempt['last_progress_frame'])
                self.failed.add(plate['index']);self.attempt=None
            return decision
        danger=any(b.kind in ('enemy','projectile','warning','hazard') for b in world['bodies'])
        self.last_report.update(task='combat_idle',status='dodging_residual_danger' if danger else
            ('room_complete_hold' if self.open_doors(snapshot) else 'unknown_blocker' if snapshot.get('room_clear') is False else 'idle_hold'),
            idle_reason='no_combat_target',failed_plates=sorted(self.failed))
        if not danger and not self.open_doors(snapshot) and snapshot.get('room_clear') is False:
            entities=snapshot.get('entities',[]);by_address={e.get('address'):e for e in entities}
            npcs=[e for e in entities if 10<=e.get('type',0)<1000 and not EngineWorld._owned(e,by_address)]
            hidden=[e for e in npcs if not e.get('dead') and e.get('health',0)>0 and
                    (e.get('collision_class')==0 or e.get('invulnerable'))]
            if hidden:
                self.last_report.update(task='combat_wait',status='waiting_for_attackable_enemy',
                    waiting_for='enemy_collision_or_vulnerability_change',
                    observed_enemies=[{k:e.get(k) for k in ('address','type','variant','state','animation','collision_class','visible','health')} for e in hidden])
            elif any(e.get('dead') or e.get('health',0)<=0 for e in npcs):
                self.last_report.update(task='room_resolution_wait',status='waiting_for_room_clear',
                    waiting_for='native_room_clear_or_open_door')
        if danger:
            # Combat evasion has no navigation destination. The observed
            # player can be just inside the conservative terrain margin, so
            # connecting its own position to a goal graph can fail and return
            # zero input precisely while an airborne enemy is approaching.
            self.last_report['evasion_mode']='hazard_search_without_goal'
            return planner.decide(position,world['bodies'],world['walkable'],1/30,
                speed=motion.get('speed_per_second') or player['stats']['move_speed']*162.,
                player_radius=world['player_radius'],motion=motion,frame=frame,
                stationary_attack_ready=False)
        return Decision((0,0),None,None,[position],0.)
