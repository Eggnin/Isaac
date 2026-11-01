"""Speed-aware melee kiting goals; collision checks remain in the action search."""
from dataclasses import dataclass,field
import math
import numpy as np


@dataclass
class KitePlan:
    corners: np.ndarray
    direction: int
    origin_distance: float
    start: tuple
    metadata: dict
    cache: dict=field(default_factory=dict)

    def __post_init__(self):
        self.ends=np.roll(self.corners,-1,axis=0)
        self.vectors=self.ends-self.corners
        self.lengths=np.linalg.norm(self.vectors,axis=1)
        self.offsets=np.concatenate(([0.],np.cumsum(self.lengths)[:-1]))
        self.length=float(self.lengths.sum())

    def project(self,points):
        points=np.asarray(points,float)
        delta=points[:,None,:]-self.corners[None,:,:]
        fractions=np.clip(np.sum(delta*self.vectors[None,:,:],axis=2)/self.lengths[None,:]**2,0,1)
        projections=self.corners[None,:,:]+fractions[:,:,None]*self.vectors[None,:,:]
        distances=np.linalg.norm(points[:,None,:]-projections,axis=2)
        best=distances.argmin(axis=1);rows=np.arange(len(points))
        along=self.offsets[best]+fractions[rows,best]*self.lengths[best]
        return along,distances[rows,best]

    def point(self,distance):
        distance%=self.length
        index=min(3,int(np.searchsorted(self.offsets,distance,side='right')-1))
        return self.corners[index]+self.vectors[index]*(distance-self.offsets[index])/self.lengths[index]

    def prepare(self,points):
        missing=list(dict.fromkeys(tuple(p) for p in points if tuple(p) not in self.cache))
        if not missing:return
        if self.metadata.get('gather_goal') is not None:
            goal=np.asarray(self.metadata['gather_goal'])
            values=(np.linalg.norm(np.asarray(missing)-goal,axis=1)-math.dist(self.start,goal))/40
            for point,value in zip(missing,values):self.cache[point]=float(value)
            return
        if not hasattr(self,'local_starts'):
            segments=[]
            forward=min(self.length*.4,max(120.,self.metadata.get('available_player_speed',200.)))
            for offset,length in zip(self.offsets,self.lengths):
                origin=(offset-self.origin_distance if self.direction==1 else
                    self.origin_distance-offset-length)
                for lap in (-1,0,1):
                    a=max(-80.,origin+lap*self.length);b=min(forward,origin+lap*self.length+length)
                    if b-a>1e-6:segments.append((a,b,self.point(self.origin_distance+self.direction*a),
                        self.point(self.origin_distance+self.direction*b)))
            self.local_offsets=np.array([s[0] for s in segments])
            self.local_starts=np.array([s[2] for s in segments])
            self.local_vectors=np.array([s[3]-s[2] for s in segments])
            self.local_lengths=np.array([s[1]-s[0] for s in segments])
        delta=np.asarray(missing)[:,None,:]-self.local_starts[None,:,:]
        fractions=np.clip(np.sum(delta*self.local_vectors[None,:,:],axis=2)/self.local_lengths[None,:]**2,0,1)
        projections=self.local_starts[None,:,:]+fractions[:,:,None]*self.local_vectors[None,:,:]
        distances=np.linalg.norm(np.asarray(missing)[:,None,:]-projections,axis=2)
        best=distances.argmin(axis=1);rows=np.arange(len(missing))
        off_lane=distances[rows,best]
        progress=self.local_offsets[best]+fractions[rows,best]*self.local_lengths[best]
        # A four-tick prefix must actually advance. Merely putting movement
        # at the end of a planned route must not make standing still optimal.
        values=(off_lane-progress)/40.
        for point,value in zip(missing,values):self.cache[point]=float(value)

    def cost(self,point):
        key=tuple(point)
        if key not in self.cache:self.prepare([key])
        return self.cache[key]


class KiteController:
    def __init__(self):self.reset()

    def reset(self):
        self.terrain=None;self.rectangles=None;self.direction=1
        self.last_switch=None;self.active_rectangle=None
        self.last_along=None;self.last_progress=None;self.speed_samples=[]
        self.gather_goal=None;self.gather_frame=None

    @staticmethod
    def _line_valid(valid,a,b):
        count=max(1,math.ceil(math.dist(a,b)/4))
        points=np.rint(np.linspace(a,b,count+1)).astype(int);x,y=points[:,0],points[:,1]
        return bool(((x>=0)&(x<valid.shape[1])&(y>=0)&(y<valid.shape[0])).all() and valid[y,x].all())

    def _build(self,valid):
        self.terrain=valid;self.rectangles=[]
        ys,xs=np.where(valid)
        if not len(xs):return
        # Stay inside the terrain boundary, with room to turn before a corner.
        cols=np.arange((int(xs.min())//40+1)*40,int(xs.max()),40)
        rows=np.arange((int(ys.min())//40+1)*40,int(ys.max()),40)
        if len(cols)<4 or len(rows)<3:return
        safe=np.ones_like(valid)
        for dx,dy in ((32,0),(-32,0),(0,32),(0,-32),(23,23),(23,-23),(-23,23),(-23,-23)):
            shifted=np.zeros_like(valid)
            x0,x1=max(0,-dx),min(valid.shape[1],valid.shape[1]-dx)
            y0,y1=max(0,-dy),min(valid.shape[0],valid.shape[0]-dy)
            shifted[y0:y1,x0:x1]=valid[y0+dy:y1+dy,x0+dx:x1+dx]
            safe&=shifted
        horizontal=np.zeros((len(rows),len(cols)-1),bool)
        vertical=np.zeros((len(rows)-1,len(cols)),bool)
        for iy,y in enumerate(rows):
            for ix,x in enumerate(cols[:-1]):horizontal[iy,ix]=self._line_valid(safe,(x,y),(cols[ix+1],y))
        for iy,y in enumerate(rows[:-1]):
            for ix,x in enumerate(cols):vertical[iy,ix]=self._line_valid(safe,(x,y),(x,rows[iy+1]))
        hp=np.pad(np.cumsum(~horizontal,axis=1),((0,0),(1,0)))
        vp=np.pad(np.cumsum(~vertical,axis=0),((1,0),(0,0)))
        candidates=[]
        for top in range(len(rows)-2):
            for bottom in range(top+2,len(rows)):
                for left in range(len(cols)-3):
                    for right in range(left+3,len(cols)):
                        if (hp[top,right]!=hp[top,left] or hp[bottom,right]!=hp[bottom,left] or
                                vp[bottom,left]!=vp[top,left] or vp[bottom,right]!=vp[top,right]):continue
                        rectangle=(float(cols[left]),float(rows[top]),float(cols[right]),float(rows[bottom]))
                        area=(rectangle[2]-rectangle[0])*(rectangle[3]-rectangle[1])
                        candidates.append((area,rectangle))
        self.rectangles=[r for _,r in sorted(candidates,reverse=True)[:32]]

    def _gather(self,valid,bodies,start,plan,speed,frame,radius):
        from engine_search import HazardAtlas
        goals=[tuple(plan.point(s)) for s in np.linspace(0,plan.length,16,endpoint=False)]
        if self.gather_goal is not None:goals.insert(0,self.gather_goal)
        goals=list(dict.fromkeys(g for g in goals if math.dist(start,g)>60 and self._line_valid(valid,start,g)))
        if not goals:return None
        starts=np.tile(start,(len(goals),1));delta=np.array(goals)-starts;distance=np.linalg.norm(delta,axis=1)
        steps=np.minimum(np.arange(1,25)[None,:]*speed/30,distance[:,None])
        paths=starts[:,None,:]+delta[:,None,:]/distance[:,None,None]*steps[:,:,None]
        metrics=HazardAtlas(bodies,radius,horizon=paths.shape[1]).measure(paths,starts,0,include_geometry=True,
            full_paths=paths,player_start=start)
        def score(i):
            return (int(metrics[7][i]>0),-float(metrics[8][i]) if metrics[7][i] else 0,
                float(metrics[9][i]) if metrics[7][i] else 0,int(metrics[0][i]>0),
                -float(metrics[1][i]) if metrics[0][i] else 0,float(metrics[2][i]) if metrics[0][i] else 0,
                -math.floor(min(120.,float(metrics[4][i]))/8),-distance[i])
        best=min(range(len(goals)),key=score)
        if self.gather_goal in goals:
            previous=goals.index(self.gather_goal)
            # Preserve a clear entry until reached. Re-evaluate immediately
            # when its modeled body/bullet path is no longer clear.
            if metrics[7][previous]==0 and metrics[0][previous]==0:best=previous
        self.gather_goal=goals[best];self.gather_frame=frame
        return self.gather_goal

    def plan(self,valid,bodies,start,available_speed,actual_speed,frame,*,radius=10.,speed_sample_eligible=True):
        inactive={'active':False}
        if self.terrain is not valid:self.reset();self.terrain=valid
        self.speed_samples=[(f,s) for f,s in self.speed_samples if 0<=frame-f<=60]
        if speed_sample_eligible and math.isfinite(actual_speed) and actual_speed>0:
            self.speed_samples.append((frame,actual_speed))
        observed_capacity=(sorted((s for _,s in self.speed_samples),reverse=True)[2]
            if len(self.speed_samples)>=3 else 0.)
        instantaneous_available=available_speed
        available_speed=max(available_speed,observed_capacity)
        main={b.id:b for b in bodies if b.kind=='enemy'}
        chasers={b.id:b for b in bodies if b.pursuit_speed>0 and b.kind not in ('warning','obstacle')}
        if not main or not main.keys()<=chasers.keys():
            return None,{**inactive,'reason':'not_all_contact_enemies_have_known_local_pursuit'}
        enemy_speed=max(max(math.hypot(main[i].vx,main[i].vy),chasers[i].pursuit_speed,
            chasers[i].pursuit_gain/(1-chasers[i].pursuit_inertia) if 0<chasers[i].pursuit_inertia<1 else 0.)
            for i in main)
        ratio=available_speed/max(1.,enemy_speed)
        speeds={'available_player_speed':available_speed,'actual_player_speed':actual_speed,
            'instantaneous_available_speed':instantaneous_available,'observed_sustained_speed':observed_capacity,
            'enemy_speed_estimate':enemy_speed,'speed_ratio':ratio}
        if ratio<1.15:return None,{**inactive,**speeds,'reason':'insufficient_speed_advantage'}
        if self.rectangles is None:self._build(valid)
        selected=None
        for rect in self.rectangles:
            left,top,right,bottom=rect
            plan=KitePlan(np.array([(left,top),(right,top),(right,bottom),(left,bottom)]),1,0.,start,{})
            along,distance=plan.project([start]);join=plan.point(float(along[0]))
            if self._line_valid(valid,start,join):
                selected=(rect,plan,float(along[0]));break
        if selected is None:return None,{**inactive,**speeds,'reason':'no_reachable_terrain_loop'}
        rect,plan,along=selected
        if rect!=self.active_rectangle:
            self.last_switch=None;self.active_rectangle=rect;self.last_along=None;self.last_progress=frame
            self.gather_goal=None
        if self.last_along is not None:
            progress=(self.direction*(along-self.last_along)+plan.length/2)%plan.length-plan.length/2
            if progress>1.:self.last_progress=frame
        self.last_along=along
        offsets=np.array([(b.x-start[0],b.y-start[1]) for b in main.values()])
        distances=np.linalg.norm(offsets,axis=1);weights=np.exp(-distances/180.)
        scores={};headings={}
        for direction in (1,-1):
            goal=plan.point(along+direction*max(60.,min(100.,available_speed*.4)))
            heading=goal-np.array(start);heading/=max(1e-9,np.linalg.norm(heading));headings[direction]=heading
            alignment=offsets@heading/np.maximum(1.,distances)
            # Prefer a heading with the nearby pack behind us, rather than
            # entering a different part of the same encirclement.
            scores[direction]=float(np.sum(weights*alignment)/max(1e-9,weights.sum())+
                .5*np.max(np.maximum(0,alignment)*weights))
        preferred=min(scores,key=scores.get)
        if self.last_switch is None or (frame-self.last_switch>=30 and
                frame-(self.last_progress or frame)>=30 and scores[preferred]+.2<scores[self.direction]):
            self.direction=preferred;self.last_switch=frame;self.last_progress=frame
        heading=headings[self.direction]
        behind=(offsets@heading)<0
        plan.direction=self.direction;plan.origin_distance=along
        joining=self.gather_goal is not None and math.dist(start,self.gather_goal)>60
        if behind.mean()<.8 or joining:
            if (self.gather_goal is None or math.dist(start,self.gather_goal)<=60 or
                    self.gather_frame is None or frame-self.gather_frame>=6):
                self._gather(valid,bodies,start,plan,available_speed,frame,radius)
        else:self.gather_goal=None
        gathering=self.gather_goal is not None
        plan.metadata={'active':True,'reason':'speed_advantage_on_reachable_loop',**speeds,
            'direction':'clockwise' if self.direction==1 else 'counterclockwise',
            'mode':'gathering_pack' if gathering else 'trailing_pack',
            'gather_goal':list(self.gather_goal) if gathering else None,
            'trailing_fraction':float(behind.mean()),'loop_rectangle':list(rect),
            'loop_length':plan.length,'loop_position':along,'last_direction_change_frame':self.last_switch,
            'direction_scores':{str(k):v for k,v in scores.items()},
            'prediction_is_guarantee':False}
        return plan,plan.metadata
