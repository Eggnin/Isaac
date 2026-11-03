#include "gamebot/performance_monitor.hpp"
#include <algorithm>
#include <cmath>

namespace gamebot {
namespace {
double percentile(const std::vector<double>& values,double fraction) {
    if(values.empty())return 0;
    const double position=std::clamp(fraction,0.0,1.0)*double(values.size()-1);
    const size_t lower=size_t(std::floor(position));
    const size_t upper=size_t(std::ceil(position));
    if(lower==upper)return values[lower];
    return values[lower]+(values[upper]-values[lower])*(position-double(lower));
}
}
PerformancePercentiles percentiles(std::vector<double> values) {
    PerformancePercentiles result;
    if(values.empty())return result;
    std::stable_sort(values.begin(),values.end());
    double sum=0;
    for(const double value:values)sum+=value;
    result.mean=sum/double(values.size());
    result.p50=percentile(values,0.50);
    result.p95=percentile(values,0.95);
    result.p99=percentile(values,0.99);
    result.max=values.back();
    return result;
}
void RuntimePerformanceMonitor::observe(const FramePerformance& sample) {
    samples_.push_back(sample);
}
void RuntimePerformanceMonitor::reset() { samples_.clear(); }
PerformanceSummary RuntimePerformanceMonitor::summary() const {
    PerformanceSummary result;
    result.samples=samples_.size();
    std::vector<double> reader,bridge,monitor,mpc,action,total;
    reader.reserve(samples_.size());bridge.reserve(samples_.size());
    monitor.reserve(samples_.size());mpc.reserve(samples_.size());
    action.reserve(samples_.size());total.reserve(samples_.size());
    for(const auto& sample:samples_) {
        reader.push_back(sample.reader_ms);
        bridge.push_back(sample.bridge_ms);
        monitor.push_back(sample.monitor_ms);
        mpc.push_back(sample.mpc_ms);
        action.push_back(sample.action_ms);
        total.push_back(sample.total_ms);
        if(sample.timed_out)++result.timeouts;
        if(sample.fallback)++result.fallbacks;
        if(sample.safety_stop)++result.safety_stops;
    }
    result.reader=percentiles(std::move(reader));
    result.bridge=percentiles(std::move(bridge));
    result.monitor=percentiles(std::move(monitor));
    result.mpc=percentiles(std::move(mpc));
    result.action=percentiles(std::move(action));
    result.total=percentiles(std::move(total));
    return result;
}
json PerformanceSummary::to_json() const {
    auto row=[](const PerformancePercentiles& value) {
        return json{{"mean",value.mean},{"p50",value.p50},{"p95",value.p95},
            {"p99",value.p99},{"max",value.max}};
    };
    return {{"samples",samples},{"reader_ms",row(reader)},
        {"bridge_ms",row(bridge)},{"monitor_ms",row(monitor)},
        {"mpc_ms",row(mpc)},{"action_ms",row(action)},{"total_ms",row(total)},
        {"timeouts",timeouts},{"fallbacks",fallbacks},{"safety_stops",safety_stops}};
}
} // namespace gamebot
