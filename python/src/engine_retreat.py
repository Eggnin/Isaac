"""Longer-horizon safe-space reservation on the read-only room grid.

This mirrors retreat.lua's advisory layered connectivity field. Exact near-term
collision checks remain the Planner's job; uncertain future topology never
turns into a movement ban.
"""
from __future__ import annotations

from dataclasses import dataclass
import math
import heapq

import numpy as np
from engine_search import body_positions,line_ends


def _blocked_batch(starts,ends,times,bodies,radius):
    """Same sampled geometry, avoiding XY temporaries and sqrt for circles."""
    if not len(starts) or not bodies:return np.zeros(len(starts),bool)
    starts=np.asarray(starts);ends=np.asarray(ends);times=np.asarray(times)
    circles=[b for b in bodies if b.end is None and b.ring_radius is None]
    complex_bodies=[b for b in bodies if b.end is not None or b.ring_radius is not None]
    blocked=np.zeros(len(starts),bool)
    if circles:
        centers=np.array([body_positions(b,times) for b in circles]).transpose(1,0,2)
        dx=(ends[:,0]-starts[:,0])[None,:,None]
        dy=(ends[:,1]-starts[:,1])[None,:,None]
        ax=starts[None,:,None,0]-centers[:,None,:,0]
        ay=starts[None,:,None,1]-centers[:,None,:,1]
        u=np.clip(-(ax*dx+ay*dy)/np.maximum(1e-12,dx*dx+dy*dy),0,1)
        x=ax+u*dx;y=ay+u*dy
        radii=np.array([radius+b.radius+b.latency_padding for b in circles])
        active=(times[:,None]>=np.array([b.start_after for b in circles])[None,:])&(
                times[:,None]<=np.array([b.end_after for b in circles])[None,:])
        blocked=((x*x+y*y<=radii[None,None,:]**2)&active[:,None,:]).any(axis=(0,2))
    remaining=np.flatnonzero(~blocked)
    if complex_bodies and len(remaining):
        blocked[remaining]=_blocked_batch_reference(starts[remaining],ends[remaining],times,complex_bodies,radius)
    return blocked


def _blocked_batch_reference(starts,ends,times,bodies,radius):
    """Evaluate every future grid edge and hazard together, without caps."""
    if not len(starts) or not bodies:return np.zeros(len(starts),bool)
    starts=np.asarray(starts);ends=np.asarray(ends);times=np.asarray(times)
    centers=np.array([body_positions(h,times) for h in bodies]).transpose(1,0,2)
    a=starts[None,:,None,:]-centers[:,None,:,:]
    b=ends[None,:,None,:]-centers[:,None,:,:]
    segment=b-a
    f=np.clip(-np.sum(a*segment,axis=-1)/np.maximum(1e-12,np.sum(segment*segment,axis=-1)),0,1)
    dist=np.linalg.norm(a+f[:,:,:,None]*segment,axis=-1)
    for i,h in enumerate(bodies):
        if h.ring_radius is not None:
            ring=np.maximum(0,h.ring_radius+h.ring_growth*times)[:,None]
            far=np.maximum(np.linalg.norm(a[:,:,i,:],axis=-1),np.linalg.norm(b[:,:,i,:],axis=-1))
            dist[:,:,i]=np.maximum(0,np.maximum(dist[:,:,i]-ring,ring-far))
        elif h.end is not None:
            ev=h.end_velocity or (h.vx,h.vy)
            endpoint=line_ends(h,times)
            c=np.zeros_like(a[:,:,i,:]);d=endpoint[:,None,:]-centers[:,None,i,:]
            x,y=a[:,:,i,:],b[:,:,i,:]
            def cross(x,y):return x[...,0]*y[...,1]-x[...,1]*y[...,0]
            def point_segment(p,q,r):
                dr=r-q;f=np.clip(np.sum((p-q)*dr,axis=-1)/np.maximum(1e-12,np.sum(dr*dr,axis=-1)),0,1)
                return np.linalg.norm(p-q-f[:,:,None]*dr,axis=-1)
            v=y-x;w=d-c;den=cross(v,w)
            ts=cross(c-x,w)/np.where(abs(den)>1e-12,den,1.)
            us=cross(c-x,v)/np.where(abs(den)>1e-12,den,1.)
            hit=(abs(den)>1e-12)&(ts>=0)&(ts<=1)&(us>=0)&(us<=1)
            gap=np.minimum.reduce([point_segment(x,c,d),point_segment(y,c,d),point_segment(c,x,y),point_segment(d,x,y)])
            dist[:,:,i]=np.where(hit,0,gap)
    active=(times[:,None]>=np.array([h.start_after for h in bodies])[None,:]) & (times[:,None]<=np.array([h.end_after for h in bodies])[None,:])
    radii=np.array([radius+h.radius+getattr(h,'latency_padding',0.) for h in bodies])
    return ((dist<=radii[None,None,:])&active[:,None,:]).any(axis=(0,2))


def _point_segment(p, a, b):
    dx, dy = b[0] - a[0], b[1] - a[1]
    q = dx * dx + dy * dy
    t = 0.0 if q <= 1e-12 else max(0.0, min(1.0, ((p[0]-a[0])*dx + (p[1]-a[1])*dy) / q))
    return math.hypot(p[0] - (a[0] + dx*t), p[1] - (a[1] + dy*t))


def _segments(a, b, c, d):
    def orient(p, q, r):
        return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
    o1, o2, o3, o4 = orient(a,b,c), orient(a,b,d), orient(c,d,a), orient(c,d,b)
    if (max(min(a[0],b[0]),min(c[0],d[0]))<=min(max(a[0],b[0]),max(c[0],d[0])) and
        max(min(a[1],b[1]),min(c[1],d[1]))<=min(max(a[1],b[1]),max(c[1],d[1])) and
        (o1 <= 0 <= o2 or o2 <= 0 <= o1) and (o3 <= 0 <= o4 or o4 <= 0 <= o3)):
        return 0.0
    return min(_point_segment(a,c,d), _point_segment(b,c,d),
               _point_segment(c,a,b), _point_segment(d,a,b))


def _body_value(body, name, default=None):
    return body.get(name, default) if isinstance(body, dict) else getattr(body, name, default)


def _body_active(body, seconds):
    return (_body_value(body, "start_after", 0.0) <= seconds <=
            _body_value(body, "end_after", math.inf))


def _hazard_blocks(body, p, q, seconds, radius):
    if not _body_active(body, seconds):
        return False
    x, y = _body_value(body, "x", 0.0), _body_value(body, "y", 0.0)
    vx, vy = _body_value(body, "vx", 0.0), _body_value(body, "vy", 0.0)
    center = (x + vx * seconds, y + vy * seconds)
    padding = radius + max(0.0, _body_value(body, "radius", 0.0))
    ring = _body_value(body, "ring_radius")
    if ring is not None:
        ring = max(0.0, ring + _body_value(body, "ring_growth", 0.0) * seconds)
        # Relative segment to ring: the radial function's extrema are safely
        # approximated by endpoints and midpoint at the coarse retreat layer.
        distances = [math.dist(p, center), math.dist(q, center), math.dist(((p[0]+q[0])/2,(p[1]+q[1])/2), center)]
        return min(abs(d-ring) for d in distances) <= padding
    end = _body_value(body, "end")
    if end is not None:
        ev = _body_value(body, "end_velocity") or (vx, vy)
        a = center
        b = (end[0] + ev[0] * seconds, end[1] + ev[1] * seconds)
        return _segments(p, q, a, b) <= padding
    return _point_segment(center, p, q) <= padding


@dataclass
class RetreatField:
    horizon: float
    _nodes: dict
    _depth: list
    _space: list
    _capacity: list
    _layers: list
    _origin: tuple[float, float]
    _step_px: int
    _reserve: int
    _travel_speed: float
    _base_time: float
    _player_radius: float
    _margin: float
    _layer_step: float
    _valid: object = None
    _pressure: object = None

    def safety_guidance(self,start):
        """Route toward a future roomy region only under nearby pressure.

        This is a directional preference, never a replacement collision test.
        Every hazard stays in both the short and long-horizon checks.
        """
        if not self._pressure:return None
        threatened=_blocked_batch(np.array([start]),np.array([start]),(0.,.3,.6,.9),
                                  self._pressure,self._player_radius+32.)
        if not threatened[0]:return None
        seeds=[i for i in self._nodes if self._depth[0].get(i,0)>=3 and self._space[0].get(i,0)>=6
               and not self._layers[0]['blocked'].get(i,True)]
        if not seeds:return None
        distances={i:0. for i in seeds};heap=[(0.,i) for i in seeds];heapq.heapify(heap)
        while heap:
            cost,index=heapq.heappop(heap)
            if distances[index]!=cost:continue
            row,col=index
            for dr,dc in ((-1,0),(1,0),(0,-1),(0,1)):
                other=(row+dr,col+dc);edge=tuple(sorted((index,other)))
                if other not in self._nodes or self._layers[0]['blocked'].get(other,True) or edge in self._layers[0]['edges']:continue
                new=cost+self._step_px
                if new<distances.get(other,math.inf):
                    distances[other]=new;heapq.heappush(heap,(new,other))
        def guidance(position):
            col=round((position[0]-self._origin[0])/self._step_px)
            row=round((position[1]-self._origin[1])/self._step_px)
            index=(row,col)
            # Disconnected or blocked positions get no invented shortcut
            # through a wall; the normal collision/escape tiers choose exits.
            if index not in distances:return 32.
            best=distances[index]+math.dist(position,self._nodes[index])
            for dr,dc in ((-1,0),(1,0),(0,-1),(0,1)):
                other=(row+dr,col+dc);edge=tuple(sorted((index,other)))
                if other in distances and edge not in self._layers[0]['edges']:
                    best=min(best,distances[other]+math.dist(position,self._nodes[other]))
            return min(32.,best/self._step_px)
        guidance.metadata={'roomy_nodes':len(seeds),'reachable_nodes':len(distances),'active':True}
        return guidance

    def cost(self, position, elapsed: float = 0.0, *, require_exit=False) -> float:
        """Advisory penalty for ending where future room to escape is scarce."""
        if isinstance(position, dict):
            p = (float(position.get("x", 0)), float(position.get("y", 0)))
        else:
            p = (float(position[0]), float(position[1]))
        layer = 0
        col = round((p[0] - self._origin[0]) / self._step_px)
        row = round((p[1] - self._origin[1]) / self._step_px)
        candidates = []
        connected=False
        reach = max(29.0, self._travel_speed * max(0.0, self._base_time - elapsed))
        for dy in (-1, 0, 1):
            for dx in (-1, 0, 1):
                index = (row + dy, col + dx)
                node = self._nodes.get(index)
                if node is None or math.dist(p, node) > reach:
                    continue
                if self._valid is not None:
                    count=max(1,math.ceil(math.dist(p,node)/2))
                    xs=np.rint(np.linspace(p[0],node[0],count+1)).astype(int)
                    ys=np.rint(np.linspace(p[1],node[1],count+1)).astype(int)
                    if not (((xs>=0)&(xs<self._valid.shape[1])&(ys>=0)&(ys<self._valid.shape[0])).all() and self._valid[ys,xs].all()):continue
                connected=True
                if self._layers[layer]["blocked"].get(index):
                    continue
                candidates.append(index)
        if candidates and self._pressure:
            # A safe future node can still require crossing a beam to reach it.
            ends=np.array([self._nodes[i] for i in candidates])
            starts=np.broadcast_to(np.asarray(p),ends.shape)
            times=(max(0.,elapsed),(max(0.,elapsed)+self._base_time)/2,self._base_time)
            blocked=_blocked_batch(starts,ends,times,self._pressure,self._player_radius+self._margin)
            candidates=[i for i,hit in zip(candidates,blocked) if not hit]
        if not candidates:
            # A pixel-valid pocket that cannot connect to the retreat graph
            # has no verified escape. Zero made it look better than a roomy
            # connected region and could attract a pressured player into it.
            return (len(self._layers)+1)*self._reserve if connected or require_exit else 0.
        best = max(self._depth[layer].get(i, 0) * self._reserve + self._space[layer].get(i, 0)
                   for i in candidates)
        max_score = (len(self._layers) + 1) * self._reserve
        value = max(0.0, max_score - best)
        # When in contact range, nudge away from narrow cul-de-sacs. This only
        # ranks safe endpoints; it never rejects a route or overrides collision.
        local_capacity = min(self._capacity[layer].get(i, self._reserve) for i in candidates)
        if local_capacity < 13:
            value += (13 - local_capacity) * .25
        return value


class EngineRetreat:
    """Build a four-layer route-space field from walkability and all hazards."""

    ORIGIN = (40.0, 120.0)
    GRID = 40

    @staticmethod
    def prepare(walkable: np.ndarray, bodies, player_radius: float, speed: float,
                *, origin=ORIGIN, horizon_frames: int = 24, escape_frames: int = 8,
                margin: float = 8.0, valid_centers=None, terrain_cache=None) -> RetreatField | None:
        """Prepare future-safe connectivity; ``speed`` is pixels per second.

        ``bodies`` accepts Planner.Body or dictionaries with the same geometry.
        Threat counts are not capped. Returns ``None`` where no grid topology is
        available, so callers can simply omit the advisory penalty.
        """
        if not isinstance(walkable, np.ndarray) or walkable.ndim != 2:
            return None
        bodies=[h for h in bodies if _body_value(h,'kind') not in ('warning','obstacle')]
        if not bodies:return None
        directions = ((-1,0),(1,0),(0,-1),(0,1))
        cached=terrain_cache.get('topology') if terrain_cache is not None else None
        if (cached and cached[0] is walkable and cached[1:3]==(player_radius,origin)):
            nodes,keys,coordinates,edges,invalid_edges,edge_starts,edge_ends=cached[3]
        else:
            height, width = walkable.shape
            gw = max(1, math.ceil((width - 1 - origin[0]) / 40))
            gh = max(1, math.ceil((height - 1 - origin[1]) / 40))
            nodes = {}
            for row in range(gh):
                y = int(round(origin[1] + row * 40))
                if not 0 <= y < height:
                    continue
                for col in range(gw):
                    x = int(round(origin[0] + col * 40))
                    if not 0 <= x < width or not walkable[y, x]:
                        continue
                    r = max(0, int(math.ceil(player_radius)))
                    samples = ((0, 0), (r, 0), (-r, 0), (0, r), (0, -r))
                    if all(0 <= x+dx < width and 0 <= y+dy < height and walkable[y+dy, x+dx]
                           for dx, dy in samples):
                        nodes[(row, col)] = (float(x), float(y))
            if not nodes:
                return None
            def edge_clear(a, b):
                distance = math.dist(a, b)
                samples = max(1, math.ceil(distance / 4))
                for i in range(samples + 1):
                    t = i / samples
                    x, y = int(round(a[0] + (b[0]-a[0])*t)), int(round(a[1] + (b[1]-a[1])*t))
                    r = max(0, int(math.ceil(player_radius)))
                    for dx, dy in ((0,0),(r,0),(-r,0),(0,r),(0,-r)):
                        if not (0 <= x+dx < width and 0 <= y+dy < height and walkable[y+dy, x+dx]):
                            return False
                return True

            keys=list(nodes)
            coordinates=np.array([nodes[k] for k in keys])
            edges=[];invalid_edges=set()
            for key,p in nodes.items():
                row,col=key
                for dr,dc in directions:
                    other=(row+dr,col+dc)
                    if other in nodes and key<other:
                        edge=(key,other)
                        if edge_clear(p,nodes[other]):edges.append(edge)
                        else:invalid_edges.add(edge)
            edge_starts=np.array([nodes[a] for a,b in edges]);edge_ends=np.array([nodes[b] for a,b in edges])
            if terrain_cache is not None:
                terrain_cache['topology']=(walkable,player_radius,origin,(nodes,keys,coordinates,edges,invalid_edges,edge_starts,edge_ends))
        travel_speed = max(1.0, speed)
        base = max(1, horizon_frames + escape_frames) / 30.0
        step = max(8 / 30, math.ceil(40 * 30 / travel_speed) / 30)
        layers_n, reserve = 4, 12
        layers = []
        capacity = []
        depth = []
        space = []

        pressure=[h for h in bodies if _body_value(h,'kind')!='warning']
        for layer in range(layers_n + 1):
            time_center = base + layer * step
            t_samples = (max(0.0, time_center-step), (max(0.0, time_center-step)+time_center)/2, time_center)
            blocked=dict(zip(keys,map(bool,_blocked_batch(coordinates,coordinates,t_samples,pressure,player_radius+margin))))
            edge_hits=_blocked_batch(edge_starts,edge_ends,t_samples,pressure,player_radius+margin)
            blocked_edges=invalid_edges|{edge for edge,hit in zip(edges,edge_hits) if hit}
            layers.append({"blocked": blocked, "edges": blocked_edges})
            cap = {}
            seen = set()
            for start in nodes:
                if blocked[start] or start in seen:
                    continue
                queue, seen = [start], seen | {start}
                branches = 0
                for current in queue:
                    degree = 0
                    row, col = current
                    for dr, dc in directions:
                        nxt = (row+dr, col+dc)
                        edge = tuple(sorted((current, nxt)))
                        if nxt in nodes and not blocked.get(nxt, True) and edge not in blocked_edges:
                            degree += 1
                            if nxt not in seen:
                                seen.add(nxt)
                                queue.append(nxt)
                    if degree >= 3:
                        branches += 1
                size = min(reserve, len(queue), 2 + branches * 2)
                for key in queue:
                    cap[key] = size
            capacity.append(cap)
            depth.append({})
            space.append({})

        for layer in range(layers_n, -1, -1):
            following = layer + 1 if layer < layers_n else None
            for key in nodes:
                if layers[layer]["blocked"][key]:
                    continue
                if following is None:
                    depth[layer][key] = 1
                    space[layer][key] = capacity[layer].get(key, 0)
                    continue
                best_d = depth[following].get(key, 0)
                best_s = space[following].get(key, 0)
                row, col = key
                for dr, dc in directions:
                    nxt = (row+dr, col+dc)
                    edge = tuple(sorted((key, nxt)))
                    if (nxt in nodes and not layers[following]["blocked"].get(nxt, True)
                            and not layers[layer]["blocked"].get(nxt, True)
                            and edge not in layers[layer]["edges"]
                            and edge not in layers[following]["edges"]):
                        d, s = depth[following].get(nxt, 0), space[following].get(nxt, 0)
                        if d > best_d or (d == best_d and s > best_s):
                            best_d, best_s = d, s
                depth[layer][key] = 1 + best_d
                space[layer][key] = min(capacity[layer].get(key, 0), best_s) if best_d else capacity[layer].get(key, 0)
        return RetreatField(base + layers_n * step, nodes, depth, space, capacity, layers,
                            tuple(origin), 40, reserve, travel_speed, base, player_radius, margin, step,valid_centers,pressure)
