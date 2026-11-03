#include "gamebot/temporal_reachability.hpp"
#include "gamebot/safety.hpp"
#include <algorithm>
#include <chrono>
#include <cmath>
#include <limits>
#include <map>
#include <queue>
#include <unordered_map>
#include <unordered_set>

namespace gamebot {
namespace {
using clock_type=std::chrono::steady_clock;
double elapsed_ms(clock_type::time_point start) {
    return std::chrono::duration<double,std::milli>(clock_type::now()-start).count();
}
int cell_index(const Grid& grid,Vec point) {
    if(!grid.valid||grid.width<=0||grid.height<=0)return -1;
    const int x=int(std::floor((point.x-40.0)/40.0));
    const int y=int(std::floor((point.y-120.0)/40.0));
    if(x<0||y<0||x>=grid.width||y>=grid.height)return -1;
    return y*grid.width+x;
}
int open_neighbors(const Grid& grid,int cell,double radius,bool flying) {
    if(cell<0||cell>=grid.width*grid.height)return 0;
    const int x=cell%grid.width,y=cell/grid.width;
    int count=0;
    for(int dy=-1;dy<=1;++dy)for(int dx=-1;dx<=1;++dx) {
        if(dx==0&&dy==0)continue;
        const int nx=x+dx,ny=y+dy;
        if(nx<0||ny<0||nx>=grid.width||ny>=grid.height)continue;
        if(grid.walkable(grid.center(ny*grid.width+nx),radius,flying))++count;
    }
    return count;
}
std::vector<uint8_t> static_reachable_cells(const Grid& grid,Vec start,double radius,bool flying) {
    std::vector<uint8_t> reached;
    if(!grid.valid||grid.width<=0||grid.height<=0||
       int(grid.cells.size())!=grid.width*grid.height)return reached;
    reached.assign(size_t(grid.width*grid.height),0);
    int start_cell=cell_index(grid,start);
    if(start_cell<0||!grid.walkable(grid.center(start_cell),radius,flying))return reached;
    std::queue<int> queue;
    queue.push(start_cell);reached[size_t(start_cell)]=1;
    while(!queue.empty()) {
        const int cell=queue.front();queue.pop();
        const int x=cell%grid.width,y=cell/grid.width;
        for(int dy=-1;dy<=1;++dy)for(int dx=-1;dx<=1;++dx) {
            if(dx==0&&dy==0)continue;
            const int nx=x+dx,ny=y+dy;
            if(nx<0||ny<0||nx>=grid.width||ny>=grid.height)continue;
            const int next=ny*grid.width+nx;
            if(reached[size_t(next)])continue;
            if(!grid.walkable(grid.center(next),radius,flying))continue;
            reached[size_t(next)]=1;queue.push(next);
        }
    }
    return reached;
}
struct StepRisk {
    TemporalPathAssessment assessment;
    int frames{};
    int damage_events{};
    double damage_taken{};
};
TemporalDangerConfig local_danger_config(const TemporalReachabilityConfig& config,
    double player_radius,int frames) {
    TemporalDangerConfig local=config.danger;
    local.slice_frames=1;
    local.max_slices=std::min(std::max(1,config.danger.max_slices),
        std::max(1,frames)+1);
    local.player_radius=std::max(local.player_radius,player_radius);
    return local;
}
StepRisk advance_and_assess(const ForwardSimulator& parent,ForwardSimulator& child,
    Move move,const TemporalReachabilityConfig& config,double player_radius,
    int max_health) {
    StepRisk result;
    TemporalDangerConfig local=local_danger_config(config,player_radius,
        config.step_frames);
    local.dt=child.config().dt>0?child.config().dt:1.0/60;
    TemporalDangerBuilder builder(local);
    std::vector<TemporalTrajectorySample> samples;
    const SimWorld& parent_world=parent.world();
    samples.push_back({0,parent_world.time,parent_world.player.pos,
        parent_world.player.radius});
    bool observing=builder.observe(parent_world);
    const SimAction action{move,Fire::none,false};
    for(int frame=0;frame<std::max(1,config.step_frames);++frame) {
        child.step(action,1);
        ++result.frames;
        auto events=child.get_events();
        for(const auto& event:events)
            if(event.target==0&&(event.kind=="projectile-hit"||
                event.kind=="contact-hit"||event.kind=="hazard-hit"))
                ++result.damage_events;
        if(observing&&!builder.observe(child.world()))observing=false;
        const SimWorld& world=child.world();
        samples.push_back({result.frames,world.time,world.player.pos,
            world.player.radius});
        if(child.terminal())break;
    }
    TemporalDanger local_danger=builder.finish();
    result.assessment=assess_temporal_path(local_danger,samples,config.path);
    if(!observing||local_danger.truncated) {
        result.assessment.truncated=true;
        if(result.assessment.status!=TemporalPathStatus::danger) {
            result.assessment.status=TemporalPathStatus::unknown;
            result.assessment.reason="local-map-truncated";
        }
    }
    result.damage_taken=std::max(0.0,
        double(max_health-child.world().player.health));
    return result;
}
TemporalPathAssessment assess_root_status(const SimWorld& world,
    const TemporalReachabilityConfig& config,double player_radius) {
    TemporalDangerConfig local=local_danger_config(config,player_radius,0);
    local.dt=config.danger.dt>0?config.danger.dt:1.0/60;
    TemporalDangerBuilder builder(local);
    if(!builder.observe(world))return TemporalPathAssessment{};
    const TemporalDanger danger=builder.finish();
    const std::vector<TemporalTrajectorySample> samples{{
        0,world.time,world.player.pos,world.player.radius}};
    return assess_temporal_path(danger,samples,config.path);
}
TemporalReachabilityLayer make_layer(int layer_index,int frame,
    const std::vector<TemporalReachabilityState>& states,const Grid& grid,
    double player_radius,bool flying,int static_walkable,int open_threshold) {
    TemporalReachabilityLayer out;
    out.layer=layer_index;
    out.frame=frame;
    out.earliest_arrival_frame.assign(size_t(grid.width*grid.height),-1);
    out.earliest_physical_arrival_frame.assign(size_t(grid.width*grid.height),-1);
    std::unordered_set<int> safe_cells;
    std::unordered_set<int> physical_cells;
    std::unordered_set<int> routes;
    for(const auto& state:states) {
        if(state.layer!=layer_index)continue;
        out.damage_events+=state.segment_damage_events;
        if(!state.static_blocked&&!state.dead) {
            ++out.physical_reachable_states;
            const int cell=cell_index(grid,state.position);
            if(cell>=0) {
                physical_cells.insert(cell);
                int& earliest=out.earliest_physical_arrival_frame[size_t(cell)];
                if(earliest<0||state.frame<earliest)earliest=state.frame;
            }
        }
        if(state.static_blocked)++out.blocked_by_static_terrain;
        else if(state.unknown)++out.unknown_states;
        else if(state.danger) {
            ++out.blocked_by_dynamic_danger;
            if(state.segment_danger_sources&danger_source_enemy)++out.danger_enemy_states;
            if(state.segment_danger_sources&danger_source_projectile)
                ++out.danger_projectile_states;
            if(state.segment_danger_sources&danger_source_hazard)++out.danger_hazard_states;
            if(state.segment_danger_sources&danger_source_unknown)++out.danger_unknown_states;
        }else if(state.warning) {
            ++out.warning_states;
            if(state.segment_warning_sources&danger_source_enemy)++out.warning_enemy_states;
            if(state.segment_warning_sources&danger_source_projectile)
                ++out.warning_projectile_states;
            if(state.segment_warning_sources&danger_source_hazard)
                ++out.warning_hazard_states;
            if(state.segment_warning_sources&danger_source_unknown)
                ++out.warning_unknown_states;
        }else if(state.safe) {
            ++out.reachable_states;
            const int cell=cell_index(grid,state.position);
            if(cell>=0) {
                safe_cells.insert(cell);
                int& earliest=out.earliest_arrival_frame[size_t(cell)];
                if(earliest<0||state.frame<earliest)earliest=state.frame;
                if(open_neighbors(grid,cell,player_radius,flying)>=open_threshold) {
                    if(out.time_to_open<0||state.frame<out.time_to_open)
                        out.time_to_open=double(state.frame);
                }
            }
            if(state.first_action>=0)routes.insert(state.first_action);
        }
    }
    out.reachable_cells=int(safe_cells.size());
    out.physical_reachable_cells=int(physical_cells.size());
    out.mobility_routes=int(routes.size());
    out.reachable_area=static_walkable>0?
        double(out.reachable_cells)/double(static_walkable):0.0;
    out.physical_reachable_area=static_walkable>0?
        double(out.physical_reachable_cells)/double(static_walkable):0.0;
    return out;
}
} // namespace

json TemporalReachabilityLayer::to_json() const {
    json earliest=json::array();
    for(int frame:earliest_arrival_frame)earliest.push_back(frame);
    json earliest_physical=json::array();
    for(int frame:earliest_physical_arrival_frame)earliest_physical.push_back(frame);
    return {{"layer",layer},{"frame",frame},{"expanded_states",expanded_states},
        {"reachable_states",reachable_states},
        {"physical_reachable_states",physical_reachable_states},
        {"warning_states",warning_states},
        {"blocked_by_dynamic_danger",blocked_by_dynamic_danger},
        {"blocked_by_static_terrain",blocked_by_static_terrain},
        {"unknown_states",unknown_states},{"dead_end_states",dead_end_states},
        {"damage_events",damage_events},{"reachable_cells",reachable_cells},
        {"physical_reachable_cells",physical_reachable_cells},
        {"reachable_area",reachable_area},
        {"physical_reachable_area",physical_reachable_area},
        {"mobility_routes",mobility_routes},
        {"danger_enemy_states",danger_enemy_states},
        {"danger_projectile_states",danger_projectile_states},
        {"danger_hazard_states",danger_hazard_states},
        {"danger_unknown_states",danger_unknown_states},
        {"warning_enemy_states",warning_enemy_states},
        {"warning_projectile_states",warning_projectile_states},
        {"warning_hazard_states",warning_hazard_states},
        {"warning_unknown_states",warning_unknown_states},
        {"pruned_states",pruned_states},{"pruned_safe",pruned_safe},
        {"pruned_warning",pruned_warning},{"pruned_danger",pruned_danger},
        {"pruned_static",pruned_static},{"pruned_unknown",pruned_unknown},
        {"pruned_danger_enemy",pruned_danger_enemy},
        {"pruned_danger_projectile",pruned_danger_projectile},
        {"pruned_danger_hazard",pruned_danger_hazard},
        {"pruned_danger_unknown",pruned_danger_unknown},
        {"time_to_open",time_to_open},{"earliest_arrival_frame",earliest},
        {"earliest_physical_arrival_frame",earliest_physical}};
}
json TemporalReachabilityResult::to_json() const {
    json layer_rows=json::array();
    for(const auto& layer:layers)layer_rows.push_back(layer.to_json());
    json representative=json::array();
    for(const auto& assessment:representative_assessments)
        representative.push_back(assessment.to_json());
    json state_rows=json::array();
    for(const auto& state:states) {
        state_rows.push_back({{"index",state.index},{"parent",state.parent},
            {"layer",state.layer},{"frame",state.frame},{"time",state.time},
            {"position",state.position},{"velocity",state.velocity},
            {"world_signature",state.world_signature},
            {"first_action",state.first_action},{"move",int(state.action.move)},
            {"frames",state.frames},{"path_risk",state.path_risk},
            {"damage_taken",state.damage_taken},
            {"damage_events",state.damage_events},
            {"segment_damage_events",state.segment_damage_events},
            {"root_distance",state.root_distance},
            {"open_neighbors",state.open_neighbors},
            {"danger_sources",int(state.danger_sources)},
            {"warning_sources",int(state.warning_sources)},
            {"segment_danger_sources",int(state.segment_danger_sources)},
            {"segment_warning_sources",int(state.segment_warning_sources)},
            {"safe",state.safe},{"warning",state.warning},
            {"physically_reachable",state.physically_reachable},
            {"danger",state.danger},{"static_blocked",state.static_blocked},
            {"unknown",state.unknown},{"dead",state.dead},
            {"has_future_move",state.has_future_move}});
    }
    return {{"valid",valid},{"timed_out",timed_out},{"truncated",truncated},
        {"memory_limited",memory_limited},{"root_frame",root_frame},
        {"horizon_frames",horizon_frames},{"layers_requested",layers_requested},
        {"layers_completed",layers_completed},{"root_signature",root_signature},
        {"total_states",total_states},{"expanded_states",expanded_states},
        {"pruned_states",pruned_states},{"merged_states",merged_states},
        {"duplicate_world_candidates",duplicate_world_candidates},
        {"merged_same_world_same_route",merged_same_world_same_route},
        {"kept_same_world_distinct_route",kept_same_world_distinct_route},
        {"shared_world_signature_groups",shared_world_signature_groups},
        {"distinct_world_same_cell",distinct_world_same_cell},
        {"static_walkable_cells",static_walkable_cells},
        {"static_reachable_cells",static_reachable_cells},
        {"physical_reachable_cells",physical_reachable_cells},
        {"temporal_reachable_cells",temporal_reachable_cells},
        {"safe_reachable_cells",safe_reachable_cells},
        {"physical_unreached_cells",physical_unreached_cells},
        {"physically_reachable_unsafe_cells",physically_reachable_unsafe_cells},
        {"temporal_only_cells",temporal_only_cells},
        {"physical_only_cells",physical_only_cells},
        {"static_only_cells",static_only_cells},
        {"pruned_safe",pruned_safe},{"pruned_warning",pruned_warning},
        {"pruned_danger",pruned_danger},{"pruned_static",pruned_static},
        {"pruned_unknown",pruned_unknown},
        {"pruned_danger_enemy",pruned_danger_enemy},
        {"pruned_danger_projectile",pruned_danger_projectile},
        {"pruned_danger_hazard",pruned_danger_hazard},
        {"pruned_danger_unknown",pruned_danger_unknown},
        {"temporal_only_cell_list",temporal_only_cell_list},
        {"physical_only_cell_list",physical_only_cell_list},
        {"physically_reachable_unsafe_cell_list",
            physically_reachable_unsafe_cell_list},
        {"static_only_cell_list",static_only_cell_list},
        {"damage_events",damage_events},
        {"estimated_memory_bytes",estimated_memory_bytes},
        {"elapsed_ms",elapsed_ms},{"reason",reason},
        {"layers",layer_rows},
        {"representative_assessments",representative},
        {"representative_count",representative_assessments.size()},
        {"states",state_rows}};
}

TemporalReachabilityResult search_temporal_reachability(const ForwardSimulator& root,
    TemporalReachabilityConfig config) {
    const auto started=clock_type::now();
    TemporalReachabilityResult result;
    const SimWorld& root_world=root.world();
    const Grid& grid=root_world.room.grid;
    if(!grid.valid||grid.width<=0||grid.height<=0||
       int(grid.cells.size())!=grid.width*grid.height) {
        result.reason="invalid-root-grid";
        result.elapsed_ms=elapsed_ms(started);
        return result;
    }
    config.horizon_frames=std::max(1,config.horizon_frames);
    config.step_frames=std::max(1,config.step_frames);
    config.max_layers=std::max(1,config.max_layers);
    config.max_states_per_layer=std::max(1,config.max_states_per_layer);
    config.max_total_states=std::max(1,config.max_total_states);
    config.open_neighbors=std::clamp(config.open_neighbors,1,8);
    config.max_representative_paths=std::max(0,config.max_representative_paths);
    const double player_radius=std::max(1.0,root_world.player.radius);
    config.danger.player_radius=std::max(config.danger.player_radius,player_radius);
    config.danger.dt=root.config().dt>0?root.config().dt:1.0/60;
    config.path.sweep_step=std::max(1.0,config.path.sweep_step);
    result.root_frame=root_world.frame;
    result.root_signature=temporal_world_signature(root_world);
    result.horizon_frames=config.horizon_frames;
    result.layers_requested=std::min(config.max_layers,
        (config.horizon_frames+config.step_frames-1)/config.step_frames);

    int static_walkable=0;
    for(int index=0;index<grid.width*grid.height;++index)
        if(grid.walkable(grid.center(index),player_radius,root_world.player.flying))
            ++static_walkable;
    result.static_walkable_cells=static_walkable;
    const auto static_cells=static_reachable_cells(grid,root_world.player.pos,
        player_radius,root_world.player.flying);
    for(uint8_t value:static_cells)if(value)++result.static_reachable_cells;

    TemporalReachabilityState root_state;
    root_state.index=0;
    root_state.parent=-1;
    root_state.layer=0;
    root_state.frame=0;
    root_state.position=root_world.player.pos;
    root_state.velocity=root_world.player.vel;
    root_state.time=root_world.time;
    root_state.world_signature=result.root_signature;
    root_state.action=SimAction{Move::stay,Fire::none,false};
    root_state.frames=0;
    root_state.root_distance=0;
    const int root_cell=cell_index(grid,root_world.player.pos);
    root_state.open_neighbors=root_cell>=0?
        open_neighbors(grid,root_cell,player_radius,root_world.player.flying):0;
    const TemporalPathAssessment root_assessment=assess_root_status(root_world,
        config,player_radius);
    root_state.safe=root_assessment.status==TemporalPathStatus::safe;
    root_state.warning=root_assessment.status==TemporalPathStatus::warning;
    root_state.danger=root_assessment.status==TemporalPathStatus::danger;
    root_state.static_blocked=root_assessment.status==TemporalPathStatus::static_blocked;
    root_state.unknown=root_assessment.status==TemporalPathStatus::unknown;
    root_state.dead=root_world.player_dead;
    root_state.danger_sources=root_assessment.danger_sources;
    root_state.warning_sources=root_assessment.warning_sources;
    root_state.segment_danger_sources=root_assessment.danger_sources;
    root_state.segment_warning_sources=root_assessment.warning_sources;
    root_state.physically_reachable=!root_state.static_blocked&&!root_state.dead;
    if(root_state.dead)root_state.safe=false;
    result.states.push_back(root_state);
    result.total_states=1;

    struct Node {
        std::unique_ptr<ForwardSimulator> simulator;
        int state_index{};
    };
    std::vector<Node> current;
    current.push_back({root.fork(),0});
    auto append_layer=[&](int layer_index) {
        int frame=root_world.frame+layer_index*config.step_frames;
        for(const auto& state:result.states)
            if(state.layer==layer_index) {frame=state.frame;break;}
        result.layers.push_back(make_layer(layer_index,frame,result.states,grid,
            player_radius,root_world.player.flying,static_walkable,
            config.open_neighbors));
        return result.layers.size()-1;
    };
    size_t root_layer_index=append_layer(0);
    (void)root_layer_index;
    bool stop=false;
    for(int layer=0;layer<result.layers_requested&&!stop;++layer) {
        if(current.empty())break;
        if(config.max_seconds>0&&elapsed_ms(started)>=config.max_seconds*1000.0) {
            result.timed_out=true;result.reason="time-limit";break;
        }
        result.layers[size_t(layer)].expanded_states=int(current.size());
        std::vector<Node> next;
        struct SeenKey {
            uint64_t signature{};
            int first_action{};
            bool operator==(const SeenKey& other) const {
                return signature==other.signature&&
                    first_action==other.first_action;
            }
        };
        struct SeenHash {
            size_t operator()(const SeenKey& key) const {
                uint64_t hash=key.signature^
                    (uint64_t(key.first_action+2)*0x9E3779B97F4A7C15ull);
                hash^=hash>>33;hash*=0xff51afd7ed558ccdull;
                hash^=hash>>33;
                return size_t(hash);
            }
        };
        std::unordered_map<SeenKey,int,SeenHash> seen;
        seen.reserve(size_t(config.max_states_per_layer)*4);
        std::unordered_map<uint64_t,std::unordered_set<int>> world_routes;
        world_routes.reserve(size_t(config.max_states_per_layer)*4);
        for(auto& parent:current) {
            if(stop)break;
            if(config.max_seconds>0&&elapsed_ms(started)>=config.max_seconds*1000.0) {
                result.timed_out=true;result.reason="time-limit";stop=true;break;
            }
            const TemporalReachabilityState parent_state=
                result.states[size_t(parent.state_index)];
            bool any_future=false;
            bool any_displacement=false;
            bool any_dynamic=false;
            for(int move=0;move<9&&!stop;++move) {
                if(result.total_states>=config.max_total_states) {
                    result.truncated=true;result.reason="state-limit";stop=true;break;
                }
                auto child=parent.simulator->fork();
                const StepRisk risk=advance_and_assess(*parent.simulator,*child,
                    Move(move),config,player_radius,root_world.player.max_health);
                const SimWorld& world=child->world();
                TemporalReachabilityState state;
                state.index=int(result.states.size());
                state.parent=parent.state_index;
                state.layer=layer+1;
                state.frame=parent_state.frame+risk.frames;
                state.position=world.player.pos;
                state.velocity=world.player.vel;
                state.time=world.time;
                state.world_signature=temporal_world_signature(world);
                state.first_action=parent_state.first_action>=0?
                    parent_state.first_action:move;
                state.action=SimAction{Move(move),Fire::none,false};
                state.frames=risk.frames;
                state.path_risk=parent_state.path_risk+
                    risk.assessment.temporal_path_risk;
                state.damage_taken=risk.damage_taken;
                state.damage_events=parent_state.damage_events+risk.damage_events;
                state.segment_damage_events=risk.damage_events;
                state.root_distance=distance(world.player.pos,root_world.player.pos);
                const int child_cell=cell_index(grid,world.player.pos);
                state.open_neighbors=child_cell>=0?
                    open_neighbors(grid,child_cell,player_radius,world.player.flying):0;
                state.danger_sources=parent_state.danger_sources|
                    risk.assessment.danger_sources;
                state.warning_sources=parent_state.warning_sources|
                    risk.assessment.warning_sources;
                state.segment_danger_sources=risk.assessment.danger_sources;
                state.segment_warning_sources=risk.assessment.warning_sources;
                state.safe=risk.assessment.status==TemporalPathStatus::safe;
                state.warning=risk.assessment.status==TemporalPathStatus::warning;
                state.danger=risk.assessment.status==TemporalPathStatus::danger;
                state.static_blocked=
                    risk.assessment.status==TemporalPathStatus::static_blocked;
                state.unknown=risk.assessment.status==TemporalPathStatus::unknown;
                state.dead=child->terminal()||world.player_dead;
                state.physically_reachable=!state.static_blocked&&!state.dead;
                if(state.dead)state.safe=false;
                result.states.push_back(state);
                ++result.total_states;
                result.damage_events+=risk.damage_events;
                const bool viable=!state.static_blocked&&!state.unknown&&
                    !state.dead;
                if(viable) {
                    any_future=true;
                    if(distance(state.position,parent_state.position)>0.5)
                        any_displacement=true;
                    if(state.warning||state.danger)any_dynamic=true;
                }
                if(!viable)continue;
                auto& routes_for_world=world_routes[state.world_signature];
                if(!routes_for_world.empty()) {
                    ++result.duplicate_world_candidates;
                    if(routes_for_world.find(state.first_action)==
                       routes_for_world.end())
                        ++result.kept_same_world_distinct_route;
                }
                routes_for_world.insert(state.first_action);
                const SeenKey key{state.world_signature,state.first_action};
                if(seen.find(key)!=seen.end()) {
                    ++result.merged_states;
                    ++result.merged_same_world_same_route;
                    continue;
                }
                seen[key]=state.index;
                next.push_back({std::move(child),state.index});
                if(config.max_memory_bytes>0) {
                    const size_t estimate=result.states.size()*
                        sizeof(TemporalReachabilityState)+
                        (current.size()+next.size())*sizeof(SimWorld);
                    result.estimated_memory_bytes=std::max(
                        result.estimated_memory_bytes,estimate);
                    if(estimate>config.max_memory_bytes) {
                        result.memory_limited=true;result.reason="memory-limit";
                        stop=true;break;
                    }
                }
            }
            result.states[size_t(parent.state_index)].has_future_move=
                any_future&&(any_displacement||any_dynamic);
        }
        if(current.empty())break;
        for(const auto& node:current) {
            const auto& state=result.states[size_t(node.state_index)];
            if(!state.has_future_move)++result.layers[size_t(layer)].dead_end_states;
        }
        for(const auto&[signature,actions]:world_routes)
            if(actions.size()>1)++result.shared_world_signature_groups;
        int pruned_safe=0,pruned_warning=0,pruned_danger=0,pruned_static=0,
            pruned_unknown=0,pruned_danger_enemy=0,pruned_danger_projectile=0,
            pruned_danger_hazard=0,pruned_danger_unknown=0;
        if(next.size()>size_t(config.max_states_per_layer)) {
            auto priority=[&](const Node& node) {
                const auto& state=result.states[size_t(node.state_index)];
                const int rank=state.safe?0:(state.warning?1:2);
                return std::tuple<int,double,double,int>(
                    rank,state.damage_taken,state.path_risk,-state.layer);
            };
            std::stable_sort(next.begin(),next.end(),[&](const Node& a,const Node& b) {
                return priority(a)<priority(b);
            });
            const size_t keep=size_t(config.max_states_per_layer);
            for(size_t i=keep;i<next.size();++i) {
                const auto& state=result.states[size_t(next[i].state_index)];
                if(state.static_blocked)++pruned_static;
                else if(state.unknown)++pruned_unknown;
                else if(state.danger) {
                    ++pruned_danger;
                    if(state.segment_danger_sources&danger_source_enemy)
                        ++pruned_danger_enemy;
                    if(state.segment_danger_sources&danger_source_projectile)
                        ++pruned_danger_projectile;
                    if(state.segment_danger_sources&danger_source_hazard)
                        ++pruned_danger_hazard;
                    if(state.segment_danger_sources&danger_source_unknown)
                        ++pruned_danger_unknown;
                }else if(state.warning)++pruned_warning;
                else ++pruned_safe;
            }
            result.pruned_states+=int(next.size())-config.max_states_per_layer;
            result.pruned_safe+=pruned_safe;
            result.pruned_warning+=pruned_warning;
            result.pruned_danger+=pruned_danger;
            result.pruned_static+=pruned_static;
            result.pruned_unknown+=pruned_unknown;
            result.pruned_danger_enemy+=pruned_danger_enemy;
            result.pruned_danger_projectile+=pruned_danger_projectile;
            result.pruned_danger_hazard+=pruned_danger_hazard;
            result.pruned_danger_unknown+=pruned_danger_unknown;
            next.resize(keep);
        }
        if(!next.empty()) {
            append_layer(layer+1);
            auto& appended=result.layers.back();
            appended.pruned_states=pruned_safe+pruned_warning+pruned_danger+
                pruned_static+pruned_unknown;
            appended.pruned_safe=pruned_safe;
            appended.pruned_warning=pruned_warning;
            appended.pruned_danger=pruned_danger;
            appended.pruned_static=pruned_static;
            appended.pruned_unknown=pruned_unknown;
            appended.pruned_danger_enemy=pruned_danger_enemy;
            appended.pruned_danger_projectile=pruned_danger_projectile;
            appended.pruned_danger_hazard=pruned_danger_hazard;
            appended.pruned_danger_unknown=pruned_danger_unknown;
        }
        current=std::move(next);
        if(stop)break;
    }
    result.layers_completed=int(result.layers.size());
    result.valid=!result.states.empty()&&!result.layers.empty();
    result.expanded_states=0;
    for(const auto& layer:result.layers)result.expanded_states+=layer.expanded_states;

    // Compare the temporal safe union with static terrain BFS, and keep the
    // physical union separate. A physically attainable cell can still be unsafe
    // (dynamic danger or uncovered future); the two sets must never be merged.
    std::unordered_set<int> temporal_cells;
    std::unordered_set<int> physical_cells;
    std::map<std::pair<int,int>,std::unordered_set<uint64_t>> worlds_by_cell;
    for(const auto& state:result.states) {
        if(state.layer>0) {
            const int cell=cell_index(grid,state.position);
            if(cell>=0&&state.physically_reachable)
                worlds_by_cell[{state.layer,cell}].insert(state.world_signature);
        }
        const int cell=cell_index(grid,state.position);
        if(cell<0)continue;
        if(state.safe)temporal_cells.insert(cell);
        if(state.physically_reachable)physical_cells.insert(cell);
    }
    for(const auto&[key,signatures]:worlds_by_cell)
        if(signatures.size()>1)++result.distinct_world_same_cell;
    result.temporal_reachable_cells=int(temporal_cells.size());
    result.safe_reachable_cells=result.temporal_reachable_cells;
    result.physical_reachable_cells=int(physical_cells.size());
    for(int cell:temporal_cells)
        if(cell>=0&&cell<int(static_cells.size())&&!static_cells[size_t(cell)]) {
            ++result.temporal_only_cells;
            result.temporal_only_cell_list.push_back(cell);
        }
    for(int cell:physical_cells) {
        if(cell>=0&&cell<int(static_cells.size())&&!static_cells[size_t(cell)]) {
            ++result.physical_only_cells;
            result.physical_only_cell_list.push_back(cell);
        }
        if(temporal_cells.find(cell)==temporal_cells.end()) {
            ++result.physically_reachable_unsafe_cells;
            result.physically_reachable_unsafe_cell_list.push_back(cell);
        }
    }
    for(size_t cell=0;cell<static_cells.size();++cell) {
        if(static_cells[cell]&&physical_cells.find(int(cell))==physical_cells.end())
            ++result.physical_unreached_cells;
        if(static_cells[cell]&&temporal_cells.find(int(cell))==temporal_cells.end()) {
            ++result.static_only_cells;
            result.static_only_cell_list.push_back(int(cell));
        }
    }

    // Full diagnostics only for a small set of representative safe leaves.
    std::vector<int> representatives;
    for(const auto& state:result.states)
        if(state.safe&&state.parent>=0)representatives.push_back(state.index);
    std::stable_sort(representatives.begin(),representatives.end(),
        [&](int a,int b) {
            const auto& sa=result.states[size_t(a)];
            const auto& sb=result.states[size_t(b)];
            if(sa.layer!=sb.layer)return sa.layer>sb.layer;
            if(std::abs(sa.path_risk-sb.path_risk)>1e-9)
                return sa.path_risk<sb.path_risk;
            return sa.damage_taken<sb.damage_taken;
        });
    std::unordered_set<int> used_first;
    for(int index:representatives) {
        if(int(result.representative_trajectories.size())>=
           config.max_representative_paths)break;
        const auto& state=result.states[size_t(index)];
        if(!used_first.insert(state.first_action).second)continue;
        std::vector<SimActionSegment> plan;
        int cursor=index;
        while(cursor>=0&&result.states[size_t(cursor)].parent>=0) {
            const auto& step=result.states[size_t(cursor)];
            plan.push_back({step.action,step.frames});
            cursor=step.parent;
        }
        if(plan.empty())continue;
        std::reverse(plan.begin(),plan.end());
        auto trajectory=capture_temporal_trajectory(root,plan,config.danger);
        result.representative_trajectories.push_back(std::move(trajectory));
        result.representative_assessments.push_back(
            assess_temporal_trajectory(result.representative_trajectories.back(),
                config.path));
    }
    if(result.reason.empty())result.reason="ok";
    result.elapsed_ms=elapsed_ms(started);
    if(config.max_memory_bytes>0) {
        const size_t estimate=result.states.size()*sizeof(TemporalReachabilityState);
        result.estimated_memory_bytes=std::max(result.estimated_memory_bytes,estimate);
    }
    return result;
}
json TrajectoryDiagnostics::to_json() const {
    return {{"valid",valid},{"frames",frames},{"duration",duration},
        {"trajectory_length",trajectory_length},
        {"net_displacement",net_displacement},
        {"net_displacement_ratio",net_displacement_ratio},
        {"heading_change_count",heading_change_count},
        {"trajectory_curvature",trajectory_curvature},
        {"action_segments",action_segments},
        {"max_same_move_run",max_same_move_run},
        {"dominant_move_share",dominant_move_share},
        {"orbit_radius",orbit_radius},{"orbit_radius_min",orbit_radius_min},
        {"orbit_radius_max",orbit_radius_max},
        {"enemy_separation_mean",enemy_separation_mean},
        {"enemy_separation_min",enemy_separation_min},
        {"enemy_separation_start",enemy_separation_start},
        {"enemy_separation_end",enemy_separation_end},
        {"enemy_separation_change",enemy_separation_change},
        {"minimum_clearance",minimum_clearance},
        {"damage_events",damage_events},{"damage_taken",damage_taken},
        {"reachable_area_start",reachable_area_start},
        {"reachable_area_end",reachable_area_end},
        {"reachable_area_growth",reachable_area_growth},
        {"reachable_area_min",reachable_area_min},
        {"reachable_area_max",reachable_area_max},
        {"repeat_visit_count",repeat_visit_count},
        {"enemy_hp_start",enemy_hp_start},{"enemy_hp_end",enemy_hp_end},
        {"enemy_hp_drop",enemy_hp_drop},{"player_dead",player_dead},
        {"reason",reason}};
}
TrajectoryDiagnostics analyze_trajectory(const ForwardSimulator& root,
    const std::vector<SimActionSegment>& plan,TrajectoryDiagnosticsConfig config) {
    TrajectoryDiagnostics out;
    config.heading_threshold_degrees=std::max(0.0,config.heading_threshold_degrees);
    config.movement_epsilon=std::max(0.0,config.movement_epsilon);
    auto simulator=root.fork();
    const SimWorld& root_world=simulator->world();
    if(!root_world.room.grid.valid) {
        out.reason="invalid-root-grid";
        return out;
    }
    out.valid=true;
    out.reason="ok";
    int move_frames[9]{};
    int total_action_frames=0;
    int previous_move=-1;
    int same_move_run=0;
    for(const auto& segment:plan) {
        const int frames=std::max(0,segment.frames);
        if(frames<=0)continue;
        const int move=std::clamp(int(segment.action.move),0,8);
        ++out.action_segments;
        move_frames[move]+=frames;
        total_action_frames+=frames;
        if(move==previous_move)same_move_run+=frames;
        else {
            previous_move=move;
            same_move_run=frames;
        }
        out.max_same_move_run=std::max(out.max_same_move_run,same_move_run);
    }
    if(total_action_frames>0) {
        int dominant=0;
        for(int frames:move_frames)dominant=std::max(dominant,frames);
        out.dominant_move_share=double(dominant)/double(total_action_frames);
    }
    const int max_health=std::max(1,root_world.player.max_health);
    const double start_time=root_world.time;
    std::vector<Vec> positions{root_world.player.pos};
    std::vector<int> cells{cell_index(root_world.room.grid,root_world.player.pos)};
    std::unordered_map<int,int> visits;
    if(cells.back()>=0)visits[cells.back()]=1;
    int last_cell=cells.back();
    auto total_enemy_hp=[](const SimWorld& world) {
        double total=0;
        for(const auto& enemy:world.enemies)
            if(!enemy.dead&&enemy.hp>0)total+=enemy.hp;
        return total;
    };
    auto nearest_enemy=[&](const SimWorld& world,double& mean) {
        double nearest=std::numeric_limits<double>::infinity();
        double sum=0;int count=0;
        for(const auto& enemy:world.enemies) {
            if(enemy.dead||enemy.hp<=0)continue;
            const double gap=distance(world.player.pos,enemy.pos);
            nearest=std::min(nearest,gap);sum+=gap;++count;
        }
        mean=count>0?sum/double(count):0.0;
        return std::isfinite(nearest)?nearest:0.0;
    };
    double nearest_mean=0;
    double nearest=nearest_enemy(root_world,nearest_mean);
    out.enemy_separation_start=nearest;
    out.enemy_separation_end=nearest;
    out.enemy_separation_min=nearest;
    double separation_sum=nearest;
    int separation_count=1;
    out.orbit_radius_min=nearest;
    out.orbit_radius_max=nearest;
    out.enemy_hp_start=total_enemy_hp(root_world);
    out.enemy_hp_end=out.enemy_hp_start;
    SafetyGateConfig safety_config;
    const auto root_safety=evaluate_safety(root_world,safety_config,{},0,0);
    out.reachable_area_start=root_safety.reachable_area;
    out.reachable_area_end=root_safety.reachable_area;
    out.reachable_area_min=root_safety.reachable_area;
    out.reachable_area_max=root_safety.reachable_area;
    out.minimum_clearance=root_safety.min_clearance;
    int frame=0;
    for(const auto& segment:plan) {
        const int frames=std::max(0,segment.frames);
        for(int part=0;part<frames;++part) {
            simulator->step(segment.action,1);
            ++frame;
            auto events=simulator->get_events();
            for(const auto& event:events)
                if(event.target==0&&(event.kind=="projectile-hit"||
                    event.kind=="contact-hit"||event.kind=="hazard-hit"))
                    ++out.damage_events;
            const SimWorld& world=simulator->world();
            out.damage_taken=std::max(0.0,
                double(max_health-world.player.health));
            nearest=nearest_enemy(world,nearest_mean);
            out.enemy_separation_end=nearest;
            out.enemy_separation_min=std::min(out.enemy_separation_min,nearest);
            separation_sum+=nearest;++separation_count;
            out.orbit_radius_min=std::min(out.orbit_radius_min,nearest);
            out.orbit_radius_max=std::max(out.orbit_radius_max,nearest);
            const auto safety=evaluate_safety(world,safety_config,events,frame,
                out.damage_taken);
            out.minimum_clearance=std::min(out.minimum_clearance,
                safety.min_clearance);
            out.reachable_area_end=safety.reachable_area;
            out.reachable_area_min=std::min(out.reachable_area_min,
                safety.reachable_area);
            out.reachable_area_max=std::max(out.reachable_area_max,
                safety.reachable_area);
            positions.push_back(world.player.pos);
            const int cell=cell_index(world.room.grid,world.player.pos);
            cells.push_back(cell);
            if(cell>=0&&cell!=last_cell&&visits[cell]>0)++out.repeat_visit_count;
            if(cell>=0)++visits[cell];
            last_cell=cell;
            out.enemy_hp_end=total_enemy_hp(world);
            out.player_dead=world.player_dead;
            if(simulator->terminal())break;
        }
        if(simulator->terminal())break;
    }
    out.frames=frame;
    out.duration=simulator->world().time-start_time;
    out.enemy_hp_drop=out.enemy_hp_start-out.enemy_hp_end;
    out.enemy_separation_mean=separation_count>0?
        separation_sum/double(separation_count):0.0;
    out.enemy_separation_change=out.enemy_separation_end-out.enemy_separation_start;
    out.orbit_radius=out.enemy_separation_mean;
    out.reachable_area_growth=out.reachable_area_end-out.reachable_area_start;
    for(size_t i=1;i<positions.size();++i)
        out.trajectory_length+=distance(positions[i-1],positions[i]);
    if(!positions.empty())out.net_displacement=
        distance(positions.front(),positions.back());
    out.net_displacement_ratio=out.trajectory_length>1e-9?
        out.net_displacement/out.trajectory_length:0.0;
    Vec previous_heading{};
    bool have_heading=false;
    double total_turn=0;
    double accumulated_turn=0;
    const double threshold=config.heading_threshold_degrees*pi/180.0;
    for(size_t i=1;i<positions.size();++i) {
        const Vec delta=positions[i]-positions[i-1];
        if(delta.norm()<=config.movement_epsilon)continue;
        const Vec heading=delta.unit();
        if(have_heading) {
            const double angle=std::abs(std::atan2(
                previous_heading.x*heading.y-previous_heading.y*heading.x,
                previous_heading.x*heading.x+previous_heading.y*heading.y));
            total_turn+=angle;
            accumulated_turn+=angle;
            if(accumulated_turn>threshold) {
                ++out.heading_change_count;
                accumulated_turn=0;
            }
        }
        previous_heading=heading;
        have_heading=true;
    }
    out.trajectory_curvature=out.trajectory_length>1e-9?
        total_turn/out.trajectory_length:0.0;
    if(out.repeat_visit_count>0)out.reason="ok-repeat-visits";
    return out;
}
namespace {
int plan_total_frames(const std::vector<SimActionSegment>& plan) {
    int total=0;
    for(const auto& segment:plan)total+=std::max(0,segment.frames);
    return total;
}
std::vector<SimActionSegment> truncate_plan(
    const std::vector<SimActionSegment>& plan,int frames) {
    std::vector<SimActionSegment> out;
    if(frames<=0)return out;
    int remaining=frames;
    for(const auto& segment:plan) {
        if(remaining<=0)break;
        const int take=std::min(remaining,std::max(0,segment.frames));
        if(take<=0)continue;
        SimActionSegment copy=segment;
        copy.frames=take;
        out.push_back(copy);
        remaining-=take;
    }
    return out;
}
json segment_json(const SimActionSegment& segment) {
    return {{"move",int(segment.action.move)},
        {"fire",int(segment.action.fire)},{"shoot",segment.action.shoot},
        {"frames",segment.frames}};
}
} // namespace

const char* temporal_route_policy_name(TemporalRoutePolicy value) {
    return value==TemporalRoutePolicy::escape?"escape":"safest";
}
json TemporalRouteSelection::to_json() const {
    json rows=json::array();
    for(const auto& segment:plan)rows.push_back(segment_json(segment));
    return {{"found",found},{"safe",safe},
        {"policy",temporal_route_policy_name(policy)},
        {"state_index",state_index},{"layer",layer},{"frame",frame},
        {"root_distance",root_distance},{"open_neighbors",open_neighbors},
        {"path_risk",path_risk},{"damage_events",damage_events},
        {"segments",rows}};
}
TemporalRouteSelection select_temporal_route(
    const TemporalReachabilityResult& result,TemporalRoutePolicy policy,
    bool allow_unsafe) {
    TemporalRouteSelection out;
    out.policy=policy;
    const int minimum_escape_layer=std::max(1,result.layers_completed/2);
    auto better_safe=[&](const TemporalReachabilityState& state,
                         const TemporalReachabilityState& best) {
        if(policy==TemporalRoutePolicy::escape) {
            if(std::abs(state.root_distance-best.root_distance)>1e-6)
                return state.root_distance>best.root_distance;
            if(state.layer!=best.layer)return state.layer>best.layer;
            if(state.open_neighbors!=best.open_neighbors)
                return state.open_neighbors>best.open_neighbors;
            if(std::abs(state.path_risk-best.path_risk)>1e-9)
                return state.path_risk<best.path_risk;
            return state.damage_events<best.damage_events;
        }
        if(state.layer!=best.layer)return state.layer>best.layer;
        if(std::abs(state.path_risk-best.path_risk)>1e-9)
            return state.path_risk<best.path_risk;
        if(state.damage_events!=best.damage_events)
            return state.damage_events<best.damage_events;
        if(state.open_neighbors!=best.open_neighbors)
            return state.open_neighbors>best.open_neighbors;
        return state.root_distance<best.root_distance;
    };
    const TemporalReachabilityState* best=nullptr;
    for(const auto& state:result.states) {
        if(state.parent<0||state.layer<=0||!state.safe||state.dead)continue;
        if(policy==TemporalRoutePolicy::escape&&
           state.layer<minimum_escape_layer)continue;
        if(!best||better_safe(state,*best))best=&state;
    }
    if(best)out.safe=true;
    if(!best&&allow_unsafe) {
        auto rank=[](const TemporalReachabilityState& state) {
            if(state.warning)return 0;
            if(state.danger)return 1;
            return 2;
        };
        const TemporalReachabilityState* fallback=nullptr;
        for(const auto& state:result.states) {
            if(state.parent<0||state.layer<=0||state.dead||
               state.static_blocked||state.unknown)continue;
            const int state_rank=rank(state);
            if(state_rank>1)continue;
            if(!fallback) {fallback=&state;continue;}
            const int fallback_rank=rank(*fallback);
            bool better=false;
            if(state_rank!=fallback_rank)better=state_rank<fallback_rank;
            else if(policy==TemporalRoutePolicy::escape) {
                if(std::abs(state.root_distance-fallback->root_distance)>1e-6)
                    better=state.root_distance>fallback->root_distance;
                else if(state.layer!=fallback->layer)
                    better=state.layer>fallback->layer;
                else if(std::abs(state.path_risk-fallback->path_risk)>1e-9)
                    better=state.path_risk<fallback->path_risk;
                else better=state.damage_events<fallback->damage_events;
            }else {
                if(std::abs(state.path_risk-fallback->path_risk)>1e-9)
                    better=state.path_risk<fallback->path_risk;
                else if(state.damage_events!=fallback->damage_events)
                    better=state.damage_events<fallback->damage_events;
                else if(state.layer!=fallback->layer)
                    better=state.layer>fallback->layer;
                else better=state.root_distance<fallback->root_distance;
            }
            if(better)fallback=&state;
        }
        best=fallback;
        out.safe=false;
    }
    if(!best)return out;
    out.found=true;
    out.safe=best->safe;
    out.state_index=best->index;
    out.layer=best->layer;
    out.frame=best->frame;
    out.root_distance=best->root_distance;
    out.open_neighbors=best->open_neighbors;
    out.path_risk=best->path_risk;
    out.damage_events=best->damage_events;
    int cursor=best->index;
    while(cursor>=0&&result.states[size_t(cursor)].parent>=0) {
        const auto& step=result.states[size_t(cursor)];
        out.plan.push_back({step.action,step.frames});
        cursor=step.parent;
    }
    std::reverse(out.plan.begin(),out.plan.end());
    if(out.plan.empty())out.found=false;
    return out;
}
json TemporalRouteEvaluation::to_json() const {
    return {{"valid",valid},{"total_frames",total_frames},
        {"branch_damage_events",branch_damage_events},
        {"collision_consistent",collision_consistent},
        {"trajectory",trajectory.to_json()},
        {"temporal",temporal.to_json()}};
}
TemporalRouteEvaluation evaluate_temporal_route(const ForwardSimulator& root,
    const std::vector<SimActionSegment>& plan,
    TemporalRouteEvaluationConfig config) {
    TemporalRouteEvaluation out;
    out.total_frames=plan_total_frames(plan);
    if(plan.empty()||out.total_frames<=0)return out;
    const SimWorld& world=root.world();
    if(!world.room.grid.valid)return out;
    config.danger.dt=root.config().dt>0?root.config().dt:1.0/60;
    config.danger.slice_frames=std::max(1,config.danger.slice_frames);
    config.danger.player_radius=std::max(config.danger.player_radius,
        world.player.radius);
    const int needed_slices=
        (out.total_frames+config.danger.slice_frames)/config.danger.slice_frames+2;
    config.danger.max_slices=std::max(config.danger.max_slices,needed_slices);
    out.trajectory=analyze_trajectory(root,plan,config.diagnostics);
    const TemporalTrajectory captured=capture_temporal_trajectory(root,plan,
        config.danger);
    for(const auto& event:captured.events)
        if(event.target==0&&(event.kind=="projectile-hit"||
            event.kind=="contact-hit"||event.kind=="hazard-hit"))
            ++out.branch_damage_events;
    out.temporal=assess_temporal_trajectory(captured);
    out.collision_consistent=
        out.branch_damage_events==out.trajectory.damage_events;
    out.valid=out.trajectory.valid&&out.temporal.evaluated;
    return out;
}
json TemporalRouteComparison::to_json() const {
    return {{"valid",valid},{"temporal_available",temporal_available},
        {"compared_frames",compared_frames},
        {"mpc_total_frames",mpc_total_frames},
        {"temporal_total_frames",temporal_total_frames},
        {"mpc",mpc.to_json()},{"temporal",temporal.to_json()},
        {"selection",selection.to_json()},
        {"physical_reachable_cells",physical_reachable_cells},
        {"safe_reachable_cells",safe_reachable_cells},
        {"physically_reachable_unsafe_cells",physically_reachable_unsafe_cells},
        {"temporal_only_cells",temporal_only_cells},
        {"mpc_route_danger",mpc_route_danger},
        {"temporal_route_danger",temporal_route_danger},
        {"temporal_safe",temporal_safe},
        {"escape_outside_mpc",escape_outside_mpc},
        {"damage_delta",damage_delta},{"danger_frame_delta",danger_frame_delta},
        {"displacement_delta",displacement_delta},{"reason",reason}};
}
TemporalRouteComparison compare_temporal_routes(const ForwardSimulator& root,
    const std::vector<SimActionSegment>& mpc_plan,
    const std::vector<SimActionSegment>& temporal_plan,
    const TemporalReachabilityResult* reachability,
    TemporalRouteComparisonConfig config,
    const TemporalRouteSelection* selection) {
    TemporalRouteComparison out;
    if(selection)out.selection=*selection;
    const SimWorld& world=root.world();
    if(!world.room.grid.valid) {
        out.reason="invalid-root-grid";
        return out;
    }
    out.mpc_total_frames=plan_total_frames(mpc_plan);
    out.temporal_total_frames=plan_total_frames(temporal_plan);
    out.temporal_available=out.temporal_total_frames>0;
    int common=out.temporal_available?
        std::min(out.mpc_total_frames,out.temporal_total_frames):
        out.mpc_total_frames;
    if(config.max_frames>0)common=std::min(common,config.max_frames);
    if(common<=0) {
        out.reason="empty-plan";
        return out;
    }
    out.compared_frames=common;
    config.danger.dt=root.config().dt>0?root.config().dt:1.0/60;
    config.danger.slice_frames=std::max(1,config.danger.slice_frames);
    TemporalRouteEvaluationConfig evaluation;
    evaluation.danger=config.danger;
    evaluation.diagnostics=config.diagnostics;
    if(out.mpc_total_frames>0)
        out.mpc=evaluate_temporal_route(root,truncate_plan(mpc_plan,common),
            evaluation);
    if(out.temporal_available)
        out.temporal=evaluate_temporal_route(root,
            truncate_plan(temporal_plan,common),evaluation);
    if(reachability) {
        out.physical_reachable_cells=reachability->physical_reachable_cells;
        out.safe_reachable_cells=reachability->safe_reachable_cells;
        out.physically_reachable_unsafe_cells=
            reachability->physically_reachable_unsafe_cells;
        out.temporal_only_cells=reachability->temporal_only_cells;
    }
    out.mpc_route_danger=out.mpc.valid&&
        out.mpc.temporal.status==TemporalPathStatus::danger;
    out.temporal_route_danger=out.temporal.valid&&
        out.temporal.temporal.status==TemporalPathStatus::danger;
    out.temporal_safe=out.temporal.valid&&
        out.temporal.temporal.status==TemporalPathStatus::safe;
    if(out.mpc.valid&&out.temporal.valid) {
        out.damage_delta=out.mpc.trajectory.damage_taken-
            out.temporal.trajectory.damage_taken;
        out.danger_frame_delta=double(
            out.mpc.temporal.temporal_danger_frames-
            out.temporal.temporal.temporal_danger_frames);
        out.displacement_delta=out.temporal.trajectory.net_displacement-
            out.mpc.trajectory.net_displacement;
        out.escape_outside_mpc=out.temporal_safe&&
            out.temporal.trajectory.net_displacement>
            out.mpc.trajectory.net_displacement+24.0;
    }
    out.valid=out.mpc.valid;
    out.reason=out.valid?(out.temporal_available?"ok":"no-temporal-route"):
        "route-evaluation-invalid";
    return out;
}
} // namespace gamebot
