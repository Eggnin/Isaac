#pragma once
#include "forward_sim.hpp"
#include "world_state.hpp"
#include <filesystem>
#include <map>

namespace gamebot {
// One simulated frame of the MPC prediction. These are deliberately
// lightweight copies: the monitor compares them with the next real snapshot,
// it never feeds them back into the game or into a different branch.
struct PredictedEnemy {
    uint32_t id{},seed{};
    int type{},variant{},subtype{},state{},boss_phase{1};
    Vec pos{},vel{};
    double hp{};
    bool boss{},dead{};
};
struct PredictedProjectile {
    uint32_t id{},source{};
    Vec pos{},vel{},spawn_pos{};
    double radius{},damage{},age{},life{};
    bool hostile{true};
};
struct PredictedHazard {
    uint32_t source{};
    std::string label;
    Vec pos{},end{};
    double radius{},active_from{},active_until{};
    int kind{},shape{};
    Precision precision{Precision::unknown};
    bool virtual_hazard{},dead{};
    std::vector<Vec> path;
    std::vector<Vec> nodes;
};
struct PredictedFrame {
    int frame{};
    double time{};
    Vec player_pos{},player_vel{};
    int player_health{};
    bool player_dead{},cleared{};
    std::vector<PredictedEnemy> enemies;
    std::vector<PredictedProjectile> projectiles;
    std::vector<PredictedHazard> hazards;
    json to_json() const;
};
struct PredictionTrace {
    WorldStateSnapshot root;
    uint64_t root_signature{};
    uint32_t root_clock{},root_room{};
    int actual_hz{30};
    double dt{1.0/60};
    std::vector<SimActionSegment> plan;
    std::vector<PredictedFrame> frames;
    bool valid{};
    int total_frames() const;
    json to_json(bool include_root=true) const;
};
struct SourcePredictionError {
    uint32_t id{};
    int type{},variant{},subtype{},samples{};
    double position{},velocity{},hp{},state{},boss_phase{};
    double score{},trust_error{};
    bool low_trust{};
    json to_json() const;
};
struct PredictionErrorReport {
    bool valid{},stale{},expired{},high_error{},fallback{};
    double raw_error{},error_score{},smoothed_error{};
    double reader_error{},time_sync_error{},model_error{};
    Vec player_position_error{},player_velocity_error{};
    // Predicted-versus-actual overlay for GUI/CLI review. These are the matched
    // prediction frame and the real Reader position, not a new estimate.
    bool overlay_valid{};
    int overlay_frame{};
    uint32_t overlay_clock{};
    Vec predicted_player{},actual_player{};
    int health_delta{};
    double enemy_position_error{},enemy_velocity_error{},enemy_hp_error{};
    int enemy_state_mismatch{},enemy_count_delta{},boss_phase_mismatch{};
    int projectile_count_delta{};
    double projectile_position_error{},projectile_velocity_error{},projectile_age_error{};
    int hazard_count_delta{};
    double hazard_position_error{},hazard_radius_error{},hazard_timing_error{};
    int unknown_hazard_mismatch{};
    std::vector<SourcePredictionError> sources;
    std::vector<uint32_t> low_trust_sources;
    std::string predicted_damage_cause;
    uint32_t predicted_damage_source{};
    std::string reason,dump_path;
    json to_json() const;
};
struct PredictionFeedback {
    double error_score{},smoothed_error{};
    bool high_error{},stale{},fallback{};
    double horizon_scale{1.0};
    double unknown_radius_scale{1.0};
    int low_trust_sources{};
    std::string reason;
    json to_json() const;
};
struct PredictionMonitorConfig {
    int actual_hz{30};
    double dt{1.0/60};
    double warn_threshold{0.25};
    double fallback_threshold{0.55};
    double smoothing{0.55};
    double error_scale{2.0};
    double position_tolerance{24};
    double velocity_tolerance{80};
    double projectile_tolerance{40};
    double hazard_tolerance{36};
    double warn_horizon_scale{0.70};
    double high_horizon_scale{0.50};
    double warn_unknown_expansion{1.5};
    double high_unknown_expansion{2.2};
    double low_trust_threshold{0.55};
    double trust_smoothing{0.25};
    int max_prediction_frames{240};
    bool dump_failures{true};
    std::filesystem::path dump_directory;
    int dump_cooldown_clock{30};
};
// Compares each stored future frame with the next real Reader snapshot. The
// monitor never mutates the prediction or the game state. Its only outputs are
// an error report and a bounded feedback policy for the MPC layer.
class PredictionErrorMonitor {
public:
    explicit PredictionErrorMonitor(PredictionMonitorConfig config={});
    PredictionTrace capture(const WorldStateSnapshot& root,
        const std::vector<SimActionSegment>& plan,int horizon_frames,
        double unknown_radius_scale=1.0,std::string* error=nullptr) const;
    void store(PredictionTrace trace);
    void clear();
    void invalidate(const std::string& reason);
    PredictionErrorReport observe(const WorldStateSnapshot& actual);
    const PredictionFeedback& feedback() const { return feedback_; }
    const PredictionErrorReport& last_report() const { return last_report_; }
    const PredictionTrace& trace() const { return trace_; }
    const PredictionMonitorConfig& config() const { return config_; }
    void set_config(PredictionMonitorConfig config) { config_=std::move(config); }
    void set_dump_directory(std::filesystem::path directory) {
        config_.dump_directory=std::move(directory);
    }
    void reset();
private:
    PredictionMonitorConfig config_;
    PredictionTrace trace_;
    PredictionFeedback feedback_;
    PredictionErrorReport last_report_;
    double smoothed_error_{};
    uint32_t last_dump_clock_{};
    std::string last_stale_reason_;
    std::map<uint32_t,double> trust_error_;
};
} // namespace gamebot
