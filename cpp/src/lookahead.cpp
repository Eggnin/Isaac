#include "gamebot/lookahead.hpp"
#include <algorithm>
#include <chrono>
#include <limits>

namespace gamebot {
namespace {
IntentPredictorConfig make_intent_config(const LookaheadConfig& config) {
    IntentPredictorConfig intent;
    intent.horizon=config.intent_horizon;
    intent.min_confidence=config.intent_min_confidence;
    intent.include_candidate=config.intent_include_candidate;
    return intent;
}
VirtualThreatConfig make_virtual_config(const LookaheadConfig& config) {
    VirtualThreatConfig virtual_config;
    virtual_config.horizon=config.intent_horizon;
    virtual_config.min_confidence=config.intent_min_confidence;
    virtual_config.max_projectiles=config.virtual_threat_limit;
    virtual_config.include_inferred=config.intent_include_inferred;
    virtual_config.include_candidate=config.intent_include_candidate;
    return virtual_config;
}
UnknownThreatConfig make_unknown_config(const LookaheadConfig& config) {
    UnknownThreatConfig unknown;
    unknown.horizon=config.intent_horizon;
    unknown.emergency_horizon=config.unknown_emergency_horizon;
    unknown.emergency_margin=config.unknown_emergency_margin;
    unknown.risk_threshold=config.unknown_risk_threshold;
    unknown.include_tracking=true;
    unknown.include_uncertain_attack=true;
    return unknown;
}
ForwardSimConfig make_sim_config(const LookaheadConfig& config) {
    ForwardSimConfig sim;
    sim.dt=config.dt;
    sim.horizon_frames=std::max(1,config.simulation_horizon_frames);
    sim.max_branches=std::max(1,config.simulation_branches);
    sim.early_terminate=config.simulation_early_terminate;
    sim.tear_damage=config.simulation_tear_damage;
    sim.invulnerability_frames=std::max(1,config.simulation_invulnerability_frames);
    sim.use_unknown_threats=config.simulation_include_unknown;
    sim.use_mechanism_intents=true;
    return sim;
}
struct Target {
    Vec pos{},vel{};
    double radius{};
    double hp{};
};
std::vector<Target> collect_targets(const Frame& frame) {
    std::vector<Target> targets;
    for(const auto& entity:frame.entities)
        if(entity.damageable_enemy())
            targets.push_back({entity.pos,entity.vel,entity.radius,entity.hp});
    return targets;
}
bool shot_hits(const Frame& frame,const std::vector<Target>& targets,Vec origin,Fire fire,
               double time,const LookaheadConfig& config,int& index,double& damage) {
    const Vec axis=direction(fire);
    if(axis.norm()<1e-9)return false;
    double best=0;
    for(size_t target=0;target<targets.size();++target) {
        if(targets[target].hp<=1e-9)continue;
        const Vec predicted=targets[target].pos+targets[target].vel*time;
        const Vec relative=predicted-origin;
        const double forward=relative.dot(axis);
        if(forward<=0||forward>frame.player.tear_range)continue;
        const double lateral=std::abs(relative.x*axis.y-relative.y*axis.x);
        if(lateral>targets[target].radius+6+config.min_shot_margin)continue;
        if(!frame.grid.shot_clear(origin,origin+axis*forward))continue;
        const double closing=frame.player.tear_speed-targets[target].vel.dot(axis);
        if(closing<=1)continue;
        const double candidate=std::min(config.tear_damage,targets[target].hp);
        if(candidate>best) { best=candidate;index=int(target);damage=candidate; }
    }
    return best>0;
}
struct Rollout {
    Vec pos{},vel{};
    double time{};
    Move move{Move::stay};
    Fire fire{Fire::none};
    double damage{};
    double exposure{};
    double attack{};
    int shots{};
    double fire_timer{};
    std::vector<Move> moves;
    std::vector<Fire> fires;
    std::vector<Vec> path;
    std::vector<char> hit_seen;
    std::vector<double> hp;
    std::vector<Threat> virtual_threats;
    std::vector<AttackForecast> forecasts;
    std::vector<char> intent_fired;
};
constexpr double player_radius(const Frame& frame) { return frame.player.body.radius; }
bool traversable(const Frame& frame,Vec from,Vec to) {
    const double radius=player_radius(frame);
    if(frame.grid.clearance(from,radius,frame.player.flying)>=0)
        return frame.grid.sweep_clear(from,to,radius,frame.player.flying);
    const double before=frame.grid.clearance(from,radius,frame.player.flying);
    const int samples=std::max(1,int(std::ceil(distance(from,to)/4)));
    for(int sample=1;sample<=samples;++sample) {
        const Vec point=from+(to-from)*(double(sample)/samples);
        if(frame.grid.clearance(point,radius,frame.player.flying)<before-1e-6)return false;
    }
    return true;
}
void advance_player(const Frame& frame,Rollout& rollout,Move move,double dt) {
    Vec next=rollout.pos,velocity=rollout.vel;
    advance_native_player_motion(frame.player,next,velocity,move,dt);
    if(!traversable(frame,rollout.pos,next)) {
        const Vec horizontal{next.x,rollout.pos.y},vertical{rollout.pos.x,next.y};
        const bool along_x=traversable(frame,rollout.pos,horizontal);
        const bool along_y=traversable(frame,rollout.pos,vertical);
        if(along_x&&(!along_y||frame.grid.clearance(horizontal,player_radius(frame),frame.player.flying)>=
            frame.grid.clearance(vertical,player_radius(frame),frame.player.flying))) {
            next=horizontal;velocity.y=0;
        }else if(along_y) { next=vertical;velocity.x=0; }
        else { next=rollout.pos;velocity={}; }
    }
    rollout.pos=next;
    rollout.vel=velocity;
}
void roll(const Frame& frame,const std::vector<Threat>& threats,const std::vector<EnemyIntent>& intents,
          const EnemyIntentPredictor& intent_predictor,const VirtualThreatGenerator& virtual_generator,
          Rollout& rollout,Move move,Fire fire,int frames,const LookaheadConfig& config,bool attack_enabled) {
    rollout.move=move;
    rollout.fire=attack_enabled?fire:Fire::none;
    rollout.moves.push_back(move);
    rollout.fires.push_back(rollout.fire);
    auto activate_intents=[&]() {
        for(size_t index=0;index<intents.size();++index) {
            if(rollout.intent_fired[index]||intents[index].trigger_time<0||
               intents[index].trigger_time>rollout.time+1e-9)continue;
            rollout.intent_fired[index]=1;
            const auto forecast=intent_predictor.instantiate(intents[index],frame,rollout.pos,rollout.time);
            if(!forecast)continue;
            std::vector<Threat> existing=threats;
            existing.insert(existing.end(),rollout.virtual_threats.begin(),rollout.virtual_threats.end());
            auto batch=virtual_generator.generate({*forecast},frame,existing,config.intent_horizon);
            rollout.forecasts.push_back(*forecast);
            for(auto& threat:batch.threats)rollout.virtual_threats.push_back(std::move(threat));
        }
        if(rollout.hit_seen.size()<threats.size()+rollout.virtual_threats.size())
            rollout.hit_seen.resize(threats.size()+rollout.virtual_threats.size(),0);
    };
    activate_intents();
    for(int step=0;step<frames;++step) {
        const double begin=rollout.time;
        const Vec previous=rollout.pos;
        advance_player(frame,rollout,move,config.dt);
        rollout.time+=config.dt;
        const double end=rollout.time;
        activate_intents();
        const double radius=player_radius(frame);
        auto accumulate=[&](const Threat& threat,size_t index) {
            const double clearance=threat.clearance(previous,rollout.pos,begin,end,radius);
            const double risk=std::max(1.0,threat.risk_weight);
            if(!threat.soft&&clearance<0&&!rollout.hit_seen[index]) {
                rollout.hit_seen[index]=1;
                rollout.damage+=risk*(threat.lethal?config.lethal_weight:
                    (threat.damage>0?std::clamp(threat.damage,0.5,3.0):1.0));
            }
            rollout.exposure+=risk*std::max(0.0,8.0-clearance)*config.dt;
        };
        for(size_t index=0;index<threats.size();++index)
            accumulate(threats[index],index);
        for(size_t index=0;index<rollout.virtual_threats.size();++index)
            accumulate(rollout.virtual_threats[index],threats.size()+index);
        if(rollout.fire_timer>0)rollout.fire_timer-=config.dt;
        if(attack_enabled&&rollout.fire!=Fire::none&&rollout.fire_timer<=1e-9) {
            rollout.fire_timer=std::max(1,config.fire_cooldown_frames)/30.0;
            std::vector<Target> targets;
            targets.reserve(rollout.hp.size());
            size_t offset=0;
            for(const auto& entity:frame.entities) {
                if(!entity.damageable_enemy())continue;
                targets.push_back({entity.pos,entity.vel,entity.radius,rollout.hp[offset]});
                ++offset;
            }
            int target=-1;double damage=0;
            if(shot_hits(frame,targets,rollout.pos,rollout.fire,rollout.time,config,target,damage)) {
                rollout.hp[size_t(target)]=std::max(0.0,rollout.hp[size_t(target)]-damage);
                rollout.attack+=damage;
                ++rollout.shots;
            }
        }
        rollout.path.push_back(rollout.pos);
    }
}
double rollout_score(const Rollout& rollout,const LookaheadConfig& config,const Decision& baseline) {
    double score=-config.damage_weight*rollout.damage-config.exposure_weight*rollout.exposure+
        config.attack_weight*rollout.attack;
    if(!rollout.moves.empty()&&rollout.moves.front()==baseline.move)score+=0.25;
    if(!rollout.fires.empty()&&rollout.fires.front()==baseline.fire)score+=0.25;
    return score;
}
CandidatePreview preview_candidate(const Frame& frame,const Planner& planner,const RouteCandidate& candidate,
                                   const std::vector<Threat>& threats,const std::vector<AttackForecast>& forecasts,
                                   int virtual_count,const LookaheadConfig& config,bool attack_enabled) {
    CandidatePreview preview;
    preview.move=candidate.move;preview.path=candidate.path;
    preview.baseline_hits=candidate.hits;preview.baseline_exposure=candidate.exposure;
    preview.baseline_safe=candidate.hits==0;
    preview.virtual_threats=virtual_count;
    preview.forecasts=int(forecasts.size());
    if(preview.path.empty())preview.path.push_back(candidate.end);
    std::vector<char> hit_seen(threats.size());
    int fire_timer=0;
    for(size_t index=0;index+1<preview.path.size();++index) {
        const double begin=index*(1.0/60),end=begin+1.0/60;
        for(size_t threat_index=0;threat_index<threats.size();++threat_index) {
            const auto& threat=threats[threat_index];
            const double clearance=threat.clearance(preview.path[index],preview.path[index+1],begin,end,
                player_radius(frame));
            const double risk=std::max(1.0,threat.risk_weight);
            if(!threat.soft&&clearance<0&&!hit_seen[threat_index]) {
                hit_seen[threat_index]=1;
                preview.predicted_damage+=risk*(threat.lethal?config.lethal_weight:
                    (threat.damage>0?std::clamp(threat.damage,0.5,3.0):1.0));
            }
            preview.predicted_exposure+=risk*std::max(0.0,8.0-clearance)*config.dt;
        }
        if(fire_timer>0)--fire_timer;
        if(attack_enabled&&fire_timer==0) {
            const Aim aim=planner.aim_at(frame,preview.path[index],0,begin);
            if(aim.can_fire&&aim.fire!=Fire::none) {
                preview.predicted_attack+=config.tear_damage;
                ++preview.predicted_shots;
                fire_timer=std::max(1,config.preview_fire_interval);
            }
        }
    }
    return preview;
}
}
TopKJointPlanner::TopKJointPlanner(LookaheadConfig config):config_(config),
    intent_predictor_(make_intent_config(config)),virtual_generator_(make_virtual_config(config)),
    unknown_manager_(make_unknown_config(config)),
    world_bridge_(WorldStateBridgeOptions{},make_intent_config(config)),
    simulation_planner_(make_sim_config(config),SimBackendKind::hybrid_cpp) {
    PlannerConfig planner_config;
    planner_config.record_candidates=true;
    planner_=Planner(planner_config);
}
void TopKJointPlanner::reset() {
    planner_.reset();intent_predictor_.reset();unknown_manager_.reset();
    world_bridge_.reset();simulation_planner_.reset();
}
JointPlan TopKJointPlanner::decide(const Frame& frame,bool attack_enabled,const MechanismFrame* mechanisms) {
    auto started=std::chrono::steady_clock::now();
    JointPlan plan;
    plan.baseline=planner_.decide(frame,attack_enabled,mechanisms);
    plan.baseline_planning_ms=plan.baseline.planning_ms;
    plan.decision=plan.baseline;
    if(!plan.baseline.valid||plan.baseline.stop||!frame.valid||!frame.has_player) {
        plan.planning_ms=std::chrono::duration<double,std::milli>(
            std::chrono::steady_clock::now()-started).count();
        plan.reason="baseline-only";
        return plan;
    }
    // 1. Read the route beam the existing planner already produced.
    std::vector<RouteCandidate> seen;
    std::vector<Move> used;
    for(const auto& candidate:planner_.candidates()) {
        if(std::find(used.begin(),used.end(),candidate.move)!=used.end())continue;
        used.push_back(candidate.move);
        seen.push_back(candidate);
        if(int(seen.size())>=std::max(1,config_.seed_candidates))break;
    }
    // 1b. Recognise enemy intentions before the attack objects exist. The
    // intents themselves are path-independent; the forecasts below are
    // instantiated once per candidate path.
    std::vector<EnemyIntent> active_intents;
    if(config_.enemy_intent_prediction) {
        plan.intents=intent_predictor_.predict(frame,mechanisms);
        plan.intent_coverage=intent_predictor_.coverage();
        for(const auto& intent:plan.intents) {
            if(intent.confidence<config_.intent_min_confidence)continue;
            if(intent.evidence==AttackEvidence::candidate&&!config_.intent_include_candidate)continue;
            if(intent.evidence==AttackEvidence::inferred&&!config_.intent_include_inferred)continue;
            if(!intent.can_instantiate)continue;
            active_intents.push_back(intent);
        }
    }
    // 1c. Unknown entities and attacks are never dropped. They contribute a
    // generic physical track plus a conservative attack hypothesis, and they
    // are appended after the evidence filters so low confidence cannot remove
    // them from the search.
    if(config_.unknown_threat_manager) {
        plan.unknown=unknown_manager_.assess(frame,mechanisms);
        plan.unknown_tracking_threats=int(plan.unknown.tracking_threats.size());
        plan.unknown_attack_intents=int(plan.unknown.attack_intents.size());
        plan.unknown_emergency=plan.unknown.emergency;
        plan.unknown_emergency_reason=plan.unknown.emergency_reason;
        for(const auto& intent:plan.unknown.attack_intents)active_intents.push_back(intent);
    }
    const auto real_threats=planner_.threats();
    std::vector<Threat> base_threats=real_threats;
    if(config_.unknown_threat_manager)
        base_threats.insert(base_threats.end(),plan.unknown.tracking_threats.begin(),
            plan.unknown.tracking_threats.end());
    plan.real_threats=int(real_threats.size());
    for(const auto& candidate:seen) {
        const auto forecast_path=intent_predictor_.instantiate_path(
            active_intents,frame,candidate.path,1.0/60);
        const auto virtuals=virtual_generator_.generate(forecast_path.forecasts,frame,
            base_threats,config_.intent_horizon);
        std::vector<Threat> combined=base_threats;
        combined.insert(combined.end(),virtuals.threats.begin(),virtuals.threats.end());
        plan.previews.push_back(preview_candidate(frame,planner_,candidate,combined,
            forecast_path.forecasts,virtuals.generated,config_,attack_enabled));
    }
    // 2. Seed joint rollouts from those candidate paths, then extend them with
    //    a Top-K beam over movement and firing directions.
    const auto& threats=base_threats;
    LookaheadConfig scoring=config_;
    // Conservative unknown threats already carry a high risk weight in
    // rollout damage/exposure. During an emergency, also scale down (but do
    // not eliminate) attack reward so output cannot dominate safety.
    if(plan.unknown.emergency)
        scoring.attack_weight*=std::clamp(config_.unknown_emergency_attack_scale,0.0,1.0);
    const auto targets=collect_targets(frame);
    std::vector<Rollout> seeds;
    if(seen.empty()) {
        Rollout seed;
        seed.pos=frame.player.body.pos;seed.vel=frame.player.body.vel;seed.path={seed.pos};
        seed.hit_seen.assign(threats.size(),0);
        seed.intent_fired.assign(active_intents.size(),0);
        for(const auto& target:targets)seed.hp.push_back(target.hp);
        seeds.push_back(std::move(seed));
    }else {
        for(const auto& candidate:seen) {
            Rollout seed;
            seed.pos=frame.player.body.pos;seed.vel=frame.player.body.vel;
            seed.move=candidate.move;seed.path={seed.pos};
            seed.hit_seen.assign(threats.size(),0);
            seed.intent_fired.assign(active_intents.size(),0);
            for(const auto& target:targets)seed.hp.push_back(target.hp);
            seeds.push_back(std::move(seed));
        }
    }
    std::vector<Rollout> beam;
    for(const auto& seed:seeds) {
        const std::vector<Move> first_moves=seen.empty()?std::vector<Move>{
            Move::stay,Move::north,Move::northeast,Move::east,Move::southeast,
            Move::south,Move::southwest,Move::west,Move::northwest}:std::vector<Move>{seed.move};
        for(Move move:first_moves)for(int fire=0;fire<5;++fire) {
            Rollout rollout=seed;
            roll(frame,threats,active_intents,intent_predictor_,virtual_generator_,
                rollout,move,static_cast<Fire>(fire),config_.epoch_frames,config_,attack_enabled);
            beam.push_back(std::move(rollout));
        }
    }
    auto prune=[&](std::vector<Rollout>& candidates) {
        std::stable_sort(candidates.begin(),candidates.end(),[&](const Rollout& a,const Rollout& b){
            return rollout_score(a,scoring,plan.baseline)>rollout_score(b,scoring,plan.baseline);
        });
        if(int(candidates.size())>std::max(1,config_.top_k))candidates.resize(size_t(std::max(1,config_.top_k)));
    };
    prune(beam);
    for(int epoch=1;epoch<config_.epochs;++epoch) {
        std::vector<Rollout> next;
        next.reserve(beam.size()*45);
        for(const auto& base:beam)for(int move=0;move<9;++move)for(int fire=0;fire<5;++fire) {
            Rollout rollout=base;
            roll(frame,threats,active_intents,intent_predictor_,virtual_generator_,
                rollout,static_cast<Move>(move),static_cast<Fire>(fire),
                config_.epoch_frames,config_,attack_enabled);
            next.push_back(std::move(rollout));
        }
        prune(next);
        beam=std::move(next);
    }
    if(beam.empty()) {
        plan.planning_ms=std::chrono::duration<double,std::milli>(
            std::chrono::steady_clock::now()-started).count();
        plan.reason="joint-search-empty";
        return plan;
    }
    const auto& best=beam.front();
    plan.predicted_damage=best.damage;
    plan.predicted_attack=best.attack;
    plan.predicted_exposure=best.exposure;
    plan.predicted_shots=best.shots;
    plan.virtual_threats=int(best.virtual_threats.size());
    plan.selected_forecasts=best.forecasts;
    plan.selected_virtual_threats=best.virtual_threats;
    plan.move_sequence=best.moves;
    plan.fire_sequence=best.fires;
    Move chosen_move=best.moves.empty()?plan.baseline.move:best.moves.front();
    Fire chosen_fire=best.fires.empty()?Fire::none:best.fires.front();
    std::vector<Vec> chosen_path=best.path;
    // 3. Forward world simulation. One snapshot is restored, then every
    //    surviving joint candidate forks its own branch. Enemy aim is
    //    re-evaluated against the player position inside that branch.
    if(config_.forward_simulation&&frame.valid&&frame.has_player&&!frame.player.body.dead) {
        ForwardSimConfig sim_config=make_sim_config(config_);
        WorldStateBridgeOptions bridge_options;
        bridge_options.include_unknown_tracking=config_.simulation_include_unknown;
        bridge_options.include_unknown_attacks=config_.simulation_include_unknown;
        bridge_options.min_confidence_hundredths=
            int(std::lround(std::clamp(config_.intent_min_confidence,0.0,1.0)*100.0));
        world_bridge_.set_options(bridge_options);
        const auto snapshot=world_bridge_.build(frame,mechanisms,
            config_.unknown_threat_manager?&plan.unknown:nullptr);
        plan.snapshot=snapshot;
        plan.snapshot_valid=true;
        std::vector<std::vector<SimActionSegment>> plans;
        std::vector<std::pair<Move,Fire>> firsts;
        auto add=[&](Move move,Fire fire,const std::vector<Move>* moves,
                     const std::vector<Fire>* fires) {
            for(const auto& existing:firsts)
                if(existing.first==move&&existing.second==fire)return;
            std::vector<SimActionSegment> segments;
            int used=0;
            if(moves&&fires&&!moves->empty()) {
                for(size_t index=0;index<moves->size()&&used<sim_config.horizon_frames;++index) {
                    SimAction action;
                    action.move=(*moves)[index];
                    action.fire=index<fires->size()?(*fires)[index]:Fire::none;
                    if(!attack_enabled)action.fire=Fire::none;
                    action.shoot=action.fire!=Fire::none;
                    const int frames=std::min(std::max(1,config_.epoch_frames),
                        sim_config.horizon_frames-used);
                    segments.push_back({action,frames});
                    used+=frames;
                }
            }
            if(segments.empty()) {
                SimAction action{move,attack_enabled?fire:Fire::none,attack_enabled&&fire!=Fire::none};
                segments.push_back({action,sim_config.horizon_frames});
            }
            plans.push_back(std::move(segments));
            firsts.push_back({move,fire});
        };
        // Baseline first so the simulated comparison always contains the
        // validated planner's action, then the beam order (best first).
        add(plan.baseline.move,plan.baseline.fire,nullptr,nullptr);
        for(const auto& rollout:beam) {
            if(int(plans.size())>=std::max(1,config_.simulation_branches))break;
            if(rollout.moves.empty())continue;
            add(rollout.moves.front(),rollout.fires.empty()?Fire::none:rollout.fires.front(),
                &rollout.moves,&rollout.fires);
        }
        // The beam can collapse onto one first action after a few epochs. Add
        // every root movement so the simulation still tests counterfactual
        // dodges that the short-horizon beam never explored.
        for(int move=0;move<9;++move) {
            if(int(plans.size())>=std::max(1,config_.simulation_branches))break;
            add(static_cast<Move>(move),plan.baseline.fire,nullptr,nullptr);
        }
        plan.simulation=simulation_planner_.evaluate(snapshot,plans);
        plan.simulated=plan.simulation.available;
        if(plan.simulated&&plan.simulation.best>=0&&
           plan.simulation.best<int(plan.simulation.candidates.size())) {
            const int winner=plan.simulation.best;
            plan.simulation_score=plan.simulation.candidates[size_t(winner)].score;
            double current=-std::numeric_limits<double>::infinity();
            for(int index=0;index<int(firsts.size());++index)
                if(firsts[size_t(index)].first==chosen_move&&
                   firsts[size_t(index)].second==chosen_fire) {
                    current=plan.simulation.candidates[size_t(index)].score.score;
                    break;
                }
            if(winner<int(firsts.size())&&plan.simulation_score.score>current+1.0) {
                const auto& selected=firsts[size_t(winner)];
                if(selected.first!=chosen_move||selected.second!=chosen_fire) {
                    chosen_move=selected.first;
                    chosen_fire=selected.second;
                    chosen_path.clear();
                    plan.simulation_override=true;
                }
            }
        }
    }
    plan.decision.move=chosen_move;
    plan.decision.fire=attack_enabled?chosen_fire:Fire::none;
    // The joint layer must not invent an attack when the validated planner
    // found no target or the room is already clear.
    if(!plan.baseline.target||plan.baseline.fire==Fire::none||frame.cleared||
       !frame.player.can_shoot||!frame.player.attack_supported)
        plan.decision.fire=Fire::none;
    if(!chosen_path.empty())plan.decision.path=chosen_path;
    plan.move_overridden=plan.decision.move!=plan.baseline.move;
    plan.fire_overridden=plan.decision.fire!=plan.baseline.fire;
    plan.decision.planning_ms=std::chrono::duration<double,std::milli>(
        std::chrono::steady_clock::now()-started).count();
    plan.planning_ms=plan.decision.planning_ms;
    plan.decision.reason=plan.baseline.reason+" | Top-K joint move/fire";
    if(plan.simulated) {
        plan.decision.reason+=" | forward-sim";
        if(plan.simulation_override)plan.decision.reason+=" override";
    }
    if(plan.unknown_emergency) {
        plan.decision.reason+=" | UNKNOWN THREAT EMERGENCY: "+plan.unknown_emergency_reason;
        plan.decision.strategy_mode="Survival";
    }
    if(plan.simulation_override)plan.decision.strategy_mode="Survival";
    plan.reason=plan.simulation_override?"forward-sim-override":
        (plan.move_overridden||plan.fire_overridden?"joint-override":"joint-kept-baseline");
    planner_.observe_applied(plan.decision.move,frame.clock);
    return plan;
}
}
