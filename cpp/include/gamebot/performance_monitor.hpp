#pragma once
#include "model.hpp"
#include <vector>

namespace gamebot {
struct FramePerformance {
    double reader_ms{},bridge_ms{},monitor_ms{},mpc_ms{},action_ms{},total_ms{};
    bool timed_out{},fallback{},safety_stop{};
};
struct PerformancePercentiles {
    double mean{},p50{},p95{},p99{},max{};
};
struct PerformanceSummary {
    uint64_t samples{};
    PerformancePercentiles reader,bridge,monitor,mpc,action,total;
    uint64_t timeouts{},fallbacks{},safety_stops{};
    json to_json() const;
};
class RuntimePerformanceMonitor {
public:
    void observe(const FramePerformance& sample);
    PerformanceSummary summary() const;
    void reset();
    uint64_t samples() const { return samples_.size(); }
private:
    std::vector<FramePerformance> samples_;
};
PerformancePercentiles percentiles(std::vector<double> values);
} // namespace gamebot
