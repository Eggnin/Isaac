#pragma once
#include "combat_progress.hpp"
#include "forward_sim.hpp"
#include "safety.hpp"
#include "world_state.hpp"
#include <optional>
#include <string>
#include <utility>
#include <vector>

namespace gamebot {
// Combat intelligence sits between the recovered world state and the MPC beam.
// It never reads game memory itself and never upgrades an animation label into
// a damage/invulnerability fact. Damageability is taken from the native entity
// flags captured by the Reader; attack timing prefers verified mechanism timing
// and native cooldown counters, then inferred intents.
enum class AttackPhase : uint8_t { unknown, idle, windup, active, recovery, invulnerable, dead };
const char* attack_phase_name(AttackPhase phase);

// The objective layer only chooses *what to care about*; the MPC still owns
// every move/shoot decision. Modes are derived from the selected enemy's own
// simulated state, not from a global script.
enum class TacticalMode : uint8_t {
    balanced,    // no clear target/opportunity
    engage,      // target available, ordinary output
    focus_fire,  // target is close to death; finishing it removes threat
    reposition,  // target exists but current position cannot hit or escape well
    disengage,   // survival cost is too high; keep distance, do not force output
    escape       // hard safety failure; only escape ranking is valid
};
const char* tactical_mode_name(TacticalMode mode);
TacticalMode tactical_mode_from_name(const std::string& name);

struct CombatConfig {
    bool enabled{true};
    int max_threats{64};
    // Threat score weights. All components are normalised to [0,1].
    double distance_weight{0.22};
    double timing_weight{0.24};
    double damage_weight{0.16};
    double frequency_weight{0.10};
    double range_weight{0.08};
    double space_weight{0.15};
    double unknown_weight{0.05};
    double unknown_mechanism_risk{0.35};
    double attack_horizon{2.0};
    double default_attack_range{220.0};
    // Movement-space probe. The probe uses the current room grid and real
    // hazards; it never assumes an unobserved hazard exists.
    double movement_probe_seconds{0.45};
    int movement_probe_samples{6};
    double movement_probe_margin{8.0};

    // Target ranking weights. Switch hysteresis is deliberately stateful and
    // rate-limited so the selected target does not flicker between equal
    // candidates.
    double target_threat_weight{0.35};
    double target_kill_weight{0.20};
    double target_hit_weight{0.20};
    double target_window_weight{0.15};
    double target_kill_impact_weight{0.10};
    double target_cost_weight{0.10};
    double target_switch_margin{0.15};
    int target_min_hold_frames{12};
    double tear_damage{3.5};
    double tear_radius{6.0};
    // Native launch inheritance shared with ForwardSimulator. The value is
    // measured, not tuned: research/tear-velocity-probe.json shows a 0.59-0.60
    // lateral ratio for an ordinary 300 px/s tear.
    double tear_inheritance{native_tear_inheritance};
    double tear_spawn_offset{native_tear_spawn_offset};

    // v0.8.3 dynamic target selection. Every term is normalised to [0,1] before
    // it reaches the score. "Exposure" is the risk of standing in the target's
    // attack lane; "positioning" is the cost of reaching a firing position.
    double target_threat_reduction_weight{0.18};
    double target_expected_damage_weight{0.10};
    double target_kill_probability_weight{0.16};
    double target_time_to_kill_weight{0.10};
    double target_attack_opportunity_weight{0.16};
    double target_kill_gain_weight{0.12};
    double target_exposure_weight{0.10};
    double target_positioning_weight{0.10};
    // Probability window used by kill_probability. It is a scoring horizon, not
    // a claim that the enemy will die in that time.
    double kill_probability_horizon{1.2};
    double exposure_window_horizon{0.90};
    double branch_switch_margin{0.12};
    double branch_sticky_bonus{0.06};
    double focus_fire_hp_fraction{0.35};
    // Strategy-profile gates. Defaults reproduce the pre-profile behaviour:
    // any damageable target is engageable and movement restriction >= 0.80
    // forces disengage. A profile may make output more or less eager, but the
    // values are bounded and never touch the SafetyGate.
    double engage_threshold{0.0};
    double disengage_threshold{0.80};
    // A branch may consider this many damageable enemies for target ranking.
    // The cap keeps per-node work bounded; the threat list is still complete.
    int branch_target_limit{6};

    // Branch-specific objective weights. These are added to the existing combat
    // terms and remain capped by `candidate_max_value` below one HP of damage.
    double candidate_sequence_weight{8.0};
    double candidate_position_weight{6.0};
    double candidate_exposure_weight{4.0};
    // Positioning is only rewarded for branches that already passed the hard
    // safety gate; the MPC applies that gate before these terms are ranked.
    double position_escape_weight{0.30};
    double position_maneuver_weight{0.25};
    double position_line_weight{0.25};
    double position_surround_weight{0.20};
    double position_density_reference{6.0};

    // Attack-window detector.
    double window_min_output_gap{0.18};

    // Predictive aiming. The target path is advanced with the same native
    // entity-motion routine used by ForwardSimulator. The horizon covers a
    // full-range ordinary tear at its nominal speed (400 / 300 = 1.33 s).
    // Deliberately not extended to the worst retreat case (1.96 s): a two
    // second lead is outside the useful attack window, and the branch scorer
    // should prefer a clean shot over a very long drifting one. The per-shot
    // loop still stops at the weapon's actual tear range.
    double aim_horizon{1.5};
    double aim_max_target_speed{600.0};
    bool aim_require_line_clear{true};

    // MPC candidate score. Threat removal and kill terms are normalised, so
    // their sum stays below the existing one-HP damage penalty.
    double candidate_threat_weight{30.0};
    double candidate_kill_weight{15.0};
    double candidate_window_weight{10.0};
    double candidate_aim_weight{8.0};
    double candidate_efficiency_weight{5.0};
    // Anti-stalemate terms. They are only populated while the real Reader-side
    // progress tracker reports a stall, so normal combat does not become
    // unconditionally more aggressive.
    double candidate_progress_weight{12.0};
    double candidate_reachability_weight{10.0};
    double candidate_approach_weight{8.0};
    // The whole combat reward of a branch is capped below the existing one-HP
    // damage penalty (100). Survival can never be traded for output.
    double candidate_max_value{60.0};
};

struct ThreatAssessment {
    uint32_t id{};
    int type{}, variant{}, subtype{};
    Vec pos{}, vel{};
    double hp{}, max_hp{};
    double distance{};
    double attack_range{};
    double attack_period{};
    double expected_damage{};
    double time_to_attack{-1};
    double movement_restriction{};
    double unknown_risk{};
    double score{};
    bool contact{}, boss{}, damageable{}, invulnerable{}, targetable{};
    bool attack_imminent{};
    Precision timing_precision{Precision::unknown};
    std::string phase{"unknown"};
    std::string evidence;
    json to_json() const;
};

struct AttackWindowAssessment {
    uint32_t enemy_id{};
    AttackPhase phase{AttackPhase::unknown};
    bool damageable{}, damageable_verified{};
    bool attack_imminent{}, window_open{};
    double time_to_attack{-1};
    double active_remaining{};
    double recovery_remaining{};
    double opening_seconds{};
    double confidence{};
    Precision precision{Precision::unknown};
    std::string evidence;
    json to_json() const;
};

struct PredictiveAimSolution {
    uint32_t target_id{};
    bool valid{}, predicted_hit{}, line_clear{}, target_damageable{};
    Fire fire{Fire::none};
    Vec aim_point{}, target_future_position{}, target_velocity{};
    // Full launch diagnostics. They describe the shot that the native tear
    // model would actually produce, not just the requested cardinal key.
    Vec target_position{}, spawn_position{}, projectile_velocity{};
    double intercept_time{-1};
    double miss_distance{1e9};
    double hit_radius{};
    double tear_speed{};
    double inheritance{native_tear_inheritance};
    int estimated_travel_frames{-1};
    double confidence{};
    std::string evidence{"none"};
    json to_json() const;
};

struct TargetAssessment {
    uint32_t id{};
    double score{};
    double threat{};
    double kill_time{};          // alias of time_to_kill for older callers
    double hit_opportunity{};    // alias of attack_opportunity
    double attack_cost{};
    double window_gain{};
    double kill_impact{};
    // v0.8.3 dynamic selection terms.
    double threat_reduction{};
    double expected_damage{};
    double kill_probability{};
    double time_to_kill{};
    double attack_opportunity{};
    double exposure_cost{};
    double positioning_cost{};
    double kill_gain{};
    double position_gain{};
    double hp_fraction{1};
    bool selected{}, damageable{}, window_open{}, predicted_hit{};
    bool attack_imminent{};
    Fire fire{Fire::none};
    std::string reason;
    json to_json() const;
};

struct CombatObjective {
    uint32_t primary_threat{}, target{};
    double survival_priority{1.0};
    double output_priority{};
    double expected_threat_reduction{};
    double expected_dps{};
    bool target_available{}, disengage{}, switch_target{}, unknown_risk{};
    // v0.8.3 structured objective. These fields are guidance only; the MPC
    // still computes the final move/fire action.
    TacticalMode tactical_mode{TacticalMode::balanced};
    // v0.9.1.1 real-progress anti-stalemate guidance. They do not bypass the
    // SafetyGate; they only describe why a safe candidate should be preferred.
    bool anti_stalemate{}, need_reposition{}, target_invalid{}, target_unreachable{};
    double attack_reachability{};
    std::string progress_kind{"unknown"};
    double expected_kill_gain{};     // threat removed by finishing the target
    double target_position_gain{};   // value of the current firing position
    double exposure_cost{};          // risk of remaining in the target's lane
    double positioning_cost{};       // cost of reaching a firing position
    double kill_probability{};
    double time_to_kill{};
    double attack_opportunity{};
    double threat_reduction{};
    int threat_count{}, damageable_count{};
    bool branch_specific{};
    std::string reason;
    json to_json() const;
};

struct CombatContext {
    bool valid{}, attack_enabled{true}, switched{};
    uint32_t target{}, primary_threat{};
    int considered{}, unknown_enemies{}, damageable_enemies{};
    double movement_restriction{};
    // Root geometry used by safe-approach scoring on each branch.
    Vec player_position{};
    double tear_range{260};
    double target_distance{1e9};
    bool target_in_range{}, target_line_clear{};
    // Cardinal fallback shot toward the selected target. Used when predictive
    // aim has no intercept, so combat does not stall merely because a perfect
    // lead solution is unavailable.
    Fire fallback_fire{Fire::none};
    bool fallback_fire_valid{};
    std::vector<ThreatAssessment> threats;
    std::vector<AttackWindowAssessment> windows;
    std::vector<TargetAssessment> targets;
    PredictiveAimSolution aim;
    CombatObjective objective;
    std::string reason;
    const ThreatAssessment* threat(uint32_t id) const;
    const AttackWindowAssessment* window(uint32_t id) const;
    const TargetAssessment* target_assessment(uint32_t id) const;
    json to_json() const;
};

struct BranchCombatSummary;
// Per-branch tactical view. It is rebuilt from that branch's own SimWorld, so
// two actions at the same MPC depth may legitimately have different threat
// ordering, different remaining HP and a different best target. The branch
// never mutates the root TargetSelector.
struct BranchCombatContext {
    bool valid{}, disengage{}, switched{}, target_available{};
    uint32_t primary_threat{}, target{};
    TacticalMode mode{TacticalMode::balanced};
    double threat_total{}, threat_remaining{};
    double survival_priority{1.0}, output_priority{};
    double target_hp{}, target_hp_fraction{}, target_ttk{};
    double target_kill_probability{}, target_attack_opportunity{};
    double target_expected_damage{}, target_exposure{}, target_positioning{};
    double escape_space{1}, maneuverability{};
    // v0.9.1.1 branch-level attack reachability and safe-approach evidence.
    bool anti_stalemate{}, need_reposition{}, target_line_clear{};
    double target_distance{1e9}, attack_reachability{};
    int enemy_count{}, damageable_enemies{};
    std::vector<ThreatAssessment> threats;
    std::vector<AttackWindowAssessment> windows;
    std::vector<TargetAssessment> targets;
    CombatObjective objective;
    const ThreatAssessment* threat(uint32_t id) const;
    const AttackWindowAssessment* window(uint32_t id) const;
    const TargetAssessment* target_assessment(uint32_t id) const;
    BranchCombatSummary summary() const;
    json to_json() const;
};

// Compact, copy-safe projection stored on every MPC node. The full branch
// context contains vectors; the beam keeps only these scalars for logging and
// for the next segment's sticky target.
struct BranchCombatSummary {
    bool valid{}, disengage{}, switched{};
    uint32_t target{};
    TacticalMode mode{TacticalMode::balanced};
    double threat_total{}, threat_remaining{};
    double target_hp{}, target_hp_fraction{}, target_ttk{};
    double kill_probability{}, attack_opportunity{}, exposure{}, positioning{};
    bool anti_stalemate{}, need_reposition{};
    double attack_reachability{}, target_distance{1e9};
    int enemy_count{}, damageable_enemies{};
    json to_json() const;
};

// Normalised [0,1] terms measured independently for each simulated candidate.
struct CombatCandidateTerms {
    double threat_removal{};
    double kill_priority{};
    double attack_window{};
    double aim_hit{};
    double output_efficiency{};
    double target_damage_fraction{};
    bool target_killed{};
    // v0.8.3 branch terms.
    double kill_sequence{};      // residual threat after the best next kill
    double positioning{};        // safe/escapable/firing-position quality
    double exposure{};           // target's attack-lane risk
    // v0.9.1.1 anti-stalemate progression terms. They are zero unless the real
    // progress tracker reports a stall.
    double progress_gain{};      // branch reaches/keeps a usable firing position
    double reachability{};       // target line/range/angle quality
    double approach{};           // safe closing distance toward the target
    uint32_t branch_target{};
    bool branch_target_killed{}, branch_disengage{};
    TacticalMode branch_mode{TacticalMode::balanced};
    double total(const CombatConfig& config) const;
    json to_json() const;
};

class ThreatPrioritizer {
public:
    explicit ThreatPrioritizer(CombatConfig config={}):config_(config){}
    std::vector<ThreatAssessment> assess(const WorldStateSnapshot& root,
        const std::vector<AttackWindowAssessment>& windows,
        double movement_restriction_override=-1.0) const;
    // Branch view. Only fields already present in the simulator are used; no
    // new game-memory read and no animation-to-vulnerability upgrade.
    std::vector<ThreatAssessment> assess(const SimWorld& world,
        const std::vector<AttackWindowAssessment>& windows,
        double movement_restriction_override=-1.0) const;
    double movement_restriction(const WorldStateSnapshot& root) const;
    double movement_restriction(const SimWorld& world) const;
    const CombatConfig& config() const { return config_; }
private:
    CombatConfig config_;
};

class AttackWindowDetector {
public:
    explicit AttackWindowDetector(CombatConfig config={}):config_(config){}
    AttackWindowAssessment detect(const EnemyState& enemy,uint32_t clock) const;
    // The branch world exposes mechanism-derived windup/active/cooldown
    // counters. They are simulator evidence, not animation labels.
    AttackWindowAssessment detect(const SimEnemy& enemy,uint32_t clock) const;
    std::vector<AttackWindowAssessment> detect_all(const WorldStateSnapshot& root) const;
    std::vector<AttackWindowAssessment> detect_all(const SimWorld& world) const;
    const CombatConfig& config() const { return config_; }
private:
    CombatConfig config_;
};

class PredictiveAimer {
public:
    explicit PredictiveAimer(CombatConfig config={}):config_(config){}
    PredictiveAimSolution solve(const WorldStateSnapshot& root,uint32_t target) const;
    PredictiveAimSolution solve(const SimWorld& world,uint32_t target) const;
    // Same native-motion solve restricted to one fire key. Used for logging the
    // shot that was actually selected, so a different MPC action cannot be
    // reported with the root aim's intercept.
    PredictiveAimSolution evaluate(const WorldStateSnapshot& root,uint32_t target,
        Fire fire) const;
    PredictiveAimSolution evaluate(const SimWorld& world,uint32_t target,Fire fire) const;
    // O(1) constant-velocity intercept used only inside branch scoring. Root
    // ranking and action pruning use the full native-motion solve above.
    PredictiveAimSolution check(const SimWorld& world,uint32_t target,Fire fire) const;
    // Lookup-free overload for branch ranking, which already holds the SimEnemy.
    PredictiveAimSolution check(const SimWorld& world,const SimEnemy& enemy,
        Fire fire) const;
    const CombatConfig& config() const { return config_; }
private:
    CombatConfig config_;
};

class TargetSelector {
public:
    explicit TargetSelector(CombatConfig config={}):config_(config){}
    std::vector<TargetAssessment> rank(const WorldStateSnapshot& root,
        const std::vector<ThreatAssessment>& threats,
        const std::vector<AttackWindowAssessment>& windows,
        const std::vector<PredictiveAimSolution>& aims) const;
    // Stateless branch ranking. `sticky` is the root/branch target that still
    // gets a small bonus; it is never mutated here.
    std::vector<TargetAssessment> rank(const SimWorld& world,
        const std::vector<ThreatAssessment>& threats,
        const std::vector<AttackWindowAssessment>& windows,uint32_t sticky) const;
    // Mutates `ranked` selected flags and returns the sticky target id.
    uint32_t select(const WorldStateSnapshot& root,std::vector<TargetAssessment>& ranked);
    // Read-only branch selection with hysteresis against `sticky`.
    uint32_t select_branch(std::vector<TargetAssessment>& ranked,uint32_t sticky) const;
    void reset();
    // Releases only the minimum-hold timer so a genuinely unreachable or
    // invulnerable target can be replaced. The selected target is otherwise
    // kept and the switch is still counted by select().
    void release_hold() { selected_clock_=0; }
    // Updates weights without dropping the held target or the switch counter.
    // Strategy-profile blending uses this every frame.
    void set_config(CombatConfig config) { config_=config; }
    int switches() const { return switches_; }
    uint32_t previous_target() const { return target_; }
    const CombatConfig& config() const { return config_; }
private:
    CombatConfig config_;
    uint32_t target_{};
    uint32_t selected_clock_{};
    double selected_score_{};
    int switches_{};
};

class CombatObjectiveManager {
public:
    explicit CombatObjectiveManager(CombatConfig config={}):config_(config){}
    CombatObjective evaluate(const WorldStateSnapshot& root,const CombatContext& context,
        const CombatProgressState& progress={}) const;
    CombatObjective evaluate(const SimWorld& world,const BranchCombatContext& branch,
        const SafetyMetrics& safety,const CombatProgressState& progress={}) const;
    const CombatConfig& config() const { return config_; }
private:
    CombatConfig config_;
};

using CombatEnemyHp = std::vector<std::pair<uint32_t,double>>;
CombatEnemyHp combat_enemy_hp(const SimWorld& world);

// Owns the per-frame combat pipeline and the sticky target state. `evaluate`
// is the only entry point the MPC needs; `score_delta` is called for every
// branch/segment so movement and attack gains are computed from that branch's
// own simulated world.
class CombatIntelligence {
public:
    explicit CombatIntelligence(CombatConfig config={});
    // `aim_world` is optional. When the caller already restored the root
    // simulator, aiming uses its windup/charge/chase state instead of treating
    // every contact body as a chaser.
    CombatContext evaluate(const WorldStateSnapshot& root,bool attack_enabled=true,
        const SimWorld* aim_world=nullptr);
    // Rebuild the whole tactical view from one branch's simulated world. The
    // root context is only used for the sticky target and for provenance.
    BranchCombatContext evaluate_branch(const CombatContext& root,
        const SimWorld& world,const SafetyMetrics& safety=SafetyMetrics{},
        uint32_t preferred_target=0) const;
    PredictiveAimSolution aim(const CombatContext& context,const SimWorld& world,
        uint32_t preferred=0) const;
    PredictiveAimSolution aim(const WorldStateSnapshot& root,uint32_t target) const;
    // Diagnostic view of one already-selected fire action.
    PredictiveAimSolution shot(const SimWorld& world,uint32_t target,Fire fire) const;
    CombatCandidateTerms score_delta(const CombatContext& context,
        const CombatEnemyHp& before,const SimWorld& after,const SimAction& action,
        const SimulationScore& after_score,const SafetyMetrics& safety={},
        BranchCombatContext* branch_out=nullptr) const;
    // Same computation when the caller already owns a branch view.
    CombatCandidateTerms score_branch(const CombatContext& context,
        const BranchCombatContext& branch,const CombatEnemyHp& before,
        const SimWorld& after,const SimAction& action,
        const SimulationScore& after_score,const SafetyMetrics& safety={}) const;
    void reset();
    void set_config(CombatConfig config);
    // Preserves the TargetSelector's sticky target while changing the scoring
    // weights. Use this for adaptive strategy profiles.
    void update_config(CombatConfig config);
    void set_progress(const CombatProgressState& progress) { progress_=progress; }
    const CombatProgressState& progress() const { return progress_; }
    const CombatConfig& config() const { return config_; }
    const TargetSelector& selector() const { return selector_; }
private:
    CombatConfig config_;
    CombatProgressState progress_;
    ThreatPrioritizer threats_;
    AttackWindowDetector windows_;
    PredictiveAimer aimer_;
    TargetSelector selector_;
    CombatObjectiveManager objectives_;
};
} // namespace gamebot
