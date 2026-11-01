#pragma once
#include <algorithm>
#include <cmath>
#include <cstdint>
#include <limits>
#include <string>
#include <vector>
#include <nlohmann/json.hpp>

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
struct Cell { int type{}, variant{}, state{}, collision{}; bool destructible{}, danger{}; };
struct Grid {
    int width{15},height{9}; bool valid{}; std::vector<Cell> cells;
    bool walkable(Vec p,double radius,bool flying) const;
    double clearance(Vec p,double radius,bool flying) const;
    bool shot_clear(Vec a,Vec b) const;
    bool sweep_clear(Vec a,Vec b,double radius,bool flying) const;
    Vec center(int i) const { return {40.0+(i%width)*40.0,120.0+(i/width)*40.0}; }
};
struct Entity {
    uint32_t address{},seed{},parent{},spawner{},owner{}; int type{},variant{},subtype{},spawner_type{};
    Vec pos{},vel{},endpoint{},target_pos{}; double radius{10},damage{},hp{},angle{},laser_radius{},height{},fall_speed{},fall_accel{};
    uint64_t flags{},projectile_flags{};
    int collision{},grid_collision{},state{},state_frame{},timeout{},birth{},champion{-1};
    int morph_type{},morph_variant{};
    double animation_frame{},blast_radius{80},projectile_age{},projectile_curve{},speed_multiplier{1},projectile_orbit_distance{},native_motion_scale{1},native_animation_rate{1},aura_radius{};
    int projectile_phase{}; std::string animation;
    bool exists{true},dead{},active{true},friendly{},no_target{},invulnerable{},circle{},geometry_valid{},laser_follow{},hostile_source{};
    bool enemy() const { return type>=10&&type<1000; }
    bool alive() const { return exists&&!dead&&active; }
    bool contact() const { return alive()&&enemy()&&!friendly&&collision!=0&&damage>0; }
    bool targetable() const { return alive()&&enemy()&&!friendly&&!no_target&&!invulnerable&&collision!=0&&collision!=1&&hp>0; }
};
struct Weapon {
    uint32_t address{},modifiers{};int type{1};double charge{},max_charge{},fire_delay{};
};
struct Player {
    Entity body; double max_speed{260},tear_speed{300},tear_range{260},fire_delay{10};
    Vec tear_inheritance_sample{};
    int controller{},character{},health{}; bool flying{},can_shoot{true},controls{true};
    std::vector<Weapon> weapons;bool attack_supported{true};
};
void advance_native_player_motion(const Player& player,Vec& pos,Vec& velocity,Move move,double dt);
struct Frame {
    uint64_t sequence{}; uint32_t clock{},room{},pid{}; double captured_ms{},read_ms{};
    bool valid{},paused{},transition{},cleared{},has_player{},encounter_active{}; std::string error;
    Grid grid; Player player; std::vector<Entity> entities;
};
struct Aim { uint32_t target{}; Fire fire{}; Vec point{}; double time{},miss{}; bool can_fire{}; };
enum class Shape { disc, capsule, ring };
struct Threat {
    Shape shape{Shape::disc};Vec pos{},end{},vel{};double radius{},angular_speed{},start{},until{0.8};
    double uncertainty{};uint32_t source{};bool soft{};std::string kind;
    std::vector<Vec> motion_path;
    Vec at(double t) const;
    double clearance(Vec a,Vec b,double from,double to,double player_radius) const;
};
struct RouteCandidate {
    Move move{};Vec end{};double hits{},exposure{},clearance{},end_clearance{},score{};
    std::vector<Vec> path;
};
struct MoveEvaluation {
    Move move{};bool has_route{};int terrain_rejected{},valid_final{},zero_hit_final{},pruned_zero_hit{};
    RouteCandidate best;
};
struct DecisionAnalysis {
    int valid_final{},zero_hit_final{},terrain_rejected{},pruned_zero_hit{};
    std::string cause;
    std::vector<MoveEvaluation> moves;
};
struct Decision {
    Move move{}; Fire fire{};uint32_t target{};bool valid{},safe{},stop{},navigation_boost{};
    double clearance{10000},end_clearance{10000},collision_cost{},planning_ms{};int threats{};std::string reason;
    std::vector<Vec> path;std::vector<std::string> threat_kinds;DecisionAnalysis analysis;
};
using json=nlohmann::json;
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Vec,x,y)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Cell,type,variant,state,collision,destructible,danger)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Grid,width,height,valid,cells)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Entity,address,seed,parent,spawner,owner,type,variant,subtype,spawner_type,pos,vel,endpoint,target_pos,radius,damage,hp,angle,laser_radius,height,fall_speed,fall_accel,flags,projectile_flags,collision,grid_collision,state,state_frame,timeout,birth,champion,morph_type,morph_variant,animation_frame,blast_radius,projectile_age,projectile_phase,projectile_curve,speed_multiplier,projectile_orbit_distance,native_motion_scale,native_animation_rate,aura_radius,animation,exists,dead,active,friendly,no_target,invulnerable,circle,geometry_valid,laser_follow,hostile_source)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Weapon,address,modifiers,type,charge,max_charge,fire_delay)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Player,body,max_speed,tear_speed,tear_range,fire_delay,tear_inheritance_sample,controller,character,health,flying,can_shoot,controls,weapons,attack_supported)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Frame,sequence,clock,room,pid,captured_ms,read_ms,valid,paused,transition,cleared,has_player,encounter_active,error,grid,player,entities)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(RouteCandidate,move,end,hits,exposure,clearance,end_clearance,score,path)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(MoveEvaluation,move,has_route,terrain_rejected,valid_final,zero_hit_final,pruned_zero_hit,best)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(DecisionAnalysis,valid_final,zero_hit_final,terrain_rejected,pruned_zero_hit,cause,moves)
NLOHMANN_DEFINE_TYPE_NON_INTRUSIVE_WITH_DEFAULT(Decision,move,fire,target,valid,safe,stop,navigation_boost,clearance,end_clearance,collision_cost,planning_ms,threats,reason,path,threat_kinds,analysis)
}
