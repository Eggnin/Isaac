#pragma once
#include "model.hpp"
#include <unordered_map>
#include <unordered_set>
namespace gamebot {
struct PlannerConfig {
    double horizon{1.0},dt{1.0/60},response{0.11},margin{8},contact_margin{8},tear_radius{6};
    double navigation_horizon{1.2};
    int beam_width{48},stages{5},navigation_beam_width{64},navigation_stages{6},navigation_escalation_frames{450};
    bool diagnostics{},use_tear_inheritance{},native_player_motion{},native_attack_timing{},experimental_aura{};
    bool prefer_late_collision{false};
    double wall_margin{60},wall_weight{},delirium_margin{40};
};
class Planner {
    struct Track { Entity entity;uint32_t clock{};double turn{}; };
    struct Reserve { Vec pos;double radius{};uint32_t expiry{};uint64_t identity{}; };
    PlannerConfig config_;uint32_t room_{},clock_{};uint64_t target_{};Move last_move_{};
    std::unordered_map<uint64_t,Track> tracks_;std::vector<Reserve> reserves_;
    std::unordered_set<uint64_t> detonated_;
    uint32_t release_until_{};
    uint32_t navigation_progress_clock_{};
    double navigation_enemy_hp_{-1};
    bool navigation_boost_{};
    std::vector<Threat> threats_;
    void build_threats(const Frame& frame,double horizon);
public:
    explicit Planner(PlannerConfig config={}):config_(config){}
    Decision decide(const Frame& frame,bool attack_enabled=true);
    Aim aim(const Frame& frame,Vec origin) const;
    const std::vector<Threat>& threats() const { return threats_; }
    void reset();
};
double blast_radius(const Entity& e);
double segment_distance(Vec p,Vec a,Vec b);
double moving_clearance(Vec a,Vec b,Vec c,Vec d,double radius);
}
