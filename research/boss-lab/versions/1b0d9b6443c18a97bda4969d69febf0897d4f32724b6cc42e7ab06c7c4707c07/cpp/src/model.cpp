#include "gamebot/model.hpp"
#include "gamebot/planner.hpp"
namespace gamebot {
bool advance_native_consecration(int& counter,bool queued,uint32_t frame) {
    // Ordinary, unfrozen Home player: native update 0x783a0c / 0x783d52.
    if(queued)++counter;
    else if(frame%3==0)counter=0;
    if(counter>30){counter-=30;return true;}
    return false;
}
void advance_native_player_motion(const Player& player,Vec& pos,Vec& velocity,Move move,double dt) {
    // Ordinary-floor native movement: position integrates the old velocity,
    // then input acceleration and sqrt(.775) damping apply at each 60Hz tick.
    // Two ticks therefore advance a 30Hz game observation.
    int ticks=std::max(1,int(std::round(dt*60)));
    double fraction=dt*60/ticks;
    float friction=float(std::pow(double(.775f),fraction*.5));
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
bool Grid::walkable(Vec p,double radius,bool flying) const {
    return clearance(p,radius,flying)>=-1e-6;
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
        bool blocked=c.collision>=2||(c.collision==1&&!flying)||(c.danger&&!flying);
        if(!blocked)continue;
        Vec center_pos=center(y*width+x);
        Vec closest{std::clamp(p.x,center_pos.x-20,center_pos.x+20),std::clamp(p.y,center_pos.y-20,center_pos.y+20)};
        result=std::min(result,distance(p,closest)-radius);
    }
    return result;
}
bool Grid::sweep_clear(Vec a,Vec b,double radius,bool flying) const {
    int steps=std::max(1,int(std::ceil(distance(a,b)/4)));
    for(int i=0;i<=steps;++i)if(!walkable(a+(b-a)*(double(i)/steps),radius,flying))return false;
    return true;
}
bool Grid::shot_clear(Vec a,Vec b) const {
    if(!valid||!a.finite()||!b.finite())return false;
    int steps=std::max(1,int(std::ceil(distance(a,b)/4)));
    if(steps>2000)return false;
    for(int i=1;i<steps;++i) {
        Vec p=a+(b-a)*(double(i)/steps);int x=int(std::floor((p.x-20)/40)),y=int(std::floor((p.y-100)/40));
        if(x<0||x>=width||y<0||y>=height)return false;
        const auto& c=cells.at(y*width+x);if(c.collision>=2)return false;
    }
    return true;
}
Vec Threat::at(double t) const {
    if(!motion_path.empty()) {
        double tick=std::max(0.0,t*30.0);
        size_t i=std::min(size_t(tick),motion_path.size()-1);
        if(i+1>=motion_path.size())return motion_path.back();
        return motion_path[i]+(motion_path[i+1]-motion_path[i])*(tick-double(i));
    }
    if(std::abs(angular_speed)<1e-5)return pos+vel*t;
    double w=angular_speed;Vec v=rotated(vel,w*t);
    return pos+Vec{(v.y-vel.y)/w,(vel.x-v.x)/w};
}
double Threat::clearance(Vec a,Vec b,double from,double to,double pr) const {
    if(to<start||from>until)return 10000;
    double lo=std::max(from,start),hi=std::min(to,until),span=to-from;
    Vec pa=span>0?a+(b-a)*((lo-from)/span):a,pb=span>0?a+(b-a)*((hi-from)/span):b;
    Vec ta=at(lo),tb=at(hi);double inflate=radius+pr+uncertainty*hi;
    if(shape==Shape::disc)return moving_clearance(pa,pb,ta,tb,inflate);
    if(shape==Shape::capsule) {
        Vec offset=end-pos;
        // Relative motion reduces the moving capsule to a stationary segment.
        Vec ra=pa-ta,rb=pb-tb;
        double best=std::min({segment_distance(ra,{},offset),segment_distance(rb,{},offset),
            segment_distance({},ra,rb),segment_distance(offset,ra,rb)});
        Vec v=rb-ra;double cross=v.x*offset.y-v.y*offset.x;
        if(std::abs(cross)>1e-9) {
            double t=(-ra.x*offset.y+ra.y*offset.x)/cross;
            double u=(-ra.x*v.y+ra.y*v.x)/cross;
            if(t>=0&&t<=1&&u>=0&&u<=1)best=0;
        }
        return best-inflate;
    }
    double inner=moving_clearance(pa,pb,ta,tb,0),outer=std::max(distance(pa,ta),distance(pb,tb));
    double r=distance(pos,end);
    return r>=inner&&r<=outer?-inflate:std::min(std::abs(inner-r),std::abs(outer-r))-inflate;
}
}
