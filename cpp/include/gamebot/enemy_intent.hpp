#pragma once
#include "attack_forecast.hpp"
#include "model.hpp"
#include <optional>
#include <string>
#include <vector>
namespace gamebot {
struct IntentPredictorConfig {
    double horizon{1.2};
    double min_confidence{0.25};
    int max_intents{128};
    bool use_geometry_models{true};
    bool use_mechanism_warnings{true};
    bool use_animation_cues{true};
    bool include_candidate{};
};
// Converts Reader state + the recovered mechanism frame into attack intentions.
// It never reads game memory itself and never invents speed/direction when the
// mechanism data does not contain them.
class EnemyIntentPredictor {
public:
    explicit EnemyIntentPredictor(IntentPredictorConfig config={}):config_(config){}
    std::vector<EnemyIntent> predict(const Frame& frame,const MechanismFrame* mechanisms);
    // Evaluate one recognised intent against the player position the candidate
    // path reaches on its trigger frame.
    std::optional<AttackForecast> instantiate(const EnemyIntent& intent,const Frame& frame,
        Vec player_at_trigger,double now) const;
    ForecastPath instantiate_path(const std::vector<EnemyIntent>& intents,const Frame& frame,
        const std::vector<Vec>& path,double dt) const;
    const IntentCoverage& coverage() const { return coverage_; }
    const IntentPredictorConfig& config() const { return config_; }
    void reset() { coverage_={}; }
private:
    IntentPredictorConfig config_;
    IntentCoverage coverage_;
};
}
