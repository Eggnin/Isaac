#include "gamebot/model.hpp"
#include "gamebot/planner.hpp"
namespace gamebot {
double laser_node_distance_squared(Vec point,const LaserNode& first,const LaserNode& last) {
    auto at=[&](double t) {
        const double u=1-t;
        return first.pos*(u*u*u)+first.outgoing*(3*u*u*t)+last.incoming*(3*u*t*t)+last.pos*(t*t*t);
    };
    double best=std::numeric_limits<double>::infinity();Vec previous=first.pos;
    for(int i=1;i<=5;++i) {
        const Vec next=at(i/5.0),delta=next-previous;
        const double fraction=delta.dot(delta)>0?std::clamp((point-previous).dot(delta)/delta.dot(delta),0.0,1.0):0;
        const Vec chord_relative=point-(previous+delta*fraction);
        if(chord_relative.dot(chord_relative)<best) {
            const Vec relative=point-at((i-1+fraction)/5.0);best=relative.dot(relative);
        }
        previous=next;
    }
    return best;
}
void update_ring_tangents(std::vector<LaserNode>& nodes,double strength) {
    if(nodes.empty())return;
    const bool closed=nodes.size()>=3&&distance(nodes.front().pos,nodes.back().pos)<.1;
    for(size_t i=0;i<nodes.size();++i) {
        const Vec before=i>0?nodes[i].pos-nodes[i-1].pos:closed?nodes[i].pos-nodes[nodes.size()-2].pos:Vec{};
        const Vec after=i+1<nodes.size()?nodes[i+1].pos-nodes[i].pos:closed?nodes[1].pos-nodes[i].pos:Vec{};
        const Vec tangent=(before+after)*(strength*((closed||(i>0&&i+1<nodes.size()))?.5:1));
        nodes[i].incoming=nodes[i].pos-tangent;nodes[i].outgoing=nodes[i].pos+tangent;
    }
}
void update_beam_tangents(std::vector<LaserNode>& nodes) {
    if(nodes.size()<2)return;
    const Vec first_direction=nodes.front().outgoing-nodes.front().pos;
    Vec first_axis;
    if(std::abs(first_direction.x)>std::abs(first_direction.y))first_axis={first_direction.x<0?-1.0:1.0,0};
    else first_axis={0,first_direction.y<0?-1.0:1.0};
    const Vec initial=first_axis*(distance(nodes[0].pos,nodes[1].pos)*.5);
    nodes[0].outgoing=nodes[0].pos+initial;
    nodes[1].incoming=nodes[1].pos-initial;
    for(size_t i=1;i+1<nodes.size();++i) {
        const Vec previous=nodes[i-1].pos-nodes[i].pos,next=nodes[i+1].pos-nodes[i].pos;
        const Vec sum=previous.unit()+next.unit();
        Vec tangent;
        if(std::abs(sum.x)<=std::abs(sum.y))tangent={sum.y<0?-1.0:1.0,0};
        else tangent={0,sum.x<0?1.0:-1.0};
        if(previous.dot(tangent)<0)tangent=tangent*-1;
        if((nodes[i-1].outgoing-nodes[i-1].pos).dot(nodes[i].pos-nodes[i-1].pos)<0)tangent=tangent*2;
        nodes[i+1].incoming=nodes[i].pos-tangent*(next.norm()*.5);
        nodes[i].outgoing=nodes[i].pos+tangent*(previous.norm()*.5);
    }
    Vec last=nodes[nodes.size()-2].pos-nodes.back().pos;
    if(std::abs(last.x)<=std::abs(last.y))last.x=0;else last.y=0;
    nodes.back().incoming=nodes.back().pos+last*.5;
}
void update_beam_homing_nodes(std::vector<LaserNode>& nodes,std::vector<Vec> targets,int mode,double radius,const Grid& room) {
    if(nodes.size()<2||mode==0)return;
    if(mode==1) {
        if(nodes.size()==2) {
            while(nodes.size()<6) {
                bool inserted=false;
                for(size_t i=0;i+1<nodes.size()&&!inserted;++i) {
                    const Vec segment=nodes[i+1].pos-nodes[i].pos;
                    if(segment.dot(segment)<14400)continue;
                    for(size_t j=0;j<targets.size();++j) {
                        const Vec from=targets[j]-nodes[i].pos,to=targets[j]-nodes[i+1].pos;
                        if(laser_node_distance_squared(targets[j],nodes[i],nodes[i+1])>=radius*radius||
                           from.dot(nodes[i].outgoing-nodes[i].pos)<=0||from.dot(from)<=6400||to.dot(to)<=6400)continue;
                        nodes.insert(nodes.begin()+i+1,LaserNode{targets[j],{}, {}});
                        targets.erase(targets.begin()+j);update_beam_tangents(nodes);inserted=true;break;
                    }
                }
                if(!inserted)break;
            }
        }else {
            bool attached=false;
            for(size_t i=1;i+1<nodes.size();++i)for(size_t j=0;j<targets.size();++j)
                if(laser_node_distance_squared(targets[j],nodes[i],nodes[i+1])<radius*radius) {
                    nodes[i].pos=targets[j];targets.erase(targets.begin()+j);attached=true;break;
                }
            if(attached)update_beam_tangents(nodes);
        }
    }else if(mode==4&&nodes.size()==2) {
        for(Vec target:targets)nodes.insert(nodes.end()-1,LaserNode{target,{}, {}});
        update_beam_tangents(nodes);
    }else if(mode==5&&nodes.size()==2) {
        Vec direction=nodes.back().pos-nodes.front().pos;
        if(direction.dot(direction)<.01)return;
        nodes.pop_back();
        while(!targets.empty()) {
            size_t nearest=0;double best=(targets[0]-nodes.back().pos).dot(targets[0]-nodes.back().pos);
            for(size_t i=1;i<targets.size();++i) {
                const Vec delta=targets[i]-nodes.back().pos;const double d=delta.dot(delta);
                if(d<best){best=d;nearest=i;}
            }
            const Vec target_direction=(targets[nearest]-nodes.back().pos).unit();
            const double attraction=(direction.unit().dot(target_direction)+1)*.5;
            const Vec forward=nodes.size()>1?(nodes.back().pos-nodes[nodes.size()-2].pos).unit():direction.unit();
            direction=(forward+target_direction*(.3*attraction)).unit();
            const Vec point=nodes.back().pos+direction*40;
            nodes.push_back({point,{}, {}});
            const Vec clamped=room.clamped_position(point,0);
            if(clamped.x!=point.x||clamped.y!=point.y||nodes.size()>24)break;
        }
        update_ring_tangents(nodes,.4);
    }
}
std::vector<LaserNode> orbit_laser_nodes(Vec origin,Vec endpoint) {
    const Vec delta=endpoint-origin,axis=delta.unit();
    std::vector<LaserNode> nodes;nodes.reserve(9);
    nodes.push_back({origin,origin,origin+axis*50});
    const double start=std::atan2(delta.y,delta.x)-.7;
    for(int i=0;i<6;++i) {
        const double angle=start-double(i)*.3*pi;
        const auto point=[&](double a,double radius){return origin+Vec{std::cos(a),std::sin(a)}*radius;};
        nodes.push_back({point(angle,60),point(angle+.25,63),point(angle-.25,63)});
    }
    nodes.push_back({endpoint-delta*.5,endpoint-delta*.75,endpoint-delta*.25});
    nodes.push_back({endpoint,endpoint-delta*.25,endpoint+delta});
    return nodes;
}
void append_boomerang_laser_nodes(std::vector<LaserNode>& nodes,Vec origin,Vec endpoint,Vec reverse_endpoint,double length) {
    const Vec axis=(endpoint-origin).unit(),forward=axis*length,control=forward*.2;
    Vec start=origin;
    if(nodes.empty())nodes.push_back({origin,origin,origin+control});
    else {
        nodes.pop_back();start=nodes.back().pos;nodes.back().outgoing=start+control;
    }
    const Vec side{-axis.y*30,axis.x*30};
    const Vec left=start+forward*.5-side,middle=start+forward,right=start+forward*.5+side;
    nodes.push_back({left,left-control,left+control});
    nodes.push_back({middle,middle-side,middle+side});
    nodes.push_back({right,right+control,right-control});
    const Vec returning=(right-start)*.5;
    nodes.push_back({start,start+returning,start-returning});
    const Vec tail=axis*(distance(start,reverse_endpoint)*.5);
    nodes.push_back({reverse_endpoint,reverse_endpoint+tail,reverse_endpoint-tail});
}
void append_horizontal_laser_nodes(std::vector<LaserNode>& nodes,Vec origin,Vec axis,Vec corner,Vec side,Vec endpoint) {
    if(nodes.size()>1)nodes.pop_back();
    if(nodes.size()>1)nodes.pop_back();
    if(nodes.empty())nodes.push_back({origin,origin,origin+axis*50});
    nodes.push_back({corner-axis*20,corner-axis*60,corner-axis*5});
    nodes.push_back({corner+side*20,corner+side*5,corner+side*60});
    nodes.push_back({endpoint,endpoint-side*50,endpoint});
}
void append_player_occult_laser_nodes(std::vector<LaserNode>& nodes,Vec origin,Vec endpoint,Vec target) {
    const Vec previous=nodes.size()>=2?nodes[nodes.size()-2].pos:origin;
    const Vec last=nodes.empty()?endpoint:nodes.back().pos;
    const Vec toward_target=(target-previous).unit(),from_target=(last-target).unit(),axis=(last-previous).unit();
    if(nodes.size()>1)nodes.pop_back();
    if(nodes.empty())nodes.push_back({previous,previous,previous+axis*50});
    const Vec turn=previous+Vec{-axis.y,axis.x}+axis*35;
    nodes.push_back({turn,turn-axis*50,turn+toward_target*50});
    nodes.push_back({target,target-axis*50,target+axis*50});
    nodes.push_back({last,last-from_target*50,last});
    update_beam_tangents(nodes);
}
std::vector<Vec> sample_laser_nodes(const std::vector<LaserNode>& nodes,size_t intervals,double* total_length) {
    if(nodes.empty()||intervals==0)return {};
    if(nodes.size()==1) {
        if(total_length)*total_length=0;
        return std::vector<Vec>(intervals+1,nodes.front().pos);
    }
    auto at=[&](size_t segment,double t) {
        const auto& a=nodes[segment];const auto& b=nodes[segment+1];const double u=1-t;
        return a.pos*(u*u*u)+a.outgoing*(3*u*u*t)+b.incoming*(3*u*t*t)+b.pos*(t*t*t);
    };
    std::vector<double> lengths(nodes.size());
    for(size_t i=0;i+1<nodes.size();++i) {
        Vec previous=nodes[i].pos;double length=0;
        for(int step=1;step<=10;++step){const Vec point=at(i,step/10.0);length+=distance(previous,point);previous=point;}
        lengths[i+1]=lengths[i]+length;
    }
    if(total_length)*total_length=lengths.back();
    std::vector<Vec> points;points.reserve(intervals+1);size_t segment=0;
    for(size_t i=0;i<=intervals;++i) {
        const double target=lengths.back()*double(i)/double(intervals);
        while(segment+2<lengths.size()&&lengths[segment+1]<target)++segment;
        const double length=lengths[segment+1]-lengths[segment];
        const double t=length>0?std::clamp((target-lengths[segment])/length,0.0,1.0):0;
        points.push_back(at(segment,t));
    }
    return points;
}
void smooth_laser_samples(std::vector<Vec>& history,const std::vector<Vec>& points,double blend,bool ring,double length) {
    if(history.size()!=points.size()){history=points;return;}
    if(points.size()<2)return;
    if(length<0){length=0;for(size_t i=1;i<points.size();++i)length+=distance(points[i-1],points[i]);}
    if(!ring)blend*=std::clamp(length/200,0.0,1.0);
    for(size_t i=0;i<points.size();++i) {
        const double amount=ring?blend:1-double(i)/double(points.size()-1)*blend;
        history[i]=history[i]+(points[i]-history[i])*amount;
    }
}
void wiggle_laser_samples(std::vector<Vec>& points,Vec origin,Vec endpoint,bool ring,double frame,double phase,double strength) {
    if(points.size()<2)return;
    if(!ring&&points.size()<3)return;
    if(ring) {
        for(size_t i=0;i<points.size();++i) {
            const Vec radial=(points[i]-origin).unit();
            const double angle=double(i)*12*pi/double(points.size()-1)-frame*.1-phase;
            points[i]=points[i]+radial*(std::sin(angle)*10*strength);
        }
    }else {
        const double waves=distance(origin,endpoint)/200;
        for(size_t i=0;i+1<points.size();++i) {
            const Vec axis=(points[i+1]-points[i]).unit(),normal{axis.y,-axis.x};
            double amplitude=20*strength;
            if(i<20)amplitude*=double(i)/20;
            else if(i>points.size()-22)amplitude*=double(points.size()-i+1)/22;
            const double angle=double(i)/double(points.size()-2)*waves*4-frame*.1-phase;
            points[i]=points[i]+normal*(std::sin(angle)*amplitude);
        }
    }
}
double animation_update_rate(const Entity& e) {
    if((e.flags&(1ULL<<32))||(!e.dead&&(e.flags&(1ULL<<5))))return 0;
    return e.animation_speed*e.speed_multiplier;
}
double animation_frame_updates(const Entity& e,double target,bool overlay) {
    const double frame=overlay?e.overlay_animation_frame:e.animation_frame;
    const double delta=target-frame;
    if(delta==0)return 0;
    const double rate=animation_update_rate(e);
    if(!std::isfinite(rate)||rate<=0||
       (delta>0&&e.animation_state_known&&!(overlay?e.overlay_animation_playing:e.animation_playing)))
        return std::numeric_limits<double>::infinity();
    return std::ceil(delta/rate)+(delta>0&&!e.dead?std::max(0,e.animation_update_delay):0);
}
double animation_event_updates(const Entity& e,const std::string& name,bool overlay) {
    const auto found=std::find(e.animation_event_names.begin(),e.animation_event_names.end(),name);
    if(found==e.animation_event_names.end())return -1;
    const size_t id=size_t(found-e.animation_event_names.begin());
    const uint32_t bit=uint32_t(1)<<(id&31);
    if((overlay?e.overlay_animation_events:e.animation_events)&bit)return 0;
    const double rate=animation_update_rate(e);
    if(!std::isfinite(rate)||rate<=0||
       (e.animation_state_known&&!(overlay?e.overlay_animation_playing:e.animation_playing)))return -1;
    const auto& triggers=overlay?e.overlay_animation_triggers:e.animation_triggers;
    const int length=overlay?e.overlay_animation_length:e.animation_length;
    const bool looping=overlay?e.overlay_animation_looping:e.animation_looping;
    const double frame=overlay?e.overlay_animation_frame:e.animation_frame;
    if(length<=0)return -1;
    // Update resets a loop to frame zero and discards overshoot. Advancing a
    // non-looping animation clamps to length-1, then stops. Match those branches.
    double best=std::numeric_limits<double>::infinity();
    for(const auto& trigger:triggers)if(trigger.id==id&&trigger.frame>=0&&trigger.frame<length) {
        if(trigger.frame>frame) {
            const double tick=std::ceil((trigger.frame-frame)/rate);
            // A loop discards the tail if this very update crosses its end.
            if(!looping||frame+tick*rate<length)best=std::min(best,tick);
        }
        if(looping) {
            const double restart=std::max(1.0,std::ceil((length-frame)/rate));
            const double after=std::ceil(trigger.frame/rate);
            if(trigger.frame==0||after*rate<length)best=std::min(best,restart+after);
        }
    }
    return std::isfinite(best)?best+(!e.dead?std::max(0,e.animation_update_delay):0):-1;
}
void advance_native_entity_motion(const Entity& e,Vec& pos,Vec& velocity) {
    const double scale=e.speed_multiplier;
    const double damping=scale==1?e.friction:e.friction/(e.friction+scale-e.friction*scale);
    velocity=velocity*damping;pos=pos+velocity*(scale/30);
}
bool native_damage_queue_kills_next_entity_update(const Entity& e) {
    if(e.type!=4||!e.alive()||e.invulnerable||(e.flags&(1ULL<<14))||e.max_hp<=0||e.damage_queue.empty())return false;
    double hp=e.hp;
    for(const auto& hit:e.damage_queue) {
        if(hit.amount<=0)continue;
        hp-=hit.amount;
        if(hit.flags&1)hp=std::max(0.0,hp); // DAMAGE_NOKILL clamps and continues the queue.
        else if(hp<=0)return true; // BaseUpdate dispatches the Bomb Kill slot after consuming the queue.
    }
    return false;
}
std::vector<NativeAreaPulse> predict_native_effect_pulses(const Frame& frame,const Entity& e,double horizon) {
    std::vector<NativeAreaPulse> pulses;
    if(e.type!=1000||e.variant!=147||!e.alive()||e.damage<=0||(e.flags&(1ULL<<29))||
       frame.player.creep_effect_immune||(frame.player.body.flags&(1ULL<<46))||
       (frame.player.native_grid_collision_known&&frame.player.body.collision==0))return pulses;
    // Entity+0x328 and Game+0x264F8 use the unscaled native frame clock.
    const double real_age=e.birth_known?double(int64_t(frame.clock)-int64_t(e.birth)):e.age;
    double last_update=e.timeout>0?e.timeout/30.0:std::numeric_limits<double>::infinity();
    if(e.animation_state_known) {
        if(!e.animation_playing)last_update=std::min(last_update,1.0/30);
        else if(!e.animation_looping&&e.animation_length>0) {
            const double updates=animation_frame_updates(e,e.animation_length);
            if(std::isfinite(updates))last_update=std::min(last_update,std::max(1.0,updates)/30);
        }
    }
    for(int trigger:{2,4}) {
        const double remaining=trigger-real_age;
        if(remaining<0)continue;
        const double start=remaining/30;
        if(start>horizon||start>last_update)continue;
        Vec pos=e.pos,velocity=e.vel;
        const int whole=int(std::floor(remaining));
        for(int tick=0;tick<whole;++tick)advance_native_entity_motion(e,pos,velocity);
        const double fraction=remaining-whole;
        if(fraction>0) {
            const Vec before=pos;advance_native_entity_motion(e,pos,velocity);
            pos=before+(pos-before)*fraction;
        }
        pulses.push_back({pos,start,1.0/30,20,e.birth_known});
    }
    return pulses;
}
std::vector<NativeProjectileEnvelope> predict_native_monstro_volleys(const Frame& frame,const Entity& e,double horizon) {
    std::vector<NativeProjectileEnvelope> attacks;
    if(e.type!=20||e.variant!=0||!e.alive()||horizon<=0)return attacks;
    const bool jump_windup=e.state==6&&e.animation=="JumpUp";
    const bool radial=(e.state==7&&e.animation=="JumpDown")||jump_windup;
    const bool aimed_state=e.state==8&&e.animation=="Taunt";
    if(!radial&&!aimed_state)return attacks;
    double event_updates=animation_event_updates(e,"Shoot");
    if(jump_windup) {
        const double jump_updates=animation_event_updates(e,"Jump");
        if(jump_updates<0||!std::isfinite(jump_updates))return attacks;
        // State 6 consumes JumpUp's historical Jump event, enters State 7,
        // then JumpDown emits Shoot at animation frame 34.
        event_updates=std::ceil(jump_updates)+34;
    }
    if(event_updates<0||!std::isfinite(event_updates))return attacks;
    const double steps=std::ceil(event_updates);
    const double event_time=steps/30.0;
    const double start=(steps+1)/30.0; // FireBossProjectiles creates tears for the next entity update.
    if(start>horizon)return attacks;
    double until=horizon;
    if(frame.room_type!=16) {
        double height=-23,fall=5-24*(1-1.0/4294967296.0);int life=0;
        do {
            fall=.8*fall+.32+.1;height+=fall;++life;
        } while(height<=-5&&life<512);
        until=std::min(horizon,start+life/30.0);
    }
    Vec origin=e.pos,boss_velocity=e.vel;
    for(int tick=0;tick<int(steps);++tick)advance_native_entity_motion(e,origin,boss_velocity);
    if(radial) {
        attacks.push_back({origin,{},start,until,0,5,18,true});
        return attacks;
    }
    if(!frame.has_player)return attacks;
    Vec aim{};
    if(e.boss_target_mode==-1)aim=frame.player.body.pos+frame.player.body.vel*event_time;
    else if(e.boss_target_mode>=0)aim=origin+e.ai_v2*100;
    else return attacks; // Target lookup state is not present in old captures.
    const Vec delta=aim-origin;
    if(!delta.finite())return attacks;
    if(delta.norm()<1e-6) {
        attacks.push_back({origin,{},start,until,0,5,13,true});
        return attacks;
    }
    Vec aimed=delta;
    const double length=delta.norm();if(length>1)aimed=aimed/length;
    const Vec mean=aimed*210; // native target component: 7 units/tick, Reader uses 30 Hz velocity
    attacks.push_back({origin,mean,start,until,105,5,13,false}); // random vector is bounded by 3.5 native units/tick
    return attacks;
}
std::vector<NativeAreaSlowEffect> predict_native_gish_creep(const Frame& frame,const Entity& e,double horizon) {
    std::vector<NativeAreaSlowEffect> effects;
    if(e.type!=43||e.variant!=1||e.state!=7||e.ai_i1!=0||e.animation!="JumpDown"||
       !e.alive()||e.friendly||horizon<=0)return effects;
    const bool already_present=std::any_of(frame.entities.begin(),frame.entities.end(),[&](const Entity& other) {
        return other.type==1000&&other.variant==26&&other.alive()&&
            (other.spawner==e.address||other.parent==e.address);
    });
    if(already_present)return effects;
    const double event_updates=animation_event_updates(e,"Shoot");
    if(event_updates<0||!std::isfinite(event_updates))return effects;
    const double steps=std::ceil(event_updates);
    const double start=(steps+1)/30.0; // Effect is inserted for a later entity update.
    if(start>horizon)return effects;
    Vec pos=e.pos,velocity=e.vel;
    for(int tick=0;tick<int(steps);++tick)advance_native_entity_motion(e,pos,velocity);
    // Effect 1000.26 has a 1-unit configured size; 40 px is the existing
    // conservative fallback while its source-derived sprite scale/alpha mask
    // is unavailable in a pre-spawn frame.
    effects.push_back({pos,start,horizon,40});
    return effects;
}
double native_explosion_radius_scale(const Frame& frame,const Entity& source) {
    // Native owner lookup walks the parent chain and spawner chain separately.
    for(bool parent_chain:{true,false}) {
        const Entity* current=&source;std::vector<uint32_t> seen;
        while(current) {
            if(current->type==1)return 1;
            if(std::find(seen.begin(),seen.end(),current->address)!=seen.end())break;
            seen.push_back(current->address);
            const uint32_t next=parent_chain?current->parent:current->spawner;
            if(!next)break;
            if(next==frame.player.body.address&&next!=0)return 1;
            const auto it=std::find_if(frame.entities.begin(),frame.entities.end(),
                [&](const Entity& candidate){return candidate.address==next;});
            if(it==frame.entities.end()) {
                if(!parent_chain&&current->spawner_type==1)return 1;
                break;
            }
            current=&*it;
        }
    }
    return frame.player.explosion_reduction_stacks>=3?.5:frame.player.explosion_reduction_stacks==2?.75:1;
}
double native_bomb_explosion_radius(const Entity& bomb) {
    if(!bomb.bomb_explosion_fields_known)return bomb.blast_radius;
    if(bomb.bomb_explosion_damage<=0||bomb.bomb_explosion_radius_scale<=0)return 0;
    const double damage=bomb.bomb_explosion_damage;
    const bool giga=(bomb.bomb_tear_flags[3]&(1u<<23))!=0;
    const double base=(giga||bomb.variant==17||bomb.variant==20)?130:damage>=175?105:damage>140?90:75;
    return base*bomb.bomb_explosion_radius_scale;
}
std::vector<NativeSmokeHazard> predict_native_smoke_hazards(const Frame& frame,const Entity& e,double horizon) {
    std::vector<NativeSmokeHazard> hazards;
    if(e.type!=1000||e.variant!=141||!e.alive()||horizon<=0||frame.player.creep_effect_immune||
       (frame.player.body.flags&(1ULL<<46))||frame.player.body.dead||
       (frame.player.native_grid_collision_known&&frame.player.body.collision==0))return hazards;
    const double scale=e.sprite_scale_known?std::abs(e.sprite_scale.x):1;
    auto advance_alpha=[](double alpha,int timeout) {
        return timeout>=0&&timeout<30?std::max(0.0,alpha-1.0/30):std::min(1.0,alpha+1.0/30);
    };
    if(e.subtype==1) {
        // ExplosionDamage excludes players in native grid collision class 4.
        if((frame.player.native_grid_collision_known&&frame.player.body.grid_collision==4)||
           (frame.player.body.mass_known&&frame.player.body.mass==0))return hazards;
        int blast_tick=1;bool predicted=false;
        if(e.effect_state!=1) {
            if(e.flags&(1ULL<<14))return hazards;
            const int detection_tick=((frame.clock+1)&1u)?2:1;
            if(e.timeout>0&&detection_tick>=e.timeout)return hazards;
            double alpha=e.sprite_alpha_known?e.sprite_alpha:1;
            int timeout=e.timeout;Vec cloud=e.pos,cloud_velocity=e.vel;
            for(int tick=1;tick<=detection_tick;++tick) {
                advance_native_entity_motion(e,cloud,cloud_velocity);
                alpha=advance_alpha(alpha,timeout);
                if(timeout>0)--timeout;
            }
            if(alpha<=.25)return hazards;
            bool ignition=false;
            for(const auto& other:frame.entities) {
                const bool fire=other.type==1000&&(other.variant==1||other.variant==51||other.variant==10||other.variant==52)&&
                    !(other.flags&(1ULL<<16));
                if(!fire&&!(other.type==33&&other.collision!=0)&&!(other.type==9&&other.variant==2))continue;
                if(!other.alive()||!other.pos.finite()||!other.vel.finite())continue;
                Vec point=other.pos,velocity=other.vel;
                for(int tick=0;tick<detection_tick;++tick)advance_native_entity_motion(other,point,velocity);
                const double target_radius=other.type==1000&&other.variant==1?
                    60*(other.sprite_scale_known?std::abs(other.sprite_scale.x):1):other.radius;
                if(distance(cloud,point)<60*scale+target_radius){ignition=true;break;}
            }
            if(!ignition)return hazards;
            blast_tick=detection_tick+1;predicted=true;
        }
        if((e.timeout>0&&blast_tick>e.timeout)||blast_tick/30.0>horizon)return hazards;
        Vec point=e.pos,velocity=e.vel;
        for(int tick=0;tick<blast_tick;++tick)advance_native_entity_motion(e,point,velocity);
        hazards.push_back({point,{},blast_tick/30.0,std::min(horizon,(blast_tick+1)/30.0),
                           75*native_explosion_radius_scale(frame,e),true,predicted,e.sprite_alpha_known});
        return hazards;
    }
    // The hostile nonexplosive branch delivers a zero-damage poison callback.
    if((e.flags&(1ULL<<29))||e.spawner_type==1||frame.player.poison_effect_immune||scale==0)return hazards;
    const int ticks=std::max(1,int(std::ceil(horizon*30)));
    int timeout=e.timeout,first=-1,last=-1;double alpha=e.sprite_alpha_known?e.sprite_alpha:1;
    Vec point=e.pos,velocity=e.vel;std::vector<Vec> path{point};
    for(int tick=1;tick<=ticks;++tick) {
        advance_native_entity_motion(e,point,velocity);path.push_back(point);
        alpha=advance_alpha(alpha,timeout);
        if(alpha>.5){if(first<0)first=tick;last=tick;}
        if(timeout>0&&--timeout==0)break;
    }
    if(first>=0)hazards.push_back({e.pos,std::move(path),first==1?0:first/30.0,
        std::min(horizon,(last+1)/30.0),40*scale,false,false,e.sprite_alpha_known});
    return hazards;
}
void advance_native_player_motion(const Player& player,Vec& pos,Vec& velocity,Move move,double dt,double slow_factor) {
    // J460 ordinary-floor update: integrate the old velocity first, then add
    // input acceleration and apply sqrt(.775) damping on each 60 Hz tick.
    int ticks=std::max(1,int(std::round(dt*60)));
    double fraction=dt*60/ticks;
    double slow_ratio=std::sqrt(slow_factor);
    const double scale=player.body.speed_multiplier;
    const double captured=(player.body.flags&(1ULL<<7))&&player.body.slow_factor>0?std::sqrt(player.body.slow_factor):1;
    const double base=player.body.friction/captured;
    if(base>0&&scale>0) {
        const auto native_damping=[&](double value){return value/(value+scale-value*scale);};
        slow_ratio=native_damping(base*std::sqrt(slow_factor))/native_damping(base);
    }
    float friction=float(std::pow(double(.775f),fraction*.5)*std::pow(slow_ratio,fraction));
    Vec input=direction(move);
    float ax=float(input.x*1.2f*(player.max_speed/260)*fraction);
    float ay=float(input.y*1.2f*(player.max_speed/260)*fraction);
    float x=float(pos.x),y=float(pos.y),vx=float(velocity.x/30),vy=float(velocity.y/30);
    for(int i=0;i<ticks;++i) {
        x+=float(vx*.5*fraction);y+=float(vy*.5*fraction);
        vx=(vx+ax)*friction;vy=(vy+ay)*friction;
    }
    pos={x,y};velocity={double(vx)*30,double(vy)*30};
}
double segment_distance(Vec p,Vec a,Vec b) {
    Vec v=b-a;double t=v.dot(v)>1e-9?std::clamp((p-a).dot(v)/v.dot(v),0.0,1.0):0;
    return distance(p,a+v*t);
}
double moving_clearance(Vec a,Vec b,Vec c,Vec d,double radius) {
    Vec rel=a-c, v=(b-a)-(d-c);double t=v.dot(v)>1e-9?std::clamp(-rel.dot(v)/v.dot(v),0.0,1.0):0;
    return (rel+v*t).norm()-radius;
}
Vec Grid::clamped_position(Vec p,double margin) const {
    Vec q{std::min(std::max(p.x,native_min.x+margin),native_max.x-margin),
        std::min(std::max(p.y,native_min.y+margin),native_max.y-margin)};
    if(shape>=9&&shape<=12) {
        const double inner_x=(shape==9||shape==11)?580+margin:580-margin;
        const double inner_y=(shape<=10)?420+margin:420-margin;
        const bool left=shape==9||shape==11,top=shape<=10;
        const bool missing_x=left?q.x<inner_x:q.x>inner_x;
        const bool missing_y=top?q.y<inner_y:q.y>inner_y;
        if(missing_x&&missing_y) {
            if(std::abs(q.x-inner_x)<std::abs(q.y-inner_y))q.x=inner_x;
            else q.y=inner_y;
        }
    }
    return q;
}
Vec Grid::wrapped_position(Vec p,double margin) const {
    const Vec q=clamped_position(p,margin),delta=q-p;
    const Vec size=native_max-native_min-Vec{margin*2,margin*2};
    const bool horizontal=delta.y==0||(delta.x!=0&&std::abs(delta.x)<std::abs(delta.y));
    if(horizontal) {
        if(delta.x>0)p.x+=size.x;else if(delta.x<0)p.x-=size.x;
    }else {
        if(delta.y>0)p.y+=size.y;else if(delta.y<0)p.y-=size.y;
    }
    return p;
}
bool Grid::walkable(Vec p,double radius,bool flying) const {
    return clearance(p,radius,flying)>=-1e-6;
}
bool Grid::inside_shape(int index) const {
    if(index<0||width<=0||index>=width*height)return false;
    if(!shape)return true; // Older captures carry collision cells without shape metadata.
    int x=index%width,y=index/width;
    if(x<1||x>=width-1||y<1||y>=height-1)return false;
    switch(shape) {
    case 2:case 7:return y>=3&&y<=5;
    case 3:case 5:return x>=5&&x<=9;
    case 9:return y>=8||x>=14;
    case 10:return y>=8||x<=13;
    case 11:return y<=7||x>=14;
    case 12:return y<=7||x<=13;
    default:return shape>=1&&shape<=12;
    }
}
double Grid::clearance(Vec p,double radius,bool flying) const {
    if(!valid||width<3||height<3||cells.size()!=size_t(width*height)||!p.finite())
        return -std::numeric_limits<double>::infinity();
    double result=std::min({
        p.x-radius-60,p.y-radius-140,
        60+(width-2)*40-p.x-radius,140+(height-2)*40-p.y-radius});
    int x0=std::max(0,int(std::floor((p.x-radius-20)/40))),x1=std::min(width-1,int(std::floor((p.x+radius-20)/40)));
    int y0=std::max(0,int(std::floor((p.y-radius-100)/40))),y1=std::min(height-1,int(std::floor((p.y+radius-100)/40)));
    for(int y=y0;y<=y1;++y)for(int x=x0;x<=x1;++x) {
        const auto& c=cells[y*width+x];
        bool blocked=!inside_shape(y*width+x)||c.collision>=2||(c.collision==1&&!flying)||(c.danger&&!flying);
        if(!blocked)continue;
        Vec center_pos=center(y*width+x);
        Vec closest{std::clamp(p.x,center_pos.x-20,center_pos.x+20),std::clamp(p.y,center_pos.y-20,center_pos.y+20)};
        double gap=distance(p,closest);
        if(gap==0)gap=std::max(std::abs(p.x-center_pos.x)-20,std::abs(p.y-center_pos.y)-20);
        result=std::min(result,gap-radius);
    }
    return result;
}
bool Grid::sweep_clear(Vec a,Vec b,double radius,bool flying) const {
    int steps=std::max(1,int(std::ceil(distance(a,b)/4)));
    for(int i=0;i<=steps;++i)if(!walkable(a+(b-a)*(double(i)/steps),radius,flying))return false;
    return true;
}
double Grid::hazard_clearance(Vec p,double radius,bool flying) const {
    if(flying)return 10000;
    double result=10000;
    const int x0=std::max(0,int(std::floor((p.x-radius-20)/40))),x1=std::min(width-1,int(std::floor((p.x+radius-20)/40)));
    const int y0=std::max(0,int(std::floor((p.y-radius-100)/40))),y1=std::min(height-1,int(std::floor((p.y+radius-100)/40)));
    for(int y=y0;y<=y1;++y)for(int x=x0;x<=x1;++x) {
        if(!cells[y*width+x].danger)continue;
        const Vec c=center(y*width+x),closest{std::clamp(p.x,c.x-20,c.x+20),std::clamp(p.y,c.y-20,c.y+20)};
        double gap=distance(p,closest);
        if(gap==0)gap=std::max(std::abs(p.x-c.x)-20,std::abs(p.y-c.y)-20);
        result=std::min(result,gap-radius);
    }
    return result;
}
int Grid::native_collision_at(Vec p) const {
    const int x=int(std::floor((p.x-20)/40)),y=int(std::floor((p.y-100)/40));
    if(x<0||x>=width||y<0||y>=height)return 4;
    const auto& cell=cells[y*width+x];
    return cell.native_collision>=0?cell.native_collision:cell.collision;
}
bool Grid::shot_clear(Vec a,Vec b) const {
    if(!valid||!a.finite()||!b.finite())return false;
    int steps=std::max(1,int(std::ceil(distance(a,b)/4)));
    if(steps>2000)return false;
    for(int i=1;i<steps;++i) {
        Vec p=a+(b-a)*(double(i)/steps);int x=int(std::floor((p.x-20)/40)),y=int(std::floor((p.y-100)/40));
        if(x<0||x>=width||y<0||y>=height)return false;
        const auto& c=cells.at(y*width+x);if(!inside_shape(y*width+x)||c.collision>=2)return false;
    }
    return true;
}
const char* damage_class_name(DamageClass value) {
    switch(value) {
    case DamageClass::contact:return "contact";
    case DamageClass::projectile:return "projectile";
    case DamageClass::jump:return "jump";
    case DamageClass::laser:return "laser";
    case DamageClass::charge:return "charge";
    case DamageClass::explosion:return "explosion";
    case DamageClass::hazard:return "hazard";
    }
    return "contact";
}
const char* damage_timing_name(DamageTiming value) {
    switch(value) {
    case DamageTiming::instant:return "instant";
    case DamageTiming::window:return "window";
    case DamageTiming::periodic:return "periodic";
    case DamageTiming::dot:return "dot";
    }
    return "instant";
}
DamageClass damage_class_of(const std::string& kind) {
    if(kind=="projectile"||kind=="projectile-burst"||kind=="projectile-stream"||
       kind=="projectile-split"||kind=="terrain-debris")return DamageClass::projectile;
    if(kind.rfind("laser",0)==0||kind=="unknown-laser-axis"||kind=="boss-laser-windup")return DamageClass::laser;
    if(kind=="jump-landing"||kind=="monstro-landing"||kind=="adversary-landing"||
       kind=="boss-hop-landing"||kind=="cage-rock-wave"||kind=="falling-impact"||
       kind=="stomp"||kind=="vis-windup"||kind=="generic-jump-landing")return DamageClass::jump;
    if(kind=="charge"||kind=="roll"||kind=="slide-charge"||kind=="squirt-dash"||
       kind=="bumbino-swipe"||kind=="generic-charge")return DamageClass::charge;
    if(kind=="bomb"||kind=="death-blast"||kind=="explosive-npc"||
       kind=="explosive-projectile"||kind=="smoke-explosion"||
       kind=="homing-bomb-space")return DamageClass::explosion;
    if(kind=="creep"||kind=="creep-slow"||kind=="creep-slippery"||
       kind=="hostile-poison-smoke"||kind=="hostile-fire-jet"||kind=="hazardous-fire"||
       kind=="womb-spike"||kind=="cage-landing-creep"||kind=="pitfall")return DamageClass::hazard;
    return DamageClass::contact;
}
DamageTiming damage_timing_of(DamageClass damage_class,const std::string& kind) {
    if(damage_class==DamageClass::laser||damage_class==DamageClass::hazard)return DamageTiming::periodic;
    if(kind=="hostile-poison-smoke")return DamageTiming::dot;
    if(kind=="bomb"||kind=="death-blast"||damage_class==DamageClass::explosion)return DamageTiming::instant;
    return DamageTiming::instant;
}
Vec Threat::at(double t) const {
    if(shape==Shape::stream)return pos+vel*std::max(0.0,t-start);
    if(!motion_path.empty()) {
        double tick=std::max(0.0,t*30.0);
        size_t index=std::min(size_t(tick),motion_path.size()-1);
        if(index+1>=motion_path.size())return motion_path.back();
        if(std::binary_search(motion_breaks.begin(),motion_breaks.end(),index+1))return motion_path[index];
        return motion_path[index]+(motion_path[index+1]-motion_path[index])*(tick-double(index));
    }
    if(std::abs(angular_speed)<1e-5)return pos+vel*t;
    double w=angular_speed;Vec v=rotated(vel,w*t);
    return pos+Vec{(v.y-vel.y)/w,(vel.x-v.x)/w};
}
double Threat::clearance(Vec a,Vec b,double from,double to,double pr) const {
    if(damage_period<=0)return geometry_clearance(a,b,from,to,pr);
    if(to<start||from>until)return 10000;
    const double lo=std::max(from,start),hi=std::min(to,until),span=to-from;
    auto player_at=[&](double time){return span>0?a+(b-a)*((time-from)/span):a;};
    double best=10000;
    for(int index=int(std::floor((lo-damage_phase)/damage_period))-1;;++index) {
        const double begin=damage_phase+index*damage_period;
        if(begin>hi)break;
        const double left=std::max(lo,begin),right=std::min(hi,begin+damage_window);
        if(right<left)continue;
        best=std::min(best,geometry_clearance(player_at(left),player_at(right),left,right,pr));
    }
    return best;
}
double Threat::geometry_clearance(Vec a,Vec b,double from,double to,double pr) const {
    if(to<start||from>until)return 10000;
    double lo=std::max(from,start),hi=std::min(to,until),span=to-from;
    Vec pa=span>0?a+(b-a)*((lo-from)/span):a,pb=span>0?a+(b-a)*((hi-from)/span):b;
    Vec ta=at(lo),tb=at(hi);double inflate=radius+(target_center_only?0:pr)+geometry_margin+
        uncertainty*std::max(0.0,hi-uncertainty_origin);
    if(shape==Shape::disc) {
        if(motion_breaks.empty())return moving_clearance(pa,pb,ta,tb,inflate);
        auto player_at=[&](double time){return span>0?a+(b-a)*((time-from)/span):a;};
        double best=10000,time=lo;
        while(time<hi) {
            const size_t next_index=size_t(std::floor(time*30+1e-8))+1;
            const double end=std::min(hi,next_index/30.0);
            const bool jump=end==next_index/30.0&&std::binary_search(motion_breaks.begin(),motion_breaks.end(),next_index);
            const Vec finish=jump?motion_path[next_index-1]:at(end);
            best=std::min(best,moving_clearance(player_at(time),player_at(end),at(time),finish,inflate));
            if(jump)best=std::min(best,distance(player_at(end),motion_path[next_index])-inflate);
            time=end;
        }
        return hi==lo?distance(pa,ta)-inflate:best;
    }
    auto capsule_gap=[&](Vec ra,Vec rb,Vec offset) {
        double best=std::min({segment_distance(ra,{},offset),segment_distance(rb,{},offset),
            segment_distance({},ra,rb),segment_distance(offset,ra,rb)});
        Vec v=rb-ra;double cross=v.x*offset.y-v.y*offset.x;
        if(std::abs(cross)>1e-9) {
            double t=(-ra.x*offset.y+ra.y*offset.x)/cross;
            double u=(-ra.x*v.y+ra.y*v.x)/cross;
            if(t>=0&&t<=1&&u>=0&&u<=1)best=0;
        }
        return best;
    };
    if(shape==Shape::cone) {
        constexpr double slope=0.1005037815259212; // tan(asin(0.1))
        auto tip_at=[&](double time) {
            if(endpoint_path.empty())return at(time)+(end-pos);
            const double frame=std::max(0.0,time*30);
            const size_t index=std::min(size_t(frame),endpoint_path.size()-1);
            if(index+1>=endpoint_path.size())return endpoint_path.back();
            return endpoint_path[index]+(endpoint_path[index+1]-endpoint_path[index])*(frame-index);
        };
        auto player_at=[&](double time){return span>0?a+(b-a)*((time-from)/span):a;};
        auto triangle_gap=[&](Vec first,Vec last,Vec offset) {
            const double length=offset.norm();
            if(length<=0)return std::min(first.norm(),last.norm());
            const Vec axis=offset/length,normal{-axis.y,axis.x};
            const Vec left=offset+normal*(length*slope),right=offset-normal*(length*slope);
            auto depth=[&](Vec point) {
                const double along=point.dot(axis),side=std::abs(point.dot(normal));
                if(along<0||along>length||side>along*slope)return 0.0;
                return std::min(length-along,(along*slope-side)/std::sqrt(1+slope*slope));
            };
            const double inside=std::max(depth(first),depth(last));
            if(inside>0)return -inside;
            // Clip the moving player's center against the four native cone
            // half-planes so a path crossing the interior registers a hit.
            double enter=0,leave=1;
            auto clip=[&](double a,double b) {
                if(a<0&&b<0)return false;
                const double delta=b-a;
                if(delta>0)enter=std::max(enter,-a/delta);
                else if(delta<0)leave=std::min(leave,-a/delta);
                return enter<=leave;
            };
            const double first_along=first.dot(axis),last_along=last.dot(axis);
            const double first_side=first.dot(normal),last_side=last.dot(normal);
            if(clip(first_along,last_along)&&clip(length-first_along,length-last_along)&&
               clip(first_along*slope-first_side,last_along*slope-last_side)&&
               clip(first_along*slope+first_side,last_along*slope+last_side)&&enter<leave) {
                const double crossing=depth(first+(last-first)*((enter+leave)*.5));
                if(crossing>0)return -crossing;
            }
            return std::min({capsule_gap(first,last,left),
                capsule_gap(first-left,last-left,right-left),capsule_gap(first-right,last-right,right*-1)});
        };
        double best=10000,time=lo;
        do {
            const double finish=std::min(hi,(std::floor(time*30+1e-8)+1)/30);
            const Vec origin0=at(time),origin1=at(finish);
            const Vec offset0=tip_at(time)-origin0,offset1=tip_at(finish)-origin1;
            const Vec middle=(offset0+offset1)*.5;
            const double sweep=distance(offset0,offset1)*.5*std::sqrt(1+slope*slope);
            best=std::min(best,triangle_gap(player_at(time)-origin0,player_at(finish)-origin1,middle)-geometry_margin-uncertainty*hi-sweep);
            time=finish;
        }while(time<hi);
        return best;
    }
    if(shape==Shape::stream) {
        if(emission_velocity.norm()>0) {
            const Vec axis=vel.unit(),normal{-axis.y,axis.x};
            double along_min=1e30,along_max=-1e30,lateral=0;
            for(double time:{lo,hi,std::clamp(emission_end,lo,hi)}) {
                for(double birth:{start,std::min(time,emission_end)}) {
                    for(double speed:{stream_min_speed,vel.norm()}) {
                        const Vec point=emission_velocity*birth+axis*(speed*(time-birth));
                        along_min=std::min(along_min,point.dot(axis));
                        along_max=std::max(along_max,point.dot(axis));
                        lateral=std::max(lateral,std::abs(point.dot(normal)));
                    }
                }
            }
            const Vec tail=pos+axis*along_min,head=pos+axis*along_max;
            const double padding=radius+pr+geometry_margin+lateral+uncertainty*std::max(0.0,hi-start);
            return capsule_gap(pa-tail,pb-tail,head-tail)-padding;
        }
        // Bound every emission time, speed and angular offset over this
        // integration interval. The stream tail stays at its source until
        // the final possible emission, then advances at the minimum speed.
        const Vec head=at(hi);
        const Vec tail=pos+vel.unit()*(stream_min_speed*std::max(0.0,lo-emission_end));
        const double padding=radius+pr+geometry_margin+uncertainty*std::max(0.0,hi-start);
        return capsule_gap(pa-tail,pb-tail,head-tail)-padding;
    }
    if(shape==Shape::capsule) {
        if(!endpoint_path.empty()) {
            auto tip_at=[&](double time) {
                const double frame=std::max(0.0,time*30);
                const size_t i=std::min(size_t(frame),endpoint_path.size()-1);
                if(i+1>=endpoint_path.size())return endpoint_path.back();
                return endpoint_path[i]+(endpoint_path[i+1]-endpoint_path[i])*(frame-i);
            };
            auto player_at=[&](double time){return span>0?a+(b-a)*((time-from)/span):a;};
            double best=10000,time=lo;
            do {
                const double finish=std::min(hi,(std::floor(time*30+1e-8)+1)/30);
                const Vec origin0=at(time),origin1=at(finish);
                const Vec offset0=tip_at(time)-origin0,offset1=tip_at(finish)-origin1;
                const Vec middle=(offset0+offset1)*.5;
                const double sweep=distance(offset0,offset1)*.5;
                best=std::min(best,capsule_gap(player_at(time)-origin0,player_at(finish)-origin1,middle)-inflate-sweep);
                time=finish;
            }while(time<hi);
            return best;
        }
        // Relative motion reduces the moving capsule to a stationary segment.
        return capsule_gap(pa-ta,pb-tb,end-pos)-inflate;
    }
    if(shape==Shape::polyline) {
        if(!geometry_frames.empty()) {
            auto path_index=[&](double time){return std::min(size_t(std::max(0.0,time*30)),geometry_frames.size()-1);};
            auto path_at=[&](double time,size_t vertex) {
                const double frame=std::max(0.0,time*30);
                const size_t index=std::min(size_t(frame),geometry_frames.size()-1);
                const auto& path=geometry_frames[index];
                if(index+1>=geometry_frames.size()||std::binary_search(motion_breaks.begin(),motion_breaks.end(),index+1))return path[vertex];
                const auto& next=geometry_frames[index+1];
                if(path.size()!=next.size())return path[vertex];
                return path[vertex]+(next[vertex]-path[vertex])*(frame-index);
            };
            auto player_at=[&](double time){return span>0?a+(b-a)*((time-from)/span):a;};
            double best=10000,time=lo;
            do {
                const size_t index=size_t(std::floor(time*30+1e-8))+1;
                const double finish=std::min(hi,index/30.0);
                const bool jump=finish==index/30.0&&index<geometry_frames.size()&&
                    (std::binary_search(motion_breaks.begin(),motion_breaks.end(),index)||geometry_frames[index-1].size()!=geometry_frames[index].size());
                const size_t count=std::min(geometry_frames[path_index(time)].size(),geometry_frames[jump?index-1:path_index(finish)].size());
                for(size_t i=1;i<count;++i) {
                    const Vec left0=path_at(time,i-1),left1=path_at(time,i);
                    const Vec right0=jump?geometry_frames[index-1][i-1]:path_at(finish,i-1),right1=jump?geometry_frames[index-1][i]:path_at(finish,i);
                    const Vec first=left1-left0,last=right1-right0;
                    best=std::min(best,capsule_gap(player_at(time)-left0,player_at(finish)-right0,(first+last)*.5)-inflate-distance(first,last)*.5);
                }
                if(jump)for(size_t i=1;i<geometry_frames[index].size();++i)
                    best=std::min(best,segment_distance(player_at(finish),geometry_frames[index][i-1],geometry_frames[index][i])-inflate);
                time=finish;
            }while(time<hi);
            return best;
        }
        if(geometry_path.size()<2)return 10000;
        double best=10000;
        for(size_t i=1;i<geometry_path.size();++i) {
            Vec origin=geometry_path[i-1]-pos;
            best=std::min(best,capsule_gap(pa-ta-origin,pb-tb-origin,geometry_path[i]-geometry_path[i-1]));
        }
        return best-inflate;
    }
    if(shape==Shape::ring&&!ring_radius_path.empty()) {
        auto radius_at=[&](double time) {
            const double frame=std::max(0.0,time*30);
            const size_t index=std::min(size_t(frame),ring_radius_path.size()-1);
            if(index+1>=ring_radius_path.size()||std::binary_search(motion_breaks.begin(),motion_breaks.end(),index+1))return ring_radius_path[index];
            return ring_radius_path[index]+(ring_radius_path[index+1]-ring_radius_path[index])*(frame-index);
        };
        auto player_at=[&](double time){return span>0?a+(b-a)*((time-from)/span):a;};
        auto gap=[&](Vec first,Vec last,double r0,double r1) {
            const Vec velocity=last-first;const double dr=r1-r0;
            const double aa=velocity.dot(velocity),bb=first.dot(velocity),cc=first.dot(first);
            const double begin=first.norm()-r0,end=last.norm()-r1;
            double low=std::min(begin,end),high=std::max(begin,end);
            // norm(relative motion) minus a linearly changing radius is convex.
            // Its only interior minimum follows from setting its derivative to zero.
            if(aa>dr*dr) {
                const double determinant=std::max(0.0,aa*cc-bb*bb);
                const double t=std::clamp((dr*std::sqrt(determinant/(aa-dr*dr))-bb)/aa,0.0,1.0);
                low=std::min(low,(first+velocity*t).norm()-(r0+dr*t));
            }
            return low<=0&&high>=0?-inflate:std::min(std::abs(low),std::abs(high))-inflate;
        };
        double best=10000,time=lo;
        do {
            const size_t index=size_t(std::floor(time*30+1e-8))+1;
            const double finish=std::min(hi,index/30.0);
            const bool jump=finish==index/30.0&&std::binary_search(motion_breaks.begin(),motion_breaks.end(),index)&&index<motion_path.size()&&index<ring_radius_path.size();
            const Vec next=jump?motion_path[index-1]:at(finish);
            const double r1=jump?ring_radius_path[index-1]:radius_at(finish);
            best=std::min(best,gap(player_at(time)-at(time),player_at(finish)-next,radius_at(time),r1));
            if(jump)best=std::min(best,std::abs(distance(player_at(finish),motion_path[index])-ring_radius_path[index])-inflate);
            time=finish;
        }while(time<hi);
        return best;
    }
    double inner=moving_clearance(pa,pb,ta,tb,0),outer=std::max(distance(pa,ta),distance(pb,tb));
    double r=distance(pos,end);
    return r>=inner&&r<=outer?-inflate:std::min(std::abs(inner-r),std::abs(outer-r))-inflate;
}
}
