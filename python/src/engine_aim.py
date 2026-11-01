"""Shot geometry, observed eye/inheritance calibration and shared-channel aim.

Ports firing-point, mixed channel, upcoming-input and companion selection from
assist-source/weapons.lua. Estimated fields remain explicit in diagnostics.
"""
from __future__ import annotations
import math
import numpy as np
from collections import deque
from engine_data import ENUMS
from shot_geometry import body_blocks_segment, lines_clear, channel_mask, shot_traits, shot_intersections

CARDINAL={'right':(1,0),'down':(0,1),'left':(-1,0),'up':(0,-1)}


class EngineAim:
    def __init__(self):self.reset()
    def reset(self):
        self.room=None;self.seen=set();self.eye=None;self.eye_streak=0
        self.inheritance=deque(maxlen=32);self.last_direction=None;self.last_report={}

    @staticmethod
    def channels(profile,player):
        """One geometry description shared by aiming, approach and navigation."""
        position=(player['x'],player['y']);channels=[]
        weapons=profile.get('weapons') or [{'owner':'player','type':t} for t in profile.get('primary_weapon_types',[])]
        for weapon in weapons:
            kind=weapon['type'];owner=weapon.get('owner','player')
            origin=(profile.get('shooter_origin') or position) if owner=='player' else weapon.get('origin') or profile.get('shooter_origin') or position
            reach=profile['attack_range']
            if kind==1:reach=max(1,player['stats'].get('tear_range',260))
            elif kind==3:reach=1300
            elif kind in (10,13):reach=90
            elif kind==4:reach=max(60,min(650,player['stats'].get('tear_range',260)*.6))
            traits=shot_traits(kind,weapon.get('tear_flags',0))
            traits.update({k:weapon[k] for k in ('grid_pass','spectral','body_pass') if k in weapon})
            channels.append({'origin':origin,'range':reach,'speed':profile['projectile_speed'],
                             'instantaneous':kind in (2,3,10,13),'weight':1. if owner=='player' else .6,
                             **traits,'eye':kind==1 and owner=='player','radius':2,'kind':kind,'owner':owner,
                             'area':kind in (9,10,13),'area_radius':20 if kind==9 else 8 if kind in (10,13) else 0})
        return channels

    @staticmethod
    def position_cost(profile,player,targets,position,preferred=None,blockers=(),shot_mask=None,spectral_mask=None):
        return float(EngineAim.position_cost_batch(profile,player,targets,[position],preferred,blockers,shot_mask,spectral_mask)[0])

    @staticmethod
    def position_cost_batch(profile,player,targets,positions,preferred=None,blockers=(),shot_mask=None,spectral_mask=None):
        target=next((t for t in targets if t['address']==preferred),targets[0] if targets else None)
        positions=np.asarray(positions,dtype=float).reshape(-1,2);cost=np.zeros(len(positions))
        if target is None or profile.get('cursor_control'):return cost
        for channel in EngineAim.channels(profile,player):
            origin=positions+np.asarray(channel['origin'])-np.array((player['x'],player['y']))
            delta=np.array((target['x'],target['y']))-origin
            distance=np.hypot(delta[:,0],delta[:,1])
            time=np.zeros(len(positions)) if channel['instantaneous'] else np.minimum(1.,distance/max(1,channel['speed']))
            delta+=time[:,None]*np.array((target.get('vx',0)*30,target.get('vy',0)*30))
            miss=0 if channel['kind'] in (4,9,10,13) else np.maximum(0,np.min(np.abs(delta),axis=1)-target.get('radius',8)-2)
            cost+=np.minimum(12.,miss*.04+np.maximum(0,np.hypot(delta[:,0],delta[:,1])-channel['range'])*.03)
            mask=channel_mask(channel,shot_mask,spectral_mask)
            if mask is not None:cost+=8.*~lines_clear(mask,origin,origin+delta)
            if not channel['body_pass'] and blockers:
                cost+=8.*np.array([body_blocks_segment(o,o+d,blockers) for o,d in zip(origin,delta)])
        return cost

    @staticmethod
    def _line_clear(mask,start,end):
        if mask is None:return True
        distance=math.dist(start,end);count=max(1,math.ceil(distance/3))
        for i in range(1,count+1):
            x=round(start[0]+(end[0]-start[0])*i/count);y=round(start[1]+(end[1]-start[1])*i/count)
            if not (0<=y<mask.shape[0] and 0<=x<mask.shape[1] and mask[y,x]):return False
        return True

    def observe(self,snapshot,player):
        if snapshot['room']!=self.room:self.reset();self.room=snapshot['room']
        own=player['address'];known={e['address'] for e in snapshot['entities']}
        births=[e for e in snapshot['entities'] if e['type']==2 and e['address'] not in self.seen and
                e.get('age',99)<=1 and (e.get('parent')==own or e.get('spawner')==own)]
        self.seen=known
        if len(births)!=1 or self.last_direction not in CARDINAL:
            if len(births)>1:self.eye=None;self.eye_streak=0
            return
        tear=births[0];ux,uy=CARDINAL[self.last_direction]
        age=min(1,tear.get('age',0));dx=tear['x']-tear.get('vx',0)*age-player['x'];dy=tear['y']-tear.get('vy',0)*age-player['y']
        forward=dx*ux+dy*uy;side=dx*uy-dy*ux
        if 7<=forward<=13 and 2<=abs(side)<=7:
            eye=1 if side>0 else -1
            self.eye_streak=self.eye_streak+1 if self.eye==-eye else 0
            self.eye=eye
        else:self.eye=None;self.eye_streak=0
        pvx,pvy=player.get('vx',0),player.get('vy',0)
        cross=pvx*uy-pvy*ux
        if abs(cross)>.5 and not (tear.get('tear') or {}).get('flags',0):
            k=(tear.get('vx',0)*uy-tear.get('vy',0)*ux)/cross
            speed=(tear.get('vx',0)-k*pvx)*ux+(tear.get('vy',0)-k*pvy)*uy
            if 0<=k<=2.5 and 3<=speed<=30:self.inheritance.append(k)

    def choose(self,profile,player,targets,shot_mask,path,preferred=None,blockers=(),spectral_mask=None):
        """Returns arrows' shared direction, or None when no useful shot exists."""
        self.last_report={'no_fire_reason':'evaluating','predicted_hit_channels':0,'target_count':len(targets)}
        rejected={key:0 for key in ('behind','out_of_range','misaligned','explosion_risk','wall','body_blocker')}
        position=(player['x'],player['y']);next_pos=path[0] if path else position
        # Tears inherit the player's instantaneous engine velocity at launch.
        # The first planner path sample can include acceleration and input
        # prediction that has not happened yet, so it is not a launch velocity.
        coefficient=float(np.median(self.inheritance)) if len(self.inheritance)>=6 else 0.
        inheritance_spread=max(self.inheritance)-min(self.inheritance) if self.inheritance else 0.
        aim_origin=profile.get('aim_origin')
        if profile.get('cursor_control') and aim_origin:
            target=next((t for t in targets if t['address']==preferred),targets[0] if targets else None)
            if target:
                blast=target.get('blast_radius',0)
                if blast and math.dist(next_pos,(target['x'],target['y']))<=blast+player.get('radius',10)+24:
                    # Steer an automatically firing cursor off the unsafe NPC.
                    dx=player['y']-target['y'];dy=target['x']-player['x']
                    fire=('right' if dx>=0 else 'left') if abs(dx)>=abs(dy) else ('down' if dy>=0 else 'up')
                    profile['predicted_hit']=False;profile['evading_blast']=True
                    self.last_report.update(no_fire_reason='cursor_evading_explosion',direction=fire)
                    return fire
                # Dampen against the cursor's own velocity to avoid overshoot.
                cv=profile.get('cursor_velocity',(0.,0.))
                dx=target['x']-aim_origin[0]-cv[0]*.08;dy=target['y']-aim_origin[1]-cv[1]*.08
                if max(abs(dx),abs(dy))>max(3,target.get('radius',5)*.4):
                    fire=('right' if dx>0 else 'left') if abs(dx)>=abs(dy) else ('down' if dy>0 else 'up')
                    self.last_direction=fire;profile['predicted_hit']=True
                    self.last_report.update(no_fire_reason=None,direction=fire,predicted_hit_channels=1)
                    return fire
            profile['predicted_hit']=False
            self.last_report['no_fire_reason']='cursor_aligned_or_no_target'
            return None
        channels=self.channels(profile,player) if profile.get('weapons') else []
        if profile.get('mixed_laser') and not any(c['instantaneous'] for c in channels):
            channels.append({'origin':profile.get('shooter_origin') or position,'range':1300,'speed':0,
                             'instantaneous':True,'weight':.65 if profile.get('attack_now') else 1.,'grid_pass':False,'body_pass':True,'radius':2})
        channels.extend({**c,'weight':.7,'grid_pass':c.get('instantaneous',False),'body_pass':c.get('instantaneous',False),'radius':8}
                        for c in profile.get('companions',[]) if c.get('ready'))
        candidates=[]
        directions=dict(CARDINAL)
        if profile.get('omnidirectional'):
            q=math.sqrt(.5)
            directions.update({'up+right':(q,-q),'up+left':(-q,-q),'down+right':(q,q),'down+left':(-q,q)})
        for direction,(ux,uy) in directions.items():
            score=0.;hits=0;companion=False;dangerous=False
            for channel in channels:
                origin=channel['origin']
                # Use upcoming player position only for its own emitter; fixed
                # familiar origins retain their independent current position.
                if math.dist(origin,position)<1:origin=next_pos
                emitter_origin=origin
                side=-(self.eye or 0) if self.eye_streak>=2 else 0
                best=None;penetrating_value=0.
                for target in targets:
                    hit,times,points,origins,reasons=shot_intersections(channel,[emitter_origin],target,(ux,uy),
                        velocity=(player.get('vx',0.),player.get('vy',0.)),inheritance=coefficient,eye_side=side)
                    t=float(times[0]);point=tuple(points[0]);origin=tuple(origins[0])
                    if not hit[0]:
                        rejected[str(reasons[0])]+=1;continue
                    impact_pos=path[min(len(path)-1,max(0,math.ceil(t*30)-1))] if path else next_pos
                    if target.get('blast_radius',0) and min(math.dist(next_pos,point),math.dist(impact_pos,point))<=target['blast_radius']+player.get('radius',10)+24:
                        dangerous=True;rejected['explosion_risk']+=1;continue
                    if not self._line_clear(channel_mask(channel,shot_mask,spectral_mask),origin,point):
                        rejected['wall']+=1;continue
                    if not channel.get('body_pass'):
                        blocked=body_blocks_segment(origin,point,blockers,channel['radius'])
                        if blocked:rejected['body_blocker']+=1;continue
                    # Ray-like shots hit their first body; do not score damage
                    # through nearer enemies unless the channel passes bodies.
                    depth=math.dist(origin,point)
                    value=1.+(.3 if target['address']==preferred else 0.)
                    if profile.get('explosive') and math.dist(next_pos,point)<100:
                        dangerous=True;rejected['explosion_risk']+=1;continue
                    if best is None or depth<best[0]:best=(depth,value,target)
                    if channel.get('body_pass'):penetrating_value+=value
                if best:
                    score+=channel['weight']*(penetrating_value if channel.get('body_pass') else best[1]);hits+=1
                    companion|=bool(channel.get('ready'))
            if self.last_direction==direction:score+=.025 if hits else 0.
            if dangerous:score=0.;hits=0
            candidates.append((score,hits,direction,companion,dangerous))
        best=max(candidates,key=lambda x:x[0])
        fire=best[2] if best[1]>0 else None
        if preferred is not None:
            target=next((t for t in targets if t['address']==preferred),None)
            if target:
                dx=target['x']-position[0];dy=target['y']-position[1]
                profile['precharge_direction']=('right' if dx>0 else 'left') if abs(dx)>=abs(dy) else ('down' if dy>0 else 'up')
                profile['charge_fraction']=max(.4,min(1.,(math.hypot(dx,dy)+target.get('radius',8)+12+
                    math.hypot(target.get('vx',0),target.get('vy',0))*8)/max(1,profile['attack_range'])))
        profile['predicted_hit']=best[1]>0;profile['companion_release']=best[3]
        profile['dangerous_release']=best[4] and fire is None
        self.last_report={'predicted_hit_channels':best[1],'score':best[0],'direction':fire,
                          'no_fire_reason':None if fire else 'explosion_risk' if rejected['explosion_risk'] else 'no_predicted_hit' if channels else 'no_channels',
                          'rejections':rejected,'direction_scores':[{'direction':c[2],'score':c[0],'hits':c[1],'unsafe':c[4]} for c in candidates],
                          'target_count':len(targets),'attack_range':profile['attack_range'],
                          'nearest_target_distance':min((math.dist(next_pos,(t['x'],t['y'])) for t in targets),default=None),
                          'inheritance_coefficient':coefficient,'inheritance_samples':len(self.inheritance),
                          'inheritance_spread':inheritance_spread,
                          'eye_observed':self.eye_streak>=2,'next_eye':-(self.eye or 0) if self.eye_streak>=2 else None}
        if fire:self.last_direction=fire
        return fire
