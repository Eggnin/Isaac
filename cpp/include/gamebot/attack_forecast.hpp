#pragma once
#include "model.hpp"
#include <string>
#include <vector>
namespace gamebot {
// Executable attack primitives. Behaviour recognition is kept separate from
// the primitive that finally produces a hazard.
enum class AttackPrimitive : uint8_t {
    unknown,
    aimed_projectile,
    radial_projectile,
    spread_projectile,
    laser,
    charge,
    jump_landing,
    summon,
    self_explosion,
    area_explosion,
    uncertain_area,
    uncertain_corridor,
};
enum class AttackEvidence : uint8_t {
    unknown,
    candidate,   // static/decompiled candidate, not safe for precise geometry
    inferred,    // Reader state + recovered parameter, no independent geometry oracle
    verified,    // timing/geometry explicitly validated by the mechanism model
};
enum class AttackTargeting : uint8_t {
    unknown,
    player_position,
    player_velocity_lead,
    source_target,
    fixed_direction,
    self,
    area,
};
const char* attack_primitive_name(AttackPrimitive value);
const char* attack_evidence_name(AttackEvidence value);
const char* attack_targeting_name(AttackTargeting value);

// A recognized intention at the current Reader frame. It is not yet tied to a
// particular player path. `can_instantiate` is false when the mechanism has no
// trustworthy direction/speed/shape; callers must not invent a precise threat.
struct EnemyIntent {
    uint32_t enemy_id{}, seed{};
    int type{}, variant{}, subtype{};
    int state{-1}, state_frame{};
    std::string animation;
    double animation_frame{};
    Vec position{}, velocity{}, target_position{};
    Vec direction{};
    int projectile_cooldown{}, projectile_delay{};
    AttackPrimitive primitive{AttackPrimitive::unknown};
    AttackEvidence evidence{AttackEvidence::unknown};
    AttackTargeting targeting{AttackTargeting::unknown};
    int64_t trigger_frame{-1}, end_frame{-1};
    double trigger_time{-1};   // seconds from the prediction frame
    double duration{};
    double confidence{};
    double projectile_speed{};
    double spread_angle{};     // full fan width in degrees
    double collision_radius{};
    double damage{};
    double length{};           // laser/charge reach
    double risk_weight{1};
    bool unknown{};
    int projectile_count{1};
    bool can_instantiate{};
    std::string prediction_source, attack_type, evidence_status;
    json evidence_detail=json::object();
};
// An action-conditioned event: target/direction are evaluated at the player
// position the candidate path will occupy on the trigger frame.
struct AttackForecast {
    uint32_t enemy_id{}, seed{};
    int type{}, variant{}, subtype{};
    AttackPrimitive primitive{AttackPrimitive::unknown};
    AttackEvidence evidence{AttackEvidence::unknown};
    AttackTargeting targeting{AttackTargeting::unknown};
    int64_t trigger_frame{-1}, end_frame{-1};
    double trigger_time{};
    double duration{};
    Vec spawn_position{}, target_position{}, direction{};
    double projectile_speed{};
    double spread_angle{};
    double collision_radius{};
    double damage{};
    double length{};
    double risk_weight{1};
    bool unknown{};
    int projectile_count{1};
    double prediction_confidence{};
    std::string prediction_source, attack_type, evidence_status, forecast_id;
    json evidence_detail=json::object();
};
struct ForecastPath {
    std::vector<AttackForecast> forecasts;
    int instantiated{}, skipped_no_geometry{}, skipped_no_target{}, skipped_out_of_horizon{};
};
struct VirtualThreatConfig {
    double horizon{1.5};
    double min_confidence{0.3};
    int max_projectiles{32};
    bool include_inferred{true};
    bool include_candidate{};
    double dedupe_distance{24};
};
struct VirtualThreatBatch {
    std::vector<Threat> threats;
    int real_threats{}, generated{}, deduplicated{};
    std::vector<std::string> diagnostics;
};
struct IntentCoverage {
    int enemies{}, observations{}, state_known{}, animation_known{}, target_known{};
    int velocity_known{}, cooldown_known{}, delay_known{}, ai_known{};
    int timing_known{}, geometry_known{};
    int verified{}, inferred{}, candidate{}, unknown{};
};
json intent_json(const EnemyIntent& intent);
json forecast_json(const AttackForecast& forecast);
json coverage_json(const IntentCoverage& coverage);

class VirtualThreatGenerator {
public:
    explicit VirtualThreatGenerator(VirtualThreatConfig config={}):config_(config){}
    VirtualThreatBatch generate(const std::vector<AttackForecast>& forecasts,const Frame& frame,
        const std::vector<Threat>& existing,double horizon) const;
    const VirtualThreatConfig& config() const { return config_; }
private:
    VirtualThreatConfig config_;
};
}
