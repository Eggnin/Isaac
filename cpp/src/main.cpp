#include "gamebot/runtime.hpp"
#include "gamebot/reader.hpp"
#include "gamebot/planner.hpp"
#include "gamebot/benchmark.hpp"
#include "gamebot/semantics.hpp"
#include "gamebot/world_state.hpp"
#include "gamebot/forward_sim.hpp"
#include "gamebot/mpc.hpp"
#include "gamebot/closed_loop.hpp"
#include "gamebot/performance_monitor.hpp"
#include "gamebot/session_review.hpp"
#include "gamebot/discovery.hpp"
#include "gamebot/strategy.hpp"
#include "gamebot/temporal_reachability.hpp"
#include "gamebot/policy_validation.hpp"
#include "gamebot/movement_intent.hpp"
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
std::vector<Vec> sampled_path(const std::vector<Vec>& path,size_t limit=10) {
    if(path.size()<=limit)return path;
    std::vector<Vec> out;out.reserve(limit);
    for(size_t i=0;i<limit;++i)out.push_back(path[i*(path.size()-1)/(limit-1)]);
    return out;
}
json threat_json(const Threat& threat) {
    return {{"kind",threat.kind},{"source",threat.source},{"class",damage_class_name(threat.damage_class)},
        {"start",threat.start},{"until",threat.until},{"radius",threat.radius},
        {"pos",threat.pos},{"end",threat.end},{"damage",threat.damage},
        {"predictive",threat.predictive},{"virtual",threat.virtual_threat},
        {"unknown",threat.unknown_threat},{"risk_weight",threat.risk_weight},
        {"confidence",threat.confidence},{"forecast_id",threat.forecast_id},
        {"evidence",threat.evidence_status},{"data_source",threat.data_source}};
}
json joint_plan_json(const JointPlan& plan) {
    json previews=json::array();
    for(const auto& preview:plan.previews) {
        previews.push_back({{"move",preview.move},{"path",sampled_path(preview.path)},
            {"predicted_damage",preview.predicted_damage},{"predicted_attack",preview.predicted_attack},
            {"predicted_exposure",preview.predicted_exposure},{"predicted_shots",preview.predicted_shots},
            {"virtual_threats",preview.virtual_threats},{"forecasts",preview.forecasts},
            {"baseline_hits",preview.baseline_hits},{"baseline_exposure",preview.baseline_exposure},
            {"baseline_safe",preview.baseline_safe}});
    }
    json intents=json::array();
    for(const auto& intent:plan.intents)intents.push_back(intent_json(intent));
    json forecasts=json::array();
    for(const auto& forecast:plan.selected_forecasts)forecasts.push_back(forecast_json(forecast));
    json virtuals=json::array();
    for(const auto& threat:plan.selected_virtual_threats)virtuals.push_back(threat_json(threat));
    json moves=json::array();for(Move move:plan.move_sequence)moves.push_back(move);
    json fires=json::array();for(Fire fire:plan.fire_sequence)fires.push_back(fire);
    return {{"decision",plan.decision},{"baseline",plan.baseline},
        {"predicted_damage",plan.predicted_damage},{"predicted_attack",plan.predicted_attack},
        {"predicted_exposure",plan.predicted_exposure},{"predicted_shots",plan.predicted_shots},
        {"move_overridden",plan.move_overridden},{"fire_overridden",plan.fire_overridden},
        {"baseline_planning_ms",plan.baseline_planning_ms},{"planning_ms",plan.planning_ms},
        {"real_threats",plan.real_threats},{"virtual_threats",plan.virtual_threats},
        {"unknown_tracking_threats",plan.unknown_tracking_threats},
        {"unknown_attack_intents",plan.unknown_attack_intents},
        {"unknown_emergency",plan.unknown_emergency},
        {"unknown_emergency_reason",plan.unknown_emergency_reason},
        {"unknown",unknown_assessment_json(plan.unknown)},
        {"intent_coverage",coverage_json(plan.intent_coverage)},
        {"intents",intents},{"selected_forecasts",forecasts},
        {"selected_virtual_threats",virtuals},
        {"move_sequence",moves},{"fire_sequence",fires},{"previews",previews},{"reason",plan.reason},
        {"simulated",plan.simulated},{"simulation_override",plan.simulation_override},
        {"simulation_score",plan.simulation_score.to_json()},
        {"simulation",plan.simulation.to_json()}};
}
// A damage event is covered when a previous prediction already makes the
// player's position unsafe. Contact is reported separately because a nearby
// enemy body always covers its own position; mixing them would hide whether a
// projectile, laser, jump, charge or explosion was predicted. This measures
// recall only: a dodged prediction cannot be separated from a false positive
// without an independent collision oracle.
bool strategy_env_enabled() {
    const char* value=std::getenv("GAMEBOT_STRATEGY");
    return value&&(std::string(value)=="1"||std::string(value)=="on"||
        std::string(value)=="true");
}
bool enable_strategy_from_environment(MpcCombatPlanner& planner,
                                      const std::filesystem::path& root) {
    if(!strategy_env_enabled())return false;
    const auto directory=root.parent_path()/"data"/"strategies";
    planner.set_strategy_enabled(true);
    if(auto library=StrategyLibrary::load(directory/"current.json"))
        planner.set_strategy_profiles(library->profiles);
    return true;
}
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
TemporalReachabilityConfig temporal_config(int horizon=60,int step=6,
    int cap=16,int layers=0) {
    TemporalReachabilityConfig config;
    config.horizon_frames=std::max(1,horizon);
    config.step_frames=std::max(1,step);
    config.max_layers=layers>0?layers:std::max(1,
        (config.horizon_frames+config.step_frames-1)/config.step_frames);
    config.max_states_per_layer=std::max(1,cap);
    config.max_total_states=std::max(256,
        config.max_states_per_layer*config.max_layers*2);
    config.max_seconds=2.0;
    config.max_memory_bytes=64u*1024u*1024u;
    config.max_representative_paths=4;
    config.open_neighbors=5;
    config.danger.slice_frames=6;
    config.danger.max_slices=std::max(16,
        (config.horizon_frames+config.danger.slice_frames-1)/
        config.danger.slice_frames+2);
    return config;
}
bool restore_temporal_root(const WorldStateSnapshot& snapshot,
    const TemporalReachabilityConfig& config,ForwardSimulator& root,
    std::string& error) {
    ForwardSimConfig sim;
    sim.horizon_frames=std::max(1,config.horizon_frames);
    sim.early_terminate=false;
    sim.danger_map=false;
    root=ForwardSimulator(sim);
    return root.restore(snapshot,&error);
}
json temporal_summary(const TemporalReachabilityResult& result) {
    return {{"valid",result.valid},{"reason",result.reason},
        {"elapsed_ms",result.elapsed_ms},
        {"layers_completed",result.layers_completed},
        {"total_states",result.total_states},
        {"expanded_states",result.expanded_states},
        {"pruned_states",result.pruned_states},
        {"merged_states",result.merged_states},
        {"duplicate_world_candidates",result.duplicate_world_candidates},
        {"merged_same_world_same_route",result.merged_same_world_same_route},
        {"kept_same_world_distinct_route",result.kept_same_world_distinct_route},
        {"shared_world_signature_groups",result.shared_world_signature_groups},
        {"distinct_world_same_cell",result.distinct_world_same_cell},
        {"physical_reachable_cells",result.physical_reachable_cells},
        {"safe_reachable_cells",result.safe_reachable_cells},
        {"physically_reachable_unsafe_cells",
            result.physically_reachable_unsafe_cells},
        {"physical_unreached_cells",result.physical_unreached_cells},
        {"temporal_only_cells",result.temporal_only_cells},
        {"pruned_danger",result.pruned_danger},
        {"pruned_danger_enemy",result.pruned_danger_enemy},
        {"pruned_danger_projectile",result.pruned_danger_projectile},
        {"pruned_danger_hazard",result.pruned_danger_hazard},
        {"estimated_memory_bytes",result.estimated_memory_bytes}};
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
        std::cout<<"Isaac Gamebot C++ "<<gamebot_version<<"\n--version\n--inspect <isaac-ng.exe>\n--observe <seconds> <output.jsonl>\n--shadow <seconds> <output.jsonl>\n--replay <input.jsonl> <output.jsonl>\n--joint <input.jsonl> <output.jsonl>\n--mpc <input.jsonl> <output.jsonl>\n--mpc-loop <input.jsonl> <output.jsonl>\n--mpc-review <input.jsonl> <output.json>\n--mpc-compare <a.json> <b.json>\n--temporal-reachability <input.jsonl> <output.jsonl> [horizon] [step] [cap] [layers]\n--mpc-temporal <input.jsonl> <output.jsonl> [horizon] [step] [cap] [layers]\n--policy-validation <output.json> [seeds] [max_steps] [step_frames] [scenario_limit]\n--movement-audit <input.jsonl> <output.jsonl>\n--discover <log-or-dir> <output.json> [library_dir]\n--mechanism-rollback <library_dir> <version>\n--mechanism-compare <a.json> <b.json>\n--mechanism-projectile <projectile_motion_models.json> <library_dir>\n--mechanism-projectile-index <library_dir>\n--snapshot <input.jsonl> <output.json>\n--simulate <input.jsonl> <output.json>\n--sim-backend <output.json>\n--compare <report.json>\n--mpc-pressure <report.json> [seconds] [scenario_limit]\n--audit <input.jsonl> <report.json>\n--consumption <input.jsonl> <report.json>\n--strategy-classify <input.jsonl> <output.json>\n--strategy-corpus <input.jsonl-or-dir> <corpus.json>\n--strategy-optimize <corpus.json> <output.json> [memory_dir]\n--strategy-list <library_dir>\n--strategy-rollback <library_dir> <version>\n--strategy-compare <a.json> <b.json> | <library_dir> <v1> <v2>\nNo keyboard output in any CLI mode.\n";return 0;
    }
    if(mode==L"--inspect"&&argc==3) {
        auto layout=Reader::inspect(argv[2]);std::cout<<json{{"supported",true},{"sha256",layout.sha256},{"game_slot_rva",layout.game_slot},{"manager_slot_rva",layout.manager_slot}}.dump(2)<<'\n';return 0;
    }
    Planner planner;MechanismSemantics semantics;auto semantics_path=MechanismSemantics::default_path(root);
    semantics.load(semantics_path);
    if(const char* discovered=std::getenv("GAMEBOT_DISCOVERED_PATTERNS"))
        if(*discovered)semantics.load_discovered_patterns(discovered,true);
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
    if(mode==L"--joint"&&argc==4) {
        if(std::filesystem::absolute(argv[2]).lexically_normal()==std::filesystem::absolute(argv[3]).lexically_normal())throw std::runtime_error("Input and output must differ");
        std::ifstream in{std::filesystem::path(argv[2])};if(!in)throw std::runtime_error("Cannot open joint input");
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        std::ofstream out{std::filesystem::path(argv[3])};if(!out)throw std::runtime_error("Cannot create joint output");
        TopKJointPlanner planner;
        std::string line;uint64_t count=0;double total_ms=0;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)throw std::runtime_error("Joint line exceeds 8 MiB");
            auto record=json::parse(line);Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            auto mechanisms=semantics.evaluate(frame);auto plan=planner.decide(frame,true,&mechanisms);
            total_ms+=plan.planning_ms;
            out<<json{{"clock",frame.clock},{"joint",joint_plan_json(plan)},{"mode","joint"}}.dump()<<'\n';++count;
        }
        if(!in.eof()||!out)throw std::runtime_error("Joint I/O failed");
        std::cout<<json{{"frames",count},{"mean_planning_ms",count?total_ms/count:0},
            {"keyboard_output",false},{"semantics_loaded",semantics.loaded()}}.dump(2)<<'\n';return count?0:2;
    }
    if(mode==L"--mpc"&&argc==4) {
        if(std::filesystem::absolute(argv[2]).lexically_normal()==std::filesystem::absolute(argv[3]).lexically_normal())throw std::runtime_error("Input and output must differ");
        std::ifstream in{std::filesystem::path(argv[2])};if(!in)throw std::runtime_error("Cannot open MPC input");
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        std::ofstream out{std::filesystem::path(argv[3])};if(!out)throw std::runtime_error("Cannot create MPC output");
        MpcCombatPlanner planner;
        const bool strategy_enabled=enable_strategy_from_environment(planner,root);
        std::string line;uint64_t count=0,overrides=0,fallbacks=0,reused=0,timed_out=0,simulation_limits=0;
        double total_ms=0,search_ms=0;uint64_t nodes=0,depth=0;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)throw std::runtime_error("MPC line exceeds 8 MiB");
            auto record=json::parse(line);Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            auto mechanisms=semantics.evaluate(frame);auto plan=planner.decide(frame,true,&mechanisms);
            total_ms+=plan.decision.planning_ms;
            search_ms+=plan.stats.elapsed_ms;nodes+=uint64_t(plan.stats.nodes);
            depth+=uint64_t(plan.stats.depth);
            if(plan.overridden)++overrides;
            if(plan.used_fallback)++fallbacks;
            if(plan.reused)++reused;
            if(plan.timed_out)++timed_out;
            if(plan.stats.simulation_limit)++simulation_limits;
            out<<json{{"clock",frame.clock},{"mpc",plan.to_json()},{"mode","mpc"}}.dump()<<'\n';
            ++count;
        }
        if(!in.eof()||!out)throw std::runtime_error("MPC I/O failed");
        std::cout<<json{{"frames",count},
            {"mean_planning_ms",count?total_ms/count:0},
            {"mean_mpc_search_ms",count?search_ms/count:0},
            {"mean_nodes",count?double(nodes)/count:0},
            {"mean_depth",count?double(depth)/count:0},
            {"overrides",overrides},{"fallbacks",fallbacks},{"reused",reused},
            {"timed_out",timed_out},{"simulation_limits",simulation_limits},
            {"keyboard_output",false},{"strategy_enabled",strategy_enabled},
            {"semantics_loaded",semantics.loaded()}}.dump(2)<<'\n';
        return count?0:2;
    }
    if(mode==L"--mpc-loop"&&argc==4) {
        if(std::filesystem::absolute(argv[2]).lexically_normal()==std::filesystem::absolute(argv[3]).lexically_normal())throw std::runtime_error("Input and output must differ");
        std::ifstream in{std::filesystem::path(argv[2])};if(!in)throw std::runtime_error("Cannot open MPC loop input");
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        std::ofstream out{std::filesystem::path(argv[3])};if(!out)throw std::runtime_error("Cannot create MPC loop output");
        ClosedLoopConfig loop_config;loop_config.dump_failures=false;
        RealtimeMpcController controller(MpcConfig{},default_mpc_lookahead(),loop_config);
        const bool strategy_enabled=enable_strategy_from_environment(controller.mpc(),root);
        RuntimePerformanceMonitor performance;
        std::string line;uint64_t count=0,high_errors=0,fallbacks=0,stale=0,safety_stops=0;
        double total_ms=0,search_ms=0,monitor_ms=0;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)throw std::runtime_error("MPC loop line exceeds 8 MiB");
            auto record=json::parse(line);Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            auto mechanisms=semantics.evaluate(frame);auto step=controller.step(frame,true,&mechanisms);
            total_ms+=step.total_ms;search_ms+=step.mpc_ms;monitor_ms+=step.monitor_ms;
            if(step.report.high_error)++high_errors;
            if(step.plan.used_fallback)++fallbacks;
            if(step.stale)++stale;
            if(step.safety_stop)++safety_stops;
            FramePerformance sample;sample.reader_ms=0;sample.bridge_ms=step.bridge_ms;
            sample.monitor_ms=step.monitor_ms;sample.mpc_ms=step.mpc_ms;
            sample.action_ms=0;sample.total_ms=step.total_ms;
            sample.timed_out=step.plan.timed_out;sample.fallback=step.plan.used_fallback;
            sample.safety_stop=step.safety_stop;performance.observe(sample);
            out<<json{{"clock",frame.clock},{"mpc",step.plan.to_json()},
                {"closed_loop",{{"safety_stop",step.safety_stop},{"stale",step.stale},
                    {"fallback",step.plan.used_fallback},
                    {"prediction",step.report.to_json()},
                    {"feedback",step.feedback.to_json()},
                    {"progress",step.progress},
                    {"timings",{{"bridge_ms",step.bridge_ms},
                        {"monitor_ms",step.monitor_ms},{"mpc_ms",step.mpc_ms},
                        {"total_ms",step.total_ms}}},
                    {"predicted_future",controller.monitor().trace().to_json(false)}}},
                {"mode","mpc-loop"}}.dump()<<'\n';
            ++count;
        }
        if(!in.eof()||!out)throw std::runtime_error("MPC loop I/O failed");
        std::cout<<json{{"frames",count},{"mean_total_ms",count?total_ms/count:0},
            {"mean_mpc_ms",count?search_ms/count:0},
            {"mean_monitor_ms",count?monitor_ms/count:0},
            {"high_errors",high_errors},{"fallbacks",fallbacks},{"stale",stale},
            {"safety_stops",safety_stops},{"performance",performance.summary().to_json()},
            {"keyboard_output",false},{"strategy_enabled",strategy_enabled},
            {"semantics_loaded",semantics.loaded()}}.dump(2)<<'\n';
        return count?0:2;
    }
    if(mode==L"--mpc-review"&&argc==4) {
        if(std::filesystem::absolute(argv[2]).lexically_normal()==std::filesystem::absolute(argv[3]).lexically_normal())throw std::runtime_error("Input and output must differ");
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        std::string error;
        const auto report=analyze_mpc_session(argv[2],SessionReviewConfig{},&error);
        if(!error.empty())throw std::runtime_error(error);
        std::ofstream out{std::filesystem::path(argv[3])};
        if(!out)throw std::runtime_error("Cannot create MPC review output");
        out<<json{{"source",argv[2]},{"review",report.to_json()},
            {"keyboard_output",false}}.dump(2)<<'\n';
        std::cout<<json{{"frames",report.frames},{"valid_frames",report.valid_frames},
            {"direction_switches",report.direction_switches},
            {"reversals",report.reversals},
            {"boundary_frame_rate",report.boundary_frame_rate},
            {"emergency_frames",report.emergency_frames},
            {"safety_failures",report.safety_failures},
            {"keyboard_output",false}}.dump(2)<<'\n';
        return report.frames?0:2;
    }
    if(mode==L"--mpc-compare"&&argc==4) {
        if(std::filesystem::absolute(argv[2]).lexically_normal()==std::filesystem::absolute(argv[3]).lexically_normal())throw std::runtime_error("Sequence inputs must differ");
        std::string error;
        auto a=MpcSequence::load(argv[2],&error);
        if(!a)throw std::runtime_error("Cannot load first sequence: "+error);
        auto b=MpcSequence::load(argv[3],&error);
        if(!b)throw std::runtime_error("Cannot load second sequence: "+error);
        auto comparison=compare_mpc_sequences(*a,*b);
        json payload{{"first",argv[2]},{"second",argv[3]},
            {"comparison",comparison.to_json()},
            {"a",a->to_json()},{"b",b->to_json()}};
        std::cout<<payload.dump(2)<<'\n';return 0;
    }
    if(mode==L"--temporal-reachability"&&argc>=4&&argc<=8) {
        if(std::filesystem::absolute(argv[2]).lexically_normal()==
           std::filesystem::absolute(argv[3]).lexically_normal())
            throw std::runtime_error("Input and output must differ");
        if(std::filesystem::exists(argv[3]))
            throw std::runtime_error("Output already exists");
        std::ifstream in{std::filesystem::path(argv[2])};
        if(!in)throw std::runtime_error("Cannot open temporal input");
        std::ofstream out{std::filesystem::path(argv[3])};
        if(!out)throw std::runtime_error("Cannot create temporal output");
        const int horizon=argc>4?std::stoi(argv[4]):60;
        const int step=argc>5?std::stoi(argv[5]):6;
        const int cap=argc>6?std::stoi(argv[6]):16;
        const int layers=argc>7?std::stoi(argv[7]):0;
        const auto config=temporal_config(horizon,step,cap,layers);
        std::string line;uint64_t count=0,valid=0,root_failures=0;
        double total_ms=0,max_ms=0;size_t max_bytes=0;
        uint64_t physical_cells=0,safe_cells=0,unsafe_cells=0,pruned=0;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)
                throw std::runtime_error("Temporal line exceeds 8 MiB");
            auto record=json::parse(line);
            Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            auto mechanisms=semantics.evaluate(frame);
            const auto snapshot=WorldStateBridge::snapshot(frame,&mechanisms,nullptr);
            ForwardSimulator root;
            std::string error;
            if(!restore_temporal_root(snapshot,config,root,error)) {
                ++root_failures;
                out<<json{{"clock",frame.clock},{"error",error},
                    {"mode","temporal-reachability"}}.dump()<<'\n';
                ++count;
                continue;
            }
            const auto result=search_temporal_reachability(root,config);
            total_ms+=result.elapsed_ms;
            max_ms=std::max(max_ms,result.elapsed_ms);
            max_bytes=std::max(max_bytes,result.estimated_memory_bytes);
            if(result.valid)++valid;
            physical_cells+=uint64_t(result.physical_reachable_cells);
            safe_cells+=uint64_t(result.safe_reachable_cells);
            unsafe_cells+=uint64_t(result.physically_reachable_unsafe_cells);
            pruned+=uint64_t(result.pruned_states);
            out<<json{{"clock",frame.clock},{"temporal",result.to_json()},
                {"mode","temporal-reachability"}}.dump()<<'\n';
            ++count;
        }
        if(!in.eof()||!out)throw std::runtime_error("Temporal I/O failed");
        std::cout<<json{{"frames",count},{"valid",valid},
            {"root_failures",root_failures},
            {"mean_elapsed_ms",count?total_ms/double(count):0},
            {"max_elapsed_ms",max_ms},{"max_memory_bytes",max_bytes},
            {"physical_reachable_cells",physical_cells},
            {"safe_reachable_cells",safe_cells},
            {"physically_reachable_unsafe_cells",unsafe_cells},
            {"pruned_states",pruned},{"keyboard_output",false}}.dump(2)<<'\n';
        return count?0:2;
    }
    if(mode==L"--mpc-temporal"&&argc>=4&&argc<=8) {
        if(std::filesystem::absolute(argv[2]).lexically_normal()==
           std::filesystem::absolute(argv[3]).lexically_normal())
            throw std::runtime_error("Input and output must differ");
        if(std::filesystem::exists(argv[3]))
            throw std::runtime_error("Output already exists");
        std::ifstream in{std::filesystem::path(argv[2])};
        if(!in)throw std::runtime_error("Cannot open MPC temporal input");
        std::ofstream out{std::filesystem::path(argv[3])};
        if(!out)throw std::runtime_error("Cannot create MPC temporal output");
        const int horizon=argc>4?std::stoi(argv[4]):60;
        const int step=argc>5?std::stoi(argv[5]):6;
        const int cap=argc>6?std::stoi(argv[6]):16;
        const int layers=argc>7?std::stoi(argv[7]):0;
        auto config=temporal_config(horizon,step,cap,layers);
        MpcCombatPlanner planner;
        const bool strategy_enabled=enable_strategy_from_environment(planner,root);
        TemporalRouteComparisonConfig comparison_config;
        comparison_config.danger=config.danger;
        std::string line;uint64_t count=0,valid=0,root_failures=0;
        uint64_t mpc_danger_frames=0,temporal_danger_frames=0;
        double mpc_damage=0,temporal_damage=0;
        uint64_t mpc_repeats=0,temporal_repeats=0;
        uint64_t escape_found=0,escape_outside=0,temporal_invalid=0;
        uint64_t physical_unsafe=0,safe_cells=0,pruned=0;
        uint64_t mpc_safe_frames=0,temporal_safe_frames=0,collision_mismatches=0;
        double total_search_ms=0,max_search_ms=0;
        size_t max_bytes=0;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)
                throw std::runtime_error("MPC temporal line exceeds 8 MiB");
            auto record=json::parse(line);
            Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            auto mechanisms=semantics.evaluate(frame);
            const auto plan=planner.decide(frame,true,&mechanisms);
            WorldStateSnapshot snapshot;
            if(plan.joint.snapshot_valid)snapshot=plan.joint.snapshot;
            else snapshot=WorldStateBridge::snapshot(frame,&mechanisms,nullptr);
            ForwardSimulator root_sim;
            std::string error;
            if(!restore_temporal_root(snapshot,config,root_sim,error)) {
                ++root_failures;
                out<<json{{"clock",frame.clock},{"error",error},
                    {"mode","mpc-temporal"}}.dump()<<'\n';
                ++count;
                continue;
            }
            const auto reachability=search_temporal_reachability(root_sim,config);
            total_search_ms+=reachability.elapsed_ms;
            max_search_ms=std::max(max_search_ms,reachability.elapsed_ms);
            max_bytes=std::max(max_bytes,reachability.estimated_memory_bytes);
            if(reachability.valid)++valid;
            physical_unsafe+=uint64_t(reachability.physically_reachable_unsafe_cells);
            safe_cells+=uint64_t(reachability.safe_reachable_cells);
            pruned+=uint64_t(reachability.pruned_states);
            const auto escape=select_temporal_route(reachability,
                TemporalRoutePolicy::escape);
            const auto safest=select_temporal_route(reachability,
                TemporalRoutePolicy::safest);
            TemporalRouteComparison comparison;
            if(escape.found) {
                ++escape_found;
                comparison=compare_temporal_routes(root_sim,
                    plan.sequence.segments,escape.plan,&reachability,
                    comparison_config,&escape);
                if(comparison.temporal_available) {
                    mpc_danger_frames+=uint64_t(
                        comparison.mpc.temporal.temporal_danger_frames);
                    temporal_danger_frames+=uint64_t(
                        comparison.temporal.temporal.temporal_danger_frames);
                    mpc_damage+=std::max(0.0,
                        comparison.mpc.trajectory.damage_taken);
                    temporal_damage+=std::max(0.0,
                        comparison.temporal.trajectory.damage_taken);
                    mpc_repeats+=uint64_t(
                        comparison.mpc.trajectory.repeat_visit_count);
                    temporal_repeats+=uint64_t(
                        comparison.temporal.trajectory.repeat_visit_count);
                    if(comparison.escape_outside_mpc)++escape_outside;
                    if(!comparison.mpc.temporal.temporal_danger_frames&&
                       comparison.mpc.valid)++mpc_safe_frames;
                    if(comparison.temporal_safe)++temporal_safe_frames;
                    if(comparison.valid&&comparison.temporal_available&&
                       (!comparison.mpc.collision_consistent||
                        !comparison.temporal.collision_consistent))
                        ++collision_mismatches;
                }else ++temporal_invalid;
            }else ++temporal_invalid;
            json safest_eval=json::object();
            if(safest.found) {
                TemporalRouteEvaluationConfig evaluation;
                evaluation.danger=config.danger;
                safest_eval=evaluate_temporal_route(root_sim,safest.plan,
                    evaluation).to_json();
            }
            out<<json{{"clock",frame.clock},
                {"mpc",{{"available",plan.available},
                    {"fallback",plan.used_fallback},
                    {"reason",plan.reason},
                    {"first",{{"move",int(plan.first.move)},
                        {"fire",int(plan.first.fire)},{"shoot",plan.first.shoot}}},
                    {"decision",plan.decision},
                    {"stats",plan.stats.to_json()},
                    {"sequence",plan.sequence.to_json()}}},
                {"reachability",temporal_summary(reachability)},
                {"escape",comparison.to_json()},
                {"safest",safest.to_json()},
                {"safest_eval",safest_eval},
                {"mode","mpc-temporal"}}.dump()<<'\n';
            ++count;
        }
        if(!in.eof()||!out)throw std::runtime_error("MPC temporal I/O failed");
        std::cout<<json{{"frames",count},{"valid_reachability",valid},
            {"root_failures",root_failures},
            {"escape_found",escape_found},
            {"escape_outside_mpc",escape_outside},
            {"temporal_invalid",temporal_invalid},
            {"mpc_danger_frames",mpc_danger_frames},
            {"temporal_danger_frames",temporal_danger_frames},
            {"mpc_no_danger_frames",mpc_safe_frames},
            {"temporal_safe_frames",temporal_safe_frames},
            {"collision_mismatches",collision_mismatches},
            {"mpc_damage",mpc_damage},{"temporal_damage",temporal_damage},
            {"mpc_repeat_visits",mpc_repeats},
            {"temporal_repeat_visits",temporal_repeats},
            {"physical_unsafe_cells",physical_unsafe},
            {"safe_cells",safe_cells},{"pruned_states",pruned},
            {"mean_search_ms",count?total_search_ms/double(count):0},
            {"max_search_ms",max_search_ms},{"max_memory_bytes",max_bytes},
            {"keyboard_output",false},{"strategy_enabled",strategy_enabled},
            {"semantics_loaded",semantics.loaded()}}.dump(2)<<'\n';
        return count?0:2;
    }
    if(mode==L"--policy-validation"&&argc>=3&&argc<=7) {
        if(std::filesystem::exists(argv[2]))
            throw std::runtime_error("Output already exists");
        PolicyValidationConfig config;
        config.seeds=argc>3?std::stoi(argv[3]):3;
        config.max_steps=argc>4?std::stoi(argv[4]):80;
        config.step_frames=argc>5?std::stoi(argv[5]):6;
        config.scenario_limit=argc>6?std::stoi(argv[6]):0;
        const auto report=run_counterfactual_policy_validation(config);
        std::ofstream out{std::filesystem::path(argv[2])};
        if(!out)throw std::runtime_error("Cannot create policy validation output");
        out<<report.to_json().dump(2)<<'\n';
        if(!out)throw std::runtime_error("Policy validation output failed");
        std::cout<<json{{"valid",report.valid},
            {"scenarios",report.scenario_count},{"seeds",report.seed_count},
            {"runs",report.runs},{"elapsed_ms",report.elapsed_ms},
            {"aggregates",report.to_json().at("aggregates")},
            {"keyboard_output",false}}.dump(2)<<'\n';
        return report.valid?0:2;
    }
    if(mode==L"--movement-audit"&&argc==4) {
        if(std::filesystem::absolute(argv[2]).lexically_normal()==
           std::filesystem::absolute(argv[3]).lexically_normal())
            throw std::runtime_error("Input and output must differ");
        if(std::filesystem::exists(argv[3]))
            throw std::runtime_error("Output already exists");
        std::ifstream in{std::filesystem::path(argv[2])};
        if(!in)throw std::runtime_error("Cannot open movement audit input");
        std::ofstream out{std::filesystem::path(argv[3])};
        if(!out)throw std::runtime_error("Cannot create movement audit output");
        MpcCombatPlanner planner;
        MovementIntentEvaluator evaluator;
        MovementStabilizer stabilizer;
        int previous_raw=-1,previous_executed=-1;
        uint64_t frames=0,raw_switches=0,executed_switches=0;
        uint64_t hold=0,reposition=0,preemptive=0,escape=0,suppressed=0;
        double total_movement_ms=0,max_movement_ms=0;
        std::string line;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)
                throw std::runtime_error("Movement audit line exceeds 8 MiB");
            auto record=json::parse(line);
            Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            auto mechanisms=semantics.evaluate(frame);
            const auto plan=planner.decide(frame,true,&mechanisms);
            WorldStateSnapshot snapshot;
            snapshot=WorldStateBridge::snapshot(frame,&mechanisms,nullptr);
            MovementIntentInput input;
            input.frame=&frame;
            input.decision=&plan.decision;
            input.plan=&plan;
            input.snapshot=&snapshot;
            const auto movement_started=std::chrono::steady_clock::now();
            auto evaluation=evaluator.evaluate(input);
            const auto raw=evaluation;
            evaluation=stabilizer.stabilize(frame,evaluation,
                evaluation.danger_now);
            const double movement_ms=std::chrono::duration<double,std::milli>(
                std::chrono::steady_clock::now()-movement_started).count();
            total_movement_ms+=movement_ms;
            max_movement_ms=std::max(max_movement_ms,movement_ms);
            const int raw_move=int(raw.requested_move);
            const int executed_move=int(evaluation.executed_move);
            const int mpc_move=int(plan.decision.move);
            const int prior_raw=previous_raw;
            if(previous_raw>0&&mpc_move>0&&mpc_move!=previous_raw)
                ++raw_switches;
            if(previous_executed>0&&executed_move>0&&
               executed_move!=previous_executed)
                ++executed_switches;
            previous_raw=mpc_move;previous_executed=executed_move;
            switch(raw.intent) {
            case MovementIntent::hold:++hold;break;
            case MovementIntent::reposition:++reposition;break;
            case MovementIntent::preemptive_dodge:++preemptive;break;
            case MovementIntent::escape:++escape;break;
            }
            if(evaluation.movement_suppressed)++suppressed;
            json candidates=json::array();
            double min_value=0,max_value=0;
            bool have_value=false;
            for(const auto& candidate:plan.candidates) {
                if(!have_value) {min_value=max_value=candidate.value;have_value=true;}
                min_value=std::min(min_value,candidate.value);
                max_value=std::max(max_value,candidate.value);
                candidates.push_back({{"move",int(candidate.action.move)},
                    {"fire",int(candidate.action.fire)},
                    {"source",candidate.source},
                    {"value",candidate.value},
                    {"gate_passed",candidate.gate_passed},
                    {"min_clearance",candidate.safety.min_clearance},
                    {"reachable_area",candidate.safety.reachable_area},
                    {"escape_directions",candidate.safety.escape_directions},
                    {"attack_reachability",candidate.branch.attack_reachability},
                    {"target_distance",candidate.branch.target_distance}});
            }
            out<<json{{"clock",frame.clock},
                {"raw_mpc_move",mpc_move},
                {"raw_intent",movement_intent_name(raw.intent)},
                {"requested_move",raw_move},{"executed_move",executed_move},
                {"movement_suppressed",evaluation.movement_suppressed},
                {"suppression_reason",evaluation.suppression_reason},
                {"direction_switch_count",evaluation.direction_switch_count},
                {"predicted_movement_benefit",
                    evaluation.predicted_movement_benefit},
                {"raw_direction_changed",prior_raw>=0&&
                    mpc_move!=prior_raw},
                {"value_spread",max_value-min_value},
                {"mpc_value",plan.value},{"baseline_value",plan.baseline_value},
                {"override_margin",planner.config().override_margin},
                {"overridden",plan.overridden},
                {"candidates",candidates},
                {"movement",evaluation.to_json()},
                {"mode","movement-audit"}}.dump()<<'\n';
            ++frames;
        }
        if(!in.eof()||!out)throw std::runtime_error("Movement audit I/O failed");
        std::cout<<json{{"frames",frames},
            {"raw_direction_switches",raw_switches},
            {"executed_direction_switches",executed_switches},
            {"hold_frames",hold},{"reposition_frames",reposition},
            {"preemptive_frames",preemptive},{"escape_frames",escape},
            {"suppressed_frames",suppressed},
            {"mean_movement_ms",frames?total_movement_ms/double(frames):0},
            {"max_movement_ms",max_movement_ms},
            {"keyboard_output",false}}.dump(2)<<'\n';
        return frames?0:2;
    }
    if(mode==L"--discover"&&(argc==4||argc==5)) {
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        DiscoveryConfig config;
        config.reference_directory=semantics_path.parent_path();
        config.library_directory=argc==5?std::filesystem::path(argv[4]):
            semantics_path.parent_path()/"discovered";
        config.write_library=true;
        DiscoveryPipeline pipeline(config);
        auto result=pipeline.run(std::filesystem::path(argv[2]));
        std::ofstream out{std::filesystem::path(argv[3])};
        if(!out)throw std::runtime_error("Cannot create discovery output");
        out<<result.to_json().dump(2)<<'\n';
        std::cout<<json{{"failure_findings",result.failure.findings.size()},
            {"behavior_profiles",result.behavior.profiles.size()},
            {"clusters",result.clustering.clusters},
            {"formulas",result.formulas.formulas},
            {"candidates",result.candidates.size()},
            {"library_updated",result.update.success},
            {"library_version",result.update.new_version},
            {"library_path",result.update.current_path}}.dump(2)<<'\n';
        return 0;
    }
    if(mode==L"--mechanism-rollback"&&argc==4) {
        const int version=std::stoi(argv[3]);
        MechanismLibraryUpdater updater({},std::filesystem::path(argv[2]));
        std::string error;
        auto library=updater.rollback(version,&error);
        if(!library)throw std::runtime_error("Rollback failed: "+error);
        std::cout<<json{{"rolled_back_to",library->version},
            {"current",(std::filesystem::path(argv[2])/"current.json").string()},
            {"candidates",library->candidates.size()}}.dump(2)<<'\n';
        return 0;
    }
    if(mode==L"--mechanism-compare"&&argc==4) {
        std::string error;
        auto before=MechanismLibrary::load(argv[2],&error);
        if(!before)throw std::runtime_error("Cannot load first library: "+error);
        auto after=MechanismLibrary::load(argv[3],&error);
        if(!after)throw std::runtime_error("Cannot load second library: "+error);
        std::cout<<json{{"before_version",before->version},
            {"after_version",after->version},
            {"diff",compare_mechanism_libraries(*before,*after).to_json()}}.dump(2)<<'\n';
        return 0;
    }
    if(mode==L"--mechanism-projectile"&&argc==4) {
        MechanismLibrary library;
        std::string error;
        const auto current=std::filesystem::path(argv[3])/"current.json";
        if(std::filesystem::exists(current)) {
            auto loaded=MechanismLibrary::load(current,&error);
            if(!loaded)throw std::runtime_error("Cannot load current library: "+error);
            library=*loaded;
        }
        MechanismLibraryUpdater updater({},std::filesystem::path(argv[3]));
        const auto result=updater.update_projectile_models(library,
            std::filesystem::path(argv[2]),"projectile motion model import");
        json index=json::object();
        if(result.success) {
            if(auto saved=MechanismLibrary::load(
                   std::filesystem::path(argv[3])/"current.json",&error))
                index=projectile_motion_model_index(*saved);
        }
        std::cout<<json{{"success",result.success},
            {"previous_version",result.previous_version},
            {"new_version",result.new_version},
            {"version_path",result.version_path},
            {"current_path",result.current_path},
            {"error",result.error},
            {"diff",result.diff.to_json()},
            {"index",index}}.dump(2)<<'\n';
        return result.success?0:2;
    }
    if(mode==L"--mechanism-projectile-index"&&argc==3) {
        std::string error;
        auto library=MechanismLibrary::load(
            std::filesystem::path(argv[2])/"current.json",&error);
        if(!library)throw std::runtime_error("Cannot load current library: "+error);
        std::cout<<projectile_motion_model_index(*library).dump(2)<<'\n';
        return 0;
    }
    if(mode==L"--snapshot"&&argc==4) {
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        std::ifstream in{std::filesystem::path(argv[2])};
        if(!in)throw std::runtime_error("Cannot open snapshot input");
        WorldStateBridge bridge;
        json snapshots=json::array();
        uint64_t count=0,total_exact=0,total_estimated=0,total_unknown=0;
        std::string line;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)throw std::runtime_error("Snapshot line exceeds 8 MiB");
            auto record=json::parse(line);
            Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            auto mechanisms=semantics.evaluate(frame);
            const auto snapshot=bridge.build(frame,&mechanisms,nullptr);
            total_exact+=snapshot.exact_fields;
            total_estimated+=snapshot.estimated_fields;
            total_unknown+=snapshot.unknown_fields;
            snapshots.push_back(snapshot.to_json());
            ++count;
        }
        if(!in.eof())throw std::runtime_error("Snapshot I/O failed");
        const auto capabilities=HybridSimulationBackend{}.capabilities();
        json payload{{"snapshots",count},{"exact_fields",total_exact},
            {"estimated_fields",total_estimated},{"unknown_fields",total_unknown},
            {"bridge",bridge.report().to_json()},{"hybrid_backend",capabilities.to_json()},
            {"wasm_backend",probe_wasm_backend(root).to_json()},{"frames",snapshots}};
        std::ofstream out{std::filesystem::path(argv[3])};
        if(!out)throw std::runtime_error("Cannot create snapshot output");
        out<<payload.dump(2)<<'\n';
        std::cout<<json{{"snapshots",count},{"exact_fields",total_exact},
            {"estimated_fields",total_estimated},{"unknown_fields",total_unknown}}.dump(2)<<'\n';
        return count?0:2;
    }
    if(mode==L"--simulate"&&argc==4) {
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        std::ifstream in{std::filesystem::path(argv[2])};
        if(!in)throw std::runtime_error("Cannot open simulation input");
        ForwardSimConfig sim_config;
        sim_config.max_branches=45;
        SimulationPlanner simulations(sim_config);
        WorldStateBridge bridge;
        json frames=json::array();
        std::string line;uint64_t count=0;double total_ms=0;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)throw std::runtime_error("Simulation line exceeds 8 MiB");
            auto record=json::parse(line);
            Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            auto mechanisms=semantics.evaluate(frame);
            const auto snapshot=bridge.build(frame,&mechanisms,nullptr);
            std::vector<SimAction> actions;
            for(int move=0;move<9;++move)for(int fire=0;fire<5;++fire)
                actions.push_back(SimAction{static_cast<Move>(move),static_cast<Fire>(fire),fire!=0});
            auto batch=simulations.evaluate_actions(snapshot,actions);
            total_ms+=batch.elapsed_ms;
            frames.push_back(json{{"clock",frame.clock},{"room",frame.room},
                {"exact_fields",snapshot.exact_fields},
                {"estimated_fields",snapshot.estimated_fields},
                {"unknown_fields",snapshot.unknown_fields},
                {"lifecycle",snapshot.lifecycle.size()},
                {"simulation",batch.to_json()}});
            ++count;
        }
        if(!in.eof())throw std::runtime_error("Simulation I/O failed");
        json payload{{"frames",count},{"mean_simulation_ms",count?total_ms/count:0},
            {"config",{{"horizon_frames",sim_config.horizon_frames},
                {"max_branches",sim_config.max_branches},
                {"max_projectiles",sim_config.max_projectiles},
                {"max_hazards",sim_config.max_hazards},
                {"early_terminate",sim_config.early_terminate}}},
            {"hybrid_backend",HybridSimulationBackend{}.capabilities().to_json()},
            {"wasm_backend",probe_wasm_backend(root).to_json()},
            {"evidence_scope","Offline simulation of the captured snapshot. It does not "
                "claim real-game no-damage and unknown mechanisms remain hypotheses."},
            {"results",frames}};
        std::ofstream out{std::filesystem::path(argv[3])};
        if(!out)throw std::runtime_error("Cannot create simulation output");
        out<<payload.dump(2)<<'\n';
        std::cout<<json{{"frames",count},{"mean_simulation_ms",count?total_ms/count:0}}.dump(2)<<'\n';
        return count?0:2;
    }
    if(mode==L"--sim-backend"&&argc==3) {
        if(std::filesystem::exists(argv[2]))throw std::runtime_error("Output already exists");
        json payload{{"wasm",probe_wasm_backend(root).to_json()},
            {"hybrid",HybridSimulationBackend{}.capabilities().to_json()}};
        std::ofstream out{std::filesystem::path(argv[2])};
        if(!out)throw std::runtime_error("Cannot create backend report");
        out<<payload.dump(2)<<'\n';
        std::cout<<payload.at("wasm").dump(2)<<'\n';
        return 0;
    }
    if(mode==L"--strategy-classify"&&argc==4) {
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        std::ifstream in{std::filesystem::path(argv[2])};
        if(!in)throw std::runtime_error("Cannot open classification input");
        CombatScenarioClassifier classifier;
        StrategyProfileRuntime runtime;
        UnknownThreatManager unknown_manager;
        WorldStateBridge bridge;
        std::map<std::string,uint64_t> tags,profiles,primary;
        json samples=json::array();
        uint64_t frames=0,valid=0,classified=0;
        std::string line;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)throw std::runtime_error("Classification line exceeds 8 MiB");
            auto record=json::parse(line);
            Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            ++frames;
            if(!frame.valid||!frame.has_player)continue;
            ++valid;
            MechanismFrame mechanisms;
            if(record.contains("mechanisms")) {
                try {mechanisms=record.at("mechanisms").get<MechanismFrame>();}
                catch(...) {mechanisms=MechanismFrame{};}
            }
            if(!mechanisms.valid)mechanisms=semantics.evaluate(frame);
            const MechanismFrame* mechanism_ptr=mechanisms.valid?&mechanisms:nullptr;
            const UnknownAssessment unknown=unknown_manager.assess(frame,mechanism_ptr);
            const auto snapshot=bridge.build(frame,mechanism_ptr,&unknown);
            if(!snapshot.frame.valid)continue;
            const auto classification=classifier.update(snapshot,mechanism_ptr);
            const auto decision=runtime.update(snapshot,mechanism_ptr);
            ++classified;
            for(const auto& tag:classification.tags)++tags[scenario_tag_name(tag)];
            ++primary[scenario_tag_name(classification.primary)];
            ++profiles[decision.active_profile];
            if(samples.size()<240&&classified%3==0)
                samples.push_back({{"clock",frame.clock},{"room",frame.room},
                    {"classification",classification.to_json()},
                    {"profile",decision.active_profile},
                    {"profile_switched",decision.switched}});
        }
        if(!in.eof())throw std::runtime_error("Classification read failed");
        json payload{{"source",argv[2]},{"frames",frames},{"valid_frames",valid},
            {"classified",classified},{"tag_counts",tags},{"primary_counts",primary},
            {"profile_counts",profiles},{"samples",samples},
            {"evidence_scope","replay classification of captured frames; "
                "scenario tags are derived from state, not a fixed enemy table"},
            {"keyboard_output",false}};
        std::ofstream out{std::filesystem::path(argv[3])};
        if(!out)throw std::runtime_error("Cannot create classification output");
        out<<payload.dump(2)<<'\n';
        std::cout<<json{{"classified",classified},{"tag_counts",tags},
            {"primary_counts",primary},{"profile_counts",profiles}}.dump(2)<<'\n';
        return classified?0:2;
    }
    if(mode==L"--strategy-corpus"&&argc==4) {
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        ScenarioCorpusBuilder builder;
        std::string error;
        auto corpus=builder.build(std::filesystem::path(argv[2]),&semantics,&error);
        if(corpus.records.empty())throw std::runtime_error(
            error.empty()?"No replay scenarios extracted":error);
        if(!corpus.save(std::filesystem::path(argv[3]),&error))
            throw std::runtime_error(error);
        std::cout<<json{{"records",corpus.stats.records},
            {"train",corpus.stats.train},{"holdout",corpus.stats.holdout},
            {"by_scenario",corpus.stats.by_scenario},
            {"real_captures",corpus.stats.real_captures},
            {"evidence_scope","captured snapshots; optimizer output remains "
                "offline simulation"}}.dump(2)<<'\n';
        return 0;
    }
    if(mode==L"--strategy-optimize"&&(argc==4||argc==5)) {
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        std::string error;
        auto corpus=ScenarioCorpus::load(std::filesystem::path(argv[2]),&error);
        if(!corpus)throw std::runtime_error("Cannot load corpus: "+error);
        TacticalOptimizerConfig config;
        config.max_evaluations=160;
        config.write_memory=true;
        config.memory_directory=argc==5?std::filesystem::path(argv[4]):
            (root.parent_path()/"data"/"strategies");
        TacticalParameterOptimizer optimizer(config,*corpus);
        const auto results=optimizer.optimize_all();
        json rows=json::array();
        int promoted=0;
        for(const auto& result:results) {
            rows.push_back(result.to_json());
            if(result.promoted)++promoted;
        }
        json payload{{"corpus",argv[2]},{"results",rows},
            {"promoted",promoted},{"memory_directory",config.memory_directory.string()},
            {"evidence_scope","offline replay simulation over captured snapshots; "
                "promotion also requires holdout and mechanism-confidence gates. "
                "This is not a real-game no-damage result."},
            {"keyboard_output",false}};
        std::ofstream out{std::filesystem::path(argv[3])};
        if(!out)throw std::runtime_error("Cannot create optimization output");
        out<<payload.dump(2)<<'\n';
        std::cout<<json{{"profiles",rows.size()},{"promoted",promoted},
            {"memory_directory",config.memory_directory.string()}}.dump(2)<<'\n';
        return 0;
    }
    if(mode==L"--strategy-list"&&argc==3) {
        StrategyMemory memory{std::filesystem::path(argv[2])};
        std::string error;
        auto library=memory.current(&error);
        if(!library)throw std::runtime_error("Cannot load strategy library: "+error);
        json rows=json::array();
        for(const auto& profile:library->profiles)
            rows.push_back({{"profile_id",profile.profile_id},
                {"scenario_tags",[&] {
                    json values=json::array();
                    for(ScenarioTag tag:profile.scenario_tags)
                        values.push_back(scenario_tag_name(tag));
                    return values;
                }()},
                {"version",profile.version},{"source",profile.source},
                {"confidence",profile.confidence},
                {"parameters",profile.parameters.to_json()}});
        std::cout<<json{{"version",library->version},
            {"profiles",rows},{"history",library->history}}.dump(2)<<'\n';
        return 0;
    }
    if(mode==L"--strategy-rollback"&&argc==4) {
        StrategyMemory memory{std::filesystem::path(argv[2])};
        std::string error;
        const int version=std::stoi(argv[3]);
        auto library=memory.rollback(version,&error);
        if(!library)throw std::runtime_error("Strategy rollback failed: "+error);
        std::cout<<json{{"rolled_back_to",library->version},
            {"profiles",library->profiles.size()},
            {"current",(std::filesystem::path(argv[2])/"current.json").string()}}.dump(2)<<'\n';
        return 0;
    }
    if(mode==L"--strategy-compare"&&(argc==4||argc==5)) {
        if(argc==5) {
            StrategyMemory memory{std::filesystem::path(argv[2])};
            std::string error;
            const auto before=std::stoi(argv[3]);
            const auto after=std::stoi(argv[4]);
            const auto diffs=memory.compare_versions(before,after,&error);
            if(!error.empty())throw std::runtime_error("Strategy compare failed: "+error);
            json rows=json::array();
            for(const auto& diff:diffs)rows.push_back(diff.to_json());
            std::cout<<json{{"before_version",before},{"after_version",after},
                {"profiles",rows}}.dump(2)<<'\n';
            return 0;
        }
        auto load_profile=[](const wchar_t* path) {
            std::ifstream in{std::filesystem::path(path)};
            if(!in)throw std::runtime_error("Cannot open strategy profile");
            json value;
            in>>value;
            if(value.contains("profile"))value=value.at("profile");
            return StrategyProfile::from_json(value);
        };
        const auto before=load_profile(argv[2]);
        const auto after=load_profile(argv[3]);
        std::cout<<json{{"before",before.to_json()},{"after",after.to_json()},
            {"diff",compare_strategy_profiles(before,after).to_json()}}.dump(2)<<'\n';
        return 0;
    }
    if(mode==L"--compare"&&argc==3) {
        if(std::filesystem::exists(argv[2]))throw std::runtime_error("Report already exists");
        auto report=run_lookahead_benchmark();auto payload=comparison_json(report);
        std::ofstream out{std::filesystem::path(argv[2])};if(!out)throw std::runtime_error("Cannot create comparison report");
        out<<payload.dump(2)<<'\n';if(!out)throw std::runtime_error("Comparison report write failed");
        std::cout<<payload.at("totals").dump(2)<<'\n';return 0;
    }
    if(mode==L"--mpc-pressure"&&argc>=3&&argc<=5) {
        if(std::filesystem::exists(argv[2]))throw std::runtime_error("Report already exists");
        const int seconds=argc>3?std::clamp(std::stoi(argv[3]),1,600):0;
        const int scenario_limit=argc>4?std::max(1,std::stoi(argv[4])):0;
        auto report=run_mpc_pressure_benchmark(seconds>0?seconds*30:0,scenario_limit);
        auto payload=mpc_pressure_json(report);
        std::ofstream out{std::filesystem::path(argv[2])};if(!out)throw std::runtime_error("Cannot create MPC pressure report");
        out<<payload.dump(2)<<'\n';if(!out)throw std::runtime_error("MPC pressure report write failed");
        std::cout<<payload.at("totals").dump(2)<<'\n';return 0;
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
