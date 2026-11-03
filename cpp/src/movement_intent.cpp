#include "gamebot/movement_intent.hpp"
#include "gamebot/projectile_motion.hpp"
#include <algorithm>
#include <cmath>
#include <limits>

namespace gamebot {
namespace {
bool hostile_projectile(const ProjectileState& projectile) {
    return projectile.role==ProjectileRole::hostile&&projectile.entity.alive();
}
double projectile_clearance(const ProjectileState& projectile,Vec point,
    double time,double player_radius,int room_type) {
    if(!hostile_projectile(projectile))return 1e9;
    const Entity& entity=projectile.entity;
    if(!projectile_can_damage(entity,entity.height,room_type))return 1e9;
    const Vec projected=entity.pos+entity.vel*time;
    return distance(projected,point)-entity.radius-player_radius;
}
double hazard_geometry_clearance(const HazardState& hazard,Vec point,
    double time,double player_radius) {
    Vec position=hazard.pos;
    if(hazard.vel.finite())position=position+hazard.vel*time;
    double best=distance(position,point);
    if(hazard.shape==Shape::capsule||hazard.shape==Shape::polyline) {
        Vec end=hazard.end;
        if(hazard.vel.finite())end=end+hazard.vel*time;
        best=std::min(best,segment_distance(point,position,end));
    }
    if(hazard.shape==Shape::polyline) {
        for(size_t i=0;i+1<hazard.path.size();++i)
            best=std::min(best,segment_distance(point,hazard.path[i],
                hazard.path[i+1]));
        for(size_t i=0;i+1<hazard.nodes.size();++i)
            best=std::min(best,segment_distance(point,hazard.nodes[i].pos,
                hazard.nodes[i+1].pos));
    }
    return best-hazard.radius-player_radius;
}
bool threat_enemy(const EnemyState& enemy) {
    const Entity& entity=enemy.entity;
    if(!entity.alive())return false;
    if(entity.contact())return true;
    for(const auto& intent:enemy.intents)
        if(intent.primitive==AttackPrimitive::charge||
           intent.primitive==AttackPrimitive::laser||
           intent.primitive==AttackPrimitive::aimed_projectile||
           intent.primitive==AttackPrimitive::radial_projectile||
           intent.primitive==AttackPrimitive::spread_projectile)
            return true;
    return false;
}
double enemy_clearance(const EnemyState& enemy,Vec point,double time,
    double player_radius) {
    if(!threat_enemy(enemy))return 1e9;
    const Entity& entity=enemy.entity;
    const Vec projected=entity.pos+entity.vel*time;
    return distance(projected,point)-entity.radius-player_radius;
}
double threat_clearance_at(const WorldStateSnapshot* snapshot,Vec point,
    double time,double player_radius,int room_type) {
    if(!snapshot)return 1e9;
    double best=1e9;
    for(const auto& projectile:snapshot->projectiles)
        best=std::min(best,projectile_clearance(projectile,point,time,
            player_radius,room_type));
    for(const auto& hazard:snapshot->hazards)
        if(hazard.until<=1e-9||time<=hazard.until+1e-9)
            best=std::min(best,hazard_geometry_clearance(hazard,point,time,
                player_radius));
    for(const auto& enemy:snapshot->enemies)
        best=std::min(best,enemy_clearance(enemy,point,time,player_radius));
    return best;
}
struct ThreatProbe {
    bool immediate{};
    bool preemptive{};
    double clearance{1e9};
    std::string reason{"clear"};
};
ThreatProbe probe_threats(const MovementIntentInput& input,
    const MovementIntentConfig& config) {
    ThreatProbe probe;
    const double player_radius=input.frame?
        std::max(1.0,input.frame->player.body.radius):10.0;
    const int room_type=input.frame?input.frame->room_type:0;
    const double now=0.0;
    if(input.plan) {
        if(input.plan->emergency||input.plan->stats.emergency) {
            probe.immediate=true;probe.reason="mpc-emergency";
        }
        if(input.plan->safety.evaluated) {
            probe.clearance=std::min(probe.clearance,
                input.plan->safety.min_clearance);
            if(input.plan->safety.in_danger) {
                probe.immediate=true;probe.reason="safety-in-danger";
            }else if(input.plan->safety.min_clearance<=config.escape_clearance) {
                probe.immediate=true;probe.reason="safety-imminent-clearance";
            }else if(input.plan->safety.min_clearance<=config.preemptive_clearance) {
                probe.preemptive=true;probe.reason="safety-preemptive-clearance";
            }
        }
    }
    if(input.danger&&input.frame) {
        const int cell=input.danger->cell_at(input.frame->player.body.pos);
        if(input.danger->danger_at_cell(cell,0)) {
            probe.immediate=true;probe.reason="temporal-danger-now";
        }else if(input.danger->warning_at_cell(cell,0)) {
            probe.preemptive=true;probe.reason="temporal-danger-warning";
        }
    }
    if(input.snapshot) {
        const Vec player=input.frame?input.frame->player.body.pos:
            input.plan?input.plan->combat.player_position:Vec{};
        const Vec velocity=input.frame?input.frame->player.body.vel:Vec{};
        probe.clearance=std::min(probe.clearance,
            threat_clearance_at(input.snapshot,player,now,player_radius,
                room_type));
        for(const auto& projectile:input.snapshot->projectiles) {
            if(!hostile_projectile(projectile))continue;
            const Vec rel=projectile.entity.pos-player;
            const Vec v=projectile.entity.vel-velocity;
            const double current=projectile_clearance(projectile,player,0.0,
                player_radius,room_type);
            if(current<=config.escape_clearance) {
                probe.immediate=true;probe.reason="projectile-contact-now";
            }else if(current<=config.preemptive_clearance) {
                probe.preemptive=true;probe.reason="projectile-near";
            }
            const double vv=v.dot(v);
            if(vv<=1e-9)continue;
            const double t=std::clamp(-rel.dot(v)/vv,0.0,
                config.preemptive_horizon_frames/60.0);
            const double clearance=projectile_clearance(projectile,player,t,
                player_radius,room_type);
            probe.clearance=std::min(probe.clearance,clearance);
            if(clearance<=config.escape_clearance&&
               t<=config.escape_horizon_frames/60.0) {
                probe.immediate=true;probe.reason="projectile-imminent-impact";
            }else if(clearance<=config.preemptive_clearance) {
                probe.preemptive=true;probe.reason="projectile-preemptive";
            }
        }
        for(const auto& hazard:input.snapshot->hazards) {
            if(hazard.until>0&&hazard.until<now+1e-9)continue;
            const double clearance=hazard_geometry_clearance(hazard,player,now,
                player_radius);
            probe.clearance=std::min(probe.clearance,clearance);
            if(clearance<=config.escape_clearance&&hazard.start<=now+1e-9) {
                probe.immediate=true;probe.reason="hazard-contact-now";
            }else if(clearance<=config.preemptive_clearance&&
                     hazard.start<=config.preemptive_horizon_frames/60.0) {
                probe.preemptive=true;probe.reason="hazard-warning";
            }
        }
        for(const auto& enemy:input.snapshot->enemies) {
            if(!threat_enemy(enemy))continue;
            const Vec rel=enemy.entity.pos-player;
            const Vec v=enemy.entity.vel-velocity;
            const double clearance=rel.norm()-enemy.entity.radius-
                player_radius;
            probe.clearance=std::min(probe.clearance,clearance);
            const double vv=v.dot(v);
            const double closing=vv>1e-9?-rel.dot(v)/vv:1e9;
            if(enemy.entity.contact()&&closing>=0.0&&
               closing<=config.escape_horizon_frames/60.0) {
                probe.immediate=true;probe.reason="contact-imminent";
            }else if(enemy.entity.contact()&&closing>=0.0&&
                     closing<=config.preemptive_horizon_frames/60.0) {
                probe.preemptive=true;probe.reason="contact-closing";
            }
            for(const auto& intent:enemy.intents) {
                if(intent.primitive==AttackPrimitive::unknown)continue;
                if(intent.trigger_time<0.0||
                   intent.trigger_time>config.preemptive_horizon_frames/60.0)
                    continue;
                const double reach=std::max(enemy.entity.radius,
                    intent.length>0?intent.length:enemy.entity.radius+120.0);
                if(clearance<=reach) {
                    probe.preemptive=true;
                    probe.reason=intent.trigger_time<=
                        config.escape_horizon_frames/60.0?
                        "attack-windup-imminent":"attack-windup";
                }
            }
        }
    }
    return probe;
}
struct EvasiveChoice {
    Move move{Move::stay};
    double clearance{1e9};
    double benefit{};
};
EvasiveChoice choose_evasive(const MovementIntentInput& input,
    const MovementIntentConfig& config,int horizon_frames) {
    EvasiveChoice choice;
    if(!input.frame)return choice;
    const auto& frame=*input.frame;
    const double player_radius=std::max(1.0,frame.player.body.radius);
    const int room_type=frame.room_type;
    const double dt=double(std::max(1,horizon_frames))/60.0;
    auto evaluate_move=[&](Move move) {
        Vec position=frame.player.body.pos;
        Vec velocity=frame.player.body.vel;
        Player player=frame.player;
        advance_native_player_motion(player,position,velocity,move,dt);
        if(move!=Move::stay&&frame.grid.valid) {
            if(!frame.grid.sweep_clear(frame.player.body.pos,position,
                    player_radius,frame.player.flying))
                return std::pair<Move,double>{move,-1e9};
            if(frame.grid.clearance(position,player_radius,
                    frame.player.flying)<-1e-6)
                return std::pair<Move,double>{move,-1e9};
        }
        double best=1e9;
        for(int part=1;part<=3;++part) {
            const double fraction=double(part)/3.0;
            const Vec point=frame.player.body.pos+
                (position-frame.player.body.pos)*fraction;
            best=std::min(best,threat_clearance_at(input.snapshot,point,
                dt*fraction,player_radius,room_type));
        }
        return std::pair<Move,double>{move,best};
    };
    const auto stay=evaluate_move(Move::stay);
    choice.move=Move::stay;
    choice.clearance=stay.second;
    for(int index=1;index<9;++index) {
        const Move move=static_cast<Move>(index);
        const auto result=evaluate_move(move);
        if(result.second>choice.clearance+1e-6) {
            choice.move=move;
            choice.clearance=result.second;
        }
    }
    choice.benefit=std::clamp(choice.clearance-stay.second,0.0,1000.0);
    return choice;
}
struct RepositionChoice {
    bool found{};
    Move move{Move::stay};
    double benefit{};
};
RepositionChoice choose_reposition(const MovementIntentInput& input,
    const MovementIntentConfig& config) {
    RepositionChoice choice;
    if(!input.plan)return choice;
    const auto& plan=*input.plan;
    if(plan.candidates.empty())return choice;
    const auto& root_safety=plan.safety;
    const auto& root_combat=plan.combat;
    const bool target_out_of_range=root_combat.valid&&
        (!root_combat.target_in_range||!root_combat.target_line_clear);
    const bool need_reposition=root_combat.valid&&
        root_combat.objective.need_reposition;
    double threshold=config.reposition_threshold;
    if(target_out_of_range||need_reposition)threshold*=0.60;
    if(root_safety.corner_risk>config.reposition_corner_gain||
       root_safety.dead_end_risk>0.35)threshold*=0.70;
    for(const auto& candidate:plan.candidates) {
        if(candidate.action.move==Move::stay)continue;
        const auto& safety=candidate.safety;
        const auto& branch=candidate.branch;
        double benefit=0;
        if(root_safety.evaluated&&safety.evaluated) {
            if(std::isfinite(root_safety.min_clearance)&&
               std::isfinite(safety.min_clearance))
                benefit+=std::clamp(safety.min_clearance-
                    root_safety.min_clearance,-50.0,50.0)*0.20;
            benefit+=std::clamp(safety.reachable_area-
                root_safety.reachable_area,-1.0,1.0)*20.0;
            benefit+=std::clamp(double(safety.escape_directions-
                root_safety.escape_directions),-8.0,8.0)*0.75;
            benefit+=std::clamp(root_safety.corner_risk-
                safety.corner_risk,-1.0,1.0)*10.0;
            if(safety.safe&&!root_safety.safe)benefit+=10.0;
        }
        if(root_combat.valid&&branch.valid) {
            benefit+=std::clamp(branch.attack_reachability-
                root_combat.objective.attack_reachability,-1.0,1.0)*10.0;
            benefit+=std::clamp(branch.attack_opportunity-
                root_combat.objective.attack_opportunity,-1.0,1.0)*6.0;
            benefit+=std::clamp(root_combat.target_distance-
                branch.target_distance,-150.0,150.0)*0.04;
            benefit+=std::clamp(branch.positioning-
                root_combat.objective.target_position_gain,-1.0,1.0)*5.0;
            benefit-=std::clamp(branch.exposure-
                root_combat.objective.exposure_cost,-1.0,1.0)*5.0;
            if(branch.need_reposition)benefit+=6.0;
        }
        if(benefit>choice.benefit) {
            choice.found=true;
            choice.move=candidate.action.move;
            choice.benefit=benefit;
        }
    }
    if(choice.found&&choice.benefit<threshold)choice.found=false;
    return choice;
}
bool directional(Move move) {return move!=Move::stay;}
bool opposite(Move a,Move b) {
    if(!directional(a)||!directional(b))return false;
    return direction(a).dot(direction(b))<-0.5;
}
} // namespace

const char* movement_intent_name(MovementIntent value) {
    switch(value) {
    case MovementIntent::hold:return "hold";
    case MovementIntent::reposition:return "reposition";
    case MovementIntent::preemptive_dodge:return "preemptive_dodge";
    case MovementIntent::escape:return "escape";
    }
    return "hold";
}
MovementIntentConfig::MovementIntentConfig() {
    escape_search.horizon_frames=18;
    escape_search.step_frames=6;
    escape_search.max_layers=3;
    escape_search.max_states_per_layer=8;
    escape_search.max_total_states=128;
    escape_search.max_memory_bytes=4u*1024u*1024u;
    escape_search.max_representative_paths=1;
    escape_search.danger.max_slices=8;
}
MovementIntentEvaluator::MovementIntentEvaluator(MovementIntentConfig config)
    :config_(std::move(config)) {
    config_.escape_search.horizon_frames=std::max(6,
        config_.escape_search.horizon_frames);
    config_.escape_search.step_frames=std::max(1,
        config_.escape_search.step_frames);
    config_.escape_search.max_layers=std::clamp(
        config_.escape_search.max_layers,1,6);
    config_.escape_search.max_states_per_layer=std::clamp(
        config_.escape_search.max_states_per_layer,1,16);
    config_.escape_search.max_total_states=std::clamp(
        config_.escape_search.max_total_states,32,512);
    config_.escape_search.max_representative_paths=1;
    config_.escape_search.max_seconds=0;
    config_.escape_search.danger.max_slices=std::max(8,
        config_.escape_search.danger.max_slices);
}
json MovementIntentEvaluation::to_json() const {
    return {{"movement_intent",movement_intent_name(intent)},
        {"requested_move",int(requested_move)},
        {"executed_move",int(executed_move)},
        {"movement_suppressed",movement_suppressed},
        {"suppression_reason",suppression_reason},
        {"direction_switch_count",direction_switch_count},
        {"predicted_movement_benefit",predicted_movement_benefit},
        {"hold_benefit",hold_benefit},{"threat_clearance",threat_clearance},
        {"projectiles_seen",projectiles_seen},
        {"damageable_projectiles",damageable_projectiles},
        {"nearest_projectile_clearance",nearest_projectile_clearance},
        {"danger_now",danger_now},{"temporal_escape_used",temporal_escape_used},
        {"reason",reason}};
}
MovementIntentEvaluation MovementIntentEvaluator::evaluate(
    const MovementIntentInput& input) const {
    MovementIntentEvaluation out;
    out.hold_benefit=0;
    out.requested_move=input.decision?input.decision->move:Move::stay;
    out.executed_move=out.requested_move;
    if(!config_.enabled) {
        out.reason="disabled";
        return out;
    }
    if(!input.frame) {
        out.reason="no-frame";
        return out;
    }
    if(input.snapshot) {
        const int room_type=input.frame->room_type;
        const double player_radius=std::max(1.0,
            input.frame->player.body.radius);
        out.projectiles_seen=int(input.snapshot->projectiles.size());
        for(const auto& projectile:input.snapshot->projectiles) {
            if(!hostile_projectile(projectile))continue;
            if(!projectile_can_damage(projectile.entity,projectile.entity.height,
                    room_type))continue;
            ++out.damageable_projectiles;
            out.nearest_projectile_clearance=std::min(
                out.nearest_projectile_clearance,
                projectile_clearance(projectile,input.frame->player.body.pos,
                    0.0,player_radius,room_type));
        }
    }
    const auto threat=probe_threats(input,config_);
    out.threat_clearance=threat.clearance;
    out.danger_now=threat.immediate;
    if(threat.immediate) {
        out.intent=MovementIntent::escape;
        out.reason=threat.reason;
        if(input.escape_reachability) {
            apply_temporal_escape(*input.escape_reachability,out);
        }
        if(!out.temporal_escape_used) {
            if(input.plan&&input.plan->emergency&&
               input.plan->first.move!=Move::stay) {
                out.requested_move=input.plan->first.move;
                out.reason+="+mpc-emergency-move";
            }else {
                const auto choice=choose_evasive(input,config_,
                    std::max(1,config_.escape_search.step_frames));
                out.requested_move=choice.move;
                out.predicted_movement_benefit=choice.benefit;
                out.reason+="+local-escape-fallback";
            }
        }
        out.executed_move=out.requested_move;
        return out;
    }
    if(threat.preemptive) {
        const auto choice=choose_evasive(input,config_,
            int(std::lround(config_.preemptive_horizon_frames)));
        out.predicted_movement_benefit=choice.benefit;
        out.reason=threat.reason;
        if(choice.move!=Move::stay&&choice.benefit>=config_.dodge_threshold) {
            out.intent=MovementIntent::preemptive_dodge;
            out.requested_move=choice.move;
        }else {
            out.intent=MovementIntent::hold;
            out.requested_move=Move::stay;
            out.reason+="+no-dodge-benefit";
        }
        out.executed_move=out.requested_move;
        return out;
    }
    const bool has_threat=input.snapshot&&
        (!input.snapshot->enemies.empty()||
         !input.snapshot->projectiles.empty()||
         !input.snapshot->hazards.empty());
    const bool terrain_risk=input.plan&&input.plan->safety.evaluated&&
        (input.plan->safety.corner_risk>config_.reposition_corner_gain||
         input.plan->safety.dead_end_risk>0.35||
         input.plan->safety.escape_directions==0);
    if(!has_threat&&!terrain_risk) {
        out.intent=MovementIntent::hold;
        out.requested_move=Move::stay;
        out.reason="quiet-no-threat";
        out.executed_move=out.requested_move;
        return out;
    }
    const auto reposition=choose_reposition(input,config_);
    out.predicted_movement_benefit=reposition.benefit;
    if(reposition.found&&reposition.move!=Move::stay) {
        out.intent=MovementIntent::reposition;
        out.requested_move=reposition.move;
        out.reason="tactical-reposition";
    }else {
        out.intent=MovementIntent::hold;
        out.requested_move=Move::stay;
        out.reason="no-tactical-benefit";
    }
    out.executed_move=out.requested_move;
    return out;
}
bool MovementIntentEvaluator::requires_escape(
    const MovementIntentInput& input) const {
    if(!config_.enabled||!input.frame)return false;
    return probe_threats(input,config_).immediate;
}
bool MovementIntentEvaluator::apply_temporal_escape(
    const TemporalReachabilityResult& reachability,
    MovementIntentEvaluation& evaluation) const {
    if(!reachability.valid)return false;
    const auto selection=select_temporal_route(reachability,
        TemporalRoutePolicy::escape,true);
    if(!selection.found||selection.plan.empty())return false;
    evaluation.intent=MovementIntent::escape;
    evaluation.requested_move=selection.plan.front().action.move;
    evaluation.executed_move=evaluation.requested_move;
    evaluation.predicted_movement_benefit=100.0;
    evaluation.temporal_escape_used=true;
    evaluation.reason="temporal-escape";
    return true;
}
MovementStabilizer::MovementStabilizer(MovementIntentConfig config)
    :config_(std::move(config)) {}
void MovementStabilizer::reset() {
    locked_move_=Move::stay;
    last_executed_move_=Move::stay;
    locked_benefit_=0;
    lock_age_=0;
    locked_=false;
    direction_switch_count_=0;
}
bool MovementStabilizer::move_valid(const Frame& frame,Move move) const {
    if(move==Move::stay)return true;
    if(!frame.grid.valid)return true;
    const Vec target=frame.player.body.pos+direction(move)*
        std::max(24.0,frame.player.max_speed*0.10);
    const double radius=std::max(1.0,frame.player.body.radius);
    return frame.grid.sweep_clear(frame.player.body.pos,target,radius,
        frame.player.flying)&&
        frame.grid.clearance(target,radius,frame.player.flying)>=-1e-6;
}
MovementIntentEvaluation MovementStabilizer::stabilize(const Frame& frame,
    MovementIntentEvaluation evaluation,bool danger_now) {
    evaluation.direction_switch_count=direction_switch_count_;
    if(!config_.enabled) {
        evaluation.executed_move=evaluation.requested_move;
        return evaluation;
    }
    if(evaluation.intent==MovementIntent::escape) {
        evaluation.executed_move=evaluation.requested_move;
        evaluation.movement_suppressed=false;
        evaluation.suppression_reason="escape-bypass";
        locked_=false;
        lock_age_=0;
        locked_move_=evaluation.executed_move;
        last_executed_move_=evaluation.executed_move;
        return evaluation;
    }
    if(evaluation.intent==MovementIntent::hold||
       evaluation.requested_move==Move::stay) {
        evaluation.executed_move=Move::stay;
        evaluation.movement_suppressed=evaluation.requested_move!=Move::stay;
        evaluation.suppression_reason="hold";
        // Keep the previous direction lock across a short hold. A stop is
        // allowed, but restarting in the opposite direction still needs the
        // normal benefit margin; this prevents stop/start jitter.
        ++lock_age_;
        last_executed_move_=Move::stay;
        evaluation.direction_switch_count=direction_switch_count_;
        return evaluation;
    }
    if(!locked_||!move_valid(frame,locked_move_)) {
        locked_=true;
        locked_move_=evaluation.requested_move;
        locked_benefit_=evaluation.predicted_movement_benefit;
        lock_age_=0;
        evaluation.executed_move=locked_move_;
        evaluation.movement_suppressed=false;
        evaluation.suppression_reason="lock";
        if(directional(last_executed_move_)&&
           last_executed_move_!=evaluation.executed_move)
            ++direction_switch_count_;
        last_executed_move_=evaluation.executed_move;
        evaluation.direction_switch_count=direction_switch_count_;
        return evaluation;
    }
    if(danger_now||evaluation.intent==MovementIntent::escape) {
        locked_move_=evaluation.requested_move;
        locked_benefit_=evaluation.predicted_movement_benefit;
        lock_age_=0;
        evaluation.executed_move=locked_move_;
        evaluation.movement_suppressed=false;
        evaluation.suppression_reason="danger-unlock";
        if(directional(last_executed_move_)&&
           last_executed_move_!=evaluation.executed_move)
            ++direction_switch_count_;
        last_executed_move_=evaluation.executed_move;
        evaluation.direction_switch_count=direction_switch_count_;
        return evaluation;
    }
    if(evaluation.requested_move==locked_move_) {
        ++lock_age_;
        locked_benefit_=std::max(locked_benefit_,
            evaluation.predicted_movement_benefit);
        evaluation.executed_move=locked_move_;
        evaluation.movement_suppressed=false;
        evaluation.suppression_reason="hold-direction";
        last_executed_move_=evaluation.executed_move;
        evaluation.direction_switch_count=direction_switch_count_;
        return evaluation;
    }
    if(lock_age_<config_.min_lock_frames) {
        ++lock_age_;
        evaluation.executed_move=locked_move_;
        evaluation.movement_suppressed=true;
        evaluation.suppression_reason="min-lock";
        last_executed_move_=evaluation.executed_move;
        evaluation.direction_switch_count=direction_switch_count_;
        return evaluation;
    }
    const bool opposite_direction=opposite(evaluation.requested_move,
        locked_move_);
    const double required=locked_benefit_+config_.switch_margin;
    if(evaluation.predicted_movement_benefit<required) {
        ++lock_age_;
        evaluation.executed_move=locked_move_;
        evaluation.movement_suppressed=true;
        evaluation.suppression_reason=opposite_direction?
            "opposite-switch-margin":"weak-switch-margin";
        last_executed_move_=evaluation.executed_move;
        evaluation.direction_switch_count=direction_switch_count_;
        return evaluation;
    }
    locked_move_=evaluation.requested_move;
    locked_benefit_=evaluation.predicted_movement_benefit;
    lock_age_=0;
    evaluation.executed_move=locked_move_;
    evaluation.movement_suppressed=false;
    evaluation.suppression_reason="benefit-switch";
    if(directional(last_executed_move_)&&
       last_executed_move_!=evaluation.executed_move)
        ++direction_switch_count_;
    last_executed_move_=evaluation.executed_move;
    evaluation.direction_switch_count=direction_switch_count_;
    return evaluation;
}
} // namespace gamebot
