#pragma once
#include "model.hpp"
#include <filesystem>
#include <vector>

namespace gamebot {
// Offline review of an MPC log. This is the data layer for the same idea as
// touhou_ai's session review: direction changes, reversals, boundary dwell,
// emergency frames, candidate safety and predicted-versus-actual overlays.
// It never reads the game and never sends input.
struct SessionReviewConfig {
    double boundary_margin{56.0};
    double clock_hz{30.0};
};
struct SessionReviewFrame {
    uint32_t clock{};
    int move{-1}, fire{-1};
    bool emergency{}, gate_passed{};
    double maneuverability{}, boundary_clearance{};
    Vec player{};
    bool has_prediction{}, has_actual{};
    Vec predicted_player{}, actual_player{};
    double prediction_error{};
    json to_json() const;
};
struct SessionReviewMetrics {
    int frames{}, valid_frames{};
    int direction_switches{}, reversals{}, boundary_frames{};
    int emergency_frames{}, safety_failures{};
    double boundary_frame_rate{}, direction_switches_per_minute{};
    double mean_maneuverability{}, mean_prediction_error{};
    std::vector<SessionReviewFrame> timeline;
    json to_json() const;
};
// `records` are decoded JSONL objects from --mpc, --mpc-loop or a GUI session
// log. Missing optional fields are skipped rather than treated as zero.
SessionReviewMetrics analyze_mpc_session_records(const std::vector<json>& records,
    SessionReviewConfig config = {});
SessionReviewMetrics analyze_mpc_session(const std::filesystem::path& input,
    SessionReviewConfig config = {}, std::string* error = nullptr);
} // namespace gamebot
