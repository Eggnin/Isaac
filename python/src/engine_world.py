"""Translate read-only Isaac engine snapshots into planner geometry and bodies."""
from __future__ import annotations

import math
from typing import Any

import numpy as np

from planner import Body
from engine_warnings import Warnings
from engine_hazards import SpecialHazards
from engine_attack_mechanisms import AttackMechanismDetector


class EngineWorld:
    """Build cached pixel walkability and actionable entities from engine data.

    The adapter expects vanilla entity/grid numeric IDs from the memory reader.
    Grid collision values follow GridCollisionClass (none=0, pit=1, object=2,
    solid=3, wall=4, wall-except-player=5).
    """

    ORIGIN = (40, 120)
    CELL = 40
    FRIENDLY = 1 << 29
    CHARMED = 1 << 8

    def __init__(self) -> None:
        self._warnings = Warnings()
        self._special = SpecialHazards()
        self._attack_mechanisms = AttackMechanismDetector()
        self.reset()

    def reset(self) -> None:
        self._terrain_key = None
        self._walkable = None
        self._shot_walkable = None
        self._spectral_shot_walkable = None
        self._warnings.reset()
        self._special.reset()
        self._attack_mechanisms.reset()

    def attack_mechanism_coverage(self):
        return self._attack_mechanisms.coverage_report()

    def clear_attack_mechanism_coverage(self):
        self._attack_mechanisms.reset(clear_coverage=True)

    @staticmethod
    def _num(obj: dict, key: str, default: float = 0.0) -> float:
        value = obj.get(key, default)
        try:
            value = float(value)
            return value if math.isfinite(value) else default
        except (TypeError, ValueError):
            return default

    @staticmethod
    def _owned(entity: dict, by_address: dict) -> bool:
        """Recognize player/familiar ownership through parent and spawner chains."""
        if entity.get("type") in (1, 3):
            return True
        seen: set[Any] = set()
        todo = [entity]
        while todo:
            current = todo.pop()
            address = current.get("address")
            if address in seen:
                continue
            seen.add(address)
            if current.get("type") in (1, 3):
                return True
            flags = int(current.get("flags", 0) or 0)
            if flags & (EngineWorld.FRIENDLY | EngineWorld.CHARMED):
                return True
            links = [current.get("parent"), current.get("spawner")]
            familiar = current.get("familiar")
            if isinstance(familiar, dict):
                links.append(familiar.get("owner"))
            links.append(current.get("owner"))
            for link in links:
                if isinstance(link, dict):
                    todo.append(link)
                elif link is not None:
                    parent = by_address.get(link)
                    if parent is not None:
                        todo.append(parent)
        return False

    @staticmethod
    def _body_id(entity: dict) -> int:
        value = entity.get("address") or entity.get("seed") or entity.get("index") or 0
        try:
            return int(value)
        except (TypeError, ValueError):
            return hash(str(value)) & 0x7FFFFFFF

    @staticmethod
    def _segment_samples(a: tuple[float, float], b: tuple[float, float], spacing: float):
        distance = math.dist(a, b)
        n = max(1, int(math.ceil(distance / max(1.0, spacing))))
        for i in range(n + 1):
            t = i / n
            yield a[0] + (b[0] - a[0]) * t, a[1] + (b[1] - a[1]) * t

    def _terrain(self, snapshot: dict, can_fly: bool) -> None:
        gw = max(1, int(snapshot.get("grid_width") or 15))
        gh = max(1, int(snapshot.get("grid_height") or 9))
        # Keep the 640x560 pixel coordinate system used by Planner; larger rooms
        # expand in 40px grid increments around the engine grid origin.
        width, height = max(640, (gw + 1) * self.CELL), max(560, (gh + 5) * self.CELL)
        cells = snapshot.get("grid_cells") or []
        paid_pickups = []
        for entity in snapshot.get("entities") or []:
            pickup = entity.get("pickup") or {}
            price = entity.get("price", pickup.get("price", 0))
            try:
                priced = float(price) != 0
            except (TypeError, ValueError):
                priced = False
            if int(entity.get("type", -1)) == 5 and (int(entity.get("variant", -1)) == 100 or priced):
                paid_pickups.append((round(self._num(entity, "x")), round(self._num(entity, "y"))))
        key = (gw, gh, can_fly, tuple(sorted((int(c.get("index", -1)), int(c.get("type", -1)),
                    int(c.get("variant", 0)), int(c.get("state", 0)), int(c.get("collision", 4)))
                    for c in cells)), tuple(sorted(paid_pickups)))
        if key == self._terrain_key:
            return
        yy, xx = np.indices((height, width))
        walk = (xx >= 60) & (xx <= 580 + max(0, gw - 15) * self.CELL) & (yy >= 140) & (yy <= 420 + max(0, gh - 9) * self.CELL)
        shot = walk.copy()
        spectral = walk.copy()
        for cell in cells:
            index = int(cell.get("index", -1))
            if index < 0:
                continue
            col, row = index % gw, index // gw
            cx, cy = self.ORIGIN[0] + col * self.CELL, self.ORIGIN[1] + row * self.CELL
            collision = int(cell.get("collision", 4))
            typ, variant = int(cell.get("type", -1)), int(cell.get("variant", 0))
            greed_button = typ == 20 and variant == 2
            spike = typ in (8, 9)
            blocked = collision in (1, 2, 3, 4)
            if can_fly:
                blocked = collision == 4
            if spike or greed_button:
                blocked = greed_button or (spike and not can_fly)
            x0, x1 = max(0, cx - 20), min(width, cx + 20)
            y0, y1 = max(0, cy - 20), min(height, cy + 20)
            if blocked:
                walk[y0:y1, x0:x1] = False
            if collision in (2, 3, 4):
                shot[y0:y1, x0:x1] = False
            # Spectral bypasses objects/rocks, not the room's exterior walls.
            if collision in (4,5):
                spectral[y0:y1, x0:x1] = False
        for cx, cy in paid_pickups:
            x0, x1 = max(0, cx - 20), min(width, cx + 20)
            y0, y1 = max(0, cy - 20), min(height, cy + 20)
            walk[y0:y1, x0:x1] = False
        self._terrain_key, self._walkable, self._shot_walkable = key, walk, shot
        self._spectral_shot_walkable = spectral

    def observe_attack_mechanisms(self, snapshot):
        return self._attack_mechanisms.observe(snapshot)

    def update(self, snapshot: dict, local_player: dict) -> dict:
        can_fly = bool((local_player.get("stats") or {}).get("can_fly", False))
        self._terrain(snapshot, can_fly)
        entities = snapshot.get("entities") or []
        by_address = {e.get("address"): e for e in entities if e.get("address") is not None}
        targets: list[dict] = []
        optional_targets: list[dict] = []
        bodies: list[Body] = self._warnings.capture(snapshot, local_player)
        bodies.extend(self._special.capture(snapshot,local_player,self._shot_walkable))
        notes = []
        # A damaging grid cell needs a temporal collision envelope as well
        # as its movement mask: native input/position latency can otherwise
        # reach its damage boundary before a terrain-only stop is observed.
        # Enclose the existing 40px square without claiming a measured
        # circular damage radius. Native DAMAGE_POOP evidence pins variant 1.
        for cell in snapshot.get('grid_cells') or []:
            if cell.get('type')==14 and cell.get('variant')==1 and cell.get('collision') in (2,3):
                index=cell['index'];width=snapshot.get('grid_width') or 15
                cx,cy=self.ORIGIN[0]+index%width*self.CELL,self.ORIGIN[1]+index//width*self.CELL
                bodies.append(Body(-1000000-index,cx,cy,0.,0.,self.CELL/math.sqrt(2),'hazard'))
        for e in entities:
            typ = int(e.get("type", -1))
            laser = e.get("laser") or {}
            is_live_laser = int(e.get("type", -1)) == 7 and self._num(laser, "timeout", 1) > 0
            bomb = e.get("bomb") or {}
            is_live_bomb = typ == 4 and self._num(bomb, "countdown", self._num(e, "countdown", -1)) >= 0
            if (typ != 4 and self._owned(e, by_address)) or (e.get("dead") and not (is_live_laser or is_live_bomb)):
                continue
            x, y = self._num(e, "x"), self._num(e, "y")
            vx, vy = self._num(e, "vx") * 30.0, self._num(e, "vy") * 30.0
            multi=e.get('size_multi') or (1,1)
            radius = max(0.0, self._num(e, "radius", 5.0))*max(abs(multi[0]),abs(multi[1]))
            ident = self._body_id(e)
            if typ == 9:
                flags=(e.get('projectile') or {}).get('flags',0)
                cannot_hit=(snapshot.get('enums',{}).get('ProjectileFlags',{})).get('CANT_HIT_PLAYER',0)
                collision = e.get('collision_class')
                # Native 046: Monstro's airborne projectile had class 0 on the
                # last observation before hitting, then class 4 next tick.
                # Reserve its 2-D path before activation. This deliberately
                # does not assert an exact height threshold or current hitbox.
                if self._num(e, "collision_damage") > 0 and collision in (0,1,2,4) and not flags&cannot_hit:
                    bodies.append(Body(ident, x, y, vx, vy, radius, "projectile"))
                    if collision == 0:
                        notes.append({'entity':ident,'hypothesis':'projectile_collision_may_activate',
                                      'current_collision_class':0,
                                      'height':(e.get('projectile') or {}).get('height'),
                                      'policy':'conservative_2d_path_reservation'})
            elif typ == 4:
                countdown = self._num(bomb, "countdown", self._num(e, "countdown", -1))
                if countdown >= 0:
                    # Native Little Horn damage request: BOMB_HOT (variant 8)
                    # caused DAMAGE_FIRE with 36 fuse ticks still remaining,
                    # despite CollisionDamage == 0. Keep contact and blast as
                    # separate reservations; player-owned hot bombs have no
                    # hostile contact reservation.
                    if (e.get('variant') == 8 and not e.get('dead') and
                            e.get('collision_class') in (1,2,4) and not self._owned(e,by_address)):
                        bodies.append(Body(ident,x,y,vx,vy,radius,'hazard',end_after=(countdown+1)/30))
                        notes.append({'entity':ident,'hypothesis':'hostile_hot_bomb_fire_contact',
                                      'countdown':countdown,'policy':'contact_separate_from_explosion'})
                    br=self._num(bomb,'explosion_radius',80.)
                    # Start clearing the blast before the fuse ends; an early
                    # safety reservation is not a claim that damage starts now.
                    bodies.append(Body(ident,x,y,vx,vy,br,'hazard',start_after=max(0,countdown-6)/30,end_after=(countdown+4)/30))
                    bodies.append(Body(ident,x,y,vx,vy,br+28,'warning',end_after=(countdown+4)/30))
            elif typ >= 10 and typ != 1000:
                hp = self._num(e, "health", 1.0)
                if typ==302:
                    bodies.append(Body(ident,x,y,vx,vy,radius,'obstacle'))
                    continue
                if hp <= 0 or int(e.get("collision_class", 0) or 0) == 0:
                    continue
                if typ==33 and snapshot.get('room_clear') is True:
                    # Native clear confirmation makes the fire optional.
                    # Retain its danger without blocking departure; unknown
                    # or uncleared rooms keep the existing attack behavior.
                    optional_targets.append(dict(e))
                    bodies.append(Body(ident,x,y,vx,vy,radius,
                        'hazard' if self._num(e,'collision_damage')>0 else 'obstacle'))
                    continue
                if not e.get("invulnerable"):
                    target=dict(e)
                    target['blast_radius']=self._special.explosion_radius(e,snapshot.get('enums',{}).get('EntityType',{}))
                    targets.append(target)
                # Immunity to our attacks does not remove contact damage.
                kind = "enemy" if self._num(e, "collision_damage") > 0 else "target"
                if kind == "target" and e.get("invulnerable"):
                    continue
                if e.get("invulnerable"):
                    kind = "hazard"
                blast=self._special.explosion_radius(e,snapshot.get('enums',{}).get('EntityType',{}))
                bodies.append(Body(ident, x, y, vx, vy, radius, kind,
                                   safety_buffer=max(0.,blast+28-radius) if blast else 0.))
        return {
            "walkable": self._walkable,
            "shot_walkable": self._shot_walkable,
            "spectral_shot_walkable": self._spectral_shot_walkable,
            "bodies": bodies,
            "targets": targets,
            "optional_targets":optional_targets,
            "shot_blockers":[e for e in entities if 10<=e['type']<1000 and not e.get('dead') and
                             (e.get('invulnerable') or e['type']==302) and e.get('collision_class') in (2,4)],
            "player_position": (self._num(local_player, "x"), self._num(local_player, "y")),
            "player_radius": max(0.0, self._num(local_player, "radius", 9.0)),
            "room_key": snapshot.get("room"),
            "notes": notes,
        }
