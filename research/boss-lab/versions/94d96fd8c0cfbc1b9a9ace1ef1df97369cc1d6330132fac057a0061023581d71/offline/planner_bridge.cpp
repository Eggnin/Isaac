#include "gamebot/planner.hpp"
#include "gamebot/weapons.hpp"
#include <emscripten.h>
#include <memory>

using namespace gamebot;
static std::unique_ptr<Planner> planner;
static std::string output;

static void flags(json& entity) {
    entity["flags"] = (uint64_t(entity.value("flags_hi", uint32_t{})) << 32) | entity.value("flags_lo", uint32_t{});
    entity["projectile_flags"] = (uint64_t(entity.value("projectile_flags_hi", uint32_t{})) << 32) | entity.value("projectile_flags_lo", uint32_t{});
}
extern "C" {
EMSCRIPTEN_KEEPALIVE const char* planner_configure(const char* input) {
    try {
        auto j = json::parse(input); PlannerConfig c;
        c.horizon=j.value("horizon",c.horizon); c.margin=j.value("margin",c.margin);
        c.contact_margin=j.value("contact_margin",c.contact_margin);
        c.response=j.value("response",c.response); c.beam_width=j.value("beam_width",c.beam_width);
        c.stages=j.value("stages",c.stages); c.navigation_horizon=j.value("navigation_horizon",c.navigation_horizon);
        c.navigation_beam_width=j.value("navigation_beam_width",c.navigation_beam_width);
        c.navigation_stages=j.value("navigation_stages",c.navigation_stages);
        c.navigation_escalation_frames=j.value("navigation_escalation_frames",c.navigation_escalation_frames);
        c.diagnostics=j.value("diagnostics",c.diagnostics);
        c.use_tear_inheritance=j.value("use_tear_inheritance",c.use_tear_inheritance);
        c.prefer_late_collision=j.value("prefer_late_collision",c.prefer_late_collision);
        c.wall_margin=j.value("wall_margin",c.wall_margin);c.wall_weight=j.value("wall_weight",c.wall_weight);
        c.delirium_margin=j.value("delirium_margin",c.delirium_margin);
        c.dt=j.value("dt",c.dt);
        planner=std::make_unique<Planner>(c);
        output=json{{"configured",true},{"parameters",{
            {"horizon",c.horizon},{"dt",c.dt},{"response",c.response},
            {"margin",c.margin},{"contact_margin",c.contact_margin},
            {"tear_radius",c.tear_radius},{"beam_width",c.beam_width},
            {"stages",c.stages},{"navigation_horizon",c.navigation_horizon},
            {"navigation_beam_width",c.navigation_beam_width},
            {"navigation_stages",c.navigation_stages},
            {"navigation_escalation_frames",c.navigation_escalation_frames},
            {"diagnostics",c.diagnostics},{"use_tear_inheritance",c.use_tear_inheritance}
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
        auto decision=planner->decide(frame,j.value("attack_enabled",true));
        json encoded=decision;
        auto aim=planner->aim(frame,frame.player.body.pos);
        encoded["aim_fire"]=int(aim.fire);
        output=encoded.dump();
    } catch(const std::exception& e) { output=json{{"error",e.what()}}.dump(); }
    return output.c_str();
}
EMSCRIPTEN_KEEPALIVE const char* planner_trace() {
    json trace=json::array();
    if(planner)for(const auto& threat:planner->threats()) {
        json points=json::array();
        for(int i=0;i<=30;++i)points.push_back(threat.at(i/30.0));
        trace.push_back(json{{"source",threat.source},{"kind",threat.kind},{"points",points}});
    }
    output=trace.dump();return output.c_str();
}
EMSCRIPTEN_KEEPALIVE const char* planner_shot_velocity(const char* input) {
    try {
        auto j=json::parse(input);
        output=json(normal_tear_velocity(j.at("player").get<Player>(),static_cast<Fire>(j.at("fire").get<int>()))).dump();
    }catch(const std::exception& e){output=json{{"error",e.what()}}.dump();}
    return output.c_str();
}
}
