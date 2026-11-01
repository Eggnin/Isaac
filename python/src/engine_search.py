"""External port of segmented beam/scout search from assist-source/planner.lua.

The action alphabet is normal keyboard movement (eight directions plus stop).
Hazards are never truncated; NumPy evaluates all children in one batch.
"""
from __future__ import annotations
import math
import numpy as np


def body_positions(body,times):
    times=np.asarray(times,dtype=float)
    path=getattr(body,'trajectory',None)
    if path:
        path=np.asarray(path,dtype=float)
        f=np.clip(times*30,0,len(path)-1)
        lo=f.astype(int);hi=np.minimum(lo+1,len(path)-1)
        result=path[lo]+(path[hi]-path[lo])*(f-lo)[...,None]
        # Continue from the final observed model instead of freezing it.
        if len(path)>1:
            result+=np.maximum(0,times-(len(path)-1)/30)[...,None]*(path[-1]-path[-2])*30
        return result
    return np.array([body.x,body.y])+times[...,None]*np.array([body.vx,body.vy])


def line_ends(body,times):
    times=np.asarray(times)
    omega=getattr(body,'angular_velocity',0.)
    if omega:
        dx,dy=body.end[0]-body.x,body.end[1]-body.y
        angle=omega*times;c=np.cos(angle);s=np.sin(angle)
        return body_positions(body,times)+np.stack((dx*c-dy*s,dx*s+dy*c),axis=-1)
    return np.array(body.end)+times[...,None]*np.array(body.end_velocity or (body.vx,body.vy))


class HazardAtlas:
    def __init__(self,bodies,radius,horizon=40):
        self.bodies=bodies;self.radius=radius
        self.starts=np.array([b.start_after for b in bodies])
        self.ends=np.array([b.end_after for b in bodies])
        self.geometry_radii=np.array([max(0,b.radius)+radius for b in bodies])
        self.radii=np.array([max(0,b.radius)+radius+b.latency_padding for b in bodies])
        self.obstacles=np.array([b.kind=='obstacle' for b in bodies])
        self.soft=np.array([b.kind in ('warning','obstacle') for b in bodies])
        # Clearance is outside both collision bodies, not center distance.
        # Physical collision remains a separate, higher priority criterion.
        self.buffers=np.array([24. if b.end is not None or b.ring_radius is not None else
            min(110.,64.+math.hypot(b.vx,b.vy)*.12) if b.kind=='enemy' else
            min(40.,20.+math.hypot(b.vx,b.vy)*.035) if b.kind=='projectile' else 36.
            for b in bodies])
        self.buffers=np.maximum(self.buffers,np.array([b.safety_buffer for b in bodies]))
        times=np.arange(horizon+1)/30
        self.positions=np.array([body_positions(b,times) for b in bodies]).transpose(1,0,2) if bodies else np.empty((horizon+1,0,2))
        self.lines=[i for i,b in enumerate(bodies) if b.end is not None]
        self.rings=[i for i,b in enumerate(bodies) if b.ring_radius is not None]
        self.chasers=[i for i,b in enumerate(bodies) if b.pursuit_speed>0 and b.end is None and b.ring_radius is None]
        self.line_ends=np.array([line_ends(b,times) for b in bodies if b.end is not None]).transpose(1,0,2) if self.lines else np.empty((horizon+1,0,2))

    def measure(self,paths,starts,base,*,reference=False,include_geometry=False,full_paths=None,player_start=None):
        """Collision-first metrics for [routes, frames, xy] paths."""
        n,k,_=paths.shape
        if not self.bodies:
            metrics=(np.zeros(n,int),np.full(n,999.),np.zeros(n),np.zeros(n),np.full(n,999.),np.zeros(n),np.zeros(n))
            return metrics+(np.zeros(n,int),np.full(n,999.),np.zeros(n)) if include_geometry else metrics
        previous=np.concatenate((starts[:,None,:],paths[:,:-1,:]),axis=1)
        chasing={}
        if self.chasers and full_paths is not None and player_start is not None:
            # Re-simulate from this snapshot for each candidate's entire prefix.
            # A pursuing NPC must turn toward the proposed player route, not
            # continue chasing the player's old velocity after a direction change.
            if not reference:
                # Advance all chasers together. A swarm must not multiply
                # Python/NumPy dispatch overhead once per NPC per tick.
                ids=self.chasers
                # Beam children share their parent's committed prefix. Simulate
                # that prefix once, then branch at the current segment boundary.
                representatives,inverse=(np.unique(full_paths[:,:base,:],axis=0,
                    return_index=True,return_inverse=True)[1:] if base else (np.arange(n),None))
                count=len(representatives)
                position=np.broadcast_to(np.array([(self.bodies[i].x,self.bodies[i].y) for i in ids],dtype=float),(count,len(ids),2)).copy()
                angle=np.broadcast_to(np.array([math.atan2(self.bodies[i].vy,self.bodies[i].vx) for i in ids]),(count,len(ids))).copy()
                speeds=np.array([self.bodies[i].pursuit_speed/30 for i in ids])
                turns=np.array([self.bodies[i].pursuit_turn for i in ids])
                inertia=np.array([self.bodies[i].pursuit_inertia for i in ids])
                gain=np.array([self.bodies[i].pursuit_gain/30 for i in ids])
                old_weight=np.array([self.bodies[i].pursuit_old_weight for i in ids])
                inertial=inertia>0
                has_inertia=bool(np.any(inertial));all_inertia=bool(np.all(inertial))
                velocity=np.broadcast_to(np.array([(self.bodies[i].vx/30,self.bodies[i].vy/30)
                    for i in ids]),(count,len(ids),2)).copy()
                points=[]
                for tick in range(base+k):
                    if tick==base:
                        if inverse is not None:
                            position=position[inverse].copy()
                            velocity=velocity[inverse].copy()
                            angle=angle[inverse].copy()
                        points.append(position.copy())
                    target=(np.broadcast_to(player_start,(len(position),2)) if tick==0 else
                        full_paths[representatives,tick-1,:] if tick<base else full_paths[:,tick-1,:])
                    delta=target[:,None,:]-position
                    if has_inertia:
                        unit=delta/np.maximum(1e-9,np.linalg.norm(delta,axis=-1,keepdims=True))
                        next_velocity=inertia[None,:,None]*velocity+gain[None,:,None]*unit
                        advance=old_weight[None,:,None]*velocity+(1-old_weight)[None,:,None]*next_velocity
                    if not all_inertia:
                        desired=np.arctan2(delta[:,:,1],delta[:,:,0])
                        turn=(desired-angle+math.pi)%(2*math.pi)-math.pi
                        angle+=np.clip(turn,-turns,turns)
                        ordinary=np.stack((np.cos(angle),np.sin(angle)),axis=-1)*speeds[None,:,None]
                        advance=np.where(inertial[None,:,None],advance,ordinary) if has_inertia else ordinary
                    position+=advance
                    if has_inertia:velocity=next_velocity
                    if tick>=base:points.append(position.copy())
                history=np.stack(points,axis=1)
                chasing={index:history[:,:,j,:] for j,index in enumerate(ids)}
            for index in self.chasers if reference else ():
                body=self.bodies[index];position=np.tile((body.x,body.y),(n,1)).astype(float)
                angle=np.full(n,math.atan2(body.vy,body.vx));points=[position.copy()]
                velocity=np.tile((body.vx/30,body.vy/30),(n,1))
                for tick in range(base+k):
                    target=np.tile(player_start,(n,1)) if tick==0 else full_paths[:,tick-1,:]
                    delta=target-position
                    if body.pursuit_inertia>0:
                        length=np.maximum(1e-9,np.linalg.norm(delta,axis=1))
                        next_velocity=body.pursuit_inertia*velocity+body.pursuit_gain/30*delta/length[:,None]
                        position+=body.pursuit_old_weight*velocity+(1-body.pursuit_old_weight)*next_velocity
                        velocity=next_velocity
                    else:
                        desired=np.arctan2(delta[:,1],delta[:,0])
                        turn=(desired-angle+math.pi)%(2*math.pi)-math.pi
                        angle+=np.clip(turn,-body.pursuit_turn,body.pursuit_turn)
                        position+=np.column_stack((np.cos(angle),np.sin(angle)))*body.pursuit_speed/30
                    points.append(position.copy())
                chasing[index]=np.stack(points[base:base+k+1],axis=1)
        t0=np.arange(base,base+k)[None,:,None]/30
        t1=t0+1/30
        lo=np.clip((self.starts[None,None,:]-t0)*30,0,1)
        hi=np.clip((self.ends[None,None,:]-t0)*30,0,1)
        if self.lines or self.rings or reference:
            a=previous[:,:,None,:]-self.positions[None,base:base+k,:,:]
            b=paths[:,:,None,:]-self.positions[None,base+1:base+k+1,:,:]
            for index,points in chasing.items():a[:,:,index,:]=previous-points[:,:-1,:];b[:,:,index,:]=paths-points[:,1:,:]
            delta=b-a
            u=np.clip(-np.sum(a*delta,axis=-1)/np.maximum(1e-12,np.sum(delta*delta,axis=-1)),lo,hi)
            distance=np.linalg.norm(a+u[:,:,:,None]*delta,axis=-1)
        else:
            # Same swept closest point, without temporary [...,xy] products
            # and reductions for the common all-circle case. No hazard culling.
            ax=previous[:,:,None,0]-self.positions[None,base:base+k,:,0]
            ay=previous[:,:,None,1]-self.positions[None,base:base+k,:,1]
            for index,points in chasing.items():
                ax[:,:,index]=previous[:,:,0]-points[:,:-1,0];ay[:,:,index]=previous[:,:,1]-points[:,:-1,1]
            dx=paths[:,:,None,0]-self.positions[None,base+1:base+k+1,:,0]-ax
            dy=paths[:,:,None,1]-self.positions[None,base+1:base+k+1,:,1]-ay
            for index,points in chasing.items():
                dx[:,:,index]=paths[:,:,0]-points[:,1:,0]-ax[:,:,index];dy[:,:,index]=paths[:,:,1]-points[:,1:,1]-ay[:,:,index]
            u=np.clip(-(ax*dx+ay*dy)/np.maximum(1e-12,dx*dx+dy*dy),lo,hi)
            x=ax+u*dx;y=ay+u*dy
            distance=np.sqrt(x*x+y*y)
        if self.lines:
            # Swept beam hull: test all four hull edges and origin containment.
            # This contains beam motion between adjacent engine frames.
            p0=self.positions[None,base:base+k,self.lines,:]-previous[:,:,None,:]
            p1=self.positions[None,base+1:base+k+1,self.lines,:]-paths[:,:,None,:]
            q0=self.line_ends[None,base:base+k,:,:]-previous[:,:,None,:]
            q1=self.line_ends[None,base+1:base+k+1,:,:]-paths[:,:,None,:]
            hull=[p0,q0,q1,p1];best=np.full(p0.shape[:-1],np.inf);inside=np.zeros(best.shape,bool)
            for i in range(3):
                for j in range(i+1,4):
                    d=hull[j]-hull[i]
                    f=np.clip(-np.sum(hull[i]*d,axis=-1)/np.maximum(1e-12,np.sum(d*d,axis=-1)),0,1)
                    best=np.minimum(best,np.linalg.norm(hull[i]+f[:,:,:,None]*d,axis=-1))
                    for z in range(j+1,4):
                        x,y,zv=hull[i],hull[j],hull[z]
                        cross=lambda x,y:x[...,0]*y[...,1]-x[...,1]*y[...,0]
                        area=cross(y-x,zv-x)
                        c1,c2,c3=cross(x,y),cross(y,zv),cross(zv,x)
                        inside|=(np.abs(area)>1e-9)&(((c1>=0)&(c2>=0)&(c3>=0))|((c1<=0)&(c2<=0)&(c3<=0)))
            sweep=np.array([math.dist((bodies.x,bodies.y),bodies.end)*math.sin(min(math.pi,abs(bodies.angular_velocity)/30)*.5) for bodies in (self.bodies[i] for i in self.lines)])
            distance[:,:,self.lines]=np.where(inside,0,best)-sweep[None,None,:]
        if self.rings:
            for i in self.rings:
                body=self.bodies[i]
                r0=np.maximum(0,body.ring_radius+body.ring_growth*t0[:,:,0])
                r1=np.maximum(0,body.ring_radius+body.ring_growth*t1[:,:,0])
                da=np.linalg.norm(a[:,:,i,:],axis=-1)-r0
                db=np.linalg.norm(b[:,:,i,:],axis=-1)-r1
                # Same convex radial minimization as native/kernel.c ringgap;
                # endpoint/midpoint tests can miss an off-center ring crossing.
                x=a[:,:,i,:];change=b[:,:,i,:]-x;dr=r1-r0
                low=np.zeros_like(da);high=np.ones_like(da)
                for _ in range(12):
                    f=(low+high)*.5;p=x+change*f[:,:,None]
                    derivative=np.sum(p*change,axis=-1)/np.maximum(1e-12,np.linalg.norm(p,axis=-1))-dr
                    low=np.where(derivative<0,f,low);high=np.where(derivative>=0,f,high)
                f=(low+high)*.5
                minimum=np.minimum(np.minimum(da,db),np.linalg.norm(x+change*f[:,:,None],axis=-1)-r0-dr*f)
                minimum-=(np.linalg.norm(change,axis=-1)+np.abs(dr))*(high-low)*.5
                maximum=np.maximum(da,db)
                distance[:,:,i]=np.maximum(0,np.maximum(minimum,-maximum))
        active=(t1>=self.starts[None,None,:])&(t0<=self.ends[None,None,:])
        clear=distance-self.radii[None,None,:]
        physical=(clear<0)&active&~self.soft[None,None,:]
        hit_frames=physical.any(axis=2)
        hits=hit_frames.sum(axis=1)
        first=np.where(hit_frames,np.arange(base+1,base+k+1)[None,:],999).min(axis=1)
        exposure=(np.maximum(0,-clear)*physical).sum(axis=(1,2))
        warning=(np.maximum(0,5-clear)*active*(self.soft&~self.obstacles)[None,None,:]).sum(axis=(1,2))
        obstruction=(np.maximum(0,-clear)*active*self.obstacles[None,None,:]).sum(axis=(1,2))
        minimum=np.where(active&~self.soft[None,None,:],clear,np.inf).min(axis=(1,2))
        # Worst nearby threat per frame avoids counting prediction branches as
        # extra enemies. Integrating over time rewards promptly leaving danger,
        # even when every route shares the same close initial position.
        proximity=np.maximum(0,1-clear/self.buffers[None,None,:])
        comfort=np.where(active&~self.soft[None,None,:],proximity,0).max(axis=2)
        metrics=(hits,first,exposure,warning,minimum,(comfort*comfort).sum(axis=1),obstruction)
        if not include_geometry:return metrics
        # Use the same swept positions and active intervals. Do not let a
        # latency-envelope overlap tie with a predicted body/bullet collision.
        geometry_clear=distance-self.geometry_radii[None,None,:]
        geometry_collision=(geometry_clear<0)&active&~self.soft[None,None,:]
        geometry_frames=geometry_collision.any(axis=2)
        geometry_first=np.where(geometry_frames,np.arange(base+1,base+k+1)[None,:],999).min(axis=1)
        geometry_exposure=(np.maximum(0,-geometry_clear)*geometry_collision).sum(axis=(1,2))
        return metrics+(geometry_frames.sum(axis=1),geometry_first,geometry_exposure)


class BeamSearch:
    DIRECTIONS=((0,0),(1,0),(-1,0),(0,1),(0,-1),(1,1),(1,-1),(-1,1),(-1,-1))

    def __init__(self):
        self.continuation=[]
        self.last_frame=None
        self.last_report={}

    def reset(self):
        self.continuation=[];self.last_frame=None;self.last_report={}

    @staticmethod
    def escape_directions(nodes,origin):
        """Count geometric escape directions, not keyboard labels.

        Wall slides and inertia can send several different inputs down the
        same corridor. They provide one escape direction, not several.
        """
        directions=[]
        for node in nodes:
            dx,dy=node['p'][0]-origin[0],node['p'][1]-origin[1]
            length=math.hypot(dx,dy)
            if length<4:continue
            directions.append((dx/length,dy/length))
        # A maximum pairwise-separated subset avoids input-order dependence.
        # At most eight exits: exhaustive subsets cost at most 256 checks.
        best=0;n=len(directions);limit=math.cos(math.radians(20))
        incompatible=[0]*n
        for i in range(n):
            for j in range(i):
                if directions[i][0]*directions[j][0]+directions[i][1]*directions[j][1]>limit:
                    incompatible[i]|=1<<j;incompatible[j]|=1<<i
        if not any(incompatible):return n
        for subset in range(1<<n):
            count=subset.bit_count()
            if count<=best:continue
            if all(not (subset&incompatible[i]) for i in range(n) if subset&(1<<i)):
                best=count
        return best

    @staticmethod
    def _trace(p,v,u,speed,inertia,a,b,count,valid,*,recovery_mask=None,recovery_distance=2.):
        trace=[];stalls=0
        length=math.hypot(*u);ux,uy=(u[0]/length,u[1]/length) if length else (0,0)
        px,py=p;vx,vy=v;gain=speed/30*(1-inertia)
        height,width=valid.shape
        recovery=None
        ix,iy=round(px),round(py)
        if (0<=ix<width and 0<=iy<height and not valid[iy,ix] and
                (recovery_mask is None or recovery_mask[iy,ix])):
            # An observed legal center can lie inside the conservative disk
            # margin. Without raw terrain allow only the original 2px rounding
            # recovery. With raw terrain, the center must stay on actual floor
            # and move monotonically toward a valid center within a bounded
            # two-dimensional margin (including diagonal concave corners).
            # Never jump, enter a raw obstacle or re-enter the margin after
            # reaching valid terrain. All points still get hazard scoring.
            reach=math.ceil(recovery_distance)
            x0,x1=max(0,ix-reach),min(width,ix+reach+1)
            y0,y1=max(0,iy-reach),min(height,iy+reach+1)
            ys,xs=np.nonzero(valid[y0:y1,x0:x1])
            if len(xs):
                distances=(xs+x0-px)**2+(ys+y0-py)**2
                nearest=int(np.argmin(distances))
                if distances[nearest]<=recovery_distance**2:
                    recovery=(float(xs[nearest]+x0),float(ys[nearest]+y0))
        for _ in range(count):
            oldx,oldy=vx,vy;vx=vx*inertia+ux*gain;vy=vy*inertia+uy*gain
            dx,dy=oldx*a+vx*b,oldy*a+vy*b
            gx,gy=px+dx,py+dy
            def clear(qx,qy):
                samples=max(1,math.ceil(math.hypot(qx-px,qy-py)/2))
                recovering=recovery is not None
                depth=math.dist((px,py),recovery) if recovering else 0.
                for j in range(samples+1):
                    sx,sy=px+(qx-px)*j/samples,py+(qy-py)*j/samples
                    x,y=round(sx),round(sy)
                    if not (0<=x<width and 0<=y<height):return False
                    if valid[y,x]:
                        recovering=False
                    elif (not recovering or math.dist((sx,sy),recovery)>depth+1e-7 or
                          recovery_mask is not None and not recovery_mask[y,x]):
                        return False
                return True
            if not clear(gx,gy):
                if abs(dx)>=abs(dy) and clear(gx,py):gy=py;vy=0
                elif clear(px,gy):gx=px;vx=0
                elif clear(gx,py):gy=py;vy=0
                else:
                    lo,hi=0.,1.
                    for _ in range(7):
                        mid=(lo+hi)*.5
                        if clear(px+dx*mid,py+dy*mid):lo=mid
                        else:hi=mid
                    gx,gy=px+dx*lo,py+dy*lo;vx=vy=0
                stalls+=1
            px,py=gx,gy;trace.append((px,py))
            ix,iy=round(px),round(py)
            if 0<=ix<width and 0<=iy<height and valid[iy,ix]:recovery=None
        return trace,(vx,vy),stalls

    def choose(self,start,valid,bodies,radius,speed,velocity,goal_cost,*,inertia=.8,
               position_a=0.,position_b=1.,retreat=None,previous=(0,0),frame=None,stand_off=200.,prefer_hold=False,allow_hold=False,safety_goal=None,path_goal_weight=0.,recovery_mask=None,immediate_goal=False,progress_cost=None,attack_approach=False,crowd_pressure=False,
               egress=None,egress_frame_offset=0,latency_guard_frames=4,kite=None):
        atlas=HazardAtlas(bodies,radius,40)
        horizon=24;segment=4;width=12
        root={'p':start,'v':velocity,'path':[],'controls':[],'hits':0,'first':999.,'exposure':0.,'geometry_hits':0,'geometry_first':999.,'geometry_exposure':0.,'guard_hits':0,'guard_first':999.,'warnings':0.,'minimum':999.,'comfort':0.,'obstruction':0.,'stalls':0,'steer':0.,'goal_integral':0.}
        egress_cache={}
        def kite_cost(node):
            if kite is None or not node['path']:return 0.
            value=kite.cost(node['path'][min(segment,len(node['path']))-1])
            if len(node['path'])>=horizon:value+=kite.cost(node['p'])*.25
            return math.floor(value*8)/8
        def egress_cost(node):
            if egress is None or not node['path']:return 0.
            position=node['path'][min(segment,len(node['path']))-1]
            key=(position,min(segment,len(node['path'])))
            if key not in egress_cache:
                egress_cache[key]=math.floor(egress.cost(position,egress_frame_offset+key[1])*8)/8
            value=egress_cache[key]
            if len(node['path'])>=horizon:
                key=(node['p'],len(node['path']))
                if key not in egress_cache:
                    egress_cache[key]=math.floor(egress.cost(node['p'],egress_frame_offset+key[1])*8)/8
                value+=egress_cache[key]*.5
            return value
        enemies=[b for b in bodies if b.kind=='enemy']
        enemy_indices=[i for i,b in enumerate(bodies) if b.kind=='enemy']
        enemy_radii=np.array([b.radius+radius for b in enemies])
        def spacing(node):
            if not enemies:return 0.
            if 'spacing' in node:return node['spacing']
            step=len(node['path'])
            clear=np.linalg.norm(atlas.positions[step,enemy_indices,:]-np.asarray(node['p']),axis=1)-enemy_radii
            active=(atlas.starts[enemy_indices]<=step/30)&(atlas.ends[enemy_indices]>=step/30)
            deficit=np.where(active,np.maximum(0,stand_off-clear),0)
            node['spacing']=math.floor(float(deficit.max())/8)
            return node['spacing']
        def collision_rank(node):
            contact=node['geometry_hits']>0;padded=node['hits']>0
            if egress is not None and crowd_pressure:
                # Never trade body/bullet collision for escape, or a fully
                # padded-safe route for a padded-unsafe one. If uncertainty is
                # already unavoidable, preserve the immediate guard first,
                # then avoid future closure before minimizing extra exposure.
                return (int(contact),-node['geometry_first'] if contact else 0,node['geometry_exposure'] if contact else 0,
                    int(padded),int(node['guard_hits']>0),-node['guard_first'] if node['guard_hits'] else 0)+((kite_cost(node),) if kite else ())+(
                    egress_cost(node),-node['first'] if padded else 0,node['exposure'] if padded else 0)
            return (int(contact),-node['geometry_first'] if contact else 0,node['geometry_exposure'] if contact else 0,
                    int(padded),-node['first'] if padded else 0,node['exposure'] if padded else 0)+((kite_cost(node),) if kite else ())
        early_retreat_cache={}
        def early_retreat(node):
            if not crowd_pressure or not retreat or not node['path']:return 0.
            position=node['path'][min(segment,len(node['path']))-1]
            if position not in early_retreat_cache:early_retreat_cache[position]=retreat.cost(position,segment/30,require_exit=True)
            return math.floor(early_retreat_cache[position]/4)
        def rank(node,terminal=False):
            safe=node['hits']==0
            if terminal and retreat and safe:
                if 'retreat_cost' not in node:node['retreat_cost']=retreat.cost(node['p'],horizon/30)
                extra=node['retreat_cost']
            else:extra=0
            common=collision_rank(node)+(node.get('deadend',0) if safe else 0,early_retreat(node))
            comfort=math.floor(node['comfort']/.5)
            warnings=math.floor(node['warnings']/4)
            progress=(progress_cost or goal_cost)(node['path'][min(segment,len(node['path']))-1]) if immediate_goal and node['path'] else 0
            tail=(round(safety_goal(node['p'])*2)/2 if safety_goal else 0,
                  -math.floor(min(40,node['minimum'])/8),
                  goal_cost(node['p'])+path_goal_weight*node['goal_integral']+.08*spacing(node)+.18*node['steer']+node['stalls']*2+node['obstruction']*.01)
            if attack_approach:
                return common+(warnings,math.floor(extra/4),node.get('exit_scarcity',0),progress,comfort)+tail
            return common+(comfort,warnings,math.floor(extra/4),node.get('exit_scarcity',0),progress)+tail
        def expand(parents,actions,base,count):
            nodes=[];paths=[];starts=[]
            for parent in parents:
                for u in actions:
                    path,vel,stalls=self._trace(parent['p'],parent['v'],u,speed,inertia,position_a,position_b,count,valid,
                        recovery_mask=recovery_mask,recovery_distance=math.sqrt(2)*(radius+2) if recovery_mask is not None else 2.)
                    old=parent['controls'][-1] if parent['controls'] else previous
                    node={**parent,'p':path[-1],'v':vel,'path':parent['path']+path,
                          'controls':parent['controls']+[u]*count,'stalls':parent['stalls']+stalls,
                          'steer':parent['steer']+math.dist(u,old)}
                    node.pop('spacing',None)
                    node.pop('retreat_cost',None)
                    nodes.append(node);paths.append(path);starts.append(parent['p'])
            metrics=atlas.measure(np.asarray(paths),np.asarray(starts),base,include_geometry=True,
                                  full_paths=np.asarray([n['path'] for n in nodes]),player_start=start)
            guard=None
            if base<latency_guard_frames:
                guard_count=min(count,latency_guard_frames-base)
                guard=(metrics if guard_count==count else atlas.measure(
                    np.asarray(paths)[:,:guard_count],np.asarray(starts),base,
                    full_paths=np.asarray([n['path'] for n in nodes])[:,:base+guard_count],player_start=start))
            for i,n in enumerate(nodes):
                n['hits']+=int(metrics[0][i]);n['first']=min(n['first'],float(metrics[1][i]))
                n['exposure']+=float(metrics[2][i]);n['warnings']+=float(metrics[3][i]);n['minimum']=min(n['minimum'],float(metrics[4][i]))
                n['comfort']+=float(metrics[5][i])
                n['obstruction']+=float(metrics[6][i])
                n['geometry_hits']+=int(metrics[7][i]);n['geometry_first']=min(n['geometry_first'],float(metrics[8][i]))
                n['geometry_exposure']+=float(metrics[9][i])
                if guard is not None:
                    n['guard_hits']+=int(guard[0][i]);n['guard_first']=min(n['guard_first'],float(guard[1][i]))
            # Same route endpoints and ray samples, evaluated together so each
            # scalar rank does not rebuild numpy arrays or sample rays in Python.
            if base<horizon and hasattr(goal_cost,'prepare'):
                goal_cost.prepare([n['p'] for n in nodes]+([n['path'][min(segment,len(n['path']))-1] for n in nodes] if immediate_goal else []))
            if kite is not None and base<horizon:
                kite.prepare([n['p'] for n in nodes]+[n['path'][min(segment,len(n['path']))-1] for n in nodes])
            # Terminal probes are used only for escape geometry; their attack
            # integrals are never ranked. Keep all probes, omit unused scoring.
            if path_goal_weight and base<horizon:
                # Endpoint-only goals can repeatedly postpone a short move to
                # the end of the horizon. Clear-room navigation also values
                # progress along the route; collision tiers remain unchanged.
                for n,start_point in zip(nodes,starts):
                    n['goal_integral']+=(goal_cost(start_point)+goal_cost(n['p']))*.5*count/horizon
            if enemies and base<horizon:
                step=base+count
                points=np.asarray([n['p'] for n in nodes])
                delta=atlas.positions[step,enemy_indices,:][None,:,:]-points[:,None,:]
                clear=np.hypot(delta[:,:,0],delta[:,:,1])-enemy_radii
                active=(atlas.starts[enemy_indices]<=step/30)&(atlas.ends[enemy_indices]>=step/30)
                deficits=np.where(active[None,:],np.maximum(0,stand_off-clear),0).max(axis=1)
                for n,deficit in zip(nodes,deficits):n['spacing']=math.floor(float(deficit)/8)
            return nodes
        beam=[root];evaluations=0
        for base in range(0,horizon,segment):
            candidates=expand(beam,self.DIRECTIONS,base,segment);evaluations+=len(candidates)
            candidates.sort(key=rank);beam=[];occupied=set()
            if egress is not None and crowd_pressure or kite is not None:
                first_inputs=set()
                for n in candidates:
                    first=n['controls'][0]
                    if n['geometry_hits']==0 and first not in first_inputs:
                        first_inputs.add(first)
                        key=(round(n['p'][0]/12),round(n['p'][1]/12),first)
                        occupied.add(key);beam.append(n)
            for n in candidates:
                key=(round(n['p'][0]/12),round(n['p'][1]/12),n['controls'][0])
                if key not in occupied:
                    occupied.add(key);beam.append(n)
                    if len(beam)>=width:break
        # Preserve every held-input route even if a prefix looked unfavorable.
        held_routes=expand([root],self.DIRECTIONS,0,horizon)
        beam.extend(held_routes)
        elapsed=frame-self.last_frame if frame is not None and self.last_frame is not None else 0
        if 0<elapsed<len(self.continuation):
            controls=self.continuation[elapsed:]+[self.continuation[-1]]*elapsed
            continued=root
            # Batch equal controls rather than invoking geometry once per frame.
            base=0
            while base<len(controls):
                end=base+1
                while end<len(controls) and controls[end]==controls[base]:end+=1
                continued=expand([continued],[controls[base]],base,end-base)[0];base=end
            beam.append(continued)
        leading=min(beam,key=rank)
        # Only routes tied on collision tiers need terminal escape evaluation.
        tied=[n for n in beam if collision_rank(n)==collision_rank(leading)]
        # Evaluate all tied routes together; their exit probes retain the same
        # parent order and all eight directions, including candidate pursuit.
        exit_candidates=expand(tied,self.DIRECTIONS[1:],horizon,8)
        for index,n in enumerate(tied):
            exit_nodes=exit_candidates[index*8:(index+1)*8]
            safe_exits=[e for e in exit_nodes if e['hits']==n['hits'] and math.dist(n['p'],e['p'])>=4]
            exits=self.escape_directions(safe_exits,n['p'])
            n['exit_input_count']=len(safe_exits)
            n['deadend']=int(exits==0)
            n['exit_scarcity']=max(0,3-exits)
            n['clear_exits']=self.escape_directions(
                [e for e in safe_exits if e['comfort']-n['comfort']<.5],n['p'])
            n['exit_scarcity']+=max(0,2-n['clear_exits'])
        best=min(beam,key=lambda n:rank(n,True))
        hold=held_routes[0];hold_reason=None
        if allow_hold and hold['hits']==0 and hold.get('deadend',1)==0 and hold.get('clear_exits',0)>=2:
            # Include coasting inertia; zero keys does not imply zero velocity.
            settled=expand([hold],[(0,0)],horizon,16)[0]
            quiet=(settled['hits']==0 and settled['comfort']<=.25 and settled['warnings']<1.)
            hold_rank=rank(hold,True);best_rank=rank(best,True)
            retreat_offset=(12 if attack_approach else 13) if egress is not None and crowd_pressure else 9 if attack_approach else 10
            if kite is not None:retreat_offset+=1
            retreat_ok=hold_rank[retreat_offset]<=best_rank[retreat_offset]
            comparable=retreat_ok and goal_cost(hold['p'])<=goal_cost(best['p'])+1.
            if quiet and retreat_ok and hold_rank[:retreat_offset]<=best_rank[:retreat_offset] and (prefer_hold or comparable):
                best=hold;hold_reason='remote_attack_safe_here' if prefer_hold else 'safe_stationary_firing'
        self.continuation=best['controls'];self.last_frame=frame
        first_progress_position=best['path'][min(segment,len(best['path']))-1] if best['path'] else start
        start_progress_cost=(progress_cost or goal_cost)(start) if immediate_goal else None
        first_segment_progress_cost=(progress_cost or goal_cost)(first_progress_position) if immediate_goal else None
        self.last_report={'backend':'external_numpy_beam','segments':6,'beam_width':width,'evaluations':evaluations,
                          'hits':best['hits'],'first_collision_frame':best['first'],'warnings':best['warnings'],
                          'geometry_hits':best['geometry_hits'],'geometry_first_collision_frame':best['geometry_first'],
                          'latency_envelope_hits':best['hits'],'collision_policy':('geometry_then_guarded_kiting_then_egress' if kite is not None and egress is not None and crowd_pressure else
                              'geometry_then_latency_envelope_then_kiting' if kite is not None else
                              'geometry_then_guarded_egress_then_future_envelope' if egress is not None and crowd_pressure else 'geometry_then_latency_envelope'),
                          'latency_guard_frames':latency_guard_frames,'guard_hits':best['guard_hits'],
                          'timed_egress':egress.metadata if egress else None,'egress_cost':egress_cost(best) if egress else None,
                          'escape_direction_diversity':bool(egress is not None and crowd_pressure or kite is not None),
                          'kite_cost':kite_cost(best) if kite is not None else None,
                          'crowd_pressure':crowd_pressure,'early_retreat_cost':early_retreat(best),
                          'candidate_pursuit_bodies':len(atlas.chasers),
                          'comfort_exposure':best['comfort'],'stand_off_clearance':stand_off,
                          'spacing_deficit_bucket':spacing(best),'minimum_clearance':best['minimum'],
                          'exit_scarcity':best.get('exit_scarcity'), 'policy':'speed_aware_kiting_then_attack' if kite is not None else 'safety_spacing_then_attack',
                          'distinct_clear_exits':best.get('clear_exits'),
                          'safe_exit_inputs':best.get('exit_input_count'),
                          'safe_region_guidance':getattr(safety_goal,'metadata',None),
                          'safe_region_cost':safety_goal(best['p']) if safety_goal else None,
                          'start_progress_cost':start_progress_cost,
                          'first_segment_progress_cost':first_segment_progress_cost,
                          'hold_reason':hold_reason,'stationary_future_frames':40 if hold_reason else None,
                          'selected_goal_cost':goal_cost(best['p']),'start_goal_cost':goal_cost(start),
                          'candidate_summary':[{'move':n['controls'][0],'hits':n['hits'],'comfort':n['comfort'],
                              'geometry_hits':n['geometry_hits'],
                              'guard_hits':n['guard_hits'],'egress_cost':egress_cost(n) if egress else None,
                              'kite_cost':kite_cost(n) if kite is not None else None,
                              'warnings':n['warnings'],'obstruction':n['obstruction'],'spacing':spacing(n),
                              'goal':goal_cost(n['p']),'exit_scarcity':n.get('exit_scarcity'),
                              'endpoint':n['p']} for n in held_routes],
                          'predicted_safe':best['hits']==0,'routes_preserved':len(self.DIRECTIONS)}
        self.last_report['immediate_progress_frames']=segment if immediate_goal else 0
        self.last_report['progress_policy']='reachable_navigation' if immediate_goal and progress_cost else 'attack_cost'
        return best['controls'][0],best['path'],best['exposure']+best['warnings']*.1
