#include "gamebot/prediction_monitor.hpp"
#include <algorithm>
#include <cmath>
#include <fstream>
#include <limits>

namespace gamebot {
namespace {
double point_segment_distance(Vec point,Vec a,Vec b) {
    const Vec ab=b-a;
    const double length=ab.dot(ab);
    if(length<1e-9)return distance(point,a);
    const double t=std::clamp((point-a).dot(ab)/length,0.0,1.0);
    return distance(point,a+ab*t);
}
PredictedFrame capture_frame(const SimWorld& world) {
    PredictedFrame frame;
    frame.frame=world.frame;
    frame.time=world.time;
    frame.player_pos=world.player.pos;
    frame.player_vel=world.player.vel;
    frame.player_health=world.player.health;
    frame.player_dead=world.player_dead;
    frame.cleared=world.cleared;
    for(const auto& enemy:world.enemies) {
        if(enemy.dead||enemy.hp<=0)continue;
        PredictedEnemy out;
        out.id=enemy.id;out.seed=enemy.seed;out.type=enemy.type;
        out.variant=enemy.variant;out.subtype=enemy.subtype;
        out.state=enemy.state;out.boss_phase=enemy.boss_phase;
        out.pos=enemy.pos;out.vel=enemy.vel;out.hp=enemy.hp;
        out.boss=enemy.boss;out.dead=enemy.dead;
        frame.enemies.push_back(std::move(out));
    }
    for(const auto& projectile:world.projectiles) {
        if(projectile.dead)continue;
        PredictedProjectile out;
        out.id=projectile.id;out.source=projectile.source;
        out.pos=projectile.pos;out.vel=projectile.vel;
        out.spawn_pos=projectile.spawn_pos;out.radius=projectile.radius;
        out.damage=projectile.damage;out.age=projectile.age;
        out.life=projectile.life;out.hostile=projectile.hostile;
        frame.projectiles.push_back(std::move(out));
    }
    for(const auto& hazard:world.hazards) {
        if(hazard.dead)continue;
        PredictedHazard out;
        out.source=hazard.spec.source;out.label=hazard.spec.label;
        out.pos=hazard.spec.pos;out.end=hazard.spec.end;
        out.radius=hazard.spec.radius;out.active_from=hazard.active_from;
        out.active_until=hazard.active_until;out.kind=int(hazard.spec.kind);
        out.shape=int(hazard.spec.shape);out.precision=hazard.spec.precision;
        out.virtual_hazard=hazard.spec.virtual_hazard;out.dead=hazard.dead;
        out.path=hazard.spec.path;
        for(const auto& node:hazard.spec.nodes)out.nodes.push_back(node.pos);
        frame.hazards.push_back(std::move(out));
    }
    return frame;
}
double hazard_distance(Vec point,const PredictedHazard& hazard) {
    double best=std::numeric_limits<double>::infinity();
    if(hazard.shape==int(Shape::capsule)||hazard.shape==int(Shape::polyline))
        best=std::min(best,point_segment_distance(point,hazard.pos,hazard.end));
    if(hazard.nodes.size()>=2)
        for(size_t i=0;i+1<hazard.nodes.size();++i)
            best=std::min(best,point_segment_distance(point,hazard.nodes[i],hazard.nodes[i+1]));
    if(hazard.path.size()>=2)
        for(size_t i=0;i+1<hazard.path.size();++i)
            best=std::min(best,point_segment_distance(point,hazard.path[i],hazard.path[i+1]));
    if(!std::isfinite(best))best=distance(point,hazard.pos);
    return best;
}
}
json PredictedFrame::to_json() const {
    json enemy_rows=json::array();
    for(const auto& enemy:enemies)
        enemy_rows.push_back({{"id",enemy.id},{"seed",enemy.seed},
            {"type",enemy.type},{"variant",enemy.variant},{"subtype",enemy.subtype},
            {"state",enemy.state},{"boss_phase",enemy.boss_phase},
            {"pos",enemy.pos},{"vel",enemy.vel},{"hp",enemy.hp},
            {"boss",enemy.boss},{"dead",enemy.dead}});
    json projectile_rows=json::array();
    for(const auto& projectile:projectiles)
        projectile_rows.push_back({{"id",projectile.id},{"source",projectile.source},
            {"pos",projectile.pos},{"vel",projectile.vel},
            {"spawn_pos",projectile.spawn_pos},{"radius",projectile.radius},
            {"damage",projectile.damage},{"age",projectile.age},
            {"life",projectile.life},{"hostile",projectile.hostile}});
    json hazard_rows=json::array();
    for(const auto& hazard:hazards)
        hazard_rows.push_back({{"source",hazard.source},{"label",hazard.label},
            {"pos",hazard.pos},{"end",hazard.end},{"radius",hazard.radius},
            {"active_from",hazard.active_from},{"active_until",hazard.active_until},
            {"kind",hazard.kind},{"shape",hazard.shape},
            {"precision",precision_name(hazard.precision)},
            {"virtual_hazard",hazard.virtual_hazard},{"dead",hazard.dead}});
    return {{"frame",frame},{"time",time},
        {"player",{{"pos",player_pos},{"vel",player_vel},{"health",player_health},
            {"dead",player_dead}}},
        {"cleared",cleared},{"enemies",enemy_rows},
        {"projectiles",projectile_rows},{"hazards",hazard_rows}};
}
int PredictionTrace::total_frames() const { return int(frames.size()); }
json PredictionTrace::to_json(bool include_root) const {
    json plan_rows=json::array();
    for(const auto& segment:plan)
        plan_rows.push_back({{"move",int(segment.action.move)},
            {"fire",int(segment.action.fire)},{"shoot",segment.action.shoot},
            {"frames",segment.frames}});
    json frame_rows=json::array();
    for(const auto& frame:frames)frame_rows.push_back(frame.to_json());
    json value{{"valid",valid},{"root_signature",root_signature},
        {"root_clock",root_clock},{"root_room",root_room},
        {"actual_hz",actual_hz},{"dt",dt},{"plan",plan_rows},
        {"frames",frame_rows}};
    if(include_root)value["root"]=root.to_json();
    return value;
}
json SourcePredictionError::to_json() const {
    return {{"id",id},{"type",type},{"variant",variant},{"subtype",subtype},
        {"samples",samples},{"position",position},{"velocity",velocity},
        {"hp",hp},{"state",state},{"boss_phase",boss_phase},{"score",score},
        {"trust_error",trust_error},{"low_trust",low_trust}};
}
json PredictionErrorReport::to_json() const {
    json source_rows=json::array();
    for(const auto& source:sources)source_rows.push_back(source.to_json());
    return {{"valid",valid},{"stale",stale},{"expired",expired},
        {"high_error",high_error},{"fallback",fallback},
        {"raw_error",raw_error},{"error_score",error_score},
        {"smoothed_error",smoothed_error},{"reader_error",reader_error},
        {"time_sync_error",time_sync_error},{"model_error",model_error},
        {"player_position_error",player_position_error},
        {"player_velocity_error",player_velocity_error},
        {"overlay_valid",overlay_valid},{"overlay_frame",overlay_frame},
        {"overlay_clock",overlay_clock},{"predicted_player",predicted_player},
        {"actual_player",actual_player},
        {"health_delta",health_delta},{"enemy_position_error",enemy_position_error},
        {"enemy_velocity_error",enemy_velocity_error},
        {"enemy_hp_error",enemy_hp_error},
        {"enemy_state_mismatch",enemy_state_mismatch},
        {"enemy_count_delta",enemy_count_delta},
        {"boss_phase_mismatch",boss_phase_mismatch},
        {"projectile_count_delta",projectile_count_delta},
        {"projectile_position_error",projectile_position_error},
        {"projectile_velocity_error",projectile_velocity_error},
        {"projectile_age_error",projectile_age_error},
        {"hazard_count_delta",hazard_count_delta},
        {"hazard_position_error",hazard_position_error},
        {"hazard_radius_error",hazard_radius_error},
        {"hazard_timing_error",hazard_timing_error},
        {"unknown_hazard_mismatch",unknown_hazard_mismatch},
        {"predicted_damage_cause",predicted_damage_cause},
        {"predicted_damage_source",predicted_damage_source},
        {"sources",source_rows},{"low_trust_sources",low_trust_sources},
        {"reason",reason},{"dump_path",dump_path}};
}
json PredictionFeedback::to_json() const {
    return {{"error_score",error_score},{"smoothed_error",smoothed_error},
        {"high_error",high_error},{"stale",stale},{"fallback",fallback},
        {"horizon_scale",horizon_scale},{"unknown_radius_scale",unknown_radius_scale},
        {"low_trust_sources",low_trust_sources},{"reason",reason}};
}
PredictionErrorMonitor::PredictionErrorMonitor(PredictionMonitorConfig config)
    :config_(std::move(config)) {}
PredictionTrace PredictionErrorMonitor::capture(const WorldStateSnapshot& root,
    const std::vector<SimActionSegment>& plan,int horizon_frames,
    double unknown_radius_scale,std::string* error) const {
    PredictionTrace trace;
    trace.root=root;
    trace.root_clock=root.frame.clock;
    trace.root_room=root.frame.room;
    trace.actual_hz=config_.actual_hz;
    trace.dt=config_.dt;
    trace.plan=plan;
    ForwardSimConfig sim;
    sim.dt=config_.dt;
    sim.horizon_frames=std::max(1,horizon_frames);
    sim.player_shoots=true;
    sim.use_unknown_threats=true;
    sim.use_mechanism_intents=true;
    sim.early_terminate=false;
    sim.danger_map=false;
    sim.unknown_radius_scale=std::max(1.0,unknown_radius_scale);
    ForwardSimulator simulator(sim);
    if(!simulator.restore(root,error))return trace;
    trace.root_signature=sim_world_signature(simulator.world());
    int used=0;
    for(const auto& segment:plan) {
        if(used>=sim.horizon_frames)break;
        const int count=std::min(std::max(1,segment.frames),sim.horizon_frames-used);
        for(int frame=0;frame<count;++frame) {
            simulator.step(segment.action,1);
            ++used;
            trace.frames.push_back(capture_frame(simulator.world()));
            if(simulator.terminal())break;
        }
        if(simulator.terminal())break;
    }
    trace.valid=true;
    if(error)error->clear();
    return trace;
}
void PredictionErrorMonitor::store(PredictionTrace trace) {
    trace_=std::move(trace);
}
void PredictionErrorMonitor::clear() {
    trace_=PredictionTrace{};
    smoothed_error_=0;
    feedback_=PredictionFeedback{};
    last_report_=PredictionErrorReport{};
    last_dump_clock_=0;
    trust_error_.clear();
}
void PredictionErrorMonitor::invalidate(const std::string& reason) {
    trace_=PredictionTrace{};
    smoothed_error_=0;
    trust_error_.clear();
    feedback_=PredictionFeedback{};
    feedback_.stale=true;
    feedback_.reason=reason;
    last_report_=PredictionErrorReport{};
    last_report_.stale=true;
    last_report_.reason=reason;
    last_stale_reason_=reason;
}
void PredictionErrorMonitor::reset() {clear();last_stale_reason_.clear();}
PredictionErrorReport PredictionErrorMonitor::observe(const WorldStateSnapshot& actual) {
    PredictionErrorReport report;
    if(!trace_.valid||trace_.frames.empty()) {
        report.reason="no previous prediction";
        report.stale=true;
        feedback_=PredictionFeedback{};
        feedback_.stale=true;
        feedback_.reason=report.reason;
        last_report_=report;
        return report;
    }
    if(actual.frame.room!=trace_.root_room||actual.frame.clock<trace_.root_clock) {
        report.reason="room or clock discontinuity";
        report.stale=true;report.fallback=true;
        feedback_=PredictionFeedback{};
        feedback_.stale=true;feedback_.fallback=true;
        feedback_.horizon_scale=config_.high_horizon_scale;
        feedback_.unknown_radius_scale=config_.high_unknown_expansion;
        feedback_.reason=report.reason;
        last_report_=report;
        return report;
    }
    const int delta=int(actual.frame.clock)-int(trace_.root_clock);
    if(delta<=0) {
        report.reason="no new game frame";
        report.stale=true;
        feedback_=PredictionFeedback{};
        feedback_.stale=true;
        feedback_.reason=report.reason;
        last_report_=report;
        return report;
    }
    double elapsed=double(delta)/double(std::max(1,config_.actual_hz));
    int index=int(std::llround(elapsed/config_.dt))-1;
    if(index>=int(trace_.frames.size())) {
        report.reason="prediction horizon expired";
        report.stale=true;report.expired=true;
        feedback_=PredictionFeedback{};
        feedback_.stale=true;
        feedback_.reason=report.reason;
        last_report_=report;
        return report;
    }
    index=std::clamp(index,0,int(trace_.frames.size())-1);
    const PredictedFrame& predicted=trace_.frames[size_t(index)];
    report.valid=true;
    report.overlay_valid=true;
    report.overlay_frame=predicted.frame;
    report.overlay_clock=actual.frame.clock;
    report.predicted_player=predicted.player_pos;
    report.actual_player=actual.player.body.pos;
    // Player.
    report.player_position_error=actual.player.body.pos-predicted.player_pos;
    report.player_velocity_error=actual.player.body.vel-predicted.player_vel;
    report.health_delta=std::abs(predicted.player_health-actual.player.health);
    if(report.health_delta>0) {
        double best=std::numeric_limits<double>::infinity();
        for(const auto& hazard:predicted.hazards) {
            const double gap=hazard_distance(actual.player.body.pos,hazard)-hazard.radius-
                actual.player.body.radius;
            if(gap<best) {
                best=gap;
                report.predicted_damage_cause=hazard.label.empty()?
                    "predicted hazard":hazard.label;
                report.predicted_damage_source=hazard.source;
            }
        }
        for(const auto& projectile:predicted.projectiles) {
            if(!projectile.hostile)continue;
            const double gap=distance(actual.player.body.pos,projectile.pos)-
                projectile.radius-actual.player.body.radius;
            if(gap<best) {
                best=gap;
                report.predicted_damage_cause="predicted projectile";
                report.predicted_damage_source=projectile.source;
            }
        }
        if(!std::isfinite(best))report.predicted_damage_cause="unpredicted damage";
    }
    const bool dead_mismatch=predicted.player_dead!=(actual.player.dead||actual.player.health<=0);
    // Enemies are matched by the stable entity address. A missing or extra
    // body is an explicit model error, not an interpolated position error.
    std::map<uint32_t,SourcePredictionError> source_errors;
    std::vector<char> enemy_seen(predicted.enemies.size(),0);
    double enemy_pos=0,enemy_vel=0,enemy_hp=0;
    int enemy_matches=0;
    for(const auto& enemy:actual.enemies) {
        if(!enemy.entity.alive())continue;
        int match=-1;
        for(size_t i=0;i<predicted.enemies.size();++i) {
            if(predicted.enemies[i].id!=enemy.entity.address)continue;
            match=int(i);break;
        }
        if(match<0) {++report.enemy_count_delta;++report.enemy_state_mismatch;continue;}
        enemy_seen[size_t(match)]=1;
        const auto& forecast=predicted.enemies[size_t(match)];
        const double gap=distance(enemy.entity.pos,forecast.pos);
        const double speed_gap=distance(enemy.entity.vel,forecast.vel);
        const double hp_gap=std::abs(enemy.entity.hp-forecast.hp);
        enemy_pos+=gap;enemy_vel+=speed_gap;enemy_hp+=hp_gap;
        ++enemy_matches;
        SourcePredictionError& source=source_errors[enemy.entity.address];
        source.id=enemy.entity.address;source.type=enemy.entity.type;
        source.variant=enemy.entity.variant;source.subtype=enemy.entity.subtype;
        ++source.samples;
        source.position+=gap/std::max(1.0,config_.position_tolerance);
        source.velocity+=speed_gap/std::max(1.0,config_.velocity_tolerance);
        source.hp+=hp_gap/std::max(1.0,std::max(1.0,forecast.hp));
        if(enemy.entity.state!=forecast.state) {
            ++report.enemy_state_mismatch;
            source.state+=1;
        }
        if(enemy.boss_phase_known&&enemy.boss_phase>=1&&
           enemy.boss_phase!=forecast.boss_phase) {
            ++report.boss_phase_mismatch;
            source.boss_phase+=1;
        }
    }
    for(const char seen:enemy_seen)if(!seen)++report.enemy_count_delta;
    if(enemy_matches) {
        report.enemy_position_error=enemy_pos/enemy_matches;
        report.enemy_velocity_error=enemy_vel/enemy_matches;
        report.enemy_hp_error=enemy_hp/enemy_matches;
    }
    // Projectiles do not share stable identities across the Reader and the
    // simulator. Match each real hostile projectile to the nearest predicted
    // one and retain count plus nearest-neighbour error.
    std::vector<char> projectile_seen(predicted.projectiles.size(),0);
    double projectile_pos=0,projectile_vel=0,projectile_age=0;
    int projectile_matches=0;
    for(const auto& projectile:actual.projectiles) {
        if(!projectile.entity.alive()||projectile.role!=ProjectileRole::hostile)continue;
        int match=-1;double best=std::numeric_limits<double>::infinity();
        for(size_t i=0;i<predicted.projectiles.size();++i) {
            if(!predicted.projectiles[i].hostile)continue;
            const double gap=distance(projectile.entity.pos,predicted.projectiles[i].pos);
            if(gap<best) {best=gap;match=int(i);}
        }
        if(match<0||best>config_.projectile_tolerance*3.0) {
            ++report.projectile_count_delta;continue;
        }
        projectile_seen[size_t(match)]=1;
        projectile_pos+=best;
        projectile_vel+=distance(projectile.entity.vel,predicted.projectiles[size_t(match)].vel);
        projectile_age+=std::abs(projectile.entity.age-predicted.projectiles[size_t(match)].age);
        ++projectile_matches;
    }
    for(size_t i=0;i<predicted.projectiles.size();++i)
        if(predicted.projectiles[i].hostile&&!projectile_seen[i])
            ++report.projectile_count_delta;
    if(projectile_matches) {
        report.projectile_position_error=projectile_pos/projectile_matches;
        report.projectile_velocity_error=projectile_vel/projectile_matches;
        report.projectile_age_error=projectile_age/projectile_matches;
    }
    // Real hazards and native danger cells are the observed danger area.
    std::vector<const HazardState*> real_hazards;
    for(const auto& hazard:actual.hazards)
        if(!hazard.virtual_hazard)real_hazards.push_back(&hazard);
    std::vector<Vec> danger_points;
    for(const auto* hazard:real_hazards)danger_points.push_back(hazard->pos);
    for(size_t i=0;i<actual.room.grid.cells.size();++i)
        if(actual.room.grid.cells[i].danger)danger_points.push_back(actual.room.grid.center(int(i)));
    double hazard_pos=0,hazard_radius=0,hazard_timing=0;int hazard_matches=0;
    for(const auto* hazard:real_hazards) {
        double best=std::numeric_limits<double>::infinity();
        const PredictedHazard* nearest=nullptr;
        for(const auto& predicted_hazard:predicted.hazards) {
            const double gap=hazard_distance(hazard->pos,predicted_hazard);
            if(gap<best) {best=gap;nearest=&predicted_hazard;}
        }
        if(nearest&&std::isfinite(best)) {
            hazard_pos+=best;
            hazard_radius+=std::abs(hazard->radius-nearest->radius);
            hazard_timing+=std::abs(hazard->start-nearest->active_from);
            ++hazard_matches;
        }else ++report.hazard_count_delta;
    }
    report.hazard_count_delta+=std::abs(int(predicted.hazards.size())-int(real_hazards.size()));
    if(hazard_matches) {
        report.hazard_position_error=hazard_pos/hazard_matches;
        report.hazard_radius_error=hazard_radius/hazard_matches;
        report.hazard_timing_error=hazard_timing/hazard_matches;
    }
    for(const Vec point:danger_points) {
        bool covered=false;
        for(const auto& hazard:predicted.hazards) {
            const double gap=hazard_distance(point,hazard);
            if(gap<=hazard.radius+config_.hazard_tolerance) {covered=true;break;}
        }
        if(!covered)++report.unknown_hazard_mismatch;
    }
    double raw=0;
    raw+=3.0*double(report.health_delta);
    if(dead_mismatch)raw+=5.0;
    raw+=report.player_position_error.norm()/std::max(1.0,config_.position_tolerance);
    raw+=0.5*report.player_velocity_error.norm()/std::max(1.0,config_.velocity_tolerance);
    raw+=0.75*double(report.enemy_count_delta);
    raw+=0.5*report.enemy_position_error/std::max(1.0,config_.position_tolerance);
    raw+=0.25*report.enemy_velocity_error/std::max(1.0,config_.velocity_tolerance);
    raw+=0.5*report.enemy_hp_error/std::max(1.0,config_.position_tolerance);
    raw+=0.75*double(report.enemy_state_mismatch);
    raw+=1.5*double(report.boss_phase_mismatch);
    raw+=0.5*double(report.projectile_count_delta);
    raw+=report.projectile_position_error/std::max(1.0,config_.projectile_tolerance);
    raw+=0.5*report.projectile_velocity_error/std::max(1.0,config_.velocity_tolerance);
    raw+=0.5*report.projectile_age_error/std::max(0.1,1.0/config_.actual_hz);
    raw+=0.5*double(report.hazard_count_delta);
    raw+=report.hazard_position_error/std::max(1.0,config_.hazard_tolerance);
    raw+=0.25*report.hazard_radius_error/std::max(1.0,config_.hazard_tolerance);
    raw+=0.25*report.hazard_timing_error/std::max(0.01,0.1);
    raw+=1.5*double(report.unknown_hazard_mismatch);
    report.raw_error=raw;
    report.error_score=std::clamp(raw/(raw+std::max(0.1,config_.error_scale)),0.0,1.0);
    const int total_fields=actual.exact_fields+actual.estimated_fields+actual.unknown_fields;
    report.reader_error=total_fields>0?
        (0.5*double(actual.estimated_fields)+double(actual.unknown_fields))/
        double(total_fields):0.0;
    report.time_sync_error=std::clamp(
        std::abs(predicted.time-elapsed)/std::max(1e-6,config_.dt)/4.0,0.0,1.0);
    report.model_error=std::clamp(report.error_score-0.5*report.time_sync_error-
        0.5*report.reader_error,0.0,1.0);
    smoothed_error_=config_.smoothing*smoothed_error_+
        (1.0-config_.smoothing)*report.error_score;
    report.smoothed_error=std::clamp(smoothed_error_,0.0,1.0);
    report.high_error=report.smoothed_error>=config_.fallback_threshold;
    report.fallback=report.high_error;
    report.reason=report.high_error?"prediction error above fallback threshold":
        (report.smoothed_error>=config_.warn_threshold?"prediction error above warning threshold":
        "prediction consistent");
    feedback_=PredictionFeedback{};
    feedback_.error_score=report.error_score;
    feedback_.smoothed_error=report.smoothed_error;
    feedback_.high_error=report.high_error;
    feedback_.fallback=report.fallback;
    if(report.high_error) {
        feedback_.horizon_scale=config_.high_horizon_scale;
        feedback_.unknown_radius_scale=config_.high_unknown_expansion;
    }else if(report.smoothed_error>=config_.warn_threshold) {
        feedback_.horizon_scale=config_.warn_horizon_scale;
        feedback_.unknown_radius_scale=config_.warn_unknown_expansion;
    }
    feedback_.reason=report.reason;
    for(auto&[id,source]:source_errors) {
        source.score=(source.position+source.velocity+source.hp+
            source.state+source.boss_phase)/std::max(1,source.samples);
        auto& trust=trust_error_[id];
        trust=(1.0-config_.trust_smoothing)*trust+
            config_.trust_smoothing*source.score;
        source.trust_error=trust;
        source.low_trust=trust>=config_.low_trust_threshold;
        if(source.low_trust)report.low_trust_sources.push_back(id);
        report.sources.push_back(source);
    }
    feedback_.low_trust_sources=int(report.low_trust_sources.size());
    std::stable_sort(report.sources.begin(),report.sources.end(),
        [](const SourcePredictionError& a,const SourcePredictionError& b) {
            return a.score>b.score;
        });
    if(report.high_error&&config_.dump_failures&&!config_.dump_directory.empty()) {
        const bool cooldown=last_dump_clock_!=0&&
            int(actual.frame.clock)-int(last_dump_clock_)<config_.dump_cooldown_clock;
        if(!cooldown) {
            std::error_code ignored;
            std::filesystem::create_directories(config_.dump_directory,ignored);
            const auto path=config_.dump_directory/
                ("prediction-failure-"+std::to_string(actual.frame.clock)+".json");
            std::ofstream out{path};
            if(out) {
                out<<json{{"clock",actual.frame.clock},{"report",report.to_json()},
                    {"trace",trace_.to_json()},{"predicted",predicted.to_json()},
                    {"actual",actual.to_json()}}.dump(2)<<'\n';
                if(out) {
                    report.dump_path=path.string();
                    last_dump_clock_=actual.frame.clock;
                }
            }
        }
    }
    last_report_=report;
    return report;
}
} // namespace gamebot
