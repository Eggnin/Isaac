#include "gamebot/world_state.hpp"
#include <algorithm>
#include <cmath>
#include <limits>
#include <set>

namespace gamebot {
namespace {
AttackPrimitive primitive_from_text(const std::string& text) {
    for(int i=0;i<=int(AttackPrimitive::uncertain_corridor);++i) {
        const auto value=AttackPrimitive(i);
        if(text==attack_primitive_name(value))return value;
    }
    return AttackPrimitive::unknown;
}
AttackEvidence evidence_from_text(const std::string& text) {
    for(int i=0;i<=int(AttackEvidence::verified);++i) {
        const auto value=AttackEvidence(i);
        if(text==attack_evidence_name(value))return value;
    }
    return AttackEvidence::unknown;
}
AttackTargeting targeting_from_text(const std::string& text) {
    for(int i=0;i<=int(AttackTargeting::area);++i) {
        const auto value=AttackTargeting(i);
        if(text==attack_targeting_name(value))return value;
    }
    return AttackTargeting::unknown;
}
EnemyIntent intent_from_json(const json& value) {
    EnemyIntent intent;
    intent.enemy_id=value.value("enemy_id",0u);intent.seed=value.value("seed",0u);
    intent.type=value.value("type",0);intent.variant=value.value("variant",0);
    intent.subtype=value.value("subtype",0);intent.state=value.value("state",-1);
    intent.state_frame=value.value("state_frame",0);
    intent.animation=value.value("animation",std::string{});
    intent.animation_frame=value.value("animation_frame",0.0);
    intent.position=value.value("position",Vec{});intent.velocity=value.value("velocity",Vec{});
    intent.target_position=value.value("target_position",Vec{});
    intent.projectile_cooldown=value.value("projectile_cooldown",0);
    intent.projectile_delay=value.value("projectile_delay",0);
    intent.primitive=primitive_from_text(value.value("primitive",std::string{"unknown"}));
    intent.evidence=evidence_from_text(value.value("evidence",std::string{"unknown"}));
    intent.targeting=targeting_from_text(value.value("targeting",std::string{"unknown"}));
    intent.trigger_frame=value.value("trigger_frame",int64_t(-1));
    intent.end_frame=value.value("end_frame",int64_t(-1));
    intent.trigger_time=value.value("trigger_time",-1.0);
    intent.duration=value.value("duration",0.0);
    intent.confidence=value.value("confidence",0.0);
    intent.projectile_speed=value.value("projectile_speed",0.0);
    intent.spread_angle=value.value("spread_angle",0.0);
    intent.collision_radius=value.value("collision_radius",0.0);
    intent.damage=value.value("damage",0.0);
    intent.length=value.value("length",0.0);
    intent.risk_weight=value.value("risk_weight",1.0);
    intent.unknown=value.value("unknown",false);
    intent.projectile_count=value.value("projectile_count",1);
    intent.can_instantiate=value.value("can_instantiate",false);
    intent.prediction_source=value.value("prediction_source",std::string{});
    intent.attack_type=value.value("attack_type",std::string{});
    intent.evidence_status=value.value("evidence_status",std::string{});
    intent.evidence_detail=value.value("evidence_detail",json::object());
    return intent;
}
// Reader fields that are copied straight out of game memory. Enumeration is
// grouped by what the Reader actually reads so a field that was never read can
// never become `exact` by accident.
void mark_entity_core(ProvenanceTable& table,const Entity& e,const std::string& prefix) {
    const auto at=[&](const char* name) { return prefix+name; };
    table.set(at(".address"),Precision::exact,"Reader entity address");
    table.set(at(".id.seed"),Precision::exact,"Reader entity seed");
    table.set(at(".identity.type"),Precision::exact,"Reader entity type/variant/subtype");
    table.set(at(".transform.pos"),Precision::exact,"Reader Entity::Position");
    table.set(at(".transform.vel"),Precision::exact,"Reader Entity::Velocity (native 30 Hz units)");
    table.set(at(".radius"),e.geometry_valid?Precision::exact:Precision::estimated,
        e.geometry_valid?"Reader native collision radius":"derived from sprite bounds",e.geometry_valid?0:2);
    table.set(at(".health.hp"),Precision::exact,"Reader Entity::HitPoints");
    table.set(at(".state.machine"),e.state>=0?Precision::exact:Precision::unknown,
        e.state>=0?"Reader Entity::State":"state not read");
    table.set(at(".state.ai_v1"),Precision::exact,"Reader AI vector 1");
    table.set(at(".state.ai_v2"),Precision::exact,"Reader AI vector 2");
    table.set(at(".state.ai_semantics"),Precision::unknown,"AI vector/field meaning is not recovered");
    table.set(at(".cooldown.projectile_cooldown"),Precision::exact,"Reader native cooldown field");
    table.set(at(".cooldown.projectile_delay"),Precision::exact,"Reader native delay field");
    table.set(at(".collision"),Precision::exact,"Reader collision class");
    table.set(at(".flags"),Precision::exact,"Reader entity flags");
    table.set(at(".mass"),e.mass_known?Precision::exact:Precision::unknown,
        e.mass_known?"Reader Entity::Mass":"mass not read");
    table.set(at(".height"),e.height_known?Precision::exact:Precision::estimated,
        e.height_known?"Reader Entity::Height":"projectile height not read; floor assumed",e.height_known?0:5);
    table.set(at(".animation"),e.animation_state_known?Precision::exact:Precision::estimated,
        e.animation_state_known?"Reader animation state":"animation labels derived from Reader fields",e.animation_state_known?0:1);
    table.set(at(".damage"),e.damage>0?Precision::exact:Precision::unknown,
        e.damage>0?"Reader Entity::Damage":"damage field not read");
    table.set(at(".spawner_links"),Precision::exact,"Reader parent/spawner/owner/child addresses");
}
void mark_entity_behavior(ProvenanceTable& table,const Entity& e) {
    if(e.projectile_flags||e.projectile_phase||e.birth_known) {
        table.set("dynamics.projectile.native_motion",Precision::exact,
            "Reader projectile flags/velocity/acceleration");
        table.set("dynamics.projectile.homing_semantics",
            e.projectile_homing_strength>0?Precision::estimated:Precision::unknown,
            e.projectile_homing_strength>0?"Reader homing strength":"homing strength not read");
    }
    table.set("geometry.laser",e.laser_sampled?Precision::exact:Precision::estimated,
        e.laser_sampled?"Reader sampled laser nodes":"laser geometry not sampled; primitive length assumed",
        e.laser_sampled?0:16);
    table.set("behavior.boss_phase",Precision::unknown,
        "boss phase is recovered only when a mechanism model names it");
}
}
const char* precision_name(Precision value) {
    switch(value) {
    case Precision::exact:return "exact";
    case Precision::estimated:return "estimated";
    case Precision::unknown:return "unknown";
    }
    return "unknown";
}
Precision precision_from_name(const std::string& name) {
    if(name=="exact")return Precision::exact;
    if(name=="estimated")return Precision::estimated;
    return Precision::unknown;
}
const char* hazard_kind_name(HazardKind value) {
    switch(value) {
    case HazardKind::warning:return "warning";
    case HazardKind::laser:return "laser";
    case HazardKind::creep:return "creep";
    case HazardKind::fire:return "fire";
    case HazardKind::explosion:return "explosion";
    case HazardKind::pit:return "pit";
    case HazardKind::smoke:return "smoke";
    case HazardKind::contact:return "contact";
    case HazardKind::unknown:return "unknown";
    }
    return "unknown";
}
const char* lifecycle_kind_name(LifecycleKind value) {
    switch(value) {
    case LifecycleKind::spawned:return "spawned";
    case LifecycleKind::despawned:return "despawned";
    case LifecycleKind::died:return "died";
    case LifecycleKind::revived:return "revived";
    case LifecycleKind::replaced:return "replaced";
    }
    return "spawned";
}
void ProvenanceTable::set(std::string path,Precision precision,std::string source,double uncertainty) {
    fields_[std::move(path)]=FieldEvidence{precision,std::move(source),uncertainty,true};
}
FieldEvidence ProvenanceTable::get(const std::string& path) const {
    const auto found=fields_.find(path);
    return found==fields_.end()?FieldEvidence{}:found->second;
}
bool ProvenanceTable::has(const std::string& path) const { return fields_.find(path)!=fields_.end(); }
int ProvenanceTable::count(Precision precision) const {
    return int(std::count_if(fields_.begin(),fields_.end(),
        [&](const auto& entry){return entry.second.precision==precision;}));
}
double ProvenanceTable::coverage() const {
    if(fields_.empty())return 0;
    double sum=0;
    for(const auto&[path,evidence]:fields_) {
        (void)path;
        sum+=evidence.precision==Precision::exact?1.0:
            evidence.precision==Precision::estimated?0.5:0.0;
    }
    return sum/double(fields_.size());
}
json ProvenanceTable::to_json() const {
    json out=json::object();
    for(const auto&[path,evidence]:fields_)
        out[path]={{"precision",precision_name(evidence.precision)},
            {"source",evidence.source},{"uncertainty",evidence.uncertainty}};
    return out;
}
ProvenanceTable ProvenanceTable::from_json(const json& value) {
    ProvenanceTable table;
    if(!value.is_object())return table;
    for(const auto&[path,raw]:value.items()) {
        if(!raw.is_object())continue;
        table.set(path,precision_from_name(raw.value("precision",std::string{"unknown"})),
            raw.value("source",std::string{"unavailable"}),raw.value("uncertainty",0.0));
    }
    return table;
}
void ProvenanceTable::merge(const ProvenanceTable& other) {
    for(const auto&[path,evidence]:other.fields_)fields_[path]=evidence;
}
void WorldStateSnapshot::recount() {
    exact_fields=estimated_fields=unknown_fields=0;
    auto count=[&](const ProvenanceTable& table) {
        exact_fields+=table.count(Precision::exact);
        estimated_fields+=table.count(Precision::estimated);
        unknown_fields+=table.count(Precision::unknown);
    };
    count(provenance);count(frame.provenance);count(player.provenance);count(room.provenance);
    for(const auto& enemy:enemies)count(enemy.provenance);
    for(const auto& projectile:projectiles)count(projectile.provenance);
    for(const auto& hazard:hazards)count(hazard.provenance);
    for(const auto& timer:timers)count(timer.provenance);
    if(!rng.available)++unknown_fields;
}
namespace {
json evidence_json(const ProvenanceTable& table) { return table.to_json(); }
json entity_timer_json(const EntityTimer& timer) {
    return {{"id",timer.id},{"birth",timer.birth},{"timeout",timer.timeout},
        {"state",timer.state},{"state_frame",timer.state_frame},
        {"projectile_cooldown",timer.projectile_cooldown},
        {"projectile_delay",timer.projectile_delay},
        {"boss_status_cooldown",timer.boss_status_cooldown},
        {"animation_frame",timer.animation_frame},{"animation_length",timer.animation_length},
        {"animation",timer.animation},{"animation_loop",timer.animation_loop},{"dead",timer.dead},
        {"provenance",evidence_json(timer.provenance)}};
}
EntityTimer timer_from_json(const json& value) {
    EntityTimer timer;
    timer.id=value.value("id",0u);timer.birth=value.value("birth",0);
    timer.timeout=value.value("timeout",0);timer.state=value.value("state",0);
    timer.state_frame=value.value("state_frame",0);
    timer.projectile_cooldown=value.value("projectile_cooldown",0);
    timer.projectile_delay=value.value("projectile_delay",0);
    timer.boss_status_cooldown=value.value("boss_status_cooldown",0);
    timer.animation_frame=value.value("animation_frame",0.0);
    timer.animation_length=value.value("animation_length",0.0);
    timer.animation=value.value("animation",std::string{});
    timer.animation_loop=value.value("animation_loop",false);
    timer.dead=value.value("dead",false);
    timer.provenance=ProvenanceTable::from_json(value.value("provenance",json::object()));
    return timer;
}
json hazard_json(const HazardState& hazard) {
    json nodes=json::array();
    for(const auto& node:hazard.nodes)nodes.push_back(node);
    return {{"kind",hazard_kind_name(hazard.kind)},{"pos",hazard.pos},{"end",hazard.end},
        {"vel",hazard.vel},{"radius",hazard.radius},{"start",hazard.start},{"until",hazard.until},
        {"damage_class",damage_class_name(hazard.damage_class)},
        {"damage_timing",damage_timing_name(hazard.damage_timing)},
        {"damage",hazard.damage},{"risk_weight",hazard.risk_weight},{"source",hazard.source},
        {"virtual",hazard.virtual_hazard},{"lethal",hazard.lethal},{"label",hazard.label},
        {"evidence",hazard.evidence},{"path",hazard.path},{"nodes",nodes},
        {"shape",int(hazard.shape)},{"precision",precision_name(hazard.precision)},
        {"provenance",evidence_json(hazard.provenance)}};
}
HazardState hazard_from_json(const json& value) {
    HazardState hazard;
    const std::string kind=value.value("kind",std::string{"unknown"});
    for(int i=0;i<=int(HazardKind::unknown);++i)
        if(kind==hazard_kind_name(HazardKind(i)))hazard.kind=HazardKind(i);
    hazard.pos=value.value("pos",Vec{});hazard.end=value.value("end",Vec{});
    hazard.vel=value.value("vel",Vec{});hazard.radius=value.value("radius",0.0);
    hazard.start=value.value("start",0.0);hazard.until=value.value("until",0.0);
    const std::string damage_class=value.value("damage_class",std::string{"unknown"});
    for(int i=0;i<=int(DamageClass::unknown);++i)
        if(damage_class==damage_class_name(DamageClass(i)))hazard.damage_class=DamageClass(i);
    const std::string timing=value.value("damage_timing",std::string{"instant"});
    for(int i=0;i<=int(DamageTiming::dot);++i)
        if(timing==damage_timing_name(DamageTiming(i)))hazard.damage_timing=DamageTiming(i);
    hazard.damage=value.value("damage",0.0);hazard.risk_weight=value.value("risk_weight",1.0);
    hazard.source=value.value("source",0u);hazard.virtual_hazard=value.value("virtual",false);
    hazard.lethal=value.value("lethal",false);
    hazard.label=value.value("label",std::string{});
    hazard.evidence=value.value("evidence",std::string{});
    hazard.path=value.value("path",std::vector<Vec>{});
    hazard.nodes=value.value("nodes",std::vector<LaserNode>{});
    hazard.shape=Shape(value.value("shape",int(Shape::disc)));
    hazard.precision=precision_from_name(value.value("precision",std::string{"unknown"}));
    hazard.provenance=ProvenanceTable::from_json(value.value("provenance",json::object()));
    return hazard;
}
}
json WorldStateSnapshot::to_json() const {
    json enemy_rows=json::array();
    for(const auto& enemy:enemies) {
        json intents=json::array();
        for(const auto& intent:enemy.intents)intents.push_back(intent_json(intent));
        enemy_rows.push_back({{"entity",enemy.entity},{"mechanism",enemy.mechanism},
            {"mechanism_known",enemy.mechanism_known},{"boss_phase",enemy.boss_phase},
            {"boss_phase_known",enemy.boss_phase_known},{"has_precise_attack",enemy.has_precise_attack},
            {"unknown_mechanism",enemy.unknown_mechanism},{"intents",intents},
            {"provenance",evidence_json(enemy.provenance)}});
    }
    json projectile_rows=json::array();
    for(const auto& projectile:projectiles)
        projectile_rows.push_back({{"entity",projectile.entity},
            {"role",int(projectile.role)},{"real",projectile.real},
            {"provenance",evidence_json(projectile.provenance)}});
    json hazard_rows=json::array();
    for(const auto& hazard:hazards)hazard_rows.push_back(hazard_json(hazard));
    json timer_rows=json::array();
    for(const auto& timer:timers)timer_rows.push_back(entity_timer_json(timer));
    json cooldown_rows=json::array();
    for(const auto& cooldown:cooldowns)
        cooldown_rows.push_back({{"source",cooldown.source},
            {"projectile_cooldown",cooldown.projectile_cooldown},
            {"projectile_delay",cooldown.projectile_delay},{"known",cooldown.known},
            {"precision",precision_name(cooldown.precision)},
            {"note",cooldown.source_note}});
    json lifecycle_rows=json::array();
    for(const auto& transition:lifecycle)
        lifecycle_rows.push_back({{"id",transition.id},
            {"kind",lifecycle_kind_name(transition.kind)},{"type",transition.type},
            {"variant",transition.variant},{"subtype",transition.subtype},{"hp",transition.hp}});
    return {{"schema",schema},
        {"frame",{{"sequence",frame.sequence},{"clock",frame.clock},{"room",frame.room},
            {"pid",frame.pid},{"clear_flags",frame.clear_flags},
            {"captured_ms",frame.captured_ms},{"read_ms",frame.read_ms},
            {"valid",frame.valid},{"paused",frame.paused},{"transition",frame.transition},
            {"cleared",frame.cleared},{"pressure_plates_triggered",frame.pressure_plates_triggered},
            {"provenance",evidence_json(frame.provenance)}}},
        {"player",{{"body",player.body},{"max_speed",player.max_speed},
            {"tear_speed",player.tear_speed},{"tear_range",player.tear_range},
            {"fire_delay",player.fire_delay},{"health",player.health},
            {"fire_direction",player.fire_direction},{"flying",player.flying},
            {"can_shoot",player.can_shoot},{"controls",player.controls},
            {"attack_supported",player.attack_supported},{"dead",player.dead},
            {"weapons",player.weapons},
            {"invulnerability_frames",player.invulnerability_frames?json(*player.invulnerability_frames):json(nullptr)},
            {"shot_cooldown_frames",player.shot_cooldown_frames?json(*player.shot_cooldown_frames):json(nullptr)},
            {"provenance",evidence_json(player.provenance)}}},
        {"enemies",enemy_rows},{"projectiles",projectile_rows},{"hazards",hazard_rows},
        {"room",{{"grid",room.grid},{"room_type",room.room_type},{"doors",room.doors},
            {"provenance",evidence_json(room.provenance)}}},
        {"timers",timer_rows},{"cooldowns",cooldown_rows},
        {"rng",{{"available",rng.available},{"state",rng.state},{"seed_hint",rng.seed_hint},
            {"source",rng.source},{"precision",precision_name(rng.precision)}}},
        {"native_target_order",native_target_order},
        {"native_target_order_known",native_target_order_known},
        {"lifecycle",lifecycle_rows},{"notes",notes},{"diagnostics",diagnostics},
        {"provenance",evidence_json(provenance)},
        {"counts",{{"exact",exact_fields},{"estimated",estimated_fields},{"unknown",unknown_fields}}}};
}
WorldStateSnapshot WorldStateSnapshot::from_json(const json& value) {
    WorldStateSnapshot snapshot;
    snapshot.schema=value.value("schema",1);
    if(value.contains("frame")) {
        const auto& frame=value.at("frame");
        snapshot.frame.sequence=frame.value("sequence",uint64_t{});
        snapshot.frame.clock=frame.value("clock",0u);snapshot.frame.room=frame.value("room",0u);
        snapshot.frame.pid=frame.value("pid",0u);snapshot.frame.clear_flags=frame.value("clear_flags",0u);
        snapshot.frame.captured_ms=frame.value("captured_ms",0.0);
        snapshot.frame.read_ms=frame.value("read_ms",0.0);
        snapshot.frame.valid=frame.value("valid",false);
        snapshot.frame.paused=frame.value("paused",false);
        snapshot.frame.transition=frame.value("transition",false);
        snapshot.frame.cleared=frame.value("cleared",false);
        snapshot.frame.pressure_plates_triggered=frame.value("pressure_plates_triggered",false);
        snapshot.frame.provenance=ProvenanceTable::from_json(frame.value("provenance",json::object()));
    }
    if(value.contains("player")) {
        const auto& player=value.at("player");
        snapshot.player.body=player.value("body",Entity{});
        snapshot.player.max_speed=player.value("max_speed",260.0);
        snapshot.player.tear_speed=player.value("tear_speed",300.0);
        snapshot.player.tear_range=player.value("tear_range",260.0);
        snapshot.player.fire_delay=player.value("fire_delay",10.0);
        snapshot.player.health=player.value("health",0);
        snapshot.player.fire_direction=player.value("fire_direction",-1);
        snapshot.player.flying=player.value("flying",false);
        snapshot.player.can_shoot=player.value("can_shoot",true);
        snapshot.player.controls=player.value("controls",true);
        snapshot.player.attack_supported=player.value("attack_supported",true);
        snapshot.player.dead=player.value("dead",false);
        snapshot.player.weapons=player.value("weapons",std::vector<Weapon>{});
        if(player.contains("invulnerability_frames")&&!player.at("invulnerability_frames").is_null())
            snapshot.player.invulnerability_frames=player.at("invulnerability_frames").get<int>();
        if(player.contains("shot_cooldown_frames")&&!player.at("shot_cooldown_frames").is_null())
            snapshot.player.shot_cooldown_frames=player.at("shot_cooldown_frames").get<int>();
        snapshot.player.provenance=ProvenanceTable::from_json(player.value("provenance",json::object()));
    }
    if(value.contains("enemies"))for(const auto& row:value.at("enemies")) {
        EnemyState enemy;
        enemy.entity=row.value("entity",Entity{});
        enemy.mechanism=row.value("mechanism",MechanismObservation{});
        enemy.mechanism_known=row.value("mechanism_known",false);
        enemy.boss_phase=row.value("boss_phase",-1);
        enemy.boss_phase_known=row.value("boss_phase_known",false);
        enemy.has_precise_attack=row.value("has_precise_attack",false);
        enemy.unknown_mechanism=row.value("unknown_mechanism",false);
        enemy.provenance=ProvenanceTable::from_json(row.value("provenance",json::object()));
        if(row.contains("intents"))for(const auto& raw:row.at("intents"))
            enemy.intents.push_back(intent_from_json(raw));
        snapshot.enemies.push_back(std::move(enemy));
    }
    if(value.contains("projectiles"))for(const auto& row:value.at("projectiles")) {
        ProjectileState projectile;
        projectile.entity=row.value("entity",Entity{});
        projectile.role=ProjectileRole(row.value("role",int(ProjectileRole::hostile)));
        projectile.real=row.value("real",true);
        projectile.provenance=ProvenanceTable::from_json(row.value("provenance",json::object()));
        snapshot.projectiles.push_back(std::move(projectile));
    }
    if(value.contains("hazards"))for(const auto& row:value.at("hazards"))
        snapshot.hazards.push_back(hazard_from_json(row));
    if(value.contains("room")) {
        const auto& room=value.at("room");
        snapshot.room.grid=room.value("grid",Grid{});
        snapshot.room.room_type=room.value("room_type",0);
        snapshot.room.doors=room.value("doors",0);
        snapshot.room.provenance=ProvenanceTable::from_json(room.value("provenance",json::object()));
    }
    if(value.contains("timers"))for(const auto& row:value.at("timers"))
        snapshot.timers.push_back(timer_from_json(row));
    if(value.contains("cooldowns"))for(const auto& row:value.at("cooldowns")) {
        AttackCooldown cooldown;
        cooldown.source=row.value("source",0u);
        cooldown.projectile_cooldown=row.value("projectile_cooldown",0);
        cooldown.projectile_delay=row.value("projectile_delay",0);
        cooldown.known=row.value("known",false);
        cooldown.precision=precision_from_name(row.value("precision",std::string{"unknown"}));
        cooldown.source_note=row.value("note",std::string{});
        snapshot.cooldowns.push_back(std::move(cooldown));
    }
    if(value.contains("rng")) {
        const auto& rng=value.at("rng");
        snapshot.rng.available=rng.value("available",false);
        snapshot.rng.state=rng.value("state",uint64_t{});
        snapshot.rng.seed_hint=rng.value("seed_hint",0u);
        snapshot.rng.source=rng.value("source",std::string{});
        snapshot.rng.precision=precision_from_name(rng.value("precision",std::string{"unknown"}));
    }
    snapshot.native_target_order=value.value("native_target_order",std::vector<uint32_t>{});
    snapshot.native_target_order_known=value.value("native_target_order_known",false);
    if(value.contains("lifecycle"))for(const auto& row:value.at("lifecycle")) {
        LifecycleTransition transition;
        transition.id=row.value("id",0u);
        const std::string kind=row.value("kind",std::string{"spawned"});
        for(int i=0;i<=int(LifecycleKind::replaced);++i)
            if(kind==lifecycle_kind_name(LifecycleKind(i)))transition.kind=LifecycleKind(i);
        transition.type=row.value("type",0);transition.variant=row.value("variant",0);
        transition.subtype=row.value("subtype",0);transition.hp=row.value("hp",0.0);
        snapshot.lifecycle.push_back(transition);
    }
    snapshot.notes=value.value("notes",std::vector<std::string>{});
    snapshot.diagnostics=value.value("diagnostics",json::object());
    snapshot.provenance=ProvenanceTable::from_json(value.value("provenance",json::object()));
    snapshot.recount();
    return snapshot;
}
json BridgeReport::to_json() const {
    return {{"enemies",enemies},{"projectiles",projectiles},{"hazards",hazards},
        {"real_hazards",real_hazards},{"virtual_hazards",virtual_hazards},
        {"exact_fields",exact_fields},{"estimated_fields",estimated_fields},
        {"unknown_fields",unknown_fields},{"spawned",spawned},{"despawned",despawned},
        {"died",died},{"revived",revived},{"replaced",replaced},
        {"stale_references",stale_references},{"intents",intents},
        {"precise_enemies",precise_enemies},{"unknown_enemies",unknown_enemies},
        {"deduplicated_hazards",deduplicated_hazards},
        {"mechanisms_used",mechanisms_used},{"unknown_assessment_used",unknown_assessment_used},
        {"dedupe_note",dedupe_note}};
}
WorldStateBridge::WorldStateBridge(WorldStateBridgeOptions options,IntentPredictorConfig intent_config)
    :options_(options),intents_(intent_config) {}
void WorldStateBridge::reset() {
    previous_.clear();report_=BridgeReport{};last_clock_=0;last_room_=0;
}
WorldStateSnapshot WorldStateBridge::snapshot(const Frame& frame,const MechanismFrame* mechanisms,
    const UnknownAssessment* unknown,WorldStateBridgeOptions options) {
    WorldStateBridge bridge(options);
    return bridge.build(frame,mechanisms,unknown);
}
WorldStateSnapshot WorldStateBridge::build(const Frame& frame,const MechanismFrame* mechanisms,
    const UnknownAssessment* unknown) {
    report_=BridgeReport{};
    WorldStateSnapshot out;
    out.frame.sequence=frame.sequence;out.frame.clock=frame.clock;out.frame.room=frame.room;
    out.frame.pid=frame.pid;out.frame.clear_flags=frame.clear_flags;
    out.frame.captured_ms=frame.captured_ms;out.frame.read_ms=frame.read_ms;
    out.frame.valid=frame.valid;out.frame.paused=frame.paused;
    out.frame.transition=frame.transition;out.frame.cleared=frame.cleared;
    out.frame.pressure_plates_triggered=frame.pressure_plates_triggered;
    out.frame.provenance.set("frame.clock",Precision::exact,"Reader Game::FrameCounter");
    out.frame.provenance.set("frame.room",Precision::exact,"Reader Room pointer/identity");
    out.frame.provenance.set("frame.pid",Precision::exact,"Reader process id");
    out.frame.provenance.set("frame.valid",Precision::exact,"Reader validity gate");
    out.frame.provenance.set("frame.cleared",Precision::exact,"Reader Room::Cleared");
    out.frame.provenance.set("frame.paused",Precision::exact,"Reader pause flag");
    out.frame.provenance.set("frame.timeline",Precision::exact,
        "one snapshot describes exactly one captured game frame");
    out.frame.provenance.set("frame.future_updates",Precision::unknown,
        "scheduled native updates after the capture frame are not observable");

    // Player
    const auto& player=frame.player;
    out.player.body=player.body;
    out.player.max_speed=player.max_speed;out.player.tear_speed=player.tear_speed;
    out.player.tear_range=player.tear_range;out.player.fire_delay=player.fire_delay;
    out.player.health=player.health>0?player.health:
        int(std::lround(std::max(0.0,player.body.hp)));
    out.player.fire_direction=player.fire_direction;
    out.player.flying=player.flying;out.player.can_shoot=player.can_shoot;
    out.player.controls=player.controls;out.player.attack_supported=player.attack_supported;
    out.player.weapons=player.weapons;
    out.player.dead=player.body.dead||out.player.health<=0;
    mark_entity_core(out.player.provenance,player.body,"player.body");
    out.player.provenance.set("player.max_speed",Precision::exact,"Reader Player::MaxSpeed");
    out.player.provenance.set("player.tear_speed",Precision::exact,"Reader Player::TearSpeed");
    out.player.provenance.set("player.tear_range",Precision::exact,"Reader Player::TearRange");
    out.player.provenance.set("player.fire_delay",Precision::exact,"Reader Player::MaxFireDelay");
    out.player.provenance.set("player.health",player.health>0?Precision::exact:Precision::estimated,
        player.health>0?"Reader Player::Health":"Player::Health was zero; fell back to Entity::HitPoints");
    out.player.provenance.set("player.fire_direction",Precision::exact,
        "Reader Player::FireDirection");
    out.player.provenance.set("player.flying",Precision::exact,"Reader Player::Flying");
    out.player.provenance.set("player.weapons",Precision::exact,"Reader weapon chain");
    out.player.provenance.set("player.invulnerability_frames",Precision::unknown,
        "Reader does not expose the damage cooldown counter");
    out.player.provenance.set("player.shot_cooldown_frames",Precision::unknown,
        "Reader does not expose the remaining tear delay");
    out.player.provenance.set("player.attack_supported",Precision::estimated,
        "combination of Reader weapon data and supported-weapon table");
    out.player.provenance.set("player.controls",Precision::exact,"Reader control gate");

    // Room geometry
    out.room.grid=frame.grid;out.room.room_type=frame.room_type;
    out.room.provenance.set("room.grid",frame.grid.valid?Precision::exact:Precision::unknown,
        frame.grid.valid?"Reader Room::Grid cells":"room grid not valid");
    out.room.provenance.set("room.shape",Precision::exact,"Reader room shape");
    out.room.provenance.set("room.cells",Precision::exact,"Reader cell type/variant/state/collision");
    out.room.provenance.set("room.doors",Precision::estimated,
        "Reader native door list; open/closed transitions are not scheduled");
    out.room.provenance.set("room.destructible",Precision::exact,"Reader cell destructible flags");

    // Enemy intents are path independent. They are recognised once and stored
    // per enemy, then re-aimed inside each simulation branch.
    std::vector<EnemyIntent> intents;
    if(options_.attach_intents) {
        intents=intents_.predict(frame,mechanisms);
        report_.intents=int(intents.size());
    }
    std::map<uint32_t,std::vector<EnemyIntent>> by_enemy;
    for(const auto& intent:intents)by_enemy[intent.enemy_id].push_back(intent);

    std::unordered_map<uint32_t,const MechanismObservation*> observations;
    if(mechanisms&&mechanisms->loaded&&mechanisms->valid&&mechanisms->pid==frame.pid&&
       mechanisms->room==frame.room) {
        report_.mechanisms_used=true;
        for(const auto& observation:mechanisms->enemies)
            observations[observation.address]=&observation;
    }
    std::unordered_map<uint32_t,std::vector<const Threat*>> tracking;
    if(unknown&&options_.include_unknown_tracking) {
        report_.unknown_assessment_used=true;
        for(const auto& threat:unknown->tracking_threats)tracking[threat.source].push_back(&threat);
    }

    std::unordered_map<uint32_t,PreviousEntity> current;
    for(const auto& entity:frame.entities) {
        if(entity.enemy()) {
            EnemyState state;
            state.entity=entity;
            if(const auto found=observations.find(entity.address);found!=observations.end()) {
                state.mechanism=*found->second;
                state.mechanism_known=true;
                state.boss_phase=found->second->boss_phase;
                state.boss_phase_known=found->second->boss_phase>=0;
                if(found->second->unknown_state)state.unknown_mechanism=true;
            }else {
                state.unknown_mechanism=true;
            }
            if(const auto found=by_enemy.find(entity.address);found!=by_enemy.end())
                state.intents=found->second;
            for(const auto& intent:state.intents)
                if(intent.evidence!=AttackEvidence::unknown&&
                   intent.primitive!=AttackPrimitive::unknown&&
                   intent.primitive!=AttackPrimitive::uncertain_area&&
                   intent.primitive!=AttackPrimitive::uncertain_corridor)
                    state.has_precise_attack=true;
            if(state.has_precise_attack)++report_.precise_enemies;
            else ++report_.unknown_enemies;
            mark_entity_core(state.provenance,entity,"enemy");
            mark_entity_behavior(state.provenance,entity);
            state.provenance.set("enemy.identity",state.mechanism_known?
                    (state.mechanism.identity_key!="Unknown"?Precision::exact:Precision::estimated):
                    Precision::unknown,
                state.mechanism_known?"MechanismFrame identity":"no mechanism observation");
            state.provenance.set("enemy.action",state.mechanism.attack_type!="Unknown"||
                    state.mechanism.current_action!="Unknown"?Precision::estimated:Precision::unknown,
                "action/attack label recovered from animation+state; not a native enum");
            state.provenance.set("enemy.attack_plan",state.has_precise_attack?Precision::estimated:
                    Precision::unknown,
                state.has_precise_attack?"recovered primitive + timing from mechanism geometry":
                    "no precise attack model; simulator uses a generic hypothesis");
            state.provenance.set("enemy.boss_phase",state.boss_phase_known?Precision::exact:
                    Precision::unknown,
                state.boss_phase_known?"mechanism boss phase":"boss phase not recovered");
            state.provenance.set("enemy.ai_internal_memory",Precision::unknown,
                "entity AI fields that are not read cannot be restored");
            if(!state.has_precise_attack&&unknown) {
                const auto found=tracking.find(entity.address);
                if(found!=tracking.end()&&!found->second.empty())
                    state.provenance.set("enemy.unknown_tracking",Precision::estimated,
                        "UnknownThreatManager generic physical track",8);
            }
            out.enemies.push_back(std::move(state));
        }else if(entity.type==9||entity.type==2) {
            ProjectileState state;
            state.entity=entity;
            state.role=entity.friendly?ProjectileRole::friendly:ProjectileRole::hostile;
            mark_entity_core(state.provenance,entity,"projectile");
            mark_entity_behavior(state.provenance,entity);
            state.provenance.set("projectile.birth",entity.birth_known?Precision::exact:
                    Precision::estimated,
                entity.birth_known?"Reader Entity::InitSeed/birth frame":"birth frame not read");
            out.projectiles.push_back(std::move(state));
        }
        if(options_.classify_lifecycle) {
            current[entity.address]={entity.address,entity.type,entity.variant,entity.subtype,
                entity.hp,entity.dead||!entity.alive()};
        }
    }

    // Lifecycle: one pass over previous -> current.
    if(options_.classify_lifecycle) {
        for(const auto&[id,now]:current) {
            const auto before=previous_.find(id);
            if(before==previous_.end()) {
                if(last_clock_!=0)
                    out.lifecycle.push_back({id,LifecycleKind::spawned,now.type,now.variant,now.subtype,now.hp});
                continue;
            }
            if(now.dead&&!before->second.dead) {
                out.lifecycle.push_back({id,LifecycleKind::died,now.type,now.variant,now.subtype,now.hp});
                ++report_.died;
            }else if(!now.dead&&before->second.dead) {
                out.lifecycle.push_back({id,LifecycleKind::revived,now.type,now.variant,now.subtype,now.hp});
                ++report_.revived;
            }else if(now.type!=before->second.type||now.variant!=before->second.variant) {
                out.lifecycle.push_back({id,LifecycleKind::replaced,now.type,now.variant,now.subtype,now.hp});
                ++report_.replaced;
            }
        }
        for(const auto&[id,before]:previous_) {
            if(current.find(id)!=current.end())continue;
            if(before.dead)continue;
            out.lifecycle.push_back({id,LifecycleKind::despawned,before.type,before.variant,before.subtype,before.hp});
            ++report_.despawned;
        }
        for(const auto& transition:out.lifecycle)
            if(transition.kind==LifecycleKind::spawned)++report_.spawned;
        previous_=std::move(current);
    }

    // Entity timers and attack cooldowns. Timers are the native countdowns the
    // Reader exposes; anything not exposed stays unknown.
    for(const auto& enemy:out.enemies) {
        EntityTimer timer;
        timer.id=enemy.entity.address;timer.birth=enemy.entity.birth;
        timer.timeout=enemy.entity.timeout;timer.state=enemy.entity.state;
        timer.state_frame=enemy.entity.state_frame;
        timer.projectile_cooldown=enemy.entity.projectile_cooldown;
        timer.projectile_delay=enemy.entity.projectile_delay;
        timer.boss_status_cooldown=enemy.entity.boss_status_cooldown;
        timer.animation_frame=enemy.entity.animation_frame;
        timer.animation_length=enemy.entity.animation_length;
        timer.animation=enemy.entity.animation;
        timer.animation_loop=enemy.entity.animation_looping;
        timer.dead=enemy.entity.dead;
        timer.provenance.set("timer.birth",enemy.entity.birth_known?Precision::exact:
                Precision::estimated,
            enemy.entity.birth_known?"Reader birth frame":"frame clock + age");
        timer.provenance.set("timer.timeout",Precision::exact,"Reader Entity::Timeout");
        timer.provenance.set("timer.animation",Precision::estimated,
            "animation update count derived from Reader frame/speed");
        timer.provenance.set("timer.attack_cooldown",Precision::exact,"Reader native cooldown");
        out.timers.push_back(std::move(timer));
        AttackCooldown cooldown;
        cooldown.source=enemy.entity.address;
        cooldown.projectile_cooldown=enemy.entity.projectile_cooldown;
        cooldown.projectile_delay=enemy.entity.projectile_delay;
        cooldown.known=enemy.entity.projectile_cooldown!=0||enemy.entity.projectile_delay!=0;
        cooldown.precision=cooldown.known?Precision::exact:Precision::unknown;
        cooldown.source_note=cooldown.known?"Reader native cooldown fields":
            "zero is ambiguous: idle and ready are indistinguishable";
        out.cooldowns.push_back(std::move(cooldown));
    }
    AttackCooldown player_cooldown;
    player_cooldown.source=player.body.address;
    player_cooldown.known=false;
    player_cooldown.source_note="Reader does not expose the tear cooldown";
    out.cooldowns.push_back(std::move(player_cooldown));

    // Hazards already exist in the world (creep, fire, spikes) and are real.
    int hazard_budget=options_.max_hazards;
    if(frame.grid.valid) {
        for(int index=0;index<int(frame.grid.cells.size());++index) {
            const auto& cell=frame.grid.cells[index];
            if(!cell.danger)continue;
            if(hazard_budget--<=0)break;
            HazardState hazard;
            hazard.kind=HazardKind::unknown;
            hazard.pos=frame.grid.center(index);
            hazard.radius=18;
            hazard.start=0;hazard.until=1e9;
            hazard.damage=1;hazard.damage_class=DamageClass::hazard;
            hazard.damage_timing=DamageTiming::periodic;
            hazard.shape=Shape::disc;
            hazard.label="room-cell-hazard";
            hazard.evidence="Reader cell danger/type";
            hazard.precision=Precision::exact;
            hazard.provenance.set("hazard.cell",Precision::exact,"Reader cell type/danger");
            hazard.provenance.set("hazard.radius",Precision::estimated,
                "cell half-size approximation",8);
            out.hazards.push_back(std::move(hazard));
            ++report_.real_hazards;
        }
    }
    // Mechanism warnings that describe a future attack. A warning that only
    // repeats an entity that will be simulated as an attack primitive would
    // double count, so it is dropped.
    if(mechanisms&&options_.include_mechanism_warnings&&mechanisms->valid&&
       mechanisms->pid==frame.pid&&mechanisms->room==frame.room) {
        auto duplicates_intent=[&](const MechanismWarning& warning) {
            const auto found=by_enemy.find(warning.source);
            if(found==by_enemy.end())return false;
            for(const auto& intent:found->second) {
                if(intent.primitive==AttackPrimitive::unknown)continue;
                const double intent_start=intent.trigger_time;
                if(std::abs(intent_start-warning.start)<=options_.warning_dedupe_seconds&&
                   intent.projectile_speed>0&&warning.vel.norm()>0)
                    return true;
                if(std::abs(intent.collision_radius-warning.radius)<=
                   options_.warning_dedupe_distance&&
                   std::abs(intent_start-warning.start)<=options_.warning_dedupe_seconds)
                    return true;
            }
            return false;
        };
        for(const auto& warning:mechanisms->warnings) {
            if(!warning.predictive)continue;
            if(int(warning.confidence*100)<options_.min_confidence_hundredths)continue;
            if(duplicates_intent(warning)) {++report_.deduplicated_hazards;continue;}
            if(hazard_budget--<=0)break;
            HazardState hazard;
            const std::string kind=warning.kind;
            if(kind.find("laser")!=std::string::npos)hazard.kind=HazardKind::laser;
            else if(kind.find("contact")!=std::string::npos)hazard.kind=HazardKind::contact;
            else if(kind.find("explos")!=std::string::npos||kind.find("bomb")!=std::string::npos)
                hazard.kind=HazardKind::explosion;
            else if(kind.find("creep")!=std::string::npos)hazard.kind=HazardKind::creep;
            else hazard.kind=HazardKind::warning;
            hazard.pos=warning.pos;hazard.end=warning.end;hazard.vel=warning.vel;
            hazard.radius=warning.radius;hazard.start=warning.start;hazard.until=warning.until;
            hazard.damage_class=damage_class_of(warning.kind);
            hazard.damage_timing=damage_timing_of(hazard.damage_class,warning.kind);
            hazard.risk_weight=1;hazard.source=warning.source;
            hazard.virtual_hazard=true;
            hazard.lethal=hazard.damage_class==DamageClass::explosion;
            hazard.label=warning.kind;
            hazard.evidence=warning.evidence_status;
            hazard.shape=warning.shape=="capsule"?Shape::capsule:
                warning.shape=="ring"?Shape::ring:
                warning.shape=="polyline"?Shape::polyline:Shape::disc;
            hazard.precision=warning.timing_verified?Precision::exact:Precision::estimated;
            hazard.provenance.set("hazard.window",warning.timing_verified?Precision::exact:
                    Precision::estimated,
                warning.timing_verified?"mechanism timing verified":"candidate timing",1.0/30);
            hazard.provenance.set("hazard.geometry",warning.planning_validated?Precision::exact:
                    Precision::estimated,
                warning.planning_validated?"planning-validated geometry":"candidate geometry",8);
            out.hazards.push_back(std::move(hazard));
            ++report_.virtual_hazards;
        }
    }
    // Unknown attacks: keep them, but label them unknown. They are never mixed
    // with the real projectile list.
    if(unknown&&options_.include_unknown_attacks) {
        for(const auto& intent:unknown->attack_intents) {
            if(hazard_budget--<=0)break;
            HazardState hazard;
            hazard.kind=intent.primitive==AttackPrimitive::uncertain_corridor?
                HazardKind::warning:HazardKind::unknown;
            hazard.pos=intent.position;hazard.end=intent.target_position;
            hazard.radius=std::max(8.0,intent.collision_radius>0?intent.collision_radius:24);
            hazard.start=intent.trigger_time>=0?intent.trigger_time:0;
            hazard.until=hazard.start+std::max(0.1,intent.duration);
            hazard.damage_class=DamageClass::unknown;
            hazard.damage_timing=DamageTiming::window;
            hazard.risk_weight=std::max(1.0,intent.risk_weight);
            hazard.source=intent.enemy_id;
            hazard.virtual_hazard=true;
            hazard.shape=intent.primitive==AttackPrimitive::uncertain_corridor?
                Shape::capsule:Shape::disc;
            hazard.label="unknown-attack-hypothesis";
            hazard.evidence=intent.evidence_status;
            hazard.precision=Precision::unknown;
            hazard.provenance.set("hazard.timing",Precision::unknown,
                "no mechanism timing; generic hypothesis");
            hazard.provenance.set("hazard.geometry",Precision::unknown,
                "no mechanism geometry; conservative bound");
            out.hazards.push_back(std::move(hazard));
            ++report_.virtual_hazards;
        }
    }
    // Unknown tracking threats that are not already represented by an enemy
    // body (for example an effect entity) become physical hazards.
    if(unknown&&options_.include_unknown_tracking) {
        for(const auto& threat:unknown->tracking_threats) {
            bool body_present=false;
            for(const auto& enemy:out.enemies)
                if(enemy.entity.address==threat.source) {body_present=true;break;}
            if(body_present)continue;
            if(hazard_budget--<=0)break;
            HazardState hazard;
            hazard.kind=HazardKind::contact;
            hazard.pos=threat.pos;hazard.end=threat.end;hazard.vel=threat.vel;
            hazard.radius=threat.radius;hazard.start=threat.start;hazard.until=threat.until;
            hazard.damage_class=DamageClass::contact;
            hazard.damage_timing=DamageTiming::window;
            hazard.risk_weight=std::max(1.0,threat.risk_weight);
            hazard.source=threat.source;hazard.virtual_hazard=true;
            hazard.shape=threat.shape;hazard.label="unknown-tracking-body";
            hazard.evidence=threat.evidence_status;hazard.precision=Precision::unknown;
            hazard.path=threat.motion_path;
            hazard.provenance.set("hazard.motion",Precision::estimated,
                "generic physical tracking path",12);
            hazard.provenance.set("hazard.geometry",Precision::unknown,
                "unknown body collision geometry");
            out.hazards.push_back(std::move(hazard));
            ++report_.virtual_hazards;
        }
    }

    out.native_target_order=frame.native_target_order;
    out.native_target_order_known=frame.native_target_order_known;
    out.rng.available=false;
    out.rng.source="Reader does not capture the native RNG state";
    out.rng.precision=Precision::unknown;

    out.provenance.set("snapshot.entities",Precision::exact,
        "entity identities are Reader addresses and seeds");
    out.provenance.set("snapshot.relations",Precision::exact,
        "Reader parent/spawner/owner/child links");
    out.provenance.set("snapshot.coverage_gap",Precision::unknown,
        "RNG, spawn queues and unmodelled AI state are not restorable from the Reader");
    out.provenance.set("snapshot.hazards.real",Precision::exact,
        "real hazard cells and existing entities come from Reader memory");
    out.provenance.set("snapshot.hazards.virtual",Precision::estimated,
        "pre-spawn mechanism warnings and unknown-attack hypotheses");
    out.provenance.set("snapshot.timers",Precision::estimated,
        "native countdowns are exact, animation update projections are estimated");

    out.recount();
    report_.enemies=int(out.enemies.size());
    report_.projectiles=int(out.projectiles.size());
    report_.hazards=int(out.hazards.size());
    report_.exact_fields=out.exact_fields;
    report_.estimated_fields=out.estimated_fields;
    report_.unknown_fields=out.unknown_fields;
    int stale=0;
    for(const auto& enemy:out.enemies) {
        auto missing=[&](uint32_t id) {return id!=0&&current.find(id)==current.end();};
        if(missing(enemy.entity.spawner))++stale;
        if(missing(enemy.entity.parent))++stale;
        if(missing(enemy.entity.target)&&enemy.entity.target!=frame.player.body.address)++stale;
    }
    report_.stale_references=stale;
    report_.dedupe_note="virtual hazards are deduplicated against recognised intents of the "
        "same source; real entities and virtual hazards never share a list";
    out.diagnostics["bridge"]=report_.to_json();
    last_clock_=frame.clock;last_room_=frame.room;
    return out;
}
} // namespace gamebot
