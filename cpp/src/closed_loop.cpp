#include "gamebot/closed_loop.hpp"
#include <chrono>
#include <utility>

namespace gamebot {
namespace {
using loop_clock=std::chrono::steady_clock;
double elapsed_ms(loop_clock::time_point start) {
    return std::chrono::duration<double,std::milli>(
        loop_clock::now()-start).count();
}
}
RealtimeMpcController::RealtimeMpcController(MpcConfig mpc,LookaheadConfig lookahead,
    ClosedLoopConfig config)
    :config_(std::move(config)),mpc_(mpc,std::move(lookahead)),
     bridge_(WorldStateBridgeOptions{},IntentPredictorConfig{}) {
    progress_.set_config(mpc.progress);
    PredictionMonitorConfig monitor;
    monitor.actual_hz=config_.actual_hz;
    monitor.dt=config_.dt;
    monitor.dump_failures=config_.dump_failures;
    monitor.dump_cooldown_clock=config_.dump_cooldown_clock;
    monitor.dump_directory=config_.dump_directory;
    monitor_=PredictionErrorMonitor(std::move(monitor));
}
void RealtimeMpcController::reset() {
    mpc_.reset();
    monitor_.reset();
    bridge_.reset();
    progress_.reset();
    snapshot_=WorldStateSnapshot{};
    last_clock_=last_room_=0;
    initialized_=false;
}
void RealtimeMpcController::set_dump_directory(std::filesystem::path directory) {
    config_.dump_directory=std::move(directory);
    monitor_.set_dump_directory(config_.dump_directory);
}
ClosedLoopStep RealtimeMpcController::step(const Frame& frame,bool attack_enabled,
    const MechanismFrame* mechanisms) {
    const auto started=loop_clock::now();
    ClosedLoopStep step;
    if(!frame.valid||!frame.has_player||frame.paused||frame.transition||
       !frame.grid.valid||!frame.player.body.alive()||frame.player.body.dead) {
        const std::string reason="MPC safety stop: game state unavailable";
        monitor_.invalidate(reason);
        monitor_.clear();
        progress_.reset();
        mpc_.clear_feedback();
        step.safety_stop=true;
        step.decision.valid=false;
        step.decision.stop=true;
        step.decision.reason=reason;
        step.reason=reason;
        step.total_ms=elapsed_ms(started);
        last_clock_=last_room_=0;
        initialized_=false;
        return step;
    }
    const auto bridge_started=loop_clock::now();
    snapshot_=bridge_.build(frame,mechanisms,nullptr);
    step.bridge_ms=elapsed_ms(bridge_started);
    if(initialized_&&(snapshot_.frame.room!=last_room_||
       int(snapshot_.frame.clock)<int(last_clock_)||
       int(snapshot_.frame.clock)-int(last_clock_)>config_.clock_jump_limit)) {
        monitor_.invalidate("room or clock discontinuity");
        mpc_.reset();
        progress_.reset();
    }
    const auto monitor_started=loop_clock::now();
    step.report=monitor_.observe(snapshot_);
    step.feedback=monitor_.feedback();
    step.monitor_ms=elapsed_ms(monitor_started);
    step.prediction_available=step.report.valid;
    if(config_.monitor_predictions)mpc_.apply_feedback(step.feedback);
    else mpc_.clear_feedback();
    const auto mpc_started=loop_clock::now();
    mpc_.set_combat_progress(progress_.state());
    const JointPlan joint=mpc_.base().decide(frame,attack_enabled,mechanisms);
    step.plan=mpc_.plan(joint,snapshot_,attack_enabled);
    progress_.observe(snapshot_,combat_progress_observation(step.plan.combat,
        step.plan.decision.fire,attack_enabled));
    step.progress=progress_.state().to_json();
    step.plan.progress=step.progress;
    step.mpc_ms=elapsed_ms(mpc_started);
    step.decision=step.plan.decision;
    step.mpc_active=true;
    step.fallback=step.plan.used_fallback;
    step.stale=step.feedback.stale;
    step.reason=step.plan.reason;
    if(step.plan.decision.stop)step.safety_stop=true;
    const auto capture_started=loop_clock::now();
    if(config_.monitor_predictions&&!step.plan.sequence.segments.empty()) {
        auto trace=monitor_.capture(snapshot_,step.plan.sequence.segments,
            mpc_.horizon_frames(),mpc_.unknown_radius_scale());
        monitor_.store(std::move(trace));
    }else {
        monitor_.clear();
    }
    step.monitor_ms+=elapsed_ms(capture_started);
    step.total_ms=elapsed_ms(started);
    last_clock_=snapshot_.frame.clock;
    last_room_=snapshot_.frame.room;
    initialized_=true;
    return step;
}
} // namespace gamebot
