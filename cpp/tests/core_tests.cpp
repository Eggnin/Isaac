#include "gamebot/planner.hpp"
#include "gamebot/lookahead.hpp"
#include "gamebot/benchmark.hpp"
#include "gamebot/enemy_intent.hpp"
#include "gamebot/unknown_threat.hpp"
#include "gamebot/world_state.hpp"
#include "gamebot/forward_sim.hpp"
#include "gamebot/projectile_motion.hpp"
#include "gamebot/safety.hpp"
#include "gamebot/temporal_reachability.hpp"
#include "gamebot/policy_validation.hpp"
#include "gamebot/movement_intent.hpp"
#include "gamebot/mpc.hpp"
#include "gamebot/combat.hpp"
#include "gamebot/prediction_monitor.hpp"
#include "gamebot/closed_loop.hpp"
#include "gamebot/session_review.hpp"
#include "gamebot/performance_monitor.hpp"
#include "gamebot/discovery.hpp"
#include "gamebot/strategy.hpp"
#include "gamebot/runtime.hpp"
#include "gamebot/control.hpp"
#include "gamebot/reader.hpp"
#include "gamebot/semantics.hpp"
#include "gamebot/weapons.hpp"
#include <array>
#include <iostream>
#include <functional>
#include <stdexcept>
#include <map>
#include <chrono>
#include <fstream>
#include <set>
#include <tuple>
#define NOMINMAX
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#undef near
#undef far

using namespace gamebot;
#define CHECK(expr) do { if(!(expr))throw std::runtime_error(std::string(__FILE__)+":"+std::to_string(__LINE__)+" " #expr); } while(false)
namespace {
Frame frame() {
    Frame f;f.valid=f.has_player=f.grid.valid=true;f.clock=100;f.room=0x40000;
    f.grid.cells.resize(15*9);f.player.body.type=1;f.player.body.address=0x20000;f.player.body.pos={320,280};f.player.body.radius=10;f.player.body.hp=6;
    f.player.tear_speed=360;f.player.tear_range=340;f.player.max_speed=260;return f;
}
Entity enemy(Vec p={500,280},Vec v={}) {Entity e;e.type=10;e.address=0x30000;e.seed=1;e.pos=p;e.vel=v;e.radius=16;e.hp=10;e.damage=1;e.collision=2;return e;}
Entity bullet(Vec p,Vec v) {Entity e;e.type=9;e.address=0x50000;e.seed=2;e.pos=p;e.vel=v;e.radius=6;e.collision=1;return e;}
SimWorld simulation_world(const Frame& f,Vec player={320,280}) {
    SimWorld world;
    world.room.grid=f.grid;
    world.player.pos=player;
    world.player.radius=10;
    world.player.max_speed=260;
    world.player.flying=false;
    world.player.health=f.player.body.hp>0?f.player.body.hp:6;
    return world;
}
SimEnemy safety_enemy(Vec pos,uint32_t id) {
    SimEnemy enemy;
    enemy.id=id;
    enemy.pos=pos;
    enemy.vel={20,0};
    enemy.radius=16;
    enemy.hp=10;
    enemy.damage=1;
    enemy.contact=true;
    enemy.chase=true;
    return enemy;
}
Grid narrow_corridor_grid() {
    auto f=frame();
    auto& grid=f.grid;
    // Player cell is (7,4). Fill the whole local BFS diamond with rock except
    // one horizontal seven-cell corridor so reachable_area is unambiguous.
    const int px=7,py=4,radius=4;
    for(int dy=-radius;dy<=radius;++dy)for(int dx=-radius;dx<=radius;++dx) {
        if(std::abs(dx)+std::abs(dy)>radius)continue;
        const int x=px+dx,y=py+dy;
        if(x<0||y<0||x>=grid.width||y>=grid.height)continue;
        if(dy==0&&x>=4&&x<=10)continue;
        grid.cells[y*grid.width+x].collision=2;
    }
    return grid;
}
std::vector<SimWorld> temporal_sequence(const SimWorld& base,int frames,
    const std::function<void(SimWorld&,int)>& mutate) {
    std::vector<SimWorld> out;
    out.reserve(size_t(frames));
    for(int frame=0;frame<frames;++frame) {
        SimWorld world=base;
        world.time=double(frame)/60.0;
        mutate(world,frame);
        out.push_back(std::move(world));
    }
    return out;
}
SimHazard temporal_hazard(Vec pos,double radius,double from,double until,
                          HazardKind kind=HazardKind::laser,
                          Precision precision=Precision::exact) {
    SimHazard hazard;
    hazard.spec.kind=kind;
    hazard.spec.pos=pos;
    hazard.spec.radius=radius;
    hazard.spec.precision=precision;
    hazard.spec.damage=1;
    hazard.spec.damage_class=DamageClass::laser;
    hazard.active_from=from;
    hazard.active_until=until;
    return hazard;
}
SimProjectile temporal_projectile(Vec pos,Vec vel,uint32_t id=1) {
    SimProjectile projectile;
    projectile.id=id;
    projectile.pos=pos;
    projectile.vel=vel;
    projectile.radius=4;
    projectile.damage=1;
    projectile.hostile=true;
    projectile.damageable=true;
    projectile.life=5;
    return projectile;
}
TemporalTrajectorySample temporal_sample(int frame,Vec position,double radius=10.0) {
    return {frame,double(frame)/60.0,position,radius};
}
TemporalReachabilityConfig reachability_config(int horizon=12,int step=3,
    int layers=4,int cap=12) {
    TemporalReachabilityConfig config;
    config.horizon_frames=horizon;
    config.step_frames=step;
    config.max_layers=layers;
    config.max_states_per_layer=cap;
    config.max_total_states=cap*16;
    config.max_seconds=0.5;
    config.max_memory_bytes=4u*1024u*1024u;
    config.max_representative_paths=2;
    config.danger.max_slices=8;
    return config;
}
TemporalReachabilityResult reachability_of(const Frame& frame,
    TemporalReachabilityConfig config) {
    const auto snapshot=WorldStateBridge::snapshot(frame,nullptr,nullptr);
    ForwardSimConfig sim;
    sim.horizon_frames=config.horizon_frames;
    sim.early_terminate=false;
    sim.danger_map=false;
    ForwardSimulator root(sim);
    std::string error;
    if(!root.restore(snapshot,&error))return {};
    return search_temporal_reachability(root,config);
}
int grid_cell(const Grid& grid,Vec point) {
    const int x=int(std::floor((point.x-40.0)/40.0));
    const int y=int(std::floor((point.y-120.0)/40.0));
    if(x<0||y<0||x>=grid.width||y>=grid.height)return -1;
    return y*grid.width+x;
}
Frame reachability_frame(int enemies,int projectiles) {
    auto f=frame();
    f.grid.width=28;
    f.grid.height=16;
    f.grid.cells.assign(28*16,Cell{});
    f.player.body.pos={640,360};
    f.player.body.radius=10;
    f.player.max_speed=260;
    f.player.health=6;
    for(int i=0;i<enemies;++i) {
        auto e=enemy({120.0+double(i%8)*120.0,180.0+double(i/8)*240.0},
            {60.0,0});
        e.address=uint32_t(0x30000+i*16);
        e.radius=16;
        e.collision=2;
        f.entities.push_back(e);
    }
    for(int i=0;i<projectiles;++i) {
        auto b=bullet({100.0+double(i%14)*70.0,150.0+double(i/14)*90.0},
            {120.0,20.0});
        b.address=uint32_t(0x50000+i*16);
        b.radius=6;
        f.entities.push_back(b);
    }
    return f;
}
HazardState temporal_hazard_state(Vec pos,double radius,double from,double until) {
    HazardState hazard;
    hazard.kind=HazardKind::laser;
    hazard.pos=pos;
    hazard.radius=radius;
    hazard.start=from;
    hazard.until=until;
    hazard.damage=1;
    hazard.damage_class=DamageClass::laser;
    hazard.damage_timing=DamageTiming::window;
    hazard.shape=Shape::disc;
    hazard.precision=Precision::exact;
    return hazard;
}
struct FakeSink:KeyboardSink {
    Keys keys;bool fail{};int changes{};
    bool transition(const Keys&,const Keys& after)override{++changes;if(fail)return false;keys=after;return true;}
};
class FlatMemory:public Memory {
    std::vector<uint8_t> bytes_=std::vector<uint8_t>(0x200000);
public:
    void copy(uint32_t address,void*out,size_t count)const override {
        if(uint64_t(address)+count>bytes_.size())throw std::runtime_error("Unmapped fixture address");
        std::memcpy(out,bytes_.data()+address,count);
    }
    template<class T>void put(uint32_t address,T value) {CHECK(uint64_t(address)+sizeof value<=bytes_.size());std::memcpy(bytes_.data()+address,&value,sizeof value);}
    void entity(uint32_t address,int type,Vec p) {
        put<int>(address+0x28,type);put<uint8_t>(address+0x170,1);put<uint8_t>(address+0x171,1);put<uint8_t>(address+0x172,1);
        put<float>(address+0x33c,float(p.x));put<float>(address+0x340,float(p.y));put<float>(address+0x370,10);
        put<float>(address+0x380,10);put<float>(address+0x388,1);put<int>(address+0x188,2);put<uint32_t>(address+0x3ec,address);
    }
};
class CapturedMemory:public Memory {
    std::vector<std::pair<uint32_t,std::vector<uint8_t>>> segments_;
public:
    explicit CapturedMemory(const json& fixture) {
        for(const auto& s:fixture.at("segments")) {
            auto hex=s.at("hex").get<std::string>();std::vector<uint8_t> bytes;
            CHECK(hex.size()%2==0);
            for(size_t i=0;i<hex.size();i+=2)bytes.push_back(uint8_t(std::stoul(hex.substr(i,2),nullptr,16)));
            segments_.emplace_back(s.at("address").get<uint32_t>(),std::move(bytes));
        }
    }
    void copy(uint32_t address,void*out,size_t count)const override {
        if(!count)return;
        for(const auto&[base,bytes]:segments_)if(address>=base&&uint64_t(address)+count<=uint64_t(base)+bytes.size()) {
            std::memcpy(out,bytes.data()+address-base,count);return;
        }
        throw std::runtime_error("Native fixture missing read at "+std::to_string(address)+" size "+std::to_string(count));
    }
};
std::shared_ptr<FlatMemory> fixture() {
    auto m=std::make_shared<FlatMemory>();
    constexpr uint32_t game=0x10000,manager=0x90000,room=0xa0000,player=0xc0000,monster=0xd0000;
    m->put<uint32_t>(0x8000,game);m->put<uint32_t>(0x8004,manager);m->put<int>(manager+8,2);
    m->put<uint32_t>(game+0x264f8,100);m->put<uint32_t>(game+0x18300,room);
    m->put<int>(room+0xc,15);m->put<int>(room+0x10,9);m->put<uint32_t>(room+4,0xb0000);
    m->put<uint32_t>(0xb0000+0x10,0xb0300);m->put<int>(0xb0300+0x48,1);
    m->put<uint32_t>(game+0x1baa8,0xb0100);m->put<uint32_t>(game+0x1baac,0xb0104);m->put<uint32_t>(game+0x1bab0,0xb0104);m->put<uint32_t>(0xb0100,player);
    m->put<uint32_t>(room+0x1218+0x20+4,0xb0200);m->put<uint32_t>(room+0x1218+0x20+8,2);m->put<uint32_t>(room+0x1218+0x20+12,2);
    m->put<uint32_t>(0xb0200,player);m->put<uint32_t>(0xb0204,monster);
    m->entity(player,1,{320,280});m->entity(monster,10,{500,280});
    m->put<uint8_t>(player+0x410,1);m->put<float>(player+0x1568,1);m->put<float>(player+0x1464,1);m->put<float>(player+0x1480,260);
    m->put<uint8_t>(player+0x1825,1);m->put<int>(player+0x1344,6);
    m->put<uint32_t>(player+0x13dc,0xe0000);m->put<uint32_t>(0xe0000,0x7815d0);m->put<uint32_t>(0xe0004,player);m->put<float>(0xe0010,10);m->put<int>(0xe0030,1);
    return m;
}
std::filesystem::path semantics_path() {
    wchar_t path[32768];DWORD n=GetModuleFileNameW(nullptr,path,32768);
    CHECK(n>0&&n<32768);
    return MechanismSemantics::default_path(std::filesystem::path(std::wstring(path,n)).parent_path());
}
}
int main(int argc,char**argv) {
    std::vector<std::pair<std::string,std::function<void()>>> cases;
    auto test=[&](std::string name,std::function<void()> fn){cases.emplace_back(std::move(name),std::move(fn));};
    if(argc>2)for(int shape=1;shape<=12;++shape) {
        auto name="shape-"+std::string(shape<10?"0":"")+std::to_string(shape)+".json";
        auto path=std::filesystem::path(argv[2])/name;
        test("original native room shape "+std::to_string(shape),[path,shape]{
            std::ifstream input(path);CHECK(bool(input));json fixture;input>>fixture;
            CHECK(fixture.at("case").at("shape")==shape);
            auto memory=std::make_shared<CapturedMemory>(fixture);
            Reader reader(memory,{0x400000,0x871678,0x87169c,0x264f8,"native J460 room snapshot"},123);
            auto f=reader.capture(1000);
            if(!f.valid)throw std::runtime_error(f.error);
            CHECK(f.has_player&&f.grid.valid);CHECK(f.grid.width==fixture.at("case").at("width"));
            CHECK(f.grid.shape==shape);
            CHECK(f.grid.height==fixture.at("case").at("height"));
            CHECK(f.grid.cells.size()==size_t(f.grid.width*f.grid.height));
            CHECK(Planner().decide(f).valid);
            int solid=0,floor=0;
            for(size_t i=0;i<f.grid.cells.size();++i) {
                const auto& c=f.grid.cells[i];auto p=f.grid.center(int(i));
                if(c.collision>=2) {++solid;CHECK(!f.grid.walkable(p,10,false));}
                else if(!c.collision&&!c.danger&&f.grid.walkable(p,10,false))++floor;
            }
            CHECK(solid>0&&floor>0);
            // L-shaped cutouts and narrow-room margins must not become floor.
            if(shape>=9) {
                int x=(shape==9||shape==11)?3:24,y=shape<=10?3:12;
                CHECK(!f.grid.walkable(f.grid.center(y*f.grid.width+x),10,false));
            }
            if(shape==2||shape==7)CHECK(!f.grid.walkable(f.grid.center(f.grid.width+7),10,false));
            if(shape==3||shape==5)CHECK(!f.grid.walkable(f.grid.center(3*f.grid.width+2),10,false));
        });
    }
    test("continuous collision catches inter-sample crossing",[]{CHECK(moving_clearance({0,0},{0,0},{-100,0},{100,0},5)<0);CHECK(moving_clearance({0,20},{0,20},{-100,0},{100,0},5)>0);});
    test("moving capsule crossing",[]{Threat t;t.shape=Shape::capsule;t.pos={0,0};t.end={100,0};t.radius=2;CHECK(t.clearance({50,-20},{50,20},0,.1,4)<0);CHECK(t.clearance({120,-20},{120,20},0,.1,4)>0);});
    test("ring hole is safe but ring crossing is not",[]{Threat t;t.shape=Shape::ring;t.pos={};t.end={100,0};t.radius=5;CHECK(t.clearance({0,0},{20,0},0,.1,5)>0);CHECK(t.clearance({80,0},{120,0},0,.1,5)<0);});
    test("timed threat absent before activation",[]{Threat t;t.pos={};t.radius=100;t.start=.5;CHECK(t.clearance({0,0},{0,0},0,.1,5)>1000);CHECK(t.clearance({0,0},{0,0},.5,.6,5)<0);});
    test("curved trajectory integrates velocity",[]{Threat t;t.vel={100,0};t.angular_speed=pi;CHECK(distance(t.at(.5),{100/pi,100/pi})<.001);});
    test("route rank is a transitive fixed-key order",[]{
        std::array<RouteRank,6> ranks{{
            {0,0,20,1},{0,0,20,5},{0,0,10,100},
            {0,1,1000,1000},{1,0,1000,1000},{2,0,0,0}
        }};
        auto less=[&](int a,int b){return route_rank_less(ranks[a],ranks[b],false);};
        for(int a=0;a<6;++a)for(int b=0;b<6;++b) {
            CHECK(!(less(a,b)&&less(b,a)));
            for(int c=0;c<6;++c)if(less(a,b)&&less(b,c))CHECK(less(a,c));
        }
        CHECK(route_rank_less({0,0,0,0},{1,1000,1000,1000},true));
        CHECK(route_rank_less({0,1,1000,0},{0,2,0,1000},true));
    });
    test("native player motion matches calibrated two-substep trajectory",[]{
        Player player;player.max_speed=260;Vec pos{320,400},vel{};
        for(int tick=0;tick<20;++tick)advance_native_player_motion(player,pos,vel,Move::east,1.0/30);
        CHECK(std::abs(pos.x-459.9048767089844)<1e-5);CHECK(std::abs(pos.y-400)<1e-9);
        CHECK(std::abs(vel.x-263.2361698150635)<1e-5);CHECK(std::abs(vel.y)<1e-9);
        for(int tick=0;tick<15;++tick)advance_native_player_motion(player,pos,vel,Move::stay,1.0/30);
        CHECK(std::abs(pos.x-495.7684020996094)<1e-5);CHECK(std::abs(vel.x-5.7526856660842896)<1e-5);
    });
    test("polyline laser geometry checks every native sample segment",[]{
        Threat threat;threat.shape=Shape::polyline;threat.pos={0,0};threat.radius=2;
        threat.geometry_path={{0,0},{100,0},{100,100}};
        CHECK(threat.clearance({50,-20},{50,20},0,.1,4)<0);
        CHECK(threat.clearance({120,50},{80,50},0,.1,4)<0);
        CHECK(threat.clearance({50,150},{50,180},0,.1,4)>0);
    });
    test("grid blocks walls pits and spikes",[]{auto f=frame();CHECK(f.grid.walkable({320,280},10,false));auto&c=f.grid.cells[4*15+7];c.collision=1;CHECK(!f.grid.walkable({320,280},10,false));CHECK(f.grid.walkable({320,280},10,true));c.collision=3;CHECK(!f.grid.walkable({320,280},10,true));c.collision=0;c.danger=true;CHECK(!f.grid.walkable({320,280},10,false));});
    test("narrow and L room shape masks block missing floor even for flying players",[]{
        for(int shape:{2,3,5,7,9,10,11,12}) {
            Grid g;g.shape=shape;g.width=shape<=5?15:28;g.height=shape==5||shape>=9?16:9;g.valid=true;g.cells.resize(g.width*g.height);
            int x=7,y=1;if(shape==3||shape==5){x=2;y=3;}
            if(shape>=9){x=shape==9||shape==11?3:24;y=shape<=10?3:12;}
            auto missing=g.center(y*g.width+x);
            CHECK(!g.inside_shape(y*g.width+x));CHECK(!g.walkable(missing,10,false));CHECK(!g.walkable(missing,10,true));
            Vec floor=shape==3||shape==5?Vec{320,280}:shape>=9?g.center((shape<=10?12:3)*g.width+(shape==9||shape==11?24:3)):Vec{320,280};
            CHECK(g.walkable(floor,10,false));CHECK(!g.shot_clear(floor,missing));
        }
    });
    test("native reader rejects unavailable shape instead of treating cutouts as floor",[]{
        auto m=fixture();m->put<int>(0xb0300+0x48,0);Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);
        auto f=r.capture(1000);CHECK(!f.valid);CHECK(f.error.find("Room shape unavailable")!=std::string::npos);
    });
    test("greed pressure plate is danger only while its wave timer is active",[]{
        auto m=fixture();constexpr uint32_t room=0xa0000,plate=0xf0000;const int index=4*15+7;
        m->put<uint32_t>(room+0x24+index*4,plate);
        m->put<int>(plate+4,20);m->put<int>(plate+8,2);m->put<int>(plate+12,0);m->put<int>(plate+0x3c,0);
        m->put<int>(room+0x723c,-1);
        Reader reader(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);
        auto idle=reader.capture(1000);
        CHECK(idle.valid);CHECK(!idle.grid.cells[index].danger);
        m->put<int>(room+0x723c,0);
        auto spawning=reader.capture(1001);
        CHECK(spawning.valid);CHECK(spawning.grid.cells[index].danger);
        m->put<int>(room+0x723c,120);
        auto active=reader.capture(1002);
        CHECK(active.valid);CHECK(active.grid.cells[index].danger);
        CHECK(!active.grid.walkable({320,280},10,false));
    });
    test("native reader reserves retracted spike cells for ordinary ground movement",[]{
        auto m=fixture();constexpr uint32_t room=0xa0000,spike=0xf0000;const int index=4*15+7;
        m->put<uint32_t>(room+0x24+index*4,spike);
        m->put<int>(spike+4,9);m->put<int>(spike+8,0);m->put<int>(spike+12,1);m->put<int>(spike+0x3c,0);
        Reader reader(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);
        auto f=reader.capture(1000);Vec center=f.grid.center(index);
        CHECK(f.valid);CHECK(f.grid.cells[index].danger);
        CHECK(!f.grid.walkable(center,10,false));CHECK(f.grid.walkable(center,10,true));
    });
    test("planner routes around an active Greed pressure plate",[]{
        auto f=frame();auto&plate=f.grid.cells[4*15+8];
        plate.type=20;plate.variant=2;plate.danger=true;
        f.entities={enemy()};
        Planner planner;auto decision=planner.decide(f);
        CHECK(decision.valid);
        for(Vec point:decision.path)CHECK(f.grid.clearance(point,f.player.body.radius,false)>=-1e-6);
    });
    test("ordinary pressure plate becomes a traversable room objective",[]{
        auto f=frame();const int index=4*15+10;auto&plate=f.grid.cells[index];
        plate.type=20;plate.variant=0;plate.state=0;plate.collision=0;
        CHECK(f.grid.walkable(f.grid.center(index),f.player.body.radius,false));
        PlannerConfig config;config.diagnostics=true;Planner planner(config);
        auto decision=planner.decide(f);
        CHECK(decision.pressure_plate_mode);CHECK(!decision.pressure_plates_complete);
        CHECK(decision.pressure_plates_remaining==1);
        CHECK(distance(decision.pressure_plate_goal,f.grid.center(index))<1e-6);
        CHECK(distance(decision.path.back(),decision.pressure_plate_goal)<
              distance(f.player.body.pos,decision.pressure_plate_goal));
        CHECK(decision.target==0);
    });
    test("pressure mechanism suppresses combat until all plates trigger",[]{
        auto f=frame();auto&plate=f.grid.cells[4*15+10];
        plate.type=20;plate.variant=0;plate.state=0;plate.collision=0;
        f.entities={enemy({520,280})};
        Planner planner;auto pending=planner.decide(f);
        CHECK(pending.pressure_plate_mode);CHECK(!pending.target);CHECK(pending.fire==Fire::none);
        plate.state=3;f.pressure_plates_triggered=true;f.clear_flags=2;
        ++f.clock;auto armed=planner.decide(f);
        CHECK(!armed.pressure_plate_mode);CHECK(armed.target==f.entities[0].address);
        CHECK(armed.fire==Fire::right);
    });
    test("silver buttons require native pressed state and room completion flag",[]{
        auto f=frame();const int first=4*15+7,second=4*15+10;
        auto& a=f.grid.cells[first];auto& b=f.grid.cells[second];
        a.type=b.type=20;a.variant=b.variant=0;
        f.player.body.pos=f.grid.center(first);
        Planner planner;
        for(int state:{0,1,2}) {
            a.state=state;f.clock+=30;auto d=planner.decide(f);
            CHECK(d.button_kind=="silver"&&d.pressure_plate_mode);
            CHECK(d.pressure_plates_remaining==2&&!d.pressure_plates_complete);
        }
        a.state=3;++f.clock;CHECK(planner.decide(f).pressure_plates_remaining==1);
        b.state=3;++f.clock;auto waiting=planner.decide(f);
        CHECK(waiting.pressure_plate_mode&&!waiting.pressure_plates_complete);
        f.pressure_plates_triggered=true;f.clear_flags=2;++f.clock;
        auto done=planner.decide(f);CHECK(!done.pressure_plate_mode&&done.pressure_plates_complete);
    });
    test("red kill button has priority and preserves real post-button hazards",[]{
        auto f=frame();auto& red=f.grid.cells[4*15+10];red.type=20;red.variant=9;
        auto& silver=f.grid.cells[4*15+6];silver.type=20;silver.variant=0;
        auto explosive=enemy({160,200});explosive.type=25;f.entities={explosive};
        Planner planner;auto pending=planner.decide(f);
        CHECK(pending.button_kind=="kill"&&pending.pressure_plate_mode);
        CHECK(distance(pending.pressure_plate_goal,f.grid.center(4*15+10))<1e-6);
        CHECK(!pending.target&&pending.fire==Fire::none&&!pending.kill_button_triggered);
        red.state=3;++f.clock;f.entities.clear();
        auto after=planner.decide(f);
        CHECK(after.kill_button_triggered&&after.button_kind=="silver");
        CHECK(std::any_of(planner.threats().begin(),planner.threats().end(),
            [](const Threat& t){return t.kind=="death-blast";}));
        silver.type=0;f.entities={bullet({500,400},{-120,0})};++f.clock;
        auto residual=planner.decide(f);CHECK(!residual.pressure_plate_mode&&residual.kill_button_triggered);
        CHECK(std::any_of(planner.threats().begin(),planner.threats().end(),
            [](const Threat& t){return t.kind=="projectile";}));
        planner.reset();CHECK(!planner.decide(frame()).kill_button_triggered);
    });
    test("planner remembers retracted grid hazards while routing",[]{
        auto f=frame();const int hazard=4*15+8,plate=4*15+10;
        f.grid.cells[hazard].type=9;f.grid.cells[hazard].danger=true;
        f.grid.cells[plate].type=20;f.grid.cells[plate].variant=0;f.grid.cells[plate].collision=0;
        Planner planner;auto first=planner.decide(f);CHECK(first.valid);
        f.grid.cells[hazard].type=0;f.grid.cells[hazard].danger=false;
        ++f.clock;auto second=planner.decide(f);CHECK(second.valid);
        f.grid.cells[hazard].danger=true;
        for(Vec point:second.path)CHECK(f.grid.clearance(point,f.player.body.radius,false)>=-1e-6);
    });
    test("triggered pressure plates switch the objective off and disable Brimstone Heads",[]{
        auto f=frame();f.cleared=true;f.clear_flags=3;f.pressure_plates_triggered=true;
        auto&plate=f.grid.cells[4*15+10];plate.type=20;plate.variant=0;plate.state=3;plate.collision=0;
        auto head=enemy({400,280});head.type=203;head.invulnerable=true;head.collision=4;head.damage=1;
        f.entities={head};
        Planner planner;auto decision=planner.decide(f);
        CHECK(!decision.pressure_plate_mode);CHECK(decision.pressure_plates_complete);
        CHECK(decision.pressure_plates_remaining==0);
        CHECK(!decision.target&&decision.fire==Fire::none);
        CHECK(decision.move==Move::stay);CHECK(planner.threats().empty());
    });
    test("invulnerable Brimstone Head is never a shooting target",[]{
        auto f=frame();auto head=enemy();head.type=203;head.invulnerable=true;
        f.entities={head};CHECK(!Planner().aim(f,f.player.body.pos).target);
    });
    test("invulnerable room mechanisms do not trigger combat navigation",[]{
        auto f=frame();std::vector<Entity> mechanisms;
        for(int type:{42,201,202,203,212,235,236,804,809}) {
            auto mechanism=enemy({420+double(mechanisms.size())*10,280});
            mechanism.type=type;mechanism.address+=uint32_t(mechanisms.size()+1);
            mechanism.invulnerable=true;mechanism.damage=0;mechanism.collision=4;
            mechanisms.push_back(mechanism);
        }
        f.entities=mechanisms;PlannerConfig config;config.navigation_escalation_frames=1;
        Planner planner(config);auto decision=planner.decide(f);
        CHECK(!decision.target);CHECK(decision.fire==Fire::none);CHECK(decision.move==Move::stay);
        CHECK(!decision.navigation_boost);
        CHECK(decision.reason.find("Only room mechanisms remain")!=std::string::npos);
        ++f.clock;CHECK(!planner.decide(f).navigation_boost);
    });
    test("pressure completion disables registered traps and retains other hostile contacts",[]{
        auto f=frame();f.pressure_plates_triggered=true;f.clear_flags=2;
        auto&plate=f.grid.cells[4*15+10];plate.type=20;plate.variant=0;plate.state=3;
        auto mechanism=enemy({360,280});mechanism.type=42;mechanism.invulnerable=true;
        mechanism.damage=1;mechanism.collision=4;f.entities={mechanism};
        Planner armed;armed.decide(f);
        CHECK(armed.threats().empty());
        f.pressure_plates_triggered=false;f.clear_flags=0;Planner pending;
        pending.decide(f);
        CHECK(std::any_of(pending.threats().begin(),pending.threats().end(),
            [](const Threat&threat){return threat.kind=="contact";}));
        f.pressure_plates_triggered=true;f.clear_flags=2;
        f.entities[0].type=212;++f.clock;armed.decide(f);
        CHECK(std::any_of(armed.threats().begin(),armed.threats().end(),
            [](const Threat& threat){return threat.kind=="contact"&&threat.type==212;}));
    });
    test("swept terrain does not tunnel",[]{auto f=frame();f.grid.cells[4*15+7].collision=3;CHECK(!f.grid.sweep_clear({240,280},{400,280},10,false));});
    test("overlapping player can move out of terrain",[]{auto f=frame();f.player.body.pos={180,227};f.grid.cells[2*15+3].collision=3;Planner p;auto d=p.decide(f);CHECK(d.valid);CHECK(!d.stop);CHECK(d.move!=Move::stay);});
    test("deep overlap has a recovery gradient and permits an exit",[]{
        auto f=frame();f.grid.cells[4*15+7].collision=3;
        CHECK(f.grid.clearance({320,280},10,false)<f.grid.clearance({335,280},10,false));
        auto d=Planner().decide(f);CHECK(d.valid&&!d.stop);CHECK(d.move!=Move::stay);
        CHECK(f.grid.walkable(d.path.back(),10,false));
    });
    test("tiny inward residual velocity does not deadlock terrain recovery",[]{
        auto f=frame();f.player.body.pos={double(float(425.11734)),double(float(261.13196))};f.player.body.vel={-.002,-.001};
        f.grid.cells[3*15+9].collision=3;
        CHECK(f.grid.clearance(f.player.body.pos,10,false)<0);
        auto d=Planner().decide(f);CHECK(d.valid&&!d.stop);
        CHECK(f.grid.walkable(d.path.back(),10,false));
    });
    test("corner recovery slides without deepening either overlapping obstacle",[]{
        auto f=frame();f.player.body.pos={349,269};f.player.body.vel={-60,60};
        f.grid.cells[4*15+7].collision=3;f.grid.cells[3*15+8].collision=3;
        auto d=Planner().decide(f);CHECK(d.valid&&!d.stop);
        double previous=f.grid.clearance(f.player.body.pos,10,false);CHECK(previous<0);
        for(Vec point:d.path) {
            double next=f.grid.clearance(point,10,false);
            if(previous<0)CHECK(next>=previous-1e-6);
            else CHECK(next>=-1e-6);
            previous=next;
        }
        CHECK(f.grid.walkable(d.path.back(),10,false));
    });
    test("destroyed red poop is not retained as a permanent grid hazard",[]{
        auto f=frame();auto& poop=f.grid.cells[4*15+8];poop.type=14;poop.variant=1;poop.danger=true;
        auto& plate=f.grid.cells[4*15+10];plate.type=20;plate.variant=0;
        Planner p;p.decide(f);poop={};f.clock+=3;auto d=p.decide(f);
        CHECK(d.valid&&!d.stop);CHECK(std::any_of(d.path.begin(),d.path.end(),
            [&](Vec point){return distance(point,f.grid.center(4*15+8))<20;}));
    });
    test("hop landing covers the native Walk event for Monstro II and Gish",[]{
        for(int variant:{0,1}) {
            auto f=frame();auto e=enemy({400,280});e.type=43;e.variant=variant;e.collision=0;
            e.radius=35;e.animation="Walk";e.animation_frame=22;e.target_pos={440,280};e.vel={240,0};f.entities={e};
            Planner p;p.decide(f);auto it=std::find_if(p.threats().begin(),p.threats().end(),
                [](const Threat& t){return t.kind=="boss-hop-landing";});
            CHECK(it!=p.threats().end());CHECK(it->clearance({440,280},{440,280},.04,.05,10)<0);
            CHECK(it->clearance({440,280},{440,280},0,.01,10)>1000);
            CHECK(it->clearance({440,280},{440,280},.15,.16,10)<0);
        }
    });
    test("Blighted Ovum laser warns before its first native collision",[]{
        auto f=frame();auto e=enemy({450,300});e.type=79;e.variant=12;e.state=8;
        e.animation="Attack01";e.animation_frame=5;e.ai_v1={-1,0};f.entities={e};
        Planner p;p.decide(f);auto it=std::find_if(p.threats().begin(),p.threats().end(),
            [](const Threat& t){return t.kind=="boss-laser-windup";});
        CHECK(it!=p.threats().end());CHECK(it->clearance({320,280},{320,280},.34,.35,10)<0);
        f.entities[0].variant=11;Planner other;other.decide(f);
        CHECK(std::none_of(other.threats().begin(),other.threats().end(),[](const Threat& t){return t.kind=="boss-laser-windup";}));
    });
    test("Bumbino swipe envelope follows native sprite flip and expires",[]{
        for(bool flip:{false,true}) {
            auto f=frame();auto e=enemy({320,280});e.type=916;e.state=8;e.animation="Swipe";
            e.animation_frame=14;e.sprite_flip_x=flip;f.entities={e};Planner p;p.decide(f);
            auto it=std::find_if(p.threats().begin(),p.threats().end(),[](const Threat& t){return t.kind=="bumbino-swipe";});
            CHECK(it!=p.threats().end());CHECK(it->pos.x==(flip?382:258));
            Vec corner=it->pos+Vec{80,80};CHECK(it->clearance(corner,corner,.04,.05,10)<0);
            f.entities[0].animation_frame=17;++f.clock;p.decide(f);
            CHECK(std::none_of(p.threats().begin(),p.threats().end(),[](const Threat& t){return t.kind=="bumbino-swipe";}));
        }
    });
    test("Bumbino swipe motion matches the captured native deceleration",[]{
        auto f=frame();auto e=enemy({314.4565124511719,285.5213317871094},{-74.47960138320923,74.1822338104248});
        e.type=916;e.state=8;e.animation="Swipe";e.animation_frame=1;f.entities={e};
        Planner p;p.decide(f);auto it=std::find_if(p.threats().begin(),p.threats().end(),
            [](const Threat& t){return t.kind=="bumbino-swipe";});
        CHECK(it!=p.threats().end());
        CHECK(distance(it->at(1.0/30),{312.47039794921875-62,287.49951171875})<.001);
        CHECK(distance(it->at(.5),it->pos)<15);
    });
    test("Adversary landing and first laser follow captured native friction",[]{
        for(bool laser:{false,true}) {
            auto f=frame();auto e=enemy({225.56468200683594,324.3915100097656},{-98.27199697494507,1.2378526479005814});
            e.type=268;e.state=laser?8:6;e.collision=0;e.animation=laser?"Attack2Left":"FlyDown";
            e.animation_frame=laser?25:1;e.ai_i1=0;f.entities={e};Planner p;p.decide(f);
            auto it=std::find_if(p.threats().begin(),p.threats().end(),[&](const Threat& t){
                return t.kind==(laser?"boss-laser-windup":"adversary-landing");});
            CHECK(it!=p.threats().end());Vec offset=laser?Vec{-30,-25}:Vec{};
            CHECK(distance(it->at(1.0/30),Vec{222.78030395507812,324.42657470703125}+offset)<.001);
        }
    });
    test("ground effects separate hostile clouds and flying-safe spikes",[]{
        auto f=frame();Entity e;e.type=1000;e.variant=141;e.damage=3.5;e.address=501;e.pos={360,280};
        f.entities={e};Planner neutral;neutral.decide(f);CHECK(neutral.threats().empty());
        f.entities[0].hostile_source=true;Planner hostile;hostile.decide(f);
        CHECK(std::any_of(hostile.threats().begin(),hostile.threats().end(),[](const Threat& t){return t.kind=="hostile-poison-smoke";}));
        f.entities[0].variant=55;f.player.flying=true;Planner flying;flying.decide(f);CHECK(flying.threats().empty());
        f.player.flying=false;Planner ground;ground.decide(f);
        CHECK(std::any_of(ground.threats().begin(),ground.threats().end(),[](const Threat& t){return t.kind=="womb-spike";}));
    });
    test("hostile effect attribution survives owner removal and resets on friendliness or seed reuse",[]{
        for(int variant:{141,147}) {
            auto f=frame();Entity e;e.type=1000;e.variant=variant;e.damage=3.5;e.address=501;e.seed=17;
            e.pos={360,280};e.hostile_source=true;f.entities={e};Planner p;p.decide(f);
            f.entities[0].hostile_source=false;++f.clock;p.decide(f);CHECK(!p.threats().empty());
            ++f.clock;p.decide(f);CHECK(!p.threats().empty());
            f.entities[0].friendly=true;++f.clock;p.decide(f);CHECK(p.threats().empty());
            f.entities[0].friendly=false;++f.clock;p.decide(f);CHECK(p.threats().empty());
            f.entities[0].hostile_source=true;++f.clock;p.decide(f);CHECK(!p.threats().empty());
            f.entities[0].hostile_source=false;++f.entities[0].seed;++f.clock;p.decide(f);CHECK(p.threats().empty());
        }
    });
    test("homing bomb spacing is a preference before the real fuse expires",[]{
        auto f=frame();Entity e;e.type=4;e.variant=4;e.timeout=120;e.blast_radius=80;e.pos={350,280};
        f.entities={e};Planner p;auto d=p.decide(f);CHECK(d.valid&&d.safe);
        CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat& t){return t.kind=="homing-bomb-space"&&t.soft;}));
    });
    test("native reader exports sprite facing for animation hitboxes",[]{
        auto m=fixture();m->put<uint8_t>(0xd0000+0x148,1);
        Reader reader(m,{0,0x8000,0x8004,0x264f8,"fixture"},1);auto f=reader.capture(0);
        CHECK(f.valid);auto e=std::find_if(f.entities.begin(),f.entities.end(),[](const Entity& e){return e.address==0xd0000;});
        CHECK(e!=f.entities.end()&&e->sprite_flip_x);CHECK(json(*e).get<Entity>().sprite_flip_x);
    });
    test("four cardinal firing channels",[]{for(auto fire:{Fire::up,Fire::right,Fire::down,Fire::left}){auto f=frame();f.entities={enemy(f.player.body.pos+direction(fire)*100)};auto a=Planner().aim(f,f.player.body.pos);CHECK(a.can_fire);CHECK(a.fire==fire);}});
    test("crossing target is hit at tear arrival",[]{for(double dx:{-180.0,180.0})for(double vy:{-120.0,120.0}){auto f=frame();f.entities={enemy({320+dx,280-vy*.5},{0,vy})};auto a=Planner().aim(f,f.player.body.pos);CHECK(a.can_fire);Vec tear=f.player.body.pos,target=f.entities[0].pos;for(int i=0;i<60;++i){tear=tear+direction(a.fire)*3;target=target+Vec{0,vy/120};}CHECK(distance(tear,target)<1);}});
    test("target leaving lane is not fired at",[]{auto f=frame();f.entities={enemy({500,280},{0,120})};CHECK(!Planner().aim(f,f.player.body.pos).can_fire);});
    test("outrunning target has no intercept",[]{auto f=frame();f.entities={enemy({500,280},{500,0})};CHECK(!Planner().aim(f,f.player.body.pos).can_fire);});
    test("close crossing never reverses aim",[]{auto f=frame();f.entities={enemy({290,280},{600,0})};auto a=Planner().aim(f,f.player.body.pos);CHECK(a.fire==Fire::left);});
    test("target-specific aim does not switch to another enemy",[]{auto f=frame();auto near=enemy({320,400});near.address=101;auto far=enemy({400,280});far.address=202;f.entities={near,far};auto a=Planner().aim_at(f,f.player.body.pos,far.address);CHECK(a.target==far.address);CHECK(a.can_fire);CHECK(a.fire==Fire::right);});
    test("future shot path checks blocking rock",[]{auto f=frame();f.entities={enemy({400,280},{120,0})};f.grid.cells[4*15+10].collision=3;CHECK(f.grid.shot_clear({320,280},{400,280}));CHECK(!Planner().aim(f,f.player.body.pos).can_fire);});
    test("clears first destructible blocker then attacks enemy",[]{auto f=frame();f.entities={enemy()};auto&cell=f.grid.cells[4*15+10];cell.type=14;cell.collision=3;cell.destructible=true;Planner p;auto a=p.aim(f,f.player.body.pos);CHECK(a.can_fire);CHECK(a.fire==Fire::right);CHECK(a.target>=0xf0000000u);CHECK(a.point.x==440);cell.collision=0;cell.destructible=false;auto opened=p.aim(f,f.player.body.pos);CHECK(opened.can_fire);CHECK(opened.target==f.entities[0].address);});
    test("does not clear TNT by ordinary shooting",[]{auto f=frame();f.entities={enemy()};auto&cell=f.grid.cells[4*15+10];cell.type=12;cell.collision=3;cell.destructible=true;CHECK(!Planner().aim(f,f.player.body.pos).can_fire);});
    test("friendly invulnerable no-target not attacked",[]{for(int type=0;type<3;++type){auto f=frame();auto e=enemy();if(type==0)e.friendly=true;if(type==1)e.invulnerable=true;if(type==2)e.no_target=true;f.entities={e};CHECK(!Planner().aim(f,f.player.body.pos).target);}});
    test("no-target still creates contact threat",[]{auto f=frame();auto e=enemy({360,280},{-120,0});e.no_target=true;f.entities={e};Planner p;auto d=p.decide(f);CHECK(!d.target);CHECK(!p.threats().empty());CHECK(std::find(d.threat_kinds.begin(),d.threat_kinds.end(),"contact")!=d.threat_kinds.end());});
    test("research diagnostics record alternatives without changing the decision",[]{auto f=frame();f.entities={enemy({360,280},{-120,0}),bullet({350,280},{-240,0})};Planner plain;auto expected=plain.decide(f);PlannerConfig c;c.diagnostics=true;Planner diagnosed(c);auto actual=diagnosed.decide(f);CHECK(actual.move==expected.move);CHECK(actual.safe==expected.safe);CHECK(actual.target==expected.target);CHECK(actual.collision_cost==expected.collision_cost);CHECK(actual.analysis.moves.size()==9);CHECK(!actual.analysis.cause.empty());CHECK(std::any_of(actual.analysis.moves.begin(),actual.analysis.moves.end(),[](const MoveEvaluation&e){return e.has_route;}));});
    test("navigation escalation tracks living enemies that are temporarily untargetable",[]{auto f=frame();auto e=enemy({500,280});e.collision=0;auto summoned=e;summoned.address=0x30001;summoned.seed=2;f.entities={e,summoned};PlannerConfig c;c.navigation_escalation_frames=4;Planner p(c);CHECK(!p.decide(f).navigation_boost);++f.clock;CHECK(!p.decide(f).navigation_boost);++f.clock;f.entities={e};CHECK(!p.decide(f).navigation_boost);++f.clock;CHECK(!p.decide(f).navigation_boost);++f.clock;CHECK(p.decide(f).navigation_boost);f.entities.clear();++f.clock;CHECK(p.decide(f).navigation_boost);});
    test("navigation waypoint hold persists the first physical step",[]{auto f=frame();auto e=enemy({520,400},{40,0});f.entities={e};PlannerConfig c;c.diagnostics=true;c.navigation_escalation_frames=1;c.navigation_waypoint_hold=true;c.navigation_waypoint_frames=30;Planner p(c);p.decide(f);++f.clock;e.pos={520,390};f.entities={e};auto first=p.decide(f);CHECK(first.navigation_boost);CHECK(!first.analysis.navigation_waypoint_kept);Vec held=first.analysis.navigation_waypoint;CHECK(held.x!=0||held.y!=0);++f.clock;e.pos={520,380};f.entities={e};auto second=p.decide(f);CHECK(second.analysis.navigation_waypoint_kept);CHECK(distance(held,second.analysis.navigation_waypoint)<1e-6);int x=int(std::round((held.x-40)/40)),y=int(std::round((held.y-120)/40));f.grid.cells[y*f.grid.width+x].collision=1;++f.clock;e.pos={520,370};f.entities={e};auto blocked=p.decide(f);CHECK(!blocked.analysis.navigation_waypoint_kept);});
    test("contact safety margin expands the threat radius",[]{auto f=frame();auto e=enemy({360,280},{-120,0});f.entities={e};PlannerConfig c;c.contact_margin=6;Planner p(c);p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[&](const Threat&t){return t.kind=="contact"&&t.radius==e.radius+6;}));});
    test("monster geometry contact model supplies planner contact radius",[]{
        auto f=frame();auto e=enemy({360,280});e.radius=1;e.collision=4;e.damage=1;f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        const auto warning=std::find_if(m.warnings.begin(),m.warnings.end(),[](const auto&w){
            return w.kind=="contact"&&w.planning_validated;
        });CHECK(warning!=m.warnings.end());
        Planner planner;planner.decide(f,true,&m);
        const auto contact=std::find_if(planner.threats().begin(),planner.threats().end(),[](const auto&t){
            return t.kind=="contact";
        });CHECK(contact!=planner.threats().end());
        CHECK(contact->geometry_verified);
        // The native geometry radius replaces the frame radius; the planner's
        // contact safety margin is still added on top, as for every contact.
        CHECK(contact->radius==warning->radius+PlannerConfig{}.contact_margin);
    });
    test("monster geometry projectile model reaches the planner",[]{
        auto f=frame();auto source=enemy({320,220});source.type=14;source.variant=0;source.subtype=0;
        source.state=8;source.animation="Attack";source.animation_frame=7;
        auto projectile=enemy({320,240});projectile.type=9;projectile.variant=0;projectile.subtype=0;
        projectile.radius=2;projectile.vel={0,300};projectile.spawner=source.address;
        projectile.spawner_in_snapshot=true;f.entities={source,projectile};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        const auto model=std::find_if(m.geometry_models.begin(),m.geometry_models.end(),[&](const auto&r){
            return r.source==source.address&&r.kind=="projectile";
        });CHECK(model!=m.geometry_models.end());
        Planner planner;planner.decide(f,true,&m);
        const auto threat=std::find_if(planner.threats().begin(),planner.threats().end(),[&](const auto&t){
            return t.source==projectile.address&&t.kind=="projectile";
        });CHECK(threat!=planner.threats().end());
        CHECK(threat->geometry_verified);CHECK(threat->radius==model->radius);
    });
    test("bounded creep geometry uses the conservative radius bound",[]{
        auto f=frame();auto source=enemy({320,220});source.type=284;source.variant=0;source.subtype=0;
        auto creep=enemy({320,240});creep.type=1000;creep.variant=22;creep.subtype=0;
        creep.spawner=source.address;creep.spawner_in_snapshot=true;f.entities={source,creep};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        const auto model=std::find_if(m.geometry_models.begin(),m.geometry_models.end(),[](const auto&r){
            return r.source!=0&&r.kind=="creep";
        });CHECK(model!=m.geometry_models.end());CHECK(model->radius>=10);
    });
    test("radial geometry pattern creates pre-spawn projectile threats",[]{
        auto f=frame();auto e=enemy({320,320});e.type=881;e.variant=1;e.subtype=0;
        e.state=6;e.animation="Idle";e.animation_frame=3;e.target_pos={320,400};f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        Planner p;p.decide(f,true,&m);
        const auto radial=std::count_if(p.threats().begin(),p.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.shape==Shape::disc&&
                t.start>0&&std::abs(t.vel.norm()-210)<1;
        });CHECK(radial==4);
        CHECK(std::all_of(p.threats().begin(),p.threats().end(),[&](const Threat&t){
            return t.source!=e.address||t.kind!="projectile-burst"||t.geometry_verified;
        }));
        for(const auto&t:p.threats())if(t.kind=="projectile-burst")
            CHECK(distance(t.at(t.start),e.pos)<1e-6);
    });
    test("bounded radial phase emits the configured coverage samples",[]{
        auto f=frame();auto e=enemy({320,320});e.type=251;e.variant=0;e.subtype=0;
        e.state=8;e.animation="WalkVert";e.animation_frame=6;e.target_pos={320,340};f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        Planner p;p.decide(f,true,&m);
        CHECK(std::count_if(p.threats().begin(),p.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.shape==Shape::disc&&t.start>0;
        })==42);
    });
    test("bounded trigger window emits a swept launch envelope",[]{
        auto f=frame();auto e=enemy({320,320});e.state=8;e.animation="Attack";e.animation_frame=2;f.entities={e};
        MechanismFrame m;m.loaded=true;m.valid=true;m.pid=f.pid;m.room=f.room;m.clock=f.clock;
        MonsterGeometryRef model;model.source=e.address;model.kind="projectile";model.pattern="radial";
        model.pattern_center="source";model.source_state=8;model.source_animation="Attack";
        model.pattern_count=1;model.trigger_animation_frame_min=3;model.trigger_animation_frame_max=5;
        model.speed=100;model.radius=5;model.geometry_verified=true;m.geometry_models={model};
        Planner p;p.decide(f,true,&m);
        auto count=std::count_if(p.threats().begin(),p.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.shape==Shape::capsule&&t.start>0;
        });
        CHECK(count==1);
        CHECK(std::all_of(p.threats().begin(),p.threats().end(),[&](const Threat&t){
            return t.source!=e.address||t.kind!="projectile-burst"||
                (!t.timing_verified&&t.predictive&&t.confidence==.7&&
                 std::abs(distance(t.end,t.pos)-100.0*2.0/30.0)<1e-6);
        }));
        for(const auto&t:p.threats())if(t.kind=="projectile-burst") {
            CHECK(distance(t.at(t.start)+(t.end-t.pos),e.pos)<1e-6);
            CHECK(t.clearance(e.pos,e.pos,t.start,t.start+.001,10)<0);
        }
        model.trigger_animation_frame_min=3;model.trigger_animation_frame_max=3;
        m.geometry_models={model};Planner exact;exact.decide(f,true,&m);
        CHECK(std::count_if(exact.threats().begin(),exact.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.timing_verified;
        })==1);
    });
    test("bounded trigger window pattern is loaded from production data",[]{
        auto f=frame();auto e=enemy({320,320});e.type=827;e.variant=1;e.subtype=0;
        e.state=8;e.animation="WalkVert";e.animation_frame=0;e.ai_i1=0;e.ai_i2=0;f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        Planner p;p.decide(f,true,&m);
        CHECK(std::count_if(p.threats().begin(),p.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.shape==Shape::capsule&&
                t.start>0&&!t.timing_verified&&t.predictive;
        })==6);
    });
    test("directional stream envelope covers variable speeds angles and emission times",[]{
        Threat stream;stream.shape=Shape::stream;stream.pos={320,280};stream.vel={200,0};
        stream.start=.2;stream.emission_end=.4;stream.until=1;stream.radius=3;
        stream.stream_min_speed=100*std::cos(15*pi/180);
        stream.uncertainty=200*std::sin(15*pi/180);
        CHECK(stream.clearance(stream.pos,stream.pos,0,.1,5)>1000);
        CHECK(distance(stream.at(.2),stream.pos)<1e-6);
        for(double birth:{.2,.3,.4})for(double speed:{100.0,150.0,200.0})for(double angle:{-15.0,0.0,15.0}) {
            Vec velocity{std::cos(angle*pi/180)*speed,std::sin(angle*pi/180)*speed};
            Vec a=stream.pos+velocity*(.6-birth),b=stream.pos+velocity*(.61-birth);
            CHECK(stream.clearance(a,b,.6,.61,5)<0);
        }
        CHECK(stream.clearance({240,280},{240,280},.6,.61,5)>0);
        CHECK(stream.clearance({400,400},{400,400},.6,.61,5)>0);
        CHECK(stream.clearance(stream.pos,stream.pos,.9,.91,1)>0);
    });
    test("Bloaty streams use AI direction and continue forecasting after an observed shot",[]{
        const std::array<const char*,8> animations{{"AttackRight","AttackDownRight","AttackDown","AttackDownRight",
            "AttackRight","AttackUpRight","AttackUp","AttackUpRight"}};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));
        for(int direction=0;direction<8;++direction) {
            auto f=frame();auto e=enemy({320,320});e.type=879;e.state=8;e.animation=animations[size_t(direction)];
            e.animation_frame=22;e.ai_i2=direction;
            auto shot=bullet(e.pos,{120,0});shot.spawner=e.address;shot.birth=f.clock;f.entities={e,shot};
            auto m=semantics.evaluate(f);Planner p;p.decide(f,true,&m);
            auto it=std::find_if(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="projectile-stream";});
            CHECK(it!=p.threats().end());CHECK(it->shape==Shape::stream&&it->predictive&&!it->timing_verified);
            CHECK(distance(it->at(it->start),e.pos)<1e-6);
            Vec axis{std::cos(direction*pi/4),std::sin(direction*pi/4)};
            CHECK(distance(it->vel,axis*240)<1e-6);
            f.entities[0].animation_frame=24;++f.clock;m=semantics.evaluate(f);p.decide(f,true,&m);
            CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="projectile-stream";}));
            f.entities[0].animation_frame=30;++f.clock;m=semantics.evaluate(f);p.decide(f,true,&m);
            CHECK(std::none_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="projectile-stream";}));
            f.entities[0].animation_frame=22;f.entities[0].ai_i2=8;++f.clock;m=semantics.evaluate(f);p.decide(f,true,&m);
            CHECK(std::none_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="projectile-stream";}));
        }
    });
    test("bounded 61.7 radial pattern is loaded from production data",[]{
        auto f=frame();auto e=enemy({320,320});e.type=61;e.variant=7;e.subtype=0;
        e.state=3;e.animation="Fly";e.animation_frame=0;e.ai_i1=0;e.ai_i2=0;f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        Planner p;p.decide(f,true,&m);
        CHECK(std::count_if(p.threats().begin(),p.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.shape==Shape::capsule&&
                t.start>0&&!t.timing_verified&&t.predictive;
        })==6);
    });
    test("61.6 Appear and Dash branches load independently",[]{
        const std::array<std::tuple<int,const char*,int,int,bool>,2> cases{{
            {1,"Appear",24,1,true},{3,"Dash",5,-1,false}}};
        for(const auto&[state,animation,ai1,ai2,exact]:cases) {
            auto f=frame();auto e=enemy({320,320});e.type=61;e.variant=6;e.subtype=0;
            e.state=state;e.animation=animation;e.animation_frame=0;e.ai_i1=ai1;e.ai_i2=ai2;f.entities={e};
            MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
            Planner p;p.decide(f,true,&m);
            auto threats=std::count_if(p.threats().begin(),p.threats().end(),[&](const Threat&t){
                return t.source==e.address&&t.kind=="projectile-burst"&&
                    t.shape==(exact?Shape::disc:Shape::capsule)&&t.timing_verified==exact;
            });
            CHECK(threats==4);
        }
    });
    test("aimed spread pattern creates a three-projectile fan",[]{
        auto f=frame();f.player.body.pos={432,286};auto e=enemy({320,320});e.type=829;e.variant=1;e.subtype=0;
        e.state=8;e.animation="Shoot";e.animation_frame=4;e.ai_i1=0;e.ai_i2=0;f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        Planner p;p.decide(f,true,&m);
        std::vector<double> angles;
        for(const auto&t:p.threats())if(t.source==e.address&&t.kind=="projectile-burst"&&t.shape==Shape::capsule)
            angles.push_back(std::atan2(t.vel.y,t.vel.x)*180.0/pi);
        CHECK(angles.size()==3);
        std::sort(angles.begin(),angles.end());
        CHECK(std::abs(angles[1]-std::atan2(286.0-320.0,432.0-320.0)*180.0/pi)<1e-6);
        CHECK(std::abs((angles[1]-angles[0])-16.0241)<1e-3);
        CHECK(std::abs((angles[2]-angles[1])-16.0241)<1e-3);
    });
    test("aimed spread pattern creates a four-projectile fan",[]{
        auto f=frame();f.player.body.pos={320,400};auto e=enemy({320,320});e.type=14;e.variant=2;e.subtype=0;
        e.state=8;e.animation="Attack";e.animation_frame=7;e.ai_i1=0;e.ai_i2=0;f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        Planner p;p.decide(f,true,&m);
        std::vector<double> angles;
        for(const auto&t:p.threats())if(t.source==e.address&&t.kind=="projectile-burst"&&t.shape==Shape::disc)
            angles.push_back(std::atan2(t.vel.y,t.vel.x)*180.0/pi);
        CHECK(angles.size()==4);
        std::sort(angles.begin(),angles.end());
        CHECK(std::abs(angles[1]-angles[0]-18.5544)<1e-3);
        CHECK(std::abs(angles[2]-angles[1]-18.5544)<1e-3);
        CHECK(std::abs(angles[3]-angles[2]-18.5544)<1e-3);
    });
    test("two more aimed three-projectile spreads load from production",[]{
        const std::array<std::tuple<int,int,int,const char*,int,double>,2> cases{{
            {38,1,4,"Attack",6,15.9553},{27,0,8,"Shoot",25,16.0241}}};
        for(const auto&[type,variant,state,animation,trigger_frame,spacing]:cases) {
            auto f=frame();f.player.body.pos={320,400};auto e=enemy({320,320});
            e.type=type;e.variant=variant;e.subtype=0;e.state=state;e.animation=animation;
            e.animation_frame=trigger_frame;e.ai_i1=0;e.ai_i2=0;f.entities={e};
            MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
            Planner p;p.decide(f,true,&m);
            std::vector<double> angles;
            for(const auto&t:p.threats())if(t.source==e.address&&t.kind=="projectile-burst"&&t.shape==Shape::disc)
                angles.push_back(std::atan2(t.vel.y,t.vel.x)*180.0/pi);
            CHECK(angles.size()==3);std::sort(angles.begin(),angles.end());
            CHECK(std::abs(angles[1]-angles[0]-spacing)<1e-3);
            CHECK(std::abs(angles[2]-angles[1]-spacing)<1e-3);
        }
    });
    test("nonuniform spread offsets load and preserve fan gaps",[]{
        auto f=frame();f.player.body.pos={320,400};auto e=enemy({320,320});e.type=240;e.variant=3;e.subtype=0;
        e.state=8;e.animation="AttackLoop";e.animation_frame=0;e.ai_i1=2;e.ai_i2=0;f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        Planner p;p.decide(f,true,&m);
        std::vector<double> angles;
        for(const auto&t:p.threats())if(t.source==e.address&&t.kind=="projectile-burst"&&t.shape==Shape::capsule)
            angles.push_back(std::atan2(t.vel.y,t.vel.x)*180.0/pi);
        CHECK(angles.size()==4);std::sort(angles.begin(),angles.end());
        CHECK(std::abs((angles[1]-angles[0])-26.0028)<1e-3);
        CHECK(std::abs((angles[2]-angles[1])-31.3704)<1e-3);
        CHECK(std::abs((angles[3]-angles[2])-26.0028)<1e-3);
    });
    test("pattern-only source animation uses the fallback geometry contract",[]{
        auto f=frame();auto e=enemy({320,320});e.type=251;e.variant=0;e.subtype=0;
        e.state=8;e.animation="WalkHori";e.animation_frame=6;e.target_pos={320,340};f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        Planner p;p.decide(f,true,&m);
        CHECK(std::count_if(p.threats().begin(),p.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.shape==Shape::disc&&t.start>0;
        })==42);
    });
    test("AI-gated radial pattern ignores the wrong AI phase",[]{
        auto f=frame();auto e=enemy({320,320});e.type=29;e.variant=3;e.subtype=0;
        e.state=3;e.animation="Idle2";e.animation_frame=0;e.ai_i1=1;f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        Planner p;p.decide(f,true,&m);
        CHECK(std::count_if(p.threats().begin(),p.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.start>0;
        })==4);
        f.entities[0].ai_i1=2;m=semantics.evaluate(f);Planner wrong;wrong.decide(f,true,&m);
        CHECK(std::none_of(wrong.threats().begin(),wrong.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.start>0;
        }));
        e.animation="Idle";e.ai_i1=2;f.entities[0]=e;m=semantics.evaluate(f);
        Planner six;six.decide(f,true,&m);
        CHECK(std::count_if(six.threats().begin(),six.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.start>0;
        })==6);
        e.state=4;e.animation="Hop2";e.animation_frame=17;e.ai_i1=0;f.entities[0]=e;m=semantics.evaluate(f);
        Planner twelve;twelve.decide(f,true,&m);
        CHECK(std::count_if(twelve.threats().begin(),twelve.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.start>0;
        })==12);
        e.state=3;e.animation="Idle2";e.animation_frame=0;e.ai_i1=3;f.entities[0]=e;m=semantics.evaluate(f);
        Planner eight;eight.decide(f,true,&m);
        CHECK(std::count_if(eight.threats().begin(),eight.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.start>0;
        })==8);
    });
    test("aimed geometry pattern creates a player-directed projectile warning",[]{
        auto f=frame();f.player.body.pos={320,400};
        auto e=enemy({320,320});e.type=25;e.variant=4;e.subtype=0;
        e.state=8;e.animation="Attack";e.animation_frame=5;f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        Planner p;p.decide(f,true,&m);
        const auto warning=std::find_if(p.threats().begin(),p.threats().end(),[&](const Threat&t){
            return t.source==e.address&&t.kind=="projectile-burst"&&t.shape==Shape::disc&&t.start>0;
        });CHECK(warning!=p.threats().end());
        CHECK(warning->vel.y>299);CHECK(std::abs(warning->vel.x)<1);
    });
    test("Cross Stoney burst margin is a calibrated spawn exclusion",[]{auto f=frame();auto e=enemy({360,280});e.type=302;e.variant=10;e.collision=0;e.damage=0;f.entities={e};Planner calibrated;calibrated.decide(f);CHECK(std::any_of(calibrated.threats().begin(),calibrated.threats().end(),[&](const Threat&t){return t.kind=="projectile-burst"&&t.radius==e.radius+32;}));PlannerConfig c;c.projectile_burst_margin=0;c.projectile_burst_prediction=false;Planner disabled(c);disabled.decide(f);CHECK(std::none_of(disabled.threats().begin(),disabled.threats().end(),[](const Threat&t){return t.kind=="projectile-burst";}));});
    test("Cross Stoney alternates cardinal and diagonal volleys",[]{auto f=frame();auto e=enemy({360,280});e.type=302;e.variant=10;e.collision=0;e.damage=0;PlannerConfig c;c.projectile_burst_prediction=true;c.projectile_burst_alternating=true;Planner p(c);f.entities={e};p.decide(f);++f.clock;e.collision=1;f.entities={e};p.decide(f);auto predicted=[&](const Threat&t){return t.kind=="projectile-burst"&&t.shape==Shape::capsule&&t.start>0;};CHECK(std::count_if(p.threats().begin(),p.threats().end(),predicted)==4);CHECK(std::none_of(p.threats().begin(),p.threats().end(),[&](const Threat&t){return predicted(t)&&std::abs(t.end.x-t.pos.x)>1&&std::abs(t.end.y-t.pos.y)>1;}));++f.clock;auto shot=bullet(e.pos,{300,0});shot.birth=f.clock;shot.spawner=e.address;shot.spawner_in_snapshot=true;f.entities={e,shot};p.decide(f);CHECK(std::count_if(p.threats().begin(),p.threats().end(),predicted)==4);CHECK(std::all_of(p.threats().begin(),p.threats().end(),[&](const Threat&t){return !predicted(t)||(std::abs(t.end.x-t.pos.x)>1&&std::abs(t.end.y-t.pos.y)>1);}));});
    test("near explosive npc suppresses fire",[]{auto f=frame();auto e=enemy({390,280});e.type=250;f.entities={e};CHECK(!Planner().aim(f,f.player.body.pos).can_fire);});
    test("weapon charge thresholds follow J460 constants",[]{CHECK(max_charge_for(1,10,0)==0);CHECK(max_charge_for(1,10,1)==26.5);CHECK(max_charge_for(1,10,256)==131);CHECK(max_charge_for(2,10,0)==10);CHECK(max_charge_for(2,10,1)==25);CHECK(max_charge_for(4,10,0)==40);CHECK(max_charge_for(7,10,0)==10);CHECK(max_charge_for(9,10,0)==30);CHECK(max_charge_for(13,10,0)==40);CHECK(max_charge_for(5,10,0)<0);});
    test("charged weapon releases then recharges after observed reset",[]{auto f=frame();f.entities={enemy()};f.player.weapons={{1,0,2,5,10,10}};Planner p;CHECK(p.decide(f).fire==Fire::right);f.player.weapons[0].charge=10;++f.clock;CHECK(p.decide(f).fire==Fire::none);++f.clock;f.player.weapons[0].charge=0;CHECK(p.decide(f).fire==Fire::none);++f.clock;CHECK(p.decide(f).fire==Fire::right);});
    test("unsupported weapon retains dodge but never fires",[]{auto f=frame();f.player.attack_supported=false;f.entities={enemy(),bullet({380,280},{-240,0})};auto d=Planner().decide(f);CHECK(d.fire==Fire::none);CHECK(d.move!=Move::stay);});
    test("stationary no-target room remains idle",[]{auto f=frame();f.cleared=true;auto d=Planner().decide(f);CHECK(d.move==Move::stay);CHECK(d.fire==Fire::none);CHECK(d.safe);});
    test("clear room still evades projectile",[]{auto f=frame();f.cleared=true;f.entities={bullet({380,280},{-240,0})};auto d=Planner().decide(f);CHECK(d.move!=Move::stay);CHECK(d.fire==Fire::none);CHECK(d.safe);});
    test("clear room still evades laser",[]{auto f=frame();f.cleared=true;Entity e;e.type=7;e.address=500;e.pos={60,280};e.endpoint={560,280};e.geometry_valid=true;e.radius=8;e.timeout=10;f.entities={e};auto d=Planner().decide(f);CHECK(d.move!=Move::stay);CHECK(d.fire==Fire::none);});
    test("laser threat uses collision width rather than the unrelated radius slot",[]{auto f=frame();Entity e;e.type=7;e.variant=2;e.address=500;e.pos={320,160};e.endpoint={320,400};e.geometry_valid=true;e.radius=5;e.laser_radius=80;e.timeout=10;f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="laser"&&t.radius==5;}));});
    test("native wiggle projectile uses its sampled trajectory instead of a straight line",[]{
        auto f=frame();auto e=bullet({380,280},{-240,0});e.projectile_flags=1ULL<<5;e.projectile_age=0;
        e.projectile_phase=0;e.spawner_type=10;f.entities={e};Planner p;p.decide(f);
        auto threat=std::find_if(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="projectile";});
        CHECK(threat!=p.threats().end());CHECK(threat->motion_path.size()>=30);
        CHECK(std::abs(threat->at(1.0/30).y-280)>1);
    });
    test("unknown projectile height keeps the full predicted path",[]{
        auto f=frame();auto e=bullet({380,280},{-240,0});CHECK(!e.height_known);f.entities={e};Planner p;
        auto d=p.decide(f);CHECK(d.move!=Move::stay);
        const auto threat=std::find_if(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="projectile";});
        CHECK(threat!=p.threats().end());
        CHECK(threat->motion_path.size()>=30);
        CHECK(threat->until>.5);
    });
    test("known ground-level projectile ends at the native height gate",[]{
        auto f=frame();auto e=bullet({380,280},{-240,0});e.height=0;e.height_known=true;f.entities={e};Planner p;
        auto d=p.decide(f);CHECK(d.move==Move::stay);
        const auto threat=std::find_if(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="projectile";});
        if(threat!=p.threats().end())CHECK(threat->until<=1.0/15);
    });
    test("projectile height knowledge survives replay and legacy logs",[]{
        Entity known=bullet({380,280},{-240,0});known.height_known=true;
        CHECK(json(known).get<Entity>().height_known);
        Entity unknown=bullet({380,280},{-240,0});
        CHECK(!json(unknown).get<Entity>().height_known);
        auto legacy=json(unknown);legacy.erase("height_known");
        CHECK(legacy.get<Entity>().height_known);
        Entity npc=enemy();legacy=json(npc);legacy.erase("height_known");
        CHECK(!legacy.get<Entity>().height_known);
    });
    test("observed emissions create a pre-fire envelope for a patternless trigger",[]{
        auto f=frame();auto emitter=enemy({320,220});emitter.type=92;emitter.state=8;
        emitter.animation="Attack";emitter.collision=0;
        MechanismFrame m;m.loaded=m.valid=true;m.room=f.room;m.pid=f.pid;
        MonsterGeometryRef model;model.source=emitter.address;model.kind="projectile";
        model.hazard_type=9;model.pre_spawn_verified=true;model.trigger_animation_frame=7;
        model.trigger_animation_frame_min=7;model.trigger_animation_frame_max=7;
        model.source_state=8;model.source_animation="Attack";model.radius=5;
        m.geometry_models={model};
        PlannerConfig c;c.observed_emission_envelopes=true;Planner p(c);
        for(int tick=0;tick<2;++tick) {
            f.clock=100+tick;m.clock=f.clock;
            auto shot=bullet(emitter.pos,{0,240});shot.birth=int(f.clock);
            shot.spawner=emitter.address;shot.spawner_in_snapshot=true;shot.address=0x60000+tick;
            f.entities={emitter,shot};p.decide(f,true,&m);
        }
        f.clock=102;m.clock=102;emitter.animation_frame=4;f.entities={emitter};
        auto d=p.decide(f,true,&m);CHECK(d.valid);
        const auto warning=std::find_if(p.threats().begin(),p.threats().end(),[&](const Threat&t){
            return t.source==emitter.address&&t.kind=="projectile-stream"&&t.start>0;
        });
        CHECK(warning!=p.threats().end());
        CHECK(warning->vel.y>0);
        CHECK(warning->predictive);
        CHECK(warning->data_source.find("aimed")!=std::string::npos);
    });
    test("observed emissions separate attack animations inside one state",[]{
        auto f=frame();auto emitter=enemy({320,220});emitter.type=92;emitter.state=8;
        emitter.animation="Attack";emitter.collision=0;
        MechanismFrame m;m.loaded=m.valid=true;m.room=f.room;m.pid=f.pid;
        MonsterGeometryRef model;model.source=emitter.address;model.kind="projectile";
        model.hazard_type=9;model.pre_spawn_verified=true;model.trigger_animation_frame=7;
        model.trigger_animation_frame_min=7;model.trigger_animation_frame_max=7;
        model.source_state=8;model.source_animation="Attack";model.radius=5;
        m.geometry_models={model};
        PlannerConfig c;c.observed_emission_envelopes=true;Planner p(c);
        const std::pair<const char*,Vec> volleys[]={
            {"Attack",{0,240}},{"Attack",{0,240}},
            {"Attack2",{240,0}},{"Attack2",{240,0}}};
        int clock=100;
        for(const auto&[animation,velocity]:volleys) {
            f.clock=uint32_t(clock++);m.clock=f.clock;emitter.animation=animation;emitter.animation_frame=0;
            auto shot=bullet(emitter.pos,velocity);shot.birth=int(f.clock);
            shot.spawner=emitter.address;shot.spawner_in_snapshot=true;shot.address=0x63000+clock;
            f.entities={emitter,shot};p.decide(f,true,&m);
        }
        f.clock=uint32_t(clock);m.clock=f.clock;emitter.animation="Attack";emitter.animation_frame=4;
        f.entities={emitter};p.decide(f,true,&m);
        const auto warning=std::find_if(p.threats().begin(),p.threats().end(),[&](const Threat&t){
            return t.source==emitter.address&&t.kind=="projectile-stream"&&t.start>0;
        });
        CHECK(warning!=p.threats().end());
        CHECK(warning->vel.y>0);
        CHECK(std::abs(warning->vel.x)<1);
    });
    test("observed emissions need repeated consistent volleys",[]{
        auto f=frame();auto emitter=enemy({320,220});emitter.type=92;emitter.state=8;
        emitter.animation="Attack";emitter.collision=0;
        MechanismFrame m;m.loaded=m.valid=true;m.room=f.room;m.pid=f.pid;
        MonsterGeometryRef model;model.source=emitter.address;model.kind="projectile";
        model.hazard_type=9;model.pre_spawn_verified=true;model.trigger_animation_frame=7;
        model.trigger_animation_frame_min=7;model.trigger_animation_frame_max=7;
        model.source_state=8;model.source_animation="Attack";model.radius=5;
        m.geometry_models={model};
        PlannerConfig c;c.observed_emission_envelopes=true;
        auto envelope=[&](Planner& p) {
            return std::any_of(p.threats().begin(),p.threats().end(),[&](const Threat&t){
                return t.source==emitter.address&&t.kind=="projectile-stream"&&t.start>0;
            });
        };
        {   // One volley is not evidence of a firing pattern.
            Planner p(c);f.clock=100;m.clock=100;
            auto shot=bullet(emitter.pos,{0,240});shot.birth=100;shot.spawner=emitter.address;
            shot.spawner_in_snapshot=true;f.entities={emitter,shot};p.decide(f,true,&m);
            f.clock=101;m.clock=101;emitter.animation_frame=4;f.entities={emitter};
            p.decide(f,true,&m);CHECK(!envelope(p));
        }
        {   // Volleys in unrelated directions do not define an envelope.
            Planner p(c);
            f.clock=200;m.clock=200;emitter.animation_frame=0;
            auto first=bullet(emitter.pos,{0,240});first.birth=200;first.spawner=emitter.address;
            first.spawner_in_snapshot=true;first.address=0x61000;
            f.entities={emitter,first};p.decide(f,true,&m);
            f.clock=201;m.clock=201;
            auto second=bullet(emitter.pos,{240,0});second.birth=201;second.spawner=emitter.address;
            second.spawner_in_snapshot=true;second.address=0x61001;
            f.entities={emitter,second};p.decide(f,true,&m);
            f.clock=202;m.clock=202;emitter.animation_frame=4;f.entities={emitter};
            p.decide(f,true,&m);CHECK(!envelope(p));
        }
        {   // Production default stays unchanged.
            Planner p;f.clock=300;m.clock=300;
            for(int tick=0;tick<2;++tick) {
                f.clock=300+tick;m.clock=f.clock;
                auto shot=bullet(emitter.pos,{0,240});shot.birth=int(f.clock);
                shot.spawner=emitter.address;shot.spawner_in_snapshot=true;shot.address=0x62000+tick;
                f.entities={emitter,shot};p.decide(f,true,&m);
            }
            f.clock=302;m.clock=302;emitter.animation_frame=4;f.entities={emitter};
            p.decide(f,true,&m);CHECK(!envelope(p));
        }
    });
    test("compact session logs drop only recomputable mechanism blocks",[]{
        json record{{"frame",Frame{}},{"mechanisms",MechanismFrame{}},{"decision",Decision{}}};
        MechanismObservation observation;observation.behavior_model={{"candidate",1}};
        record["mechanisms"]["enemies"]=json::array({observation});
        record["mechanisms"]["geometry_models"]=json::array({MonsterGeometryRef{}});
        record["mechanisms"]["warnings"]=json::array();
        record["frame"]["entities"]=json::array({json{{"bomb_countdown2",2},{"damage_stat",1.5},{"pos",Vec{}}}});
        trim_session_record(record);
        CHECK(!record["mechanisms"].contains("geometry_models"));
        CHECK(!record["mechanisms"]["enemies"][0].contains("behavior_model"));
        CHECK(!record["frame"]["entities"][0].contains("bomb_countdown2"));
        CHECK(!record["frame"]["entities"][0].contains("damage_stat"));
        CHECK(record["frame"]["entities"][0].contains("pos"));
        CHECK(record["mechanisms"].contains("warnings"));
        CHECK(record.contains("frame"));CHECK(record.contains("decision"));
    });
    test("every threat maps to one of the seven damage classes",[]{
        CHECK(damage_class_of("contact")==DamageClass::contact);
        CHECK(damage_class_of("creep")==DamageClass::hazard);
        CHECK(damage_class_of("hostile-fire-jet")==DamageClass::hazard);
        CHECK(damage_class_of("womb-spike")==DamageClass::hazard);
        CHECK(damage_class_of("pitfall")==DamageClass::hazard);
        CHECK(damage_class_of("projectile")==DamageClass::projectile);
        CHECK(damage_class_of("projectile-stream")==DamageClass::projectile);
        CHECK(damage_class_of("terrain-debris")==DamageClass::projectile);
        CHECK(damage_class_of("laser")==DamageClass::laser);
        CHECK(damage_class_of("laser-warning")==DamageClass::laser);
        CHECK(damage_class_of("unknown-laser-axis")==DamageClass::laser);
        CHECK(damage_class_of("boss-laser-windup")==DamageClass::laser);
        CHECK(damage_class_of("jump-landing")==DamageClass::jump);
        CHECK(damage_class_of("monstro-landing")==DamageClass::jump);
        CHECK(damage_class_of("cage-rock-wave")==DamageClass::jump);
        CHECK(damage_class_of("charge")==DamageClass::charge);
        CHECK(damage_class_of("roll")==DamageClass::charge);
        CHECK(damage_class_of("squirt-dash")==DamageClass::charge);
        CHECK(damage_class_of("bumbino-swipe")==DamageClass::charge);
        CHECK(damage_class_of("bomb")==DamageClass::explosion);
        CHECK(damage_class_of("death-blast")==DamageClass::explosion);
        CHECK(damage_class_of("smoke-explosion")==DamageClass::explosion);
        CHECK(std::string(damage_class_name(DamageClass::hazard))=="hazard");
    });
    test("damage timing separates periodic, dot and instant",[]{
        CHECK(damage_timing_of(DamageClass::laser,"laser")==DamageTiming::periodic);
        CHECK(damage_timing_of(DamageClass::hazard,"creep")==DamageTiming::periodic);
        CHECK(damage_timing_of(DamageClass::contact,"hostile-poison-smoke")==DamageTiming::dot);
        CHECK(damage_timing_of(DamageClass::explosion,"bomb")==DamageTiming::instant);
        CHECK(damage_timing_of(DamageClass::projectile,"projectile")==DamageTiming::instant);
        CHECK(std::string(damage_timing_name(DamageTiming::dot))=="dot");
    });
    test("contact threat carries the source damage and class",[]{
        auto f=frame();auto e=enemy({360,280});e.damage=2;f.entities={e};Planner p;p.decide(f);
        const auto threat=std::find_if(p.threats().begin(),p.threats().end(),[](const Threat&t){
            return t.kind=="contact";
        });
        CHECK(threat!=p.threats().end());
        CHECK(threat->damage_class==DamageClass::contact);
        CHECK(threat->damage==2);
        CHECK(!threat->lethal);
    });
    test("pitfall is a lethal hazard and dominates predicted damage",[]{
        auto f=frame();Entity pit;pit.type=291;pit.address=501;pit.pos={320,280};pit.radius=20;
        f.entities={pit};Planner p;const auto decision=p.decide(f);
        const auto threat=std::find_if(p.threats().begin(),p.threats().end(),[](const Threat&t){
            return t.kind=="pitfall";
        });
        CHECK(threat!=p.threats().end());
        CHECK(threat->damage_class==DamageClass::hazard);
        CHECK(threat->lethal);
        CHECK(decision.predicted_damage>=999);
    });
    test("ground hop animation stays contact-only without height evidence",[]{
        auto f=frame();auto e=enemy({300,280},{120,0});e.type=884;e.animation="Hop";
        e.collision=2;e.damage=1;f.entities={e};Planner p;p.decide(f);
        CHECK(std::none_of(p.threats().begin(),p.threats().end(),[](const Threat&t){
            return t.kind=="generic-jump-landing";
        }));
        CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){
            return t.kind=="contact"&&t.damage_class==DamageClass::contact;
        }));
    });
    test("landing animation gets a generic jump envelope",[]{
        auto f=frame();auto e=enemy({360,260},{40,0});e.type=300;e.animation="Landing";
        e.collision=2;e.damage=1;f.entities={e};Planner p;p.decide(f);
        const auto threat=std::find_if(p.threats().begin(),p.threats().end(),[](const Threat&t){
            return t.kind=="generic-jump-landing";
        });
        CHECK(threat!=p.threats().end());
        CHECK(threat->damage_class==DamageClass::jump);
        CHECK(threat->predictive);
        CHECK(threat->pos.x>e.pos.x);
    });
    test("airborne flag alone does not create a landing envelope",[]{
        // NPC +0x410 is StateFrame, not Height; a manually set height must not
        // be treated as evidence that a landing is coming.
        auto f=frame();auto e=enemy({360,260},{40,0});e.type=300;e.height=-80;e.height_known=true;
        e.animation="Fly";e.collision=2;e.damage=1;
        f.clock=100;f.entities={e};Planner p;p.decide(f);
        f.clock=101;f.entities={e};p.decide(f);
        CHECK(std::none_of(p.threats().begin(),p.threats().end(),[](const Threat&t){
            return t.kind=="generic-jump-landing";
        }));
    });
    test("generic dash animation gets a charge lane",[]{
        auto f=frame();auto e=enemy({160,280},{240,0});e.type=300;e.animation="Dash";
        e.collision=2;e.damage=1;f.entities={e};Planner p;p.decide(f);
        const auto threat=std::find_if(p.threats().begin(),p.threats().end(),[](const Threat&t){
            return t.kind=="generic-charge";
        });
        CHECK(threat!=p.threats().end());
        CHECK(threat->damage_class==DamageClass::charge);
        CHECK(threat->shape==Shape::capsule);
        CHECK(threat->end.x>threat->pos.x);
    });
    test("identity charge model suppresses the generic charge lane",[]{
        auto f=frame();auto e=enemy({120,280},{300,0});e.type=63;e.state=8;
        e.animation="AttackDashStart";e.collision=2;e.damage=1;f.entities={e};Planner p;p.decide(f);
        int generic=0,charge=0;
        for(const auto& threat:p.threats())if(threat.source==e.address) {
            if(threat.kind=="generic-charge")++generic;
            if(threat.damage_class==DamageClass::charge)++charge;
        }
        CHECK(generic==0);CHECK(charge>0);
    });
    test("decision reports the damage classes it defends against",[]{
        auto f=frame();auto e=enemy({380,280},{-240,0});f.entities={e};
        const auto decision=Planner().decide(f);
        CHECK(!decision.threat_classes.empty());
        CHECK(std::find(decision.threat_classes.begin(),decision.threat_classes.end(),"contact")!=
            decision.threat_classes.end());
    });
    test("empty room stops after the last threat is gone",[]{
        auto f=frame();f.entities={bullet({380,280},{-240,0})};Planner p;
        const auto first=p.decide(f);CHECK(first.move!=Move::stay);
        ++f.clock;f.entities.clear();
        const auto second=p.decide(f);
        CHECK(second.move==Move::stay);
        CHECK(second.path.size()==1);
    });
    test("non-finite mass does not invalidate the snapshot",[]{
        auto m=fixture();
        m->put<float>(0xd0000+0x37c,3.0e38f);
        Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);
        const auto f=r.capture(1000);
        CHECK(f.valid);
        CHECK(f.entities.size()==2);
        CHECK(!f.entities[1].mass_known);
        CHECK(!f.entities[1].height_known);
    });
    test("attack prioritises a high-damage threat emitter",[]{
        auto f=frame();
        auto near=enemy({480,280});near.address=0x30001;near.hp=5;near.damage=1;
        auto emitter=enemy({160,280});emitter.address=0x30002;emitter.hp=5;emitter.damage=3;
        emitter.type=63;emitter.state=8;emitter.animation="AttackDashStart";
        f.entities={near,emitter};Planner p;
        p.decide(f);
        const auto chosen=p.aim(f,f.player.body.pos);
        CHECK(chosen.target==emitter.address);
        auto control=emitter;control.type=10;control.animation="Idle";
        f.entities={near,control};Planner q;
        q.decide(f);
        CHECK(q.aim(f,f.player.body.pos).target==near.address);
    });
    test("captured Gaper group in an ordinary room avoids steering into the entry wall",[]{
        std::ifstream input(std::filesystem::path(__FILE__).parent_path()/"fixtures/gaper-natural-room-opening.json");
        CHECK(bool(input));json saved;input>>saved;auto f=saved.get<Frame>();
        CHECK(f.grid.shape==1);
        CHECK(std::count_if(f.entities.begin(),f.entities.end(),[](const Entity& e){return e.type==10&&e.variant==0&&e.subtype==0&&e.alive();})==5);
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto mechanisms=semantics.evaluate(f);
        Planner planner;const auto decision=planner.decide(f,true,&mechanisms);
        CHECK(decision.valid&&decision.safe);
        CHECK(direction(decision.move).y>=0);
        Planner dodge_only;const auto dodge=dodge_only.decide(f,false,&mechanisms);
        CHECK(dodge.valid&&dodge.safe&&dodge.fire==Fire::none);
        CHECK(direction(dodge.move).y>=0);
    });
    test("contact spacing charges fast closers more than slow walkers",[]{
        auto exposure=[&](double speed) {
            auto f=frame();auto e=enemy({400,280},{-speed,0});e.damage=1;e.collision=2;f.entities={e};
            PlannerConfig c;c.diagnostics=true;Planner p(c);
            const auto decision=p.decide(f,false);
            double total=0;
            for(const auto& move:decision.analysis.moves)total+=move.best.exposure;
            return total;
        };
        const double fast=exposure(240),slow=exposure(30);
        std::cerr<<"fast_exposure="<<fast<<" slow_exposure="<<slow<<"\n";
        CHECK(fast>slow);
    });    test("uninitialized laser endpoint uses the parent attack direction",[]{auto f=frame();Entity parent=enemy({320,220});parent.type=212;parent.variant=3;parent.address=0x30001;parent.animation="AttackDown";Entity laser;laser.type=7;laser.address=0x30002;laser.parent=parent.address;laser.pos=parent.pos;laser.endpoint={0,0};laser.geometry_valid=true;laser.radius=5;laser.laser_radius=80;laser.timeout=16;f.entities={parent,laser};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="laser"&&t.shape==Shape::capsule&&t.end.y>t.pos.y+1000;}));});
    test("Cage roll creates an early moving capsule",[]{auto f=frame();auto e=enemy({320,280},{0,375});e.type=265;e.state=8;e.animation="RollStart";f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="roll"&&t.shape==Shape::capsule&&t.end.y>t.pos.y+200;}));});
    test("Cage landing warns about generated creep",[]{auto f=frame();auto e=enemy({320,220});e.type=265;e.state=7;e.animation="Landing";e.target_pos={360,240};f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="cage-landing-creep"&&t.radius==180&&t.pos.x==360&&t.pos.y==240;}));});
    test("Cage landing creates an expanding rock wave",[]{auto f=frame();auto e=enemy({320,220});e.type=265;e.state=7;e.state_frame=20;e.animation="Landing";e.target_pos={360,240};f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="cage-rock-wave"&&t.shape==Shape::ring&&t.radius==20&&distance(t.pos,t.end)>=120;}));});
    test("generated Cage rubble is a hazard",[]{auto f=frame();Entity e;e.type=1000;e.variant=4;e.address=501;e.pos={360,240};e.radius=20;f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="cage-rock-wave"&&t.shape==Shape::disc;}));});
    test("airborne jump creates a landing threat",[]{auto f=frame();auto e=enemy({360,280},{0,0});e.type=265;e.radius=40;e.collision=0;e.state=7;e.animation="JumpLoop";f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="jump-landing";}));});
    test("attack windup creates a charge lane",[]{auto f=frame();auto e=enemy({120,280},{300,0});e.type=63;e.state=8;e.animation="AttackDashStart";f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="charge"&&t.shape==Shape::capsule;}));});
    test("Bloat attack states warn before lasers spawn",[]{for(int state:{9,10,13}){auto f=frame();auto e=enemy({320,220});e.type=68;e.variant=1;e.state=state;e.animation="AttackAlt02";f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="laser-warning";}));}});
    test("all four Brimstone head orientations warn before their lasers spawn",[]{
        const std::array<std::tuple<int,const char*,Vec>,4> orientations{{
            {0,"ShootLeft",{-1,0}},{1,"ShootUp",{0,-1}},
            {2,"ShootRight",{1,0}},{3,"ShootDown",{0,1}}}};
        for(const auto&[subtype,animation,axis]:orientations) {
            auto f=frame();auto e=enemy({320,220});e.type=203;e.subtype=subtype;
            e.state=8;e.animation=animation;f.entities={e};Planner p;p.decide(f);
            CHECK(std::any_of(p.threats().begin(),p.threats().end(),[&](const Threat&t){
                return t.kind=="laser-warning"&&t.shape==Shape::capsule&&
                    t.radius==std::max(16.0,e.radius)&&distance(t.end,t.pos+axis*1500)<1e-6;
            }));
        }
    });
    test("Eye shoot windup warns along the predicted player lock",[]{auto f=frame();auto e=enemy({320,270});e.type=60;e.animation="Shoot";e.animation_frame=1;f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="laser-warning"&&t.shape==Shape::capsule&&t.start>.25&&t.end.y>t.pos.y;}));});
    test("Eye shoot windup keeps its initial target lock",[]{auto f=frame();auto e=enemy({320,270});e.type=60;e.animation="Shoot";e.animation_frame=1;f.entities={e};Planner p;p.decide(f);Vec first{};for(const auto&t:p.threats())if(t.kind=="laser-warning")first=t.end;++f.clock;e.animation_frame=5;f.player.body.pos={420,360};f.entities={e};p.decide(f);Vec second{};for(const auto&t:p.threats())if(t.kind=="laser-warning")second=t.end;CHECK(distance(first,second)<1e-6);});
    test("dead projectile does not cause phantom dodge",[]{auto f=frame();auto e=bullet({320,280},{});e.dead=true;f.entities={e};CHECK(Planner().decide(f).move==Move::stay);});
    test("friendly projectile does not cause dodge",[]{auto f=frame();auto e=bullet({320,280},{});e.friendly=true;f.entities={e};CHECK(Planner().decide(f).move==Move::stay);});
    test("explosive npc disappearance reserve expires once",[]{auto f=frame();auto e=enemy({390,280});e.type=250;f.entities={e};Planner p;p.decide(f);f.entities.clear();++f.clock;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="death-blast";}));f.clock+=5;p.decide(f);CHECK(p.threats().empty());++f.clock;p.decide(f);CHECK(p.threats().empty());});
    test("dead explosive npc does not restart expired reserve",[]{auto f=frame();auto e=enemy({390,280});e.type=250;f.entities={e};Planner p;p.decide(f);f.entities[0].dead=true;++f.clock;p.decide(f);f.clock+=5;p.decide(f);++f.clock;p.decide(f);CHECK(p.threats().empty());});
    test("proximity alone does not chain vanilla bombs",[]{
        // Pass 18: ExplosionDamage cannot queue damage against a vanilla Type-4
        // bomb (MaxHP 0), so proximity must not advance the second fuse.
        auto f=frame();Entity a;a.type=4;a.address=501;a.seed=1;a.pos={100,180};a.timeout=3;
        Entity b=a;b.address=502;b.seed=2;b.pos={160,180};b.timeout=60;f.entities={a,b};
        Planner p;p.decide(f);
        int bombs=0;bool advanced=false;
        for(const auto&t:p.threats())if(t.kind=="bomb") {
            ++bombs;
            if(t.source==502&&t.start<.2)advanced=true;
        }
        CHECK(bombs==2);CHECK(!advanced);
    });
    test("laser follows observed moving parent",[]{auto f=frame();auto source=enemy({100,180},{0,60});Entity laser;laser.type=7;laser.address=123;laser.parent=source.address;laser.laser_follow=true;laser.geometry_valid=true;laser.pos=source.pos;laser.endpoint={560,180};laser.radius=5;laser.timeout=15;f.entities={source,laser};Planner p;p.decide(f);for(const auto&t:p.threats())if(t.kind=="laser")CHECK(t.at(.5).y==210);});
    test("invalid pause transition death stop",[]{for(int state=0;state<5;++state){auto f=frame();if(state==0)f.valid=false;if(state==1)f.paused=true;if(state==2)f.transition=true;if(state==3)f.player.body.dead=true;if(state==4)f.has_player=false;CHECK(Planner().decide(f).stop);}});
    test("native reader synthetic complete frame",[]{auto m=fixture();Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);auto f=r.capture(1000);CHECK(f.valid);CHECK(f.has_player);CHECK(f.pid==123);CHECK(f.entities.size()==2);CHECK(f.player.health==6);CHECK(f.grid.cells.size()==135);CHECK(f.player.attack_supported);CHECK(f.player.weapons.size()==1);});
    test("native reader keeps room clear and pressure-plate flags separate",[]{
        auto m=fixture();Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);
        m->put<uint32_t>(0xb0000+0x44,64);
        auto pending=r.capture(1000);
        CHECK(pending.valid);CHECK(pending.clear_flags==64);CHECK(!pending.cleared);
        CHECK(!pending.pressure_plates_triggered);
        m->put<uint32_t>(0xb0000+0x44,3);
        auto complete=r.capture(1001);
        CHECK(complete.valid);CHECK(complete.clear_flags==3);CHECK(complete.cleared);
        CHECK(complete.pressure_plates_triggered);
    });
    test("native reader exports verified NPC target and projectile timers",[]{
        auto m=fixture();constexpr uint32_t player=0xc0000,monster=0xd0000,target=0xd1000;
        m->put<int>(monster+0x28,412);
        m->put<uint32_t>(monster+0x3bc,player);m->put<uint32_t>(monster+0x3c0,0xd2000);m->put<uint32_t>(monster+0x3c4,target);
        m->put<uint32_t>(monster+0x3c8,player);m->put<int>(monster+0xba0,17);m->put<int>(monster+0xba4,9);
        m->put<float>(monster+0x384,200);m->put<float>(monster+0x39c,1.25f);
        m->put<float>(monster+0xbb0,2.5f);m->put<float>(monster+0xbb4,3.5f);
        m->put<float>(monster+0xbb8,4.5f);m->put<float>(monster+0xbbc,5.5f);
        m->put<int>(monster+0xbc0,300);m->put<int>(monster+0xbc4,2);
        m->put<uint8_t>(monster+0xc3d,1);m->put<float>(monster+0xc40,125.5f);m->put<int>(monster+0xc44,120);
        m->put<int>(monster+0xc78,4);m->put<int>(monster+0x238,31);
        m->put<uint32_t>(monster+0xbc8,412);m->put<uint32_t>(monster+0xbcc,3);m->put<uint16_t>(monster+0xbd0,45);
        const uint64_t cycle=0x123456789aULL;
        m->put<uint8_t>(monster+0xbd2,2);m->put<uint8_t>(monster+0xbd3,7);m->put<uint32_t>(monster+0xbd8,0xab123456u);
        m->put<uint8_t>(monster+0xbdc,15);m->put<uint32_t>(monster+0xbe0,uint32_t(cycle));
        m->put<uint32_t>(monster+0xbe4,uint32_t(cycle>>32));
        Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);auto f=r.capture(1000);CHECK(f.valid);
        auto it=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity&e){return e.address==monster;});CHECK(it!=f.entities.end());
        CHECK(it->child==0xd2000);CHECK(it->target==target);CHECK(it->projectile_cooldown==17);CHECK(it->projectile_delay==9);CHECK(it->is_boss);
        CHECK(it->parent_in_snapshot);CHECK(it->spawner_in_snapshot);CHECK(!it->child_in_snapshot);CHECK(!it->target_in_snapshot);
        CHECK(it->max_hp==200);CHECK(it->speed_multiplier==1.25);CHECK(it->ai_v1.x==2.5&&it->ai_v1.y==3.5);
        CHECK(it->ai_v2.x==4.5&&it->ai_v2.y==5.5);CHECK(it->ai_i1==300);CHECK(it->ai_i2==2);
        CHECK(it->shield_strength==125.5);CHECK(it->shield_history_capacity==120);CHECK(it->boss_color==4);CHECK(it->boss_status_cooldown==31);
        CHECK(it->delirium_layout_valid);CHECK(it->delirium_boss_type==412);CHECK(it->delirium_boss_variant==3);CHECK(it->delirium_transformation_timer==45);
        CHECK(it->delirium_remaining_attacks==2);CHECK(it->delirium_state==7);CHECK(it->delirium_attack_id==0xab123456u);
        CHECK(it->delirium_attack_id_low24==0x123456u);CHECK(it->delirium_attack_angle==15);CHECK(it->delirium_cycle_id==cycle);
        CHECK(it->delirium_cycle_low7==uint32_t(cycle&0x7f));CHECK(it->delirium_cycle_field_15_24==uint32_t((cycle>>15)&0x3ff));
        CHECK(it->delirium_cycle_field_25_34==uint32_t((cycle>>25)&0x3ff));
        auto copy=json(*it).get<Entity>();CHECK(copy.child==0xd2000);CHECK(copy.target==target);CHECK(copy.projectile_cooldown==17);CHECK(copy.projectile_delay==9);CHECK(copy.is_boss);
        CHECK(copy.max_hp==200);CHECK(copy.speed_multiplier==1.25);CHECK(copy.ai_i1==300);CHECK(copy.ai_i2==2);
        CHECK(copy.shield_strength==125.5);CHECK(copy.shield_history_capacity==120);CHECK(copy.boss_color==4);CHECK(copy.boss_status_cooldown==31);
        CHECK(copy.parent_in_snapshot);CHECK(copy.spawner_in_snapshot);CHECK(!copy.child_in_snapshot);CHECK(!copy.target_in_snapshot);
        CHECK(copy.delirium_layout_valid);CHECK(copy.delirium_boss_type==412);CHECK(copy.delirium_state==7);CHECK(copy.delirium_cycle_id==cycle);
        CHECK(copy.delirium_attack_id_low24==0x123456u);
    });
    test("native reader exports calibrated projectile and curved-laser motion",[]{
        auto m=fixture();constexpr uint32_t monster=0xd0000,points=0x120000;
        m->put<int>(monster+0x28,9);m->put<uint64_t>(monster+0x438,uint64_t(1)<<5);
        m->put<float>(monster+0x3a4,12.5f);m->put<int>(monster+0x448,-7);
        m->put<float>(monster+0x428,.005f);m->put<float>(monster+0x430,80);m->put<float>(monster+0x39c,1.25f);
        m->put<float>(points,100);m->put<float>(points+4,120);m->put<float>(points+8,160);m->put<float>(points+12,180);
        m->put<uint32_t>(monster+0x480,points);m->put<uint32_t>(monster+0x484,points+16);m->put<uint32_t>(monster+0x488,points+16);
        Reader projectile_reader(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);
        auto projectile_frame=projectile_reader.capture(1000);CHECK(projectile_frame.valid);
        auto projectile=std::find_if(projectile_frame.entities.begin(),projectile_frame.entities.end(),[](const Entity&e){return e.type==9;});
        CHECK(projectile!=projectile_frame.entities.end());CHECK(projectile->projectile_age==12.5);
        CHECK(projectile->projectile_phase==-7);CHECK(projectile->projectile_curve==.005f);
        CHECK(projectile->projectile_orbit_distance==80);CHECK(projectile->speed_multiplier==1.25f);
        CHECK((projectile->projectile_flags&(uint64_t(1)<<5))!=0);

        m->put<int>(monster+0x28,7);m->put<int>(monster+0x30,0);m->put<int>(monster+0x4bc,5);
        m->put<float>(monster+0x4d8,100);m->put<float>(monster+0x4dc,120);
        Reader laser_reader(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);
        auto laser_frame=laser_reader.capture(1001);CHECK(laser_frame.valid);
        auto laser=std::find_if(laser_frame.entities.begin(),laser_frame.entities.end(),[](const Entity&e){return e.type==7;});
        CHECK(laser!=laser_frame.entities.end());CHECK(laser->laser_points.size()==2);
        CHECK(laser->laser_points[0].x==100&&laser->laser_points[1].y==180);
        auto copy=json(*laser).get<Entity>();CHECK(copy.laser_points.size()==2);
    });
    test("Delirium-only slots stay invalid for another enemy identity",[]{
        auto m=fixture();constexpr uint32_t monster=0xd0000;
        m->put<uint32_t>(monster+0xbd8,0xdeadbeefu);m->put<uint32_t>(monster+0xbe0,0x12345678u);
        Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);auto f=r.capture(1000);CHECK(f.valid);
        auto it=std::find_if(f.entities.begin(),f.entities.end(),[&](const Entity&e){return e.address==monster;});CHECK(it!=f.entities.end());
        CHECK(!it->delirium_layout_valid);CHECK(it->delirium_attack_id==0);CHECK(it->delirium_cycle_id==0);
    });
    test("native reader marks all relationship pointers against the current snapshot",[]{
        auto m=fixture();constexpr uint32_t player=0xc0000,monster=0xd0000;
        m->put<uint32_t>(monster+0x3bc,player);m->put<uint32_t>(monster+0x3c0,monster);
        m->put<uint32_t>(monster+0x3c4,player);m->put<uint32_t>(monster+0x3c8,player);
        Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);auto f=r.capture(1000);CHECK(f.valid);
        auto it=std::find_if(f.entities.begin(),f.entities.end(),[](const Entity&e){return e.type==10;});CHECK(it!=f.entities.end());
        CHECK(it->parent_in_snapshot);CHECK(it->child_in_snapshot);CHECK(it->target_in_snapshot);CHECK(it->spawner_in_snapshot);
    });
    test("runtime semantics database loads the derived identity and warning contract",[]{
        auto path=semantics_path();CHECK(!path.empty());
        MechanismSemantics semantics;if(!semantics.load(path))throw std::runtime_error("semantics load failed: "+semantics.error()+" path="+path.string());
        CHECK(semantics.identity_count()>=600);
        CHECK(semantics.warning_rule_count()==3);CHECK(semantics.source_sha256().size()==64);
        CHECK(semantics.monster_geometry_count()>=500);
    });
    test("decompiled state attack calls identify an attack candidate without creating a threat",[]{
        auto f=frame();auto e=enemy();e.type=10;e.variant=0;e.subtype=0;e.state=4;e.animation="WalkHori";
        f.entities={e};MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        CHECK(m.enemies.size()==1);const auto& row=m.enemies.front();
        CHECK(row.attack_type=="ProjectileAttack");
        CHECK(row.attack_type_evidence=="static_decompiled_attack_call_candidate");
        CHECK(row.behavior_model.contains("attack_call_candidate"));
        CHECK(m.known_attack_types==1);CHECK(m.warnings.size()==1);
        CHECK(m.warnings.front().kind=="contact");
    });
    test("decompiled AI function calls identify otherwise unmapped attacks",[]{
        auto f=frame();auto e=enemy();e.type=64;e.variant=0;e.subtype=0;e.state=4;e.animation="Idle";
        f.entities={e};MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        CHECK(m.enemies.size()==1);const auto& row=m.enemies.front();
        CHECK(row.attack_type=="BossProjectileAttack");
        CHECK(row.attack_type_evidence=="static_decompiled_ai_function_call_candidate");
        CHECK(row.behavior_model.contains("direct_ai_attack_calls"));
        CHECK(m.known_attack_types==1);CHECK(m.warnings.empty());
    });
    test("ANM2 attack event candidates identify exact identity animations",[]{
        auto f=frame();auto e=enemy();e.type=100;e.variant=0;e.subtype=0;e.state=0;e.animation="Attack01";
        f.entities={e};MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        CHECK(m.enemies.size()==1);const auto& row=m.enemies.front();
        CHECK(row.attack_type=="Attack01");
        CHECK(row.attack_type_evidence=="static_anm2_attack_event_candidate");
        CHECK(row.behavior_model.contains("attack_event_candidate"));
        auto copy=json(row).get<MechanismObservation>();
        CHECK(copy.attack_type_evidence==row.attack_type_evidence);
        CHECK(m.known_attack_types==1);CHECK(m.warnings.empty());
    });
    test("source-linked callback timing becomes strict attack prediction",[]{
        auto f=frame();auto e=enemy();e.type=14;e.variant=0;e.subtype=0;e.state=8;
        e.animation="Attack";e.animation_frame=0;f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        CHECK(m.enemies.size()==1);const auto& row=m.enemies.front();
        CHECK(row.attack_type=="Attack");
        CHECK(row.attack_type_evidence=="strict_source_linked_attack_event");
        CHECK(row.attack_timing_verified);
        CHECK(row.predicted_trigger_frame==int64_t(f.clock+5));
        CHECK(row.behavior_model.contains("strict_attack_objects"));
        CHECK(row.behavior_model.contains("attack_timing_prediction"));
        CHECK(m.warnings.empty());
    });
    test("strict prediction remains inactive before the attack animation",[]{
        auto f=frame();auto e=enemy();e.type=14;e.variant=0;e.subtype=0;e.state=4;
        e.animation="WalkHori";e.animation_frame=0;f.entities={e};
        MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        CHECK(m.enemies.size()==1);CHECK(!m.enemies.front().attack_timing_verified);
        CHECK(m.enemies.front().predicted_trigger_frame==-1);
    });
    test("Matriarch AI fields preserve a conditional timer without a reliable end",[]{
        auto f=frame();auto e=enemy();e.type=413;e.state=13;e.state_frame=4;e.animation="RageBegin";
        e.ai_i1=400;e.ai_i2=3;f.entities={e};MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));
        auto m=semantics.evaluate(f);CHECK(m.enemies.size()==1);const auto& row=m.enemies.front();
        CHECK(row.boss_phase==3);CHECK(row.is_enraged==1);CHECK(row.current_action=="RageBegin");
        CHECK(row.predicted_action_end_frame==-1);CHECK(row.behavior_model["conditional_timer_estimate"]["candidate_frame"]==int64_t(f.clock+200));CHECK(!row.behavior_model["conditional_timer_estimate"]["verified"].get<bool>());CHECK(m.known_boss_phases==1);
    });
    test("Vis Fatty State 16 remains a static enrage candidate without runtime proof",[]{
        auto f=frame();auto e=enemy();e.type=886;e.variant=0;e.state=16;e.animation="RageStart";e.child=0;
        f.entities={e};MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        CHECK(m.enemies.size()==1);CHECK(m.enemies.front().is_enraged==-1);
        CHECK(m.enemies.front().unknown_reason.find("static candidate")!=std::string::npos);
    });
    test("Fetal Demon does not inherit Vis Fatty State 16",[]{
        auto f=frame();auto e=enemy();e.type=886;e.variant=1;e.state=16;e.animation="RageStart";
        f.entities={e};MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        CHECK(m.enemies.size()==1);CHECK(m.enemies.front().unknown_state);
        CHECK(m.enemies.front().unknown_reason.find("static candidate")==std::string::npos);
    });
    test("Delirium raw fields remain readable while attack semantics remain Unknown",[]{
        auto f=frame();auto e=enemy();e.type=412;e.state=3;e.animation="Attack1";e.target=0x12345678;
        e.parent=0x20000;e.parent_in_snapshot=true;e.shield_history_capacity=120;
        e.delirium_layout_valid=true;
        e.ai_i1=17;e.ai_i2=2;e.delirium_state=7;e.delirium_attack_id=0xab123456u;
        e.delirium_attack_id_low24=0x123456u;e.delirium_cycle_id=0x123456789aULL;
        e.delirium_cycle_low7=0x1a;e.delirium_cycle_field_15_24=0x123;e.delirium_cycle_field_25_34=0x234;
        f.entities={e};MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        CHECK(m.enemies.size()==1);CHECK(m.enemies.front().attack_type=="Unknown");
        CHECK(m.enemies.front().boss_phase==-1);CHECK(m.enemies.front().is_enraged==-1);
        CHECK(m.enemies.front().attack_target==0x12345678);
        CHECK(!m.enemies.front().attack_target_in_snapshot);
        CHECK(m.enemies.front().attack_target_semantics.find("stale")!=std::string::npos);
        CHECK(m.enemies.front().delirium_attack_id_low24==0x123456u);
        CHECK(m.enemies.front().delirium_cycle_id==0x123456789aULL);
        auto copy=json(m.enemies.front()).get<MechanismObservation>();
        CHECK(copy.health==e.hp);CHECK(copy.max_health==e.max_hp);CHECK(copy.parent==e.parent);
        CHECK(copy.parent_in_snapshot);CHECK(copy.shield_history_capacity==120);
        CHECK(copy.delirium_layout_valid);
        CHECK(copy.delirium_attack_id==e.delirium_attack_id);CHECK(copy.delirium_cycle_id==e.delirium_cycle_id);
    });
    test("Big Horn exposes the Invincible field without claiming all damage immunity",[]{
        auto f=frame();auto e=enemy();e.type=411;e.state=13;e.animation="Charge3";e.invulnerable=true;
        f.entities={e};MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        CHECK(m.enemies.size()==1);CHECK(m.enemies.front().is_invincible==1);
        CHECK(m.enemies.front().invincibility_scope.find("other")!=std::string::npos||
              m.enemies.front().invincibility_scope.find("Unknown")!=std::string::npos);
        CHECK(m.enemies.front().attack_type=="Charge3");
    });
    test("Ultra Greed ShieldStrength is reported without being renamed Invincible",[]{
        auto f=frame();auto e=enemy();e.type=406;e.state=400;e.animation="GuardStart";
        e.shield_strength=130;e.invulnerable=false;f.entities={e};MechanismSemantics semantics;
        CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        CHECK(m.enemies.size()==1);CHECK(m.enemies.front().is_invincible==0);
        CHECK(m.enemies.front().shield_strength==130);
        CHECK(m.enemies.front().invincibility_scope.find("ShieldStrength=130")!=std::string::npos);
        CHECK(m.enemies.front().invincibility_scope.find("ShieldDamageAbsorption")!=std::string::npos);
    });
    test("database warning rules feed Eye windup geometry into the planner",[]{
        auto f=frame();auto e=enemy({320,220});e.type=60;e.state=8;e.animation="Shoot";e.animation_frame=1;
        f.entities={e};MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));auto m=semantics.evaluate(f);
        const auto warning=std::find_if(m.warnings.begin(),m.warnings.end(),[](const auto&w){return w.kind=="laser-warning";});
        CHECK(warning!=m.warnings.end());
        CHECK(warning->predicted_trigger_frame==int64_t(f.clock+11));
        CHECK(m.enemies.front().attack_type=="Eye Laser");
        Planner planner;auto decision=planner.decide(f,true,&m);CHECK(decision.valid);
        CHECK(std::any_of(planner.threats().begin(),planner.threats().end(),[](const Threat&t){
            return t.kind=="laser-warning"&&t.shape==Shape::capsule;
        }));
    });
    test("address reuse drops cached warning identity before interpreting the new entity",[]{
        auto f=frame();auto eye=enemy({320,220});eye.type=60;eye.state=8;eye.animation="Shoot";eye.animation_frame=1;
        f.entities={eye};MechanismSemantics semantics;CHECK(semantics.load(semantics_path()));
        auto first=semantics.evaluate(f);
        CHECK(std::any_of(first.warnings.begin(),first.warnings.end(),[](const auto&w){return w.kind=="laser-warning";}));
        ++f.clock;auto replacement=enemy({360,220});replacement.state=1;replacement.animation="Idle";
        f.entities={replacement};auto second=semantics.evaluate(f);
        CHECK(std::none_of(second.warnings.begin(),second.warnings.end(),[](const auto&w){return w.kind=="laser-warning";}));
        CHECK(second.stale_entities_dropped==1);
    });
    test("native reader accepts all 448 grid slots in a 28 by 16 room",[]{
        auto m=fixture();constexpr uint32_t room=0xa0000,wall=0xf0000;
        m->put<int>(room+0xc,28);m->put<int>(room+0x10,16);
        m->put<int>(0xb0300+0x48,8);
        m->put<uint32_t>(room+0x24+447*4,wall);m->put<int>(wall+4,15);m->put<int>(wall+0x3c,3);
        Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);auto f=r.capture(1000);
        CHECK(f.valid);CHECK(f.grid.valid);CHECK(f.grid.cells.size()==448);
        CHECK(f.grid.cells.back().type==15);CHECK(f.grid.cells.back().collision==3);
        CHECK(Planner().decide(f).valid);
    });
    test("native reader rejects grids larger than native capacity with dimensions",[]{
        auto m=fixture();m->put<int>(0xa0000+0xc,29);m->put<int>(0xa0000+0x10,16);
        Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);auto f=r.capture(1000);
        CHECK(!f.valid);CHECK(f.error.find("29x16")!=std::string::npos);
    });
    test("mapped-image fallback locates the real process image without module enumeration",[]{
        wchar_t path[32768];DWORD n=GetModuleFileNameW(nullptr,path,32768);CHECK(n>0&&n<32768);
        Process self{GetCurrentProcessId(),std::filesystem::path(std::wstring(path,n))};
        auto expected=reinterpret_cast<uintptr_t>(GetModuleHandleW(nullptr));
        CHECK(process_image_base(self)==expected);CHECK(process_image_base(self,true)==expected);
    });
    test("mapped-image fallback does not accept a different executable path",[]{
        wchar_t path[32768];DWORD n=GetModuleFileNameW(nullptr,path,32768);CHECK(n>0&&n<32768);
        Process other{GetCurrentProcessId(),std::filesystem::path(std::wstring(path,n)).parent_path()/L"not-this-process.exe"};
        bool rejected=false;try{process_image_base(other,true);}catch(const std::exception&){rejected=true;}CHECK(rejected);
    });
    test("hostile familiar tears enter threat model",[]{auto f=frame();auto e=bullet({380,280},{-240,0});e.type=2;e.spawner_type=3;e.hostile_source=true;f.entities={e};auto d=Planner().decide(f);CHECK(d.move!=Move::stay);CHECK(d.threats>0);});
    test("native reader rejects missing local controller",[]{auto m=fixture();m->put<int>(0xc0000+0x1618,4);Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);CHECK(!r.capture(1).valid);});
    test("native reader rejects partial entity partition",[]{auto m=fixture();m->put<uint32_t>(0xa0000+0x1218+0x20+12,3);Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);CHECK(!r.capture(1).valid);});
    test("native reader rejects invalid floats",[]{auto m=fixture();m->put<float>(0xd0000+0x33c,std::numeric_limits<float>::quiet_NaN());Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);CHECK(!r.capture(1).valid);});
    test("native reader rejects menus",[]{auto m=fixture();m->put<int>(0x90000+8,3);Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);CHECK(!r.capture(1).valid);});
    test("keys release fire while keeping dodge after clear",[]{FakeSink sink;Controller c(sink);c.enable();auto f=frame();f.captured_ms=100;Decision d;d.valid=true;d.move=Move::north;d.fire=Fire::right;c.apply(f,d,100,true,false);CHECK(sink.keys.contains('W')&&sink.keys.contains(0x27));d.fire=Fire::none;c.apply(f,d,101,true,false);CHECK(sink.keys==Keys{'W'});d.move=Move::stay;c.apply(f,d,102,true,false);CHECK(sink.keys.empty());});
    test("focus manual stale invalid release keys",[]{for(int reason=0;reason<4;++reason){FakeSink sink;Controller c(sink);c.enable();auto f=frame();f.captured_ms=10;Decision d;d.valid=true;d.move=Move::east;c.apply(f,d,10,true,false);CHECK(!sink.keys.empty());if(reason==3)f.valid=false;c.apply(f,d,reason==2?200:11,reason!=0,reason==1);CHECK(sink.keys.empty());}});
    test("disabled controller never sends input",[]{FakeSink sink;Controller c(sink);auto f=frame();Decision d;d.valid=true;d.move=Move::east;c.apply(f,d,0,true,false);CHECK(sink.keys.empty());});
    test("attack toggle immediately releases fire and keeps movement",[]{FakeSink sink;Controller c(sink);c.enable();auto f=frame();Decision d;d.valid=true;d.move=Move::north;d.fire=Fire::right;c.apply(f,d,0,true,false);CHECK(sink.keys==Keys({'W',0x27}));CHECK(c.set_attack_enabled(false));CHECK(sink.keys==Keys({'W'}));CHECK(c.enabled());auto result=c.apply(f,d,1,true,false);CHECK(!result.attack_enabled);CHECK(sink.keys==Keys({'W'}));CHECK(c.set_attack_enabled(true));c.apply(f,d,2,true,false);CHECK(sink.keys.contains(0x27));});
    test("dodge only does not chase a target or shoot",[]{auto f=frame();f.entities={enemy({480,350})};Planner p;auto d=p.decide(f,false);CHECK(d.valid);CHECK(d.move==Move::stay);CHECK(d.fire==Fire::none);CHECK(!d.target);f.entities.push_back(bullet({380,280},{-240,0}));++f.clock;d=p.decide(f,false);CHECK(d.move!=Move::stay);CHECK(d.fire==Fire::none);CHECK(!d.target);});
    test("pause focus loss and stale frames keep enable preference then resume",[]{for(int reason=0;reason<3;++reason){FakeSink sink;Controller c(sink);c.enable();auto f=frame();f.captured_ms=100;Decision d;d.valid=true;d.move=Move::east;d.fire=Fire::right;c.apply(f,d,100,true,false);CHECK(!sink.keys.empty());if(reason==0)f.paused=true;if(reason==2)f.valid=false;auto waiting=c.apply(f,d,110,reason!=1,false);CHECK(waiting.enabled);CHECK(c.enabled());CHECK(sink.keys.empty());f.paused=false;f.valid=true;f.captured_ms=120;auto resumed=c.apply(f,d,120,true,false);CHECK(resumed.applied);CHECK(c.enabled());CHECK(!sink.keys.empty());}});
    test("arrows have nonzero extended hardware scan codes",[]{auto events=scan_code_events({},Keys{0x25,0x26,0x27,0x28});CHECK(events.size()==4);uint16_t expected[]={0x4b,0x48,0x4d,0x50};for(size_t i=0;i<events.size();++i){CHECK(events[i].scan==expected[i]);CHECK(events[i].extended);CHECK(!events[i].key_up);}auto release=scan_code_events(Keys{0x27,'W'},Keys{'W'});CHECK(release.size()==1);CHECK(release[0].scan==0x4d&&release[0].key_up&&release[0].extended);});
    test("movement scan codes are physical WASD without extended flags",[]{auto events=scan_code_events({},Keys{'A','D','S','W'});CHECK(events.size()==4);uint16_t expected[]={0x1e,0x20,0x1f,0x11};for(size_t i=0;i<events.size();++i){CHECK(events[i].scan==expected[i]);CHECK(!events[i].extended);}});
    test("real captured attack frame produces shoot output unless attack is off",[]{std::ifstream input(std::filesystem::path(__FILE__).parent_path()/"fixtures/real-normal-tear-attack.json");CHECK(bool(input));json record;input>>record;auto f=record.at("frame").get<Frame>();Planner p;auto d=p.decide(f);CHECK(d.valid);CHECK(d.fire!=Fire::none);FakeSink sink;Controller c(sink);c.enable();c.apply(f,d,f.captured_ms,true,false);bool has_arrow=false;for(auto k:sink.keys)has_arrow|=k>=0x25&&k<=0x28;CHECK(has_arrow);c.set_attack_enabled(false);for(auto k:sink.keys)CHECK(k<0x25||k>0x28);});
    test("stop releases held keys",[]{FakeSink sink;Controller c(sink);c.enable();auto f=frame();Decision d;d.valid=true;d.move=Move::south;c.apply(f,d,0,true,false);CHECK(!sink.keys.empty());CHECK(c.stop());CHECK(sink.keys.empty());CHECK(!c.enabled());});
    test("failed output disables and records uncertain held keys",[]{FakeSink sink;Controller c(sink);c.enable();sink.fail=true;auto f=frame();Decision d;d.valid=true;d.move=Move::east;auto e=c.apply(f,d,0,true,false);CHECK(!e.enabled);CHECK(!c.enable());sink.fail=false;CHECK(c.stop());CHECK(c.enable());});
    test("json replay schema roundtrips",[]{auto f=frame();f.entities={enemy(),bullet({200,200},{3,4})};auto copy=json(f).get<Frame>();CHECK(copy.entities.size()==2);CHECK(copy.entities[1].vel.y==4);CHECK(copy.player.body.pos.x==320);});
    test("receding horizon closed loop avoids aimed bullets",[]{
        auto f=frame();Planner p;Vec player_vel{};std::vector<Entity> bullets;int hits=0,shots=0;uint32_t seed=2;
        for(int tick=0;tick<300;++tick) {
            f.clock=100+tick/2;f.player.body.vel=player_vel;f.entities=bullets;f.entities.push_back(enemy({520,280}));auto d=p.decide(f);CHECK(d.valid);shots+=d.fire!=Fire::none;
            Vec old=f.player.body.pos;player_vel=player_vel+(direction(d.move)*260-player_vel)*(1-std::exp(-(1.0/60)/.11));Vec next=old+player_vel/60;
            CHECK(f.grid.sweep_clear(old,next,10,false));
            for(auto& b:bullets){Vec moved=b.pos+b.vel/60;if(moving_clearance(old,next,b.pos,moved,16)<0)++hits;b.pos=moved;}
            std::erase_if(bullets,[](const Entity&e){return e.pos.x<50||e.pos.x>590||e.pos.y<130||e.pos.y>430;});
            f.player.body.pos=next;
            if(tick%45==0){auto b=bullet({520,280},(next-Vec{520,280}).unit()*120);b.seed=seed++;b.address=0x50000+b.seed*16;bullets.push_back(b);}
        }
        CHECK(hits==0);CHECK(shots>90);
    });
    test("safe action hold marks a continued route",[]{
        // Hold is suppressed while an attack is imminent, so the continued
        // route has to come from a goal move rather than a dodge.
        auto f=frame();f.entities={enemy({500,180})};Planner p;
        auto first=p.decide(f);CHECK(first.valid);CHECK(first.safe);CHECK(first.move!=Move::stay);
        ++f.clock;
        auto second=p.decide(f);CHECK(second.valid);CHECK(second.safe);CHECK(second.move==first.move);
        CHECK(second.analysis.action_held);
    });
    test("action hold never overrides a safer route",[]{
        auto f=frame();f.entities={bullet({380,280},{-240,0})};Planner p;
        auto first=p.decide(f);CHECK(first.valid);CHECK(first.safe);CHECK(first.move!=Move::stay);
        ++f.clock;f.entities.clear();
        MechanismFrame mechanisms;mechanisms.loaded=mechanisms.valid=true;
        mechanisms.room=f.room;mechanisms.pid=f.pid;mechanisms.clock=f.clock;
        MechanismWarning warning;
        warning.source=0x70000;warning.kind="held-path-test";warning.shape="capsule";
        warning.pos=f.player.body.pos+direction(first.move)*35;
        warning.end=warning.pos+direction(first.move)*100;
        warning.radius=12;warning.start=0;warning.until=.5;warning.confidence=.9;
        warning.predictive=warning.planning_validated=warning.timing_verified=true;
        warning.evidence_status="validated";warning.source_refs="test";
        mechanisms.warnings={warning};
        auto second=p.decide(f,true,&mechanisms);
        CHECK(second.valid);CHECK(second.safe);CHECK(second.move!=first.move);
        CHECK(!second.analysis.action_held);
    });
    test("all threat producers emit valid evidence windows",[]{
        std::set<std::string> produced;
        auto validate=[&](const Frame& f,const Planner& p){
            CHECK(!p.threats().empty());
            for(const auto& t:p.threats()) {
                CHECK(!t.kind.empty());
                CHECK(t.pos.finite()&&t.end.finite()&&t.vel.finite());
                CHECK(std::isfinite(t.radius)&&t.radius>=0);
                CHECK(std::isfinite(t.start)&&std::isfinite(t.until));
                CHECK(t.start>=0&&t.until>t.start);
                CHECK(t.start_frame>=int64_t(f.clock));
                CHECK(t.end_frame>t.start_frame);
                CHECK(t.source!=0);
                CHECK(std::isfinite(t.confidence)&&t.confidence>=0&&t.confidence<=1);
                CHECK(!t.evidence_status.empty()&&!t.data_source.empty()&&!t.end_condition.empty());
                for(const auto& point:t.motion_path)CHECK(point.finite());
                for(const auto& point:t.geometry_path)CHECK(point.finite());
                produced.insert(t.kind);
            }
        };
        auto inspect=[&](Frame f){
            Planner p;auto decision=p.decide(f);CHECK(decision.valid);validate(f,p);
        };
        auto inspect_entity=[&](Entity e){
            auto f=frame();f.entities={std::move(e)};inspect(std::move(f));
        };

        inspect_entity(bullet({380,280},{-60,0}));
        auto explosive_projectile=bullet({380,280},{-60,0});explosive_projectile.projectile_flags=2;inspect_entity(explosive_projectile);
        auto contact=enemy();inspect_entity(contact);
        auto bomb=enemy();bomb.type=4;bomb.collision=0;bomb.damage=0;bomb.timeout=20;inspect_entity(bomb);
        auto burst=enemy();burst.type=302;burst.variant=10;burst.collision=0;burst.damage=0;inspect_entity(burst);
        auto creep=enemy();creep.type=1000;creep.variant=22;creep.collision=0;creep.damage=0;inspect_entity(creep);
        auto fall=enemy();fall.type=1000;fall.variant=31;fall.collision=0;fall.damage=0;inspect_entity(fall);
        auto jump=enemy();jump.collision=0;jump.animation="JumpUp";inspect_entity(jump);
        auto monstro=enemy();monstro.type=20;monstro.variant=0;monstro.collision=0;monstro.animation="Walk";inspect_entity(monstro);
        auto charge=enemy();charge.type=63;charge.state=8;charge.collision=0;charge.animation="Attack";inspect_entity(charge);
        auto roll=enemy();roll.type=265;roll.state=8;roll.collision=0;roll.animation="Roll";inspect_entity(roll);
        auto cage=enemy();cage.type=265;cage.state=7;cage.state_frame=10;cage.collision=0;cage.animation="Landing";cage.target_pos={350,300};inspect_entity(cage);
        auto vis=enemy();vis.type=39;vis.variant=0;vis.state=9;vis.state_frame=20;vis.collision=0;inspect_entity(vis);
        auto stomp=enemy();stomp.type=101;stomp.collision=0;stomp.animation="stompArm";stomp.animation_frame=0;inspect_entity(stomp);
        auto laser=enemy();laser.type=7;laser.variant=1;laser.subtype=0;laser.collision=0;laser.damage=0;laser.geometry_valid=true;
        laser.endpoint={500,280};laser.radius=6;laser.laser_radius=6;laser.timeout=10;inspect_entity(laser);
        auto curve=laser;curve.laser_points={{400,200},{420,240},{460,280}};inspect_entity(curve);
        auto unknown=laser;unknown.geometry_valid=false;unknown.endpoint={};unknown.laser_points.clear();inspect_entity(unknown);
        auto warning=enemy();warning.type=203;warning.animation="ShootDown";warning.collision=0;warning.damage=0;inspect_entity(warning);
        auto explosive=enemy();explosive.type=16;explosive.variant=2;explosive.collision=0;explosive.damage=0;inspect_entity(explosive);

        auto death_frame=frame();auto dying=explosive;death_frame.entities={dying};Planner death_planner;
        CHECK(death_planner.decide(death_frame).valid);++death_frame.clock;death_frame.entities.clear();
        auto death=death_planner.decide(death_frame);CHECK(death.valid);validate(death_frame,death_planner);

        const std::set<std::string> expected{
            "bomb","cage-landing-creep","cage-rock-wave","charge","contact","creep",
            "death-blast","explosive-npc","explosive-projectile","falling-impact","jump-landing",
            "laser","laser-curve","laser-warning","monstro-landing","projectile","projectile-burst",
            "roll","stomp","unknown-laser-axis","vis-windup"
        };
        for(const auto& kind:expected)if(!produced.contains(kind))std::cerr<<"missing threat kind: "<<kind<<"\n";
        for(const auto& kind:expected)CHECK(produced.contains(kind));
    });
    test("Phase4 loaded empty semantics preserves per-mechanism fallback",[]{
        auto f=frame();auto e=enemy();e.type=203;e.animation="ShootDown";f.entities={e};
        MechanismFrame m;m.loaded=m.valid=true;m.pid=f.pid;m.room=f.room;m.clock=f.clock;
        Planner p;auto d=p.decide(f,true,&m);CHECK(d.valid);
        CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const auto&t){return t.kind=="laser-warning";}));
    });
    test("Phase4 rejects stale semantic geometry",[]{
        auto f=frame();MechanismFrame m;m.loaded=m.valid=true;m.pid=f.pid;m.room=f.room;m.clock=f.clock-1;
        MechanismWarning w;w.source=123;w.kind="stale-test";w.radius=500;m.warnings={w};
        Planner p;p.decide(f,true,&m);CHECK(std::none_of(p.threats().begin(),p.threats().end(),[](const auto&t){return t.kind=="stale-test";}));
    });
    test("Phase4 attack entity events deduplicate and reset reused seed",[]{
        MechanismSemantics s;CHECK(s.load(MechanismSemantics::default_path(std::filesystem::current_path())));
        auto f=frame();f.pid=10;f.entities={bullet({400,300},{-60,0})};
        auto count=[](const auto&m){return std::count_if(m.events.begin(),m.events.end(),[](const auto&e){return e.event=="AttackStart";});};
        CHECK(count(s.evaluate(f))==1);CHECK(count(s.evaluate(f))==0);
        ++f.clock;CHECK(count(s.evaluate(f))==0);++f.entities[0].seed;++f.clock;CHECK(count(s.evaluate(f))==1);
        ++f.pid;CHECK(count(s.evaluate(f))==1);
    });
    test("Phase4 unknown exact identity never gets inferred attack events",[]{
        MechanismSemantics s;CHECK(s.load(MechanismSemantics::default_path(std::filesystem::current_path())));
        auto f=frame();auto e=enemy();e.type=60;e.variant=999;e.animation="Shoot";e.state=8;f.entities={e};
        auto m=s.evaluate(f);CHECK(m.unknown_states==1);CHECK(m.warnings.empty());
        CHECK(std::all_of(m.events.begin(),m.events.end(),[](const auto&e){return e.event=="Unknown"&&!e.verified;}));
        Planner p;p.decide(f,true,&m);CHECK(std::none_of(p.threats().begin(),p.threats().end(),[](const auto&t){return t.kind=="laser-warning";}));
    });
    test("Phase4 timing evidence does not promote unknown geometry or ending",[]{
        MechanismSemantics s;CHECK(s.load(MechanismSemantics::default_path(std::filesystem::current_path())));
        auto f=frame();auto e=enemy();e.type=68;e.variant=1;e.state=9;e.animation="AttackAlt01";e.animation_frame=2;f.entities={e};
        auto m=s.evaluate(f);PlannerConfig config;config.evaluate_candidate_warnings=true;Planner p(config);p.decide(f,true,&m);
        auto t=std::find_if(p.threats().begin(),p.threats().end(),[](const auto&t){return t.predictive;});
        CHECK(t!=p.threats().end());CHECK(t->timing_verified);CHECK(!t->geometry_verified);
        CHECK(t->start_frame>=int64_t(f.clock)&&t->end_frame>t->start_frame);
        CHECK(json(m).get<MechanismFrame>().events.size()==m.events.size());
    });
    test("Phase4 candidate warning cannot replace production fallback",[]{
        auto f=frame();auto e=enemy();e.type=203;e.animation="ShootDown";f.entities={e};
        MechanismFrame m;m.loaded=m.valid=true;m.room=f.room;m.clock=f.clock;m.pid=f.pid;
        MechanismWarning w;w.source=e.address;w.rule_id="brimstone-head-shoot-windup";w.kind="candidate-only";w.radius=500;m.warnings={w};
        Planner p;p.decide(f,true,&m);
        CHECK(std::none_of(p.threats().begin(),p.threats().end(),[](const auto&t){return t.kind=="candidate-only";}));
        CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const auto&t){return t.kind=="laser-warning";}));
        m.warnings[0].planning_validated=true;Planner verified;verified.decide(f,true,&m);
        CHECK(std::any_of(verified.threats().begin(),verified.threats().end(),[](const auto&t){return t.kind=="candidate-only";}));
    });
    test("Phase4 late laser observation is reactive rather than advance warning",[]{
        auto f=frame();auto e=enemy();e.type=60;e.state=8;e.animation="Shoot";e.animation_frame=15;f.entities={e};
        MechanismSemantics s;CHECK(s.load(semantics_path()));auto m=s.evaluate(f);
        const auto warning=std::find_if(m.warnings.begin(),m.warnings.end(),[](const auto&w){return w.kind=="laser-warning";});
        CHECK(warning!=m.warnings.end());CHECK(!warning->predictive);
        CHECK(warning->predicted_trigger_frame==-1);CHECK(m.predictive_warnings==0);CHECK(m.reactive_warnings>=1);
    });
    test("laser reader preserves native collision radius across render scales",[]{
        std::vector<uint8_t> raw(0x600);auto put=[&](size_t at,auto value){std::memcpy(raw.data()+at,&value,sizeof(value));};
        put(0x28,7);put(0x170,uint8_t(1));put(0x172,uint8_t(1));put(0x370,16.0f);put(0x4e0,3.0f);put(0x4bc,80.0f);
        auto e=decode_entity(0x30000,raw);CHECK(e.radius==16);CHECK(e.laser_radius==80);
    });
    test("verified Eye warning follows frozen AI angle and measured collision window",[]{
        auto f=frame();auto e=enemy({320,220});e.type=60;e.state=8;e.animation="Shoot";e.animation_frame=1;e.ai_v1={90,0};f.entities={e};
        f.player.body.pos={520,200};f.player.body.vel={400,-400};
        MechanismSemantics s;CHECK(s.load(semantics_path()));auto m=s.evaluate(f);
        const auto warning=std::find_if(m.warnings.begin(),m.warnings.end(),[](const auto&w){return w.kind=="laser-warning";});
        CHECK(warning!=m.warnings.end());
        const auto&w=*warning;CHECK(w.planning_validated);CHECK(w.radius==5);CHECK(w.geometry_margin==1);
        CHECK(std::abs(w.pos.x-320)<1e-6&&std::abs(w.pos.y-235)<1e-6);CHECK(std::abs(w.end.x-320)<1e-6);
        CHECK(w.predicted_trigger_frame==int64_t(f.clock+11));CHECK(w.predicted_end_frame==int64_t(f.clock+12));
        Planner p;p.decide(f,true,&m);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const auto&t){return t.predictive&&t.geometry_verified&&t.radius==5;}));
        ++f.clock;f.entities[0].animation_frame=15;m=s.evaluate(f);p.decide(f,true,&m);
        CHECK(std::none_of(p.threats().begin(),p.threats().end(),[](const auto&t){return t.kind=="laser-warning";}));
    });
    test("candidate beam is opt-in and exposes full planner paths",[]{
        auto f=frame();f.entities={enemy({500,280})};
        PlannerConfig config;config.record_candidates=true;Planner planner(config);
        auto decision=planner.decide(f);CHECK(decision.valid);
        CHECK(!planner.candidates().empty());
        CHECK(planner.candidates().front().path.size()>1);
        CHECK(planner.candidates().front().move==decision.move);
        Planner plain;plain.decide(f);CHECK(plain.candidates().empty());
    });
    test("top-k joint planner reads candidate paths and chooses move plus fire",[]{
        auto f=frame();f.entities={enemy({470,280})};
        TopKJointPlanner planner;
        auto plan=planner.decide(f);
        CHECK(plan.baseline.valid&&plan.decision.valid);
        CHECK(!plan.previews.empty());
        CHECK(int(plan.previews.size())<=planner.config().seed_candidates);
        CHECK(plan.previews.front().path.size()>1);
        CHECK(!plan.move_sequence.empty()&&!plan.fire_sequence.empty());
        CHECK(plan.decision.fire==Fire::right);
        CHECK(plan.predicted_shots>=0);
        CHECK(plan.planning_ms>=plan.baseline_planning_ms);
    });
    test("top-k joint planner respects attack disable",[]{
        auto f=frame();f.entities={enemy({470,280})};
        TopKJointPlanner planner;
        auto plan=planner.decide(f,false);
        CHECK(plan.decision.fire==Fire::none);
    });
    test("multi-step lookahead reports attack opportunities along future paths",[]{
        auto f=frame();f.entities={enemy({470,280}),enemy({420,200})};f.entities[1].address=0x30001;f.entities[1].seed=2;
        for(int tick=0;tick<40;++tick) {
            ++f.clock;
            Planner baseline;TopKJointPlanner joint;
            auto plan=joint.decide(f);
            CHECK(plan.decision.valid);
            CHECK(!plan.previews.empty());
            CHECK(std::isfinite(plan.predicted_damage)&&std::isfinite(plan.predicted_attack));
            CHECK(plan.previews.front().path.size()*joint.config().dt>0.3);
            if(plan.predicted_attack>0)break;
        }
        CHECK(true);
    });
    test("joint lookup is deterministic for the same frame",[]{
        auto f=frame();f.entities={enemy({500,280}),enemy({400,220})};f.entities[1].address=0x30001;f.entities[1].seed=2;
        TopKJointPlanner first,second;
        auto a=first.decide(f),b=second.decide(f);
        CHECK(a.decision.move==b.decision.move);
        CHECK(a.decision.fire==b.decision.fire);
        CHECK(a.predicted_damage==b.predicted_damage);
        CHECK(a.predicted_attack==b.predicted_attack);
        CHECK(a.move_sequence==b.move_sequence);
        CHECK(a.fire_sequence==b.fire_sequence);
    });
    test("seeded comparison scenarios reproduce counters",[]{
        BenchmarkScenario scenario{"unit-probe",7,120,6,1,30,true};
        const auto first=run_policy_scenario(scenario,false);
        const auto second=run_policy_scenario(scenario,false);
        CHECK(first.policy=="baseline"&&second.policy=="baseline");
        CHECK(first.ticks==second.ticks);
        CHECK(first.hp_lost==second.hp_lost);
        CHECK(first.damage_dealt==second.damage_dealt);
        CHECK(first.enemies_killed==second.enemies_killed);
        CHECK(first.shots==second.shots&&first.shot_hits==second.shot_hits);
        const auto joint=run_policy_scenario(scenario,true);
        CHECK(joint.policy=="topk-joint");
        CHECK(joint.ticks>0&&joint.total_planning_ms>0);
    });
    test("mpc pressure arm runs the same seeded scenario as the original planner",[]{
        BenchmarkScenario scenario{"unit-mpc-pressure",9,24,6,2,25,true,45,40,180};
        const auto baseline=run_policy_scenario(scenario,BenchmarkPolicy::baseline);
        const auto mpc=run_policy_scenario(scenario,BenchmarkPolicy::mpc);
        CHECK(baseline.policy=="baseline"&&mpc.policy=="mpc");
        CHECK(baseline.ticks>0&&mpc.ticks>0);
        CHECK(baseline.total_planning_ms>0&&mpc.total_planning_ms>0);
        CHECK(mpc.mpc_depth>=mpc.ticks);
    });
    test("enemy intent recognises a pre-spawn aimed projectile from geometry data",[]{
        auto f=frame();auto e=enemy({500,280});e.state=4;e.animation="Shoot";e.animation_frame=48;
        e.animation_length=60;e.animation_looping=true;e.animation_playing=true;
        e.animation_speed=1;e.speed_multiplier=1;f.entities={e};
        MechanismFrame m;m.loaded=m.valid=true;m.room=f.room;m.pid=f.pid;m.clock=f.clock;
        MonsterGeometryRef model;model.source=e.address;model.kind="projectile";
        model.source_state=4;model.source_animation="Shoot";
        model.trigger_animation_frame=54;model.trigger_animation_frame_min=54;model.trigger_animation_frame_max=54;
        model.pattern="stream";model.pattern_direction="aimed";model.pattern_center="source";
        model.speed=200;model.radius=5;model.duration=30;model.pattern_count=1;
        model.planning_validated=true;model.pre_spawn_verified=true;model.geometry_verified=true;
        model.evidence_status="unit-test geometry";model.id="unit.aimed";
        m.geometry_models={model};
        MechanismObservation observation;observation.address=e.address;observation.type=e.type;
        observation.variant=e.variant;observation.subtype=e.subtype;observation.state=4;
        observation.attack_type="ProjectileAttack";
        observation.attack_type_evidence="unit-test strict timing";
        observation.attack_timing_verified=true;observation.predicted_trigger_frame=f.clock+6;
        observation.attack_target_semantics="player lock";observation.confidence=.9;
        m.enemies={observation};
        EnemyIntentPredictor predictor;
        const auto intents=predictor.predict(f,&m);
        CHECK(!intents.empty());
        const auto found=std::find_if(intents.begin(),intents.end(),[](const EnemyIntent& intent){
            return intent.primitive==AttackPrimitive::aimed_projectile;});
        CHECK(found!=intents.end());
        CHECK(found->can_instantiate);CHECK(found->evidence==AttackEvidence::verified);
        CHECK(std::abs(found->trigger_time-0.2)<1e-6);
        CHECK(found->targeting==AttackTargeting::player_position);
        CHECK(predictor.coverage().geometry_known==1);
        CHECK(predictor.coverage().verified>=1);
    });
    test("action-conditioned forecast aims at each candidate path position",[]{
        auto f=frame();auto e=enemy({320,200});e.state=4;e.animation="Shoot";e.animation_frame=48;
        e.animation_length=60;e.animation_looping=true;e.animation_playing=true;
        e.animation_speed=1;e.speed_multiplier=1;f.entities={e};
        MechanismFrame m;m.loaded=m.valid=true;m.room=f.room;m.pid=f.pid;m.clock=f.clock;
        MonsterGeometryRef model;model.source=e.address;model.kind="projectile";
        model.source_state=4;model.source_animation="Shoot";
        model.trigger_animation_frame=54;model.trigger_animation_frame_min=54;model.trigger_animation_frame_max=54;
        model.pattern="stream";model.pattern_direction="aimed";model.speed=200;model.radius=5;
        model.duration=30;model.planning_validated=true;model.pre_spawn_verified=true;
        model.geometry_verified=true;model.id="unit.aimed";m.geometry_models={model};
        EnemyIntentPredictor predictor;const auto intents=predictor.predict(f,&m);
        std::vector<Vec> left(30,Vec{200,280}),right(30,Vec{440,280});
        const auto left_path=predictor.instantiate_path(intents,f,left,1.0/60);
        const auto right_path=predictor.instantiate_path(intents,f,right,1.0/60);
        CHECK(left_path.instantiated==1&&right_path.instantiated==1);
        CHECK(left_path.forecasts.front().target_position.x<300);
        CHECK(right_path.forecasts.front().target_position.x>400);
        CHECK(left_path.forecasts.front().direction.x<0);
        CHECK(right_path.forecasts.front().direction.x>0);
    });
    test("virtual threat generator marks and deduplicates intent threats",[]{
        auto f=frame();auto e=enemy({500,280});e.state=4;e.animation="Shoot";e.animation_frame=48;
        e.animation_length=60;e.animation_looping=true;e.animation_playing=true;
        e.animation_speed=1;e.speed_multiplier=1;f.entities={e};
        MechanismFrame m;m.loaded=m.valid=true;m.room=f.room;m.pid=f.pid;m.clock=f.clock;
        MonsterGeometryRef model;model.source=e.address;model.kind="projectile";
        model.source_state=4;model.source_animation="Shoot";
        model.trigger_animation_frame=54;model.trigger_animation_frame_min=54;model.trigger_animation_frame_max=54;
        model.pattern="stream";model.pattern_direction="aimed";model.speed=200;model.radius=5;
        model.duration=30;model.planning_validated=true;model.pre_spawn_verified=true;
        model.geometry_verified=true;model.id="unit.aimed";m.geometry_models={model};
        EnemyIntentPredictor predictor;const auto intents=predictor.predict(f,&m);
        const auto path=predictor.instantiate_path(intents,f,std::vector<Vec>(30,Vec{320,280}),1.0/60);
        CHECK(path.instantiated==1);
        VirtualThreatGenerator generator;
        const auto batch=generator.generate(path.forecasts,f,{},1.5);
        CHECK(batch.generated>=1&&!batch.threats.empty());
        for(const auto& threat:batch.threats) {
            CHECK(threat.virtual_threat);CHECK(threat.predictive);
            CHECK(threat.damage_class==DamageClass::projectile);
            CHECK(!threat.motion_path.empty());
            CHECK(!threat.forecast_id.empty());
        }
        Threat existing=batch.threats.front();existing.virtual_threat=false;
        const auto deduped=generator.generate(path.forecasts,f,{existing},1.5);
        CHECK(deduped.deduplicated>=1);
    });
    test("animation cue creates a candidate charge intent but unknown stays silent",[]{
        auto f=frame();auto e=enemy({480,280});e.type=999;e.state=8;e.animation="Charge";
        e.animation_frame=5;e.animation_length=20;e.animation_playing=true;e.animation_speed=1;
        e.speed_multiplier=1;e.vel={120,0};f.entities={e};
        EnemyIntentPredictor predictor;
        const auto intents=predictor.predict(f,nullptr);
        const auto charge=std::find_if(intents.begin(),intents.end(),[](const EnemyIntent& intent){
            return intent.primitive==AttackPrimitive::charge;});
        CHECK(charge!=intents.end());CHECK(charge->can_instantiate);
        CHECK(charge->evidence==AttackEvidence::candidate);
        VirtualThreatConfig virtual_config;virtual_config.include_candidate=true;
        VirtualThreatGenerator generator(virtual_config);
        const auto path=predictor.instantiate_path(intents,f,std::vector<Vec>(20,Vec{320,280}),1.0/60);
        const auto batch=generator.generate(path.forecasts,f,{},1.0);
        CHECK(batch.generated>=1);
        CHECK(batch.threats.front().damage_class==DamageClass::charge);
        auto unknown_frame=frame();unknown_frame.entities={enemy({480,280})};
        CHECK(predictor.predict(unknown_frame,nullptr).empty());
    });
    test("top-k joint planner carries intent forecasts into its virtual threat set",[]{
        auto f=frame();auto e=enemy({470,280});e.type=999;e.state=8;e.animation="Charge";
        e.animation_frame=5;e.animation_length=20;e.animation_playing=true;e.animation_speed=1;
        e.speed_multiplier=1;e.vel={120,0};f.entities={e};
        LookaheadConfig config;config.intent_include_candidate=true;
        config.epochs=2;config.epoch_frames=4;
        TopKJointPlanner planner(config);
        const auto plan=planner.decide(f);
        CHECK(plan.decision.valid);CHECK(!plan.intents.empty());
        CHECK(plan.intent_coverage.animation_known>=1);
        CHECK(plan.real_threats>0);
        CHECK(plan.virtual_threats>0);
        CHECK(!plan.selected_virtual_threats.empty());
        for(const auto& threat:plan.selected_virtual_threats)CHECK(threat.virtual_threat);
        CHECK(!plan.selected_forecasts.empty());
    });
    test("unknown entity always leaves a generic physical tracking threat",[]{
        auto f=frame();auto e=enemy({450,280});e.type=999;e.animation.clear();
        e.vel={};f.entities={e};
        UnknownThreatManager manager;
        const auto assessment=manager.assess(f,nullptr);
        CHECK(assessment.unknown_entities>=1);
        CHECK(!assessment.tracking_threats.empty());
        for(const auto& threat:assessment.tracking_threats) {
            CHECK(threat.unknown_threat);CHECK(threat.virtual_threat);CHECK(threat.predictive);
            CHECK(threat.risk_weight>=1);
            CHECK(!threat.motion_path.empty());
            CHECK(threat.kind=="unknown-tracking");
        }
        CHECK(!assessment.entities.empty());
        CHECK(!assessment.entities.front().history.empty());
    });
    test("lower confidence widens the conservative tracking envelope",[]{
        auto f=frame();auto e=enemy({450,280});e.type=999;f.entities={e};
        UnknownThreatManager unknown_manager;
        const auto unknown=unknown_manager.assess(f,nullptr);
        MechanismFrame m;m.loaded=m.valid=true;m.room=f.room;m.pid=f.pid;m.clock=f.clock;
        MechanismObservation observation;observation.address=e.address;observation.type=e.type;
        observation.state=4;observation.unknown_state=true;observation.confidence=.9;
        m.enemies={observation};
        UnknownThreatManager known_manager;
        const auto known=known_manager.assess(f,&m);
        CHECK(!unknown.tracking_threats.empty()&&!known.tracking_threats.empty());
        CHECK(unknown.tracking_threats.front().radius>known.tracking_threats.front().radius);
        CHECK(unknown.tracking_threats.front().risk_weight>=
              known.tracking_threats.front().risk_weight);
    });
    test("unknown attack cue creates a conservative corridor and emergency",[]{
        auto f=frame();auto e=enemy({360,280});e.type=999;e.animation="Attack";
        e.state=8;e.state_frame=4;e.animation_frame=4;e.animation_playing=true;
        e.animation_speed=1;e.speed_multiplier=1;f.entities={e};
        UnknownThreatManager manager;
        const auto assessment=manager.assess(f,nullptr);
        CHECK(!assessment.attack_intents.empty());
        CHECK(assessment.uncertain_attacks>=1);
        CHECK(assessment.attack_intents.front().primitive==AttackPrimitive::uncertain_corridor);
        CHECK(assessment.attack_intents.front().risk_weight>=2.5);
        CHECK(assessment.emergency);
        CHECK(!assessment.emergency_reason.empty());
    });
    test("fast unknown body gets a corridor envelope",[]{
        auto f=frame();auto e=enemy({420,280});e.type=999;e.animation="Dash";
        e.vel={300,0};e.state=8;e.animation_playing=true;e.animation_speed=1;
        e.speed_multiplier=1;f.entities={e};
        UnknownThreatManager manager;
        const auto assessment=manager.assess(f,nullptr);
        CHECK(!assessment.attack_intents.empty());
        CHECK(assessment.attack_intents.front().primitive==AttackPrimitive::uncertain_corridor);
        CHECK(assessment.attack_intents.front().collision_radius>e.radius);
        CHECK(assessment.attack_intents.front().length>100);
    });
    test("unknown classification is revised when precise mechanism evidence appears",[]{
        auto f=frame();auto e=enemy({450,280});e.type=999;e.state=4;e.animation="Shoot";
        e.animation_frame=40;e.animation_length=60;e.animation_playing=true;
        e.animation_speed=1;e.speed_multiplier=1;f.entities={e};
        UnknownThreatManager manager;
        const auto first=manager.assess(f,nullptr);
        CHECK(!first.entities.empty());
        CHECK(first.entities.front().classification!=UnknownClassification::identified);
        MechanismFrame m;m.loaded=m.valid=true;m.room=f.room;m.pid=f.pid;m.clock=f.clock;
        MonsterGeometryRef model;model.source=e.address;model.kind="projectile";
        model.source_state=4;model.source_animation="Shoot";
        model.planning_validated=true;model.pre_spawn_verified=true;
        model.geometry_verified=true;m.geometry_models={model};
        const auto second=manager.assess(f,&m);
        CHECK(!second.entities.empty());
        CHECK(second.entities.front().classification==UnknownClassification::identified);
        bool revised=false;
        for(const auto& revision:second.entities.front().revisions)
            revised|=revision.find("-> identified")!=std::string::npos;
        CHECK(revised);
        CHECK(second.attack_intents.empty());
    });
    test("unknown attack enters top-k scoring and emergency reason",[]{
        auto f=frame();auto e=enemy({360,280});e.type=999;e.animation="Attack";
        e.state=8;e.animation_frame=4;e.animation_playing=true;
        e.animation_speed=1;e.speed_multiplier=1;f.entities={e};
        LookaheadConfig config;config.epochs=8;config.epoch_frames=6;
        TopKJointPlanner planner(config);
        const auto plan=planner.decide(f);
        CHECK(plan.decision.valid);
        CHECK(plan.unknown_attack_intents>0);
        CHECK(plan.unknown_tracking_threats>0);
        CHECK(plan.unknown_emergency);
        CHECK(plan.decision.reason.find("UNKNOWN THREAT EMERGENCY")!=std::string::npos);
        CHECK(!plan.unknown.attack_intents.empty());
        CHECK(plan.virtual_threats>0);
        for(const auto& threat:plan.selected_virtual_threats)CHECK(threat.virtual_threat);
    });
    test("world snapshot records exact, estimated and unknown provenance",[]{
        auto f=frame();f.player.health=6;auto e=enemy({420,280});f.entities={e};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        CHECK(snapshot.enemies.size()==1);
        CHECK(snapshot.player.provenance.get("player.body.transform.pos").precision==Precision::exact);
        CHECK(snapshot.player.provenance.get("player.invulnerability_frames").precision==Precision::unknown);
        CHECK(!snapshot.rng.available);
        CHECK(snapshot.rng.precision==Precision::unknown);
        CHECK(snapshot.enemies.front().provenance.get("enemy.transform.pos").precision==Precision::exact);
        CHECK(snapshot.enemies.front().provenance.get("enemy.attack_plan").precision==Precision::unknown);
        CHECK(snapshot.enemies.front().provenance.get("enemy.height").precision==Precision::estimated);
        CHECK(snapshot.enemies.front().provenance.get("enemy.ai_semantics").precision==Precision::unknown);
        CHECK(snapshot.exact_fields>0&&snapshot.unknown_fields>0);
        CHECK(snapshot.provenance.get("snapshot.coverage_gap").precision==Precision::unknown);
        const auto copy=WorldStateSnapshot::from_json(snapshot.to_json());
        CHECK(copy.enemies.size()==1);
        CHECK(std::abs(copy.enemies.front().entity.pos.x-420)<1e-9);
        CHECK(!copy.rng.available);
        CHECK(copy.exact_fields==snapshot.exact_fields);
        CHECK(copy.unknown_fields==snapshot.unknown_fields);
    });
    test("world state bridge classifies spawns, deaths and despawns",[]{
        auto f=frame();f.player.health=6;auto a=enemy({420,280});f.entities={a};
        WorldStateBridge bridge;
        const auto first=bridge.build(f,nullptr,nullptr);
        CHECK(first.enemies.size()==1);
        CHECK(first.lifecycle.empty());
        f.clock+=1;auto b=enemy({480,280});b.address=0x31000;b.seed=7;
        f.entities={a,b};
        const auto second=bridge.build(f,nullptr,nullptr);
        CHECK(second.enemies.size()==2);
        CHECK(second.lifecycle.size()==1);
        CHECK(second.lifecycle.front().kind==LifecycleKind::spawned);
        CHECK(bridge.report().spawned==1);
        f.clock+=1;f.entities={b};
        const auto third=bridge.build(f,nullptr,nullptr);
        CHECK(third.enemies.size()==1);
        CHECK(third.lifecycle.size()==1);
        CHECK(third.lifecycle.front().kind==LifecycleKind::despawned);
        CHECK(bridge.report().despawned==1);
    });
    test("unknown attacks become labelled virtual hazards, never projectiles",[]{
        auto f=frame();f.player.health=6;
        UnknownAssessment unknown;
        EnemyIntent intent;intent.enemy_id=0x777;
        intent.primitive=AttackPrimitive::uncertain_area;
        intent.position={400,280};intent.target_position={320,280};
        intent.collision_radius=40;intent.trigger_time=0.2;intent.duration=0.3;
        intent.risk_weight=2.5;intent.evidence_status="candidate";
        unknown.attack_intents={intent};unknown.uncertain_attacks=1;
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,&unknown);
        CHECK(!snapshot.hazards.empty());
        const auto& hazard=snapshot.hazards.front();
        CHECK(hazard.virtual_hazard);
        CHECK(hazard.precision==Precision::unknown);
        CHECK(hazard.risk_weight>=2.0);
        CHECK(snapshot.projectiles.empty());
        CHECK(snapshot.hazards.front().provenance.get("hazard.timing").precision==Precision::unknown);
    });
    test("branching re-aims an aimed attack from each branch player position",[]{
        auto f=frame();f.player.health=6;f.player.body.pos={320,280};
        auto e=enemy({320,160});e.state=4;e.animation="Shoot";e.animation_frame=48;
        e.animation_length=60;e.animation_looping=true;e.animation_playing=true;
        e.animation_speed=1;e.speed_multiplier=1;e.collision=0;e.damage=0;
        f.entities={e};
        MechanismFrame m;m.loaded=m.valid=true;m.room=f.room;m.pid=f.pid;m.clock=f.clock;
        MonsterGeometryRef model;model.source=e.address;model.kind="projectile";
        model.source_state=4;model.source_animation="Shoot";
        model.trigger_animation_frame=54;model.trigger_animation_frame_min=54;
        model.trigger_animation_frame_max=54;
        model.pattern="stream";model.pattern_direction="aimed";model.pattern_center="source";
        model.speed=200;model.radius=5;model.duration=30;model.pattern_count=1;
        model.planning_validated=true;model.pre_spawn_verified=true;model.geometry_verified=true;
        model.id="unit.aimed";m.geometry_models={model};
        const auto snapshot=WorldStateBridge::snapshot(f,&m,nullptr);
        CHECK(!snapshot.enemies.empty());
        bool precise=false;
        for(const auto& intent:snapshot.enemies.front().intents)
            precise|=intent.primitive==AttackPrimitive::aimed_projectile&&intent.can_instantiate;
        CHECK(precise);
        ForwardSimConfig config;config.horizon_frames=30;config.player_shoots=false;
        ForwardSimulator simulator(config);std::string error;
        CHECK(simulator.restore(snapshot,&error));
        auto east=simulator.fork();auto west=simulator.fork();
        east->step(SimAction{Move::east,Fire::none,false},30);
        west->step(SimAction{Move::west,Fire::none,false},30);
CHECK(east->world().projectiles.size()==1&&west->world().projectiles.size()==1);
        const Vec east_direction=east->world().projectiles.front().vel.unit();
        const Vec west_direction=west->world().projectiles.front().vel.unit();
        CHECK(east->world().player.pos.x>west->world().player.pos.x);
        CHECK(east_direction.x>west_direction.x);
        CHECK(east_direction.dot(west_direction)<0.999);
        CHECK(simulator.world().time==0);
        CHECK(std::abs(simulator.world().player.pos.x-320)<1e-9);
    });
    test("simulated hostile projectile damages the player and sets invulnerability",[]{
        auto f=frame();f.player.health=6;
        auto b=bullet({280,280},{400,0});b.spawner=0;b.damage=1;b.radius=6;
        f.entities={b};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        CHECK(snapshot.projectiles.size()==1);
        CHECK(snapshot.projectiles.front().provenance.get("projectile.height").precision==
            Precision::estimated);
        ForwardSimConfig config;config.horizon_frames=30;
        ForwardSimulator simulator(config);std::string error;
        CHECK(simulator.restore(snapshot,&error));
        simulator.step(SimAction{Move::stay,Fire::none,false},30);
CHECK(simulator.world().player.health==5);
        CHECK(simulator.score().damage_taken==1);
        CHECK(!simulator.world().player_dead);
        CHECK(simulator.world().player.invulnerable>0);
    });
    test("simulated tears kill an enemy and complete the room",[]{
        auto f=frame();f.player.health=6;f.player.tear_range=300;f.player.tear_speed=400;
        auto e=enemy({420,280});e.collision=0;e.hp=3.5;e.max_hp=3.5;
        f.entities={e};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig config;config.horizon_frames=30;config.tear_damage=3.5;
        ForwardSimulator simulator(config);std::string error;
        CHECK(simulator.restore(snapshot,&error));
        simulator.step(SimAction{Move::stay,Fire::right,true},30);
CHECK(simulator.world().player.kills==1);
        CHECK(simulator.world().player.damage_dealt>0);
        CHECK(simulator.world().cleared);
        CHECK(simulator.score().time_to_clear>=0);
    });
    test("simulation cache reuses identical state and action plans",[]{
        auto f=frame();f.player.health=6;auto e=enemy({470,280});f.entities={e};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig config;config.horizon_frames=12;config.max_branches=4;
        SimulationPlanner planner(config);
        const std::vector<SimAction> actions{
            {Move::stay,Fire::none,false},{Move::east,Fire::none,false},
            {Move::west,Fire::none,false},{Move::south,Fire::none,false}};
        const auto first=planner.evaluate_actions(snapshot,actions,12);
        const auto second=planner.evaluate_actions(snapshot,actions,12);
        CHECK(first.available&&second.available);
        CHECK(first.cache_hits==0);
        CHECK(second.cache_hits==uint64_t(second.branches));
        CHECK(first.best>=0&&second.best>=0);
        CHECK(std::abs(first.candidates[size_t(first.best)].score.score-
            second.candidates[size_t(second.best)].score.score)<1e-9);
    });
    test("simulation terminates a branch that already lost the survival threshold",[]{
        auto f=frame();f.player.health=6;
        auto b=bullet({300,280},{300,0});b.damage=1;f.entities={b};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig config;config.horizon_frames=30;config.early_terminate=true;
        config.early_terminate_damage=1;
        SimulationPlanner planner(config);
        const auto batch=planner.evaluate_actions(snapshot,
            {SimAction{Move::stay,Fire::none,false}},30);
        CHECK(batch.available);
        CHECK(batch.candidates.front().terminal);
        CHECK(batch.candidates.front().score.frames<30);
    });
    test("wasm backend reports the missing live-state injection instead of guessing",[]{
        const auto report=probe_wasm_backend();
        CHECK(!report.conclusion.empty());
        CHECK(report.full_internal_state_restore==
            (report.memory_snapshot_restore&&report.external_state_injection));
        CHECK(!report.full_internal_state_restore);
        CHECK(!report.live_capture_restore);
        CHECK(!report.missing.empty());
        auto f=frame();f.player.health=6;
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        WasmSimulationBackend backend(report);
        std::string error;
        CHECK(!backend.restore(snapshot,&error));
        CHECK(!error.empty());
        CHECK(!backend.capabilities().restore_live_capture);
        ForwardSimulator simulator(ForwardSimConfig{},SimBackendKind::wasm_native);
        CHECK(!simulator.restore(snapshot,&error));
        CHECK(!simulator.capabilities().full_internal_state);
    });
    test("hybrid backend declares what it restores and what it cannot",[]{
        const auto capabilities=HybridSimulationBackend{}.capabilities();
        CHECK(capabilities.restore&&capabilities.fork&&capabilities.deterministic);
        CHECK(!capabilities.full_internal_state);
        CHECK(!capabilities.restore_live_capture);
        CHECK(!capabilities.rng_state);
        CHECK(capabilities.exact_player_motion);
        CHECK(capabilities.mechanism_behavior);
        CHECK(capabilities.unknown_threat_fallback);
        CHECK(!capabilities.restore_scope.empty());
        CHECK(!capabilities.missing.empty());
    });
    test("top-k joint planner adds forward simulation to its decision",[]{
        auto f=frame();f.player.health=6;
        auto e=enemy({500,280});e.state=4;e.animation="Shoot";e.animation_frame=48;
        e.animation_length=60;e.animation_looping=true;e.animation_playing=true;
        e.animation_speed=1;e.speed_multiplier=1;f.entities={e};
        MechanismFrame m;m.loaded=m.valid=true;m.room=f.room;m.pid=f.pid;m.clock=f.clock;
        MonsterGeometryRef model;model.source=e.address;model.kind="projectile";
        model.source_state=4;model.source_animation="Shoot";
        model.trigger_animation_frame=54;model.trigger_animation_frame_min=54;
        model.trigger_animation_frame_max=54;
        model.pattern="stream";model.pattern_direction="aimed";model.pattern_speed_mode="constant";
        model.speed=200;model.radius=5;model.duration=30;model.pattern_count=1;
        model.planning_validated=true;model.pre_spawn_verified=true;model.geometry_verified=true;
        model.id="unit.aimed";m.geometry_models={model};
        LookaheadConfig config;config.epochs=2;config.epoch_frames=6;
        config.simulation_horizon_frames=12;config.simulation_branches=4;
        TopKJointPlanner planner(config);
        const auto plan=planner.decide(f,true,&m);
        CHECK(plan.decision.valid);
        CHECK(plan.simulated);
        CHECK(plan.simulation.available);
        CHECK(!plan.simulation.candidates.empty());
        CHECK(plan.simulation.best>=0);
        CHECK(plan.simulation.best<int(plan.simulation.candidates.size()));
        CHECK(std::isfinite(plan.simulation_score.score));
        CHECK(plan.decision.reason.find("forward-sim")!=std::string::npos);
        CHECK(plan.simulation.capabilities.mechanism_behavior);
        CHECK(!plan.simulation.capabilities.full_internal_state);
    });
    test("forward simulation prefers a dodging branch over a damaging one",[]{
        auto f=frame();f.player.health=6;
        auto b=bullet({200,280},{300,0});b.damage=1;b.radius=6;f.entities={b};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig config;config.horizon_frames=48;config.max_branches=5;
        SimulationPlanner planner(config);
        const std::vector<SimAction> actions{
            {Move::stay,Fire::none,false},{Move::north,Fire::none,false},
            {Move::south,Fire::none,false},{Move::east,Fire::none,false},
            {Move::west,Fire::none,false}};
        const auto batch=planner.evaluate_actions(snapshot,actions,48);
        CHECK(batch.available);
        CHECK(batch.best>0);
        CHECK(batch.candidates[0].score.damage_taken>=1);
        CHECK(batch.candidates[size_t(batch.best)].score.damage_taken==0);
        CHECK(batch.candidates[size_t(batch.best)].first.move!=Move::stay);
    });
    test("danger-cell hazards serialize without non-finite JSON",[]{
        auto f=frame();f.player.health=6;
        f.grid.cells[5*15+5].danger=true;
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        CHECK(!snapshot.hazards.empty());
        const auto encoded=snapshot.to_json();
        const auto copy=WorldStateSnapshot::from_json(encoded);
        CHECK(copy.hazards.size()==snapshot.hazards.size());
        CHECK(copy.hazards.front().until>0&&std::isfinite(copy.hazards.front().until));
    });
    test("simulation score reports remaining enemy hp and count",[]{
        auto f=frame();f.player.health=6;
        auto e=enemy({470,280});e.hp=10;e.max_hp=10;f.entities={e};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig config;config.horizon_frames=12;
        ForwardSimulator simulator(config);std::string error;
        CHECK(simulator.restore(snapshot,&error));
        const auto score=simulator.score();
        CHECK(score.enemy_count==1);
        CHECK(std::abs(score.enemy_hp_remaining-10)<1e-9);
    });
    test("enemy chase follows each branch player position independently",[]{
        auto f=frame();f.player.health=6;f.player.body.pos={320,280};
        auto e=enemy({320,160});e.collision=2;e.damage=1;e.hp=50;e.vel={};
        f.entities={e};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig config;config.horizon_frames=24;config.player_shoots=false;
        ForwardSimulator simulator(config);std::string error;
        CHECK(simulator.restore(snapshot,&error));
        auto east=simulator.fork();auto west=simulator.fork();
        east->step(SimAction{Move::east,Fire::none,false},24);
        west->step(SimAction{Move::west,Fire::none,false},24);
        CHECK(!east->world().enemies.empty()&&!west->world().enemies.empty());
        CHECK(east->world().player.pos.x>west->world().player.pos.x);
        const double east_enemy_x=east->world().enemies.front().pos.x;
        const double west_enemy_x=west->world().enemies.front().pos.x;
        CHECK(east_enemy_x>west_enemy_x);
        CHECK(east->world().enemies.front().chase);
        CHECK(west->world().enemies.front().chase);
    });
    test("boss phase changes in the branch that deals damage",[]{
        auto f=frame();f.player.health=6;f.player.tear_range=400;f.player.tear_speed=400;
        auto e=enemy({450,280});e.is_boss=true;e.collision=0;e.damage=1;
        e.hp=12;e.max_hp=20;f.entities={e};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig config;config.horizon_frames=60;config.tear_damage=3.5;
        ForwardSimulator simulator(config);std::string error;
        CHECK(simulator.restore(snapshot,&error));
        simulator.step(SimAction{Move::stay,Fire::right,true},60);
        CHECK(!simulator.world().enemies.empty());
        CHECK(simulator.world().enemies.front().boss_phase>=2);
        CHECK(simulator.world().player.damage_dealt>0);
    });
    test("multiple enemies keep independent attack directions in one branch",[]{
        auto f=frame();f.player.health=6;f.player.body.pos={320,280};
        auto north=enemy({320,160});north.collision=0;north.damage=0;
        north.state=4;north.animation="Shoot";north.animation_frame=48;
        north.animation_length=60;north.animation_looping=true;north.animation_playing=true;
        north.animation_speed=1;north.speed_multiplier=1;
        auto east=enemy({480,280});east.address=0x31000;east.seed=9;east.collision=0;
        east.damage=0;east.state=4;east.animation="Shoot";east.animation_frame=48;
        east.animation_length=60;east.animation_looping=true;east.animation_playing=true;
        east.animation_speed=1;east.speed_multiplier=1;
        f.entities={north,east};
        MechanismFrame m;m.loaded=m.valid=true;m.room=f.room;m.pid=f.pid;m.clock=f.clock;
        auto model=[&](const Entity& source,const std::string& id) {
            MonsterGeometryRef ref;ref.source=source.address;ref.kind="projectile";
            ref.source_state=4;ref.source_animation="Shoot";
            ref.trigger_animation_frame=54;ref.trigger_animation_frame_min=54;
            ref.trigger_animation_frame_max=54;ref.pattern="stream";
            ref.pattern_direction="aimed";ref.pattern_center="source";
            ref.speed=200;ref.radius=5;ref.duration=30;ref.pattern_count=1;
            ref.planning_validated=true;ref.pre_spawn_verified=true;ref.geometry_verified=true;
            ref.id=id;return ref;
        };
        m.geometry_models={model(north,"unit.north"),model(east,"unit.east")};
        const auto snapshot=WorldStateBridge::snapshot(f,&m,nullptr);
        ForwardSimConfig config;config.horizon_frames=24;config.player_shoots=false;
        ForwardSimulator simulator(config);std::string error;
        CHECK(simulator.restore(snapshot,&error));
        simulator.step(SimAction{Move::stay,Fire::none,false},24);
        CHECK(simulator.world().projectiles.size()==2);
        const Vec first=simulator.world().projectiles[0].vel.unit();
        const Vec second=simulator.world().projectiles[1].vel.unit();
        CHECK(std::abs(first.x-second.x)>0.1||std::abs(first.y-second.y)>0.1);
    });
    test("combat intelligence ranks evidence, detects windows and predicts intercepts",[]{
        auto f=frame();f.player.health=6;f.player.fire_delay=10;f.player.tear_speed=360;
        auto near=enemy({480,280});near.address=0x30000;near.hp=20;near.collision=2;
        auto far=enemy({860,280});far.address=0x30010;far.hp=20;far.collision=0;
        f.entities={near,far};
        MechanismFrame mechanisms;
        mechanisms.loaded=mechanisms.valid=mechanisms.semantics_available=true;
        mechanisms.room=f.room;mechanisms.pid=f.pid;mechanisms.clock=f.clock;
        MechanismObservation observation;
        observation.address=near.address;observation.type=near.type;
        observation.variant=near.variant;observation.subtype=near.subtype;
        observation.state=4;observation.state_frame=2;observation.boss_phase=-1;
        observation.predicted_trigger_frame=int64_t(f.clock)+6;
        observation.predicted_action_end_frame=int64_t(f.clock)+9;
        observation.attack_timing_verified=true;
        observation.projectile_delay=30;observation.projectile_cooldown=0;
        observation.confidence=0.9;
        mechanisms.enemies={observation};
        const auto root=WorldStateBridge::snapshot(f,&mechanisms,nullptr);
        CombatIntelligence combat;
        const auto context=combat.evaluate(root,true);
        CHECK(context.valid);
        CHECK(context.threats.size()==2);
        const auto* near_threat=context.threat(root.enemies[0].entity.address);
        CHECK(bool(near_threat));
        CHECK(near_threat->attack_imminent);
        CHECK(near_threat->time_to_attack>=0.15&&near_threat->time_to_attack<=0.25);
        const auto* window=context.window(near.address);
        CHECK(bool(window));
        CHECK(window->phase==AttackPhase::windup);
        CHECK(window->damageable_verified);
        CHECK(window->window_open);
        CHECK(window->precision==Precision::exact);
        CHECK(context.target!=0);
        CHECK(context.aim.valid);
        CHECK(context.aim.target_damageable);
        CHECK(context.aim.predicted_hit);
        CHECK(context.aim.fire==Fire::right);
        const uint32_t first_target=context.target;
        f.clock+=1;
        const auto again=combat.evaluate(WorldStateBridge::snapshot(f,&mechanisms,nullptr),true);
        CHECK(again.target==first_target);
        f.clock+=20;f.entities[0].dead=true;f.entities[0].hp=0;
        const auto switched=combat.evaluate(WorldStateBridge::snapshot(f,&mechanisms,nullptr),true);
        CHECK(switched.target!=0);
        CHECK(switched.target!=first_target);
    });
    test("combat aim leads a moving target and scoring is candidate-specific",[]{
        auto f=frame();f.player.health=6;f.player.tear_speed=360;f.player.tear_range=400;
        auto moving=enemy({500,280},{60,0});moving.address=0x30000;moving.hp=20;
        moving.collision=0;moving.friction=1;
        f.entities={moving};
        const auto root=WorldStateBridge::snapshot(f,nullptr,nullptr);
        CombatIntelligence combat;
        const auto context=combat.evaluate(root,true);
        CHECK(context.valid);
        CHECK(context.aim.valid);
        CHECK(context.aim.predicted_hit);
        CHECK(context.aim.fire==Fire::right);
        CHECK(context.aim.intercept_time>0);
        CHECK(context.aim.target_future_position.x>moving.pos.x+10);
        ForwardSimConfig sim;sim.horizon_frames=50;sim.player_shoots=true;
        sim.tear_damage=3.5;sim.early_terminate=false;sim.danger_map=false;
        ForwardSimulator simulator(sim);std::string error;
        CHECK(simulator.restore(root,&error));
        const CombatEnemyHp before=combat_enemy_hp(simulator.world());
        simulator.step(SimAction{Move::stay,Fire::right,true},40);
        const auto hit_score=simulator.score();
        const auto hit_terms=combat.score_delta(context,before,simulator.world(),
            SimAction{Move::stay,Fire::right,true},hit_score);
        CHECK(hit_terms.threat_removal>0);
        CHECK(hit_terms.aim_hit>0);
        ForwardSimulator miss_simulator(sim);
        CHECK(miss_simulator.restore(root,&error));
        const CombatEnemyHp miss_before=combat_enemy_hp(miss_simulator.world());
        miss_simulator.step(SimAction{Move::stay,Fire::left,true},40);
        const auto miss_score=miss_simulator.score();
        const auto miss_terms=combat.score_delta(context,miss_before,miss_simulator.world(),
            SimAction{Move::stay,Fire::left,true},miss_score);
        CHECK(miss_terms.aim_hit==0);
        CHECK(miss_terms.threat_removal==0);
    });
    test("native tear inherits player velocity at launch",[]{
        auto f=frame();f.player.body.pos={320,280};
        f.player.body.vel={240,0};
        f.player.tear_speed=360;f.player.tear_range=400;
        auto e=enemy({500,280});e.collision=0;e.damage=0;
        f.entities={e};
        const auto root=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig sim;sim.horizon_frames=30;sim.player_shoots=true;
        sim.early_terminate=false;sim.danger_map=false;
        ForwardSimulator inherited(sim);std::string error;
        CHECK(inherited.restore(root,&error));
        inherited.step(SimAction{Move::stay,Fire::right,true},1);
        CHECK(!inherited.world().projectiles.empty());
        const auto& tear=inherited.world().projectiles.front();
        const double launch=360+0.6*inherited.world().player.vel.x;
        CHECK(std::abs(tear.vel.x-launch)<1.0);
        CHECK(std::abs(tear.vel.y)<1.0);
        sim.tear_inheritance=0;
        ForwardSimulator plain(sim);
        CHECK(plain.restore(root,&error));
        plain.step(SimAction{Move::stay,Fire::right,true},1);
        CHECK(!plain.world().projectiles.empty());
        CHECK(std::abs(plain.world().projectiles.front().vel.x-360)<1.0);
    });
    test("predictive aim matches the native inherited tear model",[]{
        auto simulate_hit=[&](const WorldStateSnapshot& root,Fire fire) {
            ForwardSimConfig sim;sim.horizon_frames=120;sim.player_shoots=true;
            sim.early_terminate=false;sim.danger_map=false;
            sim.tear_inheritance=native_tear_inheritance;
            ForwardSimulator simulator(sim);std::string error;
            if(!simulator.restore(root,&error))return false;
            simulator.step(SimAction{Move::stay,fire,true},120);
            for(const auto& enemy:simulator.world().enemies)
                if(enemy.id==0x30000)return enemy.hp<20-1e-9;
            return true;
        };
        // Straight-up target while the player moves right. The native tear
        // drifts right by 0.6*player_vel and misses; the old no-inheritance
        // aim reported a hit.
        {
            auto f=frame();f.player.body.pos={320,280};
            f.player.body.vel={200,0};
            f.player.tear_speed=360;f.player.tear_range=400;
            auto e=enemy({300,200});e.collision=0;e.damage=0;e.hp=20;
            f.entities={e};
            const auto root=WorldStateBridge::snapshot(f,nullptr,nullptr);
            CombatConfig old_config;old_config.tear_inheritance=0;
            const auto old_aim=PredictiveAimer(old_config).solve(root,e.address);
            CHECK(old_aim.valid);
            CHECK(old_aim.fire==Fire::up);
            CHECK(old_aim.predicted_hit);
            CHECK(!simulate_hit(root,old_aim.fire));
            const auto new_aim=PredictiveAimer(CombatConfig{}).solve(root,e.address);
            CHECK(new_aim.valid);
            CHECK(new_aim.predicted_hit==simulate_hit(root,new_aim.fire));
        }
        // Target on the inherited drift line: the new aim accepts a hit that
        // the old straight-line aim rejected.
        {
            auto f=frame();f.player.body.pos={320,280};
            f.player.body.vel={200,0};
            f.player.tear_speed=360;f.player.tear_range=400;
            auto e=enemy({350,220});e.collision=0;e.damage=0;e.hp=20;
            f.entities={e};
            const auto root=WorldStateBridge::snapshot(f,nullptr,nullptr);
            CombatConfig old_config;old_config.tear_inheritance=0;
            const auto old_aim=PredictiveAimer(old_config).solve(root,e.address);
            CHECK(old_aim.valid);
            CHECK(!old_aim.predicted_hit);
            const auto new_aim=PredictiveAimer(CombatConfig{}).solve(root,e.address);
            CHECK(new_aim.valid);
            CHECK(new_aim.predicted_hit);
            CHECK(simulate_hit(root,new_aim.fire));
        }
    });
    test("progress tracker attributes real projectiles to HP drops",[]{
        auto snapshot=[](uint32_t clock,double hp,bool tear,Vec position) {
            WorldStateSnapshot s;
            s.frame.valid=true;s.frame.clock=clock;s.frame.room=1;
            s.player.health=6;
            EnemyState enemy_state;
            auto e=enemy({400,280});e.hp=hp;e.collision=0;e.damage=0;
            enemy_state.entity=e;
            s.enemies.push_back(enemy_state);
            if(tear) {
                ProjectileState projectile;
                projectile.role=ProjectileRole::friendly;
                projectile.real=true;
                projectile.entity.type=9;
                projectile.entity.address=0x90001;
                projectile.entity.friendly=true;
                projectile.entity.pos=position;
                projectile.entity.vel={360,0};
                projectile.entity.radius=6;
                s.projectiles.push_back(projectile);
            }
            return s;
        };
        CombatProgressObservation observation;
        observation.combat_valid=true;observation.attack_enabled=true;
        observation.fire=Fire::right;observation.target=0x30000;
        observation.target_damageable=true;
        observation.player_position={320,280};
        CombatProgressTracker tracker;
        tracker.observe(snapshot(100,20,false,{}),observation);
        tracker.observe(snapshot(101,20,true,{380,280}),observation);
        CHECK(tracker.state().projectile_spawns==1);
        CHECK(tracker.state().last_shot.contains("target_id"));
        CHECK(tracker.state().last_shot.value("target_id",0u)==0x30000u);
        tracker.observe(snapshot(102,16.5,true,{400,280}),observation);
        tracker.observe(snapshot(103,16.5,false,{}),observation);
        CHECK(tracker.state().projectile_hits==1);
        CHECK(tracker.state().projectile_misses==0);
        CHECK(std::abs(tracker.state().attributed_damage-3.5)<1e-9);
        CHECK(tracker.state().damage_per_second>0);
        tracker.observe(snapshot(104,16.5,true,{340,300}),observation);
        tracker.observe(snapshot(105,16.5,false,{}),observation);
        CHECK(tracker.state().projectile_hits==1);
        CHECK(tracker.state().projectile_misses==1);
        CHECK(tracker.state().projectile_hit_rate>0.49);
        CHECK(tracker.state().projectile_hit_rate<0.51);
    });
    test("attack window rejects animation-only invulnerability claims",[]{
        auto f=frame();f.player.health=6;
        auto e=enemy({500,280});e.hp=20;e.collision=0;
        e.animation="Shoot";e.animation_state_known=true;e.animation_frame=12;
        f.entities={e};
        AttackWindowDetector detector;
        auto window=detector.detect(WorldStateBridge::snapshot(f,nullptr,nullptr).enemies[0],f.clock);
        CHECK(window.damageable);
        CHECK(window.damageable_verified);
        CHECK(!window.window_open);
        CHECK(window.phase==AttackPhase::idle);
        e.invulnerable=true;f.entities={e};
        window=detector.detect(WorldStateBridge::snapshot(f,nullptr,nullptr).enemies[0],f.clock);
        CHECK(!window.damageable);
        CHECK(window.phase==AttackPhase::invulnerable);
    });
    test("branch objective recomputes target and hp from its own simulated world",[]{
        auto f=frame();f.player.health=6;f.player.tear_speed=360;f.player.tear_range=400;
        auto near=enemy({480,280});near.address=0x30000;near.hp=2;near.collision=2;
        auto far=enemy({160,280});far.address=0x30010;far.hp=20;far.collision=0;
        f.entities={near,far};
        const auto root=WorldStateBridge::snapshot(f,nullptr,nullptr);
        CombatIntelligence combat;
        const auto context=combat.evaluate(root,true);
        CHECK(context.valid);
        CHECK(context.target==near.address);
        ForwardSimConfig sim;sim.horizon_frames=40;sim.player_shoots=true;
        sim.tear_damage=3.5;sim.early_terminate=false;sim.danger_map=false;
        ForwardSimulator hit(sim),idle(sim);
        std::string error;
        CHECK(hit.restore(root,&error));
        CHECK(idle.restore(root,&error));
        hit.step(SimAction{Move::stay,Fire::right,true},40);
        idle.step(SimAction{Move::stay,Fire::none,false},40);
        const auto hit_branch=combat.evaluate_branch(context,hit.world(),{},context.target);
        const auto idle_branch=combat.evaluate_branch(context,idle.world(),{},context.target);
        CHECK(hit_branch.valid);
        CHECK(idle_branch.valid);
        CHECK(hit_branch.enemy_count<idle_branch.enemy_count);
        CHECK(hit_branch.target==far.address);
        CHECK(idle_branch.target==near.address);
        CHECK(hit_branch.objective.branch_specific);
        CHECK(hit_branch.objective.target==hit_branch.target);
        CHECK(hit_branch.to_json().contains("objective"));
    });
    test("branch scoring exposes kill sequence positioning and exposure",[]{
        auto f=frame();f.player.health=6;f.player.tear_speed=360;f.player.tear_range=400;
        auto e=enemy({480,280});e.hp=20;e.collision=0;f.entities={e};
        const auto root=WorldStateBridge::snapshot(f,nullptr,nullptr);
        CombatIntelligence combat;
        const auto context=combat.evaluate(root,true);
        ForwardSimConfig sim;sim.horizon_frames=30;sim.player_shoots=true;
        sim.tear_damage=3.5;sim.early_terminate=false;sim.danger_map=false;
        ForwardSimulator simulator(sim);
        std::string error;
        CHECK(simulator.restore(root,&error));
        const CombatEnemyHp before=combat_enemy_hp(simulator.world());
        simulator.step(SimAction{Move::stay,Fire::right,true},30);
        const auto after_score=simulator.score();
        BranchCombatContext branch;
        const auto terms=combat.score_delta(context,before,simulator.world(),
            SimAction{Move::stay,Fire::right,true},after_score,{},&branch);
        CHECK(branch.valid);
        CHECK(terms.branch_target==branch.target);
        CHECK(terms.aim_hit>0);
        CHECK(terms.positioning>0);
        CHECK(terms.kill_sequence>0);
        CHECK(terms.exposure>=0);
        CHECK(terms.to_json().contains("kill_sequence"));
        CHECK(terms.total(CombatConfig{})>0);
    });
    test("branch attack window uses simulator counters without claiming verification",[]{
        AttackWindowDetector detector;
        SimEnemy e;e.id=7;e.hp=10;e.max_hp=10;e.damage=1;
        e.windup=15;e.cooldown=0;e.active=0;
        auto window=detector.detect(e,100);
        CHECK(window.phase==AttackPhase::windup);
        CHECK(window.damageable);
        CHECK(window.damageable_verified);
        CHECK(window.window_open);
        CHECK(window.precision==Precision::estimated);
        e.windup=0;e.cooldown=30;
        window=detector.detect(e,100);
        CHECK(window.phase==AttackPhase::recovery);
        CHECK(window.window_open);
        CHECK(window.time_to_attack>0.4&&window.time_to_attack<0.6);
        e.cooldown=0;e.invulnerable=true;
        window=detector.detect(e,100);
        CHECK(window.phase==AttackPhase::invulnerable);
        CHECK(!window.damageable);
        CHECK(window.precision==Precision::exact);
        SimWorld world;world.enemies={e};
        CHECK(detector.detect_all(world).size()==1);
    });
    test("mpc combat layer exposes its objective and uses it in the beam",[]{
        auto f=frame();f.player.health=6;f.player.tear_range=400;
        auto e=enemy({480,280});e.hp=20;e.collision=0;f.entities={e};
        LookaheadConfig look;look.epochs=2;look.epoch_frames=6;
        look.simulation_horizon_frames=12;look.simulation_branches=4;
        MpcConfig config;config.horizon_frames=24;config.segment_frames=6;
        config.beam_width=3;config.min_beam_width=2;config.max_beam_width=4;
        config.root_candidates=16;config.full_root_actions=false;
        config.max_simulations=64;config.time_budget_ms=200;
        MpcCombatPlanner planner(config,look);
        const auto plan=planner.decide(f,true,nullptr);
        CHECK(plan.available);
        CHECK(plan.combat.valid);
        CHECK(plan.combat.target==e.address);
        CHECK(plan.combat.aim.valid);
        CHECK(plan.combat.objective.target==plan.combat.target);
        CHECK(plan.to_json().contains("combat"));
        CHECK(plan.to_json()["combat"].contains("targets"));
        CHECK(plan.branch.valid);
        CHECK(plan.stats.branch_evaluations>0);
        CHECK(!plan.stats.tier_b_used);
        CHECK(!plan.arbitration.value("tier_b_used",true));
        CHECK(plan.to_json()["branch"].contains("mode"));
        if(!plan.candidates.empty())
            CHECK(plan.candidates.front().to_json().contains("branch"));
    });
    test("target selector holds a target then switches after the hold window",[]{
        TargetSelector selector;
        WorldStateSnapshot root;root.frame.clock=100;
        std::vector<TargetAssessment> ranked(2);
        ranked[0].id=1;ranked[0].score=0.50;ranked[0].damageable=true;
        ranked[1].id=2;ranked[1].score=0.40;ranked[1].damageable=true;
        CHECK(selector.select(root,ranked)==1);
        ranked[0].id=2;ranked[0].score=0.70;ranked[0].damageable=true;
        ranked[1].id=1;ranked[1].score=0.50;ranked[1].damageable=true;
        root.frame.clock=105;
        CHECK(selector.select(root,ranked)==1);
        CHECK(!ranked[0].selected);
        CHECK(ranked[1].selected);
        root.frame.clock=120;
        CHECK(selector.select(root,ranked)==2);
        CHECK(ranked[0].selected);
        CHECK(selector.switches()==1);
    });
    test("mpc beam returns a joint sequence that saves, loads and compares",[]{
        auto f=frame();f.player.health=6;f.player.tear_range=340;
        auto e=enemy({500,280});e.hp=10;e.collision=0;f.entities={e};
        LookaheadConfig look;look.epochs=2;look.epoch_frames=6;
        look.simulation_horizon_frames=12;look.simulation_branches=4;
        MpcConfig config;config.horizon_frames=18;config.segment_frames=6;
        config.beam_width=3;config.min_beam_width=2;config.max_beam_width=4;
        config.root_candidates=12;config.full_root_actions=false;
        config.max_simulations=48;config.time_budget_ms=80;
        config.reuse_sequences=2;
        MpcCombatPlanner planner(config,look);
        const auto plan=planner.decide(f,true,nullptr);
        CHECK(plan.available);
        CHECK(plan.decision.valid);
        CHECK(!plan.sequence.segments.empty());
        CHECK(plan.sequence.total_frames()>0);
        CHECK(plan.stats.nodes>0);
        CHECK(plan.stats.simulations>0);
        CHECK(std::isfinite(plan.value));
        CHECK(plan.decision.planning_ms>=plan.stats.elapsed_ms);
        CHECK(plan.first.move==plan.sequence.segments.front().action.move);
        CHECK(plan.to_json().contains("sequence"));
        const auto path=std::filesystem::current_path()/"mpc-sequence-test.json";
        std::string error;
        if(!plan.sequence.save(path,&error))
            throw std::runtime_error("save failed: "+error+" path="+path.string());
        const auto loaded=MpcSequence::load(path,&error);
        CHECK(bool(loaded));
        CHECK(loaded->total_frames()==plan.sequence.total_frames());
        CHECK(loaded->segments.size()==plan.sequence.segments.size());
        const auto comparison=compare_mpc_sequences(plan.sequence,*loaded);
        CHECK(comparison.same_segments);
        CHECK(!comparison.first_better);
        std::filesystem::remove(path);
    });
    test("mpc reuses a consistent previous root and rejects changed health",[]{
        auto f=frame();f.player.health=6;
        auto e=enemy({500,280});e.hp=10;e.collision=0;f.entities={e};
        LookaheadConfig look;look.epochs=1;look.epoch_frames=6;
        look.simulation_horizon_frames=6;look.simulation_branches=2;
        MpcConfig config;config.horizon_frames=12;config.segment_frames=6;
        config.beam_width=2;config.root_candidates=8;
        config.full_root_actions=false;config.max_simulations=24;
        config.time_budget_ms=60;
        MpcCombatPlanner planner(config,look);
        const auto first=planner.decide(f,true,nullptr);
        CHECK(first.available);
        CHECK(!planner.previous_sequences().empty());
        f.clock+=1;
        const auto second=planner.decide(f,true,nullptr);
        CHECK(second.reused);
        CHECK(second.stats.previous_used>0);
        f.clock+=1;f.player.health=5;
        const auto third=planner.decide(f,true,nullptr);
        CHECK(!third.reused);
    });
    test("mpc times out to the existing joint action instead of blocking",[]{
        auto f=frame();f.player.health=6;
        auto e=enemy({500,280});e.hp=10;e.collision=0;f.entities={e};
        LookaheadConfig look;look.epochs=1;look.epoch_frames=6;
        look.simulation_horizon_frames=6;look.simulation_branches=2;
        MpcConfig config;config.time_budget_ms=0.0001;
        config.horizon_frames=12;config.segment_frames=6;
        MpcCombatPlanner planner(config,look);
        const auto plan=planner.decide(f,true,nullptr);
        CHECK(plan.used_fallback);
        CHECK(plan.stats.fallback);
        CHECK(plan.decision.valid);
        CHECK(plan.decision.move==plan.joint.decision.move);
        CHECK(plan.decision.fire==plan.joint.decision.fire);
    });
    test("safety gate measures boundary and local density separately from attack score",[]{
        auto f=frame();
        SimWorld world;
        world.room.grid=f.grid;
        world.player.pos={320,280};
        world.player.radius=10;
        world.player.max_speed=260;
        world.player.flying=false;
        SafetyGateConfig config;
        config.clearance_radius=96;
        config.boundary_margin=56;
        const auto center=evaluate_safety(world,config);
        CHECK(center.safe);
        CHECK(center.escape_directions>0);
        world.player.pos={70,150};
        const auto corner=evaluate_safety(world,config);
        CHECK(corner.available_area<center.available_area);
        CHECK(corner.boundary_clearance<center.boundary_clearance);
        world.player.pos={320,280};
        SimProjectile projectile;
        projectile.pos={330,280};
        projectile.vel={0,0};
        projectile.radius=6;
        projectile.hostile=true;
        world.projectiles={projectile};
        const auto danger=evaluate_safety(world,config);
        CHECK(danger.in_danger);
        CHECK(danger.local_density>0);
        CHECK(!danger.safe);
    });
    test("safety reachability stays connected in an empty open room",[]{
        const auto world=simulation_world(frame());
        const auto metrics=evaluate_safety(world,SafetyGateConfig{});
        CHECK(metrics.evaluated);
        CHECK(metrics.reachable_cells>0);
        CHECK(metrics.reachable_cells==metrics.local_walkable_cells);
        CHECK(metrics.reachable_area>0.99);
        CHECK(metrics.mobility_routes>0);
        CHECK(metrics.safe);
    });
    test("a moving enemy does not break static room connectivity",[]{
        const auto empty=simulation_world(frame());
        auto occupied=empty;
        occupied.enemies.push_back(safety_enemy({360,280},0x30001));
        const auto base=evaluate_safety(empty,SafetyGateConfig{});
        const auto threat=evaluate_safety(occupied,SafetyGateConfig{});
        CHECK(threat.reachable_cells==base.reachable_cells);
        CHECK(threat.local_walkable_cells==base.local_walkable_cells);
        CHECK(std::abs(threat.reachable_area-base.reachable_area)<1e-9);
        CHECK(threat.local_density>base.local_density);
        CHECK(threat.encirclement_risk>base.encirclement_risk);
        CHECK(threat.escape_directions<=base.escape_directions);
        CHECK(threat.safe);
    });
    test("one moving enemy cannot disconnect a narrow static corridor",[]{
        auto empty=simulation_world(frame());
        empty.room.grid=narrow_corridor_grid();
        auto occupied=empty;
        occupied.enemies.push_back(safety_enemy({360,280},0x30002));
        const auto base=evaluate_safety(empty,SafetyGateConfig{});
        const auto threat=evaluate_safety(occupied,SafetyGateConfig{});
        CHECK(base.reachable_area>0.99);
        CHECK(base.reachable_cells==base.local_walkable_cells);
        CHECK(threat.reachable_cells==base.reachable_cells);
        CHECK(threat.local_walkable_cells==base.local_walkable_cells);
        CHECK(std::abs(threat.reachable_area-base.reachable_area)<1e-9);
        CHECK(threat.escape_directions<=base.escape_directions);
    });
    test("two moving enemies on both sides do not permanently block a corridor",[]{
        auto empty=simulation_world(frame());
        empty.room.grid=narrow_corridor_grid();
        auto occupied=empty;
        occupied.enemies.push_back(safety_enemy({280,280},0x30003));
        occupied.enemies.push_back(safety_enemy({360,280},0x30004));
        const auto base=evaluate_safety(empty,SafetyGateConfig{});
        const auto threat=evaluate_safety(occupied,SafetyGateConfig{});
        CHECK(base.reachable_area>0.99);
        CHECK(threat.reachable_cells==base.reachable_cells);
        CHECK(threat.local_walkable_cells==base.local_walkable_cells);
        CHECK(std::abs(threat.reachable_area-base.reachable_area)<1e-9);
        CHECK(threat.mobility_routes==base.mobility_routes);
        CHECK(std::abs(threat.dead_end_risk-base.dead_end_risk)<1e-9);
        // The two bodies are still visible to the local escape probe.
        CHECK(threat.escape_directions<=base.escape_directions);
    });
    test("zero escape directions alone does not fail the hard safety gate",[]{
        auto world=simulation_world(frame(),{65,280});
        SafetyGateConfig config;
        const auto metrics=evaluate_safety(world,config);
        CHECK(metrics.escape_directions==0);
        CHECK(!metrics.in_danger);
        CHECK(metrics.first_hit_frame<0);
        CHECK(metrics.safe);
        SafetyGate gate(config);
        CHECK(gate.passed(metrics,config.collision_horizon_frames));
    });
    test("imminent collision still fails the hard safety gate",[]{
        auto world=simulation_world(frame());
        SimProjectile projectile;
        projectile.id=0x50001;
        projectile.pos={330,280};
        projectile.radius=6;
        projectile.hostile=true;
        world.projectiles.push_back(projectile);
        SafetyGateConfig config;
        const auto metrics=evaluate_safety(world,config);
        CHECK(metrics.in_danger);
        CHECK(!metrics.safe);
        SafetyGate gate(config);
        CHECK(!gate.passed(metrics,config.collision_horizon_frames));
        const auto clean=simulation_world(frame());
        const auto damaged=evaluate_safety(clean,config,{},
            config.collision_horizon_frames,1.0);
        CHECK(!damaged.safe);
        CHECK(!gate.passed(damaged,config.collision_horizon_frames));
        SimEvent hit;
        hit.kind="projectile-hit";
        hit.target=0;
        hit.frame=clean.frame;
        const auto event_hit=evaluate_safety(clean,config,{hit},
            config.collision_horizon_frames,0.0);
        CHECK(event_hit.first_hit_frame>=0);
        CHECK(!event_hit.safe);
        CHECK(!gate.passed(event_hit,config.collision_horizon_frames));
    });
    test("player already in a danger region keeps the old protection",[]{
        auto f=frame();
        f.grid.cells[4*f.grid.width+7].danger=true;
        const auto world=simulation_world(f);
        SafetyGateConfig config;
        const auto metrics=evaluate_safety(world,config);
        CHECK(metrics.in_danger);
        CHECK(!metrics.safe);
        SafetyGate gate(config);
        CHECK(!gate.passed(metrics,config.collision_horizon_frames));
    });
    test("static walls still block the mobility BFS",[]{
        const auto open=simulation_world(frame());
        auto walled=open;
        for(int y=0;y<walled.room.grid.height;++y)
            walled.room.grid.cells[y*walled.room.grid.width+8].collision=2;
        const auto open_metrics=evaluate_safety(open,SafetyGateConfig{});
        const auto wall_metrics=evaluate_safety(walled,SafetyGateConfig{});
        CHECK(wall_metrics.local_walkable_cells<open_metrics.local_walkable_cells);
        CHECK(wall_metrics.reachable_cells<open_metrics.reachable_cells);
        CHECK(wall_metrics.reachable_area<open_metrics.reachable_area);
    });
    test("emergency ordering still carries mobility scores",[]{
        auto f=frame();
        auto b=bullet({320,280},{0,0});
        b.radius=40;
        b.damage=1;
        f.entities={b};
        LookaheadConfig look;
        look.epochs=1;
        look.epoch_frames=6;
        look.simulation_horizon_frames=6;
        look.simulation_branches=2;
        MpcConfig config;
        config.horizon_frames=18;
        config.segment_frames=6;
        config.beam_width=3;
        config.min_beam_width=2;
        config.max_beam_width=4;
        config.root_candidates=12;
        config.full_root_actions=false;
        config.max_simulations=64;
        config.time_budget_ms=200;
        config.safety.collision_horizon_frames=6;
        MpcCombatPlanner planner(config,look);
        const auto plan=planner.decide(f,true,nullptr);
        CHECK(plan.available);
        CHECK(plan.emergency);
        CHECK(plan.stats.emergency);
        CHECK(plan.decision.strategy_mode=="Emergency");
        bool saw_mobility=false;
        for(const auto& candidate:plan.candidates) {
            if(!candidate.safety.evaluated)continue;
            const auto safety=candidate.safety.to_json();
            CHECK(safety.contains("reachable_area"));
            CHECK(safety.contains("escape_directions"));
            CHECK(safety.contains("maneuverability"));
            CHECK(candidate.safety.maneuverability>=0.0);
            CHECK(candidate.safety.maneuverability<=1.0);
            if(candidate.safety.reachable_cells>0&&
               candidate.safety.local_walkable_cells>0)saw_mobility=true;
        }
        CHECK(saw_mobility);
    });
    test("temporal danger keeps a future laser as warning until active",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,31,[&](SimWorld& world,int){
            world.hazards.push_back(temporal_hazard(center,12,0.2,0.3));
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=8;
        const auto danger=build_temporal_danger(frames,config);
        CHECK(danger.valid);
        CHECK(!danger.danger_at(cell,0.1));
        CHECK(danger.warning_at(cell,0.1));
        CHECK(danger.danger_at(cell,0.25));
        CHECK(!danger.warning_at(cell,0.25));
        CHECK(danger.confidence_at(cell,0.25)==danger_confidence_exact);
        CHECK(!danger.danger_at(cell,0.4));
        CHECK(!danger.warning_at(cell,0.4));
    });
    test("temporal danger sweeps a projectile between slice endpoints",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,2,[&](SimWorld& world,int frame){
            const Vec pos=frame==0?Vec{center.x-80,center.y}:Vec{center.x+80,center.y};
            world.projectiles={temporal_projectile(pos,{4800,0},1)};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=4;
        const auto danger=build_temporal_danger(frames,config);
        CHECK(danger.valid);
        CHECK(danger.danger_at_cell(cell,0));
        CHECK(danger.danger_at_cell(cell,1));
        CHECK(!danger.static_blocked_at(cell));
    });
    test("temporal danger follows curved projectile frames instead of endpoints",[]{
        auto base=simulation_world(frame());
        const int cell=6*base.room.grid.width+4;
        const Vec center=base.room.grid.center(cell);
        const std::array<Vec,5> path{{
            {200,160},{200,360},{320,360},{440,360},{440,160}
        }};
        const auto frames=temporal_sequence(base,5,[&](SimWorld& world,int frame){
            world.projectiles={temporal_projectile(path[size_t(frame)],{0,0},2)};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=2;
        const auto danger=build_temporal_danger(frames,config);
        CHECK(danger.valid);
        // Endpoints are on the top row; the curve passes through this cell.
        CHECK(danger.danger_at_cell(cell,0.0));
        CHECK(center.y>180.0);
    });
    test("temporal danger recovers after a projectile has passed",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,31,[&](SimWorld& world,int frame){
            const Vec pos=frame<2?center:Vec{700,600};
            world.projectiles={temporal_projectile(pos,{0,0},3)};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=8;
        const auto danger=build_temporal_danger(frames,config);
        CHECK(danger.danger_at(cell,0.0));
        CHECK(!danger.danger_at(cell,0.5));
    });
    test("temporal danger clears an enemy that leaves and returns",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,41,[&](SimWorld& world,int frame){
            auto e=safety_enemy(frame<6||frame>=24?center:Vec{600,280},7);
            world.enemies={e};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=8;
        const auto danger=build_temporal_danger(frames,config);
        CHECK(danger.danger_at(cell,0.0));
        CHECK(!danger.danger_at(cell,0.2));
        CHECK(danger.danger_at(cell,0.5));
    });
    test("temporal danger marks a charge only during its active window",[]{
        auto base=simulation_world(frame());
        const int cell=6*base.room.grid.width+6;
        const auto frames=temporal_sequence(base,31,[&](SimWorld& world,int frame){
            SimEnemy e=safety_enemy(frame<=5?Vec{200.0+40.0*frame,360}:Vec{400,360},8);
            e.contact=false;
            e.chase=false;
            e.charging=frame<=5;
            e.charge_remaining=frame<=5?6.0:0.0;
            world.enemies={e};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=8;
        const auto danger=build_temporal_danger(frames,config);
        CHECK(danger.danger_at(cell,0.05));
        CHECK(!danger.danger_at(cell,0.5));
    });
    test("temporal danger marks jump landing only in its landing window",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,31,[&](SimWorld& world,int){
            world.hazards.push_back(temporal_hazard(center,24,0.18,0.28,
                HazardKind::explosion,Precision::estimated));
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=8;
        const auto danger=build_temporal_danger(frames,config);
        // Slice 1 spans 0.10-0.18 s, so query the unambiguous pre-window slice.
        CHECK(!danger.danger_at(cell,0.05));
        CHECK(danger.warning_at(cell,0.05));
        CHECK(danger.danger_at(cell,0.2));
        CHECK(!danger.warning_at(cell,0.2));
        CHECK(!danger.danger_at(cell,0.4));
    });
    test("temporal danger keeps unknown attacks conservative without a path",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,31,[&](SimWorld& world,int){
            world.hazards.push_back(temporal_hazard(center,30,0.1,0.4,
                HazardKind::unknown,Precision::unknown));
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=8;
        const auto danger=build_temporal_danger(frames,config);
        CHECK(danger.danger_at(cell,0.2));
        CHECK(danger.confidence_at(cell,0.2)==danger_confidence_unknown);
        CHECK(danger.warning_at(cell,0.05));
        CHECK(!danger.danger_at(cell,0.5));
    });
    test("temporal danger keeps static terrain separate from dynamic danger",[]{
        auto base=simulation_world(frame());
        const int wall=4*base.room.grid.width+6;
        const int free=4*base.room.grid.width+7;
        base.room.grid.cells[size_t(wall)].collision=2;
        const auto frames=temporal_sequence(base,1,[](SimWorld&,int){});
        const auto danger=build_temporal_danger(frames,TemporalDangerConfig{});
        CHECK(danger.valid);
        CHECK(danger.static_blocked_at(wall));
        CHECK(!danger.danger_at_cell(wall,0));
        CHECK(!danger.static_blocked_at(free));
    });
    test("temporal danger separates active danger and warning sources",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+6;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,2,[&](SimWorld& world,int){
            world.projectiles={temporal_projectile(center,{0,0},61)};
            world.hazards={temporal_hazard(center,8,0.2,0.4)};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=4;
        const auto danger=build_temporal_danger(frames,config);
        CHECK(danger.valid);
        CHECK((danger.category_at(cell,0.0)&danger_source_projectile)!=0);
        CHECK((danger.category_at(cell,0.0)&danger_source_hazard)==0);
        CHECK((danger.warning_category_at(cell,0.0)&danger_source_hazard)!=0);
        CHECK((danger.warning_category_at(cell,0.0)&
            danger_source_projectile)==0);
    });
    test("temporal danger does not mix separate branch sequences",[]{
        auto base=simulation_world(frame());
        const int left=4*base.room.grid.width+5;
        const int right=4*base.room.grid.width+9;
        const Vec left_center=base.room.grid.center(left);
        const Vec right_center=base.room.grid.center(right);
        const auto left_frames=temporal_sequence(base,10,[&](SimWorld& world,int){
            world.enemies={safety_enemy(left_center,11)};
        });
        const auto right_frames=temporal_sequence(base,10,[&](SimWorld& world,int){
            world.enemies={safety_enemy(right_center,12)};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=4;
        const auto left_map=build_temporal_danger(left_frames,config);
        const auto right_map=build_temporal_danger(right_frames,config);
        CHECK(left_map.danger_at_cell(left,0));
        CHECK(!left_map.danger_at_cell(right,0));
        CHECK(right_map.danger_at_cell(right,0));
        CHECK(!right_map.danger_at_cell(left,0));
    });
    test("temporal danger capture follows each explicit simulator branch",[]{
        auto f=frame();
        f.player.health=6;
        auto e=enemy({500,280},{260,0});
        e.collision=2;
        f.entities={e};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig sim;
        sim.horizon_frames=30;
        sim.early_terminate=false;
        sim.danger_map=false;
        ForwardSimulator root(sim);
        std::string error;
        CHECK(root.restore(snapshot,&error));
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=16;
        const auto east=capture_temporal_danger(root,
            {SimActionSegment{SimAction{Move::east,Fire::none,false},30}},config);
        const auto west=capture_temporal_danger(root,
            {SimActionSegment{SimAction{Move::west,Fire::none,false},30}},config);
        CHECK(east.valid);
        CHECK(west.valid);
        CHECK(east.root_signature==west.root_signature);
        bool different=false;
        for(size_t slice=0;slice<east.slices.size()&&!different;++slice)
            if(slice<west.slices.size())
                different=east.slices[slice].cell_danger!=west.slices[slice].cell_danger;
        CHECK(different);
    });
    test("temporal danger build is deterministic",[]{
        auto base=simulation_world(frame());
        const auto frames=temporal_sequence(base,20,[&](SimWorld& world,int frame){
            world.enemies={safety_enemy({320.0+frame*4.0,280},21)};
            world.projectiles={temporal_projectile({200.0+frame*6.0,200},{80,20},22)};
        });
        TemporalDangerConfig config;
        config.slice_frames=4;
        config.max_slices=6;
        const auto first=build_temporal_danger(frames,config);
        const auto second=build_temporal_danger(frames,config);
        CHECK(first.valid&&second.valid);
        CHECK(first.to_json()==second.to_json());
        CHECK(first.static_blocked==second.static_blocked);
        CHECK(first.slices.size()==second.slices.size());
        for(size_t i=0;i<first.slices.size();++i) {
            CHECK(first.slices[i].cell_danger==second.slices[i].cell_danger);
            CHECK(first.slices[i].cell_warning==second.slices[i].cell_warning);
            CHECK(first.slices[i].cell_confidence==second.slices[i].cell_confidence);
        }
    });
    test("temporal danger max room build is measured and bounded",[]{
        SimWorld world;
        world.room.grid.width=28;
        world.room.grid.height=16;
        world.room.grid.valid=true;
        world.room.grid.cells.resize(28*16);
        world.player.pos={640,360};
        world.player.radius=10;
        world.player.max_speed=260;
        for(int i=0;i<64;++i) {
            world.projectiles.push_back(temporal_projectile(
                {100.0+double(i%14)*70.0,140.0+double(i/14)*90.0},
                {30.0+double(i%5)*10.0,0},uint32_t(1000+i)));
        }
        for(int i=0;i<16;++i)
            world.enemies.push_back(safety_enemy(
                {120.0+double(i%8)*120.0,180.0+double(i/8)*240.0},
                uint32_t(2000+i)));
        for(int i=0;i<16;++i)
            world.hazards.push_back(temporal_hazard(
                {120.0+double(i%8)*120.0,160.0+double(i/8)*280.0},
                12,0,2));
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=16;
        double total_ms=0;
        TemporalDanger result;
        for(int run=0;run<5;++run) {
            const auto started=std::chrono::steady_clock::now();
            TemporalDangerBuilder builder(config);
            for(int frame=0;frame<96;++frame) {
                world.time=double(frame)/60.0;
                for(auto& projectile:world.projectiles) {
                    projectile.pos.x+=6;
                    if(projectile.pos.x>1080)projectile.pos.x-=800;
                }
                for(auto& enemy:world.enemies) {
                    enemy.pos.x+=2;
                    if(enemy.pos.x>1080)enemy.pos.x-=800;
                }
                if(!builder.observe(world))break;
            }
            result=builder.finish();
            total_ms+=std::chrono::duration<double,std::milli>(
                std::chrono::steady_clock::now()-started).count();
        }
        const double average_ms=total_ms/5.0;
        const size_t bytes=result.static_blocked.size()+
            sizeof(Grid)+result.static_grid.cells.size()*sizeof(Cell)+
            result.slices.size()*(result.cell_count()*3);
        std::cout<<"temporal_max_room_ms="<<average_ms
                 <<" temporal_max_room_bytes="<<bytes<<'\n';
        CHECK(result.valid);
        CHECK(result.slices.size()==16);
        CHECK(average_ms<100.0);
        CHECK(bytes<2*1024*1024);
    });
    test("temporal path is warning-only before a laser activates",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,31,[&](SimWorld& world,int){
            world.hazards.push_back(temporal_hazard(center,12,0.2,0.3));
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=8;
        const auto danger=build_temporal_danger(frames,config);
        std::vector<TemporalTrajectorySample> samples;
        for(int frame=0;frame<=9;++frame)samples.push_back(temporal_sample(frame,center));
        const auto assessment=assess_temporal_path(danger,samples);
        CHECK(assessment.evaluated);
        CHECK(assessment.status==TemporalPathStatus::warning);
        CHECK(assessment.temporal_danger_frames==0);
        CHECK(assessment.temporal_warning_frames>0);
        CHECK(assessment.temporal_coverage>0.99);
    });
    test("temporal path is dangerous while a laser is active",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,31,[&](SimWorld& world,int){
            world.hazards.push_back(temporal_hazard(center,12,0.2,0.3));
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=8;
        const auto danger=build_temporal_danger(frames,config);
        std::vector<TemporalTrajectorySample> samples;
        for(int frame=12;frame<=17;++frame)samples.push_back(temporal_sample(frame,center));
        const auto assessment=assess_temporal_path(danger,samples);
        CHECK(assessment.evaluated);
        CHECK(assessment.status==TemporalPathStatus::danger);
        CHECK(assessment.temporal_danger_frames>0);
        CHECK(assessment.temporal_first_risk_frame>=0);
    });
    test("temporal path is safe after a projectile has passed",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,31,[&](SimWorld& world,int frame){
            const Vec pos=frame<2?center:Vec{700,600};
            world.projectiles={temporal_projectile(pos,{0,0},31)};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=8;
        const auto danger=build_temporal_danger(frames,config);
        std::vector<TemporalTrajectorySample> samples;
        for(int frame=20;frame<=25;++frame)samples.push_back(temporal_sample(frame,center));
        const auto assessment=assess_temporal_path(danger,samples);
        CHECK(assessment.evaluated);
        CHECK(assessment.status==TemporalPathStatus::safe);
        CHECK(assessment.temporal_danger_frames==0);
        CHECK(assessment.temporal_coverage>0.99);
    });
    test("temporal path intersects a high-speed projectile between slices",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,2,[&](SimWorld& world,int frame){
            const Vec pos=frame==0?Vec{center.x-80,center.y}:Vec{center.x+80,center.y};
            world.projectiles={temporal_projectile(pos,{4800,0},32)};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=4;
        const auto danger=build_temporal_danger(frames,config);
        const std::vector<TemporalTrajectorySample> samples{temporal_sample(0,center)};
        const auto assessment=assess_temporal_path(danger,samples);
        CHECK(assessment.evaluated);
        CHECK(assessment.status==TemporalPathStatus::danger);
        CHECK(assessment.temporal_danger_frames>0);
    });
    test("temporal path intersects a curved projectile",[]{
        auto base=simulation_world(frame());
        const int cell=6*base.room.grid.width+4;
        const Vec center=base.room.grid.center(cell);
        const std::array<Vec,5> path{{
            {200,160},{200,360},{320,360},{440,360},{440,160}
        }};
        const auto frames=temporal_sequence(base,5,[&](SimWorld& world,int frame){
            world.projectiles={temporal_projectile(path[size_t(frame)],{0,0},33)};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=2;
        const auto danger=build_temporal_danger(frames,config);
        const std::vector<TemporalTrajectorySample> samples{temporal_sample(1,center)};
        const auto assessment=assess_temporal_path(danger,samples);
        CHECK(assessment.evaluated);
        CHECK(assessment.status==TemporalPathStatus::danger);
    });
    test("temporal path accounts for the player collision radius",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,1,[&](SimWorld& world,int){
            world.projectiles={temporal_projectile({center.x+39,center.y},{0,0},34)};
        });
        TemporalDangerConfig wide_config;
        wide_config.player_radius=10;
        TemporalDangerConfig narrow_config;
        narrow_config.player_radius=0;
        const auto wide_map=build_temporal_danger(frames,wide_config);
        const auto narrow_map=build_temporal_danger(frames,narrow_config);
        const auto wide=assess_temporal_path(wide_map,
            {temporal_sample(0,center,10)});
        const auto narrow=assess_temporal_path(narrow_map,
            {temporal_sample(0,center,0)});
        CHECK(wide.status==TemporalPathStatus::danger);
        CHECK(narrow.status==TemporalPathStatus::safe);
    });
    test("temporal path reports danger in the middle even with safe endpoints",[]{
        auto base=simulation_world(frame());
        const int middle=4*base.room.grid.width+7;
        const Vec middle_center=base.room.grid.center(middle);
        const Vec left=base.room.grid.center(4*base.room.grid.width+4);
        const Vec right=base.room.grid.center(4*base.room.grid.width+10);
        const auto frames=temporal_sequence(base,7,[&](SimWorld& world,int){
            world.hazards.push_back(temporal_hazard(middle_center,5,0,1));
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=4;
        const auto danger=build_temporal_danger(frames,config);
        std::vector<TemporalTrajectorySample> samples;
        for(int frame=0;frame<=6;++frame) {
            const double fraction=double(frame)/6.0;
            samples.push_back(temporal_sample(frame,left+(right-left)*fraction));
        }
        const auto assessment=assess_temporal_path(danger,samples);
        CHECK(assessment.status==TemporalPathStatus::danger);
        CHECK(assessment.temporal_first_risk_frame>0);
        CHECK(assessment.temporal_first_risk_frame<6);
    });
    test("temporal path risk differs between branch enemy trajectories",[]{
        auto base=simulation_world(frame());
        const int left_cell=4*base.room.grid.width+5;
        const int right_cell=4*base.room.grid.width+9;
        const Vec left=base.room.grid.center(left_cell);
        const Vec right=base.room.grid.center(right_cell);
        const auto left_frames=temporal_sequence(base,10,[&](SimWorld& world,int){
            world.enemies={safety_enemy(left,41)};
        });
        const auto right_frames=temporal_sequence(base,10,[&](SimWorld& world,int){
            world.enemies={safety_enemy(right,42)};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=4;
        const auto left_map=build_temporal_danger(left_frames,config);
        const auto right_map=build_temporal_danger(right_frames,config);
        std::vector<TemporalTrajectorySample> path;
        for(int frame=0;frame<6;++frame)path.push_back(temporal_sample(frame,left));
        const auto left_risk=assess_temporal_path(left_map,path);
        const auto right_risk=assess_temporal_path(right_map,path);
        CHECK(left_risk.status==TemporalPathStatus::danger);
        CHECK(right_risk.status==TemporalPathStatus::safe);
    });
    test("temporal branch signature rejects a swapped danger map",[]{
        auto f=frame();
        f.player.health=6;
        auto e=enemy({500,280},{260,0});
        e.collision=2;
        f.entities={e};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig sim;
        sim.horizon_frames=30;
        sim.early_terminate=false;
        sim.danger_map=false;
        ForwardSimulator root(sim);
        std::string error;
        CHECK(root.restore(snapshot,&error));
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=16;
        const auto east=capture_temporal_trajectory(root,
            {SimActionSegment{SimAction{Move::east,Fire::none,false},30}},config);
        const auto west=capture_temporal_trajectory(root,
            {SimActionSegment{SimAction{Move::west,Fire::none,false},30}},config);
        CHECK(east.valid&&west.valid);
        CHECK(east.root_signature==west.root_signature);
        CHECK(east.branch_signature!=west.branch_signature);
        auto swapped=west;
        swapped.danger=east.danger;
        const auto assessment=assess_temporal_trajectory(swapped);
        CHECK(assessment.status==TemporalPathStatus::unknown);
        CHECK(assessment.reason=="branch-signature-mismatch");
    });
    test("temporal path uses the exact arrival slice with one-frame slices",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,11,[&](SimWorld& world,int frame){
            if(frame==5)
                world.hazards.push_back(temporal_hazard(
                    center,5,5.0/60.0,5.5/60.0));
        });
        TemporalDangerConfig config;
        config.slice_frames=1;
        config.max_slices=12;
        const auto danger=build_temporal_danger(frames,config);
        CHECK(danger.danger_at(cell,5.0/60.0));
        CHECK(!danger.danger_at(cell,4.0/60.0));
        CHECK(!danger.danger_at(cell,6.0/60.0));
        const auto before=assess_temporal_path(danger,
            {temporal_sample(4,center)});
        const auto during=assess_temporal_path(danger,
            {temporal_sample(5,center)});
        const auto after=assess_temporal_path(danger,
            {temporal_sample(6,center)});
        CHECK(before.status==TemporalPathStatus::safe);
        CHECK(during.status==TemporalPathStatus::danger);
        CHECK(after.status==TemporalPathStatus::safe);
    });
    test("temporal path in the next slice does not inherit previous danger",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,31,[&](SimWorld& world,int){
            world.hazards.push_back(temporal_hazard(center,5,6.0/60.0,11.5/60.0));
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=8;
        const auto danger=build_temporal_danger(frames,config);
        std::vector<TemporalTrajectorySample> previous_slice;
        for(int frame=6;frame<=11;++frame)
            previous_slice.push_back(temporal_sample(frame,center));
        std::vector<TemporalTrajectorySample> next_slice;
        for(int frame=12;frame<=17;++frame)
            next_slice.push_back(temporal_sample(frame,center));
        const auto previous=assess_temporal_path(danger,previous_slice);
        const auto next=assess_temporal_path(danger,next_slice);
        CHECK(previous.status==TemporalPathStatus::danger);
        CHECK(next.status==TemporalPathStatus::safe);
    });
    test("temporal path unknown at an uncovered middle sample",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,5,[](SimWorld&,int){});
        const auto danger=build_temporal_danger(frames,TemporalDangerConfig{});
        const std::vector<TemporalTrajectorySample> samples{
            temporal_sample(0,center),
            temporal_sample(1,{-100,280}),
            temporal_sample(2,center)};
        const auto assessment=assess_temporal_path(danger,samples);
        CHECK(assessment.status==TemporalPathStatus::unknown);
        CHECK(assessment.unknown_frames>0);
        CHECK(assessment.temporal_coverage<1.0);
        CHECK(assessment.reason=="outside-coverage");
    });
    test("temporal path static collision uses the player body radius",[]{
        auto base=simulation_world(frame());
        const int wall=4*base.room.grid.width+6;
        base.room.grid.cells[size_t(wall)].collision=2;
        const auto frames=temporal_sequence(base,2,[](SimWorld&,int){});
        const auto danger=build_temporal_danger(frames,TemporalDangerConfig{});
        const std::vector<TemporalTrajectorySample> graze{
            temporal_sample(0,{200,260}),
            temporal_sample(1,{360,260})};
        const std::vector<TemporalTrajectorySample> clear{
            temporal_sample(0,{200,240}),
            temporal_sample(1,{360,240})};
        const auto graze_assessment=assess_temporal_path(danger,graze);
        const auto clear_assessment=assess_temporal_path(danger,clear);
        CHECK(graze_assessment.status==TemporalPathStatus::static_blocked);
        CHECK(graze_assessment.static_blocked_frames>0);
        CHECK(clear_assessment.status==TemporalPathStatus::safe);
    });
    test("temporal path reports unknown outside its coverage",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,20,[](SimWorld&,int){});
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=2;
        const auto danger=build_temporal_danger(frames,config);
        CHECK(danger.truncated);
        const auto inside=assess_temporal_path(danger,{temporal_sample(11,center)});
        const auto outside=assess_temporal_path(danger,{temporal_sample(30,center)});
        CHECK(inside.status==TemporalPathStatus::unknown);
        CHECK(inside.reason=="truncated-danger-map");
        CHECK(outside.status==TemporalPathStatus::unknown);
        CHECK(outside.reason=="outside-coverage");
        CHECK(outside.temporal_coverage==0.0);
    });
    test("temporal path assessment agrees with real simulator hit events",[]{
        auto f=frame();
        f.player.health=6;
        auto b=bullet({320,280},{0,0});
        b.radius=40;
        b.damage=1;
        f.entities={b};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig sim;
        sim.horizon_frames=12;
        sim.early_terminate=false;
        sim.danger_map=false;
        ForwardSimulator root(sim);
        std::string error;
        CHECK(root.restore(snapshot,&error));
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=4;
        config.player_radius=10;
        const auto trajectory=capture_temporal_trajectory(root,
            {SimActionSegment{SimAction{Move::stay,Fire::none,false},12}},config);
        CHECK(trajectory.valid);
        const auto assessment=assess_temporal_trajectory(trajectory);
        CHECK(assessment.status==TemporalPathStatus::danger);
        bool hit=false;
        for(const auto& event:trajectory.events)
            if(event.target==0&&(event.kind=="projectile-hit"||
               event.kind=="contact-hit"||event.kind=="hazard-hit"))
                hit=true;
        CHECK(hit);
    });
    test("temporal path assessment is deterministic",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,20,[&](SimWorld& world,int frame){
            world.hazards.push_back(temporal_hazard(center,10,0.1,0.5));
            world.projectiles={temporal_projectile({200.0+frame*6.0,200},{80,20},43)};
        });
        TemporalDangerConfig config;
        config.slice_frames=4;
        config.max_slices=6;
        const auto danger=build_temporal_danger(frames,config);
        std::vector<TemporalTrajectorySample> samples;
        for(int frame=0;frame<12;++frame)
            samples.push_back(temporal_sample(frame,{280.0+frame*4.0,280}));
        const auto first=assess_temporal_path(danger,samples);
        const auto second=assess_temporal_path(danger,samples);
        CHECK(first.to_json()==second.to_json());
        CHECK(first.status==second.status);
        CHECK(first.temporal_danger_frames==second.temporal_danger_frames);
    });
    test("temporal danger ignores a projectile that cannot damage the player",[]{
        auto base=simulation_world(frame());
        const int cell=4*base.room.grid.width+7;
        const Vec center=base.room.grid.center(cell);
        const auto frames=temporal_sequence(base,1,[&](SimWorld& world,int){
            auto projectile=temporal_projectile(center,{0,0},61);
            projectile.damageable=false;
            world.projectiles={projectile};
        });
        const auto danger=build_temporal_danger(frames,TemporalDangerConfig{});
        const auto assessment=assess_temporal_path(danger,
            {temporal_sample(0,center)});
        CHECK(assessment.evaluated);
        CHECK(assessment.status==TemporalPathStatus::safe);
        CHECK(assessment.temporal_danger_frames==0);
    });
    test("temporal danger matches reordered identical hazards by position",[]{
        auto base=simulation_world(frame());
        const int left_cell=4*base.room.grid.width+5;
        const int right_cell=4*base.room.grid.width+9;
        const int middle_cell=4*base.room.grid.width+7;
        const Vec left=base.room.grid.center(left_cell);
        const Vec right=base.room.grid.center(right_cell);
        auto first=temporal_hazard(left,8,0,1);
        auto second=temporal_hazard(right,8,0,1);
        first.spec.source=77;
        second.spec.source=77;
        first.spec.label="same-hazard";
        second.spec.label="same-hazard";
        const auto frames=temporal_sequence(base,3,[&](SimWorld& world,int frame){
            if(frame%2==0)world.hazards={first,second};
            else world.hazards={second,first};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=2;
        const auto danger=build_temporal_danger(frames,config);
        CHECK(danger.danger_at(left_cell,0.0));
        CHECK(danger.danger_at(right_cell,0.0));
        CHECK(!danger.danger_at(middle_cell,0.0));
    });
    test("temporal reachability expands in an open room",[]{
        auto f=frame();
        f.player.health=6;
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig sim;
        sim.horizon_frames=12;
        sim.early_terminate=false;
        sim.danger_map=false;
        ForwardSimulator root(sim);
        std::string error;
        CHECK(root.restore(snapshot,&error));
        TemporalReachabilityConfig config;
        config.horizon_frames=12;
        config.step_frames=3;
        config.max_layers=4;
        config.max_states_per_layer=12;
        config.max_total_states=300;
        config.max_seconds=0.5;
        config.max_memory_bytes=4u*1024u*1024u;
        config.max_representative_paths=2;
        config.danger.max_slices=8;
        const auto result=search_temporal_reachability(root,config);
        CHECK(result.valid);
        CHECK(result.layers.size()>=2);
        CHECK(result.total_states>1);
        CHECK(result.expanded_states>0);
        CHECK(result.layers[0].reachable_states>0);
        CHECK(result.layers.back().reachable_cells>0);
        CHECK(int(result.static_only_cell_list.size())==result.static_only_cells);
        CHECK(int(result.temporal_only_cell_list.size())==result.temporal_only_cells);
        CHECK(result.static_only_cells>0);
        CHECK(result.temporal_only_cells==0);
    });
    test("trajectory diagnostics compare small large outward and MPC routes",[]{
        auto f=frame();
        f.player.health=6;
        f.player.tear_speed=360;
        f.player.tear_range=400;
        auto e=enemy({500,280},{60,0});
        e.hp=20;
        e.collision=2;
        auto b=bullet({620,160},{-80,40});
        b.radius=6;
        f.entities={e,b};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig sim;
        sim.horizon_frames=48;
        sim.early_terminate=false;
        sim.danger_map=false;
        ForwardSimulator root(sim);
        std::string error;
        CHECK(root.restore(snapshot,&error));

        auto make_plan=[](const std::array<Move,4>& moves,int frames,int cycles) {
            std::vector<SimActionSegment> plan;
            for(int cycle=0;cycle<cycles;++cycle)
                for(Move move:moves)
                    plan.push_back({SimAction{move,Fire::right,true},frames});
            return plan;
        };
        const std::array<Move,4> loop{{Move::east,Move::north,Move::west,
            Move::south}};
        const auto small=analyze_trajectory(root,make_plan(loop,6,2));
        const auto large=analyze_trajectory(root,make_plan(loop,12,1));
        std::vector<SimActionSegment> outward;
        for(int i=0;i<8;++i)
            outward.push_back({SimAction{Move::west,Fire::right,true},6});
        const auto escape=analyze_trajectory(root,outward);

        LookaheadConfig look;
        look.epochs=1;
        look.epoch_frames=6;
        look.simulation_horizon_frames=6;
        look.simulation_branches=2;
        MpcConfig mpc;
        mpc.horizon_frames=24;
        mpc.segment_frames=6;
        mpc.beam_width=3;
        mpc.min_beam_width=2;
        mpc.max_beam_width=4;
        mpc.root_candidates=12;
        mpc.full_root_actions=false;
        mpc.max_simulations=512;
        mpc.time_budget_ms=1000;
        mpc.max_total_ms=0;
        mpc.safety.collision_horizon_frames=6;
        MpcCombatPlanner planner(mpc,look);
        const auto plan=planner.decide(f,true,nullptr);
        CHECK(plan.available);
        const auto autonomous=analyze_trajectory(root,plan.sequence.segments);
        auto print=[&](const char* name,const TrajectoryDiagnostics& d) {
            std::cout<<"trajectory_route="<<name
                <<" frames="<<d.frames<<" length="<<d.trajectory_length
                <<" net="<<d.net_displacement
                <<" ratio="<<d.net_displacement_ratio
                <<" turns="<<d.heading_change_count
                <<" curvature="<<d.trajectory_curvature
                <<" orbit="<<d.orbit_radius
                <<" sep_mean="<<d.enemy_separation_mean
                <<" min_clear="<<d.minimum_clearance
                <<" damage_events="<<d.damage_events
                <<" damage="<<d.damage_taken
                <<" hp_drop="<<d.enemy_hp_drop
                <<" reach_growth="<<d.reachable_area_growth
                <<" repeats="<<d.repeat_visit_count<<'\n';
        };
        print("small",small);
        print("large",large);
        print("outward",escape);
        print("autonomous",autonomous);
        CHECK(small.valid&&large.valid&&escape.valid&&autonomous.valid);
        CHECK(small.trajectory_length>0.0);
        CHECK(large.trajectory_length>0.0);
        CHECK(escape.trajectory_length>0.0);
        CHECK(autonomous.frames>0);
        CHECK(large.trajectory_length!=small.trajectory_length);
        CHECK(autonomous.enemy_hp_end<=autonomous.enemy_hp_start+1e-9);
        CHECK(small.minimum_clearance<=1e8);
        CHECK(small.heading_change_count>0);
        CHECK(large.heading_change_count>0);
        CHECK(small.trajectory_curvature>escape.trajectory_curvature);
        CHECK(escape.net_displacement_ratio>small.net_displacement_ratio);
        CHECK(escape.dominant_move_share>small.dominant_move_share);
        CHECK(escape.max_same_move_run>=48);
        CHECK(autonomous.damage_events>=0);
    });
    test("trajectory diagnostics compare routes with fifteen type 222.0.0 enemies",[]{
        auto f=frame();
        f.player.health=6;
        f.player.tear_speed=360;
        f.player.tear_range=400;
        const std::array<Vec,15> positions{{
            {80,160},{200,160},{320,160},{440,160},{560,160},
            {80,260},{200,260},{480,260},{560,260},
            {80,380},{200,380},{320,380},{440,380},{560,380},
            {400,280}}};
        const std::array<Vec,15> velocities{{
            {30,0},{20,30},{-20,10},{0,20},{10,-20},
            {20,10},{-15,20},{25,0},{-10,15},
            {10,20},{-20,10},{15,-15},{0,25},{-15,-10},
            {-25,0}}};
        const std::array<double,15> health{{
            20,15,12,18,14,16,13,17,11,
            19,15,21,12,18,24}};
        for(int i=0;i<15;++i) {
            auto e=enemy(positions[size_t(i)],velocities[size_t(i)]);
            e.type=222;
            e.variant=0;
            e.subtype=0;
            e.seed=uint32_t(100+i);
            e.hp=health[size_t(i)];
            e.address=uint32_t(0x30000+i*0x10);
            e.collision=2;
            f.entities.push_back(e);
        }
        auto b=bullet({600,120},{-80,40});
        b.radius=6;
        f.entities.push_back(b);
        int type_222_0_0=0;
        for(const auto& entity:f.entities)
            if(entity.type==222&&entity.variant==0&&entity.subtype==0)
                ++type_222_0_0;
        CHECK(type_222_0_0==15);
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig sim;
        sim.horizon_frames=48;
        sim.early_terminate=false;
        sim.danger_map=false;
        ForwardSimulator root(sim);
        std::string error;
        CHECK(root.restore(snapshot,&error));
        auto make_plan=[](const std::array<Move,4>& moves,int frames,int cycles) {
            std::vector<SimActionSegment> plan;
            for(int cycle=0;cycle<cycles;++cycle)
                for(Move move:moves)
                    plan.push_back({SimAction{move,Fire::right,true},frames});
            return plan;
        };
        const std::array<Move,4> loop{{Move::east,Move::north,Move::west,
            Move::south}};
        const auto small=analyze_trajectory(root,make_plan(loop,6,2));
        const auto large=analyze_trajectory(root,make_plan(loop,12,1));
        std::vector<SimActionSegment> outward;
        for(int i=0;i<8;++i)
            outward.push_back({SimAction{Move::west,Fire::right,true},6});
        const auto escape=analyze_trajectory(root,outward);
        LookaheadConfig look;
        look.epochs=1;
        look.epoch_frames=6;
        look.simulation_horizon_frames=6;
        look.simulation_branches=2;
        MpcConfig mpc;
        mpc.horizon_frames=24;
        mpc.segment_frames=6;
        mpc.beam_width=3;
        mpc.min_beam_width=2;
        mpc.max_beam_width=4;
        mpc.root_candidates=12;
        mpc.full_root_actions=false;
        mpc.max_simulations=512;
        mpc.time_budget_ms=1000;
        mpc.max_total_ms=0;
        mpc.safety.collision_horizon_frames=6;
        MpcCombatPlanner planner(mpc,look);
        const auto plan=planner.decide(f,true,nullptr);
        CHECK(plan.available);
        const auto autonomous=analyze_trajectory(root,plan.sequence.segments);
        auto print=[&](const char* name,const TrajectoryDiagnostics& d) {
            std::cout<<"trajectory_multi_route="<<name
                <<" frames="<<d.frames<<" length="<<d.trajectory_length
                <<" net="<<d.net_displacement
                <<" ratio="<<d.net_displacement_ratio
                <<" turns="<<d.heading_change_count
                <<" curvature="<<d.trajectory_curvature
                <<" orbit="<<d.orbit_radius
                <<" sep_mean="<<d.enemy_separation_mean
                <<" min_clear="<<d.minimum_clearance
                <<" damage_events="<<d.damage_events
                <<" damage="<<d.damage_taken
                <<" hp_drop="<<d.enemy_hp_drop
                <<" reach_growth="<<d.reachable_area_growth
                <<" repeats="<<d.repeat_visit_count<<'\n';
        };
        print("small",small);
        print("large",large);
        print("outward",escape);
        print("autonomous",autonomous);
        CHECK(small.valid&&large.valid&&escape.valid&&autonomous.valid);
        CHECK(small.enemy_hp_start>0);
        CHECK(large.enemy_hp_start>0);
        CHECK(escape.enemy_hp_start>0);
        CHECK(autonomous.enemy_hp_start>0);
        CHECK(large.trajectory_length!=small.trajectory_length);
        CHECK(small.minimum_clearance<=1e8);
        CHECK(autonomous.enemy_hp_end<=autonomous.enemy_hp_start+1e-9);
        CHECK(autonomous.damage_events>=0);
    });
    test("temporal reachability performance and static comparison is measured",[]{
        const std::array<std::pair<int,int>,3> scenarios{{
            {0,0},{4,16},{8,32}}};
        for(const auto&[enemies,projectiles]:scenarios) {
            const auto f=reachability_frame(enemies,projectiles);
            const auto started=std::chrono::steady_clock::now();
            auto config=reachability_config(24,6,4,12);
            config.max_total_states=1024;
            config.max_seconds=2.0;
            const auto result=reachability_of(f,config);
            const double ms=std::chrono::duration<double,std::milli>(
                std::chrono::steady_clock::now()-started).count();
            std::cout<<"reachability_scan enemies="<<enemies
                <<" projectiles="<<projectiles<<" ms="<<ms
                <<" valid="<<result.valid<<" states="<<result.total_states
                <<" expanded="<<result.expanded_states
                <<" pruned="<<result.pruned_states
                <<" merged="<<result.merged_states
                <<" static="<<result.static_reachable_cells
                <<" temporal="<<result.temporal_reachable_cells
                <<" temporal_only="<<result.temporal_only_cells
                <<" static_only="<<result.static_only_cells
                <<" bytes="<<result.estimated_memory_bytes<<'\n';
            for(const auto& layer:result.layers)
                std::cout<<"reachability_layer enemies="<<enemies
                    <<" projectiles="<<projectiles<<" layer="<<layer.layer
                    <<" expanded="<<layer.expanded_states
                    <<" reachable="<<layer.reachable_states
                    <<" warning="<<layer.warning_states
                    <<" danger="<<layer.blocked_by_dynamic_danger
                    <<" static="<<layer.blocked_by_static_terrain
                    <<" unknown="<<layer.unknown_states
                    <<" dead="<<layer.dead_end_states<<'\n';
            CHECK(result.valid);
            CHECK(ms<5000.0);
            CHECK(result.estimated_memory_bytes<4u*1024u*1024u);
        }
    });
    test("temporal reachability cannot cross static walls",[]{
        auto f=frame();
        f.player.health=6;
        const int wall=4*f.grid.width+5;
        f.grid.cells[size_t(wall)].collision=2;
        const auto result=reachability_of(f,reachability_config(9,3,3,9));
        CHECK(result.valid);
        CHECK(result.static_walkable_cells<f.grid.width*f.grid.height);
        bool wall_safe=false;
        for(const auto& state:result.states)
            if(state.safe&&grid_cell(f.grid,state.position)==wall)wall_safe=true;
        CHECK(!wall_safe);
        CHECK(result.static_only_cells>0);
    });
    test("temporal reachability keeps branch-conditioned enemy futures",[]{
        auto f=frame();
        f.player.health=6;
        auto e=enemy({500,280},{120,0});
        e.collision=2;
        f.entities={e};
        const auto result=reachability_of(f,reachability_config(9,3,3,9));
        CHECK(result.valid);
        const TemporalReachabilityState* east=nullptr;
        const TemporalReachabilityState* west=nullptr;
        for(const auto& state:result.states) {
            if(state.layer!=1)continue;
            if(state.first_action==int(Move::east))east=&state;
            if(state.first_action==int(Move::west))west=&state;
        }
        CHECK(east!=nullptr);
        CHECK(west!=nullptr);
        CHECK(east->world_signature!=west->world_signature);
    });
    test("temporal reachability reopens a cell after a charging enemy leaves",[]{
        auto world=simulation_world(frame());
        SimEnemy enemy_state=safety_enemy({240,280},71);
        enemy_state.contact=false;
        enemy_state.chase=false;
        enemy_state.charging=true;
        enemy_state.charge_direction={1,0};
        enemy_state.charge_remaining=24;
        world.enemies={enemy_state};
        ForwardSimConfig sim;
        sim.horizon_frames=96;
        sim.early_terminate=false;
        sim.danger_map=false;
        ForwardSimulator root(sim);
        std::string error;
        CHECK(root.restore_world(world,&error));
        auto config=reachability_config(96,6,16,12);
        config.max_total_states=2048;
        config.max_seconds=2.0;
        const auto result=search_temporal_reachability(root,config);
        CHECK(result.valid);
        std::map<int,bool> early_danger;
        std::map<int,bool> later_safe;
        for(const auto& state:result.states) {
            const int cell=grid_cell(world.room.grid,state.position);
            if(cell<0)continue;
            if(state.layer<=2&&state.danger)early_danger[cell]=true;
            if(state.layer>=6&&state.safe)later_safe[cell]=true;
        }
        bool reopened=false;
        for(const auto&[cell,was_danger]:early_danger)
            if(was_danger&&later_safe[cell])reopened=true;
        CHECK(reopened);
    });
    test("temporal reachability reopens a cell after a temporary contact blocker",[]{
        auto f=frame();
        f.player.health=6;
        auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        HazardState blocker=temporal_hazard_state(
            f.grid.center(4*f.grid.width+6),5,0.0,0.25);
        blocker.kind=HazardKind::contact;
        blocker.damage_class=DamageClass::contact;
        blocker.damage_timing=DamageTiming::window;
        snapshot.hazards.push_back(blocker);
        ForwardSimConfig sim;
        sim.horizon_frames=96;
        sim.early_terminate=false;
        sim.danger_map=false;
        ForwardSimulator root(sim);
        std::string error;
        CHECK(root.restore(snapshot,&error));
        auto config=reachability_config(96,6,16,12);
        config.max_total_states=2048;
        config.max_seconds=2.0;
        const auto result=search_temporal_reachability(root,config);
        CHECK(result.valid);
        std::map<int,bool> early_danger;
        std::map<int,bool> later_safe;
        for(const auto& state:result.states) {
            const int cell=grid_cell(f.grid,state.position);
            if(cell<0)continue;
            if(state.layer<=2&&state.danger)early_danger[cell]=true;
            if(state.layer>=4&&state.safe)later_safe[cell]=true;
        }
        bool reopened=false;
        for(const auto&[cell,was_danger]:early_danger)
            if(was_danger&&later_safe[cell])reopened=true;
        CHECK(reopened);
    });
    test("temporal reachability reopens a corridor after a projectile passes",[]{
        auto f=frame();
        f.player.health=6;
        auto b=bullet({280,280},{-600,0});
        b.radius=8;
        f.entities={b};
        const auto result=reachability_of(f,reachability_config(30,6,5,12));
        CHECK(result.valid);
        const int cell=grid_cell(f.grid,{280,280});
        bool later_safe=false;
        for(const auto& state:result.states)
            if(state.layer>=2&&state.safe&&grid_cell(f.grid,state.position)==cell)
                later_safe=true;
        CHECK(later_safe);
    });
    test("temporal reachability distinguishes laser warning danger and end",[]{
        auto f=frame();
        f.player.health=6;
        auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        snapshot.hazards.push_back(temporal_hazard_state(
            f.grid.center(4*f.grid.width+6),6,0.1,0.2));
        ForwardSimConfig sim;
        sim.horizon_frames=30;
        sim.early_terminate=false;
        sim.danger_map=false;
        ForwardSimulator root(sim);
        std::string error;
        CHECK(root.restore(snapshot,&error));
        const auto result=search_temporal_reachability(root,
            reachability_config(30,6,5,12));
        CHECK(result.valid);
        bool warning=false,danger=false,safe_after=false;
        for(const auto& layer:result.layers) {
            if(layer.warning_states>0)warning=true;
            if(layer.blocked_by_dynamic_danger>0)danger=true;
            if(layer.layer>=3&&layer.reachable_states>0)safe_after=true;
        }
        CHECK(result.layers[0].warning_states>0);
        CHECK(warning);
        CHECK(danger);
        CHECK(safe_after);
    });
    test("temporal reachability finds escape directions under a pincer",[]{
        auto f=frame();
        f.player.health=6;
        auto left=enemy({240,280},{0,0});
        auto right=enemy({400,280},{0,0});
        left.address=0x30000;
        right.address=0x30010;
        left.collision=2;
        right.collision=2;
        f.entities={left,right};
        const auto result=reachability_of(f,reachability_config(12,6,2,9));
        CHECK(result.valid);
        bool north_or_south=false;
        for(const auto& state:result.states) {
            if(state.layer!=1||!state.safe)continue;
            if(state.first_action==int(Move::north)||
               state.first_action==int(Move::south))
                north_or_south=true;
        }
        CHECK(north_or_south);
        CHECK(result.layers.back().mobility_routes>0);
    });
    test("temporal reachability finds a wall-corner dead end",[]{
        auto f=frame();
        f.player.health=6;
        const int px=7,py=4;
        for(const auto& delta:std::array<std::pair<int,int>,4>{{
            {-1,0},{1,0},{0,-1},{0,1}}}) {
            const int x=px+delta.first,y=py+delta.second;
            f.grid.cells[size_t(y*f.grid.width+x)].collision=2;
        }
        const auto result=reachability_of(f,reachability_config(9,3,3,9));
        CHECK(result.valid);
        bool dead_end=false;
        for(const auto& layer:result.layers)
            if(layer.dead_end_states>0)dead_end=true;
        CHECK(dead_end);
    });
    test("temporal reachability preserves player inertia",[]{
        auto f=frame();
        f.player.health=6;
        const auto result=reachability_of(f,reachability_config(1,1,1,9));
        CHECK(result.valid);
        const TemporalReachabilityState* east=nullptr;
        const TemporalReachabilityState* west=nullptr;
        for(const auto& state:result.states) {
            if(state.layer!=1)continue;
            if(state.first_action==int(Move::east))east=&state;
            if(state.first_action==int(Move::west))west=&state;
        }
        CHECK(east!=nullptr);
        CHECK(west!=nullptr);
        CHECK(east->velocity.x>0.0);
        CHECK(west->velocity.x<0.0);
        CHECK(std::abs(east->velocity.x)<260.0);
        CHECK(distance(east->position,{320,280})<f.player.max_speed/60.0+1.0);
    });
    test("temporal reachability does not count unknown as safe",[]{
        auto f=frame();
        f.player.health=6;
        auto config=reachability_config(9,3,3,9);
        config.danger.max_slices=1;
        const auto result=reachability_of(f,config);
        CHECK(result.valid);
        bool unknown=false;
        bool later_safe=false;
        for(const auto& state:result.states) {
            if(state.layer>0&&state.unknown)unknown=true;
            if(state.layer>0&&state.safe)later_safe=true;
        }
        CHECK(unknown);
        CHECK(!later_safe);
    });
    test("temporal reachability does not merge same-cell different worlds",[]{
        auto f=frame();
        f.player.health=6;
        auto e=enemy({500,280},{60,0});
        e.collision=2;
        f.entities={e};
        const auto result=reachability_of(f,reachability_config(18,3,6,16));
        CHECK(result.valid);
        std::map<std::pair<int,int>,std::set<uint64_t>> signatures;
        for(const auto& state:result.states) {
            if(!state.safe)continue;
            const int cell=grid_cell(f.grid,state.position);
            if(cell<0)continue;
            signatures[{state.layer,cell}].insert(state.world_signature);
        }
        bool distinct=false;
        for(const auto&[key,values]:signatures)
            if(values.size()>1)distinct=true;
        CHECK(distinct);
    });
    test("sim world signature covers branch-future fields",[]{
        auto base=simulation_world(frame());
        base.enemies={safety_enemy({300,280},91)};
        base.projectiles={temporal_projectile({360,240},{40,0},91)};
        SimHazard hazard=temporal_hazard({400,280},12,0.0,1.0);
        base.hazards={hazard};
        const uint64_t base_signature=temporal_world_signature(base);
        auto enemy_state=base;enemy_state.enemies[0].state_frame=7;
        CHECK(temporal_world_signature(enemy_state)!=base_signature);
        auto enemy_charge=base;enemy_charge.enemies[0].charging=true;
        enemy_charge.enemies[0].charge_remaining=12;
        CHECK(temporal_world_signature(enemy_charge)!=base_signature);
        auto enemy_contact=base;enemy_contact.enemies[0].contact=false;
        CHECK(temporal_world_signature(enemy_contact)!=base_signature);
        auto projectile_homing=base;projectile_homing.projectiles[0].homing=true;
        CHECK(temporal_world_signature(projectile_homing)!=base_signature);
        auto projectile_curve=base;projectile_curve.projectiles[0].change_flags=8;
        projectile_curve.projectiles[0].curve=0.25;
        CHECK(temporal_world_signature(projectile_curve)!=base_signature);
        auto projectile_height=base;
        projectile_height.projectiles[0].height_velocity=-40;
        CHECK(temporal_world_signature(projectile_height)!=base_signature);
        auto hazard_timing=base;
        hazard_timing.hazards[0].spec.damage_timing=DamageTiming::dot;
        CHECK(temporal_world_signature(hazard_timing)!=base_signature);
        auto hazard_label=base;hazard_label.hazards[0].spec.label="changed";
        CHECK(temporal_world_signature(hazard_label)!=base_signature);
        auto player_facing=base;player_facing.player.facing=Fire::left;
        CHECK(temporal_world_signature(player_facing)!=base_signature);
    });
    test("temporal reachability separates physical and safe reachability",[]{
        auto f=frame();
        f.player.health=6;
        f.player.body.pos={320,280};
        auto e=enemy({320,280},{0,0});
        e.collision=2;
        f.entities={e};
        auto config=reachability_config(9,3,3,6);
        config.max_total_states=256;
        const auto result=reachability_of(f,config);
        CHECK(result.valid);
        CHECK(result.physical_reachable_cells>=result.safe_reachable_cells);
        CHECK(result.physically_reachable_unsafe_cells>0);
        CHECK(int(result.physically_reachable_unsafe_cell_list.size())==
            result.physically_reachable_unsafe_cells);
        bool physically_unsafe_state=false;
        for(const auto& state:result.states)
            if(state.physically_reachable&&!state.safe)
                physically_unsafe_state=true;
        CHECK(physically_unsafe_state);
        for(const auto& layer:result.layers)
            CHECK(layer.physical_reachable_states>=layer.reachable_states);
    });
    test("temporal reachability records danger sources and pruning reasons",[]{
        auto f=frame();
        f.player.health=6;
        f.player.body.pos={320,280};
        auto b=bullet({320,280},{0,0});
        b.radius=6;
        f.entities={b};
        auto config=reachability_config(9,3,3,1);
        config.max_total_states=64;
        config.danger.max_slices=8;
        const auto result=reachability_of(f,config);
        CHECK(result.valid);
        CHECK(result.pruned_states>0);
        CHECK(result.pruned_safe+result.pruned_warning+result.pruned_danger+
            result.pruned_static+result.pruned_unknown==result.pruned_states);
        CHECK(result.pruned_danger>0);
        CHECK(result.pruned_danger_projectile>0);
        bool source_seen=false;
        for(const auto& layer:result.layers) {
            const int described=layer.danger_enemy_states+
                layer.danger_projectile_states+layer.danger_hazard_states+
                layer.danger_unknown_states;
            CHECK(described>=0);
            if(layer.danger_projectile_states>0)source_seen=true;
        }
        CHECK(source_seen);
    });
    test("temporal reachability dedupe never loses a distinct future",[]{
        const auto f=reachability_frame(1,0);
        auto config=reachability_config(18,3,6,16);
        config.max_total_states=1024;
        const auto result=reachability_of(f,config);
        CHECK(result.valid);
        CHECK(result.merged_states==result.merged_same_world_same_route);
        std::set<std::tuple<int,int,uint64_t>> identities;
        for(const auto& state:result.states) {
            if(state.parent<0)continue;
            const auto key=std::make_tuple(state.layer,state.first_action,
                state.world_signature);
            CHECK(identities.insert(key).second);
        }
        CHECK(result.distinct_world_same_cell>0);
    });
    test("temporal route comparison exposes a long escape and real damage",[]{
        auto f=frame();
        f.player.health=6;
        f.player.body.pos={320,280};
        auto b=bullet({370,280},{0,0});
        b.radius=8;
        f.entities={b};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig sim;
        sim.horizon_frames=48;
        sim.early_terminate=false;
        sim.danger_map=false;
        ForwardSimulator root(sim);
        std::string error;
        CHECK(root.restore(snapshot,&error));
        std::vector<SimActionSegment> loop;
        loop.push_back({SimAction{Move::east,Fire::none,false},24});
        loop.push_back({SimAction{Move::north,Fire::none,false},8});
        loop.push_back({SimAction{Move::west,Fire::none,false},8});
        loop.push_back({SimAction{Move::south,Fire::none,false},8});
        std::vector<SimActionSegment> escape_plan;
        for(int i=0;i<8;++i)
            escape_plan.push_back({SimAction{Move::west,Fire::none,false},6});
        const auto comparison=compare_temporal_routes(root,loop,escape_plan);
        CHECK(comparison.valid);
        CHECK(comparison.temporal_available);
        CHECK(comparison.compared_frames==48);
        CHECK(comparison.mpc_route_danger);
        CHECK(comparison.temporal_safe);
        CHECK(comparison.damage_delta>0.0);
        CHECK(comparison.danger_frame_delta>0.0);
        CHECK(comparison.displacement_delta>0.0);
        CHECK(comparison.escape_outside_mpc);
        CHECK(comparison.mpc.collision_consistent);
        CHECK(comparison.temporal.collision_consistent);
        auto independent=root.fork();
        int events=0;
        for(const auto& segment:loop)
            for(int frame=0;frame<segment.frames;++frame) {
                independent->step(segment.action,1);
                for(const auto& event:independent->get_events())
                    if(event.target==0&&(event.kind=="projectile-hit"||
                        event.kind=="contact-hit"||event.kind=="hazard-hit"))
                        ++events;
            }
        CHECK(events==comparison.mpc.trajectory.damage_events);
    });
    test("temporal diagnostics do not change the MPC decision",[]{
        auto f=frame();
        f.player.health=6;
        auto e=enemy({500,280},{60,0});
        e.collision=2;
        auto b=bullet({620,160},{-80,40});
        b.radius=6;
        f.entities={e,b};
        LookaheadConfig look;
        look.epochs=1;look.epoch_frames=6;
        look.simulation_horizon_frames=6;look.simulation_branches=2;
        MpcConfig mpc;
        mpc.horizon_frames=18;mpc.segment_frames=6;
        mpc.beam_width=2;mpc.min_beam_width=2;mpc.max_beam_width=3;
        mpc.root_candidates=9;mpc.max_simulations=256;
        mpc.time_budget_ms=1000;mpc.max_total_ms=0;
        MpcCombatPlanner first_planner(mpc,look);
        MpcCombatPlanner second_planner(mpc,look);
        const auto first=first_planner.decide(f,true,nullptr);
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig sim;
        sim.horizon_frames=18;sim.early_terminate=false;sim.danger_map=false;
        ForwardSimulator root(sim);
        std::string error;
        CHECK(root.restore(snapshot,&error));
        const auto reachability=search_temporal_reachability(root,
            reachability_config(18,6,4,12));
        CHECK(reachability.valid);
        const auto selection=select_temporal_route(reachability,
            TemporalRoutePolicy::escape);
        const auto safest=select_temporal_route(reachability,
            TemporalRoutePolicy::safest);
        CHECK(selection.found);
        CHECK(safest.found);
        CHECK(selection.root_distance>=safest.root_distance);
        const auto second=second_planner.decide(f,true,nullptr);
        CHECK(first.available==second.available);
        CHECK(first.first==second.first);
        CHECK(first.sequence.segments.size()==second.sequence.segments.size());
        for(size_t i=0;i<first.sequence.segments.size();++i)
            CHECK(first.sequence.segments[i].action==
                second.sequence.segments[i].action);
    });
    test("temporal reachability step state matrix is measured",[]{
        const std::array<std::pair<int,int>,3> scenarios{{
            {4,16},{8,32},{16,64}}};
        for(const auto&[enemies,projectiles]:scenarios) {
            const auto f=reachability_frame(enemies,projectiles);
            for(int step:std::array<int,3>{3,6,12}) {
                auto config=reachability_config(36,step,6,12);
                config.max_seconds=2.0;
                config.max_memory_bytes=64u*1024u*1024u;
                const auto started=std::chrono::steady_clock::now();
                const auto result=reachability_of(f,config);
                const double ms=std::chrono::duration<double,std::milli>(
                    std::chrono::steady_clock::now()-started).count();
                std::cout<<"reachability_matrix enemies="<<enemies
                    <<" projectiles="<<projectiles<<" step="<<step
                    <<" ms="<<ms<<" valid="<<result.valid
                    <<" timed_out="<<result.timed_out
                    <<" states="<<result.total_states
                    <<" layers="<<result.layers_completed
                    <<" physical="<<result.physical_reachable_cells
                    <<" safe="<<result.safe_reachable_cells
                    <<" unsafe="<<result.physically_reachable_unsafe_cells
                    <<" pruned="<<result.pruned_states
                    <<" bytes="<<result.estimated_memory_bytes<<'\n';
                CHECK(result.valid);
                CHECK(!result.memory_limited);
                CHECK(ms<15000.0);
                CHECK(result.estimated_memory_bytes<64u*1024u*1024u);
            }
        }
    });
    test("temporal reachability state caps are measured",[]{
        const auto f=reachability_frame(16,64);
        for(int cap:std::array<int,3>{8,24,48}) {
            auto config=reachability_config(36,6,12,cap);
            config.max_seconds=2.0;
            config.max_memory_bytes=64u*1024u*1024u;
            const auto started=std::chrono::steady_clock::now();
            const auto result=reachability_of(f,config);
            const double ms=std::chrono::duration<double,std::milli>(
                std::chrono::steady_clock::now()-started).count();
            std::cout<<"reachability_cap cap="<<cap<<" ms="<<ms
                <<" states="<<result.total_states
                <<" pruned="<<result.pruned_states
                <<" layers="<<result.layers_completed
                <<" bytes="<<result.estimated_memory_bytes<<'\n';
            CHECK(result.valid);
            CHECK(!result.memory_limited);
            CHECK(ms<15000.0);
        }
    });
    test("counterfactual policy validation runs independent closed-loop worlds",[]{
        PolicyValidationConfig config;
        config.seeds=1;
        config.max_steps=8;
        config.step_frames=6;
        config.scenario_limit=2;
        config.mpc.horizon_frames=12;
        config.mpc.min_horizon_frames=6;
        config.mpc.segment_frames=6;
        config.mpc.beam_width=2;
        config.mpc.min_beam_width=2;
        config.mpc.max_beam_width=2;
        config.mpc.root_candidates=9;
        config.mpc.max_simulations=128;
        config.temporal.horizon_frames=12;
        config.temporal.step_frames=6;
        config.temporal.max_layers=2;
        config.temporal.max_states_per_layer=6;
        config.temporal.max_total_states=64;
        const auto report=run_counterfactual_policy_validation(config);
        CHECK(report.valid);
        CHECK(report.runs==6);
        CHECK(report.comparisons.size()==2);
        for(const auto& comparison:report.comparisons) {
            CHECK(comparison.initial_signature_consistent);
            CHECK(comparison.original_mpc.frames>0);
            CHECK(comparison.temporal_safest.frames>0);
            CHECK(comparison.temporal_escape.frames>0);
            CHECK(comparison.original_mpc.damage_taken>=0.0);
            CHECK(comparison.temporal_safest.damage_taken>=0.0);
            CHECK(comparison.temporal_escape.damage_taken>=0.0);
            CHECK(comparison.original_mpc.damage_dealt>=0);
            CHECK(comparison.temporal_safest.damage_dealt>=0);
            CHECK(comparison.temporal_escape.damage_dealt>=0);
            CHECK(comparison.temporal_safest.fallbacks>=0);
            CHECK(comparison.temporal_escape.fallbacks>=0);
        }
        const auto second=run_counterfactual_policy_validation(config);
        CHECK(second.valid);
        CHECK(second.runs==report.runs);
        for(size_t i=0;i<report.comparisons.size();++i) {
            const auto& a=report.comparisons[i];
            const auto& b=second.comparisons[i];
            CHECK(a.original_mpc.frames==b.original_mpc.frames);
            CHECK(a.temporal_safest.frames==b.temporal_safest.frames);
            CHECK(a.temporal_escape.frames==b.temporal_escape.frames);
            CHECK(std::abs(a.original_mpc.damage_taken-
                b.original_mpc.damage_taken)<1e-9);
            CHECK(a.original_mpc.damage_dealt==b.original_mpc.damage_dealt);
            CHECK(a.temporal_escape.damage_dealt==
                b.temporal_escape.damage_dealt);
            CHECK(a.temporal_escape.fallbacks==b.temporal_escape.fallbacks);
        }
    });
    test("movement intent holds a quiet room and preserves MPC fire",[]{
        auto f=frame();
        f.player.body.pos={320,280};
        Decision decision;
        decision.valid=true;
        decision.move=Move::east;
        decision.fire=Fire::right;
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        MovementIntentEvaluator evaluator;
        MovementIntentInput input;
        input.frame=&f;
        input.decision=&decision;
        input.snapshot=&snapshot;
        auto evaluation=evaluator.evaluate(input);
        CHECK(evaluation.intent==MovementIntent::hold);
        CHECK(evaluation.requested_move==Move::stay);
        MovementStabilizer stabilizer;
        evaluation=stabilizer.stabilize(f,evaluation,false);
        CHECK(evaluation.executed_move==Move::stay);
        CHECK(decision.fire==Fire::right);
        CHECK(decision.move==Move::east); // only the caller applies the move
    });
    test("movement stabilizer rejects small opposite direction changes",[]{
        auto f=frame();
        f.player.body.pos={320,280};
        MovementStabilizer stabilizer;
        MovementIntentEvaluation evaluation;
        evaluation.intent=MovementIntent::reposition;
        evaluation.requested_move=Move::east;
        evaluation.predicted_movement_benefit=20.0;
        auto first=stabilizer.stabilize(f,evaluation,false);
        CHECK(first.executed_move==Move::east);
        for(int i=0;i<8;++i) {
            evaluation.requested_move=Move::east;
            evaluation.predicted_movement_benefit=20.0;
            first=stabilizer.stabilize(f,evaluation,false);
        }
        evaluation.requested_move=Move::west;
        evaluation.predicted_movement_benefit=2.0;
        auto weak=stabilizer.stabilize(f,evaluation,false);
        CHECK(weak.executed_move==Move::east);
        CHECK(weak.movement_suppressed);
        CHECK(weak.suppression_reason=="opposite-switch-margin");
        evaluation.requested_move=Move::west;
        evaluation.predicted_movement_benefit=50.0;
        auto strong=stabilizer.stabilize(f,evaluation,false);
        CHECK(strong.executed_move==Move::west);
        CHECK(strong.direction_switch_count>0);
    });
    test("movement escape bypasses the stabilizer and clears the lock",[]{
        auto f=frame();
        f.player.body.pos={320,280};
        MovementStabilizer stabilizer;
        MovementIntentEvaluation evaluation;
        evaluation.intent=MovementIntent::reposition;
        evaluation.requested_move=Move::east;
        evaluation.predicted_movement_benefit=20.0;
        stabilizer.stabilize(f,evaluation,false);
        evaluation.intent=MovementIntent::escape;
        evaluation.requested_move=Move::west;
        evaluation.predicted_movement_benefit=100.0;
        auto escaped=stabilizer.stabilize(f,evaluation,true);
        CHECK(escaped.executed_move==Move::west);
        CHECK(escaped.suppression_reason=="escape-bypass");
        evaluation.intent=MovementIntent::hold;
        evaluation.requested_move=Move::stay;
        (void)stabilizer.stabilize(f,evaluation,false);
        evaluation.intent=MovementIntent::reposition;
        evaluation.requested_move=Move::east;
        evaluation.predicted_movement_benefit=20.0;
        auto replanned=stabilizer.stabilize(f,evaluation,false);
        CHECK(replanned.executed_move==Move::east);
        CHECK(replanned.suppression_reason=="lock");
    });
    test("movement intent detects a warning laser before activation",[]{
        auto f=frame();
        f.player.body.pos={320,280};
        auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        snapshot.hazards.push_back(temporal_hazard_state({340,280},8,0.2,0.4));
        Decision decision;
        decision.valid=true;
        decision.move=Move::stay;
        MovementIntentEvaluator evaluator;
        MovementIntentInput input;
        input.frame=&f;
        input.decision=&decision;
        input.snapshot=&snapshot;
        const auto evaluation=evaluator.evaluate(input);
        CHECK(evaluation.intent==MovementIntent::preemptive_dodge);
        CHECK(evaluation.requested_move!=Move::stay);
        CHECK(!evaluation.danger_now);
    });
    test("movement intent escapes an immediate projectile collision",[]{
        auto f=frame();
        f.player.body.pos={320,280};
        auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ProjectileState projectile;
        projectile.entity.type=9;
        projectile.entity.address=0x510001;
        projectile.entity.exists=true;
        projectile.entity.active=true;
        projectile.entity.pos=f.player.body.pos;
        projectile.entity.vel={0,0};
        projectile.entity.radius=8;
        projectile.entity.damage=1;
        projectile.entity.collision=1;
        // Native damage allows heights above -50. Do not treat every negative
        // height as a harmless ground projectile.
        projectile.entity.height=-25;
        projectile.entity.height_known=true;
        projectile.entity.projectile_flags=0;
        projectile.role=ProjectileRole::hostile;
        projectile.real=true;
        snapshot.projectiles.push_back(projectile);
        Decision decision;
        decision.valid=true;
        decision.move=Move::stay;
        MovementIntentEvaluator evaluator;
        MovementIntentInput input;
        input.frame=&f;
        input.decision=&decision;
        input.snapshot=&snapshot;
        const auto evaluation=evaluator.evaluate(input);
        CHECK(evaluation.intent==MovementIntent::escape);
        CHECK(evaluation.danger_now);
        CHECK(evaluation.requested_move!=Move::stay);
        CHECK(evaluator.requires_escape(input));
    });
    test("movement intent preempts a charging enemy",[]{
        auto f=frame();
        f.player.body.pos={320,280};
        auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        EnemyState enemy;
        enemy.entity.type=10;
        enemy.entity.address=0x310001;
        enemy.entity.exists=true;
        enemy.entity.active=true;
        enemy.entity.pos={400,280};
        enemy.entity.vel={0,0};
        enemy.entity.radius=16;
        enemy.entity.damage=1;
        enemy.entity.collision=2;
        EnemyIntent intent;
        intent.enemy_id=enemy.entity.address;
        intent.primitive=AttackPrimitive::charge;
        intent.trigger_time=0.15;
        intent.length=220;
        intent.can_instantiate=true;
        intent.evidence=AttackEvidence::verified;
        enemy.intents.push_back(intent);
        snapshot.enemies.push_back(enemy);
        Decision decision;
        decision.valid=true;
        decision.move=Move::stay;
        MovementIntentEvaluator evaluator;
        MovementIntentInput input;
        input.frame=&f;
        input.decision=&decision;
        input.snapshot=&snapshot;
        const auto evaluation=evaluator.evaluate(input);
        CHECK(evaluation.intent==MovementIntent::preemptive_dodge);
        CHECK(evaluation.requested_move!=Move::stay);
    });
    test("movement intent allows a tactical reposition",[]{
        auto f=frame();
        f.player.body.pos={320,280};
        f.entities={enemy({500,280},{0,0})};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        Decision decision;
        decision.valid=true;
        decision.move=Move::stay;
        MpcPlan plan;
        plan.available=true;
        plan.safety.evaluated=true;
        plan.safety.safe=true;
        plan.safety.min_clearance=20;
        plan.safety.reachable_area=0.40;
        plan.safety.escape_directions=3;
        plan.safety.maneuverability=0.2;
        plan.combat.valid=true;
        plan.combat.target_in_range=false;
        plan.combat.target_line_clear=false;
        plan.combat.target_distance=300;
        plan.combat.objective.attack_reachability=0.10;
        plan.combat.objective.attack_opportunity=0.10;
        plan.combat.objective.target_position_gain=0.10;
        plan.combat.objective.exposure_cost=0.50;
        plan.combat.objective.need_reposition=true;
        MpcCandidateSummary candidate;
        candidate.action=SimAction{Move::east,Fire::right,true};
        candidate.branch.valid=true;
        candidate.branch.attack_reachability=0.90;
        candidate.branch.attack_opportunity=0.90;
        candidate.branch.target_distance=150;
        candidate.branch.positioning=0.90;
        candidate.branch.exposure=0.10;
        candidate.branch.need_reposition=true;
        candidate.safety.evaluated=true;
        candidate.safety.safe=true;
        candidate.safety.min_clearance=60;
        candidate.safety.reachable_area=0.70;
        candidate.safety.escape_directions=6;
        candidate.safety.maneuverability=0.5;
        plan.candidates.push_back(candidate);
        MovementIntentEvaluator evaluator;
        MovementIntentInput input;
        input.frame=&f;
        input.decision=&decision;
        input.plan=&plan;
        input.snapshot=&snapshot;
        const auto evaluation=evaluator.evaluate(input);
        CHECK(evaluation.intent==MovementIntent::reposition);
        CHECK(evaluation.requested_move==Move::east);
        CHECK(evaluation.predicted_movement_benefit>0.0);
    });
    test("movement evaluator reuses the temporal escape selection",[]{
        auto f=frame();
        const auto reachability=reachability_of(f,reachability_config(9,3,3,9));
        CHECK(reachability.valid);
        MovementIntentEvaluator evaluator;
        MovementIntentEvaluation evaluation;
        CHECK(evaluator.apply_temporal_escape(reachability,evaluation));
        CHECK(evaluation.intent==MovementIntent::escape);
        CHECK(evaluation.temporal_escape_used);
        CHECK(evaluation.reason=="temporal-escape");
    });
    test("temporal path and branch capture performance is measured",[]{
        auto base=simulation_world(frame());
        const auto frames=temporal_sequence(base,96,[&](SimWorld& world,int frame){
            world.projectiles={temporal_projectile(
                {120.0+double(frame)*8.0,200.0},{80,0},51)};
            world.enemies={safety_enemy(
                {320.0+double(frame)*2.0,280.0},52)};
        });
        TemporalDangerConfig config;
        config.slice_frames=6;
        config.max_slices=16;
        const auto danger=build_temporal_danger(frames,config);
        std::vector<TemporalTrajectorySample> samples;
        for(int frame=0;frame<96;++frame)
            samples.push_back(temporal_sample(frame,
                {120.0+double(frame)*4.0,280.0}));
        double path_total=0;
        for(int run=0;run<200;++run) {
            const auto started=std::chrono::steady_clock::now();
            const auto assessment=assess_temporal_path(danger,samples);
            path_total+=std::chrono::duration<double,std::milli>(
                std::chrono::steady_clock::now()-started).count();
            CHECK(assessment.evaluated);
        }

        auto f=frame();
        f.player.health=6;
        auto e=enemy({500,280},{120,0});
        e.collision=2;
        f.entities={e};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig sim;
        sim.horizon_frames=60;
        sim.early_terminate=false;
        sim.danger_map=false;
        ForwardSimulator root(sim);
        std::string error;
        CHECK(root.restore(snapshot,&error));
        TemporalDangerConfig branch_config;
        branch_config.slice_frames=6;
        branch_config.max_slices=16;
        const std::vector<SimActionSegment> plan{{
            SimAction{Move::east,Fire::none,false},60}};
        double branch_total=0;
        size_t branch_bytes=0;
        size_t branch_samples=0;
        for(int run=0;run<10;++run) {
            const auto started=std::chrono::steady_clock::now();
            const auto trajectory=capture_temporal_trajectory(root,plan,branch_config);
            const auto assessment=assess_temporal_trajectory(trajectory);
            branch_total+=std::chrono::duration<double,std::milli>(
                std::chrono::steady_clock::now()-started).count();
            CHECK(assessment.evaluated);
            branch_bytes=trajectory.danger.static_blocked.size()+
                sizeof(Grid)+
                trajectory.danger.static_grid.cells.size()*sizeof(Cell)+
                trajectory.danger.slices.size()*
                    size_t(trajectory.danger.cell_count()*3)+
                trajectory.samples.size()*sizeof(TemporalTrajectorySample);
            branch_samples=trajectory.samples.size();
        }
        const double path_ms=path_total/200.0;
        const double branch_ms=branch_total/10.0;
        std::cout<<"temporal_path_assess_ms="<<path_ms
                 <<" temporal_branch_capture_ms="<<branch_ms
                 <<" temporal_branch_bytes="<<branch_bytes
                 <<" temporal_branch_samples="<<branch_samples<<'\n';
        CHECK(path_ms<50.0);
        CHECK(branch_ms<200.0);
    });
    test("recovered curve and orbit motion use native formulas",[]{
        auto f=frame();
        ProjectileMotionContext context;
        context.grid=&f.grid;
        context.room_type=0;
        context.clock=100;
        context.player_pos=f.player.body.pos;
        context.player_vel={0,0};
        context.player=&f.player.body;
        std::vector<Entity> entities;
        context.lookup_user=&entities;
        context.lookup=[](const void* user,uint32_t address)->const Entity* {
            const auto* list=static_cast<const std::vector<Entity>*>(user);
            for(const auto& entity:*list)if(entity.address==address)return &entity;
            return nullptr;
        };
        auto make_state=[](const Entity& e) {
            ProjectileMotionState state;
            state.entity=e;
            state.pos=e.pos;
            state.vel=e.vel;
            state.height=e.height;
            state.falling=0;
            return state;
        };
        auto curve=bullet({420,280},{300,0});
        curve.friction=1;curve.speed_multiplier=1;
        curve.projectile_flags=1ULL<<19; // CURVE_RIGHT
        curve.projectile_curve=0.5;
        curve.height_known=false;
        auto curve_state=make_state(curve);
        CHECK(advance_projectile(curve_state,context,1));
        CHECK(std::abs(curve_state.vel.norm()-300.0)<1.0);
        CHECK(curve_state.vel.y>0.0);
        auto orbit=bullet({420,280},{0,120});
        orbit.friction=1;orbit.speed_multiplier=1;
        orbit.projectile_flags=1ULL<<11; // ORBIT_CW
        orbit.projectile_orbit_distance=100;
        orbit.target_pos={320,280};
        orbit.height_known=false;
        auto orbit_state=make_state(orbit);
        CHECK(advance_projectile(orbit_state,context,1));
        CHECK(orbit_state.vel.y>0.0);
        orbit.projectile_flags=1ULL<<12; // ORBIT_CCW
        auto reverse_state=make_state(orbit);
        CHECK(advance_projectile(reverse_state,context,1));
        CHECK(reverse_state.vel.y<0.0);
    });
    test("special projectile change fields use the recovered multi-stage model",[]{
        auto f=frame();
        auto b=bullet({500,280},{60,0});
        b.projectile_flags=1ULL<<33;
        b.projectile_change_flags=1;
        b.projectile_change_timeout=2;
        b.projectile_change_velocity=4;
        f.entities={b};
        const auto root=WorldStateBridge::snapshot(f,nullptr,nullptr);
        CHECK(root.projectiles.size()==1);
        ForwardSimConfig config;
        config.horizon_frames=6;
        config.danger_map=true;
        ForwardSimulator simulator(config);
        std::string error;
        CHECK(simulator.restore(root,&error));
        const SimWorld before=simulator.world();
        CHECK(before.projectiles.size()==1);
        CHECK(before.projectiles[0].native_special);
        CHECK(!before.projectiles[0].maneuver_uncertain);
        CHECK(before.projectiles[0].maneuver_kind.find("multi-stage")!=std::string::npos);
        simulator.step(SimAction{},6);
        const SimWorld after=simulator.world();
        CHECK(after.projectiles.size()==1);
        CHECK(after.projectiles[0].maneuver_uncertainty==0.0);
        CHECK(std::abs(after.projectiles[0].vel.norm()-120.0)<1.0);
        CHECK((after.projectiles[0].native.projectile_flags&(1ULL<<33))==0);
        const auto score=simulator.score();
        CHECK(score.special_projectiles>=1);
        CHECK(score.uncertain_maneuvers==0);
    });
    test("unmodelled projectile motion keeps the uncertainty envelope",[]{
        auto f=frame();
        auto b=bullet({500,280},{120,0});
        b.projectile_flags=1ULL<<6; // BOOMERANG
        f.entities={b};
        const auto root=WorldStateBridge::snapshot(f,nullptr,nullptr);
        ForwardSimConfig config;
        config.horizon_frames=6;
        ForwardSimulator simulator(config);
        std::string error;
        CHECK(simulator.restore(root,&error));
        CHECK(simulator.world().projectiles[0].maneuver_uncertain);
        CHECK(simulator.world().projectiles[0].maneuver_kind.find("unmodelled")!=std::string::npos);
        simulator.step(SimAction{},6);
        CHECK(simulator.world().projectiles[0].maneuver_uncertainty>0.0);
    });
    test("mpc emergency ranking is used when every first action takes damage",[]{
        auto f=frame();
        auto b=bullet({320,280},{0,0});
        b.radius=40;
        b.damage=1;
        f.entities={b};
        LookaheadConfig look;
        look.epochs=1;
        look.epoch_frames=6;
        look.simulation_horizon_frames=6;
        look.simulation_branches=2;
        MpcConfig config;
        config.horizon_frames=18;
        config.segment_frames=6;
        config.beam_width=3;
        config.min_beam_width=2;
        config.max_beam_width=4;
        config.root_candidates=12;
        config.full_root_actions=false;
        config.max_simulations=64;
        config.time_budget_ms=200;
        config.safety.collision_horizon_frames=6;
        MpcCombatPlanner planner(config,look);
        const auto plan=planner.decide(f,true,nullptr);
        CHECK(plan.available);
        CHECK(plan.emergency);
        CHECK(plan.stats.emergency);
        CHECK(plan.decision.strategy_mode=="Emergency");
        CHECK(plan.decision.reason.find("emergency-escape")!=std::string::npos);
    });
    test("damage-aware tier B keeps the minimum-risk combat set when no safe action exists",[]{
        auto f=frame();
        auto b=bullet({320,280},{0,0});b.radius=40;b.damage=1;
        auto e=enemy({500,280});e.collision=0;e.hp=20;
        f.entities={b,e};
        LookaheadConfig look;look.epochs=1;look.epoch_frames=6;
        look.simulation_horizon_frames=6;look.simulation_branches=2;
        MpcConfig config;config.horizon_frames=18;config.segment_frames=6;
        config.beam_width=3;config.min_beam_width=2;config.max_beam_width=4;
        config.root_candidates=12;config.full_root_actions=false;
        config.max_simulations=64;config.time_budget_ms=200;
        config.safety.collision_horizon_frames=6;
        config.damage_aware_arbitration=true;
        config.tier_b_damage_tolerance=0.25;
        MpcCombatPlanner planner(config,look);
        const auto plan=planner.decide(f,true,nullptr);
        CHECK(plan.available);
        CHECK(plan.stats.tier_b_used);
        CHECK(plan.stats.tier_b_candidates>0);
        CHECK(plan.stats.tier_b_min_damage>=0);
        CHECK(plan.arbitration.value("tier_b_used",false));
        CHECK(plan.to_json().at("arbitration").contains("tier_b_min_damage"));
        CHECK(plan.sequence.damage_aware);
        CHECK(plan.sequence.combat_value>0);
    });
    test("mpc review reports direction reversals boundary dwell and overlay error",[]{
        std::vector<json> records;
        auto record=[&](uint32_t clock,int move,double boundary,bool emergency,
                        bool safe) {
            json row;
            row["clock"]=clock;
            row["mpc"]={{"first",{{"move",move},{"fire",0}}},
                {"safety",{{"safe",safe},{"in_danger",emergency},
                    {"maneuverability",safe?0.8:0.2},
                    {"boundary_clearance",boundary}}},
                {"emergency",emergency}};
            return row;
        };
        records.push_back(record(100,3,120,false,true));
        records.push_back(record(101,3,120,false,true));
        records.push_back(record(102,7,10,true,false));
        auto overlay=record(103,7,100,false,true);
        overlay["closed_loop"]={{"prediction",{{"overlay_valid",true},
            {"predicted_player",{320,280}},{"actual_player",{323,284}}}}};
        records.push_back(overlay);
        const auto review=analyze_mpc_session_records(records);
        CHECK(review.frames==4);
        CHECK(review.valid_frames==4);
        CHECK(review.direction_switches==1);
        CHECK(review.reversals==1);
        CHECK(review.boundary_frames==1);
        CHECK(review.emergency_frames==1);
        CHECK(review.safety_failures==1);
        CHECK(review.mean_prediction_error>4.9);
        CHECK(review.to_json()["timeline"].size()==4);
    });
    test("prediction monitor matches a consistent future and flags a mismatch",[]{
        auto f=frame();f.player.health=6;
        auto e=enemy({500,280});e.collision=0;e.vel={0,0};e.state=0;e.hp=10;
        f.entities={e};
        const auto root=WorldStateBridge::snapshot(f,nullptr,nullptr);
        PredictionMonitorConfig config;config.actual_hz=30;config.dt=1.0/60;
        config.smoothing=0;config.fallback_threshold=0.20;config.warn_threshold=0.05;
        config.trust_smoothing=1.0;config.low_trust_threshold=0.50;
        const auto dump_dir=std::filesystem::current_path()/"gamebot-prediction-failures";
        std::filesystem::remove_all(dump_dir);
        config.dump_failures=true;config.dump_directory=dump_dir;
        config.dump_cooldown_clock=0;
        PredictionErrorMonitor monitor(config);
        const std::vector<SimActionSegment> plan{
            {SimAction{Move::stay,Fire::none,false},6}};
        const auto trace=monitor.capture(root,plan,12);
        CHECK(trace.valid);
        CHECK(trace.frames.size()==6);
        monitor.store(trace);
        f.clock+=1;
        const auto expected=monitor.observe(WorldStateBridge::snapshot(f,nullptr,nullptr));
        CHECK(expected.valid);
        CHECK(!expected.high_error);
        CHECK(!expected.fallback);
        CHECK(std::isfinite(expected.reader_error));
        CHECK(std::isfinite(expected.time_sync_error));
        CHECK(std::isfinite(expected.model_error));
        f.clock+=1;f.player.health=4;
        auto moved=enemy({700,280});moved.address=e.address;moved.seed=e.seed;
        moved.collision=0;moved.vel={0,0};moved.state=7;moved.hp=10;
        f.entities={moved};
        const auto mismatch=monitor.observe(WorldStateBridge::snapshot(f,nullptr,nullptr));
        CHECK(mismatch.valid);
        CHECK(mismatch.high_error);
        CHECK(mismatch.fallback);
        CHECK(mismatch.health_delta>0);
        CHECK(mismatch.player_position_error.norm()>=0);
        CHECK(!mismatch.sources.empty());
        CHECK(mismatch.sources.front().low_trust);
        CHECK(!mismatch.low_trust_sources.empty());
        CHECK(!mismatch.dump_path.empty());
        CHECK(std::filesystem::exists(mismatch.dump_path));
        std::filesystem::remove_all(dump_dir);
    });
    test("closed loop applies prediction feedback and falls back to joint planning",[]{
        auto f=frame();f.player.health=6;
        auto e=enemy({500,280});e.hp=10;e.collision=0;e.vel={0,0};f.entities={e};
        LookaheadConfig look;look.epochs=1;look.epoch_frames=6;
        look.simulation_horizon_frames=6;look.simulation_branches=2;
        MpcConfig config;config.horizon_frames=24;config.segment_frames=6;
        config.beam_width=2;config.root_candidates=8;config.full_root_actions=false;
        config.max_simulations=24;config.time_budget_ms=60;
        ClosedLoopConfig loop;loop.dump_failures=false;loop.actual_hz=30;loop.dt=1.0/60;
        RealtimeMpcController controller(config,look,loop);
        PredictionMonitorConfig monitor;monitor.actual_hz=30;monitor.dt=1.0/60;
        monitor.smoothing=0;monitor.fallback_threshold=0.20;
        monitor.warn_threshold=0.05;monitor.dump_failures=false;
        controller.set_monitor_config(monitor);
        const auto first=controller.step(f,true,nullptr);
        CHECK(first.mpc_active);
        CHECK(first.decision.valid);
        CHECK(!first.report.valid);
        CHECK(!first.plan.sequence.segments.empty());
        f.clock+=1;
        const auto second=controller.step(f,true,nullptr);
        CHECK(second.report.valid);
        CHECK(!second.safety_stop);
        f.clock+=1;f.player.health=4;
        auto moved=enemy({700,280});moved.address=e.address;moved.seed=e.seed;
        moved.collision=0;moved.vel={0,0};moved.hp=10;
        f.entities={moved};
        const auto third=controller.step(f,true,nullptr);
        CHECK(third.report.high_error);
        CHECK(third.feedback.fallback);
        CHECK(third.plan.used_fallback);
        CHECK(third.plan.stats.feedback_fallback);
    });
    test("discovery candidates compile to a loadable runtime pattern rule",[]{
        MechanismCandidate candidate;
        candidate.identity="999.0.0";candidate.primitive="aimed_projectile";
        candidate.state="4";candidate.animation="Shoot";
        candidate.evidence_status="inferred";candidate.samples=4;
        candidate.confidence=0.7;candidate.source_refs="synthetic";
        candidate.timing={{"trigger_frame",12},{"speed",180},{"duration_frames",20}};
        candidate.geometry={{"count",1},{"radius",5}};
        const auto compiled=MechanismModelCompiler::compile(candidate);
        CHECK(compiled.loadable);
        CHECK(compiled.pattern_rule.value("target_identity",std::string{})=="999.0.0");
        CHECK(compiled.runtime_model.value("format",std::string{})==
            "isaac-gamebot-monster-geometry-patterns-v1");
        const auto path=std::filesystem::current_path()/"discovered-patterns-test.json";
        std::ofstream out{path};out<<compiled.runtime_model.dump(2)<<'\n';out.close();
        MechanismSemantics semantics;
        CHECK(semantics.load(semantics_path()));
        CHECK(semantics.load_discovered_patterns(path,true,nullptr));
        bool found=false;
        for(const auto& model:semantics.geometry_inventory())
            if(model.id.find("999.0.0|discovered")!=std::string::npos)found=true;
        CHECK(found);
        std::filesystem::remove(path);
    });
    test("mpc feedback shortens horizon and expands unknown hazards",[]{
        MpcConfig config;config.horizon_frames=120;config.min_horizon_frames=24;
        MpcCombatPlanner planner(config);
        PredictionFeedback feedback;feedback.horizon_scale=0.50;
        feedback.unknown_radius_scale=2.0;feedback.fallback=true;
        planner.apply_feedback(feedback);
        CHECK(planner.horizon_frames()==60);
        CHECK(std::abs(planner.unknown_radius_scale()-2.0)<1e-9);
        CHECK(planner.forced_fallback());
        planner.clear_feedback();
        CHECK(planner.horizon_frames()==120);
        CHECK(std::abs(planner.unknown_radius_scale()-1.0)<1e-9);
        CHECK(!planner.forced_fallback());
    });
    test("runtime performance summary reports percentiles and fallback counts",[]{
        RuntimePerformanceMonitor monitor;
        FramePerformance sample;
        sample.reader_ms=1;sample.bridge_ms=2;sample.monitor_ms=3;
        sample.mpc_ms=4;sample.action_ms=5;sample.total_ms=15;
        for(int i=0;i<100;++i) {
            sample.reader_ms=double(i);
            sample.total_ms=double(i);
            sample.timed_out=i%20==0;
            sample.fallback=i%25==0;
            monitor.observe(sample);
        }
        const auto summary=monitor.summary();
        CHECK(summary.samples==100);
        CHECK(summary.reader.p50>=49&&summary.reader.p50<=50);
        CHECK(summary.reader.p95>=94&&summary.reader.p95<=96);
        CHECK(summary.reader.p99>=98);
        CHECK(summary.timeouts==5);
        CHECK(summary.fallbacks==4);
        CHECK(summary.to_json().contains("total_ms"));
    });
    test("failure analyzer correlates prediction errors by identity and mechanism",[]{
        json report=json::object();
        report["valid"]=true;
        report["error_score"]=0.70;
        report["high_error"]=true;
        report["fallback"]=true;
        report["health_delta"]=1;
        report["predicted_damage_cause"]="projectile";
        report["predicted_damage_source"]=0x30000;
        report["sources"]=json::array({
            {{"id",0x30000},{"type",10},{"variant",0},{"subtype",0},
             {"samples",3},{"position",0.8},{"velocity",0.4},
             {"hp",0.2},{"state",1.0},{"boss_phase",0.0}}});
        FailureAnalyzer analyzer;
        analyzer.observe_report(report,100,"synthetic-log");
        analyzer.observe_report(report,101,"synthetic-log");
        const auto result=analyzer.finish();
        CHECK(!result.findings.empty());
        CHECK(result.reports==2);
        CHECK(result.high_error_reports==2);
        bool state=false,motion=false,damage=false;
        for(const auto& finding:result.findings) {
            if(finding.identity=="10.0.0"&&finding.kind==FailureKind::state_transition)
                state=true;
            if(finding.identity=="10.0.0"&&finding.kind==FailureKind::enemy_movement)
                motion=true;
            if(finding.kind==FailureKind::damage_prediction)damage=true;
        }
        CHECK(state);
        CHECK(motion);
        CHECK(damage);
        CHECK(result.by_kind.count("state_transition")==1);
        CHECK(result.to_json().contains("findings"));
    });
    test("discovery pipeline discovers behavior, compiles candidates and versions the library",[]{
        const auto directory=std::filesystem::current_path()/"gamebot-discovery-test";
        std::filesystem::remove_all(directory);
        std::filesystem::create_directories(directory/"logs");
        auto f=frame();f.player.health=6;f.player.body.pos={320,280};
        auto e=enemy({500,280});e.collision=0;e.hp=10;e.vel={};e.state=4;
        e.animation="Shoot";e.animation_frame=4;e.animation_playing=true;
        e.animation_speed=1;e.speed_multiplier=1;
        auto projectile=bullet({490,280},{-200,0});
        projectile.spawner=e.address;projectile.parent=e.address;
        auto projectile2=bullet({490,280},{-200,0});
        projectile2.address=0x50001;projectile2.spawner=e.address;
        projectile2.parent=e.address;
        auto projectile3=bullet({490,280},{-200,0});
        projectile3.address=0x50002;projectile3.spawner=e.address;
        projectile3.parent=e.address;
        std::filesystem::create_directories(directory/"references");
        std::ofstream reference{directory/"references"/"gamebot_phase4_timing.json"};
        reference<<json{{"timings",{{"10.0.0:4:Shoot",
            {{"trigger_animation_frame",8},{"timing_verified",true},
             {"source","synthetic-decompiled-reference"}}}}}}.dump(2);
        reference.close();
        std::ofstream log{directory/"logs"/"frames.jsonl"};
        for(int clock=100;clock<107;++clock) {
            f.clock=uint32_t(clock);
            if(clock==101)e.state=8;
            if(clock==102)e.state=4;
            f.entities={e};
            if(clock>=102)f.entities.push_back(projectile);
            if(clock>=104)f.entities.push_back(projectile2);
            if(clock>=105)f.entities.push_back(projectile3);
            log<<json{{"frame",f}}.dump()<<'\n';
        }
        log.close();
        json failure{{"clock",100},{"report",{{"valid",true},
            {"error_score",0.8},{"high_error",true},{"fallback",true},
            {"sources",json::array({{{"id",0x30000},{"type",10},
                {"variant",0},{"subtype",0},{"position",0.9},
                {"state",1.0},{"samples",2}}})}}}};
        std::ofstream failure_file{directory/"logs"/"failure.json"};
        failure_file<<failure.dump(2)<<'\n';failure_file.close();
        MechanismReferenceIndex loaded_refs;
        CHECK(MechanismReferenceLoader::load(directory/"references",loaded_refs,nullptr));
        CHECK(!loaded_refs.references.empty());
        CHECK(!loaded_refs.find("10.0.0",4,"Shoot").empty());
        DiscoveryConfig config;
        config.reference_directory=directory/"references";
        config.library_directory=directory/"library";
        config.write_library=true;
        DiscoveryPipeline pipeline(config);
        const auto result=pipeline.run(directory/"logs");
        CHECK(result.failure.findings.size()>0);
        CHECK(!result.behavior.profiles.empty());
        CHECK(result.behavior.attacks>=2);
        CHECK(result.behavior.transitions>0);
        CHECK(result.clustering.clusters>=1);
        CHECK(result.formulas.formulas>=1);
        bool promotable=false;
        for(const auto& formula:result.formulas.items)
            promotable|=formula.can_promote_verified;
        CHECK(promotable);
        bool referenced=false;
        for(const auto& formula:result.formulas.items)
            referenced|=!formula.source_refs.empty();
        CHECK(referenced);
        CHECK(!result.candidates.empty());
        CHECK(!result.compiled.empty());
        CHECK(result.compiled.front().pattern_rule.contains("target_identity"));
        CHECK(result.update.success);
        CHECK(result.update.new_version>=1);
        CHECK(std::filesystem::exists(directory/"library"/"current.json"));
        auto library=MechanismLibrary::load(directory/"library"/"current.json",nullptr);
        CHECK(bool(library));
        CHECK(library->version>=1);
        MechanismLibraryUpdater updater({},directory/"library");
        std::string error;
        auto rolled=updater.rollback(result.update.new_version,&error);
        CHECK(bool(rolled));
        CHECK(rolled->version==result.update.new_version);
        auto compiled=MechanismModelCompiler::compile(result.candidates.front());
        CHECK(compiled.pattern_rule.contains("pattern"));
        std::filesystem::remove_all(directory);
    });

    test("projectile motion models join the mechanism library version chain",[]{
        const auto directory=std::filesystem::current_path()/
            "gamebot-projectile-library-test";
        std::error_code ignored;
        std::filesystem::remove_all(directory,ignored);
        std::filesystem::create_directories(directory,ignored);
        const auto models=directory/"projectile_motion_models.json";
        auto write=[&](int version,bool extra) {
            json rows=json::array();
            rows.push_back({{"id","projectile-curve-left-right"},
                {"status","inferred"},{"runtime_loadable",false}});
            if(extra)rows.push_back({{"id","projectile-orbit-cw-ccw"},
                {"status","inferred"},{"runtime_loadable",false}});
            json value{{"format","isaac-gamebot-projectile-motion-v1"},
                {"version",version},{"models",rows}};
            std::ofstream out{models};
            out<<value.dump(2)<<'\n';
            out.close();
            if(!out)throw std::runtime_error("cannot write "+models.string());
        };
        write(1,false);
        MechanismLibrary library;
        MechanismLibraryUpdater updater({},directory);
        const auto first=updater.update_projectile_models(library,models,"test import");
        CHECK(first.success);
        CHECK(first.new_version==1);
        CHECK(first.diff.projectile_models_status=="added");
        auto current=MechanismLibrary::load(directory/"current.json");
        CHECK(bool(current));
        CHECK(current->projectile_models.value("version",0)==1);
        auto index=projectile_motion_model_index(*current);
        CHECK(index["model_count"]==1);
        write(2,true);
        const auto second=updater.update_projectile_models(*current,models,"test update");
        CHECK(second.success);
        CHECK(second.new_version==2);
        CHECK(second.diff.projectile_models_status=="updated");
        auto old_library=MechanismLibrary::load(directory/"library-v1.json");
        auto new_library=MechanismLibrary::load(directory/"library-v2.json");
        CHECK(bool(old_library));
        CHECK(bool(new_library));
        const auto diff=compare_mechanism_libraries(*old_library,*new_library);
        CHECK(diff.projectile_models_status=="updated");
        auto rolled=updater.rollback(1);
        CHECK(bool(rolled));
        CHECK(rolled->version==1);
        auto reloaded=MechanismLibrary::load(directory/"current.json");
        CHECK(bool(reloaded));
        CHECK(reloaded->version==1);
        const auto reloaded_index=projectile_motion_model_index(*reloaded);
        CHECK(reloaded_index["model_count"]==1);
        std::filesystem::remove_all(directory,ignored);
    });

    test("combat scenario classifier derives tags from observed state, not a type table",[]{
        auto f=frame();f.player.health=6;
        auto e=enemy({520,280});e.collision=0;f.entities={e};
        const auto base_snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        CombatScenarioClassifier classifier;
        const auto plain=classifier.classify(base_snapshot);
        CHECK(plain.has(ScenarioTag::normal_room));
        CHECK(!plain.has(ScenarioTag::dense_projectiles));

        // Dense projectiles from several directions. No entity type is used by
        // the classifier; only the observed projectile geometry matters.
        auto dense_frame=frame();dense_frame.player.health=6;
        std::vector<Entity> bullets;
        for(int i=0;i<16;++i) {
            const double angle=double(i)*2.0*3.14159265358979323846/16.0;
            const Vec pos{320.0+std::cos(angle)*150.0,280.0+std::sin(angle)*150.0};
            auto b=bullet(pos,Vec{-std::cos(angle)*120.0,-std::sin(angle)*120.0});
            b.address=0x50000+uint32_t(i);
            bullets.push_back(b);
        }
        dense_frame.entities=bullets;
        const auto dense_snapshot=WorldStateBridge::snapshot(dense_frame,nullptr,nullptr);
        const auto dense=classifier.classify(dense_snapshot);
        CHECK(dense.has(ScenarioTag::dense_projectiles));
        CHECK(dense.has(ScenarioTag::multi_direction_pressure));
        CHECK(dense.features.attack_directions>=3);

        // Boss and unknown tags come from flags/mechanism evidence.
        auto boss_frame=frame();
        auto boss=enemy({520,280});boss.is_boss=true;boss.collision=0;
        boss_frame.entities={boss};
        const auto boss_snapshot=WorldStateBridge::snapshot(boss_frame,nullptr,nullptr);
        CHECK(classifier.classify(boss_snapshot).has(ScenarioTag::boss_combat));

        auto unknown_frame=frame();unknown_frame.player.health=1;
        auto u1=enemy({460,240});u1.collision=0;auto u2=u1;u2.address=0x30001;
        u2.pos={460,320};unknown_frame.entities={u1,u2};
        auto unknown_snapshot=WorldStateBridge::snapshot(unknown_frame,nullptr,nullptr);
        for(auto& state:unknown_snapshot.enemies) {
            state.mechanism_known=false;
            state.unknown_mechanism=true;
        }
        const auto unknown=classifier.classify(unknown_snapshot);
        CHECK(unknown.has(ScenarioTag::unknown_high_risk));
        CHECK(unknown.features.low_hp);
    });
    test("strategy parameters cannot weaken a hard safety limit or grow the MPC",[]{
        MpcConfig base;
        base.horizon_frames=96;base.beam_width=8;base.root_candidates=45;
        base.safety.collision_horizon_frames=18;
        base.safety.clearance_radius=96;
        base.emergency_escape=true;base.hard_safety_gate=true;
        StrategyParameters parameters;
        parameters.maneuver_weight=14;
        parameters.emergency_sensitivity=1.5;
        parameters.target_hold_frames=20;
        const MpcConfig effective=strategy_config(parameters,base);
        CHECK(effective.horizon_frames==base.horizon_frames);
        CHECK(effective.beam_width==base.beam_width);
        CHECK(effective.root_candidates==base.root_candidates);
        CHECK(effective.maneuver_weight==14);
        CHECK(effective.combat.target_min_hold_frames==20);
        CHECK(effective.safety.collision_horizon_frames>=base.safety.collision_horizon_frames);
        CHECK(effective.safety.clearance_radius>=base.safety.clearance_radius);
        CHECK(strategy_preserves_safety(base,effective));
        parameters.emergency_sensitivity=0.2; // clamped up to 1.0
        const MpcConfig weak=strategy_config(parameters,base);
        CHECK(strategy_preserves_safety(base,weak));
        CHECK(weak.safety.collision_horizon_frames==base.safety.collision_horizon_frames);
    });
    test("strategy runtime holds a scenario then blends instead of flickering",[]{
        StrategyRuntimeConfig config;
        config.stable_frames=3;config.blend_frames=4;
        StrategyProfileRuntime runtime(config,builtin_strategy_profiles());
        auto normal_frame=frame();
        auto enemy_entity=enemy({520,280});enemy_entity.collision=0;
        normal_frame.entities={enemy_entity};
        auto normal_snapshot=WorldStateBridge::snapshot(normal_frame,nullptr,nullptr);
        auto first=runtime.update(normal_snapshot);
        CHECK(!first.active_profile.empty());
        const std::string initial=first.active_profile;

        auto dense_frame=frame();
        std::vector<Entity> bullets;
        for(int i=0;i<16;++i) {
            const double angle=double(i)*2.0*3.14159265358979323846/16.0;
            auto b=bullet({320.0+std::cos(angle)*150.0,280.0+std::sin(angle)*150.0},
                Vec{-std::cos(angle)*120.0,-std::sin(angle)*120.0});
            b.address=0x51000+uint32_t(i);
            bullets.push_back(b);
        }
        dense_frame.entities=bullets;
        auto dense_snapshot=WorldStateBridge::snapshot(dense_frame,nullptr,nullptr);
        auto decision=runtime.update(dense_snapshot);
        CHECK(decision.active_profile==initial);
        CHECK(!decision.switched);
        decision=runtime.update(dense_snapshot);
        CHECK(decision.active_profile==initial);
        decision=runtime.update(dense_snapshot);
        decision=runtime.update(dense_snapshot);
        CHECK(decision.target_profile=="dense-projectiles"||
              decision.target_profile=="multi-direction");
        for(int i=0;i<5;++i)decision=runtime.update(dense_snapshot);
        CHECK(decision.active_profile!=initial);
        CHECK(decision.applied_parameters.emergency_sensitivity>=1.0);
        const MpcConfig effective=runtime.effective_config(MpcConfig{});
        CHECK(effective.beam_width==MpcConfig{}.beam_width);
        CHECK(effective.horizon_frames==MpcConfig{}.horizon_frames);
    });
    test("strategy memory saves compares and rolls back profiles",[]{
        const auto directory=std::filesystem::current_path()/
            "gamebot-strategy-memory-test";
        std::error_code ignored;
        std::filesystem::remove_all(directory,ignored);
        StrategyMemory memory{directory};
        StrategyProfile profile=builtin_strategy_profiles().at(1);
        profile.profile_id="memory-test";
        profile.source="test";
        profile.parameters.positioning_weight=9;
        auto update=memory.save_profiles({profile},"test save");
        CHECK(update.success);
        CHECK(update.new_version==1);
        profile.parameters.positioning_weight=13;
        update=memory.save_profiles({profile},"test update");
        CHECK(update.success);
        CHECK(update.new_version==2);
        auto current=memory.current();
        CHECK(bool(current));
        const StrategyProfile* saved=find_strategy_profile(current->profiles,"memory-test");
        CHECK(saved!=nullptr);
        CHECK(saved->parameters.positioning_weight==13);
        const auto versions=memory.versions();
        CHECK(versions.size()==2);
        std::string compare_error;
        const auto version_diff=memory.compare_versions(1,2,&compare_error);
        CHECK(compare_error.empty());
        CHECK(version_diff.size()==1);
        CHECK(!version_diff.front().changed_parameters.empty());
        auto rolled=memory.rollback(1);
        CHECK(bool(rolled));
        const StrategyProfile* old=find_strategy_profile(rolled->profiles,"memory-test");
        CHECK(old!=nullptr);
        CHECK(old->parameters.positioning_weight==9);
        StrategyProfile changed=*old;
        changed.parameters.positioning_weight=15;
        const auto diff=compare_strategy_profiles(*old,changed);
        CHECK(std::find(diff.changed_parameters.begin(),diff.changed_parameters.end(),
            "positioning_weight")!=diff.changed_parameters.end());
        std::filesystem::remove_all(directory,ignored);
    });
    test("scenario corpus extracts real frame records and keeps a holdout split",[]{
        const auto file=std::filesystem::current_path()/"gamebot-strategy-corpus-test.jsonl";
        std::ofstream out{file};
        CHECK(bool(out));
        for(int i=0;i<8;++i) {
            auto f=frame();f.clock=100+uint32_t(i*40);f.room=0x40000+uint32_t(i%3);
            auto e=enemy({480.0+double(i),280});e.collision=0;f.entities={e};
            MechanismFrame mechanisms;mechanisms.valid=true;mechanisms.room=f.room;
            mechanisms.clock=f.clock;
            out<<json{{"frame",f},{"mechanisms",mechanisms}}.dump()<<'\n';
        }
        out.close();
        ScenarioCorpusConfig config;
        config.frame_stride=1;config.max_per_scenario=32;config.max_total=32;
        config.holdout_fraction=0.5;
        ScenarioCorpusBuilder builder(config);
        std::string error;
        const auto corpus=builder.build(file,nullptr,&error);
        CHECK(error.empty());
        CHECK(corpus.records.size()==8);
        CHECK(corpus.stats.train>0);
        CHECK(corpus.stats.holdout>0);
        CHECK(corpus.records.front().snapshot.frame.valid);
        CHECK(!corpus.records.front().entity_relations.empty());
        CHECK(corpus.stats.to_json().at("seeds").is_object());
        CHECK(corpus.to_json().contains("evidence_scope"));
        std::filesystem::remove(file);
    });
    test("tactical optimizer is bounded and refuses simulation-only promotion",[]{
        ScenarioCorpus corpus;
        auto f=frame();auto e=enemy({500,280});e.collision=0;f.entities={e};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        for(int i=0;i<4;++i) {
            ReplayScenarioRecord record;
            record.id="optimizer-"+std::to_string(i);
            record.scenario_tags={ScenarioTag::normal_room};
            record.snapshot=snapshot;
            record.split=i==3?"holdout":"train";
            record.initial_hp=6;
            record.real_capture=true;
            record.mechanism_confidence=0.9;
            record.unknown_risk=0.1;
            corpus.records.push_back(record);
        }
        corpus.stats.records=4;corpus.stats.train=3;corpus.stats.holdout=1;
        TacticalOptimizerConfig config;
        config.max_evaluations=6;config.coordinate_passes=1;config.survivors=2;
        config.min_train_samples=1;config.min_holdout_samples=1;
        config.min_confidence=0.0;config.min_verified_fraction=0.0;
        config.max_prediction_error=1.0;config.require_real_captures=true;
        OfflineRolloutConfig rollout;rollout.max_decisions=4;rollout.decision_frames=3;
        TacticalParameterOptimizer optimizer(config,corpus,MpcConfig{},rollout);
        const auto result=optimizer.optimize({ScenarioTag::normal_room});
        CHECK(result.evaluations>0);
        CHECK(result.evaluations<=config.max_evaluations);
        CHECK(!result.candidates.empty());
        CHECK(result.baseline.train.scenarios==3);
        CHECK(result.baseline.holdout.scenarios==1);

        StrategyCandidateEvaluation candidate=result.baseline;
        candidate.confidence=0.9;
        candidate.train.mechanism_confidence=0.9;
        candidate.train.prediction_error=0.1;
        candidate.holdout.prediction_error=0.1;
        candidate.profile.parameters=StrategyParameters{};
        std::string reason;
        CHECK(strategy_promotion_gate(candidate,config,candidate.profile.parameters,reason));
        candidate.train.real_captures=0;
        CHECK(!strategy_promotion_gate(candidate,config,candidate.profile.parameters,reason));
        candidate.train.real_captures=3;
        candidate.profile.parameters.emergency_sensitivity=0.5;
        CHECK(!strategy_promotion_gate(candidate,config,candidate.profile.parameters,reason));
    });
    test("mpc injects the selected strategy without changing search width or horizon",[]{
        auto f=frame();f.player.health=6;f.player.tear_range=400;
        auto e=enemy({480,280});e.hp=20;e.collision=0;f.entities={e};
        LookaheadConfig look;look.epochs=2;look.epoch_frames=6;
        look.simulation_horizon_frames=12;look.simulation_branches=4;
        MpcConfig config;config.horizon_frames=24;config.segment_frames=6;
        config.beam_width=3;config.min_beam_width=2;config.max_beam_width=4;
        config.root_candidates=16;config.full_root_actions=false;
        config.max_simulations=64;config.time_budget_ms=200;
        MpcCombatPlanner planner(config,look);
        planner.set_strategy_enabled(true);
        const auto plan=planner.decide(f,true,nullptr);
        CHECK(plan.available);
        CHECK(!plan.strategy_profile.empty());
        CHECK(!plan.scenario_tags.empty());
        CHECK(plan.to_json().at("strategy").contains("profile"));
        CHECK(plan.stats.beam_width<=config.beam_width);
        CHECK(plan.stats.horizon_frames==config.horizon_frames);
        CHECK(planner.strategy_enabled());
        planner.set_strategy_enabled(false);
        CHECK(!planner.strategy_enabled());
    });

    test("real progress tracker distinguishes no hit, unreachable target and HP progress",[]{
        auto f=frame();auto e=enemy();f.entities={e};
        auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        CombatProgressConfig config;
        config.stall_frames=3;config.no_hit_frames=2;config.switch_frames=5;
        CombatProgressTracker tracker(config);
        CombatProgressObservation observation;
        observation.combat_valid=true;observation.attack_enabled=true;
        observation.fire=Fire::right;observation.target=e.address;
        observation.target_damageable=true;observation.aim_valid=true;
        observation.predicted_hit=true;observation.line_clear=true;
        observation.target_distance=180;observation.tear_range=340;
        for(int i=0;i<4;++i) {
            snapshot.frame.clock=100+uint32_t(i);
            tracker.observe(snapshot,observation);
        }
        CHECK(tracker.state().valid);
        CHECK(tracker.state().shots==4);
        CHECK(tracker.state().hits==0);
        CHECK(tracker.state().stalled);
        CHECK(tracker.state().attack_stalled);
        CHECK(tracker.state().kind==CombatProgressKind::shot_no_hit);

        observation.predicted_hit=false;
        snapshot.frame.clock=104;
        tracker.observe(snapshot,observation);
        CHECK(tracker.state().kind==CombatProgressKind::no_angle);
        CHECK(tracker.state().target_unreachable);
        CHECK(tracker.state().need_reposition);

        observation.predicted_hit=true;
        snapshot.frame.clock=105;
        snapshot.enemies.front().entity.hp=9;
        tracker.observe(snapshot,observation);
        CHECK(tracker.state().hits>0);
        CHECK(!tracker.state().stalled);
        CHECK(tracker.state().kind==CombatProgressKind::progressing);

        observation.target_damageable=false;
        observation.target_invulnerable=true;
        observation.predicted_hit=true;
        snapshot.frame.clock=106;
        tracker.observe(snapshot,observation);
        CHECK(tracker.state().kind==CombatProgressKind::invulnerable_target);
        CHECK(tracker.state().need_target_switch);

        const int confirmed_before=tracker.state().confirmed_kills;
        snapshot.frame.clock=107;
        snapshot.enemies.clear();
        LifecycleTransition lost;lost.id=e.address;lost.kind=LifecycleKind::despawned;
        snapshot.lifecycle={lost};
        tracker.observe(snapshot,observation);
        CHECK(tracker.state().entity_lost>0);
        CHECK(tracker.state().confirmed_kills==confirmed_before);
        CHECK(tracker.state().unconfirmed_kills>0);

        ProjectileState friendly;
        friendly.role=ProjectileRole::friendly;
        friendly.real=true;
        friendly.entity=bullet({320,260},{0,-300});
        friendly.entity.address=0x60000;
        snapshot.projectiles={friendly};
        snapshot.frame.clock=108;
        const int fire_before=tracker.state().fire_commands;
        const int spawn_before=tracker.state().projectile_spawns;
        tracker.observe(snapshot,observation);
        CHECK(tracker.state().fire_commands>fire_before);
        CHECK(tracker.state().projectile_spawns>spawn_before);
    });
    test("anti-stalemate guidance creates reposition intent without bypassing safety",[]{
        auto f=frame();auto e=enemy({700,280});e.collision=0;f.entities={e};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        CombatIntelligence combat;
        const auto root=combat.evaluate(snapshot,true);
        CHECK(root.fallback_fire_valid);
        CHECK(root.fallback_fire!=Fire::none);
        CombatProgressState progress;
        progress.valid=true;progress.stalled=true;
        progress.target=root.target;progress.target_unreachable=true;
        progress.kind=CombatProgressKind::no_angle;
        progress.frames_since_progress=100;
        combat.set_progress(progress);
        const auto stalled=combat.evaluate(snapshot,true);
        CHECK(stalled.objective.anti_stalemate);
        CHECK(stalled.objective.need_reposition);
        CHECK(stalled.objective.tactical_mode==TacticalMode::reposition);
        CHECK(stalled.objective.progress_kind=="no_angle");
        CHECK(stalled.target_distance>=0);
    });
    test("stalled branch scoring values progress and safe approach",[]{
        auto f=frame();auto e=enemy({500,280});e.collision=0;f.entities={e};
        const auto snapshot=WorldStateBridge::snapshot(f,nullptr,nullptr);
        CombatIntelligence combat;
        const auto root=combat.evaluate(snapshot,true);
        CombatProgressState progress;
        progress.valid=true;progress.stalled=true;
        progress.target=root.target;progress.frames_since_progress=100;
        progress.kind=CombatProgressKind::out_of_range;
        combat.set_progress(progress);
        ForwardSimConfig sim_config;sim_config.horizon_frames=6;
        ForwardSimulator simulator(sim_config);
        CHECK(simulator.restore(snapshot));
        const CombatEnemyHp before=combat_enemy_hp(simulator.world());
        const SimAction action{Move::east,Fire::right,true};
        simulator.step(action,6);
        const auto branch=combat.evaluate_branch(root,simulator.world(),{},root.target);
        const auto terms=combat.score_branch(root,branch,before,simulator.world(),
            action,simulator.score(),{});
        CHECK(branch.valid);
        CHECK(terms.progress_gain>0||terms.reachability>0||terms.approach>0);
        CHECK(terms.total(combat.config())>0);
        CHECK(terms.to_json().contains("approach"));
    });
    test("path mobility penalizes a safe-looking dead end",[]{
        auto open_frame=frame();
        const auto open_snapshot=WorldStateBridge::snapshot(open_frame,nullptr,nullptr);
        ForwardSimConfig sim_config;sim_config.horizon_frames=1;
        ForwardSimulator open_sim(sim_config);
        CHECK(open_sim.restore(open_snapshot));
        const auto open=evaluate_safety(open_sim.world(),SafetyGateConfig{});

        auto dead_frame=frame();
        // Player cell is (7,4). Leave one north exit and wall the rest of the
        // local pocket so the position is safe now but a dead end.
        for(int y=3;y<=5;++y)for(int x=6;x<=8;++x) {
            if(x==7&&y==3)continue;
            dead_frame.grid.cells[y*dead_frame.grid.width+x].collision=1;
        }
        const auto dead_snapshot=WorldStateBridge::snapshot(dead_frame,nullptr,nullptr);
        ForwardSimulator dead_sim(sim_config);
        CHECK(dead_sim.restore(dead_snapshot));
        const auto dead=evaluate_safety(dead_sim.world(),SafetyGateConfig{});
        CHECK(dead.reachable_area<=open.reachable_area);
        CHECK(dead.mobility_routes<=open.mobility_routes);
        CHECK(dead.corner_risk>open.corner_risk);
        CHECK(dead.to_json().contains("dead_end_risk"));
    });
    test("mpc logs real progress and keeps the fallback fire available",[]{
        auto f=frame();f.player.health=6;f.player.tear_range=400;
        auto e=enemy({700,280});e.hp=20;e.collision=0;f.entities={e};
        LookaheadConfig look;look.epochs=1;look.epoch_frames=6;
        look.simulation_horizon_frames=12;look.simulation_branches=4;
        MpcConfig config;config.horizon_frames=18;config.segment_frames=6;
        config.beam_width=2;config.min_beam_width=2;config.max_beam_width=3;
        config.root_candidates=12;config.full_root_actions=false;
        config.max_simulations=32;config.time_budget_ms=80;
        MpcCombatPlanner planner(config,look);
        const auto plan=planner.decide(f,true,nullptr);
        CHECK(plan.to_json().contains("progress"));
        CHECK(plan.progress.contains("kind"));
        CHECK(plan.combat.fallback_fire_valid);
        CHECK(plan.combat.fallback_fire!=Fire::none);
    });

    int failed=0;double total_ms=0;
    for(const auto&[name,fn]:cases){auto start=std::chrono::steady_clock::now();try{fn();std::cout<<"PASS "<<name<<'\n';}catch(const std::exception&e){++failed;std::cout<<"FAIL "<<name<<": "<<e.what()<<'\n';}total_ms+=std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now()-start).count();}
    std::cout<<cases.size()-failed<<" passed, "<<failed<<" failed; "<<total_ms<<" ms\n";
    if(argc>1) {std::ofstream out(argv[1]);out<<json{{"tests",cases.size()},{"failed",failed},{"elapsed_ms",total_ms},{"gameplay_evidence",false}}.dump(2);}
    return failed?1:0;
}

