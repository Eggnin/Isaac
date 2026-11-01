#include "gamebot/control.hpp"
namespace gamebot {
std::vector<ScanCodeEvent> scan_code_events(const Keys& before,const Keys& after) {
    std::vector<ScanCodeEvent> events;
    auto add=[&](uint16_t key,bool up){
        uint16_t scan{};bool extended=false;
        switch(key){case 'W':scan=0x11;break;case 'A':scan=0x1e;break;case 'S':scan=0x1f;break;case 'D':scan=0x20;break;
        case 0x25:scan=0x4b;extended=true;break;case 0x26:scan=0x48;extended=true;break;case 0x27:scan=0x4d;extended=true;break;case 0x28:scan=0x50;extended=true;break;default:break;}
        events.push_back({scan,extended,up});
    };
    for(auto key:before)if(!after.contains(key))add(key,true);
    for(auto key:after)if(!before.contains(key))add(key,false);
    return events;
}
Keys action_keys(Move move,Fire fire) {
    Keys keys;auto dir=direction(move);
    if(dir.x>0)keys.insert('D');if(dir.x<0)keys.insert('A');if(dir.y>0)keys.insert('S');if(dir.y<0)keys.insert('W');
    switch(fire){case Fire::up:keys.insert(0x26);break;case Fire::right:keys.insert(0x27);break;case Fire::down:keys.insert(0x28);break;case Fire::left:keys.insert(0x25);break;default:break;}
    return keys;
}
bool Controller::stop() {
    enabled_=false;
    if(!sink_.transition(held_,{})){release_failed_=true;return false;}
    held_.clear();release_failed_=false;return true;
}
bool Controller::set_attack_enabled(bool enabled) {
    attack_enabled_=enabled;
    if(enabled)return true;
    Keys next=held_;for(uint16_t key:{0x25,0x26,0x27,0x28})next.erase(key);
    if(next!=held_) {
        if(!sink_.transition(held_,next)){stop();return false;}
        held_=std::move(next);
    }
    return true;
}
Execution Controller::apply(const Frame& f,const Decision& d,double now,bool focused,bool manual) {
    std::string reason;
    if(!enabled_)reason="Disabled";
    else if(!focused)reason="Game lost focus";
    else if(manual)reason="Manual control / Shift held";
    else if(!f.valid||!f.has_player||!f.grid.valid||f.paused||f.transition||!f.player.body.alive()||!f.player.controls)reason="Game state unavailable";
    else if(now<f.captured_ms||now-f.captured_ms>150||d.planning_ms>120)reason="Stale observation or decision";
    else if(!d.valid||d.stop)reason=d.reason;
    Keys next=reason.empty()?action_keys(d.move,attack_enabled_?d.fire:Fire::none):Keys{};
    if(next!=held_||release_failed_) {
        if(!sink_.transition(held_,next)) {
            // Conservatively retain every key that may have reached SendInput.
            held_.insert(next.begin(),next.end());stop();return {false,false,held_,"Keyboard output failed",attack_enabled_};
        }
        held_=next;release_failed_=false;
    }
    return {enabled_,reason.empty(),held_,reason.empty()?d.reason:reason,attack_enabled_};
}
}
