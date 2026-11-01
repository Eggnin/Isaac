# Reader field map (generated from the current tree)

Source: fields assigned in `cpp/src/reader.cpp`, consumers found by symbol search in
`planner.cpp`, `model.cpp`, `semantics.cpp`, `control.cpp`, `gui_win32.cpp`,
`weapons.cpp` and the inline bodies of `model.hpp`. The JSON lists in `model.hpp`
are excluded so that serialization alone is not counted as consumption.

- decision: the planner/model path can change a chosen action or threat.
- model-only: used by geometry or observation helpers, not directly by a decision.
- semantics-only: feeds the mechanism observation and warning layer.
- unused: captured and logged but read by no consumer.

## decision (98)

| field | consumers |
| --- | --- |
| `address` | planner model semantics model:369 |
| `age` | planner model |
| `ai_i1` | planner semantics |
| `ai_i2` | planner semantics |
| `ai_v1` | planner semantics model:59,381 |
| `ai_v2` | planner model semantics model:59,381 |
| `angle` | planner |
| `animation_frame` | planner model semantics |
| `animation_playing` | planner model semantics |
| `animation_state_known` | planner model semantics |
| `animation_update_delay` | planner model |
| `birth` | planner model model:328 |
| `bomb_attached` | planner |
| `bomb_explosion_fields_known` | planner model |
| `bomb_hold_state` | planner |
| `champion` | planner semantics |
| `child` | planner semantics |
| `circle` | planner |
| `collision` | planner model gui_win32 model:207 |
| `damage` | planner model model:64 |
| `dead` | planner model |
| `endpoint` | planner semantics model:59,114,119,120,121,122 |
| `fall_accel` | planner |
| `fall_speed` | planner |
| `flags` | planner model gui_win32 model:210 |
| `friction` | planner model |
| `friendly` | planner semantics gui_win32 |
| `geometry_valid` | planner semantics |
| `grid_collision` | planner model |
| `height` | planner semantics gui_win32 model:63,65,208 |
| `height_known` | planner |
| `held` | planner gui_win32 |
| `hostile_source` | planner |
| `hp` | planner model semantics |
| `invulnerable` | planner model semantics |
| `laser_damage_disabled` | planner |
| `laser_first_update` | planner |
| `laser_follow` | planner |
| `laser_homing_radius` | planner |
| `laser_homing_type` | planner |
| `laser_link` | planner |
| `laser_max_distance` | planner |
| `laser_native_end` | planner model:88 |
| `laser_offset` | planner model:68 |
| `laser_one_hit` | planner |
| `laser_origin` | planner model:88 |
| `laser_radius` | planner |
| `laser_rotating` | planner |
| `laser_rotation_degrees` | planner |
| `laser_rotation_delay` | planner |
| `laser_rotation_speed` | planner |
| `laser_sample_count` | planner |
| `laser_sampled` | planner |
| `laser_shrink` | planner |
| `native_index` | planner |
| `no_target` | planner |
| `overlay_animation_frame` | planner model semantics |
| `overlay_animation_playing` | planner model semantics |
| `owner` | planner semantics |
| `parent` | planner model semantics |
| `player_action_bomb` | planner |
| `player_action_state` | planner |
| `player_held_known` | planner |
| `pos` | planner model semantics gui_win32 model:59,132,134,150,159,211,405,536 |
| `position_offset` | planner model:68 |
| `projectile_accel` | planner |
| `projectile_age` | planner |
| `projectile_change_flags` | planner |
| `projectile_change_timeout` | planner |
| `projectile_change_velocity` | planner |
| `projectile_cooldown` | planner semantics |
| `projectile_curve` | planner |
| `projectile_delay` | planner semantics |
| `projectile_flags` | planner |
| `projectile_homing_strength` | planner |
| `projectile_orbit_distance` | planner |
| `projectile_parent_velocity` | planner model:59 |
| `projectile_phase` | planner |
| `radius` | planner model semantics gui_win32 model:118,150,159,536,537 |
| `seed` | planner semantics model:439 |
| `shot_speed_stat` | planner |
| `slow_countdown` | planner |
| `slow_factor` | planner model model:132 |
| `spawner` | planner model semantics |
| `spawner_type` | planner model semantics |
| `speed_multiplier` | planner model semantics |
| `sprite_flip_x` | planner |
| `sprite_scale` | planner model model:89 |
| `sprite_scale_known` | planner model model:89 |
| `state` | planner model semantics model:207,398,432,439 |
| `state_frame` | planner semantics |
| `subtype` | planner model semantics model:439 |
| `target` | planner semantics model:110,122,196,375 |
| `target_pos` | planner model:59 |
| `timeout` | planner model |
| `type` | planner model semantics gui_win32 model:207,320,369,439 |
| `variant` | planner model semantics model:207,439 |
| `vel` | planner model semantics model:59,159,405,536 |

## model-only (14)

| field | consumers |
| --- | --- |
| `animation_events` | model semantics |
| `animation_speed` | model semantics |
| `birth_known` | model |
| `blast_radius` | model |
| `bomb_explosion_damage` | model model:290 |
| `bomb_explosion_radius_scale` | model model:290 |
| `boss_target_mode` | model |
| `effect_state` | model |
| `mass` | model |
| `mass_known` | model |
| `max_hp` | model semantics |
| `overlay_animation_events` | model semantics |
| `sprite_alpha` | model model:89 |
| `sprite_alpha_known` | model model:89 |

## semantics-only (22)

| field | consumers |
| --- | --- |
| `animation_event_history` | semantics |
| `boss_color` | semantics |
| `boss_status_cooldown` | semantics |
| `delirium_attack_angle` | semantics |
| `delirium_attack_id` | semantics |
| `delirium_attack_id_low24` | semantics |
| `delirium_boss_type` | semantics |
| `delirium_boss_variant` | semantics |
| `delirium_cycle_field_15_24` | semantics |
| `delirium_cycle_field_25_34` | semantics |
| `delirium_cycle_id` | semantics |
| `delirium_cycle_low7` | semantics |
| `delirium_layout_valid` | semantics |
| `delirium_remaining_attacks` | semantics |
| `delirium_state` | semantics |
| `delirium_transformation_timer` | semantics |
| `is_boss` | semantics |
| `overlay_animation_event_history` | semantics |
| `pending_damage` | semantics |
| `pending_damage_flags` | semantics |
| `shield_history_capacity` | semantics |
| `shield_strength` | semantics |

## unused (7)

| field | consumers |
| --- | --- |
| `active` | none |
| `bomb_countdown2` | none |
| `bomb_scale` | none |
| `damage_stat` | none |
| `effect_lifespan` | none |
| `exists` | none |
| `laser_shape_kind` | none |

