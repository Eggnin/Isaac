#pragma once
#include "model.hpp"
#include <set>
namespace gamebot {
using Keys=std::set<uint16_t>;
class KeyboardSink {
public:
    virtual ~KeyboardSink()=default;
    virtual bool transition(const Keys& previous,const Keys& next)=0;
};
struct Execution { bool enabled{},applied{};Keys keys;std::string reason;bool attack_enabled{true}; };
struct ScanCodeEvent {uint16_t scan{};bool extended{},key_up{};};
std::vector<ScanCodeEvent> scan_code_events(const Keys& before,const Keys& after);
class Controller {
    KeyboardSink& sink_;Keys held_;bool enabled_{};bool release_failed_{};bool attack_enabled_{true};
public:
    explicit Controller(KeyboardSink& sink):sink_(sink){}
    ~Controller(){stop();}
    bool enable(){if(release_failed_)return false;enabled_=true;return true;}
    bool stop();
    bool set_attack_enabled(bool enabled);
    bool attack_enabled()const{return attack_enabled_;}
    Execution apply(const Frame& frame,const Decision& decision,double now,bool focused,bool manual);
    const Keys& held()const{return held_;}bool enabled()const{return enabled_;}
};
Keys action_keys(Move move,Fire fire);
class WindowsKeyboard final:public KeyboardSink { public: bool transition(const Keys& previous,const Keys& next) override; };
class WindowKeyboard final:public KeyboardSink {
    uint32_t process_id_{};uintptr_t window_{};
public:
    void set_process(uint32_t pid){if(pid!=process_id_){process_id_=pid;window_=0;}}
    bool transition(const Keys& previous,const Keys& next)override;
};
}
