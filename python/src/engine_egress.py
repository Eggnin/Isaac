"""Advisory time-expanded escape space; real action collision stays in BeamSearch."""
from dataclasses import dataclass,replace
import math
import numpy as np
from engine_search import HazardAtlas


@dataclass
class PendingEgress:
    valid: np.ndarray
    frame: int
    metadata: dict
    def cost(self,position,frames=0):
        x,y=position;clearance=80.
        for dx,dy in ((1,0),(-1,0),(0,1),(0,-1)):
            for distance in range(10,81,10):
                xx,yy=round(x+dx*distance),round(y+dy*distance)
                if not (0<=xx<self.valid.shape[1] and 0<=yy<self.valid.shape[0] and self.valid[yy,xx]):
                    clearance=min(clearance,distance-10);break
        return (80-clearance)/10


@dataclass
class EgressField:
    frame: int
    step: int
    nodes: np.ndarray
    depth: np.ndarray
    quality: np.ndarray
    valid: np.ndarray
    metadata: dict
    initial_transitions: frozenset

    def cost(self,position,frames=0):
        layer=min(len(self.depth)-1,max(0,int(round(frames/self.step))))
        p=np.asarray(position);distance=np.linalg.norm(self.nodes-p,axis=1)
        indices=np.flatnonzero(distance<=42.)
        best=math.inf
        for i in indices:
            count=max(1,math.ceil(distance[i]/4))
            points=np.rint(np.linspace(p,self.nodes[i],count+1)).astype(int)
            x,y=points[:,0],points[:,1]
            if not (((x>=0)&(x<self.valid.shape[1])&(y>=0)&(y<self.valid.shape[0])).all() and self.valid[y,x].all()):continue
            remaining=len(self.depth)-layer
            cost=(remaining-self.depth[layer,i])*16+(80-self.quality[layer,i])/10+distance[i]/40
            best=min(best,cost)
        return best if math.isfinite(best) else len(self.depth)*16+16


class TimedEgress:
    def __init__(self):
        self.executor=None;self.future=None;self.epoch=0
        self.reset()
    def reset(self):
        self.epoch+=1
        self.terrain=None;self.topology=None;self.field=None
    def close(self):
        if self.executor:self.executor.shutdown(wait=False,cancel_futures=True)
    def advise(self,valid,bodies,speed,frame,player_radius):
        """Build future advice off the input thread; current collision never waits."""
        if self.terrain is not valid:self.reset();self.terrain=valid
        if self.future is not None and self.future.done():
            future=self.future;self.future=None
            field,topology,epoch=future.result()
            if epoch==self.epoch:
                self.field=field;self.topology=topology
        if self.future is None and (self.field is None or frame-self.field.frame>=6):
            if self.executor is None:
                from concurrent.futures import ThreadPoolExecutor
                self.executor=ThreadPoolExecutor(max_workers=1,thread_name_prefix='isaac-egress')
            epoch=self.epoch;topology=self.topology
            def build(mask,threats):
                builder=TimedEgress();builder.terrain=mask;builder.topology=topology
                return builder.prepare(mask,threats,speed,frame,player_radius),builder.topology,epoch
            self.future=self.executor.submit(build,valid.copy(),tuple(bodies))
        if self.field is not None and 0<=frame-self.field.frame<24:return self.field
        return PendingEgress(valid,frame,{'kind':'terrain_advice_pending_timed_field','frame':frame,
            'horizon_frames':0,'collision_checks':'current_action_search_unchanged'})

    def prepare(self,valid,bodies,speed,frame,player_radius):
        if speed<=0 or not math.isfinite(speed):return None
        if self.terrain is not valid:
            self.terrain=valid;self.topology=None;self.field=None
        # This is an advisory goal cache. Every current body is still checked
        # without this cache by the action search on every observation.
        if self.field is not None and 0<=frame-self.field.frame<6:return self.field
        if self.topology is None:
            nodes=[];mapping={}
            for y in range(160,valid.shape[0],40):
                for x in range(80,valid.shape[1],40):
                    if valid[y,x]:mapping[(x,y)]=len(nodes);nodes.append((x,y))
            if not nodes:return None
            nodes=np.asarray(nodes,dtype=float);edges=[]
            for p,i in mapping.items():
                for dx,dy in ((0,0),(40,0),(-40,0),(0,40),(0,-40)):
                    q=(p[0]+dx,p[1]+dy);j=mapping.get(q)
                    if j is None:continue
                    edges.append((i,j))
            edges=np.asarray(edges,dtype=int)
            samples=np.rint(nodes[edges[:,0],None,:]+(nodes[edges[:,1]]-nodes[edges[:,0]])[:,None,:]*
                            np.linspace(0,1,11)[None,:,None]).astype(int)
            edges=edges[valid[samples[:,:,1],samples[:,:,0]].all(axis=1)]
            # Local terrain clearance distinguishes a corner from a roomy
            # region without prescribing "always move to the room center".
            clearance=np.full(len(nodes),80.)
            for dx,dy in ((1,0),(-1,0),(0,1),(0,-1)):
                for reach in range(10,81,10):
                    p=nodes.astype(int)+np.array([dx,dy])*reach;x,y=p[:,0],p[:,1]
                    inside=(x>=0)&(x<valid.shape[1])&(y>=0)&(y<valid.shape[0])
                    good=np.zeros(len(nodes),bool);good[inside]=valid[y[inside],x[inside]]
                    clearance=np.minimum(clearance,np.where(good,80.,reach-10))
            self.topology=(nodes,edges,clearance)
        nodes,edges,clearance=self.topology
        # Use observed/calibrated travel speed, not the same edge time for
        # slow NPCs and the faster player. A cell can be crossed before closure.
        step=max(2,min(30,math.ceil(40*30/speed)))
        layers=max(4,min(16,math.ceil(48/step)))
        # Fold only equal-shape alternative NPC motion branches for this
        # advisory field. Distinct hazards, explosions, lasers and entities
        # remain present; the action search retains every original branch.
        main={b.id:b for b in bodies if b.kind=='enemy'}
        pursuit={b.id:b for b in bodies if b.pursuit_speed>0 and b.kind not in ('warning','obstacle')}
        representatives=[]
        for b in bodies:
            if b.kind in ('warning','obstacle'):continue
            if b.id in main and b.end is None and b.ring_radius is None and b.radius==main[b.id].radius:
                if b is not pursuit.get(b.id,main[b.id]):continue
            representatives.append(replace(b,latency_padding=0.))
        atlas=HazardAtlas(representatives,player_radius,(layers+2)*step)
        # Player radius is already in the configuration-space terrain mask,
        # but dynamic collisions still need the actual player disk.
        starts=nodes[edges[:,0]];ends=nodes[edges[:,1]]
        fractions=np.arange(1,step+1)/step
        paths=starts[:,None,:]+(ends-starts)[:,None,:]*fractions[None,:,None]
        allowed=[]
        for layer in range(layers+2):
            metrics=atlas.measure(paths,starts,layer*step)
            allowed.append(metrics[0]==0)
        # A goal must keep exits after arrival. Survival depth is propagated
        # backward through time, rather than blocking an edge at every future
        # instant and treating all unreachable points as the same penalty.
        depth=np.zeros((layers+1,len(nodes)),dtype=int)
        quality=np.zeros((layers+1,len(nodes)),dtype=float)
        out_degree=np.bincount(edges[allowed[layers],0],minlength=len(nodes))
        next_degree=np.bincount(edges[allowed[layers+1],0],minlength=len(nodes))
        viable=(out_degree>=3)&(next_degree>=2)
        depth[-1]=viable.astype(int)
        quality[-1]=np.where(viable,clearance,0.)
        for layer in range(layers-1,-1,-1):
            current=edges[allowed[layer]]
            if not len(current):continue
            d=1+depth[layer+1,current[:,1]]
            np.maximum.at(depth[layer],current[:,0],d)
            best=d==depth[layer,current[:,0]]
            # Discounting propagates "reach usable space soon", rather than
            # flattening every point that can eventually reach a good node.
            np.maximum.at(quality[layer],current[best,0],quality[layer+1,current[best,1]]*.88)
            degree=np.bincount(current[:,0],minlength=len(nodes))
            waits=np.zeros(len(nodes),bool)
            same=current[:,0]==current[:,1];waits[current[same,0]]=True
            following=edges[allowed[layer+1]]
            next_waits=np.zeros(len(nodes),bool);same=following[:,0]==following[:,1]
            next_waits[following[same,0]]=True
            local=np.where((degree>=3)&waits&next_waits,clearance,0.)
            quality[layer]=np.maximum(quality[layer],local)
        metadata={'kind':'time_expanded_advisory','frame':frame,'step_frames':step,'horizon_frames':layers*step,
            'nodes':len(nodes),'future_exit_nodes':int(viable.sum()),'full_survival_nodes':int((depth[0]>=layers+1).sum()),
            'latency_policy':'geometry_advice_only_all_margins_retained_in_action_search'}
        initial=frozenset((tuple(nodes[i]),tuple(nodes[j])) for i,j in edges[allowed[0]])
        self.field=EgressField(frame,step,nodes,depth,quality,valid,metadata,initial)
        return self.field
