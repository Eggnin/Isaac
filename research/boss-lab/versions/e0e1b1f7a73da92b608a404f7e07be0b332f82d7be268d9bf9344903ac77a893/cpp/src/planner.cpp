#include "gamebot/planner.hpp"
#include "gamebot/weapons.hpp"
#include <array>
#include <chrono>
#include <numeric>
#include <queue>
#include <unordered_set>

namespace gamebot {
namespace {
uint64_t identity(const Entity& e) { return (uint64_t(e.address)<<32)|e.seed; }
double normalized_angle(double a) { return std::remainder(a,2*pi); }
std::vector<Vec> sample_path(const std::vector<Vec>& path,size_t limit=10) {
    if(path.size()<=limit)return path;
    std::vector<Vec> out;out.reserve(limit);
    for(size_t i=0;i<limit;++i)out.push_back(path[i*(path.size()-1)/(limit-1)]);
    return out;
}
struct Node {
    Vec pos,vel;Move first{},last{};double hits{},exposure{},margin{10000},end_clearance{10000},score{};
    double first_hit{std::numeric_limits<double>::infinity()};
    std::vector<Vec> path;
};
bool rank_node(const Node& a,const Node& b,bool prefer_late_collision=false) {
    if(prefer_late_collision&&a.hits>0&&b.hits>0&&std::abs(a.first_hit-b.first_hit)>1e-6)
        return a.first_hit>b.first_hit;
    if(std::abs(a.hits-b.hits)>1e-6)return a.hits<b.hits;
    if(std::abs(a.exposure-b.exposure)>1e-6)return a.exposure<b.exposure;
    // Once predicted damage and the required margin agree, keep making
    // progress toward a firing lane. Maximizing distance first can keep a
    // large-room boss outside tear range indefinitely.
    if(std::abs(a.score-b.score)>1e-6)return a.score>b.score;
    return a.end_clearance>b.end_clearance;
}
}
double blast_radius(const Entity& e) {
    if((e.type==25&&e.variant==0)||(e.type==250&&e.variant==0)||
       (e.type==292&&e.variant==0)||(e.type==55&&(e.variant==1||e.variant==2))||
       (e.type==16&&e.variant==2)||(e.type==295&&e.variant==0)||e.champion==5)return 80;
    return 0;
}
void Planner::reset() { room_=clock_=release_until_=0;target_=0;last_move_=Move::stay;tracks_.clear();reserves_.clear();threats_.clear();detonated_.clear();navigation_progress_clock_=0;navigation_enemy_hp_=-1;navigation_boost_=false; }
Aim Planner::aim(const Frame& f,Vec origin) const {
    Aim best;double best_score=-1e30;
    if(f.cleared||!f.has_player||!f.player.can_shoot||!f.player.attack_supported)return best;
    for(const auto& e:f.entities) {
        if(!e.targetable())continue;
        if(blast_radius(e)>0&&distance(origin,e.pos)<blast_radius(e)+f.player.body.radius+12)continue;
        for(int i=1;i<=4;++i) {
            auto fire=static_cast<Fire>(i);Vec axis=direction(fire),rel=e.pos-origin;
            bool ordinary=f.player.weapons.empty()||f.player.weapons.front().type==1;
            Vec shot=ordinary&&config_.use_tear_inheritance?normal_tear_velocity(f.player,fire):axis*f.player.tear_speed;
            Vec inherited=shot-axis*f.player.tear_speed;
            double forward=rel.dot(axis),closing=shot.dot(axis)-e.vel.dot(axis);
            if(forward<=0||closing<=1)continue;
            double t=forward/closing;Vec point=e.pos+e.vel*t;
            double reach=f.player.tear_speed*t;
            Vec offset=point-origin-inherited*t;
            double miss=std::abs(offset.x*axis.y-offset.y*axis.x);
            bool clear=f.grid.shot_clear(origin,origin+shot*t);
            bool can=miss<=e.radius+config_.tear_radius&&reach<=f.player.tear_range&&clear;
            if(blast_radius(e)>0&&distance(origin,point)<blast_radius(e)+f.player.body.radius+12)can=false;
            double score=(can?600:0)+(clear?30:0)-miss*2-reach*.04+(target_==identity(e)?28:0);
            if(score>best_score) { best_score=score;best={e.address,fire,point,t,miss,can}; }
        }
    }
    // Ordinary tears can open their current firing lane by destroying the first
    // poop/normal-fire obstacle. Solid rocks and TNT are never treated as tear
    // targets, and an obstacle behind another blocker is never selected.
    bool normal_tears=f.player.weapons.empty()||f.player.weapons.front().type==1;
    if(best.target&&!best.can_fire&&normal_tears&&best.fire!=Fire::none) {
        const Entity* selected=nullptr;for(const auto& e:f.entities)if(e.address==best.target)selected=&e;
        if(selected&&best.miss<=selected->radius+config_.tear_radius) {
            Vec velocity=config_.use_tear_inheritance?normal_tear_velocity(f.player,best.fire):direction(best.fire)*f.player.tear_speed;
            Vec axis=velocity.unit();
            double speed=velocity.norm(),reach=speed*best.time;
            double maximum=speed*f.player.tear_range/f.player.tear_speed;
            for(double travel=4;travel<reach;travel+=4) {
                Vec pos=origin+axis*travel;int x=int(std::floor((pos.x-20)/40)),y=int(std::floor((pos.y-100)/40));
                if(x<0||x>=f.grid.width||y<0||y>=f.grid.height)break;
                int index=y*f.grid.width+x;const auto& cell=f.grid.cells[index];
                if(cell.collision<2)continue;
                Vec center=f.grid.center(index);double forward=(center-origin).dot(axis);
                if(cell.destructible&&cell.type!=12&&forward>0&&forward<=maximum)
                    return {0xf0000000u+uint32_t(index),best.fire,center,forward/speed,0,true};
                break;
            }
        }
    }
    return best;
}
void Planner::build_threats(const Frame& f,double horizon) {
    threats_.clear();
    if(room_!=f.room||f.clock<clock_) {
        tracks_.clear();reserves_.clear();detonated_.clear();target_=0;release_until_=0;last_move_=Move::stay;
        navigation_progress_clock_=f.clock;navigation_enemy_hp_=-1;navigation_boost_=false;
    }
    room_=f.room;
    std::unordered_set<uint64_t> seen;
    auto add=[&](const Entity& e,std::string kind,double radius,double start=0,double until=-1) -> Threat& {
        Threat t;t.source=e.address;t.pos=e.pos;t.vel=e.vel;t.radius=radius;t.start=start;
        t.until=until<0?horizon:until;t.kind=std::move(kind);threats_.push_back(t);return threats_.back();
    };
    for(const auto& original:f.entities) {
        Entity e=original;
        // Delirium restores type 412 outside its copied NPC update. The native
        // J460 routine reads its current form at +bc8/+bcc (0x4a65d8..65de).
        // Preserve the observed entity and identity; dispatch copied attack
        // rules using the real form instead of losing its windup entirely.
        if(e.type==412&&e.morph_type>=10&&e.morph_type<1000) {
            e.type=e.morph_type;e.variant=e.morph_variant;
        }
        if(!e.pos.finite()||!e.vel.finite())continue;
        auto key=identity(e);seen.insert(key);
        auto old=tracks_.find(key);
        double turn=old!=tracks_.end()?old->second.turn:0;
        if(old!=tracks_.end()&&f.clock>old->second.clock&&f.clock-old->second.clock<=6&&
           old->second.entity.vel.norm()>20&&e.vel.norm()>20) {
            double observed=normalized_angle(std::atan2(e.vel.y,e.vel.x)-std::atan2(old->second.entity.vel.y,old->second.entity.vel.x));
            turn=std::clamp(observed/((f.clock-old->second.clock)/30.0),-7.0,7.0);
        }
        std::string anim=e.animation;
        std::transform(anim.begin(),anim.end(),anim.begin(),[](unsigned char c){return char(std::tolower(c));});
        if(e.alive()&&!e.friendly) {
            if((e.type==9&&!(e.projectile_flags&(1ULL<<31)))||(e.type==2&&((e.spawner_type>=10&&e.spawner_type<1000)||e.hostile_source))) {
                auto& bullet=add(e,"projectile",std::clamp(e.radius,2.0,45.0));
                bullet.angular_speed=turn;
                bullet.uncertainty=(e.projectile_flags&((1ULL<<48)|1))?30:std::abs(turn)*2;
                constexpr uint64_t native_motion=(1ULL<<5)|(1ULL<<11)|(1ULL<<12)|(1ULL<<18)|(1ULL<<19)|(1ULL<<21)|(1ULL<<22)|(1ULL<<23);
                if(e.type==9&&(e.projectile_flags&native_motion)) {
                    // Native J460 order: base displacement, curve velocity,
                    // sine/wiggle displacement, then sawtooth velocity turn.
                    Vec point=e.pos,velocity=e.vel;
                    bullet.motion_path.push_back(point);
                    for(int tick=1;tick<=int(std::ceil(horizon*30))+1;++tick) {
                        double age=e.projectile_age+tick;
                        point=point+velocity/30.0;
                        bool orbit=(e.projectile_flags&((1ULL<<11)|(1ULL<<12)))&&!(e.projectile_flags&(1ULL<<56));
                        if(orbit) {
                            Vec radial=point-e.target_pos,tangent{-radial.y,radial.x};
                            if(e.projectile_flags&(1ULL<<12))tangent=tangent*-1;
                            double correction=e.projectile_orbit_distance>0?
                                .5*std::clamp(1-radial.norm()/e.projectile_orbit_distance,-1.0,1.0):.5;
                            velocity=(radial*correction+tangent).unit()*velocity.norm();
                        }
                        if(e.projectile_flags&((1ULL<<18)|(1ULL<<19))) {
                            double step=(velocity.norm()/30.0)*e.projectile_curve*e.speed_multiplier;
                            if(e.projectile_flags&(1ULL<<18))step=-step;
                            velocity=rotated(velocity,std::atan(step));
                        } else if(!orbit&&!(e.projectile_flags&(1ULL<<23)))velocity=rotated(velocity,turn/30.0);
                        if(e.projectile_flags&(1ULL<<21))
                            point=point+velocity*(std::sin(age*2*pi/30.0)/30.0);
                        Vec perpendicular{velocity.y,-velocity.x};perpendicular=perpendicular.unit();
                        double phase=(age+e.projectile_phase)*2*pi/30.0;
                        if(e.projectile_flags&(1ULL<<5))
                            point=point+perpendicular*(3*std::cos(phase*(e.spawner_type==912?2:1)));
                        if(e.projectile_flags&(1ULL<<22)) {
                            double amplitude=3+std::min(4.0,(age+e.projectile_phase)*.04);
                            point=point+perpendicular*(amplitude*std::cos(phase));
                        }
                        if(e.projectile_flags&(1ULL<<23)) {
                            if(f.clock+tick-uint32_t(e.birth)==1)velocity=rotated(velocity,pi/4);
                            else {
                                int remainder=int(age)%30;
                                if(remainder==17)velocity=rotated(velocity,-3*pi/4);
                                else if(remainder==0)velocity=rotated(velocity,3*pi/4);
                            }
                        }
                        bullet.motion_path.push_back(point);
                    }
                }
                if(e.projectile_flags&2) add(e,"explosive-projectile",std::max(70.0,e.radius*12));
            }
            if(e.type==7) {
                double beam_radius=std::clamp(std::max(e.radius,e.laser_radius*.5),3.0,80.0);
                bool zero_endpoint=std::abs(e.endpoint.x)<1e-6&&std::abs(e.endpoint.y)<1e-6;
                auto& laser=add(e,"laser",beam_radius,0,
                    e.timeout>=0?std::max(1.0/30,e.timeout/30.0):horizon);
                laser.vel={};
                std::string direction_anim=anim;
                for(const auto& source:f.entities)if(source.address==e.parent&&source.alive()) {
                    if(e.laser_follow)laser.vel=source.vel;
                    direction_anim=source.animation;
                    std::transform(direction_anim.begin(),direction_anim.end(),direction_anim.begin(),[](unsigned char c){return char(std::tolower(c));});
                    break;
                }
                Vec inferred_axis{};
                if(direction_anim.find("down")!=std::string::npos)inferred_axis={0,1};
                else if(direction_anim.find("up")!=std::string::npos)inferred_axis={0,-1};
                else if(direction_anim.find("left")!=std::string::npos)inferred_axis={-1,0};
                else if(direction_anim.find("right")!=std::string::npos)inferred_axis={1,0};
                if(e.geometry_valid&&!zero_endpoint) { laser.shape=e.circle?Shape::ring:Shape::capsule;laser.end=e.endpoint; }
                else if(inferred_axis.norm()>0) {
                    laser.shape=Shape::capsule;laser.end=e.pos+inferred_axis*1500;
                }
                else {
                    laser.shape=Shape::capsule;laser.end=e.pos+direction(Fire::right)*1500;laser.radius=18;
                    for(auto axis:std::vector<Vec>{{-1,0},{0,1},{0,-1}}) { auto& unknown=add(e,"unknown-laser-axis",18);unknown.vel={};unknown.shape=Shape::capsule;unknown.end=e.pos+axis*1500; }
                }
            }
            if(e.type==212&&e.variant==3&&anim.rfind("attack",0)==0) {
                Vec axis{};
                if(anim.find("down")!=std::string::npos)axis={0,1};
                else if(anim.find("up")!=std::string::npos)axis={0,-1};
                else if(anim.find("left")!=std::string::npos)axis={-1,0};
                else if(anim.find("right")!=std::string::npos)axis={1,0};
                if(axis.norm()>0) {
                    auto& warning=add(e,"laser-warning",40,0,.6);
                    warning.shape=Shape::capsule;warning.end=e.pos+axis*1500;
                }
            }
            if(e.type==203&&anim.rfind("shoot",0)==0) {
                Vec axis{};
                if(anim.find("down")!=std::string::npos)axis={0,1};
                else if(anim.find("up")!=std::string::npos)axis={0,-1};
                else if(anim.find("left")!=std::string::npos)axis={-1,0};
                else if(anim.find("right")!=std::string::npos)axis={1,0};
                if(axis.norm()>0) {
                    auto& warning=add(e,"laser-warning",40,0,horizon);
                    warning.shape=Shape::capsule;warning.end=e.pos+axis*1500;
                }
            }
            if(e.type==60&&(anim.rfind("shoot",0)==0||anim.rfind("rotate",0)==0)&&std::isfinite(e.angle)) {
                Vec axis{std::cos(e.angle),std::sin(e.angle)};
                auto& warning=add(e,"laser-warning",40,0,horizon);
                warning.shape=Shape::capsule;
                warning.pos=e.pos-axis*1500;
                warning.end=e.pos+axis*1500;
            }
            if(e.type==4) {
                double time=e.timeout>=0?e.timeout/30.0:0;
                auto& bomb=add(e,"bomb",e.blast_radius,std::max(0.0,time-.06),time+.18);
                bomb.uncertainty=10+2*e.vel.norm();
            }
            double cage_contact_margin=e.type==265?(10+(e.vel.norm()>250?12:0)):0;
            double contact_margin=original.type==412?std::max(config_.contact_margin,config_.delirium_margin):config_.contact_margin;
            if(e.contact()) {
                auto& contact=add(e,"contact",e.radius+contact_margin+cage_contact_margin);
                if(original.type==412&&e.type==63&&e.native_motion_scale>1)
                    contact.vel=e.vel*std::clamp(e.native_motion_scale,1.0,5.5);
            }
            if(e.enemy()&&blast_radius(e)>0)add(e,"explosive-npc",blast_radius(e));
            if(e.type==1000) {
                if(!f.player.flying&&((e.variant>=22&&e.variant<=26)||e.variant==56)) {
                    auto& creep=add(e,"creep",std::max(40.0,e.radius));creep.vel={};
                }
                if(e.variant==4||e.variant==62) {
                    add(e,"cage-rock-wave",std::max(20.0,e.radius));
                }
                if(e.variant==31||e.variant==19) {
                    auto& falling=add(e,"falling-impact",e.variant==31?85:36,0,horizon);falling.vel={};
                }
            }
            if(e.type==39&&e.variant==0&&e.state==9&&e.state_frame>=15&&e.state_frame<=60) {
                double start=std::max(0.0,(27-e.state_frame)/30.0);
                for(auto axis:std::vector<Vec>{{1,0},{-1,0},{0,1},{0,-1}}) {
                    auto& warning=add(e,"vis-windup",16,start,std::max(start+.03,(61-e.state_frame)/30.0));
                    warning.shape=Shape::capsule;warning.end=e.pos+axis*1500;
                }
            }
            if(e.type==101&&(anim=="stomparm"||anim=="stompleg")&&e.animation_frame<=13) {
                auto& foot=add(e,"stomp",56,std::max(0.0,(10-e.animation_frame)/30),std::max(.03,(14-e.animation_frame)/30));foot.vel={};
            }
            if(e.type==20&&e.variant==0&&e.collision==0&&(anim=="walk"||anim=="jumpdown")) {
                double rate=config_.native_attack_timing&&original.type==412?std::clamp(e.native_animation_rate,1.0,4.0):1;
                double delay=std::max(0.0,((anim=="walk"?22:32)-e.animation_frame)/(30*rate));
                add(e,"monstro-landing",e.radius+10,delay,delay+.2);
            }
            // Native Delirium failure at frame 2305: Monstro II's JumpDown
            // produces four type-61 flies roughly 50px from its body. Its
            // collision class was already 4 before spawning, so the generic
            // collision==0 jump warning cannot cover this attack. Reserve
            // the spawn area before impact; moving on the spawn tick is late.
            if(e.type==43&&e.variant==0&&e.state==7&&anim=="jumpdown") {
                auto& spawn=add(e,"monstro2-landing-spawns",80,0,horizon);
                spawn.uncertainty=4;
            }
            bool jumping=e.collision==0&&(anim.find("jump")!=std::string::npos||anim.find("leap")!=std::string::npos);
            if(jumping) {
                auto& landing=add(e,"jump-landing",e.radius+(original.type==412?config_.delirium_margin:10),0,horizon);
                landing.uncertainty=4;
            }
            bool attack_windup=(e.type==63||e.type==99)&&e.state==8&&
                (anim.find("attack")!=std::string::npos||anim.find("charge")!=std::string::npos||
                 anim.find("slide")!=std::string::npos||anim.find("roll")!=std::string::npos);
            if(attack_windup) {
                Vec charge_dir=e.vel.norm()>20?e.vel.unit():(f.player.body.pos-e.pos).unit();
                if(charge_dir.norm()>1e-9) {
                    double duration=std::min(horizon,.7);
                    auto& charge=add(e,"charge",e.radius+4,0,duration);
                    charge.shape=Shape::capsule;
                    charge.end=e.pos+charge_dir*std::max(160.0,e.vel.norm()*duration);
                }
            }
            if(e.type==265&&e.state==8&&anim.rfind("roll",0)==0) {
                Vec charge_dir=e.vel.norm()>20?e.vel.unit():(f.player.body.pos-e.pos).unit();
                if(charge_dir.norm()>1e-9) {
                    double duration=std::min(horizon,.7);
                    auto& roll=add(e,"roll",e.radius+config_.contact_margin,0,duration);
                    roll.shape=Shape::capsule;
                    roll.end=e.pos+charge_dir*std::max(220.0,e.vel.norm()*duration);
                }
            }
            if(e.type==265&&e.state==7&&anim=="landing") {
                Vec center=e.target_pos.finite()?e.target_pos:e.pos;
                auto& landing=add(e,"cage-landing-creep",180,0,.55);
                landing.pos=center;landing.vel={};
                double current_radius=5*std::max(0,e.state_frame-5);
                for(double radius=30;radius<=300;radius+=30) {
                    double start=std::max(0.0,(radius-current_radius)/150.0);
                    if(start>horizon)break;
                    auto& wave=add(e,"cage-rock-wave",20,start,std::min(horizon,start+.18));
                    wave.shape=Shape::ring;wave.pos=center;wave.end=center+Vec{radius,0};wave.vel={};
                }
            }
            bool bloat_laser=e.type==68&&e.variant==1&&
                (e.state==9||e.state==10||e.state==13)&&
                anim.rfind("attack",0)==0;
            if(original.type==412&&e.type==68&&e.variant==1) {
                // This form can start its beam with only a few logic ticks
                // of windup. Reserve the three firing lanes while choosing
                // a position, before the already-known attack animation.
                double y=e.pos.y-75,left=60,right=60+(f.grid.width-2)*40;
                auto& left_lane=add(e,"delirium-bloat-lane",40);
                left_lane.vel={};left_lane.shape=Shape::capsule;
                left_lane.pos={left,y};left_lane.end={e.pos.x-20,y};
                auto& right_lane=add(e,"delirium-bloat-lane",40);
                right_lane.vel={};right_lane.shape=Shape::capsule;
                right_lane.pos={e.pos.x+20,y};right_lane.end={right,y};
                for(double dx:{-20.0,20.0}) {
                    auto& down_lane=add(e,"delirium-bloat-lane",40);
                    down_lane.vel={};down_lane.shape=Shape::capsule;
                    down_lane.pos={e.pos.x+dx,y};
                    down_lane.end={e.pos.x+dx,140.0+(f.grid.height-2)*40};
                }
            }
            if(bloat_laser) {
                double left=60,right=60+(f.grid.width-2)*40;
                double bottom=140+(f.grid.height-2)*40;
                // Recorded Delirium/Bloat shot at frame 324: the horizontal
                // beam endpoint is 75 px above the copied NPC, not 40 px.
                // Keep this measured correction scoped to the copied form.
                double beam_y=e.pos.y-(original.type==412?75:40);
                double beam_x=e.pos.x;
                bool horizontal=anim.find("attackalt02")!=std::string::npos||anim.find("attack02")!=std::string::npos;
                if(!horizontal) {
                    for(double dx:{-16.0,16.0}) {
                        auto& warning=add(e,"laser-warning",40,0,.5);
                        warning.shape=Shape::capsule;
                        warning.pos={beam_x+dx,beam_y};
                        warning.end={beam_x+dx,bottom};
                    }
                } else {
                    double y=beam_y;
                    auto& first=add(e,"laser-warning",40,0,.5);
                    first.shape=Shape::capsule;first.pos={left,y};first.end={beam_x-16,y};
                    auto& second=add(e,"laser-warning",40,0,.5);
                    second.shape=Shape::capsule;second.pos={beam_x+16,y};second.end={right,y};
                }
            }
        }
        if(f.clock!=clock_||old==tracks_.end())tracks_[key]={e,f.clock,turn};
    }
    if(f.clock!=clock_) {
        for(auto it=tracks_.begin();it!=tracks_.end();) {
            bool removed=!seen.contains(it->first),died=seen.contains(it->first)&&it->second.entity.dead;
            if((removed||died)&&blast_radius(it->second.entity)>0&&!it->second.entity.friendly) {
                if(detonated_.insert(it->first).second)reserves_.push_back({it->second.entity.pos,blast_radius(it->second.entity),f.clock+4,it->first});
            }
            if(removed||died)it=tracks_.erase(it);else ++it;
        }
    }
    std::erase_if(reserves_,[&](const Reserve&r){return f.clock>=r.expiry;});
    for(const auto&r:reserves_) {
        Threat t;t.pos=r.pos;t.radius=r.radius;t.until=(r.expiry-f.clock)/30.0;t.kind="death-blast";threats_.push_back(t);
    }
    // A nearby imminent explosion can ignite the next bomb. Propagate earliest
    // activation times rather than treating each native countdown independently.
    for(size_t iteration=0;iteration<threats_.size();++iteration) {
        bool changed=false;
        for(auto& dst:threats_)if(dst.kind=="bomb")for(const auto& src:threats_) {
            if(&dst==&src||(src.kind!="bomb"&&src.kind!="death-blast")||src.start>=dst.start)continue;
            if(distance(src.at(src.start),dst.at(src.start))<=src.radius+14) {
                dst.start=src.start;dst.until=std::max(dst.until,src.start+.2);changed=true;
            }
        }
        if(!changed)break;
    }
    clock_=f.clock;
}
Decision Planner::decide(const Frame& f,bool attack_enabled) {
    auto started=std::chrono::steady_clock::now();Decision out;
    if(!f.valid||!f.has_player||!f.grid.valid||f.paused||f.transition||!f.player.body.alive()||!f.player.controls) {
        out.stop=true;out.reason=!f.error.empty()?f.error:"Snapshot, player, terrain or game state unavailable";return out;
    }
    if(!f.player.body.pos.finite()||!f.player.body.vel.finite()||f.grid.cells.size()!=size_t(f.grid.width*f.grid.height)) {
        out.stop=true;out.reason="Invalid frame geometry";return out;
    }
    Aim current=attack_enabled?aim(f,f.player.body.pos):Aim{};
    double enemy_hp=0;
    for(const auto&e:f.entities)if(e.enemy()&&e.alive()&&std::isfinite(e.hp))enemy_hp+=std::max(0.0,e.hp);
    bool hp_progress=navigation_enemy_hp_>=0&&enemy_hp<navigation_enemy_hp_-1e-6;
    if(hp_progress||f.clock<navigation_progress_clock_)navigation_progress_clock_=f.clock;
    navigation_enemy_hp_=enemy_hp;
    if(!current.target)navigation_progress_clock_=f.clock;
    if(current.target&&f.clock-navigation_progress_clock_>=uint32_t(std::max(1,config_.navigation_escalation_frames)))
        navigation_boost_=true;
    double planning_horizon=navigation_boost_?std::max(config_.horizon,config_.navigation_horizon):config_.horizon;
    int planning_stages=navigation_boost_?std::max(config_.stages,config_.navigation_stages):config_.stages;
    int planning_beam_width=navigation_boost_?std::max(config_.beam_width,config_.navigation_beam_width):config_.beam_width;
    build_threats(f,planning_horizon);out.threats=int(threats_.size());
    std::unordered_set<std::string> threat_kinds;
    for(const auto& threat:threats_)threat_kinds.insert(threat.kind);
    out.threat_kinds.assign(threat_kinds.begin(),threat_kinds.end());
    std::sort(out.threat_kinds.begin(),out.threat_kinds.end());
    const auto& player=f.player;Vec initial=player.body.pos;double radius=std::clamp(player.body.radius,4.0,45.0);
    if(!attack_enabled)release_until_=0;
    Vec goal=current.target&&!current.can_fire?current.point:initial;
    // Breadth-first walkable cells provide a first waypoint around rocks and pits.
    if(current.target&&!current.can_fire) {
        int w=f.grid.width,h=f.grid.height;
        auto cell_index=[&](Vec p){int x=std::clamp(int(std::round((p.x-40)/40)),0,w-1),y=std::clamp(int(std::round((p.y-120)/40)),0,h-1);return y*w+x;};
        int source=cell_index(initial);std::vector<int> prev(w*h,-2);std::queue<int> queue;queue.push(source);prev[source]=-1;
        int found=-1;double nearest=1e30;
        while(!queue.empty()) {
            int index=queue.front();queue.pop();Vec p=f.grid.center(index);
            Aim test=aim(f,p);double cost=test.target?test.miss+std::max(0.0,distance(p,test.point)-player.tear_range):1e9;
            if(cost<nearest){nearest=cost;found=index;}
            if(test.can_fire){found=index;break;}
            for(auto [dx,dy]:std::vector<std::pair<int,int>>{{0,-1},{1,0},{0,1},{-1,0}}) {
                int x=index%w+dx,y=index/w+dy;if(x<0||y<0||x>=w||y>=h)continue;
                int n=y*w+x;if(prev[n]!=-2||!f.grid.sweep_clear(index==source?initial:p,f.grid.center(n),radius,player.flying))continue;
                prev[n]=index;queue.push(n);
            }
        }
        if(found>=0&&found!=source){while(prev[found]>=0&&prev[found]!=source)found=prev[found];goal=f.grid.center(found);}
    }
    std::vector<Node> beam(1);beam[0].pos=initial;beam[0].vel=player.body.vel;beam[0].path={initial};
    int stages=std::max(1,planning_stages),steps=std::max(1,int(std::round(planning_horizon/stages/config_.dt)));
    std::array<int,9> terrain_rejected{},pruned_zero_hit{};
    double dt=config_.dt,alpha=1-std::exp(-dt/config_.response);
    for(int stage=0;stage<stages;++stage) {
        std::vector<Node> next;next.reserve(beam.size()*9);
        for(const auto& base:beam)for(int action=0;action<9;++action) {
            Node n=base;Move move=static_cast<Move>(action);if(stage==0)n.first=move;
            if(move!=n.last)n.score-=1.5;n.last=move;
            bool valid=true;
            for(int step=0;step<steps;++step) {
                double t=(stage*steps+step)*dt;Vec want=direction(move)*player.max_speed;
                Vec pos=n.pos;
                if(config_.native_player_motion)advance_native_player_motion(player,pos,n.vel,move,dt);
                else {n.vel=n.vel+(want-n.vel)*alpha;pos=n.pos+n.vel*dt;}
                double before=f.grid.clearance(n.pos,radius,player.flying);
                if(!f.grid.sweep_clear(n.pos,pos,radius,player.flying)) {
                    Vec horizontal{pos.x,n.pos.y},vertical{n.pos.x,pos.y};
                    if(f.grid.sweep_clear(n.pos,horizontal,radius,player.flying)){pos=horizontal;n.vel.y=0;}
                    else if(f.grid.sweep_clear(n.pos,vertical,radius,player.flying)){pos=vertical;n.vel.x=0;}
                    else if(before>=0||f.grid.clearance(pos,radius,player.flying)<=before){pos=n.pos;n.vel={};}
                    if(!f.grid.walkable(pos,radius,player.flying)&&
                       (before>=0||f.grid.clearance(pos,radius,player.flying)<=before)) {valid=false;break;}
                    n.score-=.5;
                }
                double clearance=10000;
                for(const auto& threat:threats_) {
                    double c=threat.clearance(n.pos,pos,t,t+dt,radius);
                    if(threat.soft){n.score-=std::max(0.0,config_.margin-c)*dt;continue;}
                    clearance=std::min(clearance,c);
                    if(c<0){n.hits+=dt*(1+std::min(100.0,-c)/20);n.first_hit=std::min(n.first_hit,t);}
                    n.exposure+=std::max(0.0,config_.margin-c)*dt;
                }
                n.margin=std::min(n.margin,clearance);
                n.end_clearance=std::min(clearance,f.grid.clearance(pos,radius,player.flying));
                n.pos=pos;n.path.push_back(pos);
            }
            if(!valid) {
                if(config_.diagnostics)++terrain_rejected[int(n.first)];
                continue;
            }
            if(current.target&&!current.can_fire)n.score-=distance(n.pos,goal)*.06;
            if(current.can_fire) {
                auto future=aim(f,n.pos);if(future.can_fire)n.score+=5;
            }
            if(!current.target)n.score-=distance(initial,n.pos)*.035;
            n.score-=std::max(0.0,config_.wall_margin-f.grid.clearance(n.pos,radius,player.flying))*config_.wall_weight;
            if(stage==0&&move==last_move_)n.score+=.5;
            next.push_back(std::move(n));
        }
        if(next.empty()) {
            out.stop=true;out.reason="No traversable path";
            if(config_.diagnostics) {
                out.analysis.terrain_rejected=std::accumulate(terrain_rejected.begin(),terrain_rejected.end(),0);
                out.analysis.cause="no-traversable-path";
            }
            return out;
        }
        std::stable_sort(next.begin(),next.end(),[&](const Node&a,const Node&b){return rank_node(a,b,config_.prefer_late_collision);});
        if(next.size()>size_t(planning_beam_width)) {
            if(config_.diagnostics) {
                for(size_t i=size_t(planning_beam_width);i<next.size();++i)
                    if(next[i].hits==0)++pruned_zero_hit[int(next[i].first)];
            }
            next.resize(planning_beam_width);
        }
        beam=std::move(next);
    }
    const auto& chosen=beam.front();out.valid=true;out.safe=chosen.hits==0;out.collision_cost=chosen.hits;
    if(config_.diagnostics) {
        std::array<Node,9> best;
        std::array<bool,9> has_route{};
        std::array<int,9> valid_final{},zero_hit_final{};
        out.analysis.valid_final=int(beam.size());
        out.analysis.terrain_rejected=std::accumulate(terrain_rejected.begin(),terrain_rejected.end(),0);
        out.analysis.pruned_zero_hit=std::accumulate(pruned_zero_hit.begin(),pruned_zero_hit.end(),0);
        for(const auto& node:beam) {
            int index=int(node.first);
            ++valid_final[index];
            if(node.hits==0)++zero_hit_final[index];
            if(!has_route[index]||rank_node(node,best[index],config_.prefer_late_collision)) {
                best[index]=node;
                has_route[index]=true;
            }
        }
        for(const auto& node:beam)if(node.hits==0)++out.analysis.zero_hit_final;
        out.analysis.moves.reserve(9);
        for(int action=0;action<9;++action) {
            MoveEvaluation evaluation;
            evaluation.move=Move(action);
            evaluation.has_route=has_route[action];
            evaluation.terrain_rejected=terrain_rejected[action];
            evaluation.valid_final=valid_final[action];
            evaluation.zero_hit_final=zero_hit_final[action];
            evaluation.pruned_zero_hit=pruned_zero_hit[action];
            if(has_route[action]) {
                const auto& node=best[action];
                evaluation.best.move=node.first;
                evaluation.best.end=node.pos;
                evaluation.best.hits=node.hits;
                evaluation.best.exposure=node.exposure;
                evaluation.best.clearance=node.margin;
                evaluation.best.end_clearance=node.end_clearance;
                evaluation.best.score=node.score;
                evaluation.best.path=sample_path(node.path);
            }
            out.analysis.moves.push_back(std::move(evaluation));
        }
        if(chosen.hits>0) {
            if(out.analysis.zero_hit_final>0)out.analysis.cause="safe-route-not-ranked-first";
            else if(out.analysis.pruned_zero_hit>0)out.analysis.cause="beam-pruning-removed-safe-routes";
            else if(out.analysis.valid_final>0)out.analysis.cause="dynamic-threats";
            else out.analysis.cause="terrain-or-search-exhausted";
        } else if(!current.target)out.analysis.cause="no-targetable-enemy";
        else if(!current.can_fire)out.analysis.cause="seek-firing-position";
        else out.analysis.cause="safe-and-can-fire";
    }
    out.navigation_boost=navigation_boost_;
    out.clearance=chosen.margin;out.end_clearance=chosen.end_clearance;
    out.move=chosen.first;out.target=current.target;
    out.fire=current.can_fire?current.fire:Fire::none;out.path=chosen.path;
    if(out.fire!=Fire::none) {
        bool charged=std::any_of(player.weapons.begin(),player.weapons.end(),[](const Weapon&w){return w.max_charge>0&&w.charge>=w.max_charge;});
        if(charged&&f.clock>=release_until_)release_until_=f.clock+2;
        if(f.clock<release_until_)out.fire=Fire::none;
    }
    if(f.cleared){out.fire=Fire::none;out.target=0;out.reason=threats_.empty()?"Room clear; idle":"Room clear; evade remaining attacks";}
    else out.reason=out.safe?(current.can_fire?"Evade and fire / charge cycle":"Seek safe firing position"):"No zero-risk action; choosing lowest predicted damage";
    if(!player.attack_supported)out.reason="Evade; this weapon requires manual attack";
    if(!attack_enabled)out.reason=out.safe?"Evade only; automatic attack disabled":"Evade only; no collision-free route";
    last_move_=out.move;
    for(const auto&e:f.entities)if(e.address==current.target)target_=identity(e);
    out.planning_ms=std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now()-started).count();
    return out;
}
}
