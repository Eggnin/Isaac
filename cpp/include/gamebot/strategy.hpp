#pragma once
#include "mpc.hpp"
#include "semantics.hpp"
#include "safety.hpp"
#include "world_state.hpp"
#include <filesystem>
#include <map>
#include <optional>
#include <string>
#include <vector>

namespace gamebot {
// ---------------------------------------------------------------------------
// 1. Combat scenario classification
// ---------------------------------------------------------------------------
// The classifier reads only the recovered WorldStateSnapshot and the optional
// MechanismFrame. It does not use a fixed Type/Variant table: tags are derived
// from observed enemy count/behaviour, projectile density, attack directions,
// free space, mechanism confidence and Boss phase. Several tags may hold at
// once; the first tag in `tags` is the primary (most specific/risky) one.
enum class ScenarioTag : uint8_t {
    normal_room = 0,
    melee_pressure,
    ranged_pressure,
    dense_projectiles,
    multi_direction_pressure,
    boss_combat,
    unknown_high_risk
};
const char* scenario_tag_name(ScenarioTag tag);
ScenarioTag scenario_tag_from_name(const std::string& name);
std::vector<ScenarioTag> all_scenario_tags();
std::string scenario_tag_list(const std::vector<ScenarioTag>& tags);

struct ScenarioFeatures {
    int enemies{}, damageable_enemies{}, bosses{};
    int hostile_projectiles{}, lasers{}, hazards{};
    int projectiles_near_player{};
    double projectile_density{};
    int attack_directions{};
    double direction_coverage{};      // fraction of 8 sectors occupied
    bool opposing_directions{};
    double free_space{1};
    double local_density{};
    double nearest_enemy_distance{1e9};
    double unknown_risk{};
    int unknown_enemies{};
    double mechanism_confidence{1};
    int inferred_mechanisms{};
    double boss_phase_fraction{-1};
    bool low_hp{};
    json to_json() const;
};

struct ScenarioClassification {
    std::vector<ScenarioTag> tags;
    ScenarioTag primary{ScenarioTag::normal_room};
    double confidence{};
    double risk{};
    ScenarioFeatures features;
    std::string reason;
    bool has(ScenarioTag tag) const;
    json to_json() const;
};

struct ScenarioClassifierConfig {
    int dense_projectile_count{12};
    int dense_local_projectile_count{4};
    double dense_density{2.5};
    double melee_distance{150};
    int multi_direction_min{3};
    int low_hp_threshold{2};
    double unknown_risk_threshold{0.55};
    double low_confidence_threshold{0.45};
    int hazard_count_limit{12};
};

class CombatScenarioClassifier {
public:
    explicit CombatScenarioClassifier(ScenarioClassifierConfig config = {})
        : config_(config) {}
    ScenarioClassification classify(const WorldStateSnapshot& root,
        const MechanismFrame* mechanisms = nullptr) const;
    // Stateful form used by the real-time strategy runtime. It suppresses
    // one-frame tag flicker but never changes the underlying classification.
    ScenarioClassification update(const WorldStateSnapshot& root,
        const MechanismFrame* mechanisms = nullptr);
    void reset();
    const ScenarioClassification& smoothed() const { return smoothed_; }
    const ScenarioClassifierConfig& config() const { return config_; }
private:
    ScenarioClassifierConfig config_;
    ScenarioClassification smoothed_;
    uint32_t last_clock_{};
    bool has_smoothed_{};
    ScenarioTag pending_primary_{ScenarioTag::normal_room};
    int pending_frames_{};
};

// ---------------------------------------------------------------------------
// 2. Adaptive strategy profiles
// ---------------------------------------------------------------------------
// These are the only parameters the optimizer may change. They map onto
// existing CombatConfig/MpcConfig fields; the mapping itself is in
// apply_strategy_parameters(). Safety values are intentionally absent: the
// optimizer can only *raise* emergency sensitivity, never lower a hard gate.
struct StrategyParameters {
    double maneuver_weight{8.0};
    double target_switch_margin{0.15};
    int target_hold_frames{12};
    double engage_threshold{0.0};
    double disengage_threshold{0.80};
    double focus_fire_bonus{15.0};
    double attack_window_bias{10.0};
    double positioning_weight{6.0};
    double emergency_sensitivity{1.0};
    json to_json() const;
    static StrategyParameters from_json(const json& value);
};

struct StrategyPerformanceSummary {
    int evaluations{}, scenario_samples{}, holdout_samples{};
    int deaths{}, holdout_deaths{};
    double mean_damage{}, mean_clear_time{-1}, mean_damage_dealt{};
    double mean_target_switches{}, mean_direction_reversals{};
    double confidence{};
    bool simulated{};
    std::string evidence_scope{"offline-replay-simulation"};
    json to_json() const;
    static StrategyPerformanceSummary from_json(const json& value);
};

struct StrategyProfile {
    std::string profile_id{"default"};
    std::vector<ScenarioTag> scenario_tags{ScenarioTag::normal_room};
    StrategyParameters parameters;
    int version{1};
    std::string source{"builtin"};
    double confidence{1.0};
    StrategyPerformanceSummary performance;
    std::string parent_id;
    std::string created_utc;
    json to_json() const;
    static StrategyProfile from_json(const json& value);
};

// Built-in profiles for every scenario tag. They are ordinary starting points,
// not claims of measured superiority.
std::vector<StrategyProfile> builtin_strategy_profiles();
StrategyProfile default_strategy_profile();
const StrategyProfile* find_strategy_profile(const std::vector<StrategyProfile>& profiles,
    const std::string& id);

// Bounded mapping onto the existing configurations. `base` is never mutated.
MpcConfig strategy_config(const StrategyParameters& parameters,const MpcConfig& base);
void apply_strategy_parameters(const StrategyParameters& parameters,MpcConfig& config);
// True when every hard safety limit in `candidate` is at least as strict as
// the corresponding limit in `base`.
bool strategy_preserves_safety(const MpcConfig& base,const MpcConfig& candidate);

struct StrategyRuntimeConfig {
    int stable_frames{12};      // a new scenario must persist this long
    int blend_frames{18};       // parameter interpolation length
    bool smooth_switch{true};
    double switch_margin{0.0};  // extra confidence needed to leave current profile
};

struct StrategyDecision {
    ScenarioClassification scenario;
    std::string active_profile{"default"};
    std::string target_profile{"default"};
    bool switched{}, blending{};
    double blend{1};
    StrategyParameters target_parameters;
    StrategyParameters applied_parameters;
    json to_json() const;
};

// Selects the best profile for the classified scenario and blends parameters
// over time. It never changes the MPC search width, horizon or SafetyGate hard
// limits; those remain owned by MpcConfig.
class StrategyProfileRuntime {
public:
    StrategyProfileRuntime(StrategyRuntimeConfig config = {},
        std::vector<StrategyProfile> profiles = builtin_strategy_profiles());
    void set_profiles(std::vector<StrategyProfile> profiles);
    void set_config(StrategyRuntimeConfig config) { config_ = config; }
    void reset();
    StrategyDecision update(const WorldStateSnapshot& root,
        const MechanismFrame* mechanisms = nullptr);
    MpcConfig effective_config(const MpcConfig& base) const;
    const StrategyProfile& active_profile() const;
    const std::vector<StrategyProfile>& profiles() const { return profiles_; }
    const StrategyDecision& last_decision() const { return last_; }
    const StrategyRuntimeConfig& config() const { return config_; }
    std::string select_profile_id(const ScenarioClassification& scenario) const;
private:
    StrategyRuntimeConfig config_;
    std::vector<StrategyProfile> profiles_;
    CombatScenarioClassifier classifier_;
    StrategyDecision last_;
    std::string pending_profile_;
    int pending_frames_{};
    int blend_elapsed_{};
    bool initialised_{};
    StrategyParameters from_;
    StrategyParameters target_;
    void choose_profile(const ScenarioClassification& scenario);
};

// ---------------------------------------------------------------------------
// 3. Strategy memory
// ---------------------------------------------------------------------------
struct StrategyLibrary {
    std::string format{"isaac-gamebot-strategy-library-v1"};
    int version{};
    std::string generated_utc;
    std::vector<StrategyProfile> profiles;
    json history=json::array();
    json to_json() const;
    static StrategyLibrary from_json(const json& value);
    bool save(const std::filesystem::path& path,std::string* error=nullptr) const;
    static std::optional<StrategyLibrary> load(const std::filesystem::path& path,
        std::string* error=nullptr);
};

struct StrategyProfileDiff {
    std::string profile_id;
    int version_before{}, version_after{};
    std::vector<std::string> changed_parameters;
    json parameter_before=json::object(), parameter_after=json::object();
    json to_json() const;
};
StrategyProfileDiff compare_strategy_profiles(const StrategyProfile& before,
    const StrategyProfile& after);

struct StrategyMemoryUpdate {
    bool success{};
    int previous_version{}, new_version{};
    std::string version_path, current_path, error;
    json to_json() const;
};

class StrategyMemory {
public:
    explicit StrategyMemory(std::filesystem::path directory = {});
    StrategyMemoryUpdate commit(StrategyLibrary library,const std::string& reason);
    // Loads the current library, replaces/adds profiles by profile_id and
    // commits one version. This is the normal save path for an optimizer.
    StrategyMemoryUpdate save_profiles(const std::vector<StrategyProfile>& profiles,
        const std::string& reason);
    std::optional<StrategyLibrary> current(std::string* error=nullptr) const;
    std::optional<StrategyLibrary> version(int version,std::string* error=nullptr) const;
    std::optional<StrategyLibrary> rollback(int version,std::string* error=nullptr);
    std::vector<StrategyProfileDiff> compare_versions(int before,int after,
        std::string* error=nullptr) const;
    std::vector<int> versions() const;
    json history(std::string* error=nullptr) const;
    const std::filesystem::path& directory() const { return directory_; }
private:
    std::filesystem::path directory_;
};

// ---------------------------------------------------------------------------
// 4. Scenario replay corpus
// ---------------------------------------------------------------------------
struct ReplayScenarioRecord {
    std::string id;
    std::vector<ScenarioTag> scenario_tags;
    WorldStateSnapshot snapshot;
    json mechanism_frame=json::object();
    json unknown_assessment=json::object();
    json entity_relations=json::array();
    json room_geometry=json::object();
    int initial_hp{};
    bool low_hp{};
    double mechanism_confidence{1};
    double unknown_risk{};
    double prediction_error{};
    uint32_t seed{}, room{};
    std::string split{"train"};
    std::string source_file;
    int source_line{};
    bool real_capture{true};
    json to_json() const;
    static ReplayScenarioRecord from_json(const json& value);
};

struct ScenarioCorpusConfig {
    int frame_stride{30};
    int max_per_scenario{64};
    int max_total{512};
    double holdout_fraction{0.2};
    bool include_unknown{true};
    bool include_low_hp{true};
};

struct ScenarioCorpusStats {
    int records{};
    int train{}, holdout{};
    std::map<std::string,int> by_scenario;
    std::map<std::string,int> by_split;
    std::map<uint32_t,int> seeds;
    int real_captures{}, synthetic{};
    int low_hp{};
    json to_json() const;
};

struct ScenarioCorpus {
    std::string format{"isaac-gamebot-scenario-corpus-v1"};
    int version{1};
    std::string generated_utc;
    std::string source;
    ScenarioCorpusStats stats;
    std::vector<ReplayScenarioRecord> records;
    json to_json() const;
    static ScenarioCorpus from_json(const json& value);
    bool save(const std::filesystem::path& path,std::string* error=nullptr) const;
    static std::optional<ScenarioCorpus> load(const std::filesystem::path& path,
        std::string* error=nullptr);
};

class ScenarioCorpusBuilder {
public:
    explicit ScenarioCorpusBuilder(ScenarioCorpusConfig config = {})
        : config_(config) {}
    // Accepts one JSONL log or a directory containing JSONL logs. Existing
    // `mechanisms` blocks are reused; otherwise `semantics` (when supplied)
    // recomputes them. Missing player/valid frames are skipped.
    ScenarioCorpus build(const std::filesystem::path& path,
        MechanismSemantics* semantics = nullptr,std::string* error = nullptr);
    const ScenarioCorpusConfig& config() const { return config_; }
private:
    ScenarioCorpusConfig config_;
};

// ---------------------------------------------------------------------------
// 5. Offline evaluation and tactical parameter optimization
// ---------------------------------------------------------------------------
struct OfflineRolloutConfig {
    int decision_frames{6};
    int max_decisions{24};
    int max_projectiles{256};
    int max_hazards{128};
    bool attack_enabled{true};
};

struct ScenarioOutcome {
    bool simulated{}, aborted{};
    int decisions{}, frames{}, target_switches{}, direction_reversals{};
    bool player_dead{};
    double damage{}, damage_dealt{}, enemy_hp_remaining{};
    double clear_time{-1};
    double mechanism_confidence{1};
    double unknown_risk{};
    double prediction_error{};
    double confidence{};
    std::string evidence{"offline-simulation"};
    json to_json() const;
};

struct ScenarioAggregate {
    int scenarios{}, deaths{};
    int real_captures{}, synthetic{}, seeds{};
    double damage{}, clear_time{1e9}, damage_dealt{};
    int switches{}, reversals{};
    double confidence{};
    double unknown_risk{};
    double mechanism_confidence{1};
    double prediction_error{};
    json to_json() const;
};

// Lexicographic order: deaths, damage, clear time, damage dealt, then
// unnecessary target switches/direction reversals. Positive result means `a`
// is better than `b`.
int compare_scenario_outcomes(const ScenarioAggregate& a,const ScenarioAggregate& b);

class OfflineScenarioEvaluator {
public:
    explicit OfflineScenarioEvaluator(OfflineRolloutConfig config = {})
        : config_(config) {}
    ScenarioOutcome run(const ReplayScenarioRecord& record,
        const StrategyParameters& parameters,const MpcConfig& base) const;
    ScenarioAggregate aggregate(const ScenarioCorpus& corpus,
        const StrategyParameters& parameters,const MpcConfig& base,
        const std::string& split,const std::vector<ScenarioTag>& tags) const;
    const OfflineRolloutConfig& config() const { return config_; }
private:
    OfflineRolloutConfig config_;
};

struct StrategyParameterSpec {
    std::string id;
    double minimum{}, maximum{}, step{};
    bool integer{};
    bool safety_increasing{};  // may only move upward from the base value
};

std::vector<StrategyParameterSpec> strategy_parameter_specs();
double strategy_parameter_value(const StrategyParameters& values,const std::string& id);
void set_strategy_parameter(StrategyParameters& values,const std::string& id,double value);
bool strategy_parameters_within_bounds(const StrategyParameters& values);

struct TacticalOptimizerConfig {
    int max_evaluations{360};
    int coordinate_passes{2};
    int survivors{4};
    int min_train_samples{3};
    int min_holdout_samples{1};
    double holdout_tolerance{1e-6};
    double min_confidence{0.55};
    double min_verified_fraction{0.5};
    double max_prediction_error{0.55};
    bool require_holdout{true};
    bool require_real_captures{true};
    bool write_memory{false};
    std::filesystem::path memory_directory;
    int max_records{128};
};

struct StrategyCandidateEvaluation {
    StrategyProfile profile;
    ScenarioAggregate train, holdout;
    int evaluations{};
    double confidence{};
    bool promoted{};
    std::string reason;
    json to_json() const;
};

struct StrategyOptimizationResult {
    std::string scenario;
    std::vector<ScenarioTag> tags;
    StrategyCandidateEvaluation baseline;
    std::optional<StrategyCandidateEvaluation> best;
    std::vector<StrategyCandidateEvaluation> candidates;
    int evaluations{};
    bool promoted{};
    std::string reason;
    json to_json() const;
};

class TacticalParameterOptimizer {
public:
    TacticalParameterOptimizer(TacticalOptimizerConfig config,
        const ScenarioCorpus& corpus,const MpcConfig& base = {},
        OfflineRolloutConfig rollout = {});
    StrategyOptimizationResult optimize(const std::vector<ScenarioTag>& tags,
        const StrategyParameters& start = {},const std::string& start_profile_id = "");
    // Runs one optimization per scenario tag and returns one result each.
    std::vector<StrategyOptimizationResult> optimize_all(
        const StrategyParameters& start = {});
    const TacticalOptimizerConfig& config() const { return config_; }
private:
    TacticalOptimizerConfig config_;
    ScenarioCorpus corpus_;
    MpcConfig base_;
    OfflineScenarioEvaluator evaluator_;
    int evaluations_{};
    StrategyCandidateEvaluation evaluate(const std::vector<ScenarioTag>& tags,
        const StrategyParameters& parameters,const std::string& profile_id,
        const std::string& source,int version) const;
    bool eligible(const ScenarioAggregate& train,const ScenarioAggregate& holdout,
        std::string& reason) const;
};

// Promotion audit used by the optimizer and by tests. It refuses to promote a
// profile that wins only in simulation or that weakens a hard safety limit.
bool strategy_promotion_gate(const StrategyCandidateEvaluation& candidate,
    const TacticalOptimizerConfig& config,const StrategyParameters& base,
    std::string& reason);

std::string utc_timestamp();
} // namespace gamebot
