#include "gamebot/reader.hpp"
#include "gamebot/semantics.hpp"
#include "gamebot/planner.hpp"
#include "gamebot/closed_loop.hpp"
#include "gamebot/mpc.hpp"
#define NOMINMAX
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <iostream>
using namespace gamebot;
// The existing Reader and decoder run unchanged. Only the training address
// space is translated: guest x86 address -> live Wasm backing allocation.
class TrainingMemory final:public Memory {
    HANDLE handle_;uintptr_t base_;uint64_t length_;
public:
    mutable uint64_t calls{},bytes_read{};
    TrainingMemory(uint32_t pid,uintptr_t base,uint64_t length):base_(base),length_(length) {
        handle_=OpenProcess(PROCESS_VM_READ|PROCESS_QUERY_INFORMATION,FALSE,pid);
        if(!handle_)throw std::runtime_error("OpenProcess error "+std::to_string(GetLastError()));
    }
    ~TrainingMemory(){CloseHandle(handle_);}
    bool alive() const override {DWORD code{};return GetExitCodeProcess(handle_,&code)&&code==STILL_ACTIVE;}
    void copy(uint32_t address,void* out,size_t size)const override {
        if(address<0x10000||uint64_t(address)+size>length_||size>1048576)throw std::runtime_error("Invalid guest memory range");
        SIZE_T copied{};++calls;
        if(!ReadProcessMemory(handle_,reinterpret_cast<void*>(base_+address),out,size,&copied)||copied!=size)
            throw std::runtime_error("ReadProcessMemory error "+std::to_string(GetLastError()));
        bytes_read+=copied;
    }
};
int main(int argc,char** argv) {
    std::string line,cached_source;Layout cached_layout;
    MechanismSemantics semantics;semantics.load(argc>1?std::filesystem::path(argv[1]):MechanismSemantics::default_path(std::filesystem::current_path()));
    PlannerConfig config;config.dt=1.0/30;config.diagnostics=true;
    PlannerConfig baseline_config=config;
    baseline_config.native_player_motion=false;
    baseline_config.native_projectile_motion=false;
    baseline_config.native_laser_geometry=false;
    baseline_config.legacy_laser_width=true;
    Planner baseline(baseline_config),phase4(config),quick;
    PlannerConfig quick_diagnostic_config;quick_diagnostic_config.diagnostics=true;
    Planner quick_diagnostic(quick_diagnostic_config);
    config.evaluate_candidate_warnings=true;Planner candidate(config);
    // Production MPC expert. The offline logic clock is 30 Hz, so dt and the
    // 48-frame horizon describe the same 1.6 s horizon that the default 96
    // frame / 60 Hz configuration documents. Beam width, simulation cap and
    // every scoring parameter stay at their defaults. The wall-clock deadline
    // is disabled exactly like the offline strategy/validation evaluators
    // (cpp/src/benchmark.cpp, cpp/src/policy_validation.cpp): a time-budgeted
    // expert would truncate a different number of nodes on every run, so the
    // same seed could not regenerate the same dataset or be replayed.
    std::unique_ptr<RealtimeMpcController> mpc_controller;
    auto ensure_mpc=[&]() -> RealtimeMpcController& {
        if(!mpc_controller) {
            MpcConfig mpc_config;
            mpc_config.dt=1.0/30;
            mpc_config.horizon_frames=48;
            mpc_config.min_horizon_frames=24;
            mpc_config.time_budget_ms=0;
            mpc_config.max_total_ms=0;
            ClosedLoopConfig loop_config;
            loop_config.actual_hz=30;
            loop_config.dt=1.0/30;
            loop_config.dump_failures=false;
            mpc_controller=std::make_unique<RealtimeMpcController>(
                mpc_config,default_mpc_lookahead(),loop_config);
        }
        return *mpc_controller;
    };
    uint32_t cached_pid{};uintptr_t cached_base{};uint64_t cached_length{};
    std::shared_ptr<TrainingMemory> memory;std::unique_ptr<Reader> reader;
    while(std::getline(std::cin,line))try {
        auto q=json::parse(line);auto pid=q.at("pid").get<uint32_t>();
        auto base=std::stoull(q.at("host_base").get<std::string>(),nullptr,16);auto length=q.at("length").get<uint64_t>();
        auto source=q.at("source_exe").get<std::string>();
        if(source!=cached_source){cached_layout=Reader::inspect(source);cached_source=source;reader.reset();}
        auto layout=cached_layout;layout.base=0x400000;
        if(!reader||pid!=cached_pid||base!=cached_base||length!=cached_length) {
            memory=std::make_shared<TrainingMemory>(pid,base,length);
            reader=std::make_unique<Reader>(memory,layout,pid);
            cached_pid=pid;cached_base=base;cached_length=length;baseline.reset();phase4.reset();candidate.reset();quick.reset();quick_diagnostic.reset();
            if(mpc_controller)mpc_controller->reset();
        }
        memory->calls=0;memory->bytes_read=0;
        auto frame=reader->capture(0);
        if(q.value("policy",std::string{})=="quick") {
            if(!semantics.loaded())throw std::runtime_error("Runtime semantics failed to load: "+semantics.error());
            // Episode boundaries share one reader process. Clear any carried
            // planner state so a reset seed produces the same decisions as a
            // fresh process.
            if(q.value("reset",false)){quick.reset();quick_diagnostic.reset();baseline.reset();phase4.reset();candidate.reset();}
            auto mechanisms=semantics.evaluate(frame);
            auto& policy=q.value("diagnostics",false)?quick_diagnostic:quick;
            auto decision=policy.decide(frame,q.value("attack_enabled",true),&mechanisms);
            json enemies=json::array();int projectiles=0,lasers=0;
            for(const auto& e:frame.entities) {
                if(e.enemy())enemies.push_back(json{{"address",e.address},{"seed",e.seed},{"type",e.type},{"variant",e.variant},
                    {"subtype",e.subtype},{"hp",e.hp},{"max_hp",e.max_hp},{"dead",e.dead},{"active",e.active},
                    {"exists",e.exists},{"invulnerable",e.invulnerable},{"state",e.state},{"pos",e.pos}});
                if(e.alive()){projectiles+=e.type==9;lasers+=e.type==7;}
            }
            json out={{"valid",frame.valid},{"error",frame.error},{"pid",frame.pid},{"clock",frame.clock},
                {"reader_pid",GetCurrentProcessId()},{"rpm_calls",memory->calls},{"room",frame.room},{"cleared",frame.cleared},
                {"width",frame.grid.width},{"height",frame.grid.height},{"shape",frame.grid.shape},
                {"player_address",frame.player.body.address},{"health",frame.player.health},{"decision",decision},
                {"player_pos",frame.player.body.pos},{"player_vel",frame.player.body.vel},
                {"enemies",enemies},{"projectiles",projectiles},{"lasers",lasers},
                {"semantics_loaded",mechanisms.loaded},{"geometry_models",mechanisms.geometry_models.size()}};
            if(q.value("diagnostics",false)) {
                out["frame_json"]=json(frame).dump();out["threats"]=json::array();
                out["native_bombs"]=json::array();
                for(const auto& e:frame.entities)if(e.type==4) {
                    json words=json::array();for(uint32_t i=0x400;i<0x460;i+=4)words.push_back(memory->read<uint32_t>(e.address+i));
                    out["native_bombs"].push_back(json{{"seed",e.seed},{"words_400_45c",words}});
                }
                for(const auto& t:policy.threats())out["threats"].push_back(json{{"source",t.source},{"type",t.type},{"variant",t.variant},
                    {"kind",t.kind},{"pos",t.pos},{"end",t.end},{"vel",t.vel},{"radius",t.radius},{"uncertainty",t.uncertainty},
                    {"start",t.start},{"until",t.until},{"shape",int(t.shape)},{"geometry_verified",t.geometry_verified}});
            }
            std::cout<<out.dump()<<std::endl;
            continue;
        }
        if(q.value("policy",std::string{})=="mpc") {
            if(!semantics.loaded())throw std::runtime_error("Runtime semantics failed to load: "+semantics.error());
            auto& controller=ensure_mpc();
            if(q.value("reset",false))controller.reset();
            auto mechanisms=semantics.evaluate(frame);
            auto step=controller.step(frame,q.value("attack_enabled",true),&mechanisms);
            json enemies=json::array();int projectiles=0,lasers=0;
            for(const auto& e:frame.entities) {
                if(e.enemy())enemies.push_back(json{{"address",e.address},{"seed",e.seed},{"type",e.type},{"variant",e.variant},
                    {"subtype",e.subtype},{"hp",e.hp},{"max_hp",e.max_hp},{"dead",e.dead},{"active",e.active},
                    {"exists",e.exists},{"invulnerable",e.invulnerable},{"state",e.state},{"pos",e.pos}});
                if(e.alive()){projectiles+=e.type==9;lasers+=e.type==7;}
            }
            json plan=step.plan.to_json();
            plan.erase("candidates");
            plan.erase("joint");
            if(plan.contains("sequence")&&plan["sequence"].is_object())plan["sequence"].erase("trajectory");
            json out={{"valid",frame.valid},{"error",frame.error},{"pid",frame.pid},{"clock",frame.clock},
                {"reader_pid",GetCurrentProcessId()},{"rpm_calls",memory->calls},{"room",frame.room},{"cleared",frame.cleared},
                {"width",frame.grid.width},{"height",frame.grid.height},{"shape",frame.grid.shape},
                {"player_address",frame.player.body.address},{"health",frame.player.health},{"decision",step.decision},
                {"player_pos",frame.player.body.pos},{"player_vel",frame.player.body.vel},
                {"enemies",enemies},{"projectiles",projectiles},{"lasers",lasers},
                {"semantics_loaded",mechanisms.loaded},{"geometry_models",mechanisms.geometry_models.size()},
                {"mpc",plan},{"closed_loop",{{"mpc_active",step.mpc_active},{"safety_stop",step.safety_stop},
                    {"stale",step.stale},{"fallback",step.fallback},
                    {"prediction_available",step.prediction_available},
                    {"timings",{{"bridge_ms",step.bridge_ms},{"monitor_ms",step.monitor_ms},
                        {"mpc_ms",step.mpc_ms},{"total_ms",step.total_ms}}},
                    {"progress",step.progress}}}};
            if(q.value("diagnostics",false))out["frame_json"]=json(frame).dump();
            std::cout<<out.dump()<<std::endl;
            continue;
        }
        json out=frame;out["reader_pid"]=GetCurrentProcessId();out["rpm_calls"]=memory->calls;out["rpm_bytes"]=memory->bytes_read;
        if(q.value("policy",std::string{})!="") {
            auto mechanisms=semantics.evaluate(frame);
            auto policy=q.value("policy",std::string{});
            auto& planner=policy=="baseline"?baseline:policy=="candidate"?candidate:phase4;
            auto decision=planner.decide(frame,true,policy=="baseline"?nullptr:&mechanisms);
            out["mechanisms"]=mechanisms;out["decision"]=decision;
            out["threats"]=json::array();
            for(const auto& t:planner.threats())out["threats"].push_back(json{
                {"source",t.source},{"initiator",t.initiator},{"seed",t.seed},{"type",t.type},{"variant",t.variant},{"subtype",t.subtype},
                {"shape",int(t.shape)},{"pos",t.pos},{"end",t.end},{"velocity",t.vel},{"radius",t.radius},{"geometry_margin",t.geometry_margin},{"uncertainty",t.uncertainty},
                {"start",t.start},{"until",t.until},{"start_frame",t.start_frame},{"end_frame",t.end_frame},
                {"kind",t.kind},{"predictive",t.predictive},{"confidence",t.confidence},{"timing_verified",t.timing_verified},
                {"geometry_verified",t.geometry_verified},{"evidence_status",t.evidence_status},{"data_source",t.data_source},
                {"end_condition",t.end_condition},{"motion_path",t.motion_path},{"geometry_path",t.geometry_path}});
        }
        // JSON numbers cannot preserve arbitrary uint64 in the JS comparator.
        for(size_t i=0;i<frame.entities.size();++i) {
            out["entities"][i]["flags"]=std::to_string(frame.entities[i].flags);
            out["entities"][i]["projectile_flags"]=std::to_string(frame.entities[i].projectile_flags);
            out["entities"][i]["delirium_cycle_id"]=std::to_string(frame.entities[i].delirium_cycle_id);
        }
        // Real invalid-range check, independent of entity liveness claims.
        try{memory->bytes(0,4);out["invalid_range_rejected"]=false;}catch(...){out["invalid_range_rejected"]=true;}
        std::cout<<out.dump()<<std::endl;
    }catch(const std::exception& e){std::cout<<json{{"error",e.what()},{"valid",false}}.dump()<<std::endl;}
}
