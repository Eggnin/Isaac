"""Safety-first movement and aiming from external state snapshots."""
from __future__ import annotations

from dataclasses import dataclass, replace
import math

import numpy as np
from shot_geometry import body_blocks_segment


@dataclass(frozen=True)
class Body:
    id: int
    x: float
    y: float
    vx: float
    vy: float
    radius: float
    kind: str = "enemy"
    start_after: float = 0.0
    end_after: float = math.inf
    end: tuple[float,float] | None = None
    end_velocity: tuple[float,float] | None = None
    ring_radius: float | None = None
    ring_growth: float = 0.0
    trajectory: tuple[tuple[float,float], ...] | None = None
    angular_velocity: float = 0.
    safety_buffer: float = 0.
    latency_padding: float = 0.
    pursuit_speed: float = 0.
    pursuit_turn: float = math.pi
    pursuit_inertia: float = 0.
    pursuit_gain: float = 0.
    pursuit_old_weight: float = 0.


@dataclass
class Decision:
    move: tuple[int, int]
    fire: str | None
    target: int | None
    path: list[tuple[float, float]]
    risk: float


_DIRECTIONS = ((0, 0), (1, 0), (-1, 0), (0, 1), (0, -1),
               (1, 1), (1, -1), (-1, 1), (-1, -1))
_CARDINAL = {"right": (1, 0), "left": (-1, 0), "down": (0, 1), "up": (0, -1)}


class Planner:
    def __init__(self) -> None:
        self._target_id: int | None = None
        self._blocked_shot_approach_target: int | None = None
        self._last_move = (0, 0)
        self._walkable_source: np.ndarray | None = None
        self._valid_radius: float | None = None
        self._valid_cache: np.ndarray | None = None
        self._retreat_terrain_cache={}
        from firing_navigation import FiringNavigation
        self._firing_nav=FiringNavigation()
        self._fine_firing_nav=None
        from engine_egress import TimedEgress
        self._egress=TimedEgress()
        from engine_kiting import KiteController
        self._kiting=KiteController()
        from engine_search import BeamSearch
        self._search=BeamSearch()

    def reset(self) -> None:
        self._target_id = None
        self._blocked_shot_approach_target = None
        self._last_move = (0, 0)
        self._walkable_source = None
        self._valid_radius = None
        self._valid_cache = None
        self._retreat_terrain_cache={}
        from firing_navigation import FiringNavigation
        self._firing_nav=FiringNavigation()
        self._fine_firing_nav=None
        self._egress.reset()
        self._kiting.reset()
        self._search.reset()

    def release_control(self) -> None:
        """Discard unsent control history while retaining valid terrain graphs."""
        self._last_move=(0,0)
        report=self._search.last_report
        self._search.reset()
        self._search.last_report={**report,'control_applied':False,'control_rejection':'decision_deadline_exceeded'}

    def close(self):
        self._egress.close()

    def _valid_centers(self, walkable: np.ndarray, radius: float) -> np.ndarray:
        """Return pixel centers where the player's full disk fits on walkable pixels."""
        if self._walkable_source is walkable and self._valid_radius == radius and self._valid_cache is not None:
            return self._valid_cache
        h, w = walkable.shape
        valid = np.ones((h, w), dtype=bool)
        r = max(0, int(math.ceil(radius)))
        rr = radius * radius
        # Every disk offset outside these borders is invalid. Mark the border
        # once, then intersect overlapping views rather than allocate a full
        # shifted room mask for every one of the disk's offsets.
        extent=max(0,int(math.floor(radius)))
        if extent:
            valid[:extent,:]=False;valid[max(0,h-extent):,:]=False
            valid[:,:extent]=False;valid[:,max(0,w-extent):]=False
        for dy in range(-r, r + 1):
            for dx in range(-r, r + 1):
                if dx * dx + dy * dy > rr:
                    continue
                y0, y1 = max(0, -dy), min(h, h - dy)
                x0, x1 = max(0, -dx), min(w, w - dx)
                if y0 < y1 and x0 < x1:
                    valid[y0:y1,x0:x1] &= walkable[y0+dy:y1+dy,x0+dx:x1+dx]
        self._walkable_source = walkable
        self._valid_radius = radius
        self._valid_cache = valid
        return valid

    @staticmethod
    def _mask_at(mask: np.ndarray, x: float, y: float) -> bool:
        ix, iy = int(round(x)), int(round(y))
        return 0 <= iy < mask.shape[0] and 0 <= ix < mask.shape[1] and bool(mask[iy, ix])

    @classmethod
    def _trace(cls, start: tuple[float, float], move: tuple[int, int], speed: float,
               duration: float, valid: np.ndarray, step_time: float = 0.04
               ) -> list[tuple[float, float]] | None:
        """Sweep the horizon; when blocked, hold at the last safe point for remaining time."""
        if not cls._mask_at(valid, *start):
            return None
        x0, y0 = start
        length = math.hypot(*move)
        ux, uy = ((move[0] / length, move[1] / length) if length else (0.0, 0.0))
        count = max(1, int(math.ceil(duration / step_time)))
        points: list[tuple[float, float]] = []
        prev = start
        blocked = False
        for i in range(1, count + 1):
            t = duration * i / count
            proposed = (x0 + ux * speed * t, y0 + uy * speed * t) if not blocked else prev
            distance = math.hypot(proposed[0] - prev[0], proposed[1] - prev[1])
            samples = max(1, int(math.ceil(distance / 2.0)))
            last_safe = prev
            for j in range(1, samples + 1):
                f = j / samples
                sample = (prev[0] + (proposed[0] - prev[0]) * f,
                          prev[1] + (proposed[1] - prev[1]) * f)
                if not cls._mask_at(valid, *sample):
                    blocked = True
                    break
                last_safe = sample
            prev = last_safe
            points.append(prev)
        if length and math.dist(start,points[-1]) < max(1.0,speed*0.015):
            return None
        return points

    @staticmethod
    def _risk(points: list[tuple[float, float]], start: tuple[float, float], move: tuple[int, int],
              bodies: list[Body], player_radius: float, duration: float) -> float:
        if not points or not bodies:
            return 0.0
        positions = np.asarray(points, dtype=float)
        times = np.arange(1, len(points) + 1, dtype=float) * (duration / len(points))
        body_positions = np.asarray([(b.x, b.y) for b in bodies], dtype=float)
        velocities = np.asarray([(b.vx, b.vy) for b in bodies], dtype=float)
        radii = np.asarray([player_radius + max(0.0, b.radius) + (12.0 if b.kind == "projectile" else 0.0)
                            for b in bodies], dtype=float)
        weights = np.asarray([2.5 if b.kind == "projectile" else .35 if b.kind=='warning' else 1.0 for b in bodies], dtype=float)
        delta = positions[:, None, :] - (body_positions[None, :, :] + times[:, None, None] * velocities[None, :, :])
        distances=np.linalg.norm(delta,axis=2)
        begins=np.array([b.start_after for b in bodies])[None,:]
        ends=np.array([b.end_after for b in bodies])[None,:]
        active=(times[:,None]>=begins)&(times[:,None]<=ends)
        # Sweep relative motion over each interval: a fast bullet may cross the
        # player between samples even when both endpoints are far away.
        circle_indices=[i for i,b in enumerate(bodies) if b.end is None and b.ring_radius is None]
        if circle_indices:
            step=duration/len(points)
            previous=np.vstack((np.asarray(start,dtype=float),positions[:-1]))
            relative_start=previous[:,None,:]-(body_positions[None,circle_indices,:]+
                            (times-step)[:,None,None]*velocities[None,circle_indices,:])
            motion=delta[:,circle_indices,:]-relative_start
            lo=np.clip((begins[:,circle_indices]-(times-step)[:,None])/step,0,1)
            hi=np.clip((ends[:,circle_indices]-(times-step)[:,None])/step,0,1)
            fraction=np.clip(-np.sum(relative_start*motion,axis=2)/
                             np.maximum(1e-12,np.sum(motion*motion,axis=2)),lo,hi)
            distances[:,circle_indices]=np.linalg.norm(relative_start+fraction[:,:,None]*motion,axis=2)
            active[:,circle_indices]=((times[:,None]>=begins[:,circle_indices]) &
                                      ((times-step)[:,None]<=ends[:,circle_indices]))
        line_indices=[i for i,b in enumerate(bodies) if b.end is not None]
        if line_indices:
            segment=np.array([[bodies[i].end[0]-bodies[i].x,bodies[i].end[1]-bodies[i].y] for i in line_indices])
            segment_velocity=np.array([[(bodies[i].end_velocity or (bodies[i].vx,bodies[i].vy))[0]-bodies[i].vx,
                                        (bodies[i].end_velocity or (bodies[i].vx,bodies[i].vy))[1]-bodies[i].vy]
                                       for i in line_indices])
            segment=segment[None,:,:]+times[:,None,None]*segment_velocity[None,:,:]
            rel=delta[:,line_indices,:]
            ratio=np.clip(np.sum(rel*segment,axis=2)/np.maximum(1e-12,np.sum(segment*segment,axis=2)),0,1)
            distances[:,line_indices]=np.linalg.norm(rel-ratio[:,:,None]*segment,axis=2)
        ring_indices=[i for i,b in enumerate(bodies) if b.ring_radius is not None]
        if ring_indices:
            ring=np.array([bodies[i].ring_radius for i in ring_indices])[None,:]
            growth=np.array([bodies[i].ring_growth for i in ring_indices])[None,:]
            distances[:,ring_indices]=np.abs(distances[:,ring_indices]-np.maximum(0,ring+times[:,None]*growth))
        clearance = distances - radii[None, :]
        collision = np.maximum(0.0, 120.0 + np.minimum(100.0, -clearance * 3.0))
        near = np.where((clearance > 0) & (clearance < 72.0), ((72.0 - clearance) / 72.0) ** 2 * 5.0, 0.0)
        values = np.where(clearance <= 0, collision, near) * weights[None, :]
        values*=active
        return float(values.sum() / len(points))

    @staticmethod
    def _future_bodies(bodies: list[Body], seconds: float) -> list[Body]:
        return [replace(b,x=b.x+b.vx*seconds,y=b.y+b.vy*seconds,
                        start_after=max(0.,b.start_after-seconds),end_after=b.end_after-seconds,
                        end=(b.end[0]+(b.end_velocity or (b.vx,b.vy))[0]*seconds,
                             b.end[1]+(b.end_velocity or (b.vx,b.vy))[1]*seconds) if b.end else None,
                        ring_radius=max(0.,b.ring_radius+b.ring_growth*seconds) if b.ring_radius is not None else None)
                for b in bodies if b.end_after>=seconds]

    @staticmethod
    def _intercept(player: tuple[float, float], body: Body, projectile_speed: float
                   ) -> tuple[float, float] | None:
        rx, ry = body.x - player[0], body.y - player[1]
        vx, vy = body.vx, body.vy
        a = vx * vx + vy * vy - projectile_speed * projectile_speed
        b = 2.0 * (rx * vx + ry * vy)
        c = rx * rx + ry * ry
        if abs(a) < 1e-9:
            t = -c / b if abs(b) > 1e-9 else -1.0
        else:
            disc = b * b - 4.0 * a * c
            if disc < 0:
                return None
            roots = [t for t in ((-b - math.sqrt(disc)) / (2 * a), (-b + math.sqrt(disc)) / (2 * a)) if t > 0]
            t = min(roots) if roots else -1.0
        if t <= 0:
            return None
        return body.x + body.vx * t, body.y + body.vy * t

    @classmethod
    def _line_clear(cls, origin: tuple[float, float], target: tuple[float, float], valid: np.ndarray) -> bool:
        dx, dy = target[0] - origin[0], target[1] - origin[1]
        distance = math.hypot(dx, dy)
        n = max(1, int(math.ceil(distance / 3.0)))
        return all(cls._mask_at(valid, origin[0] + dx * i / n, origin[1] + dy * i / n)
                   for i in range(1, n + 1))

    @classmethod
    def _shooting_position_cost(cls, position: tuple[float, float], target: Body,
                                projectile_speed: float, attack_range: float) -> float:
        aim = cls._intercept(position, target, projectile_speed)
        if aim is None:
            return math.inf
        dx, dy = aim[0] - position[0], aim[1] - position[1]
        distance = math.hypot(dx, dy)
        if distance <= attack_range and (min(abs(dx), abs(dy)) <= max(4.0, target.radius + 6.0)):
            return 0.0
        # Distance to the nearest cardinal firing line, including approach to range.
        x_goal = aim[0] - math.copysign(attack_range, dx) if dx else aim[0]
        y_goal = aim[1] - math.copysign(attack_range, dy) if dy else aim[1]
        horizontal = math.hypot(position[0] - x_goal, position[1] - aim[1])
        vertical = math.hypot(position[0] - aim[0], position[1] - y_goal)
        return min(horizontal, vertical)

    def _navigation_field(self, valid, shot_mask, target, attack_range, source_offset,shot_blockers=()):
        """Single-emitter compatibility entry, using the production terrain graph."""
        self._firing_nav.prepare(valid)
        seeds=self._firing_nav.seeds(target,[{'mask':shot_mask,'range':attack_range,
                                            'offset':source_offset,'blockers':shot_blockers}])
        return self._firing_nav.field(seeds)

    @staticmethod
    def _nav_cost(field,position,valid=None):
        x,y=round((position[0]-10)/20),round((position[1]-10)/20)
        px,py=position
        if valid is not None and not (0<=round(px)<valid.shape[1] and
                0<=round(py)<valid.shape[0] and valid[round(py),round(px)]):return math.inf
        best=math.inf
        # A legal pixel position may round onto a blocked coarse cell beside
        # a rock. Connect to nearby reachable nodes instead of declaring the
        # entire firing route unreachable (and accidentally dropping its cost).
        for row in range(max(0,y-1),min(field.shape[0],y+2)):
            for col in range(max(0,x-1),min(field.shape[1],x+2)):
                cost=field[row,col]
                if not math.isfinite(cost):continue
                node=(col*20+10,row*20+10)
                if valid is not None and (node[0]>=valid.shape[1] or node[1]>=valid.shape[0]):continue
                distance=math.dist(position,node);candidate=cost+distance
                if candidate>=best:continue
                if valid is not None:
                    # Both endpoints lie in bounds; interpolation stays in the
                    # image. Avoid repeated class dispatch/bounds checks here.
                    count=max(1,math.ceil(distance/3))
                    dx=(node[0]-px)/count;dy=(node[1]-py)/count
                    if not all(valid[round(py+dy*i),round(px+dx*i)] for i in range(1,count+1)):continue
                best=candidate
        return best

    def decide(self, player: tuple[float, float], bodies: list[Body], walkable: np.ndarray,
               dt: float, speed: float = 130., player_radius: float = 9.,
               projectile_speed: float = 330., attack_range: float = 280.,
               shot_walkable: np.ndarray | None = None,
               shooter_origin: tuple[float,float] | None = None,
               target_info: dict | None = None, cursor_mode: bool = False,
               motion: dict | None = None, frame: int | None = None,
               aim_origin: tuple[float,float] | None = None, attack_cost=None,
               stationary_attack_ready: bool = True,shot_blockers=(),
               navigation_shots=None,attack_cost_batch=None,terrain_goals=(),dodge_only=False) -> Decision:
        if not isinstance(walkable, np.ndarray) or walkable.ndim != 2 or walkable.dtype != np.bool_:
            raise ValueError("walkable must be a 2D bool numpy array")
        if dt <= 0 or speed < 0 or player_radius < 0 or projectile_speed <= 0 or attack_range < 0:
            raise ValueError("dt/projectile_speed must be positive and other distances non-negative")
        start = (float(player[0]), float(player[1]))
        enemies = [] if dodge_only else [b for b in bodies if b.kind in ('enemy','target')]
        threats = [b for b in bodies if b.kind in ("enemy", "projectile",'warning','hazard','obstacle')]
        if not threats and not enemies:
            self._target_id = None
            self._last_move = (0, 0)
            return Decision((0, 0), None, None, [start], 0.0)

        valid = self._valid_centers(walkable, player_radius)
        shot_valid = shot_walkable if shot_walkable is not None else valid
        origin = shooter_origin if shooter_origin is not None else start
        source_offset = (origin[0]-start[0],origin[1]-start[1])
        duration = max(0.6, min(0.9, dt * max(1, math.ceil(0.8 / dt))))

        # Keep a target while present. Far enemies remain valid approach goals.
        info=target_info or {}
        if not dodge_only:self._firing_nav.prepare(valid)
        nav=self._firing_nav
        policies=navigation_shots if navigation_shots is not None else [
            {'mask':shot_valid,'range':attack_range,'offset':source_offset,'blockers':shot_blockers}]
        seeds={};routes={};target_scores={}
        if enemies and not cursor_mode:
            start_field=nav.from_start(start).ravel()
            for body in enemies:
                lanes=nav.seeds(body,policies);seeds[body.id]=lanes
                routes[body.id]=float(start_field[lanes].min()) if len(lanes) else math.inf
            if routes and not any(math.isfinite(v) for v in routes.values()) and any('channel' in p for p in policies):
                from firing_navigation import FiringNavigation
                if self._fine_firing_nav is None:self._fine_firing_nav=FiringNavigation(step=10)
                fine=self._fine_firing_nav;fine.prepare(valid);field=fine.from_start(start).ravel()
                fine_seeds={body.id:fine.seeds(body,policies) for body in enemies}
                fine_routes={ident:float(field[lanes].min()) if len(lanes) else math.inf for ident,lanes in fine_seeds.items()}
                if any(math.isfinite(v) for v in fine_routes.values()):nav=fine;seeds=fine_seeds;routes=fine_routes
        def target_cost(body):
            detail=info.get(body.id,{})
            distance=math.dist(origin,(body.x,body.y))
            route=routes.get(body.id)
            reachable=route is None or math.isfinite(route)
            if route is not None and reachable:distance=distance*.25+route
            hp=detail.get('health',math.inf)
            incoming=detail.get('incoming_damage',0.)
            damage=detail.get('player_damage',0.)
            if hp>0 and incoming>=hp and not detail.get('incoming_damage_estimated',False):
                distance+=600 # Avoid wasting another shot on an already lethal flight.
            elif hp>0 and hp-incoming<=damage:
                distance-=100 # Finish a target that still needs one actual shot.
            distance-=min(100.,detail.get('priority',0.)*8.)
            if body.id==self._target_id:
                distance-=35
            target_scores[body.id]={'target':body.id,'reachable':reachable,'route_distance':route if reachable else None,'score':distance}
            return (not reachable,distance)
        previous_target=self._target_id
        target=min(enemies,key=target_cost) if enemies else None
        grid_objective=None
        if target and routes and not any(math.isfinite(distance) for distance in routes.values()) and terrain_goals:
            from engine_grid_attack import barrier_firing_goal
            barrier=barrier_firing_goal(nav,start,policies,terrain_goals,enemies)
            if barrier:
                _,target,lanes,grid_objective,distance=barrier
                seeds[target.id]=lanes;routes[target.id]=distance
        if target is None or target.id!=previous_target:
            self._blocked_shot_approach_target=None
        self._target_id = target.id if target else None

        fire = None
        blocked_current_lane = False
        if target is not None:
            aim = self._intercept(origin, target, projectile_speed)
            if cursor_mode:
                aim=(target.x,target.y)
            if aim is not None and math.hypot(aim[0] - origin[0], aim[1] - origin[1]) <= attack_range:
                if cursor_mode:
                    dx,dy=aim[0]-origin[0],aim[1]-origin[1]
                    if max(abs(dx),abs(dy))>max(3.,target.radius*.4):
                        fire=('right' if dx>0 else 'left') if abs(dx)>=abs(dy) else ('down' if dy>0 else 'up')
                for direction, (ux, uy) in _CARDINAL.items():
                    if cursor_mode:
                        break
                    along = (aim[0] - origin[0]) * ux + (aim[1] - origin[1]) * uy
                    cross = abs((aim[0] - origin[0]) * uy - (aim[1] - origin[1]) * ux)
                    if 0 < along <= attack_range and cross <= max(4.0, target.radius + 6.0):
                        aligned_policies=[p for p in policies if math.dist(origin,aim)<=p['range']]
                        if any((p['mask'] is None or self._line_clear(origin,aim,p['mask'])) and
                               not body_blocks_segment(origin,aim,p['blockers']) for p in aligned_policies):
                            fire = direction
                            break
                        blocked_current_lane|=any(p['mask'] is not None and
                            not self._line_clear(origin,aim,p['mask']) for p in aligned_policies)

        # The original mod searched turning routes in segments, rather than
        # committing to one direction for the entire horizon. The held-route
        # probes are also preserved inside BeamSearch to avoid pruning escapes.
        from engine_retreat import EngineRetreat
        motion=motion or {}
        navigation=(nav.field(seeds[target.id])
                    if target and not cursor_mode else None)
        reachable_shot_lane=bool(target and len(seeds.get(target.id,())) and
            routes.get(target.id,math.inf)<math.inf and not cursor_mode)
        if not target or fire is not None or stationary_attack_ready or not reachable_shot_lane:
            self._blocked_shot_approach_target=None
        elif blocked_current_lane:
            self._blocked_shot_approach_target=target.id
        blocked_shot_approach=bool(target and reachable_shot_lane and
            self._blocked_shot_approach_target==target.id and not stationary_attack_ready)
        # A missed cardinal line stalls just like a wall-blocked shot. Once
        # actual aiming reports no useful shot, approach a reachable lane
        # before optimizing soft comfort. Collision, warnings and exits keep
        # their existing higher priority in the search.
        attack_approach=bool(reachable_shot_lane and not stationary_attack_ready)
        finite_navigation=navigation[np.isfinite(navigation)] if navigation is not None else np.array([])
        unreachable_cost=(float(finite_navigation.max())*.025+32.) if finite_navigation.size else 32.
        goal_cache={};progress_cache={};goal_cache_hits=0
        def prepare_goals(positions):
            missing=list(dict.fromkeys((p[0],p[1]) for p in positions if (p[0],p[1]) not in goal_cache))
            if not missing or target is None or cursor_mode:return
            navs=nav.costs(navigation,missing) if navigation is not None else None
            attacks=attack_cost_batch(missing,target.id) if attack_cost_batch is not None and grid_objective is None else None
            for index,position in enumerate(missing):
                origin_end=(position[0]+source_offset[0],position[1]+source_offset[1])
                cost=self._shooting_position_cost(origin_end,target,projectile_speed,attack_range)
                cost=cost*.03 if math.isfinite(cost) else 8.
                if navs is not None:cost+=navs[index]*.025 if math.isfinite(navs[index]) else unreachable_cost
                if attacks is not None:cost+=float(attacks[index])
                elif attack_cost is not None and grid_objective is None:cost+=attack_cost(position,target.id)
                goal_cache[position]=cost
                progress_cache[position]=float(navs[index]) if navs is not None and math.isfinite(navs[index]) else unreachable_cost*40
        def goal_cost(position):
            nonlocal goal_cache_hits
            key=(position[0],position[1])
            if key in goal_cache:
                goal_cache_hits+=1
                return goal_cache[key]
            if target is None or cursor_mode:return 0.
            prepare_goals([position])
            return goal_cache[key]
        goal_cost.prepare=prepare_goals
        def progress_cost(position):
            key=(position[0],position[1])
            if key not in progress_cache:prepare_goals([position])
            return progress_cache.get(key,0.)
        travel_speed=max(speed,math.hypot(*motion.get('velocity',(0.,0.)))*30)*(motion.get('position_a',0.)+motion.get('position_b',1.))
        actual_speed=math.hypot(*motion.get('velocity',(0.,0.)))*30*(motion.get('position_a',0.)+motion.get('position_b',1.))
        kite,kite_status=self._kiting.plan(valid,threats,start,travel_speed,actual_speed,frame or 0,
            radius=player_radius,speed_sample_eligible=bool(motion.get('player_fit_eligible') and not motion.get('damage_cooldown',0)))
        contact_ids={b.id for b in threats if b.kind=='enemy' and
            math.dist(start,(b.x,b.y))-b.radius-player_radius<max(180.,travel_speed*.9)}
        egress=(self._egress.advise(valid,threats,travel_speed,frame or 0,player_radius)
                if len(contact_ids)>=2 else None)
        retreat=(None if len(contact_ids)>=2 else EngineRetreat.prepare(walkable,threats,player_radius,travel_speed,
            margin=2.5,valid_centers=valid,terrain_cache=self._retreat_terrain_cache))
        pressure_ids={b.id for b in threats if b.kind in ('enemy','hazard') and
            math.dist(start,(b.x,b.y))-b.radius-player_radius<max(120.,speed*.65)}
        cooldown=motion.get('damage_cooldown',0)
        injury_cooldown=int(cooldown) if isinstance(cooldown,(int,float)) and math.isfinite(cooldown) else 0
        injury_evasion=injury_cooldown>0
        # Use the temporary post-hit immunity window to favor verified escape room.
        committed_pressure=any(d['entity'] in pressure_ids for d in motion.get('committed_dashes',[]))
        crowd_pressure=len(pressure_ids)>=2 or any(b.pursuit_speed>0 for b in threats) or injury_evasion or committed_pressure
        stand_off=max(64.,min(360.,attack_range*.82-player_radius-(target.radius if target else 15.)))
        if injury_evasion:stand_off=min(360.,stand_off+48.)
        best,path,risk=self._search.choose(start,valid,threats,player_radius,speed,
                    motion.get('velocity',(0.,0.)),goal_cost,
                    inertia=motion.get('inertia',.8),position_a=motion.get('position_a',0.),
                    position_b=motion.get('position_b',1.),retreat=retreat,previous=self._last_move,frame=frame,
                    stand_off=stand_off,
                    prefer_hold=bool(motion.get('remote_targeted') and (fire is not None or cursor_mode)),
                    allow_hold=kite is None and stationary_attack_ready and (fire is not None or cursor_mode),
                    path_goal_weight=1. if target is not None and (fire is None or not stationary_attack_ready) else 0.,
                    immediate_goal=bool(target is not None and not cursor_mode and not stationary_attack_ready and
                        0<=round(start[1])<valid.shape[0] and 0<=round(start[0])<valid.shape[1] and
                        valid[round(start[1]),round(start[0])]),
                    progress_cost=progress_cost,
                    attack_approach=attack_approach,
                    kite=kite,
                    crowd_pressure=crowd_pressure,
                    egress=egress,egress_frame_offset=max(0,(frame or 0)-egress.frame) if egress else 0,
                    latency_guard_frames=min(8,max(4,math.ceil(motion.get('local_delay_budget_ms',0)*.03))),
                    safety_goal=retreat.safety_guidance(start) if retreat else None,recovery_mask=walkable)
        self._last_move = best
        self._search.last_report.update(goal_evaluations=len(goal_cache),goal_cache_hits=goal_cache_hits)
        self._search.last_report['kiting']=kite_status
        self._search.last_report['target_routes']=list(target_scores.values())
        self._search.last_report['injury_evasion_active']=injury_evasion
        self._search.last_report['injury_cooldown_frames']=injury_cooldown
        self._search.last_report['committed_dash_pressure']=committed_pressure
        self._search.last_report['grid_objective']=grid_objective
        self._search.last_report['firing_navigation_step']=nav.step
        self._search.last_report['terrain_resolution']=('approach_observed_brown_poop' if grid_objective else
            'no_reachable_breakable_barrier' if routes and not any(math.isfinite(v) for v in routes.values()) else None)
        self._search.last_report['blocked_shot_approach']=blocked_shot_approach
        self._search.last_report['attack_approach']=attack_approach
        self._search.last_report['attack_approach_reason']='no_predicted_shot' if attack_approach else None
        nav_start=float(nav.costs(navigation,[start])[0]) if navigation is not None else None
        self._search.last_report.update(
            firing_navigation_status=('not_used' if nav_start is None else 'reachable'
                                      if math.isfinite(nav_start) else 'no_reachable_firing_lane'),
            firing_navigation_start=nav_start if nav_start is not None and math.isfinite(nav_start) else None)
        return Decision(best, fire, target.id if target and grid_objective is None else None, path, float(risk))
