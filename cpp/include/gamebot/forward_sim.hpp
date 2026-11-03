#pragma once
#include "world_state.hpp"
#include <algorithm>
#include <filesystem>
#include <list>
#include <memory>
#include <string>
#include <unordered_map>
#include <vector>

namespace gamebot {
// `Precision` describes where a *value* came from. `Fidelity` describes how
// closely the simulator reproduces the *dynamics* that produced the next value.
enum class Fidelity : uint8_t { unknown = 0, approximated = 1, exact_native = 2 };
const char* fidelity_name(Fidelity value);

enum class SimBackendKind : uint8_t { hybrid_cpp, wasm_native };
const char* sim_backend_name(SimBackendKind value);

struct SimAction {
    Move move{Move::stay};
    Fire fire{Fire::none};
    bool shoot{true};
    bool operator==(const SimAction& other) const {
        return move==other.move&&fire==other.fire&&shoot==other.shoot;
    }
};
struct SimActionSegment {
    SimAction action;
    int frames{};
};

struct SimEvent {
    int frame{};
    double time{};
    std::string kind;
    uint32_t source{}, target{};
    double amount{};
    Vec pos{};
    std::string detail;
    json to_json() const {
        return {{"frame",frame},{"time",time},{"kind",kind},{"source",source},
            {"target",target},{"amount",amount},{"pos",pos},{"detail",detail}};
    }
};

struct SimAttackScript {
    AttackPrimitive primitive{AttackPrimitive::unknown};
    AttackTargeting targeting{AttackTargeting::unknown};
    Vec direction{}, target_position{};
    double period_frames{120};
    double windup_frames{18};
    double duration_frames{12};
    int count{1};
    double speed{180};
    double damage{1};
    double spread_degrees{0};
    double radius{6};
    double length{600};
    double risk_weight{1};
    bool precise{};
    bool unknown{};
    Precision precision{Precision::estimated};
    std::string evidence;
};

struct SimPlayer {
    Player native;
    Vec pos{}, vel{};
    double radius{10}, max_speed{260}, tear_speed{300}, tear_range{260}, fire_delay{10};
    double speed_multiplier{1}, slow_factor{1};
    double tear_damage{3.5};
    int health{6}, max_health{6};
    int fire_cooldown{}, invulnerable{};
    int shots{}, hits{}, kills{};
    double damage_dealt{};
    bool flying{}, can_shoot{true}, attack_supported{true}, dead{};
    Fire facing{Fire::none};
};

struct SimEnemy {
    Entity native;
    uint32_t id{}, seed{};
    int type{}, variant{}, subtype{};
    Vec pos{}, vel{};
    double radius{16}, hp{}, max_hp{}, damage{}, speed{};
    double speed_multiplier{1}, friction{1};
    bool death_blast{};
    double death_blast_radius{};
    int state{-1}, state_frame{};
    int collision{};
    bool boss{}, invulnerable{}, contact{}, flying{}, dead{};
    // `chase` is re-evaluated every frame against this branch's player
    // position. It is set from an observed contact body or an explicit
    // mechanism movement model, never from a guessed AI behaviour.
    bool chase{};
    double chase_speed{};
    int boss_phase{1}, contact_cooldown{};
    SimAttackScript attack;
    double cooldown{}, windup{}, active{};
    bool charging{};
    Vec charge_direction{};
    double charge_remaining{};
    Fidelity motion_fidelity{Fidelity::approximated};
    Precision behavior_precision{Precision::estimated};
    std::string behavior_source;
};

struct SimProjectile {
    Entity native;
    uint32_t id{}, source{};
    int type{}, variant{}, subtype{};
    Vec pos{}, vel{}, spawn_pos{};
    double radius{6}, damage{1}, speed{};
    double height{}, height_velocity{};
    bool height_known{}, hostile{true}, dead{};
    bool homing{}, accelerating{};
    double homing_strength{}, accel{1}, age{}, life{4};
    // Native projectile change/turn fields. `projectile_change_flags`,
    // `projectile_change_timeout`, `projectile_curve` and
    // `projectile_orbit_distance` are observed, but their per-bit semantics are
    // not in the mechanism library. When any is populated the simulator keeps
    // the observed straight path and expands a bounded uncertainty footprint
    // instead of inventing a turn direction.
    uint64_t change_flags{};
    int change_timeout{};
    double change_velocity{};
    double curve{}, orbit_distance{};
    bool maneuver_uncertain{};
    double maneuver_uncertainty{};
    bool change_applied{};
    bool native_special{};
    bool damageable{true};
    int motion_tick{};
    std::string maneuver_kind;
    Fidelity fidelity{Fidelity::approximated};
};

struct SimHazard {
    HazardState spec;
    double active_from{};
    double active_until{};
    Vec velocity{};
    bool dead{}, hit{};
    double next_tick{};
    Fidelity fidelity{Fidelity::approximated};
};

struct SimWorld {
    RoomGeometryState room;
    SimPlayer player;
    std::vector<SimEnemy> enemies;
    std::vector<SimProjectile> projectiles;
    std::vector<SimHazard> hazards;
    int frame{};
    double time{};
    bool cleared{}, player_dead{}, terminated{};
    std::vector<SimEvent> events;
    std::string backend{"hybrid-cpp"};
};

// Temporal danger is a data layer, not a decision rule. It stores one danger
// mask per short time slice and keeps static terrain in a separate mask. A
// slice is built from an explicit SimWorld time series, so two MPC branches can
// never accidentally share a root-only future prediction.
enum DangerConfidence : uint8_t {
    danger_confidence_none = 0,
    danger_confidence_unknown = 1,
    danger_confidence_estimated = 2,
    danger_confidence_exact = 3
};
const char* danger_confidence_name(uint8_t value);

// Source bits for one temporal-danger cell. Confidence is tracked separately;
// `danger_source_unknown` is set when the contributing threat itself is an
// unknown/uncertain attack, so category audits can distinguish "unknown attack"
// from "known projectile that is merely approximated".
enum DangerSource : uint8_t {
    danger_source_none = 0,
    danger_source_enemy = 1,
    danger_source_projectile = 2,
    danger_source_hazard = 4,
    danger_source_unknown = 8
};
const char* danger_source_name(uint8_t value);

struct TemporalDangerConfig {
    int slice_frames{6};       // 0.1 s at 60 Hz
    int max_slices{16};        // bounded lookahead; caller can raise for offline review
    double dt{1.0/60};
    // Threat geometry = threat radius + danger_margin + player_radius. The
    // legacy compute_danger_map() is unchanged and keeps its own margin.
    double danger_margin{28.0};
    double player_radius{10.0};
    double static_radius{4.0};
    bool include_enemies{true};
};

struct DangerSlice {
    int frame_offset{};
    std::vector<uint8_t> cell_danger;    // active damage geometry only
    std::vector<uint8_t> cell_warning;   // telegraphed/future activation
    std::vector<uint8_t> cell_confidence; // DangerConfidence values for cell_danger
    std::vector<uint8_t> cell_category;  // DangerSource bitmask for active danger
    std::vector<uint8_t> cell_warning_category; // DangerSource bitmask for warnings
};

struct TemporalDanger {
    bool valid{}, truncated{};
    int slice_frames{6};
    int frame_count{};
    double dt{1.0/60};
    double time_origin{}; // world.time of the first observed branch frame
    double player_radius{10.0};
    int width{}, height{};
    Vec origin{40,120};
    double cell_size{40};
    uint64_t root_signature{};
    // Hash of root + exact action plan. Root signature alone is identical for
    // East/West branches from the same snapshot and cannot detect a swapped map.
    uint64_t branch_signature{};
    std::string source;
    // Terrain is deliberately separate from dynamic danger. Walls/rock/room
    // shape never become "danger" cells; callers may decide what to do with
    // blocked cells without losing the distinction.
    std::vector<uint8_t> static_blocked;
    // Exact terrain copy for body-radius swept checks. The coarse static_blocked
    // mask alone cannot tell whether a player center line grazes a wall.
    Grid static_grid{};
    bool player_flying{};
    std::vector<DangerSlice> slices;
    int cell_count() const { return width*height; }
    int cell_at(Vec point) const;
    int slice_at_frame(int frame) const;
    int slice_at_time(double time) const;
    bool covered(int frame) const;
    // `static_blocked_at` is terrain only. `danger_at*` / `warning_at*` are
    // dynamic layers and never imply that a blocked cell became walkable.
    bool static_blocked_at(int cell) const;
    bool danger_at_cell(int cell,int frame) const;
    bool danger_at(int cell,double time) const;
    bool warning_at_cell(int cell,int frame) const;
    bool warning_at(int cell,double time) const;
    uint8_t confidence_at_cell(int cell,int frame) const;
    uint8_t confidence_at(int cell,double time) const;
    // DangerSource bitmask for the same cell/time. Zero when the cell has no
    // dynamic danger or warning.
    uint8_t category_at_cell(int cell,int frame) const;
    uint8_t category_at(int cell,double time) const;
    uint8_t warning_category_at_cell(int cell,int frame) const;
    uint8_t warning_category_at(int cell,double time) const;
    json to_json() const;
};

// Build one temporal map from one explicit branch time series. `observe()` must
// be called in increasing frame/time order; the first call establishes the room
// and static terrain. It never reads a global root world.
class TemporalDangerBuilder {
public:
    explicit TemporalDangerBuilder(TemporalDangerConfig config={});
    void reset();
    bool observe(const SimWorld& world);
    TemporalDanger finish() const;
    int frame_count() const { return result_.frame_count; }
    bool valid() const { return result_.valid; }
    bool truncated() const { return result_.truncated; }
private:
    struct Track { Vec pos{}; double radius{}; bool charging{}; };
    TemporalDangerConfig config_;
    TemporalDanger result_;
    bool initialized_{};
    std::unordered_map<uint32_t,Track> previous_projectiles_;
    std::unordered_map<uint32_t,Track> previous_enemies_;
    // Multiple hazards can share source/kind/label/start. Keep all previous
    // positions and match the nearest one, so a vector reorder cannot create a
    // false cross-frame sweep.
    std::unordered_map<std::string,std::vector<Vec>> previous_hazards_;
};

TemporalDanger build_temporal_danger(const std::vector<SimWorld>& frames,
    TemporalDangerConfig config={});

// One branch-relative path sample. `frame` is the frame index from the capture
// root, `time` is the absolute world.time of that frame.
struct TemporalTrajectorySample {
    int frame{};
    double time{};
    Vec position{};
    double radius{10.0};
};

struct TemporalTrajectory {
    bool valid{}, truncated{};
    uint64_t root_signature{};
    uint64_t branch_signature{};
    std::string source;
    std::vector<TemporalTrajectorySample> samples;
    // The map and samples are produced from the same simulator branch. Keeping
    // them together is what prevents a path from being checked against another
    // branch's enemy/projectile future.
    TemporalDanger danger;
    std::vector<SimEvent> events;
};

// Four explicit path outcomes: dynamic danger, warning-only, static body
// collision, and unknown. `safe` means fully covered with none of the above.
enum class TemporalPathStatus : uint8_t {
    unknown, safe, warning, static_blocked, danger
};
const char* temporal_path_status_name(TemporalPathStatus value);

struct TemporalPathAssessmentConfig {
    double sweep_step{4.0};
    double warning_risk_weight{0.35};
    bool include_warning{true};
};

struct TemporalPathAssessment {
    bool evaluated{}, truncated{};
    TemporalPathStatus status{TemporalPathStatus::unknown};
    int total_frames{};
    int covered_frames{};
    int unknown_frames{};
    int temporal_danger_frames{};
    int temporal_warning_frames{};
    int temporal_first_risk_frame{-1};
    int static_blocked_frames{};
    // DangerSource frame/source pairs. A frame with two contributing sources is
    // counted once in each source bucket; `danger_sources` is the union mask.
    int danger_enemy_frames{};
    int danger_projectile_frames{};
    int danger_hazard_frames{};
    int danger_unknown_frames{};
    int warning_enemy_frames{};
    int warning_projectile_frames{};
    int warning_hazard_frames{};
    int warning_unknown_frames{};
    uint8_t danger_sources{};
    uint8_t warning_sources{};
    double temporal_path_risk{};
    double temporal_coverage{};
    std::string reason;
    json to_json() const;
};

TemporalPathAssessment assess_temporal_path(const TemporalDanger& danger,
    const std::vector<TemporalTrajectorySample>& samples,
    TemporalPathAssessmentConfig config={});
TemporalPathAssessment assess_temporal_trajectory(const TemporalTrajectory& trajectory,
    TemporalPathAssessmentConfig config={});

struct ForwardSimConfig {
    double dt{1.0/60};
    int horizon_frames{36};
    int max_branches{6};
    int max_projectiles{512};
    int max_hazards{256};
    int cache_entries{256};
    bool early_terminate{true};
    double early_terminate_damage{3};
    int invulnerability_frames{60};
    double tear_damage{3.5};
    double tear_radius{6};
    // Native ordinary tears inherit this fraction of the shooter's velocity at
    // launch. The value comes from the controlled J460 tear-velocity probe; it
    // is shared with PredictiveAimer so prediction and simulation agree.
    double tear_inheritance{native_tear_inheritance};
    double tear_spawn_offset{native_tear_spawn_offset};
    bool player_shoots{true};
    bool use_unknown_threats{true};
    bool use_mechanism_intents{true};
    bool native_projectile_motion{true};
    bool simulate_projectile_height{true};
    double projectile_height_damage_floor{-5.0};
    bool danger_map{true};
    double danger_margin{8};
    double unknown_scale{1.0};
    // Prediction-error feedback expands only hazards whose provenance is
    // unknown/estimated. Exact real hazards keep their measured geometry.
    double unknown_radius_scale{1.0};
};

struct SimulationScore {
    double damage_taken{};
    double damage_dealt{};
    double kills{};
    double enemy_hp_remaining{};
    int enemy_count{};
    bool player_dead{};
    double death_risk{};
    int frames{};
    double survival_time{};
    double time_to_clear{-1};
    double danger_area{};
    double escape_space{1};
    double clearance{10000};
    double unknown_uncertainty{};
    // Local manoeuvrability is filled by SafetyGate for MPC nodes. It is not a
    // second danger model: it measures free area, boundary clearance and exit
    // directions around the branch's landing point.
    double local_density{};
    double available_area{1};
    double boundary_clearance{};
    double laser_pressure{};
    double maneuverability{};
    int escape_directions{};
    int special_projectiles{};
    int uncertain_maneuvers{};
    // v0.9.1.1 path-level anti-corner terms copied from SafetyGate.
    int reachable_cells{}, mobility_routes{};
    double reachable_area{1}, time_to_open{}, exit_block_risk{},
        encirclement_risk{}, dead_end_risk{}, corner_risk{};
    double score{};
    json to_json() const {
        return {{"damage_taken",damage_taken},{"damage_dealt",damage_dealt},
            {"kills",kills},{"enemy_hp_remaining",enemy_hp_remaining},
            {"enemy_count",enemy_count},
            {"player_dead",player_dead},{"death_risk",death_risk},
            {"frames",frames},{"survival_time",survival_time},
            {"time_to_clear",time_to_clear},{"danger_area",danger_area},
            {"escape_space",escape_space},{"clearance",clearance},
            {"unknown_uncertainty",unknown_uncertainty},
            {"local_density",local_density},{"available_area",available_area},
            {"boundary_clearance",boundary_clearance},
            {"laser_pressure",laser_pressure},
            {"maneuverability",maneuverability},
            {"escape_directions",escape_directions},
            {"special_projectiles",special_projectiles},
            {"uncertain_maneuvers",uncertain_maneuvers},
            {"reachable_cells",reachable_cells},{"mobility_routes",mobility_routes},
            {"reachable_area",reachable_area},{"time_to_open",time_to_open},
            {"exit_block_risk",exit_block_risk},
            {"encirclement_risk",encirclement_risk},
            {"dead_end_risk",dead_end_risk},{"corner_risk",corner_risk},
            {"score",score}};
    }
};

struct SimBackendCapabilities {
    bool restore{};
    bool fork{};
    bool deterministic{};
    bool full_internal_state{};
    bool restore_live_capture{};
    bool rng_state{};
    bool exact_player_motion{};
    bool exact_entity_physics{};
    bool mechanism_behavior{};
    bool unknown_threat_fallback{};
    std::string restore_scope;
    std::string missing;
    json to_json() const {
        return {{"restore",restore},{"fork",fork},{"deterministic",deterministic},
            {"full_internal_state",full_internal_state},
            {"restore_live_capture",restore_live_capture},{"rng_state",rng_state},
            {"exact_player_motion",exact_player_motion},
            {"exact_entity_physics",exact_entity_physics},
            {"mechanism_behavior",mechanism_behavior},
            {"unknown_threat_fallback",unknown_threat_fallback},
            {"restore_scope",restore_scope},{"missing",missing}};
    }
};

// What the existing WASM engine can and cannot do. The probe reads the engine
// artifacts and reports only what they actually contain.
struct WasmBackendReport {
    bool engine_present{};
    bool frame_mode{};
    bool memory_snapshot_restore{};
    bool full_internal_state_restore{};
    bool live_capture_restore{};
    bool deterministic{};
    bool external_state_injection{};
    std::string engine_path, worker_path;
    std::vector<std::string> verified, missing;
    std::string conclusion;
    json to_json() const {
        return {{"engine_present",engine_present},{"frame_mode",frame_mode},
            {"memory_snapshot_restore",memory_snapshot_restore},
            {"full_internal_state_restore",full_internal_state_restore},
            {"live_capture_restore",live_capture_restore},
            {"deterministic",deterministic},
            {"external_state_injection",external_state_injection},
            {"engine_path",engine_path},{"worker_path",worker_path},
            {"verified",verified},{"missing",missing},{"conclusion",conclusion}};
    }
};
WasmBackendReport probe_wasm_backend(const std::filesystem::path& search_root={});

class SimulationBackend {
public:
    virtual ~SimulationBackend()=default;
    virtual SimBackendKind kind() const=0;
    virtual const char* name() const=0;
    virtual SimBackendCapabilities capabilities() const=0;
    virtual bool restore(const WorldStateSnapshot& snapshot,std::string* error=nullptr)=0;
    // Diagnostic hook for synthetic time-expanded tests. Normal Reader replay
    // still uses restore(snapshot). Backends without a compatible state report
    // false instead of guessing.
    virtual bool restore_world(const SimWorld& world,std::string* error=nullptr) {
        (void)world;
        if(error)*error="restore_world is not supported by this backend";
        return false;
    }
    virtual std::unique_ptr<SimulationBackend> fork() const=0;
    virtual void step(const SimAction& action,int frames=1)=0;
    virtual const SimWorld& state() const=0;
    virtual const SimWorld& get_state() const { return state(); }
    virtual std::vector<SimEvent> take_events()=0;
    virtual std::vector<SimEvent> get_events() { return take_events(); }
    virtual void terminate()=0;
    virtual bool terminated() const=0;
};

class HybridSimulationBackend final: public SimulationBackend {
public:
    explicit HybridSimulationBackend(ForwardSimConfig config={});
    SimBackendKind kind() const override { return SimBackendKind::hybrid_cpp; }
    const char* name() const override { return "hybrid-cpp"; }
    SimBackendCapabilities capabilities() const override;
    bool restore(const WorldStateSnapshot& snapshot,std::string* error=nullptr) override;
    bool restore_world(const SimWorld& world,std::string* error=nullptr) override;
    std::unique_ptr<SimulationBackend> fork() const override;
    void step(const SimAction& action,int frames=1) override;
    const SimWorld& state() const override { return world_; }
    std::vector<SimEvent> take_events() override;
    void terminate() override { world_.terminated=true; }
    bool terminated() const override { return world_.terminated||world_.player_dead; }
    const ForwardSimConfig& config() const { return config_; }
    // Advance exactly one simulated frame. Exposed for tests and for the
    // planner, which never needs to call the backend directly.
    void advance(const SimAction& action);
    void score(SimulationScore& out) const;
    void reset_events() { world_.events.clear(); }
private:
    ForwardSimConfig config_;
    SimWorld world_;
    int physics_parity_{};
};

// The WASM backend exists as a real object so the interface is complete and so
// selecting it cannot silently fall back to a Reader-only guess. `restore` fails
// with an explicit reason until external state injection is implemented.
class WasmSimulationBackend final: public SimulationBackend {
public:
    explicit WasmSimulationBackend(WasmBackendReport report={},ForwardSimConfig config={})
        :report_(std::move(report)),config_(config) {}
    SimBackendKind kind() const override { return SimBackendKind::wasm_native; }
    const char* name() const override { return "wasm-native"; }
    SimBackendCapabilities capabilities() const override;
    bool restore(const WorldStateSnapshot& snapshot,std::string* error=nullptr) override;
    std::unique_ptr<SimulationBackend> fork() const override;
    void step(const SimAction& action,int frames=1) override;
    const SimWorld& state() const override { return world_; }
    std::vector<SimEvent> take_events() override { return {}; }
    void terminate() override { terminated_=true; }
    bool terminated() const override { return terminated_; }
    const WasmBackendReport& report() const { return report_; }
private:
    WasmBackendReport report_;
    ForwardSimConfig config_;
    SimWorld world_;
    bool terminated_{};
};

uint64_t sim_world_signature(const SimWorld& world);
// Complete branch-future signature used only by offline temporal diagnostics.
// `sim_world_signature` is intentionally left unchanged so the MPC cache and
// transposition table keep exactly their previous behavior.
uint64_t temporal_world_signature(const SimWorld& world);
uint64_t sim_cache_key(uint64_t state_signature,const std::vector<SimActionSegment>& plan);

class SimulationCache {
public:
    explicit SimulationCache(int capacity=256):capacity_(std::max(1,capacity)) {}
    bool get(uint64_t key,SimulationScore& out);
    void put(uint64_t key,const SimulationScore& score);
    void clear();
    size_t size() const { return entries_.size(); }
    uint64_t hits() const { return hits_; }
    uint64_t misses() const { return misses_; }
    void reset_counters() { hits_=misses_=evictions_=0; }
    uint64_t evictions() const { return evictions_; }
private:
    int capacity_;
    std::list<uint64_t> order_;
    struct Entry { SimulationScore score; std::list<uint64_t>::iterator position; };
    std::unordered_map<uint64_t,Entry> entries_;
    uint64_t hits_{}, misses_{}, evictions_{};
};

struct SimulatedCandidate {
    int index{};
    SimAction first;
    std::vector<SimActionSegment> plan;
    SimulationScore score;
    bool terminal{};
    bool cached{};
    bool pruned{};
    std::string note;
};

struct SimulationBatch {
    bool available{};
    std::vector<SimulatedCandidate> candidates;
    int best{-1};
    int branches{};
    int frames{};
    double elapsed_ms{};
    int early_terminations{};
    int pruned{};
    int rejected{};
    uint64_t cache_hits{}, cache_misses{};
    SimBackendKind backend{SimBackendKind::hybrid_cpp};
    SimBackendCapabilities capabilities;
    std::string reason;
    json to_json() const;
};

// Restores one snapshot, forks a branch per candidate plan, scores them, and
// keeps only the bounded set of branch results. The cache is keyed by the
// simulated world signature and the exact action plan, so it can never return a
// score for a different game state.
class SimulationPlanner {
public:
    explicit SimulationPlanner(ForwardSimConfig config={},SimBackendKind backend=SimBackendKind::hybrid_cpp);
    SimulationBatch evaluate(const WorldStateSnapshot& root,
        const std::vector<std::vector<SimActionSegment>>& plans);
    SimulationBatch evaluate_actions(const WorldStateSnapshot& root,
        const std::vector<SimAction>& actions,int frames=-1);
    const ForwardSimConfig& config() const { return config_; }
    const SimulationCache& cache() const { return cache_; }
    void reset();
private:
    ForwardSimConfig config_;
    SimBackendKind backend_kind_;
    SimulationCache cache_;
    WasmBackendReport wasm_;
};


class ForwardSimulator {
public:
    explicit ForwardSimulator(ForwardSimConfig config={},
        SimBackendKind backend=SimBackendKind::hybrid_cpp);
    ForwardSimulator(const ForwardSimulator& other);
    ForwardSimulator& operator=(const ForwardSimulator& other);
    ~ForwardSimulator();
    bool restore(const WorldStateSnapshot& snapshot,std::string* error=nullptr);
    bool restore_world(const SimWorld& world,std::string* error=nullptr);
    std::unique_ptr<ForwardSimulator> fork() const;
    void step(const SimAction& action,int frames=1);
    void step_segments(const std::vector<SimActionSegment>& plan,int horizon_frames=-1);
    const SimWorld& get_state() const { return backend_->state(); }
    const SimWorld& world() const { return backend_->state(); }
    std::vector<SimEvent> get_events() { return backend_->take_events(); }
    void terminate() { backend_->terminate(); }
    bool terminal() const { return backend_->terminated(); }
    SimulationScore score() const;
    SimBackendKind backend_kind() const { return backend_->kind(); }
    SimBackendCapabilities capabilities() const { return backend_->capabilities(); }
    const ForwardSimConfig& config() const { return config_; }
    static WasmBackendReport wasm_report(const std::filesystem::path& root={});
private:
    ForwardSimConfig config_;
    std::unique_ptr<SimulationBackend> backend_;
};

// Validation/offline helper: fork the provided branch root, execute the exact
// plan one frame at a time, and feed every produced SimWorld to the builder.
// This is the branch-specific alternative to a root-only stationary prediction.
TemporalDanger capture_temporal_danger(const ForwardSimulator& root,
    const std::vector<SimActionSegment>& plan,
    TemporalDangerConfig config={});

// Capture one explicit branch once: every frame is fed to both the temporal
// danger builder and the trajectory sample list. No second simulation is run.
TemporalTrajectory capture_temporal_trajectory(const ForwardSimulator& root,
    const std::vector<SimActionSegment>& plan,
    TemporalDangerConfig config={});
} // namespace gamebot
