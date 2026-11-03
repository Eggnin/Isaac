#pragma once
#include "model.hpp"
#include <unordered_map>
#include <unordered_set>
namespace gamebot {
struct PlannerConfig {
    double horizon{1.0},dt{1.0/60},response{0.11},margin{8},contact_margin{8},terrain_margin{0},hazard_terrain_margin{1},tear_radius{6};
    double navigation_horizon{1.2},navigation_progress_weight{0.06};
    double projectile_burst_margin{32};
    double action_change_penalty{2.0};
    double action_hold_min_clearance{1.0};
    int beam_width{48},stages{5},navigation_beam_width{64},navigation_stages{6},navigation_escalation_frames{450};
    int action_segment_frames{5};
    int future_escape_horizon_frames{45};
    int navigation_hold_frames{45};
    int navigation_waypoint_frames{30};
    int action_hold_frames{2};
    double pressure_plate_goal_weight{0.35};
    bool navigation_waypoint_hold{true};
    bool navigation_waypoint_priority{true};
    bool persistent_navigation{};
    bool navigation_goal_priority{};
    double navigation_static_speed{20};
    bool projectile_burst_prediction{true};
    bool projectile_burst_alternating{};
    bool diagnostics{};
    bool native_player_motion{true};
    bool native_projectile_motion{true};
    bool native_laser_geometry{true};
    bool legacy_laser_width{}; // Offline baseline comparison only.
    bool evaluate_candidate_warnings{}; // Isolated offline comparison only; default retains validated fallback.
    // Expose the final route beam for offline lookahead experiments. This only
    // records what decide() already computed; it never changes the decision.
    bool record_candidates{};
    // Keep distance from fast contact bodies before they reach the safety
    // margin. Without this the bot only reacts once a chaser is already close.
    bool contact_spacing{true};
    double contact_spacing_speed_threshold{40};
    double contact_spacing_gain{0.6};
    double contact_spacing_base{24};
    double contact_spacing_max{180};
    double contact_spacing_weight{0.02};
    // Emit pre-fire envelopes for emitters whose native trigger window is
    // known but whose pattern was never decompiled. Direction and speed come
    // from observed emissions, never from a guessed pattern.
    bool observed_emission_envelopes{};
    int observed_emission_min_samples{2};
    double observed_emission_max_spread_degrees{18};
    double observed_emission_speed_ratio{1.6};};
struct RouteRank {
    double hits{},clips{},first_wall{},wall_margin{},exposure{},escape_directions{},escape_area{},edge_clearance{},end_clearance{},score{};
    double first_hit{10000};
    double margin{10000};
};
bool route_rank_less(const RouteRank& a,const RouteRank& b,bool goal_priority,bool escape_priority=false,bool wide_escape=false,bool wall_escape=false);
// Counters for the observed-emission pipeline. They answer "why did no
// envelope fire" without changing any decision.
struct EmissionDiagnostics {
    uint64_t births{},unattributed{},samples{};
    uint64_t candidate_frames{},envelopes{};
    uint64_t no_samples{},spread_rejected{},speed_rejected{};
};
class Planner {
    struct Track { Entity entity;uint32_t clock{};double turn{}; };
    struct Reserve { Vec pos;double radius{};uint32_t expiry{};uint64_t identity{}; };
    struct EyeLock { Vec target;uint32_t expiry{}; };
    struct ProjectileBurst { uint32_t last_fire{},next_fire{};double period_frames{29};bool next_diagonal{}; };
    struct EmissionStat {
        int samples{};
        double cos_sum{},sin_sum{},speed_min{1e9},speed_max{};
        void observe(double relative_angle,double speed) {
            ++samples;cos_sum+=std::cos(relative_angle);sin_sum+=std::sin(relative_angle);
            speed_min=std::min(speed_min,speed);speed_max=std::max(speed_max,speed);
        }
        double spread_degrees() const {
            if(samples<2)return 180;
            const double resultant=std::sqrt(cos_sum*cos_sum+sin_sum*sin_sum)/samples;
            const double standard=std::sqrt(-2*std::log(std::clamp(resultant,1e-6,1.0)));
            return standard*180/pi;
        }
        double mean_speed() const { return samples?0.5*(speed_min+speed_max):0; }
    };
    PlannerConfig config_;uint32_t room_{},clock_{},hold_until_{};uint64_t target_{};Move last_move_{};
    std::unordered_map<uint64_t,Track> tracks_;std::vector<Reserve> reserves_;
    std::unordered_set<uint64_t> detonated_;
    std::unordered_map<uint32_t,EyeLock> eye_locks_;
    std::unordered_map<uint32_t,ProjectileBurst> projectile_bursts_;
    std::unordered_map<uint64_t,EmissionStat> emissions_;
    std::unordered_set<uint64_t> emission_seen_;
    std::vector<MonsterGeometryRef> observed_patterns_;
    EmissionDiagnostics emission_diagnostics_;
    uint32_t release_until_{};bool charged_seen_{};uint32_t last_emission_clock_{};
    uint32_t navigation_progress_clock_{};
    std::unordered_map<uint64_t,double> navigation_enemy_hp_;
    bool navigation_boost_{};
    Vec navigation_goal_{};uint32_t navigation_goal_until_{};uint64_t navigation_goal_target_{};
    Vec navigation_waypoint_{};uint32_t navigation_waypoint_until_{};uint64_t navigation_waypoint_target_{};
    Vec escape_goal_{};uint32_t escape_goal_until_{},escape_started_{};bool escaping_{};
    uint64_t navigation_motion_target_{};bool navigation_target_dynamic_{};
    std::unordered_set<int> known_hazard_cells_;
    std::unordered_set<int> kill_button_done_;
    std::vector<Threat> threats_;
    std::vector<RouteCandidate> candidates_;
    void build_threats(const Frame& frame,double horizon,const MechanismFrame* mechanisms,Fire intended_fire);
public:
    explicit Planner(PlannerConfig config={}):config_(config){}
    Decision decide(const Frame& frame,bool attack_enabled=true,const MechanismFrame* mechanisms=nullptr);
    Aim aim(const Frame& frame,Vec origin) const;
    Aim aim_at(const Frame& frame,Vec origin,uint32_t target,double time_offset=0) const;
    const std::vector<Threat>& threats() const { return threats_; }
    // Final route beam from the most recent decide(), best first. Populated
    // only when PlannerConfig::record_candidates is enabled.
    const std::vector<RouteCandidate>& candidates() const { return candidates_; }
    // Tell the planner which movement was actually applied when an outer
    // policy overrides decide(). The next frame then evaluates its hold and
    // action-change penalty against the real action instead of its own guess.
    void observe_applied(Move move,uint32_t clock);
    const EmissionDiagnostics& emission_diagnostics() const { return emission_diagnostics_; }
    void reset();
};
double blast_radius(const Entity& e);
double segment_distance(Vec p,Vec a,Vec b);
double moving_clearance(Vec a,Vec b,Vec c,Vec d,double radius);
}
