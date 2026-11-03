#include "gamebot/session_review.hpp"
#include <algorithm>
#include <cmath>
#include <fstream>
#include <limits>

namespace gamebot {
namespace {
int opposite_move(int move) {
    switch (move) {
    case 1: return 5;  // north / south
    case 2: return 6;  // northeast / southwest
    case 3: return 7;  // east / west
    case 4: return 8;  // southeast / northwest
    case 5: return 1;
    case 6: return 2;
    case 7: return 3;
    case 8: return 4;
    default: return 0;
    }
}
bool finite_number(const json& value) {
    return value.is_number() && std::isfinite(value.get<double>());
}
void read_vec(const json& object, const char* key, Vec& out, bool& present) {
    if (!object.is_object() || !object.contains(key)) return;
    const auto& value = object.at(key);
    if (value.is_array() && value.size() >= 2 &&
        finite_number(value.at(0)) && finite_number(value.at(1))) {
        out = {value.at(0).get<double>(), value.at(1).get<double>()};
        present = true;
    } else if (value.is_object() && value.contains("x") && value.contains("y") &&
        finite_number(value.at("x")) && finite_number(value.at("y"))) {
        out = {value.at("x").get<double>(), value.at("y").get<double>()};
        present = true;
    }
}
} // namespace

json SessionReviewFrame::to_json() const {
    json out{{"clock", clock}, {"move", move}, {"fire", fire},
        {"emergency", emergency}, {"gate_passed", gate_passed},
        {"maneuverability", maneuverability},
        {"boundary_clearance", boundary_clearance}};
    if (player.finite()) out["player"] = player;
    if (has_prediction) out["predicted_player"] = predicted_player;
    if (has_actual) out["actual_player"] = actual_player;
    if (has_prediction && has_actual) out["prediction_error"] = prediction_error;
    return out;
}
json SessionReviewMetrics::to_json() const {
    json rows = json::array();
    for (const auto& frame : timeline) rows.push_back(frame.to_json());
    return {{"frames", frames}, {"valid_frames", valid_frames},
        {"direction_switches", direction_switches}, {"reversals", reversals},
        {"boundary_frames", boundary_frames},
        {"boundary_frame_rate", boundary_frame_rate},
        {"direction_switches_per_minute", direction_switches_per_minute},
        {"emergency_frames", emergency_frames},
        {"safety_failures", safety_failures},
        {"mean_maneuverability", mean_maneuverability},
        {"mean_prediction_error", mean_prediction_error},
        {"timeline", rows}};
}

SessionReviewMetrics analyze_mpc_session_records(const std::vector<json>& records,
                                                 SessionReviewConfig config) {
    SessionReviewMetrics metrics;
    int previous_move = -1;
    uint32_t first_clock = 0;
    bool have_clock = false;
    double maneuver_sum = 0.0;
    int maneuver_count = 0;
    double prediction_sum = 0.0;
    int prediction_count = 0;
    for (const auto& record : records) {
        if (!record.is_object() || !record.contains("mpc") ||
            !record.at("mpc").is_object())
            continue;
        const auto& mpc = record.at("mpc");
        SessionReviewFrame frame;
        bool safety_present=false;
        frame.clock = record.value("clock", uint32_t{0});
        if (frame.clock == 0 && record.contains("frame") && record.at("frame").is_object())
            frame.clock = record.at("frame").value("clock", uint32_t{0});
        if (!have_clock && frame.clock != 0) {
            first_clock = frame.clock;
            have_clock = true;
        }
        if (mpc.contains("first") && mpc.at("first").is_object()) {
            frame.move = mpc.at("first").value("move", -1);
            frame.fire = mpc.at("first").value("fire", -1);
        }
        if (mpc.contains("sequence") && mpc.at("sequence").is_object()) {
            const auto& sequence = mpc.at("sequence");
            if (sequence.contains("segments") && sequence.at("segments").is_array() &&
                !sequence.at("segments").empty()) {
                const auto& segment = sequence.at("segments").front();
                if (frame.move < 0) frame.move = segment.value("move", -1);
                if (frame.fire < 0) frame.fire = segment.value("fire", -1);
            }
            if (sequence.contains("trajectory") && sequence.at("trajectory").is_array() &&
                !sequence.at("trajectory").empty()) {
                const auto& point = sequence.at("trajectory").front();
                if (point.is_array() && point.size() >= 2 &&
                    finite_number(point.at(0)) && finite_number(point.at(1))) {
                    frame.player = {point.at(0).get<double>(), point.at(1).get<double>()};
                    frame.has_actual = true;
                }
            }
            if (sequence.contains("safety") && sequence.at("safety").is_object()) {
                const auto& safety = sequence.at("safety");
                safety_present=true;
                frame.gate_passed = safety.value("safe", false);
                frame.emergency = safety.value("in_danger", false);
                frame.maneuverability = safety.value("maneuverability", 0.0);
                frame.boundary_clearance = safety.value("boundary_clearance", 1e9);
            }
        }
        if (mpc.contains("safety") && mpc.at("safety").is_object()) {
            const auto& safety = mpc.at("safety");
            safety_present=true;
            frame.gate_passed = safety.value("safe", frame.gate_passed);
            frame.emergency = safety.value("in_danger", false) ||
                mpc.value("emergency", false);
            frame.maneuverability = safety.value("maneuverability", frame.maneuverability);
            frame.boundary_clearance = safety.value("boundary_clearance",
                frame.boundary_clearance);
        }
        if (mpc.value("emergency", false)) frame.emergency = true;
        // A full GUI session record has the actual frame. Prefer it over the
        // MPC trajectory when both exist.
        if (record.contains("frame") && record.at("frame").is_object()) {
            const auto& actual = record.at("frame");
            if (actual.contains("player") && actual.at("player").is_object()) {
                const auto& player = actual.at("player");
                if (player.contains("body") && player.at("body").is_object())
                    read_vec(player.at("body"), "pos", frame.player, frame.has_actual);
                if (actual.contains("grid") && frame.has_actual) {
                    const auto grid = actual.at("grid").get<Grid>();
                    frame.boundary_clearance = grid.clearance(frame.player,
                        std::max(1.0, player.at("body").value("radius", 10.0)),
                        player.value("flying", false));
                }
            }
        }
        if (std::isfinite(frame.boundary_clearance) &&
            frame.boundary_clearance < config.boundary_margin)
            ++metrics.boundary_frames;
        if (record.contains("closed_loop") && record.at("closed_loop").is_object()) {
            const auto& loop = record.at("closed_loop");
            if (loop.contains("prediction") && loop.at("prediction").is_object()) {
                const auto& prediction = loop.at("prediction");
                if (prediction.value("overlay_valid", false)) {
                    read_vec(prediction, "predicted_player", frame.predicted_player,
                        frame.has_prediction);
                    read_vec(prediction, "actual_player", frame.actual_player,
                        frame.has_actual);
                    if (frame.has_prediction && frame.has_actual) {
                        frame.prediction_error = distance(frame.predicted_player,
                            frame.actual_player);
                        prediction_sum += frame.prediction_error;
                        ++prediction_count;
                    }
                } else if (prediction.contains("player_position_error")) {
                    Vec error;
                    bool present = false;
                    read_vec(prediction, "player_position_error", error, present);
                    if (present) {
                        frame.prediction_error = error.norm();
                        prediction_sum += frame.prediction_error;
                        ++prediction_count;
                    }
                }
            }
        }
        if (frame.move >= 0) {
            ++metrics.valid_frames;
            if (previous_move >= 0 && frame.move != previous_move) {
                ++metrics.direction_switches;
                if (frame.move == opposite_move(previous_move)) ++metrics.reversals;
            }
            previous_move = frame.move;
        }
        if (frame.emergency) ++metrics.emergency_frames;
        if (safety_present && !frame.gate_passed) ++metrics.safety_failures;
        if (std::isfinite(frame.maneuverability)) {
            maneuver_sum += frame.maneuverability;
            ++maneuver_count;
        }
        ++metrics.frames;
        metrics.timeline.push_back(std::move(frame));
    }
    const double minutes = have_clock ?
        std::max(0.0, double(metrics.timeline.empty() ? 0 :
            metrics.timeline.back().clock) - double(first_clock)) /
            std::max(1.0, config.clock_hz) / 60.0 : 0.0;
    metrics.boundary_frame_rate = metrics.frames > 0 ?
        double(metrics.boundary_frames) / double(metrics.frames) : 0.0;
    metrics.direction_switches_per_minute = minutes > 1e-9 ?
        double(metrics.direction_switches) / minutes : 0.0;
    metrics.mean_maneuverability = maneuver_count > 0 ?
        maneuver_sum / double(maneuver_count) : 0.0;
    metrics.mean_prediction_error = prediction_count > 0 ?
        prediction_sum / double(prediction_count) : 0.0;
    return metrics;
}

SessionReviewMetrics analyze_mpc_session(const std::filesystem::path& input,
                                         SessionReviewConfig config,
                                         std::string* error) {
    std::ifstream in{input};
    if (!in) {
        if (error) *error = "cannot open session input: " + input.string();
        return {};
    }
    std::vector<json> records;
    std::string line;
    while (std::getline(in, line)) {
        if (line.empty()) continue;
        try {
            records.push_back(json::parse(line));
        } catch (const std::exception&) {
            // A truncated final line should not discard the whole review.
            continue;
        }
    }
    if (error) error->clear();
    return analyze_mpc_session_records(records, config);
}
} // namespace gamebot
