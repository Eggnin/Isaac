#include "gamebot/planner.hpp"
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
    int failed=0;double total_ms=0;
    for(const auto&[name,fn]:cases){auto start=std::chrono::steady_clock::now();try{fn();std::cout<<"PASS "<<name<<'\n';}catch(const std::exception&e){++failed;std::cout<<"FAIL "<<name<<": "<<e.what()<<'\n';}total_ms+=std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now()-start).count();}
    std::cout<<cases.size()-failed<<" passed, "<<failed<<" failed; "<<total_ms<<" ms\n";
    if(argc>1) {std::ofstream out(argv[1]);out<<json{{"tests",cases.size()},{"failed",failed},{"elapsed_ms",total_ms},{"gameplay_evidence",false}}.dump(2);}
    return failed?1:0;
}
