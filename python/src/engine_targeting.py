"""Conservative target metadata migration for read-only engine snapshots.

This module only scores entities already exposed by EngineWorld. It does not
inspect memory or alter game state.
"""
from __future__ import annotations

import math
from typing import Any
from engine_data import ENUMS


E=ENUMS['EntityType']
REVIVERS = {(E['ENTITY_CULTIST'],0),(E['ENTITY_RAG_MAN'],None)}
REGENERATORS = {E['ENTITY_GLOBIN'],E['ENTITY_CLICKETY_CLACK']}
SUMMONERS = {E[k] for k in ('ENTITY_HIVE','ENTITY_NEST','ENTITY_PREY','ENTITY_DUKE','ENTITY_RAG_MEGA','ENTITY_PORTAL')}
_SPECIAL_COIN = E['ENTITY_ULTRA_COIN']


def _num(value: Any, default: float = 0.0) -> float:
    try:
        n = float(value)
        return n if math.isfinite(n) else default
    except (TypeError, ValueError):
        return default


def _addr(value: Any) -> int | None:
    if isinstance(value, dict):
        value = value.get("address")
    return value if isinstance(value, int) and value > 0 else None


def _owned(entity: dict, by_address: dict[int, dict], player_address: int) -> bool:
    todo = [entity]
    seen: set[int] = set()
    while todo:
        current = todo.pop()
        address = _addr(current.get("address"))
        if address is not None:
            if address == player_address:
                return True
            if address in seen:
                continue
            seen.add(address)
        if current.get("type") == 1:
            return address == player_address
        if current.get("type") == 3:
            familiar = current.get("familiar") or {}
            if _addr(familiar.get("owner", current.get("owner"))) == player_address:
                return True
        for key in ("parent", "spawner", "owner"):
            parent = current.get(key)
            parent_address = _addr(parent)
            if parent_address == player_address:
                return True
            if isinstance(parent, dict):
                todo.append(parent)
            elif parent_address in by_address:
                todo.append(by_address[parent_address])
    return False


def _intercept_time(px: float, py: float, vx: float, vy: float, tx: float, ty: float,
                    tvx: float, tvy: float, radius: float, limit: float) -> float | None:
    # First time two linear tracks come within combined collision radii.
    x, y, dx, dy = tx - px, ty - py, tvx - vx, tvy - vy
    c = x*x + y*y - radius*radius
    if c <= 0:
        return 0.0
    a = dx*dx + dy*dy
    if a < 1e-9:
        return None
    b = 2.0*(x*dx + y*dy)
    disc = b*b - 4*a*c
    if disc < 0:
        return None
    t = (-b - math.sqrt(disc))/(2*a)
    return t if 0.0 <= t <= limit else None


class EngineTargeting:
    """Add Lua target priorities and conservative in-flight shot estimates.

    ``update`` returns a mapping keyed by entity address. Pass that mapping as
    Planner.decide(target_info=...) alongside EngineWorld's bodies and targets.
    ``last_report`` describes fields whose values were estimated.
    """

    def __init__(self) -> None:
        self.last_report: dict[str, Any] = {}

    def reset(self) -> None:
        self.last_report = {}

    def update(self, player: dict, entities: list[dict], world: dict, dt: float) -> dict[int, dict]:
        player_address = _addr(player.get("address"))
        if player_address is None:
            self.reset()
            return {}
        by_address = {a: e for e in entities if isinstance(e, dict)
                      if (a := _addr(e.get("address"))) is not None}
        targets = [dict(t) for t in world.get("targets", []) if isinstance(t, dict)]
        target_by_addr = {_addr(t.get("address")): t for t in targets if _addr(t.get("address")) is not None}
        child_counts: dict[int, int] = {}
        for entity in entities:
            if not isinstance(entity, dict) or entity.get("type", -1) < 10 or entity.get("dead"):
                continue
            parent = _addr(entity.get("parent")) or _addr(entity.get("spawner"))
            if parent in target_by_addr and parent != _addr(entity.get("address")):
                child_counts[parent] = child_counts.get(parent, 0) + 1

        priority_by_addr: dict[int, dict] = {}
        for target in targets:
            address = _addr(target.get("address"))
            if address is None:
                continue
            typ, variant = target.get("type"), target.get("variant")
            role, priority = None, 0.0
            if (typ,variant) in REVIVERS or (typ,None) in REVIVERS:
                role, priority = "reviver", 16.0
            elif typ in REGENERATORS:
                role, priority = "regenerator", 8.0
                health = _num(target.get("health"), math.inf)
                damage = _num((player.get("stats") or {}).get("damage"), 3.5)
                if health <= 2.0*damage:
                    priority = 14.0
            elif typ in SUMMONERS:
                role, priority = "summoner", 10.0
            elif typ == _SPECIAL_COIN and variant==2:
                role, priority = "timed bomb coin", 16.0 if "pulsebomb" in str(target.get("animation", "")).casefold() else 10.0
            children = child_counts.get(address, 0)
            if children:
                priority = max(priority, min(14.0, 8.0 + children))
                role = role or "observed summoner"
            target["strategic_role"] = role
            target["priority"] = priority
            target["incoming_damage"] = 0.0
            target["incoming_damage_estimated"] = False
            priority_by_addr[address] = target

        # Approximate in-flight friendly tear impacts from current entity
        # positions. One tear is assigned to only its earliest predicted hit.
        # Damage/height/flags are not fully represented in the current reader.
        shots: list[dict] = []
        stats = player.get("stats") or {}
        fallback_damage = max(0.0, _num(stats.get("damage"), 0.0))
        for entity in entities:
            if not isinstance(entity, dict) or entity.get("type") != 2 or entity.get("dead"):
                continue
            if not _owned(entity, by_address, player_address):
                continue
            speed = math.hypot(_num(entity.get("vx")), _num(entity.get("vy")))*30.0
            if speed < 1.0:
                continue
            tear = entity.get("tear") or {}
            limit = _num(tear.get("range"), 0.0) / speed if _num(tear.get("range"), 0.0) > 0 else 2.0
            limit = min(3.0, max(0.05, limit))
            shots.append({"entity": entity, "x": _num(entity.get("x")), "y": _num(entity.get("y")),
                          "vx": _num(entity.get("vx"))*30.0, "vy": _num(entity.get("vy"))*30.0,
                          "radius": max(1.0, _num(entity.get("radius"), 5.0)), "limit": limit,
                          "damage": max(0.0, _num(entity.get("collision_damage"), fallback_damage))})

        assigned: dict[int, tuple[float, float]] = {}
        for shot in shots:
            best: tuple[float, int] | None = None
            for address, target in priority_by_addr.items():
                t = _intercept_time(shot["x"], shot["y"], shot["vx"], shot["vy"],
                    _num(target.get("x")), _num(target.get("y")),
                    _num(target.get("vx"))*30.0, _num(target.get("vy"))*30.0,
                    shot["radius"] + max(0.0, _num(target.get("radius"))), shot["limit"])
                if t is not None and (best is None or t < best[0]):
                    best = (t, address)
            if best is not None:
                address = best[1]
                old = assigned.get(address, (0.0, 0.0))
                assigned[address] = (old[0] + shot["damage"], min(old[1], best[0]) if old[1] else best[0])

        for address, (damage, flight) in assigned.items():
            target = priority_by_addr[address]
            target["incoming_damage"] = damage
            target["incoming_damage_estimated"] = True
            target["incoming_flight_seconds"] = flight
            hp = _num(target.get("health"), 0.0)
            if hp > 0 and damage >= hp:
                target["priority"] = max(0.0, target["priority"] - 4.0)

        result = {}
        for address, target in priority_by_addr.items():
            # Planner currently indexes target_info by Body.id; EngineWorld uses
            # the native address for this id unless seed/index fallback occurs.
            result[address] = {"address": address, "health": _num(target.get("health"), 0.0),
                "incoming_damage": _num(target.get("incoming_damage")),
                "incoming_damage_estimated": bool(target.get("incoming_damage_estimated")),
                "incoming_flight_seconds": target.get("incoming_flight_seconds"),
                "priority": _num(target.get("priority")), "strategic_role": target.get("strategic_role"),
                "player_damage": fallback_damage}
        self.last_report = {"shots_considered": len(shots), "targets_scored": len(result),
            "incoming_damage_method": "linear owned-tear intercept; estimated damage",
            "missing": ["shot damage modifiers/height/flags", "already-registered damage events",
                        "enemy child ownership beyond direct parent/spawner", "revival animation state"]}
        return result
