#pragma once
#include "model.hpp"
#include <filesystem>
#include <string>
#include <unordered_map>
#include <unordered_set>

namespace gamebot {
class MechanismSemantics {
    struct StateRule {
        std::string label{"unknown"};
        std::string semantics_evidence{"none"};
        std::vector<std::string> runtime_animations;
        std::vector<std::string> static_animation_calls;
        std::vector<std::string> attack_animations;
        std::vector<std::string> candidate_attack_animations;
        json attack_calls=json::array();
        std::string attack_call_candidate_type{"Unknown"};
        json strict_attack_objects=json::array();
        std::string attack_mapping_evidence{"none"};
        double confidence{};
        json behavior=json::object();
    };
    struct IdentityRule {
        std::string key;
        std::string name{"Unknown"};
        std::string ai_function{"Unknown"};
        std::unordered_map<int,StateRule> states;
        std::unordered_map<std::string,json> attack_event_candidates;
        json direct_ai_attack_calls=json::array();
        std::string direct_ai_attack_candidate_type{"Unknown"};
    };
    struct WarningRule {
        std::string id;
        int type{};
        std::vector<int> variants;
        std::vector<int> subtypes;
        std::unordered_set<int> states;
        std::vector<std::string> animation_prefixes;
        std::vector<std::string> animation_contains;
        std::string geometry;
        std::string attack_type;
        double radius{};
        int trigger_animation_frame{-1};
        double uncertainty{};
        double confidence{};
        bool predictive{};
        std::string evidence_status;
        std::string source_refs;
    };
    struct EyeLock { Vec target; uint32_t expiry{}; };
    struct ContactGeometry {
        double radius{};
        std::string evidence;
    };
    struct ModelInventory {
        std::string id,kind,pattern,pattern_rule;
        bool planning_validated{},pre_spawn_verified{};
    };
    std::unordered_map<std::string,IdentityRule> identities_;
    std::vector<WarningRule> warning_rules_;
    std::unordered_map<std::string,ContactGeometry> contact_geometry_;
    std::unordered_map<std::string,std::vector<MonsterGeometryRef>> geometry_models_by_identity_;
    json curated_models_,verified_timings_,verified_geometry_,monster_geometry_;
    std::unordered_map<uint32_t,EyeLock> eye_locks_;
    std::unordered_set<uint32_t> previous_addresses_;
    std::unordered_map<uint32_t,std::string> previous_identities_;
    std::unordered_map<uint32_t,Entity> previous_entities_;
    uint32_t room_{},clock_{},pid_{};
    std::string source_sha256_,error_;
    bool loaded_{};

    const IdentityRule* identity_for(const Entity& entity) const;
    void append_warning(
        MechanismFrame& output,
        const Frame& frame,
        const Entity& entity,
        const WarningRule& rule,
        MechanismObservation& observation);
    void clear_tracking();
public:
    bool load(const std::filesystem::path& path);
    MechanismFrame evaluate(const Frame& frame);
    bool loaded() const { return loaded_; }
    const std::string& error() const { return error_; }
    const std::string& source_sha256() const { return source_sha256_; }
    size_t identity_count() const { return identities_.size(); }
    size_t warning_rule_count() const { return warning_rules_.size(); }
    size_t monster_geometry_count() const {
        return monster_geometry_.value("models",json::array()).size()+
            monster_geometry_.value("runtime_models",json::array()).size();
    }
    // Database provenance for consumption reports: which models exist and
    // whether they carry a pattern, independent of any single frame.
    std::vector<ModelInventory> geometry_inventory() const;
    static std::filesystem::path default_path(const std::filesystem::path& executable_directory);
};
}
