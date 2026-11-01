"""Clear-room routing for whole-run control, using observed doors only."""
from collections import deque
import math

import numpy as np

from firing_navigation import FiringNavigation
from engine_world import EngineWorld
from planner import Decision
from shot_geometry import lines_clear


class HardRunRoute:
    # Vanilla enum values: treasure, ordinary, miniboss, boss. Curse and
    # sacrifice rooms are deliberately not part of a no-hit exploration route.
    PRIORITY={4:0,1:1,6:2,5:3}

    def __init__(self,*,first_floor_boss=False):
        self.first_floor_boss=first_floor_boss;self.reset()

    def reset(self):
        self.rooms={};self.visited=set();self.exit_attempt=None
        self.nav=FiringNavigation();self.last_report={}
        self.fine_nav=None
        self.pickup_attempt=None;self.pickup_terrain=EngineWorld()
        self.completed_pickups=set();self.collected=[]
        self.skipped_pickups=set();self.skipped=[]
        self.floor_exits={}

    @staticmethod
    def room_key(snapshot):return (snapshot.get('level_stage'),snapshot.get('room_index'))

    @classmethod
    def allowed(cls,door):
        return (door.get('target_room_type') in cls.PRIORITY and
                door.get('collision') in (0,5) and door.get('state')==2 and
                isinstance(door.get('target_room_index'),int) and 0<=door['target_room_index']<=506)

    def choose_door(self,snapshot,position):
        key=self.room_key(snapshot);stage=key[0]
        doors=[d for d in snapshot.get('doors',[]) if self.allowed(d)]
        self.rooms[key]=doors;self.visited.add(key)
        # A known boss exit remains a frontier until we actually change floor.
        # This also permits returning after collecting its reward.
        new=[d for d in doors if (stage,d['target_room_index']) not in self.visited]
        if new:
            priority={4:0,5:1,1:2,6:3} if self.first_floor_boss else self.PRIORITY
            return min(new,key=lambda d:(priority[d['target_room_type']],
                math.hypot(d['x']-position[0],d['y']-position[1])))
        # Backtrack only through known cleared rooms to a known frontier.
        queue=deque([(key,None)]);seen={key}
        while queue:
            node,first=queue.popleft()
            for door in self.rooms.get(node,[]):
                neighbor=(stage,door['target_room_index'])
                if neighbor not in self.visited:return first
                if neighbor not in seen:
                    seen.add(neighbor)
                    queue.append((neighbor,first or door))
            if node in self.floor_exits:return first
        return None

    @staticmethod
    def approach(door):
        inward=((40,0),(0,40),(-40,0),(0,-40))[door['slot']%4]
        return (door['x']+inward[0],door['y']+inward[1])

    def decide(self,snapshot,player,world,motion,planner):
        position=world['player_position'];key=self.room_key(snapshot)
        stop=Decision((0,0),None,None,[position],0.)
        if snapshot.get('difficulty')!=1 or None in key:
            self.last_report={'status':'unverified_hard_room'};return stop
        if self.first_floor_boss and (snapshot.get('room_config') or {}).get('type')==5 and snapshot.get('room_clear') is True:
            self.last_report={'status':'boss_room_clear_hold','room':key};return stop
        exits=[]
        if not self.first_floor_boss and snapshot.get('room_clear') is True:
            # Native GRID_TRAPDOOR=17. GRID_STAIRS=18 may be a crawlspace and
            # is not treated as the next floor. Never invent an unseen exit.
            gw=snapshot.get('grid_width') or 15
            for cell in snapshot.get('grid_cells',[]):
                if cell.get('type')==17 and cell.get('collision')==0 and cell.get('index',-1)>=0:
                    i=cell['index'];exits.append((40+(i%gw)*40,120+(i//gw)*40))
            for entity in snapshot.get('entities',[]):
                if entity.get('type')==1000 and entity.get('variant')==39:
                    exits.append((entity['x'],entity['y']))
        if exits:self.floor_exits[key]=min(exits,key=lambda p:math.dist(position,p))
        boss_clear=(snapshot.get('room_config') or {}).get('type')==5 and snapshot.get('room_clear') is True
        if not exits and not boss_clear and not any(d.get('collision') in (0,5) and d.get('state')==2 for d in snapshot.get('doors',[])):
            # Transition/spawn frames can have neither NPCs nor an open door.
            # Absence of observed enemies alone does not prove room completion.
            self.last_report={'status':'waiting_for_open_doors','room':key};return stop
        door=self.choose_door(snapshot,position)
        if self.pickup_attempt:
            identity,_,item,before=self.pickup_attempt
            owned=(player.get('collectibles') or {}).get(str(item),0)
            if owned>before:
                self.completed_pickups.add(identity)
                self.collected.append({'frame':snapshot['frame'],'room':identity[0],'collectible':item})
                self.pickup_attempt=None
        pickups=[e for e in snapshot.get('entities',[]) if e.get('type')==5 and
                 e.get('variant')==100 and e.get('subtype',0)>0 and
                 (e.get('pickup') or {}).get('price')==0 and not e.get('dead') and
                 (key,e.get('address'),e.get('seed')) not in self.completed_pickups|self.skipped_pickups]
        pickup=min(pickups,key=lambda e:math.dist(position,(e['x'],e['y']))) if pickups else None
        if pickup:
            identity=(key,pickup.get('address'),pickup.get('seed'))
            if self.pickup_attempt is None or self.pickup_attempt[0]!=identity:
                self.pickup_attempt=(identity,snapshot['frame'],pickup['subtype'],
                                     (player.get('collectibles') or {}).get(str(pickup['subtype']),0))
            self.exit_attempt=None
            goal=(pickup['x'],pickup['y'])
            self.last_report={'status':'approaching_free_collectible','room':key,
                              'pickup':pickup.get('address'),'collectible':pickup['subtype'],'goal':goal}
            if snapshot['frame']-self.pickup_attempt[1]>90:
                self.skipped_pickups.add(identity)
                self.skipped.append({'frame':snapshot['frame'],'room':key,'collectible':pickup['subtype'],
                                     'reason':'collection_timeout'})
                self.pickup_attempt=None
                self.last_report.update(status='free_collectible_skipped',reason='collection_timeout')
                return stop
            # Remove only this selected free pedestal from the terrain's
            # accidental-purchase guard. Native grid cells and all other
            # pickups still define their original collision mask.
            terrain_snapshot={**snapshot,'entities':[e for e in snapshot.get('entities',[]) if e is not pickup]}
            self.pickup_terrain._terrain(terrain_snapshot,bool(player['stats'].get('can_fly')))
            walkable=self.pickup_terrain._walkable
        elif exits:
            self.pickup_attempt=None;self.exit_attempt=None
            goal=self.floor_exits[key];walkable=world['walkable']
            self.last_report={'status':'approaching_next_floor','room':key,'goal':goal}
        elif not self.first_floor_boss and (snapshot.get('room_config') or {}).get('type')==5 and snapshot.get('room_clear') is True:
            self.pickup_attempt=None
            self.last_report={'status':'waiting_for_floor_exit','room':key};return stop
        elif door is None:
            self.pickup_attempt=None
            self.last_report={'status':'frontier_exhausted','room':key};return stop
        else:
            self.pickup_attempt=None;walkable=world['walkable']
            goal=self.approach(door);direction=((-1,0),(0,-1),(1,0),(0,1))[door['slot']%4]
            self.last_report={'status':'approaching_door','room':key,'door_slot':door['slot'],
                              'target_room':door['target_room_index'],'goal':goal,
                              'visited_rooms':len(self.visited)}
            lateral=abs(position[1]-door['y']) if direction[0] else abs(position[0]-door['x'])
            if self.exit_attempt and self.exit_attempt[:2]!=(key,door['slot']):self.exit_attempt=None
            progress=(position[0]-goal[0])*direction[0]+(position[1]-goal[1])*direction[1]
            # Native stall (50.6744,270.0007) was already in the open left
            # doorway, outside the ordinary room mask. Recover only inside
            # this observed door's 40px tile, not arbitrary exterior terrain.
            aperture=max(5.,20.-world['player_radius'])+1.
            in_doorway=(-12<=progress<=math.dist(goal,(door['x'],door['y']))+20 and lateral<=aperture)
            if self.exit_attempt or in_doorway:
                if self.exit_attempt is None:self.exit_attempt=(key,door['slot'],snapshot['frame'])
                if snapshot['frame']-self.exit_attempt[2]>30:
                    self.last_report['status']='door_transition_timeout';return stop
                # Verified open doorway only. Its center is beyond the ordinary
                # room mask; this bounded crossing is never used during combat.
                self.last_report['status']='crossing_verified_door'
                dx,dy=direction
                if lateral>4:
                    if dx:dy=1 if position[1]<door['y'] else -1
                    else:dx=1 if position[0]<door['x'] else -1
                if not any(b.kind in ('enemy','projectile','warning','hazard') for b in world['bodies']):
                    return Decision((dx,dy),None,None,[position],0.)
                # Cleared rooms can still contain fire, creep or bullets.
                # Extend only the observed open door's own tile and keep the
                # full hazard search for crossing it; never drive blindly.
                walkable=walkable.copy();yy,xx=np.indices(walkable.shape)
                along=(xx-door['x'])*direction[0]+(yy-door['y'])*direction[1]
                across=(yy-door['y']) if direction[0] else (xx-door['x'])
                walkable |= (abs(along)<=20)&(abs(across)<=20)
                goal=(door['x']+direction[0]*5,door['y']+direction[1]*5)

        return self.navigate_goal(snapshot,player,world,motion,planner,goal,walkable)

    def navigate_goal(self,snapshot,player,world,motion,planner,goal,walkable=None,*,prefer_progress=False):
        """Shared terrain/hazard search; task selection stays outside geometry."""
        position=world['player_position'];stop=Decision((0,0),None,None,[position],0.)
        def evade_or_stop():
            if prefer_progress and any(b.kind in ('enemy','projectile','hazard','warning') for b in world['bodies']):
                self.last_report['evasion_mode']='blocked_goal_hazard_search'
                return planner.decide(position,world['bodies'],world['walkable'],1/30,
                    speed=motion.get('speed_per_second') or player['stats']['move_speed']*162.,
                    player_radius=world['player_radius'],motion=motion,frame=snapshot['frame'],
                    stationary_attack_ready=False)
            return stop
        if walkable is None:walkable=world['walkable']
        valid=planner._valid_centers(walkable,world['player_radius'])
        obstacles=[b for b in world['bodies'] if b.kind=='obstacle']
        if obstacles:
            valid=valid.copy();yy,xx=np.indices(valid.shape)
            for body in obstacles:
                valid &= (xx-body.x)**2+(yy-body.y)**2 > (body.radius+world['player_radius']+1.)**2
        nav=self.nav;nav.prepare(valid)
        seeds,field=nav.goal_distances(goal)
        distance=float(nav.costs(field,[position])[0]) if field is not None else math.inf
        if prefer_progress and (not seeds or not math.isfinite(distance)):
            if self.fine_nav is None:self.fine_nav=FiringNavigation(step=10)
            nav=self.fine_nav;nav.prepare(valid)
            seeds,field=nav.goal_distances(goal)
            distance=float(nav.costs(field,[position])[0]) if field is not None else math.inf
        self.last_report.update(navigation_resolution=nav.step,navigation_distance=distance if math.isfinite(distance) else None)
        px,py=round(position[0]),round(position[1])
        source_valid=0<=py<valid.shape[0] and 0<=px<valid.shape[1] and bool(valid[py,px])
        self.last_report['navigation_source_recovery']=not source_valid
        if prefer_progress and field is not None and not math.isfinite(distance) and source_valid:
            self.last_report.update(status='plate_route_blocked',failure='no_route_at_available_resolution',
                waiting_for='terrain_change_or_clearance',barrier_types=sorted({c['type'] for c in snapshot.get('grid_cells',[])
                    if c.get('collision') in (2,3) and c.get('type') in (2,12,14)}))
            return evade_or_stop()
        if not seeds:
            self.last_report['status']='no_safe_door_approach';return evade_or_stop()
        cache={}

        def prepare(positions):
            missing=list(dict.fromkeys(tuple(p) for p in positions if tuple(p) not in cache))
            if not missing:return
            values=nav.costs(field,missing)
            direct=lines_clear(valid,np.asarray(missing),np.broadcast_to(goal,(len(missing),2)))
            for point,value,clear in zip(missing,values,direct):
                if clear:value=min(value,math.dist(point,goal))
                cache[point]=(float(value)*.05 if math.isfinite(value) else 64.+math.dist(point,goal)*.05)

        def cost(point):
            p=tuple(point)
            if p not in cache:prepare([p])
            return cache[p]
        cost.prepare=prepare
        speed=motion.get('speed_per_second') or player['stats']['move_speed']*5.4*30
        move,path,risk=planner._search.choose(position,valid,world['bodies'],world['player_radius'],
            speed,motion.get('velocity',(0.,0.)),cost,inertia=motion.get('inertia',.8),
            position_a=motion.get('position_a',0.),position_b=motion.get('position_b',1.),
            previous=planner._last_move,frame=snapshot['frame'],stand_off=0.,path_goal_weight=1.,recovery_mask=walkable,
            attack_approach=prefer_progress,
            immediate_goal=bool(0<=round(position[1])<valid.shape[0] and 0<=round(position[0])<valid.shape[1] and
                                valid[round(position[1]),round(position[0])]))
        planner._last_move=move
        planner._search.last_report['clear_room_navigation']=dict(self.last_report)
        return Decision(move,None,None,path,float(risk))
