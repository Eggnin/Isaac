#pragma once
#include <filesystem>
#include <cstdlib>
#include <string>
#include "model.hpp"
namespace gamebot {
inline constexpr char gamebot_version[]="2026.11.02-v0.9.1.1.2";
// Frame logs already contain everything the semantics layer derives from.
// Compact mode drops the two largest recomputable mechanism blocks; replay
// recomputes them from `frame` plus the database hash recorded in session.json.
inline bool compact_session_log() {
    const char* detail=std::getenv("GAMEBOT_LOG_DETAIL");
    return detail&&std::string(detail)=="compact";
}
inline void trim_session_record(json& record) {
    // Fields captured for research but read by no consumer. Keeping them out
    // of compact logs does not affect replay: from_json restores defaults.
    static const char* dead_fields[]={"bomb_countdown2","bomb_scale","damage_stat",
        "effect_lifespan","laser_shape_kind"};
    auto trim_entity=[](json& entity) {
        if(!entity.is_object())return;
        for(const char* field:dead_fields)entity.erase(field);
    };
    auto frame=record.find("frame");
    if(frame!=record.end()&&frame->is_object()) {
        auto entities=frame->find("entities");
        if(entities!=frame->end()&&entities->is_array())for(auto& entity:*entities)trim_entity(entity);
        auto player=frame->find("player");
        if(player!=frame->end()&&player->is_object()) {
            auto body=player->find("body");
            if(body!=player->end())trim_entity(*body);
        }
    }
    auto mechanisms=record.find("mechanisms");
    if(mechanisms==record.end()||!mechanisms->is_object())return;
    mechanisms->erase("geometry_models");
    auto enemies=mechanisms->find("enemies");
    if(enemies==mechanisms->end()||!enemies->is_array())return;
    for(auto& enemy:*enemies)if(enemy.is_object())enemy.erase("behavior_model");
}
int gui_main(const std::filesystem::path& root);
int cli_main(int argc,wchar_t** argv,const std::filesystem::path& root);
}
