"""Motion fitting and conservative enemy-motion hints for read-only snapshots.

Vectors passed to ``observe`` use engine units per physical frame. Returned
``speed`` is also per frame; multiply velocity parameters by 30 for the current
external Planner's pixels-per-second movement units.
"""
from __future__ import annotations

from dataclasses import replace
import math
from typing import Any

from planner import Body
from engine_targets import player_targets, observed_target
from engine_behaviors import active_pursuit_profile, npc_state_frame


def _xy(value, default=(0.0, 0.0)) -> tuple[float, float]:
    if isinstance(value, dict):
        x, y = value.get("x", default[0]), value.get("y", default[1])
    elif isinstance(value, (list, tuple)) and len(value) >= 2:
        x, y = value[0], value[1]
    else:
        return default
    try:
        x, y = float(x), float(y)
        if math.isfinite(x) and math.isfinite(y):
            return x, y
    except (TypeError, ValueError):
        pass
    return default


def _unit(x: float, y: float) -> tuple[float, float]:
    length = math.hypot(x, y)
    return (x / length, y / length) if length > 1e-9 else (0.0, 0.0)


class EngineMotion:
    """Fit the player's inertia and expose per-entity motion/pounce hints.

    ``observe`` is deliberately separate from ``update`` so callers can pass
    the actual keyboard vector that was sent to the game. No input is inferred
    from visual position. ``update`` converts read-only entity velocities and
    returns uncertainty/model data plus extra telegraph/contact Bodies.
    """

    FRIENDLY = 1 << 29
    CHARMED = 1 << 8

    def __init__(self, base_inertia: float = .8) -> None:
        self.base_inertia = base_inertia
        self.reset()

    def reset(self) -> None:
        self.inertia = self.base_inertia
        self.speed = None
        self.ready = False
        self.rows: list[tuple[tuple[float, float], tuple[float, float], tuple[float, float]]] = []
        self.previous_velocity = None
        self.previous_frame = None
        self.nominal_speed = None
        self.position_rows = []
        self.position_previous = None
        self.position_frame = None
        self.position_a, self.position_b = 0.0, 1.0
        self.position_ready = False
        self.position_stable = 0
        self.position_bootstrap = []
        self._entities: dict[Any, dict] = {}
        self._room = None

    def reset_room(self) -> None:
        # Clear trajectories and fits that depend on this room, retaining only
        # already observed position/velocity units for the same local player.
        # Never connect a displacement sample across a doorway teleport.
        calibration=(self.position_a,self.position_b,self.position_ready,
                     self.position_stable,self.nominal_speed)
        self.reset()
        if calibration[2] or calibration[3]>=3:
            (self.position_a,self.position_b,self.position_ready,
             self.position_stable,self.nominal_speed)=calibration

    @staticmethod
    def _input(value) -> tuple[float, float] | None:
        if value is None:
            return None
        x, y = _xy(value)
        n = math.hypot(x, y)
        if n > 1:
            x, y = x / n, y / n
        return x, y

    def observe(self, frame: int, velocity, input_vector, nominal_speed: float,
                *, eligible: bool = True, position=None) -> dict:
        """Update the bounded 48-sample inertia fit and position integration fit.

        The least-squares fit follows motion.lua: ``v' = inertia*v +
        speed*(1-inertia)*input``. Fits require 12 usable samples and are
        rejected when residual, inertia, or free-speed bounds fail.
        """
        nominal_speed = max(0.0, float(nominal_speed))
        if self.nominal_speed is None or abs(nominal_speed - self.nominal_speed) > .05:
            self._reset_fit()
            self.nominal_speed = nominal_speed
        if not eligible:
            # A collision/pause is not free motion. Break both sample chains
            # so the following free frame cannot bridge across that impulse.
            self.previous_velocity=self.previous_frame=None
            self.position_previous=self.position_frame=None
            return self.parameters()
        vx, vy = _xy(velocity)
        current = (vx, vy)
        previous = self.previous_velocity
        consecutive = self.previous_frame is not None and frame == self.previous_frame + 1
        self.previous_velocity, self.previous_frame = current, frame
        u = self._input(input_vector)
        residual = None
        if previous is not None and consecutive and eligible and u is not None and math.hypot(*current) <= nominal_speed * 1.8 + 3:
            speed = self.speed or nominal_speed
            predicted = (previous[0] * self.inertia + u[0] * speed * (1 - self.inertia),
                         previous[1] * self.inertia + u[1] * speed * (1 - self.inertia))
            residual = math.dist(current, predicted)
            if residual <= max(1.5 if self.ready else 2.5, nominal_speed * (.35 if self.ready else .65)):
                self.rows.append((previous, u, current))
                self.rows = self.rows[-48:]
                self._fit()
        if position is not None:
            self._observe_position(_xy(position), current, frame, eligible)
        return self.parameters()

    def _reset_fit(self) -> None:
        self.inertia, self.speed, self.ready = self.base_inertia, None, False
        self.rows = []
        self.position_rows = []
        self.position_a, self.position_b, self.position_ready = 0.0, 1.0, False
        self.position_bootstrap = []
        self.position_stable = 0
        self.previous_velocity = self.position_previous = None
        self.previous_frame = self.position_frame = None

    def _fit(self) -> None:
        rows = self.rows
        if len(rows) < 12:
            return
        vv = vu = uu = vy = uy = yy = 0.0
        for v, u, nxt in rows:
            vv += v[0] ** 2 + v[1] ** 2
            vu += v[0] * u[0] + v[1] * u[1]
            uu += u[0] ** 2 + u[1] ** 2
            vy += v[0] * nxt[0] + v[1] * nxt[1]
            uy += u[0] * nxt[0] + u[1] * nxt[1]
            yy += nxt[0] ** 2 + nxt[1] ** 2
        det = vv * uu - vu * vu
        if det < 1e-5 or det / max(1e-6, vv * uu) < .0005:
            return
        inertia = (vy * uu - uy * vu) / det
        gain = (uy * vv - vy * vu) / det
        if not .55 <= inertia <= .95 or gain <= 0:
            return
        free_speed = gain / (1 - inertia)
        nominal = self.nominal_speed or 0
        if not nominal * .4 <= free_speed <= nominal * 1.6:
            return
        error = max(0.0, yy - 2 * inertia * vy - 2 * gain * uy + inertia * inertia * vv
                    + 2 * inertia * gain * vu + gain * gain * uu)
        rms = math.sqrt(error / (2 * len(rows)))
        if rms > .7:
            return
        if self.ready:
            self.inertia = self.inertia * .85 + inertia * .15
            self.speed = self.speed * .85 + free_speed * .15
        else:
            self.inertia, self.speed = inertia, free_speed
        self.ready = True

    def _observe_position(self, p, velocity, frame, eligible):
        old, old_frame = self.position_previous, self.position_frame
        gap=frame-old_frame if old_frame is not None else 0
        self.position_previous, self.position_frame = (p, velocity), frame
        if old is None or not 1<=gap<=6 or not eligible:
            return
        delta = ((p[0] - old[0][0])/gap, (p[1] - old[0][1])/gap)
        magnitude = max(math.hypot(*velocity), math.hypot(*old[1]))
        if magnitude < .3 or math.hypot(*delta) > magnitude * 3 + 2:
            return
        mean = ((old[1][0] + velocity[0]) * .5, (old[1][1] + velocity[1]) * .5)
        if not self.position_ready and self.position_stable<3 and gap<=3:
            square=mean[0]**2+mean[1]**2
            if square>.1:
                scale=(delta[0]*mean[0]+delta[1]*mean[1])/square
                residual=math.dist(delta,(mean[0]*scale,mean[1]*scale))
                if .65<=scale<=2.5 and residual<.35:
                    self.position_bootstrap=(self.position_bootstrap+[scale])[-7:]
                    values=sorted(self.position_bootstrap);median=values[len(values)//2]
                    inliers=[x for x in values if abs(x-median)<=median*.2]
                    if len(inliers)>=3:
                        scale=sorted(inliers)[len(inliers)//2]
                        self.position_a=self.position_b=scale*.5;self.position_stable=3
        if math.dist(velocity, old[1]) < magnitude * .08:
            scale = (delta[0] * mean[0] + delta[1] * mean[1]) / max(1e-6, mean[0] ** 2 + mean[1] ** 2)
            projected = (mean[0] * scale, mean[1] * scale)
            if .65 <= scale <= 2.5 and math.dist(delta, projected) < .35:
                self.position_stable += 1
                if not self.position_ready and self.position_stable >= 3:
                    self.position_a = self.position_b = scale * .5
        # Acceleration integration needs adjacent frames. Across a gap only
        # the stable, collinear unit estimate above is observed, not a/b fits.
        if gap!=1:return
        self.position_rows.append((old[1], velocity, delta))
        self.position_rows = self.position_rows[-48:]
        if len(self.position_rows) < 12:
            return
        # Two-component least squares: displacement = a*v_before+b*v_after.
        aa = ab = bb = ad = bd = dd = 0.0
        for a, b, d in self.position_rows:
            aa += a[0] ** 2 + a[1] ** 2
            ab += a[0] * b[0] + a[1] * b[1]
            bb += b[0] ** 2 + b[1] ** 2
            ad += a[0] * d[0] + a[1] * d[1]
            bd += b[0] * d[0] + b[1] * d[1]
            dd += d[0] ** 2 + d[1] ** 2
        det = aa * bb - ab * ab
        if det < 1e-6 or det / max(1e-6, aa * bb) < .0001:
            return
        a, b = (ad * bb - bd * ab) / det, (bd * aa - ad * ab) / det
        if a < -1e-6 or b < -1e-6 or not .65 <= a + b <= 2.5:
            return
        error = max(0.0, dd - 2 * a * ad - 2 * b * bd + a*a*aa + 2*a*b*ab + b*b*bb)
        if math.sqrt(error / (2 * len(self.position_rows))) <= .5:
            self.position_a, self.position_b, self.position_ready = max(0, a), max(0, b), True

    def parameters(self) -> dict:
        return {"inertia": self.inertia, "speed_per_frame": self.speed,
                "speed_per_second": None if self.speed is None else self.speed * 30,
                "position_bootstrap_samples":len(self.position_bootstrap),
                "ready": self.ready,
                "position_a": self.position_a,
                "position_b": self.position_b,
                "position_ready": self.position_ready,
                "fit_samples": len(self.rows)}

    @staticmethod
    def _enum(snapshot: dict, name: str):
        enums = snapshot.get("enums") or {}
        table = enums.get("EntityType", {}) if isinstance(enums, dict) else {}
        return table.get(name) if isinstance(table, dict) else None

    @staticmethod
    def _entity_id(e: dict):
        return e.get("address") or e.get("seed") or e.get("index") or 0

    @staticmethod
    def _free_player_motion(snapshot,player,input_vector):
        if player.get('grid_colliding',False):return False
        # Room-edge clamping does not always set Entity.CollidesWithGrid.
        # Reject a fit sample if its commanded next step is terrain-limited.
        if not isinstance(snapshot.get('grid_cells'),list) or not snapshot.get('grid_width') or not snapshot.get('grid_height'):
            return True
        direction=EngineMotion._input(input_vector)
        if direction is None or math.hypot(*direction)<.01:
            direction=_unit(*_xy((player.get('vx',0),player.get('vy',0))))
        px=float(player.get('x',0))+direction[0]*2
        py=float(player.get('y',0))+direction[1]*2
        radius=float(player.get('radius',0) or 0)
        gw,gh=snapshot['grid_width'],snapshot['grid_height']
        if px-radius<60.5 or py-radius<140.5 or px+radius>579.5+max(0,gw-15)*40 or py+radius>419.5+max(0,gh-9)*40:
            return False
        flying=bool((player.get('stats') or {}).get('can_fly'))
        for cell in snapshot['grid_cells']:
            collision=cell.get('collision',0)
            if collision not in ((4,) if flying else (1,2,3,4)):continue
            index=cell.get('index',-1)
            if index<0:continue
            cx,cy=40+(index%gw)*40,120+(index//gw)*40
            dx,dy=max(0,abs(px-cx)-20),max(0,abs(py-cy)-20)
            if dx*dx+dy*dy<=(radius+.5)**2:return False
        return True

    def update(self, snapshot: dict, player: dict, *, input_vector=None,
               nominal_speed: float | None = None, eligible: bool = True) -> dict:
        """Observe player motion and model NPC turns, jumps, and charge lanes.

        ``hazards`` contains only extra hints; merge it with EngineWorld's
        bodies before passing the result to Planner. ``models`` provides fitted
        acceleration/turn/uncertainty for consumers that support richer bodies.
        """
        room = snapshot.get("room")
        if self._room is not None and room != self._room:
            self.reset_room()
        self._room = room
        stats = player.get("stats") or {}
        if nominal_speed is None:
            stat = stats.get("move_speed")
            nominal_speed = float(stat) * 5.4 if isinstance(stat, (int, float)) else max(.1, math.hypot(*_xy((player.get("vx", 0), player.get("vy", 0)))))
        frame = int(snapshot.get("frame", 0) or 0)
        pv = _xy((player.get("vx", 0), player.get("vy", 0)))
        eligible=bool(eligible and self._free_player_motion(snapshot,player,input_vector))
        motion = self.observe(frame, pv, input_vector, float(nominal_speed), eligible=eligible,
                              position=_xy((player.get("x", 0), player.get("y", 0))))
        motion['player_fit_eligible']=eligible
        motion['player_grid_colliding']=bool(player.get('grid_colliding',False))
        models, hazards, live = {}, [], set()
        committed_dashes=[]
        players=player_targets(snapshot)
        player_pos = _xy((player.get("x", 0), player.get("y", 0)))
        width = max(1, int(snapshot.get("grid_width") or 15))
        height = max(1, int(snapshot.get("grid_height") or 9))
        room_left, room_top = 60.0, 140.0
        room_right, room_bottom = 580.0 + max(0, width - 15) * 40, 420.0 + max(0, height - 9) * 40
        for e in snapshot.get("entities") or []:
            typ = int(e.get("type", -1))
            if (typ < 10 and typ != 9) or typ == 1000 or e.get("dead"):
                continue
            flags = int(e.get("flags", 0) or 0)
            if flags & (self.FRIENDLY | self.CHARMED):
                continue
            ident = self._entity_id(e)
            live.add(ident)
            vx, vy = _xy((e.get("vx", 0), e.get("vy", 0)))
            raw_speed = math.hypot(vx, vy)
            previous = self._entities.get(ident)
            identity=(e.get('seed'),typ,e.get('variant',0))
            if previous and previous.get('identity')!=identity:previous=None
            scale=previous['scale'] if previous else 1.
            scale_samples=previous.get('scale_samples',0) if previous else 0
            gap = frame - previous["frame"] if previous else 0
            pos = _xy((e.get("x", 0), e.get("y", 0)))
            if (previous and 0 < gap <= 6 and raw_speed > .5 and
                    math.dist((vx,vy),previous['v'])<=max(.1,raw_speed*.08)):
                dx, dy = pos[0] - previous["p"][0], pos[1] - previous["p"][1]
                mean_v = ((vx + previous["v"][0]) * .5, (vy + previous["v"][1]) * .5)
                square = mean_v[0]**2 + mean_v[1]**2
                if square > 1e-6:
                    ratio = (dx * mean_v[0] + dy * mean_v[1]) / square / gap
                    residual=math.dist((dx,dy),(mean_v[0]*ratio*gap,mean_v[1]*ratio*gap))
                    if .65 <= ratio <= 2.5 and residual<=max(.5,math.hypot(dx,dy)*.08):
                        scale=ratio;scale_samples+=1
            profile=active_pursuit_profile(snapshot,e)
            applied_scale=(profile.position_scale if profile and profile.position_scale is not None
                           else scale if scale_samples>=2 else 1.)
            v = (vx * applied_scale * 30, vy * applied_scale * 30)
            ax = ay = turn = 0.0
            abrupt = False
            if previous and 0 < gap <= 6:
                # Changing our unit estimate is not a physical acceleration.
                old_scale=applied_scale
                old_v = (previous["v"][0] * old_scale * 30,
                         previous["v"][1] * old_scale * 30)
                ax, ay = (v[0] - old_v[0]) / (gap / 30), (v[1] - old_v[1]) / (gap / 30)
                old_speed = math.hypot(*old_v)
                new_speed = math.hypot(*v)
                abrupt = math.dist(old_v, v) > max(45.0, old_speed * .65)
                if old_speed > 15 and new_speed > 15:
                    cross = old_v[0] * v[1] - old_v[1] * v[0]
                    dot = old_v[0] * v[0] + old_v[1] * v[1]
                    turn = max(-7.5, min(7.5, math.atan2(cross, dot) / (gap / 30)))
            self._entities[ident] = {"frame": frame, "p": pos, "v": (vx, vy), "scale": scale,
                                     'scale_samples':scale_samples,'identity':identity}
            uncertainty = (min(24.0,max(4.0,math.hypot(ax, ay) * .003)) if abrupt else 0.0)
            animation = str(e.get("animation", "")).lower()
            intended=observed_target(e,players)
            models[ident] = {"velocity": v, "acceleration": (ax, ay), "turn_per_second": turn,
                             "uncertainty": uncertainty, "abrupt_velocity_change": abrupt,
                             "position_scale": applied_scale, "animation": animation,
                             "position_scale_source":'native_profile' if profile and profile.position_scale is not None
                                 else 'observed' if scale_samples>=2 else 'default',
                             'scale_observed':scale_samples>=2,'scale_samples':scale_samples,
                             "target_player":intended.get('address') if intended else None}
            if profile and math.hypot(*v)>1.:
                models[ident]['pursuit_profile']=profile.id
                models[ident]['pursuit_inertia']=profile.inertia
                models[ident]['pursuit_gain_per_frame']=profile.gain_per_frame
            damage = float(e.get("collision_damage", 0) or 0)
            if damage <= 0:
                continue
            r = max(1.0, float(e.get("radius", 5) or 5))
            body_id = int(ident) if str(ident).isdigit() else hash(str(ident)) & 0x7FFFFFFF
            # Native hard-room evidence: a regular spider exposes its queued
            # dash endpoint in target_position while still Idle, before Walk.
            # Reserve that observed destination instead of extrapolating its
            # nearly-zero idle velocity through the impending dash.
            if typ in (self._enum(snapshot,'ENTITY_SPIDER'),self._enum(snapshot,'ENTITY_BIGSPIDER'),self._enum(snapshot,'ENTITY_SPIDER_L2'),self._enum(snapshot,'ENTITY_TICKING_SPIDER')) and int(e.get('variant',0))==0:
                destination=_xy(e.get('target_position'))
                if destination!=(0.,0.) and animation in ('idle','walk'):
                    counter=npc_state_frame(e)
                    remaining=max(0,counter)
                    # An observed committed destination is reserved now.
                    # Do not re-delay a reservation when Idle becomes Walk:
                    # native StateFrame may decrement twice per observation,
                    # and negative tail ticks used to wrap to uint32.
                    lifetime=min(24,max(8,remaining+8))/30 if animation=='walk' else 24/30
                    hazards.append(Body(body_id,*destination,0.,0.,r+8,'hazard',
                                        end_after=lifetime))
                    hazards.append(Body(body_id,*pos,0.,0.,r+8,'warning',end=destination,
                                        end_after=lifetime))
                    committed_dashes.append({'entity':body_id,'destination':destination,
                        'phase':animation,'state_frame':counter,'raw_state_frame':e.get('state_frame'),
                        'reservation_start':0.,'reservation_lifetime':lifetime})
            if typ==self._enum(snapshot,'ENTITY_MIGRAINE') and animation in ('jump','walk'):
                destination=_xy(e.get('target_position'))
                if destination!=(0.,0.) and math.dist(destination,pos)>r:
                    hazards.append(Body(body_id,*destination,0.,0.,r+8,'hazard',end_after=1.))
                    hazards.append(Body(body_id,*pos,0.,0.,r+8,'warning',end=destination,end_after=1.))
            if typ==self._enum(snapshot,'ENTITY_SPIDER_L2') and animation=='jump':
                destination=_xy(e.get('target_position'))
                if destination!=(0.,0.):
                    # This run first observed landing damage at Jump frame18.
                    # Reserve the destination from frame16 (two frames early),
                    # while the measured body and generic jump path stay active.
                    af=float(e.get('animation_frame',0) or 0)
                    hazards.append(Body(body_id,*destination,0.,0.,r+8,'hazard',
                                        start_after=max(0.,16-af)/30,end_after=max(8.,28-af)/30))
                    hazards.append(Body(body_id,*pos,0.,0.,r+8,'warning',end=destination,end_after=1.))
            # In the recorded Widow jumps, high travel velocity brakes or
            # reverses near the landing area. Keep a stationary occupancy
            # hypothesis there instead of only extrapolating it away again.
            if typ==self._enum(snapshot,'ENTITY_WIDOW') and animation=='jump':
                af=float(e.get('animation_frame',0) or 0)
                braking=previous and raw_speed<math.hypot(*previous['v'])*.6
                if af>=14 and (braking or raw_speed<8):
                    hazards.append(Body(body_id,*pos,0.,0.,r+8,'hazard',end_after=.6))
            # Match world.lua's generic hop/jump/land activation reservation.
            if any(term in animation for term in ("jump", "hop", "land")):
                hazards.append(Body(body_id, pos[0], pos[1], v[0], v[1], r + 8, "hazard",
                                    start_after=2 / 30, end_after=14 / 30))
            # Observed native Leaper Hop commits to target_position before its
            # velocity turns toward the landing tile. Straight extrapolation
            # alone let the player approach (360,160) while it was reserved.
            if typ==self._enum(snapshot,'ENTITY_LEAPER') and animation=='hop':
                destination=_xy(e.get('target_position'))
                if destination!=(0.,0.):
                    hazards.append(Body(body_id,*destination,0.,0.,r+8,'hazard',end_after=1.))
                    hazards.append(Body(body_id,*pos,0.,0.,r,'warning',end=destination,end_after=1.))
            # Native type 250 initially jumps away from its committed target,
            # then reverses into it. The observed destination is already valid
            # during that backward launch; current velocity alone is unsafe.
            if typ==self._enum(snapshot,'ENTITY_TICKING_SPIDER') and animation=='jump':
                destination=_xy(e.get('target_position'))
                if destination!=(0.,0.) and math.dist(destination,pos)>r:
                    af=float(e.get('animation_frame',0) or 0)
                    lifetime=max(2.,24.-af)/30
                    hazards.append(Body(body_id,*destination,0.,0.,r+8,'hazard',
                                        start_after=max(0.,12.-af)/30,end_after=lifetime))
                    hazards.append(Body(body_id,*pos,0.,0.,r+8,'warning',end=destination,end_after=lifetime))
            # Dingle's native slide has a sustained momentum phase; retain the
            # measured path and cover its committed corridor when braking.
            dingle = typ == self._enum(snapshot, "ENTITY_DINGLE") and int(e.get("variant", 0)) == 0
            state = int(e.get("state", 0) or 0)
            af = float(e.get("animation_frame", e.get("age", 0)) or 0)
            # J460 Slide is a six-frame loop. Its animation frame resets while
            # the NPC is still moving fast, so frames 0-3 are not a safe windup.
            if (dingle and state == 4 and animation == "slide" and raw_speed >= 3 and
                    (af >= 4 or (snapshot.get('profile') or {}).get('engine_version') == 'v1.9.7.17.J460')):
                ux, uy = _unit(*v)
                braking = previous and af >= 21 and raw_speed < math.hypot(*previous["v"]) * .99
                rush_frames = 0 if braking else max(0, 22 - af)
                end = (pos[0] + ux * max(80, raw_speed * min(.75, (rush_frames + 6) / 30)),
                       pos[1] + uy * max(80, raw_speed * min(.75, (rush_frames + 6) / 30)))
                hazards.append(Body(body_id, pos[0], pos[1], v[0] * .98, v[1] * .98,
                                    r + uncertainty, "hazard", end=end,
                                    end_velocity=(ux * raw_speed * 30 * .9, uy * raw_speed * 30 * .9)))
            preparing = dingle and ((state in (11, 4) and animation == "beforeslide") or
                                    (state == 4 and animation == "slide" and
                                     ((af <= 6 and raw_speed < 4) or (af >= 21 and int(e.get("i1", 0)) > 0 and raw_speed < 4))))
            charging = "charge" in animation or "dash" in animation
            if preparing or (charging and raw_speed < 2):
                target = _xy(e.get("target_position"), player_pos)
                if target == (0.0, 0.0) or math.dist(target, pos) < r:
                    target = (intended['x'],intended['y']) if intended else player_pos
                ux, uy = _unit(target[0] - pos[0], target[1] - pos[1])
                distance = max(math.hypot(room_right-room_left, room_bottom-room_top) * 2,
                               math.dist(player_pos, pos) + 800)
                # For an off-room target, use its direction and project across
                # the room; the unknown eventual stopping point stays a warning.
                hazards.append(Body(body_id, pos[0], pos[1], 0, 0, r, "warning",
                                    start_after=1 / 30, end_after=1.0,
                                    end=(pos[0] + ux * distance, pos[1] + uy * distance)))
            # Keep abrupt changes as additional short-range uncertainty bodies
            # so a speed spike or spider pounce cannot be extrapolated too neatly.
            if abrupt:
                ux, uy = _unit(*v)
                for sign in (-1, 1):
                    angle = math.atan2(uy, ux) + sign * .45
                    reach = max(32.0, raw_speed * 30 * .35)
                    hazards.append(Body(body_id, pos[0], pos[1], 0, 0, r + uncertainty,
                                        "warning", end=(pos[0] + math.cos(angle) * reach,
                                                        pos[1] + math.sin(angle) * reach),
                                        end_after=.35))
        for ident in tuple(self._entities):
            if ident not in live:
                del self._entities[ident]
        remote=sum(m.get('target_player') is not None and m['target_player']!=player.get('address') for m in models.values())
        observed=[m for m in models.values() if m['scale_observed']]
        return {**motion, "models": models, "hazards": hazards,'remote_targeted':remote,
                'committed_dashes':committed_dashes,
                'pursuit_profiles':[{'entity':ident,'profile':m['pursuit_profile'],
                    'inertia':m['pursuit_inertia'],'gain_per_frame':m['pursuit_gain_per_frame'],
                    'position_scale':m['position_scale'],'position_scale_source':m['position_scale_source'],
                    'target_basis':'observed_reference' if m['target_player'] is not None else
                        'single_available_player' if len(players)==1 else 'unknown_warning'}
                    for ident,m in models.items() if 'pursuit_profile' in m],
                'calibrated_entities':len(observed),'tracked_entities':len(models),
                'calibrated_scale_range':([min(m['position_scale'] for m in observed),
                                            max(m['position_scale'] for m in observed)] if observed else None)}

    @staticmethod
    def apply(snapshot,player,bodies,models):
        """Prepare curved/accelerating and pursuit envelopes as prediction.lua."""
        bodies=[replace(b,vx=models[b.id]['velocity'][0],vy=models[b.id]['velocity'][1])
                if b.id in models and b.kind in ('enemy','projectile','target') and
                   b.end is None and b.ring_radius is None else b for b in bodies]
        result=list(bodies)
        entities={e['address']:e for e in snapshot.get('entities',[])}
        spider=snapshot.get('enums',{}).get('EntityType',{}).get('ENTITY_SPIDER')
        # Native regular-spider dashes crossed about 110px after an idle
        # sample. Its near-zero idle speed must not collapse anticipatory
        # spacing to the generic 64px moving-body buffer. This is comfort,
        # retaining the actual collision radius and every escape route.
        result=[replace(b,safety_buffer=max(b.safety_buffer,120.))
                if b.kind=='enemy' and (e:=entities.get(b.id,{})).get('type')==spider
                   and e.get('variant',0)==0 and spider is not None else b for b in result]
        players=player_targets(snapshot)
        flags=snapshot.get('enums',{}).get('ProjectileFlags',{})
        seen=set()
        for body in bodies:
            if body.id in seen or body.end is not None or body.ring_radius is not None or body.kind not in ('enemy','projectile','target'):
                continue
            model=models.get(body.id)
            if not model:continue
            seen.add(body.id)
            e=entities.get(body.id,{})
            v=model['velocity']; ax,ay=model['acceleration'];omega=model['turn_per_second']
            acceleration=math.hypot(ax,ay)
            if acceleration>1800:ax*=1800/acceleration;ay*=1800/acceleration
            if math.hypot(ax,ay)>.01 or abs(omega)>.45:
                points=[];x,y=body.x,body.y;vx,vy=v
                for n in range(97):
                    points.append((x,y))
                    if abs(omega)>.45:
                        angle=omega/30;c,s=math.cos(angle),math.sin(angle)
                        vx,vy=vx*c-vy*s,vx*s+vy*c
                    elif n<3:vx+=ax/30;vy+=ay/30
                    x+=vx/30;y+=vy/30
                result.append(replace(body,kind='hazard' if body.kind=='enemy' else body.kind,
                                      trajectory=tuple(points)))
            pf=(e.get('projectile') or {}).get('flags',0)
            E=snapshot.get('enums',{}).get('EntityType',{})
            pursuit=(e.get('type')==E.get('ENTITY_ATTACKFLY') or
                     e.get('type')==E.get('ENTITY_SUCKER') and e.get('variant')==5 and any(player.get('active_charges',[])) or
                     e.get('type')==E.get('ENTITY_MULLIGAN') and e.get('variant')==2)
            observed=observed_target(e,players)
            profile=active_pursuit_profile(snapshot,e) if body.kind=='enemy' and math.hypot(*v)>1. else None
            certain_profile=profile is not None and (observed is not None or len(players)==1)
            haunt_chase=(e.get('type')==E.get('ENTITY_THE_HAUNT') and e.get('variant')==10 and
                         str(e.get('animation','')).lower()=='floatchase')
            # Single-player test observations uniquely identify the target.
            # In multiplayer an unknown target stays a possible soft branch.
            certain_haunt=haunt_chase and (observed is not None or len(players)==1)
            pursuit=pursuit or certain_haunt or certain_profile
            walking_pursuit=(not pursuit and body.kind=='enemy' and observed is not None
                and str(e.get('animation','')).lower().startswith(('walk','move','chase','run'))
                and math.hypot(*v)>1.)
            if pursuit or walking_pursuit or haunt_chase or profile or e.get('type')==9 and pf&(flags.get('SMART',0)|flags.get('SMART_PERFECT',0)):
                intended=observed or (next(iter(players.values())) if profile and len(players)==1 else player)
                points=[];x,y=body.x,body.y;speed=math.hypot(*v);angle=math.atan2(v[1],v[0])
                limit=(math.pi/2 if e.get('type')==E.get('ENTITY_SUCKER') else .3 if e.get('type')==E.get('ENTITY_ATTACKFLY') else .35) if pursuit else math.pi if pf&flags.get('SMART_PERFECT',0) else max(.09,abs(omega)/30)
                if walking_pursuit:limit=math.pi
                if haunt_chase:limit=math.pi
                # A conservative possible turn, not a fitted NPC turn rate.
                if profile:limit=math.pi
                inertia=profile.inertia if profile else 0.
                gain=profile.gain_per_frame*model['position_scale']*30 if profile else 0.
                old_weight=profile.old_velocity_weight if profile else 0.
                vx,vy=v
                for n in range(97):
                    points.append((x,y))
                    tx=intended['x']+intended.get('vx',0)*n;ty=intended['y']+intended.get('vy',0)*n
                    if inertia>0:
                        ux,uy=_unit(tx-x,ty-y)
                        next_vx,next_vy=inertia*vx+gain*ux,inertia*vy+gain*uy
                        x+=(old_weight*vx+(1-old_weight)*next_vx)/30
                        y+=(old_weight*vy+(1-old_weight)*next_vy)/30
                        vx,vy=next_vx,next_vy
                    else:
                        difference=(math.atan2(ty-y,tx-x)-angle+math.pi)%(2*math.pi)-math.pi
                        angle+=max(-limit,min(limit,difference))
                        x+=math.cos(angle)*speed/30;y+=math.sin(angle)*speed/30
                # A target reference plus a walking animation permits a possible
                # pursuit branch, not a claim to know the NPC's complete AI.
                # Keep the measured straight body and make this extra branch soft.
                local_chase=(intended.get('address')==player.get('address') and
                    (observed is not None or len(players)==1) and (certain_haunt or pursuit or walking_pursuit))
                result.append(replace(body,kind='warning' if walking_pursuit or (haunt_chase and not certain_haunt) or (profile and not certain_profile) else
                                      'hazard' if body.kind=='enemy' else body.kind,trajectory=tuple(points),
                                      pursuit_speed=speed if local_chase else 0.,pursuit_turn=limit,
                                      pursuit_inertia=inertia,pursuit_gain=gain,pursuit_old_weight=old_weight))
                if intended.get('address')!=player.get('address') and pursuit:
                    # Possible later retargeting is a soft branch, not a claim
                    # the current attack is aimed at us. Keep actual paths too.
                    ux,uy=_unit(player['x']-body.x,player['y']-body.y)
                    result.append(replace(body,kind='warning',trajectory=None,vx=ux*speed,vy=uy*speed,
                                          start_after=.4,end_after=1.2))
        return result

    @staticmethod
    def prediction_snapshot(snapshot,models):
        """Share calibrated NPC/projectile units across every prediction consumer.

        The reader's actual snapshot and player/weapon velocities stay intact.
        Special landing, blast and beam reservations must see the same units as
        ordinary bodies and target intercepts, without observing a frame twice.
        """
        return {**snapshot,'entities':EngineMotion.apply_targets(snapshot.get('entities',[]),models)}

    @staticmethod
    def apply_targets(targets,models):
        result=[]
        for target in targets:
            model=models.get(target.get('address'))
            if model and model.get('scale_observed'):
                target={**target,'raw_velocity':target.get('raw_velocity',(target.get('vx',0),target.get('vy',0))),
                        'vx':model['velocity'][0]/30,'vy':model['velocity'][1]/30,
                        'prediction_scale':model['position_scale']}
            result.append(target)
        return result

    @staticmethod
    def compensate(bodies,seconds,player_velocity=(0.,0.),*,player_speed_bound=0.):
        """Bound local read/compute/sample delay; this is not network RTT."""
        seconds=max(0.,min(.2,seconds));player_speed=max(math.hypot(*player_velocity)*30,player_speed_bound)
        result=[]
        for b in bodies:
            rate=math.hypot(b.vx,b.vy)
            if b.trajectory and len(b.trajectory)>1:
                rate=max(rate,max(math.dist(p,q)*30 for p,q in zip(b.trajectory,b.trajectory[1:])))
            if b.end is not None:
                rate=max(rate,math.hypot(*(b.end_velocity or (b.vx,b.vy))))
                rate+=abs(b.angular_velocity)*math.dist((b.x,b.y),b.end)
            rate+=abs(b.ring_growth)
            result.append(replace(b,latency_padding=(rate+player_speed)*seconds,
                                  start_after=max(0,b.start_after-seconds)))
        return result
