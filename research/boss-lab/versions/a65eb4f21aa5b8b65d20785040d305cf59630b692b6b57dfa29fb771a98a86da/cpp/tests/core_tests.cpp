#include "gamebot/planner.hpp"
#include "gamebot/control.hpp"
#include "gamebot/reader.hpp"
#include "gamebot/weapons.hpp"
#include <iostream>
#include <functional>
#include <stdexcept>
#include <map>
#include <chrono>
#include <fstream>

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
std::shared_ptr<FlatMemory> fixture() {
    auto m=std::make_shared<FlatMemory>();
    constexpr uint32_t game=0x10000,manager=0x90000,room=0xa0000,player=0xc0000,monster=0xd0000;
    m->put<uint32_t>(0x8000,game);m->put<uint32_t>(0x8004,manager);m->put<int>(manager+8,2);
    m->put<uint32_t>(game+0x264f8,100);m->put<uint32_t>(game+0x18300,room);
    m->put<int>(room+0xc,15);m->put<int>(room+0x10,9);m->put<uint32_t>(room+4,0xb0000);
    m->put<uint32_t>(game+0x1baa8,0xb0100);m->put<uint32_t>(game+0x1baac,0xb0104);m->put<uint32_t>(game+0x1bab0,0xb0104);m->put<uint32_t>(0xb0100,player);
    m->put<uint32_t>(room+0x1218+0x20+4,0xb0200);m->put<uint32_t>(room+0x1218+0x20+8,2);m->put<uint32_t>(room+0x1218+0x20+12,2);
    m->put<uint32_t>(0xb0200,player);m->put<uint32_t>(0xb0204,monster);
    m->entity(player,1,{320,280});m->entity(monster,10,{500,280});
    m->put<uint8_t>(player+0x410,1);m->put<float>(player+0x1568,1);m->put<float>(player+0x1464,1);m->put<float>(player+0x1480,260);
    m->put<uint8_t>(player+0x1825,1);m->put<int>(player+0x1344,6);
    m->put<uint32_t>(player+0x13dc,0xe0000);m->put<uint32_t>(0xe0000,0x7815d0);m->put<uint32_t>(0xe0004,player);m->put<float>(0xe0010,10);m->put<int>(0xe0030,1);
    return m;
}
}
int main(int argc,char**argv) {
    std::vector<std::pair<std::string,std::function<void()>>> cases;
    auto test=[&](std::string name,std::function<void()> fn){cases.emplace_back(std::move(name),std::move(fn));};
    test("continuous collision catches inter-sample crossing",[]{CHECK(moving_clearance({0,0},{0,0},{-100,0},{100,0},5)<0);CHECK(moving_clearance({0,20},{0,20},{-100,0},{100,0},5)>0);});
    test("moving capsule crossing",[]{Threat t;t.shape=Shape::capsule;t.pos={0,0};t.end={100,0};t.radius=2;CHECK(t.clearance({50,-20},{50,20},0,.1,4)<0);CHECK(t.clearance({120,-20},{120,20},0,.1,4)>0);});
    test("ring hole is safe but ring crossing is not",[]{Threat t;t.shape=Shape::ring;t.pos={};t.end={100,0};t.radius=5;CHECK(t.clearance({0,0},{20,0},0,.1,5)>0);CHECK(t.clearance({80,0},{120,0},0,.1,5)<0);});
    test("timed threat absent before activation",[]{Threat t;t.pos={};t.radius=100;t.start=.5;CHECK(t.clearance({0,0},{0,0},0,.1,5)>1000);CHECK(t.clearance({0,0},{0,0},.5,.6,5)<0);});
    test("curved trajectory integrates velocity",[]{Threat t;t.vel={100,0};t.angular_speed=pi;CHECK(distance(t.at(.5),{100/pi,100/pi})<.001);});
    test("grid blocks walls pits and spikes",[]{auto f=frame();CHECK(f.grid.walkable({320,280},10,false));auto&c=f.grid.cells[4*15+7];c.collision=1;CHECK(!f.grid.walkable({320,280},10,false));CHECK(f.grid.walkable({320,280},10,true));c.collision=3;CHECK(!f.grid.walkable({320,280},10,true));c.collision=0;c.danger=true;CHECK(!f.grid.walkable({320,280},10,false));});
    test("swept terrain does not tunnel",[]{auto f=frame();f.grid.cells[4*15+7].collision=3;CHECK(!f.grid.sweep_clear({240,280},{400,280},10,false));});
    test("overlapping player can move out of terrain",[]{auto f=frame();f.player.body.pos={180,227};f.grid.cells[2*15+3].collision=3;Planner p;auto d=p.decide(f);CHECK(d.valid);CHECK(!d.stop);CHECK(d.move!=Move::stay);});
    test("four cardinal firing channels",[]{for(auto fire:{Fire::up,Fire::right,Fire::down,Fire::left}){auto f=frame();f.entities={enemy(f.player.body.pos+direction(fire)*100)};auto a=Planner().aim(f,f.player.body.pos);CHECK(a.can_fire);CHECK(a.fire==fire);}});
    test("crossing target is hit at tear arrival",[]{for(double dx:{-180.0,180.0})for(double vy:{-120.0,120.0}){auto f=frame();f.entities={enemy({320+dx,280-vy*.5},{0,vy})};auto a=Planner().aim(f,f.player.body.pos);CHECK(a.can_fire);Vec tear=f.player.body.pos,target=f.entities[0].pos;for(int i=0;i<60;++i){tear=tear+direction(a.fire)*3;target=target+Vec{0,vy/120};}CHECK(distance(tear,target)<1);}});
    test("target leaving lane is not fired at",[]{auto f=frame();f.entities={enemy({500,280},{0,120})};CHECK(!Planner().aim(f,f.player.body.pos).can_fire);});
    test("outrunning target has no intercept",[]{auto f=frame();f.entities={enemy({500,280},{500,0})};CHECK(!Planner().aim(f,f.player.body.pos).can_fire);});
    test("close crossing never reverses aim",[]{auto f=frame();f.entities={enemy({290,280},{600,0})};auto a=Planner().aim(f,f.player.body.pos);CHECK(a.fire==Fire::left);});
    test("future shot path checks blocking rock",[]{auto f=frame();f.entities={enemy({400,280},{120,0})};f.grid.cells[4*15+10].collision=3;CHECK(f.grid.shot_clear({320,280},{400,280}));CHECK(!Planner().aim(f,f.player.body.pos).can_fire);});
    test("clears first destructible blocker then attacks enemy",[]{auto f=frame();f.entities={enemy()};auto&cell=f.grid.cells[4*15+10];cell.type=14;cell.collision=3;cell.destructible=true;Planner p;auto a=p.aim(f,f.player.body.pos);CHECK(a.can_fire);CHECK(a.fire==Fire::right);CHECK(a.target>=0xf0000000u);CHECK(a.point.x==440);cell.collision=0;cell.destructible=false;auto opened=p.aim(f,f.player.body.pos);CHECK(opened.can_fire);CHECK(opened.target==f.entities[0].address);});
    test("does not clear TNT by ordinary shooting",[]{auto f=frame();f.entities={enemy()};auto&cell=f.grid.cells[4*15+10];cell.type=12;cell.collision=3;cell.destructible=true;CHECK(!Planner().aim(f,f.player.body.pos).can_fire);});
    test("friendly invulnerable no-target not attacked",[]{for(int type=0;type<3;++type){auto f=frame();auto e=enemy();if(type==0)e.friendly=true;if(type==1)e.invulnerable=true;if(type==2)e.no_target=true;f.entities={e};CHECK(!Planner().aim(f,f.player.body.pos).target);}});
    test("no-target still creates contact threat",[]{auto f=frame();auto e=enemy({360,280},{-120,0});e.no_target=true;f.entities={e};Planner p;auto d=p.decide(f);CHECK(!d.target);CHECK(!p.threats().empty());CHECK(std::find(d.threat_kinds.begin(),d.threat_kinds.end(),"contact")!=d.threat_kinds.end());});
    test("research diagnostics record alternatives without changing the decision",[]{auto f=frame();f.entities={enemy({360,280},{-120,0}),bullet({350,280},{-240,0})};Planner plain;auto expected=plain.decide(f);PlannerConfig c;c.diagnostics=true;Planner diagnosed(c);auto actual=diagnosed.decide(f);CHECK(actual.move==expected.move);CHECK(actual.safe==expected.safe);CHECK(actual.target==expected.target);CHECK(actual.collision_cost==expected.collision_cost);CHECK(actual.analysis.moves.size()==9);CHECK(!actual.analysis.cause.empty());CHECK(std::any_of(actual.analysis.moves.begin(),actual.analysis.moves.end(),[](const MoveEvaluation&e){return e.has_route;}));});
    test("contact safety margin expands the threat radius",[]{auto f=frame();auto e=enemy({360,280},{-120,0});f.entities={e};PlannerConfig c;c.contact_margin=6;Planner p(c);p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[&](const Threat&t){return t.kind=="contact"&&t.radius==e.radius+6;}));});
    test("near explosive npc suppresses fire",[]{auto f=frame();auto e=enemy({390,280});e.type=250;f.entities={e};CHECK(!Planner().aim(f,f.player.body.pos).can_fire);});
    test("weapon charge thresholds follow J460 constants",[]{CHECK(max_charge_for(1,10,0)==0);CHECK(max_charge_for(1,10,1)==26.5);CHECK(max_charge_for(1,10,256)==131);CHECK(max_charge_for(2,10,0)==10);CHECK(max_charge_for(2,10,1)==25);CHECK(max_charge_for(4,10,0)==40);CHECK(max_charge_for(7,10,0)==10);CHECK(max_charge_for(9,10,0)==30);CHECK(max_charge_for(13,10,0)==40);CHECK(max_charge_for(5,10,0)<0);});
    test("charged weapon releases then recharges after observed reset",[]{auto f=frame();f.entities={enemy()};f.player.weapons={{1,0,2,5,10,10}};Planner p;CHECK(p.decide(f).fire==Fire::right);f.player.weapons[0].charge=10;++f.clock;CHECK(p.decide(f).fire==Fire::none);++f.clock;f.player.weapons[0].charge=0;CHECK(p.decide(f).fire==Fire::none);++f.clock;CHECK(p.decide(f).fire==Fire::right);});
    test("unsupported weapon retains dodge but never fires",[]{auto f=frame();f.player.attack_supported=false;f.entities={enemy(),bullet({380,280},{-240,0})};auto d=Planner().decide(f);CHECK(d.fire==Fire::none);CHECK(d.move!=Move::stay);});
    test("stationary no-target room remains idle",[]{auto f=frame();f.cleared=true;auto d=Planner().decide(f);CHECK(d.move==Move::stay);CHECK(d.fire==Fire::none);CHECK(d.safe);});
    test("clear room still evades projectile",[]{auto f=frame();f.cleared=true;f.entities={bullet({380,280},{-240,0})};auto d=Planner().decide(f);CHECK(d.move!=Move::stay);CHECK(d.fire==Fire::none);CHECK(d.safe);});
    test("clear room still evades laser",[]{auto f=frame();f.cleared=true;Entity e;e.type=7;e.address=500;e.pos={60,280};e.endpoint={560,280};e.geometry_valid=true;e.radius=8;e.timeout=10;f.entities={e};auto d=Planner().decide(f);CHECK(d.move!=Move::stay);CHECK(d.fire==Fire::none);});
    test("laser threat uses the native beam width",[]{auto f=frame();Entity e;e.type=7;e.address=500;e.pos={320,160};e.endpoint={320,400};e.geometry_valid=true;e.radius=5;e.laser_radius=80;e.timeout=10;f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="laser"&&t.radius>=40;}));});
    test("uninitialized laser endpoint uses the parent attack direction",[]{auto f=frame();Entity parent=enemy({320,220});parent.type=212;parent.variant=3;parent.address=0x30001;parent.animation="AttackDown";Entity laser;laser.type=7;laser.address=0x30002;laser.parent=parent.address;laser.pos=parent.pos;laser.endpoint={0,0};laser.geometry_valid=true;laser.radius=5;laser.laser_radius=80;laser.timeout=16;f.entities={parent,laser};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="laser"&&t.shape==Shape::capsule&&t.end.y>t.pos.y+1000;}));});
    test("Cage roll creates an early moving capsule",[]{auto f=frame();auto e=enemy({320,280},{0,375});e.type=265;e.state=8;e.animation="RollStart";f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="roll"&&t.shape==Shape::capsule&&t.end.y>t.pos.y+200;}));});
    test("Cage landing warns about generated creep",[]{auto f=frame();auto e=enemy({320,220});e.type=265;e.state=7;e.animation="Landing";e.target_pos={360,240};f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="cage-landing-creep"&&t.radius==180&&t.pos.x==360&&t.pos.y==240;}));});
    test("Cage landing creates an expanding rock wave",[]{auto f=frame();auto e=enemy({320,220});e.type=265;e.state=7;e.state_frame=20;e.animation="Landing";e.target_pos={360,240};f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="cage-rock-wave"&&t.shape==Shape::ring&&t.radius==20&&distance(t.pos,t.end)>=120;}));});
    test("generated Cage rubble is a hazard",[]{auto f=frame();Entity e;e.type=1000;e.variant=4;e.address=501;e.pos={360,240};e.radius=20;f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="cage-rock-wave"&&t.shape==Shape::disc;}));});
    test("airborne jump creates a landing threat",[]{auto f=frame();auto e=enemy({360,280},{0,0});e.type=265;e.radius=40;e.collision=0;e.state=7;e.animation="JumpLoop";f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="jump-landing";}));});
    test("attack windup creates a charge lane",[]{auto f=frame();auto e=enemy({120,280},{300,0});e.type=63;e.state=8;e.animation="AttackDashStart";f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="charge"&&t.shape==Shape::capsule;}));});
    test("Bloat attack states warn before lasers spawn",[]{for(int state:{9,10,13}){auto f=frame();auto e=enemy({320,220});e.type=68;e.variant=1;e.state=state;e.animation="AttackAlt02";f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="laser-warning";}));}});
    test("Brimstone head shoot animation warns before its laser spawns",[]{auto f=frame();auto e=enemy({320,220});e.type=203;e.state=8;e.animation="ShootDown";f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="laser-warning"&&t.shape==Shape::capsule&&t.end.y>t.pos.y+1000;}));});
    test("Eye rotation warns along its native angle before the laser spawns",[]{auto f=frame();auto e=enemy({320,270});e.type=60;e.animation="Rotate";e.angle=3.141592653589793;f.entities={e};Planner p;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="laser-warning"&&t.shape==Shape::capsule&&t.pos.x>t.end.x+2000;}));});
    test("dead projectile does not cause phantom dodge",[]{auto f=frame();auto e=bullet({320,280},{});e.dead=true;f.entities={e};CHECK(Planner().decide(f).move==Move::stay);});
    test("friendly projectile does not cause dodge",[]{auto f=frame();auto e=bullet({320,280},{});e.friendly=true;f.entities={e};CHECK(Planner().decide(f).move==Move::stay);});
    test("explosive npc disappearance reserve expires once",[]{auto f=frame();auto e=enemy({390,280});e.type=250;f.entities={e};Planner p;p.decide(f);f.entities.clear();++f.clock;p.decide(f);CHECK(std::any_of(p.threats().begin(),p.threats().end(),[](const Threat&t){return t.kind=="death-blast";}));f.clock+=5;p.decide(f);CHECK(p.threats().empty());++f.clock;p.decide(f);CHECK(p.threats().empty());});
    test("dead explosive npc does not restart expired reserve",[]{auto f=frame();auto e=enemy({390,280});e.type=250;f.entities={e};Planner p;p.decide(f);f.entities[0].dead=true;++f.clock;p.decide(f);f.clock+=5;p.decide(f);++f.clock;p.decide(f);CHECK(p.threats().empty());});
    test("bomb chain advances the second detonation",[]{auto f=frame();Entity a;a.type=4;a.address=501;a.seed=1;a.pos={100,180};a.timeout=3;Entity b=a;b.address=502;b.seed=2;b.pos={160,180};b.timeout=60;f.entities={a,b};Planner p;p.decide(f);bool advanced=false;for(const auto&t:p.threats())if(t.source==502&&t.kind=="bomb")advanced=t.start<.2;CHECK(advanced);});
    test("laser follows observed moving parent",[]{auto f=frame();auto source=enemy({100,180},{0,60});Entity laser;laser.type=7;laser.address=123;laser.parent=source.address;laser.laser_follow=true;laser.geometry_valid=true;laser.pos=source.pos;laser.endpoint={560,180};laser.radius=5;laser.timeout=15;f.entities={source,laser};Planner p;p.decide(f);for(const auto&t:p.threats())if(t.kind=="laser")CHECK(t.at(.5).y==210);});
    test("invalid pause transition death stop",[]{for(int state=0;state<5;++state){auto f=frame();if(state==0)f.valid=false;if(state==1)f.paused=true;if(state==2)f.transition=true;if(state==3)f.player.body.dead=true;if(state==4)f.has_player=false;CHECK(Planner().decide(f).stop);}});
    test("native reader synthetic complete frame",[]{auto m=fixture();Reader r(m,{0,0x8000,0x8004,0x264f8,"fixture"},123);auto f=r.capture(1000);CHECK(f.valid);CHECK(f.has_player);CHECK(f.pid==123);CHECK(f.entities.size()==2);CHECK(f.player.health==6);CHECK(f.grid.cells.size()==135);CHECK(f.player.attack_supported);CHECK(f.player.weapons.size()==1);});
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
    int failed=0;double total_ms=0;
    for(const auto&[name,fn]:cases){auto start=std::chrono::steady_clock::now();try{fn();std::cout<<"PASS "<<name<<'\n';}catch(const std::exception&e){++failed;std::cout<<"FAIL "<<name<<": "<<e.what()<<'\n';}total_ms+=std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now()-start).count();}
    std::cout<<cases.size()-failed<<" passed, "<<failed<<" failed; "<<total_ms<<" ms\n";
    if(argc>1) {std::ofstream out(argv[1]);out<<json{{"tests",cases.size()},{"failed",failed},{"elapsed_ms",total_ms},{"gameplay_evidence",false}}.dump(2);}
    return failed?1:0;
}
