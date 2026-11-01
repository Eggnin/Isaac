# Attack / target behavior migration

This migration uses only EngineReader snapshots and ordinary arrow-key input. It ports the behavior that can be grounded in `online/assist-source/weapons.lua`, `online/assist-source/target.lua`, and `online/assist-source/world.lua`; it does not call Lua or game functions.

## Source mapping

| Lua behavior | Python location/status |
|---|---|
| Weapon type names and unknown-type fail-closed | `engine_weapons.WEAPON_NAMES`, channel `supported`; unknown channels disable attack input. Types 1–15 have labels. |
| Player weapon slots 1–5, charge/max, fire delay, modifiers, direction, main entity | `make_profile` converts reader `weapons`; exact `max_charge` from `native_getters` is preferred. |
| Familiar weapon channels and owner association | `make_profile` reads owned familiar `familiar.weapon`; all exact charge channels gate a release. Familiar animation-based readiness is unavailable. |
| Lilith Incubus (variant 80) launch origin | `shooter_origin` uses the owned Incubus position; missing Incubus fails closed. |
| Brimstone/laser/knife/melee/tear/Tech X/bomb/rocket/Monstro's Lung/Ludovico/Fetus families | Type traits, range and attack-mode flags in `make_profile`. Fetus is continuous-hold; measured charge is never treated as release-to-fire. |
| Brimstone released-beam tail protection | `brim_tail_*` identifies owned laser tied to Brimstone main entity; controller waits a bounded observed tail interval to avoid immediate truncation. |
| Chocolate Milk, Cursed Eye, Tech 2, Occult, Marked, Ludovico, Epic Fetus, Ipecac, Dr. Fetus, Soy/Almond Milk, Analog Stick | Collectible IDs are mapped in `make_profile` to charge/automatic/mixed/explosive/cursor/omni flags. Cursor modes remain subject to focus availability from observed entities. |
| Occult beam and cursor-steered beam/tears | `cursor_kind` distinguishes `occult`, `occult_steer`, `marked`, `ludovico`, `epic_fetus`; Planner must use `cursor_mode` and only aim when the corresponding focus entity is observed. |
| Multi-weapon / mixed laser channels | Every player slot and owned familiar weapon is retained as a channel. Current Planner accepts one range/speed and one direction; exact per-channel aim weighting is not yet ported. |
| Charge pre-hold, measured release, post-release delay, tail guard | `EngineWeaponController.update` holds the chosen arrow, releases only when measured native channels are ready, and waits for observed charge reset. `max_fire_delay` fallback is explicitly marked estimated. |
| Automatic Brimstone/Tech X under Soy/Almond Milk; automatic Fetus | Profile `automatic` keeps the selected cardinal input held instead of applying release-to-fire charge gating. |
| Auxiliary charge babies with ordinary player fire | Familiar charge channels are exposed and reported, but they do not block ordinary player firing; exact baby animation readiness still is not available. |
| No target / cannot shoot / unsupported weapon | Controller releases all arrow keys. |
| Target binding and multiplayer safety | `online/assist-source/target.lua` documents strict selected-player binding, seed changes disabling assist, and multiplayer opting out until explicit selection. External EngineReader currently selects controller index 0; it does not implement F8 player binding. |
| Reviver, regenerator, summoner, bomb coin target priority | `EngineTargeting.update` attaches roles/priorities for the same source entity classes/variants and adds observed-child summoner priority. |
| In-flight damage de-duplication | `EngineTargeting` assigns each current owned tear to its earliest predicted target once per snapshot and supplies `incoming_damage` to Planner. This is an estimate, not Lua's persistent tracked-shot/damage accounting. |

## Known missing or estimated data

EngineReader currently supplies stats, collectibles, weapon channels, entity position/velocity/radius/health, parent/spawner, basic tear range/flags, familiar ownership, laser endpoints, animation, and target pointer. It does not currently supply `GetTearMovementInheritance`, `GetTearDisplacement`, `GetMultiShotParams`, Stye eye alternation, exact projectile damage after modifiers, shot height/fall behavior, familiar animation/cooldown readiness, knife live reach, or Occult/Marked target-effect velocity. Those Lua behaviors are not fabricated here. `projectile_speed` assumes reader `shot_speed * 10 * 30` pixels/second; tear inheritance and tear speed calibrations are absent. Brimstone/beam range uses a room-scale estimate unless a measured weapon laser range is available. Melee, knife, and generic beam ranges are conservative estimates from source constants.

Incoming damage uses linear current tear position/velocity, radius, and a damage fallback from player damage; it has no persistent event history and cannot reliably model piercing, split tears, homing, lobbed tears, or damage-over-time. A low confidence estimate should not be used to suppress a shot unless the Planner treats `incoming_damage_estimated` explicitly. Summoner child counts use direct parent/spawner links only. Revive animation and current revival state are unavailable.

## Integration

1. Call `profile = make_profile(local_player, snapshot['entities'])` once a complete snapshot is available.
2. Call `target_info = targeting.update(local_player, snapshot['entities'], world, dt)`; pass it to `Planner.decide(..., target_info=target_info, cursor_mode=bool(profile['cursor_control']), shooter_origin=profile['shooter_origin'], projectile_speed=profile['projectile_speed'], attack_range=profile['attack_range'])`. `aim_origin` is separate from the physical launch `shooter_origin`; the present Planner has no cursor target-effect velocity input, so use cursor steering only when focus is present.
3. Pass `decision.fire`, whether world targets exist, and elapsed seconds to `EngineWeaponController.update(profile, ..., dt)`. The result is the set of arrow keys to hold. Reset/release it on pause, focus loss, stale frame, incomplete snapshot, or no targets.
4. Keep `profile['unsupported']`, `profile['missing_mechanics']`, `profile['charge_estimate_note']`, and `EngineTargeting.last_report` visible in diagnostics. Do not describe cursor/charge behavior as precise when the snapshot lacks its source fields.

The legacy `isaac-access-assist/` directory contains `weapons.lua` but no `target.lua`; target binding semantics therefore come from `online/assist-source/target.lua` only.
