#pragma once
#include "mpc.hpp"
#include "prediction_monitor.hpp"
#include <filesystem>

namespace gamebot {
struct ClosedLoopConfig {
    bool monitor_predictions{true};
    int actual_hz{30};
    double dt{1.0/60};
    int clock_jump_limit{120};
    bool dump_failures{true};
    int dump_cooldown_clock{30};
    std::filesystem::path dump_directory;
};
struct ClosedLoopStep {
    bool mpc_active{},safety_stop{},stale{},fallback{},prediction_available{};
    Decision decision;
    MpcPlan plan;
    PredictionErrorReport report;
    PredictionFeedback feedback;
    json progress=json::object();
    double bridge_ms{},monitor_ms{},mpc_ms{},total_ms{};
    std::string reason;
};
// Owns the live MPC loop pieces that must agree on one snapshot: the world
// bridge, the MPC planner, and the prediction-error monitor. A caller only
// applies `decision`; the monitor compares the stored prediction with the next
// real snapshot before that next decision is made.
class RealtimeMpcController {
public:
    explicit RealtimeMpcController(MpcConfig mpc={},
        LookaheadConfig lookahead=default_mpc_lookahead(),
        ClosedLoopConfig config={});
    ClosedLoopStep step(const Frame& frame,bool attack_enabled=true,
        const MechanismFrame* mechanisms=nullptr);
    void reset();
    void set_dump_directory(std::filesystem::path directory);
    void set_monitor_config(PredictionMonitorConfig config) {
        monitor_.set_config(std::move(config));
    }
    MpcCombatPlanner& mpc() { return mpc_; }
    const MpcCombatPlanner& mpc() const { return mpc_; }
    PredictionErrorMonitor& monitor() { return monitor_; }
    const PredictionErrorMonitor& monitor() const { return monitor_; }
    const WorldStateSnapshot& snapshot() const { return snapshot_; }
    const CombatProgressTracker& progress_tracker() const { return progress_; }
private:
    ClosedLoopConfig config_;
    MpcCombatPlanner mpc_;
    PredictionErrorMonitor monitor_;
    CombatProgressTracker progress_;
    WorldStateBridge bridge_;
    WorldStateSnapshot snapshot_;
    uint32_t last_clock_{},last_room_{};
    bool initialized_{};
};
} // namespace gamebot
