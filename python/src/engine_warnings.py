"""Convert observed vanilla Isaac laser windups and damaging effects to planner bodies."""
from __future__ import annotations

import math
from typing import Any

from planner import Body
from engine_targets import player_targets, observed_target


class Warnings:
    """Read-only, data-driven warnings based on the old in-game observations."""

    def __init__(self) -> None:
        self.reset()

    def reset(self) -> None:
        self._room = None
        self._tracks: dict[Any, dict] = {}
        self._laser_tracks = {}

    @staticmethod
    def _maps(snapshot: dict) -> dict:
        return snapshot.get("enums") or {}

    @classmethod
    def _enum(cls, snapshot: dict, group: str, name: str, default=None):
        enums = cls._maps(snapshot)
        table = enums.get(group, {}) if isinstance(enums, dict) else {}
        if isinstance(table, dict) and name in table:
            return table[name]
        # Readers may expose a flattened enum map.
        return enums.get(name, default) if isinstance(enums, dict) else default

    @staticmethod
    def _num(obj: dict, key: str, default: float = 0.0) -> float:
        try:
            n = float(obj.get(key, default))
            return n if math.isfinite(n) else default
        except (TypeError, ValueError):
            return default

    @staticmethod
    def _friendly(entity: dict, by_address: dict) -> bool:
        todo, seen = [entity], set()
        while todo:
            e = todo.pop()
            addr = e.get("address")
            if addr in seen:
                continue
            seen.add(addr)
            if int(e.get("type", -1)) in (1, 3) or int(e.get("flags", 0) or 0) & ((1 << 29) | (1 << 8)):
                return True
            familiar = e.get("familiar") or {}
            for ref in (e.get("parent"), e.get("spawner"), e.get("owner"), familiar.get("owner")):
                if isinstance(ref, dict):
                    todo.append(ref)
                elif ref is not None and ref in by_address:
                    todo.append(by_address[ref])
        return False

    @staticmethod
    def _id(entity: dict) -> int:
        val = entity.get("address") or entity.get("seed") or entity.get("index") or 0
        try:
            return int(val)
        except (TypeError, ValueError):
            return hash(str(val)) & 0x7FFFFFFF

    @staticmethod
    def _unit(x: float, y: float) -> tuple[float, float]:
        n = math.hypot(x, y)
        return (x / n, y / n) if n > 1e-6 else (0.0, 0.0)

    @staticmethod
    def _ray(out: list[Body], ident: int, x: float, y: float, ux: float, uy: float,
             reach: float, radius: float, delay: float, ttl: float, kind: str = "warning") -> None:
        if math.hypot(ux, uy) < .1 or ttl <= 0:
            return
        out.append(Body(ident, x, y, 0.0, 0.0, radius, kind,
                        start_after=max(0.0, delay), end_after=max(max(0.0, delay) + .01, ttl),
                        end=(x + ux * reach, y + uy * reach)))

    @staticmethod
    def _circle(out: list[Body], ident: int, x: float, y: float, radius: float,
                body_radius: float, delay: float, ttl: float, kind: str = "warning",
                expansion: float = 0.0) -> None:
        if radius <= 0 or ttl <= 0:
            return
        out.append(Body(ident, x, y, 0.0, 0.0, body_radius, kind,
                        start_after=max(0.0, delay), end_after=max(max(0.0, delay) + .01, ttl),
                        ring_radius=radius, ring_growth=expansion))

    @staticmethod
    def _pos(entity: dict) -> tuple[float, float]:
        return Warnings._num(entity, "x"), Warnings._num(entity, "y")

    def capture(self, snapshot: dict, player: dict) -> list[Body]:
        room = snapshot.get("room")
        if room != self._room:
            self._tracks.clear()
            self._laser_tracks.clear()
            self._room = room
        frame = int(snapshot.get("frame", 0) or 0)
        entities = snapshot.get("entities") or []
        by_address = {e.get("address"): e for e in entities if e.get("address") is not None}
        width = max(1, int(snapshot.get("grid_width") or 15)) * 40
        height = max(1, int(snapshot.get("grid_height") or 9)) * 40
        reach = math.hypot(width, height) * 2
        px, py = self._pos(player)
        players=player_targets(snapshot)
        out: list[Body] = []
        seen_tracks = set()
        for e in entities:
            typ, variant = int(e.get("type", -1)), int(e.get("variant", 0))
            x, y = self._pos(e)
            ident = self._id(e)
            if typ >= 10 and typ != 1000 and not self._friendly(e, by_address):
                key = (e.get("address", ident), typ, variant)
                seen_tracks.add(key)
                anim = str(e.get("animation", "")).lower()
                af = self._num(e, "animation_frame", self._num(e, "state_frame", 0))
                old = self._tracks.get(key)
                gap = frame - old["frame"] if old else 0
                frame_delta = af - old["af"] if old else -1
                continuous = (old and 0 <= gap <= 2 and old["animation"] == anim
                              and 0 <= frame_delta <= gap + 1)
                track = {"frame": frame, "animation": anim, "af": af,
                         "aim": old.get("aim") if continuous else None,
                         "aim_confirmed":old.get('aim_confirmed',False) if continuous else False}
                if typ == self._enum(snapshot, "EntityType", "ENTITY_EYE") and variant == 0 and anim == "shoot" and af <= 14:
                    intended=observed_target(e,players)
                    tx,ty=self._pos(intended) if intended else (px,py)
                    if af <= 2:
                        track["aim"] = self._unit(tx - x, ty - y)
                        track['aim_confirmed']=intended is not None
                    ux, uy = track.get("aim") or self._unit(tx - x, ty - y)
                    delay = max(1, 11 - af) / 30.0
                    self._ray(out, ident, x, y, ux, uy, reach, 10, delay, delay + 4 / 30,
                              "warning" if not track.get('aim_confirmed') or af < 2 else "projectile")
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_RED_GHOST") and variant == 0:
                    if anim.startswith("shoot"):
                        direction = self._suffix(anim)
                        if direction:
                            delay = max(1, 14 - af) / 30.0
                            self._ray(out, ident, x, y, *direction, reach, 14, delay, delay + 5 / 30, "projectile")
                    elif anim.startswith("appear") and self._suffix(anim):
                        self._ray(out, ident, x, y, *self._suffix(anim), reach, 14, 1 / 30, 12 / 30)
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_VIS") and anim.startswith("attack01") and af <= 31:
                    direction = (1, 0) if "horiz" in anim else self._suffix(anim)
                    if direction:
                        delay = max(1, 28 - af) / 30
                        ox = x - direction[0] * reach * .5 if "horiz" in anim else x
                        self._ray(out, ident, ox, y, *direction, reach, 14, delay, delay + 4 / 30, "projectile")
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_MONSTRO2") and variant == 0 and anim == "taunt" and af <= 54:
                    delay = max(1, 21 - af) / 30
                    ux = 1 if e.get("sprite_flip_x") else -1
                    self._ray(out, ident, x, y, ux, 0, reach, 16, delay, max(delay + .01, (54 - af) / 30), "projectile")
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_RAGE_CREEP") and variant == 0 and anim == "attack" and af <= 20:
                    facing = {1: (0, 1), 2: (0, -1), 3: (1, 0), 4: (-1, 0)}.get(int(e.get("i1", 0)))
                    if facing:
                        delay = max(1, 16 - af) / 30
                        self._ray(out, ident, x, y, *facing, reach, 14, delay, max(delay + .01, (20 - af) / 30), "projectile")
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_DARK_ONE") and variant == 0 and anim == "attack2" and af <= 24:
                    delay = max(1, 20 - af) / 30
                    self._ray(out, ident, x, y + 5, 0, 1, reach, 18, delay, max(delay + .01, (24 - af) / 30), "projectile")
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_GLUTTONY") and variant == 0 and not e.get('dead') and self._num(e,'health',1)>0 and anim.startswith('attack01') and af <= 60:
                    # Thirteen native damage records in three runs show laser
                    # birth at Attack01 frame 29, timeout 31. Reserve the lane
                    # before birth; unknown horizontal facing reserves both
                    # possibilities, not a guessed target or sprite direction.
                    directions=((-1,0),(1,0)) if 'horiz' in anim else (self._suffix(anim),)
                    delay=max(0.,29-af)/30
                    for direction in directions:
                        if direction:self._ray(out,ident,x,y,*direction,reach,16,delay,max(delay+.01,(60-af)/30),'projectile')
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_GLUTTONY") and variant == 1 and anim == "attack02horiz" and af <= 63:
                    delay = max(1, 30 - af) / 30
                    for ux in (-1, 1):
                        self._ray(out, ident, x, y, ux, 0, reach, 16, delay, max(delay + .01, (64 - af) / 30), "projectile")
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_GABRIEL") and variant == 0:
                    state = int(e.get("state", 0))
                    charging = (state in (9, 10) and anim != "lasershot") or anim == "charging"
                    shooting = anim == "lasershot" and af <= 7
                    if charging or shooting:
                        delay = 1 / 30 if charging else max(1, 4 - af) / 30
                        if state == 10:
                            angles = [i * math.pi / 2 + math.pi / 4 for i in range(4)]
                        else:
                            angles = [i * math.pi / 2 for i in range(4)]
                        for a in angles:
                            self._ray(out, ident, x, y, math.cos(a), math.sin(a), reach, 18,
                                      delay, delay + (12 if charging else max(1, 8 - af)) / 30,
                                      "warning" if charging else "projectile")
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_PEEP") and variant == 1 and "jump" not in anim and "appear" not in anim:
                    self._ray(out, ident, x, y - 40, -1, 0, reach, 20, 1 / 30, 12 / 30)
                    self._ray(out, ident, x, y - 40, 1, 0, reach, 20, 1 / 30, 12 / 30)
                    self._ray(out, ident, x, y - 40, 0, 1, reach, 34, 1 / 30, 12 / 30)
                    if anim == "attackalt01" and af <= 13:
                        delay = max(1, 10 - af) / 30
                        for ox in (-15, 15):
                            self._ray(out, ident, x + ox, y - 40, 0, 1, reach, 18, delay, delay + 4 / 30, "projectile")
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_BRIMSTONE_HEAD") and anim.startswith("shoot") and af <= 30:
                    direction = self._suffix(anim)
                    if direction:
                        delay = max(1, 26 - af) / 30
                        self._ray(out, ident, x, y, *direction, reach, 16, delay, delay + 5 / 30, "projectile")
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_ADVERSARY") and anim.startswith("attack2"):
                    self._ray(out, ident, x, y, *self._unit(px - x, py - y), reach, 22, 1 / 30, 12 / 30)
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_FALLEN") and variant == 1 and (anim.startswith("attack2") or anim.startswith("attack3")):
                    for ux, uy in ((1, 0), (-1, 0), (0, 1), (0, -1)):
                        self._ray(out, ident, x, y, ux, uy, reach, 18, 1 / 30, 12 / 30)
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_URIEL") and variant == 0 and anim == "charging":
                    self._ray(out, ident, x, y, 0, 1, reach, 20, 1 / 30, 12 / 30)
                elif typ == self._enum(snapshot, "EntityType", "ENTITY_URIEL") and variant == 0 and anim == "lasershot" and af <= 7:
                    delay = max(1, 4 - af) / 30
                    self._ray(out, ident, x, y, 0, 1, reach, 20, delay, delay + 4 / 30, "projectile")
                self._tracks[key] = track
            elif typ == self._enum(snapshot, "EntityType", "ENTITY_LASER", 7):
                self._laser(out,snapshot,e,by_address,frame,reach)
            elif typ == 1000:
                self._effect(out, snapshot, player, e, by_address, ident, x, y)
        for ident in tuple(self._laser_tracks):
            if ident not in by_address:del self._laser_tracks[ident]
        for key in tuple(self._tracks):
            if key not in seen_tracks:
                del self._tracks[key]
        return out

    def _laser(self,out,snapshot,e,by_address,frame,reach):
        if self._friendly(e,by_address):return
        laser=e.get('laser') or {};ident=e['address'];pos=(e['x'],e['y'])
        old=self._laser_tracks.get(ident);gap=frame-old['frame'] if old else 0
        continuous=bool(old and 0<gap<=2)
        velocity=((pos[0]-old['pos'][0])*30/gap,(pos[1]-old['pos'][1])*30/gap) if continuous else (e.get('vx',0)*30,e.get('vy',0)*30)
        angle=math.radians(laser.get('angle',0))
        rotation=((angle-old['angle']+math.pi)%(2*math.pi)-math.pi)*30/gap if continuous else 0.
        radius=max(1,e.get('radius',1));timeout=laser.get('timeout',0)
        lifetime=timeout/30 if timeout>0 else 1.
        kind='projectile' if e.get('collision_damage',0)>0 else 'warning'
        E=snapshot.get('enums',{}).get('EntityType',{})
        if any(n.get('type')==E.get('ENTITY_ULTRA_GREED') and n.get('variant')==1 for n in by_address.values()) and e.get('variant')==3 and e.get('collision_class') in (1,2,4):kind='projectile'
        samples=laser.get('samples') or []
        if laser.get('is_circle'):
            ring=laser.get('radius',0)
            growth=(ring-old['radius'])*30/gap if continuous else laser.get('radius_expansion',0)*30
            out.append(Body(ident,*pos,*velocity,radius,kind,end_after=lifetime,ring_radius=ring,ring_growth=growth))
        else:
            if len(samples)<=2:
                endpoint=laser.get('endpoint') or (0,0)
                owner=by_address.get(e.get('parent') or e.get('spawner'),{})
                if owner.get('type') in (E.get('ENTITY_GABRIEL'),E.get('ENTITY_MONSTRO2'),E.get('ENTITY_GLUTTONY')):
                    offset=e.get('position_offset',(0,0));endpoint=(endpoint[0]-offset[0],endpoint[1]-offset[1])
                if math.dist(endpoint,pos)<1 or (e.get('age',99)<=1 and math.hypot(*endpoint)<.01):
                    length=laser.get('max_distance',0) or max(1000,reach)
                    endpoint=(pos[0]+math.cos(angle)*length,pos[1]+math.sin(angle)*length)
                samples=[pos,endpoint]
            old_samples=old.get('samples',[]) if continuous else []
            for i,(a,b) in enumerate(zip(samples,samples[1:])):
                pv=velocity;ev=None
                if continuous and len(old_samples)==len(samples):
                    pv=((a[0]-old_samples[i][0])*30/gap,(a[1]-old_samples[i][1])*30/gap)
                    ev=((b[0]-old_samples[i+1][0])*30/gap,(b[1]-old_samples[i+1][1])*30/gap)
                out.append(Body(ident,*a,*pv,radius,kind,end_after=lifetime,end=tuple(b),end_velocity=ev,
                                angular_velocity=rotation if len(samples)==2 else 0.))
        self._laser_tracks[ident]={'frame':frame,'pos':pos,'angle':angle,'radius':laser.get('radius',0),'samples':samples}

    @staticmethod
    def _suffix(animation: str):
        for word, vec in (("up", (0, -1)), ("down", (0, 1)), ("left", (-1, 0)), ("right", (1, 0))):
            if word in animation:
                return vec
        return None

    def _effect(self, out, snapshot, player, e, by_address, ident, x, y):
        enums = self._maps(snapshot).get("EffectVariant", self._maps(snapshot))
        if not isinstance(enums, dict):
            return
        variant = int(e.get("variant", -1))
        name = next((n for n, v in enums.items() if v == variant), "")
        safe_names = {"CREEP_WHITE", "CREEP_SLIPPERY_BROWN", "CREEP_SLIPPERY_BROWN_GROWING", "CREEP_LIQUID_POOP"}
        if name.startswith("PLAYER_CREEP_") or name in safe_names:
            return
        owned = self._friendly(e, by_address)
        epic = self._enum(snapshot, "CollectibleType", "COLLECTIBLE_EPIC_FETUS")
        marked = self._enum(snapshot, "CollectibleType", "COLLECTIBLE_MARKED")
        items = player.get("collectibles", player.get("items", {})) or {}
        has_epic = epic in items or str(epic) in items if epic is not None else False
        has_marked = marked in items or str(marked) in items if marked is not None else False
        is_target = variant == enums.get("TARGET")
        if owned and is_target and has_marked and not has_epic:
            return
        danger_profiles = {
            "SHOCKWAVE": (12, True), "SHOCKWAVE_DIRECTIONAL": (12, True), "SHOCKWAVE_RANDOM": (12, True),
            "CRACKWAVE": (12, True), "BIG_CRACKWAVE": (12, True), "MOTHER_SHOCKWAVE": (12, True),
            "FIRE_JET": (10, False), "FIRE_WAVE": (10, False), "HOT_BOMB_FIRE": (10, False),
            "DARK_BALL_SMOKE_PARTICLE": (12, False), "SMOKE_CLOUD": (12, False), "BROWN_CLOUD": (12, False),
            "HUSH_LASER": (18, True), "HUSH_LASER_UP": (18, False),
            "CREEP_RED": (8, True), "CREEP_GREEN": (8, True), "CREEP_YELLOW": (8, True),
            "CREEP_BLOOD": (8, True), "CREEP_BLACK": (8, True), "CREEP_BROWN": (8, True), "CREEP_STATIC": (8, True),
            "TARGET": (54, False), "BROKEN_SHOVEL_SHADOW": (54, False), "MOM_FOOT_STOMP": (56, False),
            "MOMS_HAND": (56, False), "ROCKET": (80, False), "SMALL_ROCKET": (80, False), "CRACK_THE_SKY": (32, False),
        }
        profile = danger_profiles.get(name)
        damage = self._num(e, "collision_damage") > 0
        if owned and not (profile and name in {"TARGET", "BROKEN_SHOVEL_SHADOW", "MOM_FOOT_STOMP", "MOMS_HAND", "ROCKET", "SMALL_ROCKET"}):
            return
        swirl = variant == enums.get("ENEMY_BRIMSTONE_SWIRL") and self._num(e, "age", self._num(e, "animation_frame", 99)) <= 24
        if not profile and not damage and not swirl:
            return
        if name == "SMOKE_CLOUD" and int(e.get("subtype", 0)) == 1 and not owned and self._num(e, "timeout") <= 0 and not e.get("parent") and not e.get("spawner"):
            return
        radius = max(self._num(e, "radius", 1), profile[0] if profile else 8)
        if name.startswith("CREEP_") and bool((player.get("stats") or {}).get("can_fly", False)):
            return
        age = self._num(e, "age", self._num(e, "animation_frame", 0))
        timeout = self._num(e, "timeout", self._num(e.get("effect") or {}, "timeout", 0))
        delay = 0.0
        ttl = timeout / 30 if timeout > 0 else max(1.0, self._num(e, "lifespan", 30) - age) / 30
        kind = "projectile" if damage or (profile and profile[1]) else "warning"
        if swirl:
            delay = max(1, 25 - age) / 30
            ttl = max(2, 28 - age) / 30
            kind = "warning"
            for i in range(8):
                a = i * math.pi / 4
                self._ray(out, ident, x, y, math.cos(a), math.sin(a), 1800, 16, delay, ttl, kind)
            return
        out.append(Body(ident, x, y, (0 if name.startswith("CREEP_") else self._num(e, "vx") * 30), (0 if name.startswith("CREEP_") else self._num(e, "vy") * 30),
                        radius, kind, start_after=delay, end_after=max(delay + .01, ttl)))
