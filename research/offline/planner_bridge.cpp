#include "gamebot/planner.hpp"
#include "gamebot/weapons.hpp"
#include <emscripten.h>
#include <memory>

using namespace gamebot;
static std::unique_ptr<Planner> planner;
static std::string output;

static void flags(json& entity) {
    entity["flags"] = (uint64_t(entity.value("flags_hi", uint32_t{})) << 32) | entity.value("flags_lo", uint32_t{});
    entity["projectile_change_flags"] = (uint64_t(entity.value("projectile_change_flags_hi", uint32_t{})) << 32) | entity.value("projectile_change_flags_lo", uint32_t{});
    entity["projectile_flags"] = (uint64_t(entity.value("projectile_flags_hi", uint32_t{})) << 32) | entity.value("projectile_flags_lo", uint32_t{});
}
extern "C" {
EMSCRIPTEN_KEEPALIVE const char* planner_configure(const char* input) {
    try {
        auto j = json::parse(input); PlannerConfig c;
        c.horizon=j.value("horizon",c.horizon); c.margin=j.value("margin",c.margin);
        c.contact_margin=j.value("contact_margin",c.contact_margin);
        c.terrain_margin=j.value("terrain_margin",c.terrain_margin);
        c.hazard_terrain_margin=j.value("hazard_terrain_margin",c.hazard_terrain_margin);
        c.response=j.value("response",c.response); c.beam_width=j.value("beam_width",c.beam_width);
        c.stages=j.value("stages",c.stages); c.navigation_horizon=j.value("navigation_horizon",c.navigation_horizon);
        c.navigation_progress_weight=j.value("navigation_progress_weight",c.navigation_progress_weight);
        c.projectile_burst_margin=j.value("projectile_burst_margin",c.projectile_burst_margin);
        c.action_change_penalty=j.value("action_change_penalty",c.action_change_penalty);
        c.action_hold_min_clearance=j.value("action_hold_min_clearance",c.action_hold_min_clearance);
        c.action_hold_frames=j.value("action_hold_frames",c.action_hold_frames);
        c.pressure_plate_goal_weight=j.value("pressure_plate_goal_weight",c.pressure_plate_goal_weight);
        c.navigation_beam_width=j.value("navigation_beam_width",c.navigation_beam_width);
        c.navigation_stages=j.value("navigation_stages",c.navigation_stages);
        c.navigation_escalation_frames=j.value("navigation_escalation_frames",c.navigation_escalation_frames);
        c.navigation_hold_frames=j.value("navigation_hold_frames",c.navigation_hold_frames);
        c.navigation_waypoint_frames=j.value("navigation_waypoint_frames",c.navigation_waypoint_frames);
        c.navigation_waypoint_hold=j.value("navigation_waypoint_hold",c.navigation_waypoint_hold);
        c.navigation_waypoint_priority=j.value("navigation_waypoint_priority",c.navigation_waypoint_priority);
        c.persistent_navigation=j.value("persistent_navigation",c.persistent_navigation);
        c.navigation_goal_priority=j.value("navigation_goal_priority",c.navigation_goal_priority);
        c.navigation_static_speed=j.value("navigation_static_speed",c.navigation_static_speed);
        c.projectile_burst_prediction=j.value("projectile_burst_prediction",c.projectile_burst_prediction);
        c.projectile_burst_alternating=j.value("projectile_burst_alternating",c.projectile_burst_alternating);
        c.diagnostics=j.value("diagnostics",c.diagnostics);
        c.native_player_motion=j.value("native_player_motion",c.native_player_motion);
        c.native_projectile_motion=j.value("native_projectile_motion",c.native_projectile_motion);
        c.native_laser_geometry=j.value("native_laser_geometry",c.native_laser_geometry);
        c.legacy_laser_width=j.value("legacy_laser_width",c.legacy_laser_width);
        c.evaluate_candidate_warnings=j.value("evaluate_candidate_warnings",c.evaluate_candidate_warnings);
        c.dt=j.value("dt",c.dt);
        planner=std::make_unique<Planner>(c);
        output=json{{"configured",true},{"parameters",{
            {"horizon",c.horizon},{"dt",c.dt},{"response",c.response},
            {"margin",c.margin},{"contact_margin",c.contact_margin},
            {"terrain_margin",c.terrain_margin},
            {"hazard_terrain_margin",c.hazard_terrain_margin},
            {"tear_radius",c.tear_radius},{"beam_width",c.beam_width},
            {"stages",c.stages},{"navigation_horizon",c.navigation_horizon},
            {"navigation_progress_weight",c.navigation_progress_weight},
            {"projectile_burst_margin",c.projectile_burst_margin},
            {"action_change_penalty",c.action_change_penalty},
            {"action_hold_min_clearance",c.action_hold_min_clearance},
            {"action_hold_frames",c.action_hold_frames},
            {"pressure_plate_goal_weight",c.pressure_plate_goal_weight},
            {"navigation_beam_width",c.navigation_beam_width},
            {"navigation_stages",c.navigation_stages},
            {"navigation_escalation_frames",c.navigation_escalation_frames},
            {"navigation_hold_frames",c.navigation_hold_frames},
            {"navigation_waypoint_frames",c.navigation_waypoint_frames},
            {"navigation_waypoint_hold",c.navigation_waypoint_hold},
            {"navigation_waypoint_priority",c.navigation_waypoint_priority},
            {"persistent_navigation",c.persistent_navigation},
            {"navigation_goal_priority",c.navigation_goal_priority},
            {"navigation_static_speed",c.navigation_static_speed},
            {"projectile_burst_prediction",c.projectile_burst_prediction},
            {"projectile_burst_alternating",c.projectile_burst_alternating},
            {"diagnostics",c.diagnostics},{"native_player_motion",c.native_player_motion},
            {"native_projectile_motion",c.native_projectile_motion},
            {"native_laser_geometry",c.native_laser_geometry},{"legacy_laser_width",c.legacy_laser_width},
            {"evaluate_candidate_warnings",c.evaluate_candidate_warnings}
        }}}.dump();
    } catch(const std::exception& e) { output=json{{"error",e.what()}}.dump(); }
    return output.c_str();
}
EMSCRIPTEN_KEEPALIVE const char* planner_decide(const char* input) {
    try {
        auto j=json::parse(input); flags(j["player"]["body"]);
        for(auto& e:j["entities"])flags(e);
        Frame frame=j.get<Frame>();
        for(auto& w:frame.player.weapons)w.max_charge=max_charge_for(w.type,w.fire_delay,w.modifiers);
        if(!planner)planner=std::make_unique<Planner>();
        MechanismFrame mechanisms;
        const bool has_mechanisms=j.contains("mechanisms")&&j.at("mechanisms").is_object();
        if(has_mechanisms)mechanisms=j.at("mechanisms").get<MechanismFrame>();
        output=json(planner->decide(frame,j.value("attack_enabled",true),
            has_mechanisms?&mechanisms:nullptr)).dump();
    } catch(const std::exception& e) { output=json{{"error",e.what()}}.dump(); }
    return output.c_str();
}
}
