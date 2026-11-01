#include "gamebot/runtime.hpp"
#include "gamebot/reader.hpp"
#include "gamebot/planner.hpp"
#include "gamebot/semantics.hpp"
#define NOMINMAX
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <shellapi.h>
#include <fstream>
#include <iostream>
#include <chrono>
#include <thread>
#include <array>
#include <deque>
#include <map>
#include <set>
#include <algorithm>
namespace gamebot {
namespace {
double now_ms(){return std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now().time_since_epoch()).count();}
struct AuditSnapshot {
    uint32_t clock{};Vec pos{};double radius{};int threats{};
    std::vector<Threat> geometry;
};
struct AuditTrack {
    uint64_t frames{},threat_frames{},predictive_frames{},threat_total{};
    uint64_t damage{},covered_any{},covered_hazard{},lead_frames{};
    std::map<std::string,uint64_t> coverage_kinds;
    std::map<std::string,uint64_t> covered_by_class;
};
// A damage event is covered when a previous prediction already makes the
// player's position unsafe. Contact is reported separately because a nearby
// enemy body always covers its own position; mixing them would hide whether a
// projectile, laser, jump, charge or explosion was predicted. This measures
// recall only: a dodged prediction cannot be separated from a false positive
// without an independent collision oracle.
bool covered_at(const AuditSnapshot& snapshot,Vec point,double radius,
                std::set<std::string>& kinds,std::set<std::string>& classes,
                bool& hazard,double* lead=nullptr) {
    bool covered=false;
    for(const auto& threat:snapshot.geometry) {
        if(threat.clearance(point,point,0,std::max(1.0/30,threat.until),radius)<0) {
            covered=true;kinds.insert(threat.kind);
            classes.insert(damage_class_name(threat.damage_class));
            if(threat.damage_class!=DamageClass::contact) {
                hazard=true;
                if(lead)*lead=std::max(*lead,threat.start);
            }
        }
    }
    return covered;
}
}
int cli_main(int argc,wchar_t** argv,const std::filesystem::path& root) {
    std::wstring mode=argv[1];
    if(mode==L"--version") {
        json version{{"version",gamebot_version},{"architecture","C++20 / Win32 x64"},{"data_source","external-process-memory"},{"keyboard_output",false}};
        // The binary cannot tell whether it was built from the current sources
        // by itself; the build stamp records the source hash and test outcome.
        try {
            std::ifstream stamp{root/"build-stamp.json"};
            if(stamp)version["build"]=json::parse(stamp);
        }catch(const std::exception&) { version["build_error"]="build-stamp.json is unreadable"; }
        std::cout<<version.dump(2)<<'\n';return 0;
    }
    if(mode==L"--help") {
        std::cout<<"Isaac Gamebot C++ "<<gamebot_version<<"\n--version\n--inspect <isaac-ng.exe>\n--observe <seconds> <output.jsonl>\n--shadow <seconds> <output.jsonl>\n--replay <input.jsonl> <output.jsonl>\n--audit <input.jsonl> <report.json>\n--consumption <input.jsonl> <report.json>\nNo keyboard output in any CLI mode.\n";return 0;
    }
    if(mode==L"--inspect"&&argc==3) {
        auto layout=Reader::inspect(argv[2]);std::cout<<json{{"supported",true},{"sha256",layout.sha256},{"game_slot_rva",layout.game_slot},{"manager_slot_rva",layout.manager_slot}}.dump(2)<<'\n';return 0;
    }
    Planner planner;MechanismSemantics semantics;auto semantics_path=MechanismSemantics::default_path(root);
    semantics.load(semantics_path);
    if(mode==L"--replay"&&argc==4) {
        if(std::filesystem::absolute(argv[2]).lexically_normal()==std::filesystem::absolute(argv[3]).lexically_normal())throw std::runtime_error("Input and output must differ");
        std::ifstream in{std::filesystem::path(argv[2])};if(!in)throw std::runtime_error("Cannot open replay input");
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        std::ofstream out{std::filesystem::path(argv[3])};if(!out)throw std::runtime_error("Cannot create replay output");
        std::string line;uint64_t count=0;double total_ms=0;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)throw std::runtime_error("Replay line exceeds 8 MiB");
            auto record=json::parse(line);Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            auto mechanisms=semantics.evaluate(frame);auto decision=planner.decide(frame,true,&mechanisms);
            total_ms+=decision.planning_ms;out<<json{{"frame",frame},{"mechanisms",mechanisms},{"decision",decision},{"mode","replay"}}.dump()<<'\n';++count;
        }
        if(!in.eof()||!out)throw std::runtime_error("Replay I/O failed");
        std::cout<<json{{"frames",count},{"mean_planning_ms",count?total_ms/count:0},{"keyboard_output",false},
            {"semantics_loaded",semantics.loaded()},{"semantics_path",semantics_path.string()},{"semantics_error",semantics.error()}}.dump(2)<<'\n';return count?0:2;
    }
    if(mode==L"--consumption"&&argc==4) {
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Report already exists");
        std::ifstream in{std::filesystem::path(argv[2])};if(!in)throw std::runtime_error("Cannot open consumption input");
        Planner planner;
        std::map<std::string,uint64_t> identities,attached,attached_kinds,warning_rules,threat_kinds,threat_classes;
        std::map<std::string,std::map<std::string,uint64_t>> identity_classes;
        uint64_t frames=0,valid_frames=0,attached_total=0,predictive_frames=0,threat_total=0;
        std::string line;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)throw std::runtime_error("Consumption line exceeds 8 MiB");
            auto record=json::parse(line);
            Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            auto mechanisms=semantics.evaluate(frame);
            ++frames;
            if(frame.valid)++valid_frames;
            std::unordered_map<uint32_t,std::string> identity_by_address;
            for(const auto& entity:frame.entities)if(entity.enemy()&&entity.alive()) {
                const auto key=std::to_string(entity.type)+"."+std::to_string(entity.variant)+"."+std::to_string(entity.subtype);
                ++identities[key];
                identity_by_address[entity.address]=key;
            }
            for(const auto& model:mechanisms.geometry_models) {
                if(!model.source)continue;
                ++attached[model.id];
                ++attached_kinds[model.kind];
                ++attached_total;
            }
            for(const auto& warning:mechanisms.warnings)++warning_rules[warning.rule_id];
            if(frame.valid&&frame.has_player) {
                planner.decide(frame,true,&mechanisms);
                for(const auto& threat:planner.threats()) {
                    ++threat_kinds[threat.kind];
                    ++threat_classes[damage_class_name(threat.damage_class)];
                    ++threat_total;
                    const auto source=identity_by_address.find(threat.source);
                    const auto identity=source!=identity_by_address.end()?source->second:std::string{"hazard-or-unknown"};
                    ++identity_classes[identity][damage_class_name(threat.damage_class)];
                }
                if(std::any_of(planner.threats().begin(),planner.threats().end(),[](const Threat&t){return t.predictive;}))
                    ++predictive_frames;
            }
        }
        if(!in.eof())throw std::runtime_error("Consumption read failed");
        const auto inventory=semantics.geometry_inventory();
        json models=json::array();json never=json::array();
        std::map<std::string,uint64_t> inventory_kinds;
        for(const auto& model:inventory) {
            ++inventory_kinds[model.kind];
            models.push_back({{"id",model.id},{"kind",model.kind},{"pattern",model.pattern},
                {"pattern_rule",model.pattern_rule},{"planning_validated",model.planning_validated},
                {"pre_spawn_verified",model.pre_spawn_verified},
                {"attached_frames",attached.count(model.id)?attached[model.id]:0}});
            if(!attached.count(model.id))never.push_back(model.id);
        }
        json report{{"frames",frames},{"valid_frames",valid_frames},{"source",argv[2]},
            {"input","frame log replayed in-process; semantics and planner recomputed"},
            {"inventory_total",inventory.size()},
            {"inventory_by_kind",inventory_kinds},
            {"attached_total",attached_total},
            {"attached_by_kind",attached_kinds},
            {"attached_ids",attached.size()},
            {"never_attached_ids",never},
            {"identities",identities},
            {"warning_rules",warning_rules},
            {"threat_total",threat_total},
            {"threat_kinds",threat_kinds},
            {"threat_classes",threat_classes},
            {"identity_classes",identity_classes},
            {"frames_with_predictive_threats",predictive_frames},
            {"models",models}};
        std::ofstream out{std::filesystem::path(argv[3])};if(!out)throw std::runtime_error("Cannot create consumption report");
        out<<report.dump(2)<<'\n';if(!out)throw std::runtime_error("Consumption report write failed");
        json summary{{"frames",frames},{"inventory",inventory.size()},{"attached_ids",attached.size()},
            {"never_attached",never.size()},{"attached_total",attached_total},{"threat_total",threat_total}};
        std::cout<<summary.dump(2)<<'\n';return 0;
    }
    if(mode==L"--audit"&&argc==4) {
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Report already exists");
        std::ifstream in{std::filesystem::path(argv[2])};if(!in)throw std::runtime_error("Cannot open audit input");
        PlannerConfig observed_config;observed_config.observed_emission_envelopes=true;
        std::array<Planner,2> planners{{Planner{},Planner(observed_config)}};
        const char* names[]={"default","observed_envelopes"};
        std::array<AuditTrack,2> tracks{};
        std::array<std::deque<AuditSnapshot>,2> history;
        json events=json::array();
        std::string line;uint64_t frames=0;int previous_health=-1;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)throw std::runtime_error("Audit line exceeds 8 MiB");
            auto record=json::parse(line);
            Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            auto mechanisms=semantics.evaluate(frame);
            const bool measurable=frame.valid&&frame.has_player;
            for(size_t index=0;index<planners.size();++index) {
                auto decision=planners[index].decide(frame,true,&mechanisms);
                if(!measurable)continue;
                AuditTrack& track=tracks[index];
                ++track.frames;
                const auto& threats=planners[index].threats();
                track.threat_total+=threats.size();
                if(!threats.empty())++track.threat_frames;
                if(std::any_of(threats.begin(),threats.end(),[](const Threat&t){return t.predictive;}))++track.predictive_frames;
                for(const auto& threat:threats)++track.coverage_kinds[threat.kind];
                history[index].push_back({frame.clock,frame.player.body.pos,
                    std::clamp(frame.player.body.radius,4.0,45.0),int(threats.size()),threats});
                while(history[index].size()>60)history[index].pop_front();
                (void)decision;
            }
            if(measurable&&previous_health>=0&&frame.player.health<previous_health&&!history[0].empty()) {
                json event{{"clock",frame.clock},{"health",frame.player.health},{"drop",previous_health-frame.player.health}};
                for(size_t index=0;index<planners.size();++index) {
                    AuditTrack& track=tracks[index];++track.damage;
                    bool any=false,hazard=false;double lead=0;std::set<std::string> kinds,classes;
                    // Look back up to 1.5 s for the earliest snapshot that
                    // already made a position unsafe before this drop.
                    for(auto it=history[index].rbegin();it!=history[index].rend();++it) {
                        if(it->clock>=frame.clock)continue;
                        bool snapshot_hazard=false;
                        if(covered_at(*it,it->pos,it->radius,kinds,classes,snapshot_hazard)) {
                            any=true;
                            if(snapshot_hazard) {
                                hazard=true;
                                lead=std::max(lead,double(frame.clock-it->clock)/30.0);
                            }
                        }
                        if(it->clock+45<frame.clock)break;
                    }
                    if(any)++track.covered_any;
                    if(hazard){++track.covered_hazard;track.lead_frames+=uint64_t(std::lround(lead*30));}
                    for(const auto& damage_class:classes)
                        if(damage_class!="contact")++track.covered_by_class[damage_class];
                    event[names[index]]={{"covered",any},{"hazard_covered",hazard},
                        {"lead_s",hazard?lead:-1},{"kinds",kinds},{"classes",classes}};
                }
                events.push_back(std::move(event));
            }
            if(measurable)previous_health=frame.player.health;
            ++frames;
        }
        if(!in.eof())throw std::runtime_error("Audit read failed");
        json variants=json::object();
        for(size_t index=0;index<planners.size();++index) {
            const auto& track=tracks[index];
            variants[names[index]]={
                {"frames",track.frames},
                {"damage_events",track.damage},
                {"covered_any",track.covered_any},
                {"coverage_any",track.damage?double(track.covered_any)/track.damage:0},
                {"covered_hazard",track.covered_hazard},
                {"coverage_hazard",track.damage?double(track.covered_hazard)/track.damage:0},
                {"mean_lead_s",track.covered_hazard?double(track.lead_frames)/track.covered_hazard/30.0:0},
                {"threats_per_frame",track.frames?double(track.threat_total)/track.frames:0},
                {"frames_with_threats",track.threat_frames},
                {"frames_with_predictive_threats",track.predictive_frames},
                {"threat_kinds",track.coverage_kinds},
                {"covered_by_class",track.covered_by_class}};
            if(index==1) {
                const auto& emission=planners[index].emission_diagnostics();
                variants[names[index]]["emission"]={
                    {"births",emission.births},{"unattributed",emission.unattributed},
                    {"samples",emission.samples},{"candidate_frames",emission.candidate_frames},
                    {"envelopes",emission.envelopes},{"no_samples",emission.no_samples},
                    {"spread_rejected",emission.spread_rejected},{"speed_rejected",emission.speed_rejected}};
            }
        }
        json report{{"frames",frames},
            {"semantics_loaded",semantics.loaded()},
            {"semantics_error",semantics.error()},
            {"source",argv[2]},
            {"note","Coverage measures recall only. A prediction that was successfully dodged is indistinguishable from a false positive without an independent collision oracle."},
            {"variants",variants},{"events",events}};
        std::ofstream out{std::filesystem::path(argv[3])};if(!out)throw std::runtime_error("Cannot create audit report");
        out<<report.dump(2)<<'\n';if(!out)throw std::runtime_error("Audit report write failed");
        std::cout<<variants.dump(2)<<'\n';return 0;
    }
    if((mode==L"--observe"||mode==L"--shadow")&&argc==4) {        double seconds=std::stod(argv[2]);if(!std::isfinite(seconds)||seconds<=0||seconds>900)throw std::runtime_error("Seconds must be in (0,900]");
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        auto processes=Reader::processes();if(processes.size()!=1)throw std::runtime_error("Expected exactly one running isaac-ng.exe; found "+std::to_string(processes.size()));
        auto reader=Reader::attach(processes.front());std::ofstream out{std::filesystem::path(argv[3])};if(!out)throw std::runtime_error("Cannot create capture output");
        double until=now_ms()+seconds*1000;uint64_t count=0,valid=0;
        while(now_ms()<until) {
            auto tick=std::chrono::steady_clock::now();auto frame=reader->capture(now_ms());valid+=frame.valid;++count;
            auto mechanisms=semantics.evaluate(frame);
            json record{{"frame",frame},{"mechanisms",mechanisms},{"mode",mode==L"--shadow"?"shadow":"observe"}};
            if(mode==L"--shadow")record["decision"]=planner.decide(frame,true,&mechanisms);
            if(compact_session_log())trim_session_record(record);
            out<<record.dump()<<'\n';if(!out)throw std::runtime_error("Capture log write failed");
            if(out.tellp()>512LL*1024*1024)break;
            std::this_thread::sleep_until(tick+std::chrono::milliseconds(33));
        }
        std::cout<<json{{"frames",count},{"valid",valid},{"keyboard_output",false},{"sha256",reader->layout().sha256},
            {"semantics_loaded",semantics.loaded()},{"semantics_path",semantics_path.string()},{"semantics_error",semantics.error()}}.dump(2)<<'\n';return valid?0:2;
    }
    throw std::runtime_error("Invalid arguments; use --help");
}
}
int wmain(int argc,wchar_t**argv) {
    try {
        wchar_t filename[32768];DWORD n=GetModuleFileNameW(nullptr,filename,32768);
        auto root=std::filesystem::path(std::wstring(filename,n)).parent_path();
        if(argc>1)return gamebot::cli_main(argc,argv,root);
        FreeConsole();
        return gamebot::gui_main(root);
    }catch(const std::exception&e){std::cerr<<e.what()<<'\n';return 1;}
}
