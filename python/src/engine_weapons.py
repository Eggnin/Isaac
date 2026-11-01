"""Weapon profiles and cardinal input timing from caller-supplied read-only snapshots."""
from __future__ import annotations

import math
from typing import Any
from engine_data import ENUMS
from shot_geometry import shot_traits

WEAPON_NAMES = {
    1: "tears", 2: "brimstone", 3: "tech_laser", 4: "knife",
    5: "bombs", 6: "rockets", 7: "monstros_lung", 8: "ludovico",
    9: "tech_x", 10: "bone", 11: "notched_axe", 12: "urn_of_souls",
    13: "spirit_sword", 14: "fetus", 15: "whip",
}
CHARGED_TYPES = {2, 4, 7, 9, 10, 13, 14}
_FALLBACK_MULTIPLIER = {4: 4.0, 9: 3.0, 14: 1.0}
_CARDINAL = {"up", "down", "left", "right",'up+right','up+left','down+right','down+left'}

def _keys(direction):
    return set(direction.split('+')) if direction else set()
_LASER_TYPE = 7
_BRIM_VARIANTS = {1, 6, 9, 11, 12, 14, 15}
_LILITH_IDS = {13}


def _finite(value: Any) -> bool:
    return isinstance(value, (int, float)) and math.isfinite(float(value))


def _number(value: Any, default: float | None = None) -> float | None:
    return float(value) if _finite(value) else default


def _address(value: Any) -> int | None:
    if isinstance(value, dict):
        value = value.get("address")
    return value if isinstance(value, int) and value > 0 else None


def _collectible_counts(player: dict) -> dict[int, int]:
    result = {}
    for key, count in (player.get("collectibles") or {}).items():
        try:
            item_id, amount = int(key), int(count)
        except (TypeError, ValueError):
            continue
        if amount > 0:
            result[item_id] = amount
    return result


def _weapon_channel(weapon: dict, owner: str, max_fire_delay: float | None) -> dict:
    kind = weapon.get("type")
    name = WEAPON_NAMES.get(kind) if isinstance(kind, int) else None
    charge = _number(weapon.get("charge"))
    maximum = _number(weapon.get("max_charge"))
    exact_zero = maximum == 0.0
    if maximum is not None and maximum <= 0:
        maximum = None
    measured = charge is not None and maximum is not None
    charged = not exact_zero and (kind in CHARGED_TYPES or measured)
    estimated_seconds = None
    if charged and not measured and max_fire_delay is not None and max_fire_delay >= 0:
        estimated_seconds = max(0.12, (max_fire_delay + 1.0) * _FALLBACK_MULTIPLIER.get(kind, 1.0) / 30.0)
    return {
        "owner": owner, "owner_address": _address(weapon.get("owner")),
        "slot": weapon.get("slot"), "type": kind if isinstance(kind, int) else None,
        "name": name, "supported": name is not None, "charge": charged,
        "charge_value": charge, "max_charge": maximum, "charge_measured": measured,
        "charge_estimated": charged and not measured,
        "estimated_charge_seconds": estimated_seconds,
        "fire_delay": _number(weapon.get("fire_delay")),
        "max_fire_delay": _number(weapon.get("max_fire_delay"), max_fire_delay),
        "num_fired": weapon.get("num_fired"), "main_entity": _address(weapon.get("main_entity")),
        "modifiers": weapon.get("modifiers"), "direction": weapon.get("direction"),
        "exact_max_charge": weapon.get("max_charge_exact", measured),
    }


def make_profile(player: dict, entities: list[dict]) -> dict:
    """Build an input profile from a read-only engine snapshot, without process access."""
    stats = player.get("stats") or {}
    player_address = _address(player.get("address"))
    px, py = _number(player.get("x")), _number(player.get("y"))
    position = (px, py) if px is not None and py is not None else None
    max_fire_delay = _number(stats.get("max_fire_delay"))
    channels = [_weapon_channel(w, "player", max_fire_delay) for w in player.get("weapons", [])
                if isinstance(w, dict)]

    owned_familiars: list[tuple[dict, dict]] = []
    companions=[]
    own_addresses = {player_address} if player_address is not None else set()
    for entity in entities:
        if not isinstance(entity, dict) or entity.get("type") != 3:
            continue
        familiar = entity.get("familiar") if isinstance(entity.get("familiar"), dict) else entity
        owner = _address(familiar.get("owner", entity.get("owner")))
        address = _address(entity.get("address"))
        if owner is None or player_address is None or owner != player_address or entity.get("dead", False):
            continue
        owned_familiars.append((entity, familiar))
        if address is not None:
            own_addresses.add(address)
        weapon = familiar.get("weapon", entity.get("weapon"))
        if isinstance(weapon, dict):
            channel=_weapon_channel(weapon, "familiar", max_fire_delay)
            channel['owner_address']=address
            channel['origin']=(entity['x'],entity['y'])
            channels.append(channel)
        familiar_names=ENUMS['FamiliarVariant'];variant=entity.get('variant')
        kind=next((name for name in ('LIL_BRIMSTONE','LIL_MONSTRO','LIL_ABADDON','LIL_SPEWER','LIL_GURDY') if familiar_names.get(name)==variant),None)
        if kind:
            animation=entity.get('animation','').lower();cooldown=familiar.get('fire_cooldown')
            ready=isinstance(cooldown,(int,float)) and (
                animation=='charging' and cooldown>=30 if kind=='LIL_GURDY' else 'charge' in animation and cooldown<=0)
            companions.append({'kind':kind,'origin':(entity['x'],entity['y']),'ready':ready,
                               'range':650 if kind=='LIL_BRIMSTONE' else 85 if kind=='LIL_ABADDON' else 180 if kind=='LIL_SPEWER' else 260,
                               'speed':450 if kind=='LIL_GURDY' else 270 if kind=='LIL_MONSTRO' else 300,
                               'instantaneous':kind=='LIL_BRIMSTONE','area':kind=='LIL_ABADDON'})

    character = player.get("character")
    is_lilith = ((isinstance(character, str) and character.casefold() in {"lilith", "player_lilith"})
                 or (isinstance(character, int) and character in _LILITH_IDS))
    shooter_origin = position
    shooter_familiar = None
    if is_lilith:
        candidates = [(entity, familiar) for entity, familiar in owned_familiars
                      if entity.get("variant") == 80 and _number(entity.get("x")) is not None
                      and _number(entity.get("y")) is not None]
        if candidates:
            entity, _ = min(candidates, key=lambda pair: _address(pair[0].get("address")) or 0)
            shooter_origin = (float(entity["x"]), float(entity["y"]))
            shooter_familiar = _address(entity.get("address"))
        else:
            shooter_origin = None

    unsupported_channels = [channel for channel in channels if not channel["supported"]]
    supported = bool(channels) and not unsupported_channels
    can_shoot = (stats.get("can_shoot") is True or bool(owned_familiars)) and supported and shooter_origin is not None
    tear_range = _number(stats.get("tear_range"), 260.0) or 260.0
    attack_range = max(1.0, tear_range)
    types = {channel["type"] for channel in channels}
    if types.intersection({2,3}) and not (1 in types and 2 not in types):
        attack_range = max(attack_range, 1300.0)
    if types.intersection({10, 13}):
        attack_range = min(attack_range, 90.0)
    if 4 in types:
        attack_range = max(60.0, min(650.0, attack_range * 0.6))

    shot_speed = _number(stats.get("shot_speed"), 1.0)
    projectile_speed = max(4.0, (shot_speed or 1.0) * 10.0) * 30.0
    speed_estimated = "shot_speed" not in stats or not _finite(stats.get("shot_speed"))
    counts = _collectible_counts(player)
    if 2 in types and player.get('character')==7 and not counts.get(118,0):
        attack_range=max(40,tear_range*.6)
    # Chocolate Milk and Cursed Eye turn ordinary tears into release-fired
    # charge channels. Preserve exact native readiness when available.
    tear_charge_factor = (4.0 if counts.get(316, 0) and not any(c["type"] == 7 for c in channels)
                          else 2.5 if counts.get(69, 0) else None)
    if tear_charge_factor is not None:
        for channel in channels:
            if channel["owner"] == "player" and channel["type"] == 1:
                channel["charge"] = True
                if not channel["charge_measured"]:
                    delay = channel.get("max_fire_delay")
                    channel["charge_estimated"] = True
                    channel["estimated_charge_seconds"] = (
                        max(0.12, (delay + 1.0) * tear_charge_factor / 30.0)
                        if _finite(delay) and delay >= 0 else None)
    epic = counts.get(168, 0) > 0
    cursor = None
    aim_origin = None
    if counts.get(572, 0) and types.intersection({2, 3}):
        cursor = {"kind": "occult", "collectible_id": 572}
    elif counts.get(394, 0) and not epic:
        cursor = {"kind": "marked", "collectible_id": 394}
    elif counts.get(329, 0) or 8 in types:
        cursor = {"kind": "ludovico", "collectible_id": 329 if counts.get(329, 0) else None}
    elif epic:
        cursor = {"kind": "epic_fetus", "collectible_id": 168}
    if cursor:
        controlled={player.get('marked_target')}|{w.get('main_entity') for w in player.get('weapons',[])}
        focus=next((e for e in entities if e.get('address') in controlled and
                    e.get('type') in (2,4,7,8,1000) and not e.get('dead')),None)
        if not focus and cursor['kind'] in ('marked','occult'):
            variant=ENUMS['EffectVariant'].get('TARGET' if cursor['kind']=='marked' else 'OCCULT_TARGET')
            focus=next((e for e in entities if e.get('type')==1000 and e.get('variant')==variant and
                        (e.get('parent') or e.get('spawner')) in own_addresses and not e.get('dead')),None)
        if focus:
            if focus.get('type')==7 and (focus.get('laser') or {}).get('endpoint'):
                aim_origin=tuple(focus['laser']['endpoint'])
            else:
                aim_origin=(focus['x'],focus['y'])
        cursor['focus_available']=focus is not None
        cursor['velocity']=(focus.get('vx',0)*30,focus.get('vy',0)*30) if focus else (0.,0.)

    brim_main_entities = {channel["main_entity"] for channel in channels
                          if channel["type"] == 2 and channel["main_entity"] is not None}
    beam_records = []
    for entity in entities:
        if not isinstance(entity, dict) or entity.get("type") != _LASER_TYPE:
            continue
        address = _address(entity.get("address"))
        owner = _address(entity.get("spawner") or entity.get("parent"))
        if entity.get("dead", False) or owner not in own_addresses:
            continue
        laser = entity.get("laser") if isinstance(entity.get("laser"), dict) else {}
        # Link the ray to a type-2 main entity so a separate continuous laser
        # cannot keep the Brimstone charge gate closed.
        if entity.get("variant") not in _BRIM_VARIANTS or laser.get('is_circle') or laser.get('disable_follow_parent'):
            continue
        if brim_main_entities and address not in brim_main_entities:
            continue
        if not brim_main_entities and entity.get('variant')==9 and 3 in types:
            continue
        timeout = _number(laser.get("timeout"))
        shrinking = laser.get("shrink") is True
        endpoint = laser.get("endpoint")
        if timeout is not None and timeout <= 0 and not shrinking and endpoint is None:
            continue
        beam_records.append({"address": address, "timeout_seconds": max(0.0, timeout or 0.0) / 30.0,
                             "shrink": shrinking, "endpoint": endpoint})
    brim_tail_active = bool(beam_records)
    knives=[e['knife'] for e in entities if e.get('type')==8 and e.get('knife') and
            (e.get('spawner') or e.get('parent')) in own_addresses and not e.get('dead')]
    knife_reaches=[k['max_distance']/k['charge'] for k in knives if k['charge']>.05 and k['max_distance']>0]
    if 4 in types and knife_reaches:attack_range=max(60,min(650,max(knife_reaches)))
    if 2 in types:
        finite=[(e.get('laser') or {}).get('max_distance',0) for e in entities if e.get('type')==7 and
                (e.get('spawner') or e.get('parent')) in own_addresses and not (e.get('laser') or {}).get('is_circle')]
        finite=[r for r in finite if r>0]
        if finite:attack_range=max(finite)
    estimated_channels = [c for c in channels if c["charge_estimated"]]
    if any(c["estimated_charge_seconds"] is not None for c in estimated_channels):
        estimate_note = 'charge timing estimated from max_fire_delay'
    elif estimated_channels:
        estimate_note = 'charge release timing unavailable'
    else:
        estimate_note = None

    primary_types = {c["type"] for c in channels if c["owner"] == "player"}
    all_types = {c["type"] for c in channels}
    has_knife = 4 in all_types
    has_tech_x = 9 in all_types
    has_melee = bool(all_types.intersection({10, 13}))
    has_brim = 2 in all_types
    has_laser = 3 in all_types
    chocolate_milk = counts.get(69, 0) > 0
    soy_or_almond = counts.get(330, 0) > 0 or counts.get(561, 0) > 0
    occult_beam = counts.get(572, 0) > 0 and bool(all_types.intersection({2, 3})) and not (has_knife or has_tech_x or has_melee)
    mixed_laser = ((counts.get(152, 0) > 0 and not (has_knife or has_tech_x or has_melee)) or
                   (1 in all_types and has_laser and not (has_knife or has_tech_x or has_melee or
                    chocolate_milk or has_brim)))
    if mixed_laser:
        attack_range = max(attack_range, 1300.0)
    for channel in channels:
        # Do not apply a player's effects to unrelated familiar weapon slots,
        # or promote a random flagged tear into a permanent player effect.
        flags=int(player.get('tear_flags',0)) if channel['owner']=='player' else 0
        channel.update(shot_traits(channel['type'],flags))
        channel['tear_flags']=flags
        channel['tear_flags_source']='native_player' if channel['owner']=='player' and 'tear_flags' in player else 'unknown'
    explosive = bool(counts.get(149, 0) or counts.get(52, 0) or counts.get(168, 0) or 5 in all_types)
    automatic = occult_beam or 14 in all_types or (has_brim or has_tech_x) and soy_or_almond
    # Reader's weapon array includes all player slots; familiars may add a
    # second charge channel. Exact native max-charge expressions win whenever
    # supplied. The fallback only labels timing as an estimate.
    charge_channels = [c for c in channels if c["charge"]]
    cursor_kind = cursor.get("kind") if cursor else None
    if cursor_kind == "occult" and not occult_beam:
        cursor_kind = "occult_steer" if 1 in all_types and not (has_knife or has_tech_x or has_melee) else None
    return {
        "attack_range": attack_range,
        "companions":companions,
        "attack_now":any((c.get('fire_delay') or 0)<=1 for c in channels if c['owner']=='player'),
        "projectile_speed": projectile_speed,
        "projectile_speed_estimated": speed_estimated,
        "charge": any(channel["charge"] for channel in channels),
        "weapons": channels,
        "unsupported": [{"owner": c["owner"], "type": c["type"]} for c in unsupported_channels],
        "supported": supported,
        "can_shoot": can_shoot,
        "shooter_origin": shooter_origin,
        "aim_origin": aim_origin,
        "shooter_familiar": shooter_familiar,
        "cursor": cursor,
        "cursor_velocity":cursor.get('velocity',(0.,0.)) if cursor else (0.,0.),
        "cursed_eye":counts.get(316,0)>0,
        "knife_flying":any(k['is_flying'] for k in knives),
        "brim_tail_active": brim_tail_active,
        "brim_tail_timeout": max((b["timeout_seconds"] for b in beam_records), default=0.0),
        "brim_tail_shrinking": any(b["shrink"] for b in beam_records),
        "brim_tail_entities": beam_records,
        "max_fire_delay": max_fire_delay,
        "charge_estimate_note": estimate_note,
        "weapon_types": sorted(t for t in all_types if isinstance(t, int)),
        "primary_weapon_types": sorted(t for t in primary_types if isinstance(t, int)),
        "charge_channels": len(charge_channels), "automatic": automatic,
        "continuous_charge": 14 in all_types, "mixed_laser": mixed_laser,
        "instantaneous": bool((has_brim or has_laser and not mixed_laser or has_melee) and not mixed_laser),
        "omnidirectional": bool(has_knife or has_tech_x or has_melee or cursor is not None or counts.get(465, 0)),
        "explosive": explosive, "occult_beam": occult_beam,
        "cursor_kind": cursor_kind,
        "cursor_control": (cursor_kind in {"marked", "ludovico", "epic_fetus", "occult", "occult_steer"}
                           and bool(cursor and cursor.get("focus_available"))),
        "tear_range_estimated": "tear_range" not in stats or not _finite(stats.get("tear_range")),
        "shot_speed_source": "player stats; frame units converted at 30 Hz",
        "missing_mechanics": ["full engine multi-shot geometry", "exact engine inheritance before observed calibration",
                              "unobserved eye displacement", "damage callbacks and special projectile modifiers",
                              "continuous analog aim with keyboard-only output"],
    }


class EngineWeaponController:
    """Translate a chosen cardinal aim into arrow-key states and charge releases."""
    def __init__(self) -> None:
        self.reset()

    def reset(self) -> None:
        self._held_direction: str | None = None
        self._held_seconds = 0.0
        self._await_charge_reset = False
        self._release_seconds = 0.0
        self._beam_tail_elapsed = 0.0
        self._beam_tail_expired = False
        self._companion_release_cooldown=0.
        self._release_align=0
        self.last_report={}

    def _finish(self,keys,reason):
        self.last_report={'reason':reason,'keys':sorted(keys),'held_direction':self._held_direction,
                          'held_seconds':self._held_seconds,'await_charge_reset':self._await_charge_reset,
                          'release_seconds':self._release_seconds}
        return keys

    @staticmethod
    def _is_ready(channel: dict, held_seconds: float, fraction: float = 1.) -> bool:
        if channel.get("charge_measured"):
            charge, maximum = channel.get("charge_value"), channel.get("max_charge")
            return (_finite(charge) and _finite(maximum) and maximum > 0
                    and charge >= maximum*fraction - 0.0001)
        estimate = _number(channel.get("estimated_charge_seconds"))
        return estimate is not None and held_seconds >= estimate

    def update(self, profile: dict, fire: str | None, target_present: bool, dt: float) -> set[str]:
        if fire is not None and fire not in _CARDINAL:
            raise ValueError("fire must be up/down/left/right or None")
        dt = max(0.0, float(dt)) if _finite(dt) else 0.0
        aimed=fire is not None and profile.get('predicted_hit',True)
        self._companion_release_cooldown=max(0.,self._companion_release_cooldown-dt)
        if target_present is not True or profile.get("can_shoot") is not True or profile.get("supported") is not True:
            self.reset()
            return self._finish(set(),'no_target' if not target_present else 'shooting_disabled_or_unsupported')
        channels = [c for c in profile.get("weapons", [])
                    if isinstance(c, dict) and c.get("supported") is True]
        if not channels:
            self.reset()
            return self._finish(set(),'no_supported_channels')
        if profile.get('knife_flying'):
            self._held_seconds=0.
            self._held_direction=fire or self._held_direction
            return self._finish(_keys(self._held_direction),'knife_in_flight')
        # Fetus fires continuously while its direction is held. Its native
        # charge counter describes the weapon state, not a release-to-fire gate.
        charge_channels = [c for c in channels if c.get("charge") is True]
        normal_channels = [c for c in channels if c.get("charge") is not True]
        player_charge_channels = [c for c in charge_channels if c.get("owner") == "player"]
        if profile.get('automatic'):player_charge_channels=[]
        # A charged familiar is auxiliary; it must not starve ordinary player fire.
        if not player_charge_channels:
            ready=any(c.get('ready') for c in profile.get('companions',[])) or any(self._is_ready(c,self._held_seconds) for c in charge_channels)
            if (ready and profile.get('companion_release',True) and self._held_direction==fire and self._held_seconds>=1/30 and
                self._companion_release_cooldown<=0 and (not profile.get('attack_now') or not profile.get('predicted_hit'))):
                self._companion_release_cooldown=3/30;self._held_seconds=0.;return self._finish(set(),'companion_charge_release')
            if fire is not None:
                self._held_direction=fire;self._held_seconds+=dt;return self._finish(_keys(fire),'normal_attack')
            self._held_seconds=0.;return self._finish(set(),'no_safe_aim')

        has_brimstone = any(c.get("type") == 2 for c in charge_channels)
        beam_active = has_brimstone and profile.get("brim_tail_active") is True
        if beam_active:
            self._held_seconds=0.;self._release_seconds=0.
            return self._finish(set(),'preserve_brimstone_tail')
        else:
            self._beam_tail_elapsed = 0.0
            self._beam_tail_expired = False

        if self._release_seconds > 0:
            self._release_seconds = max(0.0, self._release_seconds - dt)
            return self._finish(set(),'charge_release_interval')
        observed_channels = [c for c in player_charge_channels if c.get("charge_measured") is True]
        critical = player_charge_channels
        all_ready = all(self._is_ready(c, self._held_seconds,profile.get('charge_fraction',1.) if c.get('type')==4 else 1.) for c in critical)
        if self._await_charge_reset:
            if observed_channels and all(self._is_ready(c, self._held_seconds) for c in observed_channels):
                return self._finish(set(),'await_native_charge_reset')
            self._await_charge_reset = False
        previous=self._held_direction
        if fire is None and profile.get('charge'):
            fire=profile.get('precharge_direction') or self._held_direction
        if fire is not None:
            self._held_direction = fire
        if self._held_direction is not None:
            self._held_seconds += dt
        if all_ready and fire is not None and aimed:
            if previous is not None and previous!=fire and self._release_align<2:
                self._release_align+=1
                return self._finish(_keys(fire),'align_before_charge_release')
            self._release_align=0
            self._held_seconds = 0.0
            self._release_seconds = (4.0 if profile.get('cursed_eye') else 1.0) / 30.0
            self._await_charge_reset = bool(observed_channels)
            return self._finish(set(),'charge_release')
        if fire is None and normal_channels:
            return self._finish(set(),'mixed_channels_no_aim')
        return self._finish(_keys(self._held_direction),'charging_or_waiting_safe_release')
