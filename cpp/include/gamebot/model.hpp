#pragma once
#include <algorithm>
#include <array>
#include <cmath>
#include <cstdint>
#include <limits>
#include <string>
#include <vector>
#include <nlohmann/json.hpp>
#include "room_mechanisms.hpp"

namespace gamebot {
struct Vec {
    double x{}, y{};
    Vec operator+(Vec b) const { return {x+b.x,y+b.y}; }
    Vec operator-(Vec b) const { return {x-b.x,y-b.y}; }
    Vec operator*(double k) const { return {x*k,y*k}; }
    Vec operator/(double k) const { return {x/k,y/k}; }
    double dot(Vec b) const { return x*b.x+y*b.y; }
    double norm() const { return std::hypot(x,y); }
    Vec unit() const { double n=norm(); return n>1e-9?*this/n:Vec{}; }
    bool finite() const { return std::isfinite(x)&&std::isfinite(y); }
};
inline double distance(Vec a, Vec b) { return (a-b).norm(); }
inline constexpr double pi=3.14159265358979323846;
inline Vec rotated(Vec p,double a) { return {p.x*std::cos(a)-p.y*std::sin(a),p.x*std::sin(a)+p.y*std::cos(a)}; }
enum class Move { stay, north, northeast, east, southeast, south, southwest, west, northwest };
enum class Fire { none, up, right, down, left };
inline Vec direction(Move m) {
    switch(m) {
    case Move::north:return {0,-1}; case Move::northeast:return Vec{1,-1}.unit();
    case Move::east:return {1,0};case Move::southeast:return Vec{1,1}.unit();
    case Move::south:return {0,1};case Move::southwest:return Vec{-1,1}.unit();
    case Move::west:return {-1,0};case Move::northwest:return Vec{-1,-1}.unit();default:return {};
    }
}
inline Vec direction(Fire f) { switch(f) {case Fire::up:return {0,-1};case Fire::right:return {1,0};case Fire::down:return {0,1};case Fire::left:return {-1,0};default:return {};} }
struct Cell { int type{}, variant{}, state{}, collision{}; bool destructible{}, danger{}; int native_collision{-1}; };
struct Grid {
    int width{15},height{9},shape{}; bool valid{}; std::vector<Cell> cells;
    Vec native_min{},native_max{};
    Vec clamped_position(Vec point,double margin) const;
    Vec wrapped_position(Vec point,double margin) const;
    bool inside_shape(int index) const;
    bool walkable(Vec p,double radius,bool flying) const;
    double clearance(Vec p,double radius,bool flying) const;
    double hazard_clearance(Vec p,double radius,bool flying) const;
    int native_collision_at(Vec p) const;
    bool shot_clear(Vec a,Vec b) const;
    bool sweep_clear(Vec a,Vec b,double radius,bool flying) const;
    Vec center(int i) const { return {40.0+(i%width)*40.0,120.0+(i/width)*40.0}; }
};
struct AnimationTrigger { uint32_t id{};int frame{}; };
struct PendingDamage { double amount{};uint64_t flags{}; };
struct LaserNode { Vec pos{},incoming{},outgoing{}; };
struct Entity {
    uint32_t address{},seed{},parent{},spawner{},owner{},target{},child{},held{},player_action_bomb{},bomb_attached{},native_index{},laser_link{}; int type{},variant{},subtype{},spawner_type{},player_action_state{-1};
    std::array<uint32_t,4> bomb_tear_flags{},laser_tear_flags{};
    Vec pos{},vel{},endpoint{},target_pos{},ai_v1{},ai_v2{},projectile_parent_velocity{};
    double radius{10},mass{1},damage_stat{-1},damage{},hp{},max_hp{},speed_multiplier{1},projectile_age{},projectile_curve{},projectile_orbit_distance{},projectile_accel{1};
    double angle{},laser_radius{},height{},fall_speed{},fall_accel{};
    double bomb_explosion_damage{},bomb_explosion_radius_scale{1},bomb_scale{1};bool bomb_explosion_fields_known{};
    // Height is read from native +0x410 only for projectiles. A default 0 is
    // not evidence that the entity sits on the floor, and the native damage
    // band (height < -5) would silently drop every predicted projectile path.
    bool height_known{},birth_known{},mass_known{};
    double laser_rotation_degrees{},laser_rotation_speed{},laser_max_distance{},animation_speed{1};
    Vec laser_offset{},position_offset{};
    int laser_rotation_delay{},laser_homing_type{},animation_length{},laser_fade_length{},bomb_countdown2{},bomb_hold_state{};
    bool laser_rotating{},laser_shrink{},laser_first_update{},laser_sampled{},laser_damage_disabled{},animation_looping{};
    int projectile_phase{},projectile_change_timeout{},effect_state{},effect_lifespan{},boss_target_mode{-2};
    double age{},friction{1},projectile_change_velocity{},projectile_homing_strength{};
    uint64_t projectile_change_flags{};
    uint64_t flags{},projectile_flags{};
    int collision{},grid_collision{},state{},state_frame{},projectile_cooldown{},projectile_delay{};
    int boss_status_cooldown{},ai_i1{},ai_i2{},timeout{},birth{},champion{-1},boss_color{-1},shield_history_capacity{};
    uint32_t delirium_boss_type{},delirium_boss_variant{},delirium_attack_id{},delirium_attack_id_low24{};
    uint64_t delirium_cycle_id{};uint32_t delirium_cycle_low7{},delirium_cycle_field_15_24{},delirium_cycle_field_25_34{};
    int delirium_transformation_timer{},delirium_remaining_attacks{},delirium_state{},delirium_attack_angle{};
    double animation_frame{},overlay_animation_frame{},blast_radius{80}; std::string animation,overlay_animation;
    uint32_t animation_events{},animation_event_history{},overlay_animation_events{},overlay_animation_event_history{};
    bool animation_state_known{},animation_playing{},overlay_animation_playing{};
    int overlay_animation_length{},animation_update_delay{};bool overlay_animation_looping{};
    std::vector<std::string> animation_event_names;
    std::vector<AnimationTrigger> animation_triggers,overlay_animation_triggers;
    double pending_damage{};uint64_t pending_damage_flags{};std::vector<PendingDamage> damage_queue;
    std::vector<Vec> laser_points,grid_contacts;
    Vec laser_origin{},laser_native_end{};
    Vec sprite_scale{1,1};double sprite_alpha{1};bool sprite_scale_known{},sprite_alpha_known{};
    std::vector<Vec> laser_history_points;
    std::vector<LaserNode> laser_nodes;
    std::vector<uint32_t> laser_hit_list;
    int laser_sample_count{},laser_shape_kind{};bool laser_one_hit{};
    double laser_homing_radius{};
    double shot_speed_stat{-1};bool player_held_known{};
    double slow_factor{1};int slow_countdown{};
    double shield_strength{};
    bool exists{true},dead{},active{true},friendly{},no_target{},invulnerable{},circle{},geometry_valid{},laser_follow{},hostile_source{},is_boss{},delirium_layout_valid{};
    bool parent_in_snapshot{},child_in_snapshot{},target_in_snapshot{},spawner_in_snapshot{},owner_in_snapshot{};
    bool sprite_flip_x{};
    bool enemy() const { return type>=10&&type<1000; }
    bool alive() const { return exists&&!dead&&active; }
    bool damageable_enemy() const { return alive()&&enemy()&&!friendly&&!no_target&&!invulnerable&&!permanent_room_mechanism(type,variant,subtype)&&hp>0; }
    bool mechanism_host() const { return alive()&&enemy()&&!friendly&&(invulnerable||permanent_room_mechanism(type,variant,subtype)); }
    bool contact() const { return alive()&&enemy()&&!friendly&&collision!=0&&damage>0; }
    bool targetable() const { return damageable_enemy()&&collision!=0&&collision!=1; }
};
// Entity BaseUpdate temporarily multiplies sprite playback speed by time scale.
double animation_update_rate(const Entity& entity);
double animation_frame_updates(const Entity& entity,double target,bool overlay=false);
double animation_event_updates(const Entity& entity,const std::string& event,bool overlay=false);
std::vector<Vec> sample_laser_nodes(const std::vector<LaserNode>& nodes,size_t intervals,double* length=nullptr);
void smooth_laser_samples(std::vector<Vec>& history,const std::vector<Vec>& points,double blend,bool ring,double length=-1);
void wiggle_laser_samples(std::vector<Vec>& points,Vec origin,Vec endpoint,bool ring,double frame,double phase,double strength=1);
double laser_node_distance_squared(Vec point,const LaserNode& first,const LaserNode& last);
void update_ring_tangents(std::vector<LaserNode>& nodes,double strength=.4);
void update_beam_tangents(std::vector<LaserNode>& nodes);
void update_beam_homing_nodes(std::vector<LaserNode>& nodes,std::vector<Vec> targets,int mode,double radius,const Grid& room);
std::vector<LaserNode> orbit_laser_nodes(Vec origin,Vec endpoint);
void append_boomerang_laser_nodes(std::vector<LaserNode>& nodes,Vec origin,Vec endpoint,Vec reverse_endpoint,double length);
void append_horizontal_laser_nodes(std::vector<LaserNode>& nodes,Vec origin,Vec axis,Vec corner,Vec side,Vec endpoint);
void append_player_occult_laser_nodes(std::vector<LaserNode>& nodes,Vec origin,Vec endpoint,Vec target);
struct Weapon {
    uint32_t address{},modifiers{};int type{1},shots_fired{};double charge{},max_charge{},fire_delay{};
};
struct Player {
    Entity body; double max_speed{260},tear_speed{300},tear_range{260},fire_delay{10};
    int controller{},character{},health{},fire_direction{4},explosion_reduction_stacks{}; bool flying{},can_shoot{true},controls{true};
    bool native_grid_collision_known{},ground_creep_immune{},creep_effect_immune{},poison_effect_immune{};
    std::vector<Weapon> weapons;bool attack_supported{true};
};
void advance_native_player_motion(const Player& player,Vec& pos,Vec& velocity,Move move,double dt,double slow_factor=1);
// For non-player entities whose Reader velocity is native velocity times 30.
void advance_native_entity_motion(const Entity& entity,Vec& pos,Vec& velocity);
bool native_damage_queue_kills_next_entity_update(const Entity& entity);
struct Frame {
    uint64_t sequence{}; uint32_t clock{},room{},pid{}; double captured_ms{},read_ms{};
    uint32_t clear_flags{};
    int room_type{};
    bool valid{},paused{},transition{},cleared{},pressure_plates_triggered{},has_player{}; std::string error;
    Grid grid; Player player; std::vector<Entity> entities;
    std::vector<uint32_t> native_target_order;
    bool native_target_order_known{};
};
struct NativeAreaPulse { Vec pos{};double start{},duration{},radius{};bool real_clock{}; };
std::vector<NativeAreaPulse> predict_native_effect_pulses(const Frame& frame,const Entity& effect,double horizon);
struct NativeAreaSlowEffect { Vec pos{};double start{},until{},radius{}; };
std::vector<NativeAreaSlowEffect> predict_native_gish_creep(const Frame& frame,const Entity& boss,double horizon);
struct NativeProjectileEnvelope { Vec pos{},vel{};double start{},until{},uncertainty{},radius{};int count{};bool radial{}; };
std::vector<NativeProjectileEnvelope> predict_native_monstro_volleys(const Frame& frame,const Entity& boss,double horizon);
struct NativeSmokeHazard {
    Vec pos{};std::vector<Vec> motion_path;double start{},until{},radius{};
    bool explosive{},ignition_predicted{},alpha_known{};
};
std::vector<NativeSmokeHazard> predict_native_smoke_hazards(const Frame& frame,const Entity& effect,double horizon);
double native_explosion_radius_scale(const Frame& frame,const Entity& source);
double native_bomb_explosion_radius(const Entity& bomb);
struct Aim { uint32_t target{}; Fire fire{}; Vec point{}; double time{},miss{}; bool can_fire{}; };
enum class Shape { disc, capsule, ring, polyline, stream, cone };
// Every hostile attack in the game reduces to one of these damage classes.
// Identity rules decide *when* and *where*; the class decides how the planner
// treats the hazard. `hazard` is persistent area damage (creep, fire, spikes,
// poison cloud, pit) and is deliberately separate from body `contact`.
enum class DamageClass : uint8_t { contact, projectile, jump, laser, charge, explosion, hazard };
// How often the class hurts: a single impact, a bounded window, periodic ticks
// while inside, or damage over time after the source is gone.
enum class DamageTiming : uint8_t { instant, window, periodic, dot };
const char* damage_class_name(DamageClass value);
const char* damage_timing_name(DamageTiming value);
DamageClass damage_class_of(const std::string& kind);
DamageTiming damage_timing_of(DamageClass damage_class,const std::string& kind);
struct Threat {
    Shape shape{Shape::disc};Vec pos{},end{},vel{};double radius{},angular_speed{},start{},until{0.8};
    DamageClass damage_class{DamageClass::contact};
    DamageTiming damage_timing{DamageTiming::instant};
    // Expected HP loss per hit. Zero means the producer has no damage evidence;
    // the planner then weights the hit as one unit instead of inventing a value.
    double damage{};
    bool lethal{};
    double uncertainty{},uncertainty_origin{},geometry_margin{};uint32_t source{};bool soft{};std::string kind;
    double emission_end{},stream_min_speed{},body_radius{},event_time{-1};Vec emission_velocity{};
    std::vector<Vec> motion_path,geometry_path,endpoint_path;
    std::vector<std::vector<Vec>> geometry_frames;
    std::vector<double> ring_radius_path;
    std::vector<size_t> motion_breaks;
    double damage_period{},damage_window{},damage_phase{};
    uint32_t seed{},initiator{};int type{},variant{},subtype{};
    int64_t start_frame{-1},end_frame{-1};
    bool predictive{},timing_verified{},geometry_verified{},target_center_only{};
    double confidence{};
    std::string evidence_status{"heuristic"},data_source{"external-memory"},end_condition{"reobserve"};
    Vec at(double t) const;
    double clearance(Vec a,Vec b,double from,double to,double player_radius) const;
    double geometry_clearance(Vec a,Vec b,double from,double to,double player_radius) const;
};
struct RouteCandidate {
    Move move{};Vec end{};double hits{},exposure{},clearance{},end_clearance{},score{};
    double escape_directions{},escape_area{},edge_clearance{},margin{};
    std::vector<Vec> path;
};
struct MoveEvaluation {
    Move move{};bool has_route{};int terrain_rejected{},valid_final{},zero_hit_final{},pruned_zero_hit{};
    RouteCandidate best;
};
struct DecisionAnalysis {
    int valid_final{},zero_hit_final{},terrain_rejected{},pruned_zero_hit{};
    bool action_held{};
    uint32_t navigation_progress_since{};int navigation_living_enemies{};
    bool navigation_hp_progress{};
    Fire firing_direction{};Vec firing_point{};double firing_miss{},firing_time{};bool firing_available{};
    Vec navigation_goal{};bool navigation_goal_kept{};
    Vec navigation_waypoint{};bool navigation_waypoint_kept{};
    std::string cause;
    std::vector<MoveEvaluation> moves;
};
struct Decision {
    Move move{}; Fire fire{};uint32_t target{};bool valid{},safe{},stop{},navigation_boost{};
    double clearance{10000},end_clearance{10000},collision_cost{},planning_ms{},predicted_damage{};int threats{};std::string reason;    bool pressure_plate_mode{},pressure_plates_complete{};Vec pressure_plate_goal{};int pressure_plates_remaining{};
    std::string button_kind;bool kill_button_triggered{};
    std::string strategy_mode{"SafeOutput"};
    bool encirclement_escape{};Vec escape_goal{},escape_waypoint{};bool escape_priority_used{};
    double selected_exits{},selected_area{},selected_edge{},selected_exposure{};
    double predicted_impact_time{-1};std::string urgent_threat;
    std::vector<Vec> path;std::vector<std::string> threat_kinds;std::vector<std::string> threat_classes;DecisionAnalysis analysis;
};
using json=nlohmann::json;
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Vec,x,y)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Cell,type,variant,state,collision,destructible,danger,native_collision)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Grid,width,height,shape,valid,cells,native_min,native_max)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(AnimationTrigger,id,frame)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(PendingDamage,amount,flags)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(LaserNode,pos,incoming,outgoing)
inline void to_json(json& j,const Entity& e) {
    j=json{{"address",e.address},{"native_index",e.native_index},{"seed",e.seed},{"parent",e.parent},{"spawner",e.spawner},{"owner",e.owner},{"target",e.target},
        {"child",e.child},{"held",e.held},{"player_action_bomb",e.player_action_bomb},{"player_action_state",e.player_action_state},{"bomb_attached",e.bomb_attached},{"bomb_tear_flags",e.bomb_tear_flags},{"laser_tear_flags",e.laser_tear_flags},
        {"type",e.type},{"variant",e.variant},{"subtype",e.subtype},{"spawner_type",e.spawner_type},{"pos",e.pos},{"vel",e.vel},
        {"endpoint",e.endpoint},{"target_pos",e.target_pos},{"ai_v1",e.ai_v1},{"ai_v2",e.ai_v2},{"radius",e.radius},{"damage",e.damage},
        {"hp",e.hp},{"max_hp",e.max_hp},{"speed_multiplier",e.speed_multiplier},{"angle",e.angle},{"laser_radius",e.laser_radius},
        {"laser_rotation_degrees",e.laser_rotation_degrees},{"laser_rotation_speed",e.laser_rotation_speed},
        {"position_offset",e.position_offset},{"laser_rotation_delay",e.laser_rotation_delay},{"laser_rotating",e.laser_rotating},{"laser_offset",e.laser_offset},
        {"laser_homing_type",e.laser_homing_type},{"bomb_countdown2",e.bomb_countdown2},{"laser_max_distance",e.laser_max_distance},{"laser_shrink",e.laser_shrink},{"laser_first_update",e.laser_first_update},
        {"bomb_hold_state",e.bomb_hold_state},
        {"laser_sampled",e.laser_sampled},{"laser_damage_disabled",e.laser_damage_disabled},
        {"animation_length",e.animation_length},{"animation_looping",e.animation_looping},{"animation_speed",e.animation_speed},{"laser_fade_length",e.laser_fade_length},
        {"animation_events",e.animation_events},{"animation_event_history",e.animation_event_history},
        {"overlay_animation_events",e.overlay_animation_events},{"overlay_animation_event_history",e.overlay_animation_event_history},
        {"animation_state_known",e.animation_state_known},{"animation_playing",e.animation_playing},{"overlay_animation_playing",e.overlay_animation_playing},
        {"overlay_animation_length",e.overlay_animation_length},{"overlay_animation_looping",e.overlay_animation_looping},
        {"animation_update_delay",e.animation_update_delay},
        {"animation_event_names",e.animation_event_names},{"animation_triggers",e.animation_triggers},{"overlay_animation_triggers",e.overlay_animation_triggers},
        {"pending_damage",e.pending_damage},{"pending_damage_flags",e.pending_damage_flags},{"damage_queue",e.damage_queue},
        {"projectile_age",e.projectile_age},{"projectile_phase",e.projectile_phase},
        {"bomb_explosion_damage",e.bomb_explosion_damage},{"bomb_explosion_radius_scale",e.bomb_explosion_radius_scale},
        {"bomb_scale",e.bomb_scale},{"bomb_explosion_fields_known",e.bomb_explosion_fields_known},
        {"projectile_parent_velocity",e.projectile_parent_velocity},
        {"age",e.age},{"friction",e.friction},{"projectile_change_timeout",e.projectile_change_timeout},
        {"projectile_change_velocity",e.projectile_change_velocity},{"projectile_change_flags",e.projectile_change_flags},
        {"effect_state",e.effect_state},{"effect_lifespan",e.effect_lifespan},{"boss_target_mode",e.boss_target_mode},{"projectile_homing_strength",e.projectile_homing_strength},{"grid_contacts",e.grid_contacts},
        {"projectile_curve",e.projectile_curve},{"projectile_accel",e.projectile_accel},{"projectile_orbit_distance",e.projectile_orbit_distance},
        {"height",e.height},{"height_known",e.height_known},{"mass",e.mass},{"mass_known",e.mass_known},{"damage_stat",e.damage_stat},{"fall_speed",e.fall_speed},{"fall_accel",e.fall_accel},{"flags",e.flags},{"projectile_flags",e.projectile_flags},
        {"collision",e.collision},{"grid_collision",e.grid_collision},{"state",e.state},{"state_frame",e.state_frame},
        {"projectile_cooldown",e.projectile_cooldown},{"projectile_delay",e.projectile_delay},{"boss_status_cooldown",e.boss_status_cooldown},
        {"ai_i1",e.ai_i1},{"ai_i2",e.ai_i2},{"timeout",e.timeout},{"birth",e.birth},{"birth_known",e.birth_known},{"champion",e.champion},{"boss_color",e.boss_color},
        {"shield_history_capacity",e.shield_history_capacity},
        {"delirium_boss_type",e.delirium_boss_type},{"delirium_boss_variant",e.delirium_boss_variant},
        {"delirium_transformation_timer",e.delirium_transformation_timer},{"delirium_remaining_attacks",e.delirium_remaining_attacks},
        {"delirium_state",e.delirium_state},{"delirium_attack_id",e.delirium_attack_id},{"delirium_attack_angle",e.delirium_attack_angle},
        {"delirium_attack_id_low24",e.delirium_attack_id_low24},{"delirium_cycle_id",e.delirium_cycle_id},
        {"delirium_cycle_low7",e.delirium_cycle_low7},{"delirium_cycle_field_15_24",e.delirium_cycle_field_15_24},
        {"delirium_cycle_field_25_34",e.delirium_cycle_field_25_34},{"overlay_animation_frame",e.overlay_animation_frame},{"overlay_animation",e.overlay_animation},{"animation_frame",e.animation_frame},{"shield_strength",e.shield_strength},
        {"delirium_layout_valid",e.delirium_layout_valid},
        {"blast_radius",e.blast_radius},{"animation",e.animation},{"exists",e.exists},{"dead",e.dead},{"active",e.active},
        {"laser_points",e.laser_points},
        {"laser_origin",e.laser_origin},{"laser_native_end",e.laser_native_end},{"laser_history_points",e.laser_history_points},{"laser_nodes",e.laser_nodes},
        {"laser_hit_list",e.laser_hit_list},{"laser_link",e.laser_link},{"laser_one_hit",e.laser_one_hit},{"laser_sample_count",e.laser_sample_count},{"laser_shape_kind",e.laser_shape_kind},
        {"laser_homing_radius",e.laser_homing_radius},
        {"shot_speed_stat",e.shot_speed_stat},
        {"player_held_known",e.player_held_known},
        {"sprite_scale",e.sprite_scale},{"sprite_scale_known",e.sprite_scale_known},
        {"sprite_alpha",e.sprite_alpha},{"sprite_alpha_known",e.sprite_alpha_known},
        {"slow_factor",e.slow_factor},{"slow_countdown",e.slow_countdown},
        {"friendly",e.friendly},{"no_target",e.no_target},{"invulnerable",e.invulnerable},{"circle",e.circle},
        {"geometry_valid",e.geometry_valid},{"laser_follow",e.laser_follow},{"hostile_source",e.hostile_source},{"is_boss",e.is_boss},
        {"parent_in_snapshot",e.parent_in_snapshot},{"child_in_snapshot",e.child_in_snapshot},
        {"target_in_snapshot",e.target_in_snapshot},{"spawner_in_snapshot",e.spawner_in_snapshot},
        {"owner_in_snapshot",e.owner_in_snapshot},{"sprite_flip_x",e.sprite_flip_x}};
}
inline void from_json(const json& j,Entity& e) {
    e.address=j.value("address",e.address);e.seed=j.value("seed",e.seed);e.parent=j.value("parent",e.parent);
    e.native_index=j.value("native_index",e.native_index);
    e.spawner=j.value("spawner",e.spawner);e.owner=j.value("owner",e.owner);e.target=j.value("target",e.target);
    e.child=j.value("child",e.child);e.held=j.value("held",e.held);e.player_action_bomb=j.value("player_action_bomb",e.player_action_bomb);e.player_action_state=j.value("player_action_state",e.player_action_state);e.bomb_attached=j.value("bomb_attached",e.bomb_attached);e.bomb_tear_flags=j.value("bomb_tear_flags",e.bomb_tear_flags);e.laser_tear_flags=j.value("laser_tear_flags",e.laser_tear_flags);
    e.type=j.value("type",e.type);e.variant=j.value("variant",e.variant);e.subtype=j.value("subtype",e.subtype);
    e.spawner_type=j.value("spawner_type",e.spawner_type);e.pos=j.value("pos",e.pos);e.vel=j.value("vel",e.vel);
    e.endpoint=j.value("endpoint",e.endpoint);e.target_pos=j.value("target_pos",e.target_pos);
    e.ai_v1=j.value("ai_v1",e.ai_v1);e.ai_v2=j.value("ai_v2",e.ai_v2);e.radius=j.value("radius",e.radius);
    e.damage=j.value("damage",e.damage);e.hp=j.value("hp",e.hp);e.max_hp=j.value("max_hp",e.max_hp);
    e.mass=j.value("mass",e.mass);e.mass_known=j.value("mass_known",j.contains("mass"));
    e.damage_stat=j.value("damage_stat",e.damage_stat);
    e.speed_multiplier=j.value("speed_multiplier",e.speed_multiplier);e.angle=j.value("angle",e.angle);
    e.age=j.value("age",e.age);e.friction=j.value("friction",e.friction);
    e.projectile_change_timeout=j.value("projectile_change_timeout",e.projectile_change_timeout);
    e.projectile_homing_strength=j.value("projectile_homing_strength",e.projectile_homing_strength);e.grid_contacts=j.value("grid_contacts",e.grid_contacts);
    e.projectile_change_velocity=j.value("projectile_change_velocity",e.projectile_change_velocity);
    e.projectile_change_flags=j.value("projectile_change_flags",e.projectile_change_flags);
    e.effect_state=j.value("effect_state",e.effect_state);e.effect_lifespan=j.value("effect_lifespan",e.effect_lifespan);
    e.boss_target_mode=j.value("boss_target_mode",e.boss_target_mode);
    e.bomb_explosion_damage=j.value("bomb_explosion_damage",e.bomb_explosion_damage);
    e.bomb_explosion_radius_scale=j.value("bomb_explosion_radius_scale",e.bomb_explosion_radius_scale);
    e.bomb_scale=j.value("bomb_scale",e.bomb_scale);
    e.bomb_explosion_fields_known=j.value("bomb_explosion_fields_known",j.contains("bomb_explosion_damage")&&j.contains("bomb_explosion_radius_scale"));
    e.projectile_age=j.value("projectile_age",e.projectile_age);
    e.projectile_phase=j.value("projectile_phase",e.projectile_phase);
    e.projectile_parent_velocity=j.value("projectile_parent_velocity",e.projectile_parent_velocity);
    e.laser_rotation_degrees=j.value("laser_rotation_degrees",e.laser_rotation_degrees);
    e.laser_rotation_speed=j.value("laser_rotation_speed",e.laser_rotation_speed);
    e.laser_rotation_delay=j.value("laser_rotation_delay",e.laser_rotation_delay);e.laser_rotating=j.value("laser_rotating",e.laser_rotating);
    e.position_offset=j.value("position_offset",e.position_offset);e.laser_offset=j.value("laser_offset",e.laser_offset);e.laser_max_distance=j.value("laser_max_distance",e.laser_max_distance);e.laser_homing_type=j.value("laser_homing_type",e.laser_homing_type);e.bomb_countdown2=j.value("bomb_countdown2",e.bomb_countdown2);
    e.bomb_hold_state=j.value("bomb_hold_state",e.bomb_hold_state);
    e.laser_shrink=j.value("laser_shrink",e.laser_shrink);e.laser_first_update=j.value("laser_first_update",e.laser_first_update);
    e.laser_sampled=j.value("laser_sampled",e.laser_sampled);e.laser_damage_disabled=j.value("laser_damage_disabled",e.laser_damage_disabled);
    e.animation_length=j.value("animation_length",e.animation_length);e.animation_looping=j.value("animation_looping",e.animation_looping);
    e.animation_speed=j.value("animation_speed",e.animation_speed);e.laser_fade_length=j.value("laser_fade_length",e.laser_fade_length);
    e.animation_events=j.value("animation_events",e.animation_events);e.animation_event_history=j.value("animation_event_history",e.animation_event_history);
    e.overlay_animation_events=j.value("overlay_animation_events",e.overlay_animation_events);e.overlay_animation_event_history=j.value("overlay_animation_event_history",e.overlay_animation_event_history);
    e.animation_state_known=j.value("animation_state_known",e.animation_state_known);e.animation_playing=j.value("animation_playing",e.animation_playing);
    e.overlay_animation_playing=j.value("overlay_animation_playing",e.overlay_animation_playing);
    e.overlay_animation_length=j.value("overlay_animation_length",e.overlay_animation_length);e.overlay_animation_looping=j.value("overlay_animation_looping",e.overlay_animation_looping);
    e.animation_update_delay=j.value("animation_update_delay",e.animation_update_delay);
    e.animation_event_names=j.value("animation_event_names",e.animation_event_names);e.animation_triggers=j.value("animation_triggers",e.animation_triggers);
    e.overlay_animation_triggers=j.value("overlay_animation_triggers",e.overlay_animation_triggers);
    e.pending_damage=j.value("pending_damage",e.pending_damage);e.pending_damage_flags=j.value("pending_damage_flags",e.pending_damage_flags);
    e.damage_queue=j.value("damage_queue",e.damage_queue);

    e.projectile_accel=j.value("projectile_accel",e.projectile_accel);
    e.projectile_curve=j.value("projectile_curve",e.projectile_curve);
    e.projectile_orbit_distance=j.value("projectile_orbit_distance",e.projectile_orbit_distance);
    e.laser_radius=j.value("laser_radius",e.laser_radius);e.height=j.value("height",e.height);
    // Older logs predate the flag. Their projectile heights are native reads,
    // so infer knowledge for exactly the two types the Reader reads it for.
    e.height_known=j.value("height_known",e.height_known||e.type==9||e.type==2);
    e.fall_speed=j.value("fall_speed",e.fall_speed);e.fall_accel=j.value("fall_accel",e.fall_accel);
    e.flags=j.value("flags",e.flags);e.projectile_flags=j.value("projectile_flags",e.projectile_flags);
    e.collision=j.value("collision",e.collision);e.grid_collision=j.value("grid_collision",e.grid_collision);
    e.state=j.value("state",e.state);e.state_frame=j.value("state_frame",e.state_frame);
    e.projectile_cooldown=j.value("projectile_cooldown",e.projectile_cooldown);e.projectile_delay=j.value("projectile_delay",e.projectile_delay);
    e.boss_status_cooldown=j.value("boss_status_cooldown",e.boss_status_cooldown);e.ai_i1=j.value("ai_i1",e.ai_i1);
    e.ai_i2=j.value("ai_i2",e.ai_i2);e.timeout=j.value("timeout",e.timeout);e.birth=j.value("birth",e.birth);
    e.birth_known=j.value("birth_known",j.contains("birth"));
    e.champion=j.value("champion",e.champion);e.boss_color=j.value("boss_color",e.boss_color);
    e.shield_history_capacity=j.value("shield_history_capacity",e.shield_history_capacity);
    e.delirium_boss_type=j.value("delirium_boss_type",e.delirium_boss_type);
    e.delirium_boss_variant=j.value("delirium_boss_variant",e.delirium_boss_variant);
    e.delirium_transformation_timer=j.value("delirium_transformation_timer",e.delirium_transformation_timer);
    e.delirium_remaining_attacks=j.value("delirium_remaining_attacks",e.delirium_remaining_attacks);
    e.delirium_state=j.value("delirium_state",e.delirium_state);e.delirium_attack_id=j.value("delirium_attack_id",e.delirium_attack_id);
    e.delirium_attack_angle=j.value("delirium_attack_angle",e.delirium_attack_angle);
    e.delirium_attack_id_low24=j.value("delirium_attack_id_low24",e.delirium_attack_id_low24);
    e.delirium_cycle_id=j.value("delirium_cycle_id",e.delirium_cycle_id);
    e.delirium_cycle_low7=j.value("delirium_cycle_low7",e.delirium_cycle_low7);
    e.delirium_cycle_field_15_24=j.value("delirium_cycle_field_15_24",e.delirium_cycle_field_15_24);
    e.delirium_cycle_field_25_34=j.value("delirium_cycle_field_25_34",e.delirium_cycle_field_25_34);
    e.delirium_layout_valid=j.value("delirium_layout_valid",e.delirium_layout_valid);
    e.animation_frame=j.value("animation_frame",e.animation_frame);e.shield_strength=j.value("shield_strength",e.shield_strength);
    e.blast_radius=j.value("blast_radius",e.blast_radius);e.animation=j.value("animation",e.animation);
    e.laser_points=j.value("laser_points",e.laser_points);
    e.laser_origin=j.value("laser_origin",e.laser_origin);e.laser_native_end=j.value("laser_native_end",e.laser_native_end);
    e.laser_history_points=j.value("laser_history_points",e.laser_history_points);e.laser_nodes=j.value("laser_nodes",e.laser_nodes);
    e.laser_hit_list=j.value("laser_hit_list",e.laser_hit_list);e.laser_link=j.value("laser_link",e.laser_link);e.laser_one_hit=j.value("laser_one_hit",e.laser_one_hit);
    e.laser_sample_count=j.value("laser_sample_count",e.laser_sample_count);e.laser_shape_kind=j.value("laser_shape_kind",e.laser_shape_kind);
    e.laser_homing_radius=j.value("laser_homing_radius",e.laser_homing_radius);
    e.shot_speed_stat=j.value("shot_speed_stat",e.shot_speed_stat);
    e.player_held_known=j.value("player_held_known",e.player_held_known);
    e.sprite_scale=j.value("sprite_scale",e.sprite_scale);e.sprite_scale_known=j.value("sprite_scale_known",e.sprite_scale_known);
    e.sprite_alpha=j.value("sprite_alpha",e.sprite_alpha);e.sprite_alpha_known=j.value("sprite_alpha_known",j.contains("sprite_alpha"));
    e.slow_factor=j.value("slow_factor",e.slow_factor);e.slow_countdown=j.value("slow_countdown",e.slow_countdown);
    e.exists=j.value("exists",e.exists);e.dead=j.value("dead",e.dead);e.active=j.value("active",e.active);
    e.friendly=j.value("friendly",e.friendly);e.no_target=j.value("no_target",e.no_target);
    e.invulnerable=j.value("invulnerable",e.invulnerable);e.circle=j.value("circle",e.circle);
    e.geometry_valid=j.value("geometry_valid",e.geometry_valid);e.laser_follow=j.value("laser_follow",e.laser_follow);
    e.hostile_source=j.value("hostile_source",e.hostile_source);e.is_boss=j.value("is_boss",e.is_boss);
    e.parent_in_snapshot=j.value("parent_in_snapshot",e.parent_in_snapshot);
    e.child_in_snapshot=j.value("child_in_snapshot",e.child_in_snapshot);
    e.target_in_snapshot=j.value("target_in_snapshot",e.target_in_snapshot);
    e.spawner_in_snapshot=j.value("spawner_in_snapshot",e.spawner_in_snapshot);
    e.owner_in_snapshot=j.value("owner_in_snapshot",e.owner_in_snapshot);
    e.sprite_flip_x=j.value("sprite_flip_x",e.sprite_flip_x);
    e.overlay_animation=j.value("overlay_animation",e.overlay_animation);e.overlay_animation_frame=j.value("overlay_animation_frame",e.overlay_animation_frame);
}
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Weapon,address,modifiers,type,shots_fired,charge,max_charge,fire_delay)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Player,body,max_speed,tear_speed,tear_range,fire_delay,controller,character,health,fire_direction,explosion_reduction_stacks,flying,can_shoot,controls,weapons,attack_supported,native_grid_collision_known,ground_creep_immune,creep_effect_immune,poison_effect_immune)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Frame,sequence,clock,room,pid,captured_ms,read_ms,clear_flags,room_type,valid,paused,transition,cleared,pressure_plates_triggered,has_player,error,grid,player,entities,native_target_order,native_target_order_known)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(RouteCandidate,move,end,hits,exposure,clearance,end_clearance,score,escape_directions,escape_area,edge_clearance,margin,path)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(MoveEvaluation,move,has_route,terrain_rejected,valid_final,zero_hit_final,pruned_zero_hit,best)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(DecisionAnalysis,valid_final,zero_hit_final,terrain_rejected,pruned_zero_hit,action_held,navigation_progress_since,navigation_living_enemies,navigation_hp_progress,firing_direction,firing_point,firing_miss,firing_time,firing_available,navigation_goal,navigation_goal_kept,navigation_waypoint,navigation_waypoint_kept,cause,moves)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Decision,move,fire,target,valid,safe,stop,navigation_boost,clearance,end_clearance,collision_cost,planning_ms,predicted_damage,threats,reason,pressure_plate_mode,pressure_plates_complete,pressure_plate_goal,pressure_plates_remaining,button_kind,kill_button_triggered,path,threat_kinds,threat_classes,analysis,strategy_mode,encirclement_escape,escape_goal,escape_waypoint,escape_priority_used,selected_exits,selected_area,selected_edge,selected_exposure,predicted_impact_time,urgent_threat)

struct MechanismObservation {
    uint32_t address{},seed{},parent{},spawner{},owner{},attack_target{};
    int type{},variant{},subtype{},state{-1},state_frame{},boss_phase{-1};
    int is_invincible{-1},is_enraged{-1};
    Vec ai_v1{},ai_v2{};
    int ai_i1{},ai_i2{},projectile_cooldown{},projectile_delay{},boss_status_cooldown{};
    int champion{-1},boss_color{-1},shield_history_capacity{};
    double health{},max_health{},speed_multiplier{1},shield_strength{};
    bool is_boss{},delirium_layout_valid{};
    bool parent_in_snapshot{},child_in_snapshot{},attack_target_in_snapshot{},spawner_in_snapshot{},owner_in_snapshot{};
    int64_t predicted_trigger_frame{-1},predicted_action_end_frame{-1};
    uint32_t child{},delirium_boss_type{},delirium_boss_variant{},delirium_attack_id{},delirium_attack_id_low24{};
    uint64_t delirium_cycle_id{};
    uint32_t delirium_cycle_low7{},delirium_cycle_field_15_24{},delirium_cycle_field_25_34{};
    int delirium_transformation_timer{},delirium_remaining_attacks{},delirium_state{},delirium_attack_angle{};
    double confidence{};
    std::string identity_key{"Unknown"},identity_name{"Unknown"},ai_function{"Unknown"};
    std::string current_action{"Unknown"},action_phase{"Unknown"},attack_type{"Unknown"},attack_type_evidence{"Unknown"};
    bool attack_timing_verified{};
    std::string attack_target_semantics{"Unknown"},boss_phase_name{"Unknown"},threat_geometry{"Unknown"};
    std::string state_semantics{"Unknown"},invincibility_scope{"Unknown"};
    std::string data_source{"external-memory+state-semantics"},unknown_reason{};
    uint32_t last_updated_frame{};
    bool unknown_state{};
    json behavior_model=json::object();
};
struct MechanismWarning {
    uint32_t source{};
    Vec pos{},end{},vel{};
    double radius{},angular_speed{},uncertainty{},geometry_margin{},start{},until{};
    int64_t predicted_trigger_frame{-1},predicted_end_frame{-1};
    double confidence{};
    bool predictive{},planning_validated{},timing_verified{};
    std::string shape{"capsule"},kind,rule_id,evidence_status,source_refs;
};
struct MonsterGeometryRef {
    uint32_t source{};
    int hazard_type{},hazard_variant{},hazard_subtype{};
    int source_state{-1},source_ai_i1{-1},source_ai_i2{-1};
    double radius{},duration{},trigger_animation_frame{-1},speed{},speed_min{};
    int trigger_animation_frame_min{-1},trigger_animation_frame_max{-1};
    int pattern_count{1},pattern_samples{1};
    double pattern_phase_degrees{},pattern_phase_uncertainty_degrees{},pattern_spacing_degrees{};
    Vec pattern_origin_offset{};
    double pattern_direction_step{90},pattern_velocity_inherit{},pattern_aim_lead{},pattern_aim_lead_distance{},pattern_aim_distance{100000};
    double pattern_clock_offset{},pattern_target_radius{},pattern_source_lead{},pattern_origin_speed{};
    int pattern_period{1},emitter_spawner_type{};uint64_t required_projectile_flags{};
    std::string pattern_speed_mode{"constant"};
    std::vector<double> pattern_offsets_degrees;
    bool geometry_verified{},runtime_geometry_verified{},planning_validated{},pre_spawn_verified{};
    std::string kind,shape,source_animation,pattern,pattern_center{"source"},pattern_direction{"fixed"},pattern_clock{"animation"},evidence_status,source_refs;
    // Database provenance for consumption reports. Not serialized into frame
    // logs: models are recomputed from the database on replay.
    std::string id,pattern_rule;
};
// Logical events preserve evidence separately from a state/animation label.
struct BehaviorEvent {
    uint32_t source{},seed{},frame{};int type{},variant{},subtype{},from_state{-1},state{-1};
    std::string event{"Unknown"},phase{"Unknown"},evidence_status{"candidate"},source_refs;
    double confidence{};bool verified{};int64_t predicted_frame{-1};
    json parameters=json::object();
};
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(BehaviorEvent,source,seed,frame,type,variant,subtype,from_state,state,event,phase,evidence_status,source_refs,confidence,verified,predicted_frame,parameters)
struct MechanismFrame {
    bool loaded{},valid{},semantics_available{};
    uint32_t room{},clock{},pid{};
    int identities{},known_states{},known_attack_types{},known_boss_phases{},known_enrages{};
    int predictive_warnings{},reactive_warnings{},unknown_states{},stale_entities_dropped{};
    std::string source_sha256,error;
    std::vector<BehaviorEvent> events;
    std::vector<MechanismObservation> enemies;
    std::vector<MechanismWarning> warnings;
    std::vector<MonsterGeometryRef> geometry_models;
};
inline void to_json(json& j,const MechanismObservation& o) {
    j=json{{"address",o.address},{"seed",o.seed},{"parent",o.parent},{"spawner",o.spawner},{"owner",o.owner},
        {"attack_target",o.attack_target},{"child",o.child},{"delirium_boss_type",o.delirium_boss_type},
        {"delirium_boss_variant",o.delirium_boss_variant},{"delirium_attack_id",o.delirium_attack_id},
        {"delirium_attack_id_low24",o.delirium_attack_id_low24},{"delirium_cycle_id",o.delirium_cycle_id},
        {"delirium_cycle_low7",o.delirium_cycle_low7},{"delirium_cycle_field_15_24",o.delirium_cycle_field_15_24},
        {"delirium_cycle_field_25_34",o.delirium_cycle_field_25_34},
        {"delirium_transformation_timer",o.delirium_transformation_timer},
        {"delirium_remaining_attacks",o.delirium_remaining_attacks},{"delirium_state",o.delirium_state},
        {"delirium_attack_angle",o.delirium_attack_angle},{"type",o.type},{"variant",o.variant},
        {"subtype",o.subtype},{"state",o.state},{"state_frame",o.state_frame},{"boss_phase",o.boss_phase},
        {"is_invincible",o.is_invincible},{"is_enraged",o.is_enraged},{"ai_v1",o.ai_v1},{"ai_v2",o.ai_v2},
        {"ai_i1",o.ai_i1},{"ai_i2",o.ai_i2},{"projectile_cooldown",o.projectile_cooldown},
        {"projectile_delay",o.projectile_delay},{"boss_status_cooldown",o.boss_status_cooldown},
        {"champion",o.champion},{"boss_color",o.boss_color},
        {"shield_history_capacity",o.shield_history_capacity},{"health",o.health},{"max_health",o.max_health},
        {"speed_multiplier",o.speed_multiplier},{"shield_strength",o.shield_strength},{"is_boss",o.is_boss},
        {"delirium_layout_valid",o.delirium_layout_valid},
        {"parent_in_snapshot",o.parent_in_snapshot},{"child_in_snapshot",o.child_in_snapshot},
        {"attack_target_in_snapshot",o.attack_target_in_snapshot},
        {"spawner_in_snapshot",o.spawner_in_snapshot},{"owner_in_snapshot",o.owner_in_snapshot},
        {"predicted_trigger_frame",o.predicted_trigger_frame},
        {"predicted_action_end_frame",o.predicted_action_end_frame},{"confidence",o.confidence},
        {"identity_key",o.identity_key},{"identity_name",o.identity_name},{"ai_function",o.ai_function},
        {"current_action",o.current_action},{"action_phase",o.action_phase},{"attack_type",o.attack_type},
        {"attack_type_evidence",o.attack_type_evidence},
        {"attack_timing_verified",o.attack_timing_verified},
        {"attack_target_semantics",o.attack_target_semantics},{"boss_phase_name",o.boss_phase_name},
        {"threat_geometry",o.threat_geometry},{"state_semantics",o.state_semantics},
        {"invincibility_scope",o.invincibility_scope},{"data_source",o.data_source},
        {"unknown_reason",o.unknown_reason},{"last_updated_frame",o.last_updated_frame},
        {"unknown_state",o.unknown_state},{"behavior_model",o.behavior_model}};
}
inline void from_json(const json& j,MechanismObservation& o) {
    o.address=j.value("address",o.address);o.seed=j.value("seed",o.seed);o.parent=j.value("parent",o.parent);
    o.spawner=j.value("spawner",o.spawner);o.owner=j.value("owner",o.owner);
    o.attack_target=j.value("attack_target",o.attack_target);o.child=j.value("child",o.child);
    o.delirium_boss_type=j.value("delirium_boss_type",o.delirium_boss_type);
    o.delirium_boss_variant=j.value("delirium_boss_variant",o.delirium_boss_variant);
    o.delirium_attack_id=j.value("delirium_attack_id",o.delirium_attack_id);
    o.delirium_attack_id_low24=j.value("delirium_attack_id_low24",o.delirium_attack_id_low24);
    o.delirium_cycle_id=j.value("delirium_cycle_id",o.delirium_cycle_id);
    o.delirium_cycle_low7=j.value("delirium_cycle_low7",o.delirium_cycle_low7);
    o.delirium_cycle_field_15_24=j.value("delirium_cycle_field_15_24",o.delirium_cycle_field_15_24);
    o.delirium_cycle_field_25_34=j.value("delirium_cycle_field_25_34",o.delirium_cycle_field_25_34);
    o.delirium_transformation_timer=j.value("delirium_transformation_timer",o.delirium_transformation_timer);
    o.delirium_remaining_attacks=j.value("delirium_remaining_attacks",o.delirium_remaining_attacks);
    o.delirium_state=j.value("delirium_state",o.delirium_state);
    o.delirium_attack_angle=j.value("delirium_attack_angle",o.delirium_attack_angle);
    o.type=j.value("type",o.type);o.variant=j.value("variant",o.variant);o.subtype=j.value("subtype",o.subtype);
    o.state=j.value("state",o.state);o.state_frame=j.value("state_frame",o.state_frame);
    o.boss_phase=j.value("boss_phase",o.boss_phase);o.is_invincible=j.value("is_invincible",o.is_invincible);
    o.is_enraged=j.value("is_enraged",o.is_enraged);o.ai_v1=j.value("ai_v1",o.ai_v1);
    o.ai_v2=j.value("ai_v2",o.ai_v2);o.ai_i1=j.value("ai_i1",o.ai_i1);o.ai_i2=j.value("ai_i2",o.ai_i2);
    o.projectile_cooldown=j.value("projectile_cooldown",o.projectile_cooldown);
    o.projectile_delay=j.value("projectile_delay",o.projectile_delay);
    o.boss_status_cooldown=j.value("boss_status_cooldown",o.boss_status_cooldown);
    o.champion=j.value("champion",o.champion);o.boss_color=j.value("boss_color",o.boss_color);
    o.shield_history_capacity=j.value("shield_history_capacity",o.shield_history_capacity);
    o.health=j.value("health",o.health);o.max_health=j.value("max_health",o.max_health);
    o.speed_multiplier=j.value("speed_multiplier",o.speed_multiplier);
    o.shield_strength=j.value("shield_strength",o.shield_strength);o.is_boss=j.value("is_boss",o.is_boss);
    o.delirium_layout_valid=j.value("delirium_layout_valid",o.delirium_layout_valid);
    o.parent_in_snapshot=j.value("parent_in_snapshot",o.parent_in_snapshot);
    o.child_in_snapshot=j.value("child_in_snapshot",o.child_in_snapshot);
    o.attack_target_in_snapshot=j.value("attack_target_in_snapshot",o.attack_target_in_snapshot);
    o.spawner_in_snapshot=j.value("spawner_in_snapshot",o.spawner_in_snapshot);
    o.owner_in_snapshot=j.value("owner_in_snapshot",o.owner_in_snapshot);
    o.predicted_trigger_frame=j.value("predicted_trigger_frame",o.predicted_trigger_frame);
    o.predicted_action_end_frame=j.value("predicted_action_end_frame",o.predicted_action_end_frame);
    o.confidence=j.value("confidence",o.confidence);o.identity_key=j.value("identity_key",o.identity_key);
    o.identity_name=j.value("identity_name",o.identity_name);o.ai_function=j.value("ai_function",o.ai_function);
    o.current_action=j.value("current_action",o.current_action);o.action_phase=j.value("action_phase",o.action_phase);
    o.attack_type=j.value("attack_type",o.attack_type);
    o.attack_type_evidence=j.value("attack_type_evidence",o.attack_type_evidence);
    o.attack_timing_verified=j.value("attack_timing_verified",o.attack_timing_verified);
    o.attack_target_semantics=j.value("attack_target_semantics",o.attack_target_semantics);
    o.boss_phase_name=j.value("boss_phase_name",o.boss_phase_name);
    o.threat_geometry=j.value("threat_geometry",o.threat_geometry);
    o.state_semantics=j.value("state_semantics",o.state_semantics);
    o.invincibility_scope=j.value("invincibility_scope",o.invincibility_scope);
    o.data_source=j.value("data_source",o.data_source);o.unknown_reason=j.value("unknown_reason",o.unknown_reason);
    o.last_updated_frame=j.value("last_updated_frame",o.last_updated_frame);
    o.unknown_state=j.value("unknown_state",o.unknown_state);o.behavior_model=j.value("behavior_model",json::object());
}
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(MechanismWarning,source,pos,end,vel,radius,angular_speed,uncertainty,geometry_margin,start,until,predicted_trigger_frame,predicted_end_frame,confidence,predictive,planning_validated,timing_verified,shape,kind,rule_id,evidence_status,source_refs)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(MonsterGeometryRef,source,hazard_type,hazard_variant,hazard_subtype,source_state,source_ai_i1,source_ai_i2,radius,duration,trigger_animation_frame,trigger_animation_frame_min,trigger_animation_frame_max,speed,speed_min,pattern_count,pattern_samples,pattern_phase_degrees,pattern_phase_uncertainty_degrees,pattern_spacing_degrees,pattern_offsets_degrees,geometry_verified,runtime_geometry_verified,planning_validated,pre_spawn_verified,kind,shape,source_animation,pattern,pattern_center,pattern_direction,pattern_clock,pattern_origin_offset,pattern_direction_step,pattern_velocity_inherit,pattern_aim_lead,pattern_aim_lead_distance,pattern_aim_distance,pattern_clock_offset,pattern_target_radius,pattern_source_lead,pattern_origin_speed,pattern_period,emitter_spawner_type,required_projectile_flags,pattern_speed_mode,evidence_status,source_refs)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(MechanismFrame,loaded,valid,semantics_available,room,clock,pid,identities,known_states,known_attack_types,known_boss_phases,known_enrages,predictive_warnings,reactive_warnings,unknown_states,stale_entities_dropped,source_sha256,error,enemies,warnings,geometry_models,events)
}
