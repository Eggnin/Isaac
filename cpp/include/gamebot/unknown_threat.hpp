#pragma once
#include "attack_forecast.hpp"
#include "model.hpp"
#include <string>
#include <unordered_map>
#include <vector>
namespace gamebot {
enum class UnknownClassification : uint8_t {
    unknown,          // no identity/state evidence
    tracked,          // generic physical tracking only
    uncertain_attack, // attack cue, no precise geometry
    identified,       // precise mechanism geometry/timing available
};
const char* unknown_classification_name(UnknownClassification value);

struct UnknownStateSample {
    int64_t frame{};
    Vec pos{}, vel{}, target{};
    int state{-1}, state_frame{};
    double animation_frame{};
    std::string animation;
    int ai_i1{}, ai_i2{}, cooldown{}, delay{};
    double hp{};
    bool precise{};
};
struct UnknownHypothesis {
    std::string id, evidence, primitive;
    double confidence{};
    double risk_weight{1};
    double trigger_time{};
    double radius{};
    json detail=json::object();
};
struct UnknownEntityRecord {
    uint32_t enemy_id{}, seed{};
    int type{}, variant{}, subtype{};
    UnknownClassification classification{UnknownClassification::unknown};
    int64_t first_frame{}, last_frame{};
    int samples{};
    std::string identity_key, animation;
    bool precise{};
    std::vector<UnknownStateSample> history;
    std::vector<UnknownHypothesis> hypotheses;
    std::vector<std::string> revisions;
};
struct UnknownThreatConfig {
    double horizon{1.2};
    double emergency_horizon{0.7};
    double emergency_margin{40};
    double risk_threshold{2.0};
    int max_history{128};
    int max_entities{256};
    bool include_tracking{true};
    bool include_uncertain_attack{true};
};
struct UnknownAssessment {
    std::vector<UnknownEntityRecord> entities;
    std::vector<EnemyIntent> attack_intents;
    std::vector<Threat> tracking_threats;
    int unknown_entities{};
    int tracked_entities{};
    int uncertain_attacks{};
    int identified_entities{};
    bool emergency{};
    double emergency_risk{};
    uint32_t emergency_enemy{};
    std::string emergency_reason;
};
json unknown_assessment_json(const UnknownAssessment& assessment);
// Tracks every hostile entity that is not fully explained by the mechanism
// database. It never drops an unknown body: even with zero type/state evidence
// it emits a generic physical motion threat and keeps a bounded state history.
class UnknownThreatManager {
public:
    explicit UnknownThreatManager(UnknownThreatConfig config={}):config_(config){}
    UnknownAssessment assess(const Frame& frame,const MechanismFrame* mechanisms);
    void reset();
    const UnknownThreatConfig& config() const { return config_; }
private:
    UnknownThreatConfig config_;
    std::unordered_map<uint64_t,UnknownEntityRecord> records_;
};
}
