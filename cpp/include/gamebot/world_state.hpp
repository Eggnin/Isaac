#pragma once
#include "attack_forecast.hpp"
#include "enemy_intent.hpp"
#include "model.hpp"
#include "unknown_threat.hpp"
#include <cstdint>
#include <map>
#include <optional>
#include <string>
#include <unordered_map>
#include <vector>

namespace gamebot {
// Every value that crosses from the game into a simulator carries how it was
// obtained. `exact` means the Reader copied the field from game memory on the
// frame this snapshot describes. `estimated` means a formula or a
// model produced it. `unknown` means the field is not available and the
// simulator must not pretend it is.
enum class Precision : uint8_t { unknown = 0, estimated = 1, exact = 2 };
const char* precision_name(Precision value);
Precision precision_from_name(const std::string& name);

struct FieldEvidence {
    Precision precision{Precision::unknown};
    std::string source{"unavailable"};
    // Absolute uncertainty in the field's own units when the producer can
    // bound it (for example a radius margin). Zero means "not quantified";
    // it never means "exact".
    double uncertainty{};
    bool present{};
};
// A dotted-path table. Paths are fixed strings chosen by the bridge, so the
// table stays small and survives serialization without per-field structs.
class ProvenanceTable {
public:
    void set(std::string path, Precision precision, std::string source, double uncertainty = 0);
    FieldEvidence get(const std::string& path) const;
    bool has(const std::string& path) const;
    int count(Precision precision) const;
    int total() const { return int(fields_.size()); }
    // exact = 1.0, estimated = 0.5, unknown = 0.0, averaged over every field.
    double coverage() const;
    const std::map<std::string, FieldEvidence>& fields() const { return fields_; }
    json to_json() const;
    static ProvenanceTable from_json(const json& value);
    void merge(const ProvenanceTable& other);
private:
    std::map<std::string, FieldEvidence> fields_;
};

struct PlayerState {
    Entity body;
    double max_speed{260}, tear_speed{300}, tear_range{260}, fire_delay{10};
    int health{};
    int fire_direction{-1};
    bool flying{}, can_shoot{true}, controls{true}, attack_supported{true};
    bool dead{};
    std::vector<Weapon> weapons;
    // The Reader does not read the player's invulnerability counter or the
    // current tear cooldown. Keep them explicit instead of defaulting them to
    // "zero means ready".
    std::optional<int> invulnerability_frames;
    std::optional<int> shot_cooldown_frames;
    ProvenanceTable provenance;
};

struct EnemyState {
    Entity entity;
    MechanismObservation mechanism;
    bool mechanism_known{};
    int boss_phase{-1};
    bool boss_phase_known{};
    // Intents recognised at the snapshot frame for this enemy only. The
    // simulator uses them as attack primitives and re-aims them per branch.
    std::vector<EnemyIntent> intents;
    bool has_precise_attack{};
    bool unknown_mechanism{};
    ProvenanceTable provenance;
};

enum class ProjectileRole : uint8_t { hostile, friendly, neutral };
struct ProjectileState {
    Entity entity;
    ProjectileRole role{ProjectileRole::hostile};
    bool real{true};   // false only for explicitly labelled virtual entities
    ProvenanceTable provenance;
};

enum class HazardKind : uint8_t {
    warning, laser, creep, fire, explosion, pit, smoke, contact, unknown
};
const char* hazard_kind_name(HazardKind value);
struct HazardState {
    HazardKind kind{HazardKind::unknown};
    Vec pos{}, end{}, vel{};
    double radius{}, start{}, until{};
    DamageClass damage_class{DamageClass::unknown};
    DamageTiming damage_timing{DamageTiming::instant};
    double damage{}, risk_weight{1};
    uint32_t source{};
    bool virtual_hazard{};
    bool lethal{};
    std::string label, evidence;
    std::vector<Vec> path;
    std::vector<LaserNode> nodes;
    Shape shape{Shape::disc};
    Precision precision{Precision::unknown};
    ProvenanceTable provenance;
};

struct RoomGeometryState {
    Grid grid;
    int room_type{};
    int doors{};
    ProvenanceTable provenance;
};

struct GameFrameState {
    uint64_t sequence{};
    uint32_t clock{}, room{}, pid{}, clear_flags{};
    double captured_ms{}, read_ms{};
    bool valid{}, paused{}, transition{}, cleared{}, pressure_plates_triggered{};
    ProvenanceTable provenance;
};

struct EntityTimer {
    uint32_t id{};
    int birth{}, timeout{}, state{}, state_frame{};
    int projectile_cooldown{}, projectile_delay{}, boss_status_cooldown{};
    double animation_frame{}, animation_length{};
    std::string animation;
    bool animation_loop{}, dead{};
    ProvenanceTable provenance;
};

struct AttackCooldown {
    uint32_t source{};
    int projectile_cooldown{}, projectile_delay{};
    bool known{};
    Precision precision{Precision::unknown};
    std::string source_note;
};

struct RngState {
    bool available{};
    uint64_t state{};
    uint32_t seed_hint{};
    std::string source{"Reader does not capture the native RNG"};
    Precision precision{Precision::unknown};
};

// Cross-frame entity bookkeeping. The bridge fills this so the simulator can
// tell a fresh spawn from a replaced or resurrected body.
enum class LifecycleKind : uint8_t { spawned, despawned, died, revived, replaced };
const char* lifecycle_kind_name(LifecycleKind value);
struct LifecycleTransition {
    uint32_t id{};
    LifecycleKind kind{LifecycleKind::spawned};
    int type{}, variant{}, subtype{};
    double hp{};
};

struct WorldStateSnapshot {
    int schema{1};
    GameFrameState frame;
    PlayerState player;
    std::vector<EnemyState> enemies;
    std::vector<ProjectileState> projectiles;
    std::vector<HazardState> hazards;
    RoomGeometryState room;
    std::vector<EntityTimer> timers;
    std::vector<AttackCooldown> cooldowns;
    RngState rng;
    std::vector<uint32_t> native_target_order;
    bool native_target_order_known{};
    std::vector<LifecycleTransition> lifecycle;
    std::vector<std::string> notes;
    json diagnostics=json::object();
    ProvenanceTable provenance;
    // Aggregated counts. They are recomputed by to_json()/from_json().
    int exact_fields{}, estimated_fields{}, unknown_fields{};
    void recount();
    json to_json() const;
    static WorldStateSnapshot from_json(const json& value);
};

struct WorldStateBridgeOptions {
    bool include_mechanism_warnings{true};
    bool include_unknown_tracking{true};
    bool include_unknown_attacks{true};
    bool infer_entity_identity{true};
    bool classify_lifecycle{true};
    bool attach_intents{true};
    int max_hazards{512};
    double warning_dedupe_seconds{0.12};
    double warning_dedupe_distance{24};
    int min_confidence_hundredths{20};
};

struct BridgeReport {
    int enemies{}, projectiles{}, hazards{}, real_hazards{}, virtual_hazards{};
    int exact_fields{}, estimated_fields{}, unknown_fields{};
    int spawned{}, despawned{}, died{}, revived{}, replaced{}, stale_references{};
    int intents{}, precise_enemies{}, unknown_enemies{};
    int deduplicated_hazards{};
    bool mechanisms_used{}, unknown_assessment_used{};
    std::string dedupe_note;
    json to_json() const;
};

// Converts Reader + MechanismFrame + UnknownAssessment into one snapshot.
// The bridge is stateful only for lifecycle classification and deduplication;
// snapshot construction itself never invents a precise value.
class WorldStateBridge {
public:
    explicit WorldStateBridge(WorldStateBridgeOptions options={},
        IntentPredictorConfig intent_config={});
    WorldStateSnapshot build(const Frame& frame, const MechanismFrame* mechanisms=nullptr,
        const UnknownAssessment* unknown=nullptr);
    const BridgeReport& report() const { return report_; }
    const WorldStateBridgeOptions& options() const { return options_; }
    void set_options(WorldStateBridgeOptions options) { options_=options; }
    void reset();
    static WorldStateSnapshot snapshot(const Frame& frame, const MechanismFrame* mechanisms=nullptr,
        const UnknownAssessment* unknown=nullptr, WorldStateBridgeOptions options={});
private:
    struct PreviousEntity {
        uint32_t id{}; int type{}, variant{}, subtype{}; double hp{}; bool dead{};
    };
    WorldStateBridgeOptions options_;
    EnemyIntentPredictor intents_;
    BridgeReport report_;
    std::unordered_map<uint32_t, PreviousEntity> previous_;
    uint32_t last_clock_{};
    uint32_t last_room_{};
};
} // namespace gamebot
