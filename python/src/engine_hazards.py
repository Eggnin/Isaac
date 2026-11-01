"""Port of timed reserves in online/assist-source/world.lua and effects.lua.

All inputs are data; this module never calls or changes the game engine.
"""
from __future__ import annotations
import math
from planner import Body
from engine_warnings import Warnings


class SpecialHazards:
    @staticmethod
    def explosion_radius(e,E):
        typ=e['type'];variant=e.get('variant',0)
        explosive=((typ==E.get('ENTITY_BOOMFLY') and variant==0) or
                   # Native 047: ticking spider death caused DAMAGE_EXPLOSION;
                   # its movement/contact prediction alone missed the blast.
                   (typ==E.get('ENTITY_TICKING_SPIDER') and variant==0) or
                   # 048 native: sustained shots at a movable TNT object
                   # 80px away caused DAMAGE_EXPLOSION | DAMAGE_TNT.
                   (typ==E.get('ENTITY_MOVABLE_TNT') and variant==0) or
                   (typ==E.get('ENTITY_LEECH') and variant in (1,2)) or
                   (typ==E.get('ENTITY_MULLIGAN') and variant==2) or
                   (typ==E.get('ENTITY_CORN_MINE') and variant==0) or e.get('champion_color')==5)
        return 80 if explosive else 0
    def __init__(self):
        self.reset()

    def reset(self):
        self.room=None
        self.deaths={}
        self.blast_tracks={}
        self.rocks={}
        self.waves={}

    def capture(self,snapshot,player,shot_mask):
        if self.room!=snapshot.get('room'):
            self.reset(); self.room=snapshot.get('room')
        enum=snapshot.get('enums',{})
        E=enum.get('EntityType',{}); F=enum.get('EffectVariant',{})
        PF=enum.get('ProjectileFlags',{})
        entities=snapshot.get('entities',[])
        by_id={e['address']:e for e in entities}
        frame=snapshot.get('frame',0); out=[]; seen_deaths={}; seen_rocks={}
        gold=any(e['type']==E.get('ENTITY_ULTRA_GREED') and e.get('variant')==1 for e in entities)
        def reserve(e,label,pos,radius,delay=0,ttl=12,warning=False,velocity=(0,0)):
            out.append(Body(e['address'],*pos,*velocity,radius,'warning' if warning else 'hazard',
                            start_after=max(0,delay)/30,end_after=max(delay+1,ttl)/30))
        def ray(e,pos,u,length,radius=18,delay=0,ttl=12,warning=True):
            out.append(Body(e['address'],*pos,0,0,radius,'warning' if warning else 'hazard',
                            start_after=delay/30,end_after=max(delay+1,ttl)/30,
                            end=(pos[0]+u[0]*length,pos[1]+u[1]*length)))
        if gold:
            # Backdrop doors are not ordinary door entities; old mod reserves
            # these three lanes as soft preferences only.
            w=snapshot['grid_width'];h=snapshot['grid_height']
            left,right,top,bottom=60,60+(w-2)*40,140,140+(h-2)*40
            owner=next(e for e in entities if e['type']==E.get('ENTITY_ULTRA_GREED'))
            ray(owner,((left+right)/2,top),(0,1),bottom-top)
            for f in (.25,.75):ray(owner,(left,top+(bottom-top)*f),(1,0),right-left)
            active={}
            for e in entities:
                if e['type']==1000 and e.get('variant')==F.get('CRACKWAVE') and not e.get('dead'):
                    source=by_id.get(e.get('parent') or e.get('spawner'),{})
                    if source.get('type')==E.get('ENTITY_ULTRA_GREED'):
                        active[e['address']]=self.waves.get(e['address'],{'p':(e['x'],e['y']),'frame':frame-e.get('age',0),'velocity':(0.,0.),'observed':False})
            for e in entities:
                if e['type']!=1000 or e.get('variant')!=F.get('ROCK_EXPLOSION') or e.get('age',99)>1 or Warnings._friendly(e,by_id):continue
                if e['address'] in self.rocks:continue
                p=(e['x'],e['y']);birth=frame-e.get('age',0);best=None;error=float('inf')
                for wave in active.values():
                    dt=birth-wave['frame']
                    if dt<=0:continue
                    distance=math.dist(p,wave['p']);radial=abs(distance-15*dt)
                    if radial<min(120,26+dt*3) and radial<error:best=wave;error=radial
                if best is not None:
                    dt=birth-best['frame'];velocity=((p[0]-best['p'][0])/dt,(p[1]-best['p'][1])/dt)
                    if dt<=4 and math.dist(p,best['p'])>10:best['velocity']=velocity
                    best.update(p=p,frame=birth,observed=True)
                self.rocks[e['address']]=birth
            for ident,wave in active.items():
                e=by_id[ident];v=wave['velocity'];gap=frame-wave['frame'];p=(wave['p'][0]+v[0]*gap,wave['p'][1]+v[1]*gap)
                reserve(e,'rock wavefront',p,38,ttl=12,warning=not wave['observed'],velocity=(v[0]*30,v[1]*30))
                if wave['observed']:
                    angle=math.atan2(v[1],v[0])
                    for turn in (-math.pi/6,math.pi/6):reserve(e,'rock turn warning',p,38,ttl=12,warning=True,velocity=(math.cos(angle+turn)*300,math.sin(angle+turn)*300))
            self.waves=active
        for e in entities:
            typ=e['type'];variant=e.get('variant',0);ident=e['address']
            p=(e['x'],e['y']);anim=e.get('animation','').lower();af=e.get('animation_frame',0)
            own=Warnings._friendly(e,by_id)
            if typ==9 and not own:
                data=e.get('projectile',{});flags=data.get('flags',0)
                if flags & PF.get('EXPLODE',0):
                    coin=variant==enum.get('ProjectileVariant',{}).get('PROJECTILE_COIN',7)
                    radius=70*max(1,e.get('radius',5)/5) if coin else 80
                    v=(e.get('vx',0),e.get('vy',0))
                    if not flags&PF.get('CANT_HIT_PLAYER',0):
                        reserve(e,'explosive projectile safety envelope',p,radius,ttl=24,
                                velocity=(v[0]*30,v[1]*30))
                    if coin and (e.get('collision_class') in (1,2,4) or e.get('dead')):
                        reserve(e,'active explosive coin',p,radius,ttl=2 if e.get('dead') else 28,
                                velocity=(0,0) if e.get('dead') else (v[0]*30,v[1]*30))
                    height=data.get('height');fall=data.get('fall_speed');accel=data.get('fall_accel')
                    impact=None
                    if all(isinstance(x,(int,float)) for x in (height,fall,accel)):
                        for n in range(1,33):
                            fall=fall*.9+accel+.1;height+=fall
                            if height>=-5:impact=n;break
                    if impact:
                        reserve(e,'explosive projectile landing',(p[0]+v[0]*impact,p[1]+v[1]*impact),
                                radius,max(1,impact-1),impact+3)
                    if not flags & (PF.get('NO_WALL_COLLIDE',0)|PF.get('BOUNCE',0)):
                        for n in range(1,min(impact or 24,24)+1):
                            x,y=round(p[0]+v[0]*n),round(p[1]+v[1]*n)
                            if not (0<=y<shot_mask.shape[0] and 0<=x<shot_mask.shape[1] and shot_mask[y,x]):
                                reserve(e,'explosive grid impact',(x,y),radius+min(24,math.hypot(*v)),
                                        max(1,n-1),n+4,warning=e.get('collision_class') not in (1,2,4));break
            if typ>=10 and typ!=1000 and not own:
                collision=e.get('collision_class') in (1,2,4)
                if typ==E.get('ENTITY_DADDYLONGLEGS'):
                    if anim in ('stomparm','stompleg') and af==0:
                        reserve(e,'pending foot',p,56,ttl=12,warning=True)
                    elif anim in ('stomparm','stompleg') and af<=13:
                        reserve(e,'stomp',p,56,max(1,10-af),max(1,13-af))
                    elif anim=='up':reserve(e,'next stomp',(player['x'],player['y']),56,ttl=12,warning=True)
                if typ==E.get('ENTITY_MONSTRO') and variant==0 and not collision and anim in ('walk','jumpdown'):
                    delay=max(1,(22 if anim=='walk' else 32)-af)
                    reserve(e,'monstro landing',p,e.get('radius',1)+8,delay,delay+8,velocity=(e.get('vx',0)*30,e.get('vy',0)*30))
                if typ==E.get('ENTITY_STAIN') and not collision and anim=='dirt':
                    reserve(e,'stain emergence',p,e.get('radius',1)+8,1,8,True)
                if typ==E.get('ENTITY_ULTRA_COIN') and variant<=1 and not collision and e.get('age',99)<=14:
                    delay=max(1,12-e.get('age',0));reserve(e,'coin activation',p,e.get('radius',1)+8,delay,delay+8)
                if typ==E.get('ENTITY_ULTRA_GREED') and anim in ('spinonce','spinconstant'):
                    reserve(e,'greed spin',p,115,ttl=24,velocity=(e.get('vx',0)*30,e.get('vy',0)*30))
                delay=e.get('projectile_delay',0)
                target=e.get('target_position',(0,0))
                if 0<delay<=32 and ('laser' in anim or 'brim' in anim) and math.dist(target,p)>e.get('radius',1):
                    u=Warnings._unit(target[0]-p[0],target[1]-p[1])
                    ray(e,p,u,math.hypot(snapshot['grid_width']*40,snapshot['grid_height']*40)*2,16,1,delay+8)
                if typ==E.get('ENTITY_PITFALL') and variant in (0,1) and not player['stats'].get('can_fly'):
                    reserve(e,'pitfall',p,max(e.get('radius',1),38 if variant==1 else 28),ttl=32)
                if typ==E.get('ENTITY_SUCKER') and variant==5 and any(player.get('active_charges',[])):
                    reserve(e,'charge drain pursuit',p,e.get('radius',5),ttl=24,velocity=(e.get('vx',0)*30,e.get('vy',0)*30))
                blast_radius=self.explosion_radius(e,E)
                explosive=blast_radius>0
                if explosive:
                    key=(ident,e.get('seed'))
                    previous=self.blast_tracks.get(key,{})
                    self.blast_tracks[key]={'entity':e,'position':p,'radius':blast_radius,'last':frame,
                        'death':(previous.get('death') if previous.get('death') is not None else frame) if e.get('dead') else None}
                    if e.get('dead'):
                        first=self.deaths.get(ident,frame);seen_deaths[ident]=first
                        if frame-first<=3:reserve(e,'death explosion',p,blast_radius,ttl=max(1,4-(frame-first)))
                    else:
                        # Reserve the possible blast conservatively while alive.
                        # This is a planning envelope, not continuous damage.
                        reserve(e,'explosive body reserve',p,blast_radius,ttl=32,warning=False,
                                velocity=(e.get('vx',0)*30,e.get('vy',0)*30))
                if typ==E.get('ENTITY_ULTRA_COIN') and variant==2:
                    reserve(e,'bomb coin',p,150,max(1,56-af) if anim=='pulsebomb' else 0,
                            max(2,61-af) if anim=='pulsebomb' else 12,warning=anim!='pulsebomb')
                if typ==E.get('ENTITY_ULTRA_GREED') and variant==1:
                    blast=(p[0],p[1]+60)
                    if anim=='smash' and af<=23:reserve(e,'fist blast',blast,150,max(1,18-af),max(1,23-af))
                    elif anim=='breakfreeshort' and af<=63:reserve(e,'transformation blast',blast,150,max(1,60-af),max(1,63-af))
                    elif anim=='breakfreelong':reserve(e,'transformation warning',blast,150,1,8,True)
                    elif anim in ('jumpup','jumpdown'):
                        target=e.get('target_position',(0,0))
                        if math.hypot(*target)>1:
                            delay=max(1,9-af) if anim=='jumpdown' else max(1,44-e.get('state_frame',0))
                            reserve(e,'landing',target,75,delay,delay+5)
                            reserve(e,'landing wave',target,135,delay,delay+10,True)
                    elif 'shoot' in anim and af<=20:
                        target=e.get('target_position') or (player['x'],player['y'])
                        u=Warnings._suffix(anim) or Warnings._unit(target[0]-p[0],target[1]-p[1])
                        ray(e,p,u,500,150,0,max(1,24-af))
                if typ==E.get('ENTITY_CONJOINED_FATTY') and not player['stats'].get('can_fly'):
                    u=e.get('target_position',(0,0))
                    if e.get('state')==8 and 'attack' in anim and abs(math.hypot(*u)-1)<.01:
                        ray(e,p,u,150,26.4,0,8)
            if typ==1000 and not own:
                if gold and variant in (F.get('ROCK_EXPLOSION'),F.get('BIG_ROCK_EXPLOSION')):
                    reserve(e,'rock impact',p,max(e.get('radius',1),20),ttl=max(1,6-e.get('age',0)))
                    if e.get('age',99)<=1:
                        seen_rocks[ident]=True
                        reserve(e,'next rock reserve',p,51,1,3)
                if variant==F.get('CREEP_GREEN') and not player['stats'].get('can_fly') and e.get('age',99)<=1:
                    owner=by_id.get(e.get('spawner'),{})
                    u=owner.get('target_position',(0,0))
                    index=round((e.get('radius',0)-18)/1.4)
                    if (owner.get('type')==E.get('ENTITY_CONJOINED_FATTY') and owner.get('state')==8 and
                        'attack' in owner.get('animation','').lower() and abs(math.hypot(*u)-1)<.01 and
                        0<=index<=6 and abs(e.get('radius',0)-18-1.4*index)<.05 and
                        math.dist(p,(owner['x']+u[0]*25*index,owner['y']+u[1]*25*index))<1):
                        for step in range(index+1,7):
                            delay=max(1,step-index-e.get('age',0))
                            reserve(e,'creep front',(owner['x']+u[0]*25*step,owner['y']+u[1]*25*step),
                                    18+1.4*step,delay,delay+4)
        # A killed NPC can disappear between snapshots without ever exposing
        # dead=True. Keep its last blast position briefly, scoped to this room.
        for key,track in list(self.blast_tracks.items()):
            if track['last']!=frame:
                death=track['death'] if track['death'] is not None else track['last']+1
                if 0<=frame-death<=3:
                    reserve(track['entity'],'removed explosive reserve',track['position'],track['radius'],ttl=4-(frame-death))
                else:self.blast_tracks.pop(key,None)
        self.deaths=seen_deaths
        self.rocks={key:birth for key,birth in self.rocks.items() if frame-birth<=4}
        return out
