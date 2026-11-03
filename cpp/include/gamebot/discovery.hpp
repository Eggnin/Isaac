#pragma once
#include "attack_forecast.hpp"
#include "model.hpp"
#include <filesystem>
#include <map>
#include <optional>
#include <set>

namespace gamebot {
std::string identity_key(int type,int variant,int subtype);
// ---------------------------------------------------------------------------
// 1. Failure Analyzer
// ---------------------------------------------------------------------------
enum class FailureKind : uint8_t {
    attack_timing, projectile_trajectory, enemy_movement, state_transition,
    collision_radius, spawn_despawn, damage_prediction, death_event,
    unknown_attack, unknown_entity, other
};
const char* failure_kind_name(FailureKind kind);
struct FailureFinding {
    std::string key;
    FailureKind kind{FailureKind::other};
    std::string identity;
    uint32_t source{};
    int type{},variant{},subtype{},state{-1};
    int occurrences{};
    double first_clock{},last_clock{};
    double mean_error{},max_error{};
    double confidence{};
    std::string field,mechanism,predicted,observed,evidence;
    std::vector<std::string> files;
    json to_json() const;
};
struct FailureAnalysisConfig {
    double position_tolerance{24};
    double velocity_tolerance{80};
    double min_error_score{0.10};
    int min_occurrences{1};
    int max_findings{256};
};
struct FailureAnalysisResult {
    uint64_t files{},frames{},reports{},high_error_reports{},damage_events{};
    std::map<std::string,int> by_kind;
    std::vector<FailureFinding> findings;
    json to_json() const;
};
class FailureAnalyzer {
public:
    explicit FailureAnalyzer(FailureAnalysisConfig config={});
    FailureAnalysisResult analyze_path(const std::filesystem::path& path);
    FailureAnalysisResult finish();
    void observe_report(const json& report,double clock,const std::string& source);
    void observe_damage(const json& damage,double clock,const std::string& source);
    FailureAnalysisResult result() const;
    void reset();
private:
    struct Aggregate {
        FailureFinding finding;
        double error_sum{};
    };
    FailureAnalysisConfig config_;
    FailureAnalysisResult result_;
    std::map<std::string,Aggregate> aggregates_;
    void add(FailureKind kind,const std::string& identity,int type,int variant,
        int subtype,int state,double clock,double error,const std::string& field,
        const std::string& mechanism,const std::string& predicted,
        const std::string& observed,const std::string& evidence,
        const std::string& source,uint32_t id=0);
    void rebuild();
};
// ---------------------------------------------------------------------------
// 2. Behavior Discovery
// ---------------------------------------------------------------------------
struct StateTransitionSample {
    int from_state{-1},to_state{-1};
    std::string from_animation,to_animation;
    double clock{};
    double duration_frames{};
    json detail=json::object();
};
struct AttackSample {
    double clock{};
    int state{-1};
    std::string animation;
    double windup_frames{};
    int projectile_count{};
    double speed{};
    Vec direction{};
    Vec enemy_position{},player_position{};
    bool aimed{},radial{},spread{};
    json detail=json::object();
};
struct BehaviorPattern {
    AttackPrimitive primitive{AttackPrimitive::unknown};
    AttackTargeting targeting{AttackTargeting::unknown};
    int state{-1};
    std::string animation;
    int samples{};
    double mean_speed{},min_speed{},max_speed{};
    double mean_windup{},min_windup{},max_windup{};
    double mean_count{},min_count{},max_count{};
    double aimed_ratio{},radial_ratio{},spread_ratio{};
    double confidence{};
    json evidence=json::object();
    json to_json() const;
};
struct BehaviorProfile {
    std::string identity,name;
    int type{},variant{},subtype{};
    int samples{},entities{};
    std::map<int,int> state_counts;
    std::map<std::string,int> animation_counts;
    std::vector<StateTransitionSample> transitions;
    std::vector<AttackSample> attacks;
    std::vector<BehaviorPattern> patterns;
    double mean_speed{},max_speed{},chase_ratio{};
    double mean_attack_interval{},min_attack_interval{},max_attack_interval{};
    double confidence{};
    std::string evidence;
    json to_json() const;
};
struct BehaviorDiscoveryConfig {
    int min_attack_samples{2};
    int min_state_samples{2};
    double aimed_cos_threshold{0.85};
    double spread_min_degrees{12};
    double windup_max_frames{240};
};
struct BehaviorDiscoveryResult {
    uint64_t frames{},entities{},transitions{},attacks{};
    std::vector<BehaviorProfile> profiles;
    json to_json() const;
};
class BehaviorDiscovery {
public:
    explicit BehaviorDiscovery(BehaviorDiscoveryConfig config={});
    void observe(const Frame& frame);
    void finalize();
    BehaviorDiscoveryResult result() const;
    void reset();
private:
    struct Track {
        int state{-1};
        std::string animation;
        double state_clock{};
        Entity previous;
        std::set<uint32_t> projectiles;
        bool seen{};
    };
    struct Accumulator {
        BehaviorProfile profile;
        std::set<uint32_t> entity_ids;
        std::map<uint32_t,Track> tracks;
        std::vector<double> attack_clocks;
        std::vector<double> speeds;
        std::vector<double> chase_ratios;
    };
    BehaviorDiscoveryConfig config_;
    BehaviorDiscoveryResult result_;
    std::map<std::string,Accumulator> accumulators_;
    std::set<uint32_t> previous_projectiles_;
    uint32_t room_{};
    bool finalized_{};
    void build_patterns(Accumulator& accumulator);
};
// ---------------------------------------------------------------------------
// 3. Mechanism Clustering
// ---------------------------------------------------------------------------
struct MechanismCluster {
    std::string id,primitive,targeting;
    std::vector<std::string> members;
    int samples{};
    double min_speed{},max_speed{},mean_speed{};
    double min_windup{},max_windup{},mean_windup{};
    double min_interval{},max_interval{},mean_interval{};
    double confidence{};
    json shared_parameters=json::object();
    json member_differences=json::array();
    json evidence=json::object();
    json to_json() const;
};
struct MechanismClusteringConfig {
    double speed_tolerance{0.22};
    double windup_tolerance{0.35};
    int min_samples{2};
};
struct MechanismClusteringResult {
    uint64_t profiles{},patterns{},clusters{};
    std::vector<MechanismCluster> items;
    json to_json() const;
};
class MechanismClusterer {
public:
    explicit MechanismClusterer(MechanismClusteringConfig config={});
    MechanismClusteringResult cluster(const std::vector<BehaviorProfile>& profiles) const;
private:
    MechanismClusteringConfig config_;
};
// ---------------------------------------------------------------------------
// 4. Formula Recovery
// ---------------------------------------------------------------------------
struct StaticMechanismReference {
    std::string identity,state,animation,source_ref,status;
    bool timing_verified{},geometry_verified{},planning_validated{};
    json payload=json::object();
    json to_json() const;
};
struct MechanismReferenceIndex {
    std::vector<StaticMechanismReference> references;
    std::map<std::string,std::vector<size_t>> by_identity;
    std::vector<const StaticMechanismReference*> find(const std::string& identity,
        int state,const std::string& animation) const;
    json to_json() const;
};
class MechanismReferenceLoader {
public:
    static bool load(const std::filesystem::path& directory,MechanismReferenceIndex& out,
        std::string* error=nullptr);
    static bool load_file(const std::filesystem::path& path,MechanismReferenceIndex& out,
        std::string* error=nullptr);
};
struct RecoveredFormula {
    std::string identity,primitive,formula,evidence_status,notes;
    int samples{};
    double confidence{};
    bool can_promote_verified{};
    json parameters=json::object();
    json observation=json::object();
    std::vector<std::string> source_refs;
    json to_json() const;
};
struct FormulaRecoveryResult {
    uint64_t profiles{},formulas{};
    std::vector<RecoveredFormula> items;
    json to_json() const;
};
class FormulaRecovery {
public:
    explicit FormulaRecovery(MechanismReferenceIndex references={}) :
        references_(std::move(references)) {}
    FormulaRecoveryResult recover(const std::vector<BehaviorProfile>& profiles,
        const MechanismClusteringResult& clusters) const;
    const MechanismReferenceIndex& references() const { return references_; }
private:
    MechanismReferenceIndex references_;
};
// ---------------------------------------------------------------------------
// 5. Mechanism Library Updater
// ---------------------------------------------------------------------------
enum class CandidateStatus : uint8_t { candidate, inferred, verified, rejected };
const char* candidate_status_name(CandidateStatus status);
CandidateStatus candidate_status_from_name(const std::string& name);
struct MechanismCandidate {
    std::string id,identity,primitive,targeting,state,animation,evidence_status;
    std::string source_refs,evidence;
    int samples{};
    double confidence{};
    bool runtime_loadable{};
    json trigger=json::object();
    json geometry=json::object();
    json timing=json::object();
    json parameters=json::object();
    json evidence_detail=json::object();
    json to_json() const;
    static MechanismCandidate from_json(const json& value);
};
struct MechanismLibrary {
    std::string format{"isaac-gamebot-discovered-library-v1"};
    int version{};
    std::string generated_utc;
    std::vector<MechanismCandidate> candidates;
    // v0.8.3: the projectile motion model file is carried in the same version
    // chain as discovered mechanisms. It is stored verbatim so a rollback
    // restores exactly the models that were active at that version.
    json projectile_models=json::object();
    json history=json::array();
    json to_json() const;
    static MechanismLibrary from_json(const json& value);
    bool save(const std::filesystem::path& path,std::string* error=nullptr) const;
    static std::optional<MechanismLibrary> load(const std::filesystem::path& path,
        std::string* error=nullptr);
};
struct MechanismLibraryDiff {
    std::vector<std::string> added,updated,removed,unchanged;
    // "unchanged", "added", "updated" or "removed".
    std::string projectile_models_status{"unchanged"};
    json to_json() const;
};
// Reads data/mechanisms/projectile_motion_models.json into a mechanism
// library. The model file keeps its own format/version; the library records it
// as one versioned artifact.
bool import_projectile_motion_models(MechanismLibrary& library,
    const std::filesystem::path& path,std::string* error=nullptr);
json projectile_motion_model_index(const MechanismLibrary& library);
MechanismLibraryDiff compare_mechanism_libraries(const MechanismLibrary& before,
    const MechanismLibrary& after);
struct MechanismLibraryUpdaterConfig {
    bool allow_inferred{true};
    bool allow_candidate{true};
    bool auto_promote_verified{false};
};
struct MechanismLibraryUpdate {
    bool success{};
    int previous_version{},new_version{};
    std::string version_path,current_path,error;
    MechanismLibraryDiff diff;
    json to_json() const;
};
class MechanismLibraryUpdater {
public:
    explicit MechanismLibraryUpdater(MechanismLibraryUpdaterConfig config={},
        std::filesystem::path directory={});
    MechanismLibraryUpdate update(MechanismLibrary library,
        const std::vector<MechanismCandidate>& candidates,const std::string& reason);
    // Imports a projectile motion model file and commits a new library version.
    MechanismLibraryUpdate update_projectile_models(MechanismLibrary library,
        const std::filesystem::path& models_path,const std::string& reason);
    std::optional<MechanismLibrary> rollback(int version,std::string* error=nullptr) const;
    const std::filesystem::path& directory() const { return directory_; }
private:
    MechanismLibraryUpdaterConfig config_;
    std::filesystem::path directory_;
};
// ---------------------------------------------------------------------------
// Compiler and pipeline
// ---------------------------------------------------------------------------
struct CompiledMechanism {
    std::string identity,primitive;
    json pattern_rule=json::object();
    json runtime_model=json::object();
    bool loadable{};
    json to_json() const;
};
class MechanismModelCompiler {
public:
    static CompiledMechanism compile(const MechanismCandidate& candidate);
};
struct DiscoveryConfig {
    FailureAnalysisConfig failure;
    BehaviorDiscoveryConfig behavior;
    MechanismClusteringConfig clustering;
    MechanismLibraryUpdaterConfig updater;
    std::filesystem::path reference_directory;
    std::filesystem::path library_directory;
    bool write_library{true};
    std::string reason{"failure-driven discovery"};
};
struct DiscoveryResult {
    FailureAnalysisResult failure;
    BehaviorDiscoveryResult behavior;
    MechanismClusteringResult clustering;
    FormulaRecoveryResult formulas;
    std::vector<MechanismCandidate> candidates;
    std::vector<CompiledMechanism> compiled;
    MechanismLibraryUpdate update;
    json to_json() const;
};
class DiscoveryPipeline {
public:
    explicit DiscoveryPipeline(DiscoveryConfig config={});
    DiscoveryResult run(const std::filesystem::path& log_path);
    const DiscoveryConfig& config() const { return config_; }
private:
    DiscoveryConfig config_;
};
} // namespace gamebot
