"""Shared terrain graph and per-emitter firing lanes; no danger filtering.

The graph is advisory. BeamSearch still sweeps actual pixel movement and ranks
all observed hazards before this attack guidance.
"""
import heapq
import math
import numpy as np
from shot_geometry import lines_clear, body_blocks_segment, shot_intersections


class FiringNavigation:
    def __init__(self,step=20):
        self.step=step;self.offset=step//2
        self.valid=None;self.cache={};self.source=None
        self.goal_cache=None
        self.firing_field=None

    def prepare(self,valid):
        if self.valid is valid:return
        self.valid=valid;self.cache={};self.source=None;self.barrier_masks={}
        self.goal_cache=None
        self.firing_field=None
        step=self.step;offset=self.offset
        self.coarse=valid[offset::step,offset::step];self.shape=self.coarse.shape
        rows,cols=np.indices(self.shape)
        self.points=np.column_stack((cols.ravel()*step+offset,rows.ravel()*step+offset))
        self.graph=[[] for _ in self.points]
        height,width=self.shape;src=[];dst=[];weights=[]
        for row,col in np.argwhere(self.coarse):
            for dx,dy in ((1,0),(0,1),(1,1),(-1,1)):
                x,y=col+dx,row+dy
                if not (0<=x<width and 0<=y<height and self.coarse[y,x]):continue
                if dx and dy and not (self.coarse[row,x] and self.coarse[y,col]):continue
                src.append(int(row*width+col));dst.append(int(y*width+x));weights.append(step*math.hypot(dx,dy))
        if src:
            clear=lines_clear(valid,self.points[src],self.points[dst])
            for a,b,weight,ok in zip(src,dst,weights,clear):
                if ok:self.graph[a].append((b,weight));self.graph[b].append((a,weight))

    def distances(self,seeds):
        distances=np.full(len(self.points),np.inf);heap=[]
        for index,cost in seeds:
            if cost<distances[index]:distances[index]=cost;heap.append((cost,index))
        heapq.heapify(heap)
        while heap:
            cost,index=heapq.heappop(heap)
            if cost!=distances[index]:continue
            for neighbor,weight in self.graph[index]:
                candidate=cost+weight
                if candidate<distances[neighbor]:
                    distances[neighbor]=candidate;heapq.heappush(heap,(candidate,neighbor))
        return distances.reshape(self.shape)

    def goal_distances(self,goal):
        key=tuple(goal)
        if self.goal_cache is not None and self.goal_cache[0]==key:return self.goal_cache[1:]
        indices,costs=self.connections([goal])
        seeds=[(int(i),float(c)) for i,c in zip(indices[0],costs[0]) if math.isfinite(c)]
        field=self.distances(seeds) if seeds else None
        self.goal_cache=(key,seeds,field)
        return seeds,field

    def connections(self,positions):
        positions=np.asarray(positions,dtype=float).reshape(-1,2)
        centers=np.rint((positions-self.offset)/self.step).astype(int)
        offsets=np.array([(x,y) for y in (-1,0,1) for x in (-1,0,1)])
        nodes=centers[:,None,:]+offsets
        x,y=nodes[:,:,0],nodes[:,:,1]
        h,w=self.shape
        inside=(x>=0)&(x<w)&(y>=0)&(y<h)
        indices=np.clip(y,0,h-1)*w+np.clip(x,0,w-1)
        endpoints=self.points[indices]
        flat_starts=np.broadcast_to(positions[:,None,:],endpoints.shape).reshape(-1,2)
        ok=lines_clear(self.valid,flat_starts,endpoints.reshape(-1,2)).reshape(-1,9)
        rounded=np.rint(positions).astype(int)
        px,py=rounded[:,0],rounded[:,1]
        source_ok=(px>=0)&(px<self.valid.shape[1])&(py>=0)&(py<self.valid.shape[0])
        source_ok &= self.valid[np.clip(py,0,self.valid.shape[0]-1),np.clip(px,0,self.valid.shape[1]-1)]
        ok &= inside & self.coarse.ravel()[indices] & source_ok[:,None]
        costs=np.hypot(endpoints[:,:,0]-positions[:,None,0],endpoints[:,:,1]-positions[:,None,1])
        return indices,np.where(ok,costs,np.inf)

    def costs(self,field,positions):
        indices,costs=self.connections(positions)
        return np.min(field.ravel()[indices]+costs,axis=1)

    def from_start(self,start):
        key=tuple(start)
        if self.source is None or self.source[0]!=key:
            indices,costs=self.connections([start])
            field=self.distances([(int(i),float(c)) for i,c in zip(indices[0],costs[0]) if math.isfinite(c)])
            self.source=(key,field)
        return self.source[1]

    def seeds(self,target,policies):
        observed=next((p.get('targets',{}).get(target.id) for p in policies if target.id in p.get('targets',{})),None)
        observed=observed or {'x':target.x,'y':target.y,'vx':target.vx/30,'vy':target.vy/30,'radius':target.radius}
        key=(target.id,tuple(observed.get(k,0) for k in ('x','y','vx','vy','radius','blast_radius')),
             tuple((id(p['mask']),p['range'],p['offset'],p.get('eye_side',0),
             tuple(sorted(p.get('channel',{}).items())),
             tuple((b.get('address'),b['x'],b['y'],b.get('radius',5)) for b in p['blockers'])) for p in policies))
        if key in self.cache:return self.cache[key]
        seeds=np.zeros(len(self.points),dtype=bool)
        for policy in policies:
            origins=self.points+np.asarray(policy['offset'])
            if 'channel' in policy:
                channel=policy['channel']
                for direction in ((1,0),(0,1),(-1,0),(0,-1)):
                    hit,_,points,launches,_=shot_intersections(channel,origins,observed,direction,eye_side=policy.get('eye_side',0))
                    candidate=hit&self.coarse.ravel()&~seeds
                    blast=observed.get('blast_radius',0)
                    if blast:candidate &= np.linalg.norm(points-self.points,axis=1)>blast+policy.get('player_radius',10)+24
                    indices=np.flatnonzero(candidate)
                    if not len(indices):continue
                    clear=lines_clear(policy['mask'],launches[indices],points[indices])
                    if policy['blockers']:
                        clear &= np.array([not body_blocks_segment(o,p,policy['blockers'],channel.get('radius',2)) for o,p in zip(launches[indices],points[indices])])
                    seeds[indices[clear]]=True
                continue
            dx,dy=target.x-origins[:,0],target.y-origins[:,1]
            distance=np.hypot(dx,dy)
            candidate=(self.coarse.ravel() & (np.minimum(np.abs(dx),np.abs(dy))<=max(8,target.radius+6)) &
                       (distance>target.radius+30) & (distance<=policy['range']))
            indices=np.flatnonzero(candidate&~seeds)
            if not len(indices):continue
            ends=np.broadcast_to((target.x,target.y),(len(indices),2))
            clear=lines_clear(policy['mask'],origins[indices],ends)
            if policy['blockers']:
                clear &= np.array([not body_blocks_segment(o,(target.x,target.y),policy['blockers']) for o in origins[indices]])
            seeds[indices[clear]]=True
        if len(self.cache)>=64:self.cache.clear()
        result=np.flatnonzero(seeds);self.cache[key]=result
        return result

    def field(self,indices):
        key=tuple(indices)
        if self.firing_field is None or self.firing_field[0]!=key:
            self.firing_field=(key,self.distances([(int(i),0.) for i in indices]))
        return self.firing_field[1]
