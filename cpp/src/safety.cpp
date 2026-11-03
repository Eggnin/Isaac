#include "gamebot/safety.hpp"
#include "gamebot/planner.hpp"
#include <algorithm>
#include <array>
#include <cmath>
#include <limits>
#include <vector>

namespace gamebot {
namespace {
constexpr double big = 1e9;
bool live(const SimProjectile& projectile) { return !projectile.dead; }
bool live(const SimEnemy& enemy) { return !enemy.dead && enemy.hp > 0; }
bool active_at(const SimHazard& hazard, double time) {
    return !hazard.dead && time >= hazard.active_from && time <= hazard.active_until;
}
bool intersects_window(const SimHazard& hazard, double from, double until) {
    return !hazard.dead && hazard.active_until >= from && hazard.active_from <= until;
}
bool contains(const std::string& text, const char* needle) {
    return text.find(needle) != std::string::npos;
}
bool laser_like(const SimHazard& hazard) {
    return hazard.spec.kind == HazardKind::laser ||
        hazard.spec.kind == HazardKind::warning ||
        contains(hazard.spec.label, "laser") || contains(hazard.spec.evidence, "laser");
}
double hazard_gap(const SimHazard& hazard, Vec a, Vec b, double player_radius) {
    const double radius = player_radius + hazard.spec.radius;
    double best = std::numeric_limits<double>::infinity();
    auto segment = [&](Vec first, Vec last) {
        return moving_clearance(a, b, first, last, radius);
    };
    if (hazard.spec.nodes.size() >= 2) {
        for (size_t i = 0; i + 1 < hazard.spec.nodes.size(); ++i)
            best = std::min(best, segment(hazard.spec.nodes[i].pos,
                hazard.spec.nodes[i + 1].pos));
        return best;
    }
    if (hazard.spec.path.size() >= 2) {
        for (size_t i = 0; i + 1 < hazard.spec.path.size(); ++i)
            best = std::min(best, segment(hazard.spec.path[i], hazard.spec.path[i + 1]));
        return best;
    }
    if (hazard.spec.shape == Shape::capsule || hazard.spec.shape == Shape::polyline)
        return segment(hazard.spec.pos, hazard.spec.end);
    return segment(hazard.spec.pos, hazard.spec.pos);
}
double room_boundary_clearance(const Grid& grid, Vec point, double radius) {
    if (grid.native_max.x > grid.native_min.x &&
        grid.native_max.y > grid.native_min.y) {
        return std::min({point.x - grid.native_min.x - radius,
            grid.native_max.x - point.x - radius,
            point.y - grid.native_min.y - radius,
            grid.native_max.y - point.y - radius});
    }
    return grid.clearance(point, radius, false);
}
double available_area_fraction(const SimWorld& world, const SafetyGateConfig& config) {
    const auto& grid = world.room.grid;
    if (!grid.valid || grid.width <= 0 || grid.height <= 0) return 1.0;
    const double sample_radius = std::max(12.0, config.clearance_radius * 0.5);
    const double player_radius = std::max(1.0, world.player.radius * 0.5);
    int inside = 0;
    int total = 0;
    for (int i = 0; i < 24; ++i) {
        const double angle = 2.0 * pi * double(i) / 24.0;
        const Vec point = world.player.pos + Vec{std::cos(angle), std::sin(angle)} * sample_radius;
        ++total;
        if (grid.walkable(point, player_radius, world.player.flying) &&
            room_boundary_clearance(grid, point, player_radius) >= 0)
            ++inside;
    }
    return total > 0 ? std::clamp(double(inside) / double(total), 0.05, 1.0) : 1.0;
}
double clamp01(double value) {
    return std::max(0.0,std::min(1.0,value));
}
double projectile_uncertainty(const SimProjectile& projectile,const SafetyGateConfig& config);
int sector8(Vec direction) {
    if(!direction.finite()||direction.norm()<1e-6)return -1;
    const double angle=std::atan2(direction.y,direction.x);
    int sector=int(std::floor((angle+pi)/(2.0*pi)*8.0))%8;
    return sector<0?sector+8:sector;
}
// Path-level mobility. The escape_directions probe answers "is one step clear
// right now?"; this static BFS answers "is this floor pocket connected, how many
// independent exits exist, and is this a dead end?" Dynamic enemies are excluded
// from the connectivity mask and remain in the risk scores. It never changes the
// hard safety gate; it only produces preference terms for safe-looking corners.
void update_mobility(const SimWorld& world,const SafetyGateConfig& config,
                     SafetyMetrics& metrics) {
    const auto& grid=world.room.grid;
    if(!grid.valid||grid.width<=0||grid.height<=0||
       int(grid.cells.size())!=grid.width*grid.height) {
        metrics.reachable_area=1.0;
        return;
    }
    const double player_radius=std::max(1.0,world.player.radius);
    const int radius=std::clamp(config.mobility_cells,1,12);
    const int px=std::clamp(int(std::lround((world.player.pos.x-40.0)/40.0)),
        0,grid.width-1);
    const int py=std::clamp(int(std::lround((world.player.pos.y-120.0)/40.0)),
        0,grid.height-1);
    // Enemies remain here for dynamic risk scoring (encirclement and the
    // escape probe). They are deliberately not part of the static BFS mask.
    std::vector<const SimEnemy*> enemies;
    enemies.reserve(12);
    for(const auto& enemy:world.enemies) {
        if(!live(enemy)||!(enemy.contact||enemy.chase))continue;
        if(distance(enemy.pos,world.player.pos)>420)continue;
        enemies.push_back(&enemy);
        if(enemies.size()>=12)break;
    }
    // Static connectivity is a property of the room, not of the current enemy
    // positions. Only permanent geometry may remove a cell from the BFS mask:
    // collision cells, rock, room shape and native danger tiles (the latter are
    // already handled by Grid::walkable). A moving enemy that happens to stand
    // in a corridor must not split an otherwise connected region forever.
    auto statically_passable=[&](int index) {
        if(!grid.inside_shape(index))return false;
        const Vec center=grid.center(index);
        return grid.walkable(center,std::max(2.0,player_radius*0.5),
            world.player.flying);
    };
    std::vector<int8_t> pass(grid.width*grid.height,0);
    std::vector<int> local_indices;
    for(int dy=-radius;dy<=radius;++dy)for(int dx=-radius;dx<=radius;++dx) {
        if(std::abs(dx)+std::abs(dy)>radius)continue;
        const int x=px+dx,y=py+dy;
        if(x<0||y<0||x>=grid.width||y>=grid.height)continue;
        const int index=y*grid.width+x;
        if(!grid.inside_shape(index))continue;
        if(statically_passable(index)) {
            pass[index]=1;
            local_indices.push_back(index);
        }
    }
    metrics.local_walkable_cells=int(local_indices.size());
    std::vector<int> distance_to(grid.width*grid.height,-1);
    std::vector<int> queue;
    const int start=py*grid.width+px;
    distance_to[start]=0;
    queue.push_back(start);
    for(size_t head=0;head<queue.size();++head) {
        const int index=queue[head];
        const int x=index%grid.width,y=index/grid.width;
        const int depth=distance_to[index];
        if(depth>=radius)continue;
        for(int dy=-1;dy<=1;++dy)for(int dx=-1;dx<=1;++dx) {
            if(dx==0&&dy==0)continue;
            const int nx=x+dx,ny=y+dy;
            if(nx<0||ny<0||nx>=grid.width||ny>=grid.height)continue;
            if(std::abs(nx-px)+std::abs(ny-py)>radius)continue;
            const int next=ny*grid.width+nx;
            if(!pass[next]||distance_to[next]>=0)continue;
            distance_to[next]=depth+1;
            queue.push_back(next);
        }
    }
    int reachable=0;
    for(int index:local_indices)
        if(distance_to[index]>=0)++reachable;
    metrics.reachable_cells=reachable;
    metrics.reachable_area=metrics.local_walkable_cells>0?
        std::clamp(double(reachable)/metrics.local_walkable_cells,0.0,1.0):0.0;
    int routes=0;
    for(int dy=-1;dy<=1;++dy)for(int dx=-1;dx<=1;++dx) {
        if(dx==0&&dy==0)continue;
        const int x=px+dx,y=py+dy;
        if(x<0||y<0||x>=grid.width||y>=grid.height)continue;
        const int index=y*grid.width+x;
        if(!pass[index]||distance_to[index]<0)continue;
        bool extends=false;
        for(int ey=-1;ey<=1&&!extends;++ey)for(int ex=-1;ex<=1;++ex) {
            if(ex==0&&ey==0)continue;
            const int nx=x+ex,ny=y+ey;
            if(nx<0||ny<0||nx>=grid.width||ny>=grid.height)continue;
            const int next=ny*grid.width+nx;
            if(next==start)continue;
            if(pass[next]&&distance_to[next]>1) {extends=true;break;}
        }
        if(extends)++routes;
    }
    metrics.mobility_routes=routes;
    metrics.exit_block_risk=clamp01(1.0-double(routes)/8.0);
    int open_distance=100000;
    for(int index:local_indices) {
        if(distance_to[index]<0)continue;
        const int x=index%grid.width,y=index/grid.width;
        int neighbors=0;
        for(int dy=-1;dy<=1;++dy)for(int dx=-1;dx<=1;++dx) {
            if(dx==0&&dy==0)continue;
            const int nx=x+dx,ny=y+dy;
            if(nx<0||ny<0||nx>=grid.width||ny>=grid.height)continue;
            if(pass[ny*grid.width+nx])++neighbors;
        }
        if(neighbors>=std::clamp(config.mobility_open_neighbors,1,8))
            open_distance=std::min(open_distance,distance_to[index]);
    }
    const double speed=std::max(60.0,world.player.max_speed);
    metrics.time_to_open=open_distance>=100000?
        999.0:double(open_distance)*40.0/speed;
    std::array<bool,8> sectors{};
    int approaching=0;
    for(const auto* enemy:enemies) {
        const int sector=sector8(enemy->pos-world.player.pos);
        if(sector>=0)sectors[size_t(sector)]=true;
        if(enemy->chase||(world.player.pos-enemy->pos).dot(enemy->vel)>0)
            ++approaching;
    }
    int occupied=0;
    for(bool value:sectors)if(value)++occupied;
    const double approach=approaching>0?
        double(approaching)/std::max(1,metrics.escape_directions+approaching):0.0;
    metrics.encirclement_risk=clamp01(
        0.65*double(occupied)/8.0+0.35*approach);
    metrics.dead_end_risk=clamp01(1.0-metrics.reachable_area+
        (routes<=1?0.20:0.0)+(metrics.time_to_open>1.0?0.20:0.0));
    metrics.corner_risk=clamp01(
        0.35*(1.0-metrics.reachable_area)+
        0.25*(1.0-double(routes)/4.0)+
        0.15*std::clamp(metrics.time_to_open/1.2,0.0,1.0)+
        0.15*metrics.encirclement_risk+
        0.10*metrics.dead_end_risk);
}
double projectile_uncertainty(const SimProjectile& projectile, const SafetyGateConfig& config) {
    if (!projectile.maneuver_uncertain) return 0.0;
    return std::min(config.uncertain_projectile_margin,
        std::max(0.0, projectile.maneuver_uncertainty));
}
double projectile_gap(const SimProjectile& projectile, Vec point, double player_radius,
                      const SafetyGateConfig& config) {
    return distance(projectile.pos, point) - projectile.radius - player_radius -
        projectile_uncertainty(projectile, config);
}
double enemy_gap(const SimEnemy& enemy, Vec point, double player_radius) {
    return distance(enemy.pos, point) - enemy.radius - player_radius;
}
double threat_weight(double gap, double radius) {
    if (gap >= radius) return 0.0;
    return std::clamp(1.0 - std::max(0.0, gap) / std::max(1.0, radius), 0.0, 1.0);
}
} // namespace

json SafetyMetrics::to_json() const {
    return {{"evaluated", evaluated}, {"in_danger", in_danger}, {"safe", safe},
        {"horizon_frames", horizon_frames}, {"first_hit_frame", first_hit_frame},
        {"escape_directions", escape_directions},
        {"special_projectiles", special_projectiles},
        {"uncertain_maneuvers", uncertain_maneuvers},
        {"min_clearance", min_clearance}, {"local_density", local_density},
        {"available_area", available_area}, {"boundary_clearance", boundary_clearance},
        {"laser_pressure", laser_pressure}, {"maneuverability", maneuverability},
        {"reachable_cells", reachable_cells},
        {"local_walkable_cells", local_walkable_cells},
        {"mobility_routes", mobility_routes},
        {"reachable_area", reachable_area},
        {"time_to_open", time_to_open},
        {"exit_block_risk", exit_block_risk},
        {"encirclement_risk", encirclement_risk},
        {"dead_end_risk", dead_end_risk},
        {"corner_risk", corner_risk}};
}

SafetyMetrics evaluate_safety(const SimWorld& world, const SafetyGateConfig& config,
                              const std::vector<SimEvent>& events, int elapsed_frames,
                              double damage_taken) {
    SafetyMetrics metrics;
    metrics.evaluated = true;
    metrics.horizon_frames = std::max(1, config.collision_horizon_frames);
    const double dt = 1.0 / 60.0;
    const double player_radius = std::max(0.1, world.player.radius);
    const double now = world.time;
    const double clearance_seconds = double(std::max(1, config.clearance_horizon_frames)) * dt;
    const double escape_seconds = double(std::max(1, config.escape_horizon_frames)) * dt;
    const double laser_seconds = double(std::max(1, config.laser_warning_frames)) * dt;
    const auto& grid = world.room.grid;
    metrics.available_area = available_area_fraction(world, config);
    metrics.boundary_clearance = room_boundary_clearance(grid, world.player.pos, player_radius);
    metrics.min_clearance = std::isfinite(metrics.boundary_clearance) ?
        metrics.boundary_clearance : big;

    // Current damage geometry. This is the actual hard-safety question, not a
    // preference and not an attack-alignment heuristic.
    if (grid.valid && grid.hazard_clearance(world.player.pos, player_radius,
            world.player.flying) < config.safe_margin)
        metrics.in_danger = true;
    for (const auto& hazard : world.hazards) {
        if (!active_at(hazard, now)) continue;
        const double gap = hazard_gap(hazard, world.player.pos, world.player.pos, player_radius);
        metrics.min_clearance = std::min(metrics.min_clearance, gap);
        if (gap < config.safe_margin) metrics.in_danger = true;
    }
    for (const auto& projectile : world.projectiles) {
        if (!live(projectile) || !projectile.hostile) continue;
        if (projectile.maneuver_uncertain) ++metrics.uncertain_maneuvers;
        if (!projectile.maneuver_kind.empty()) ++metrics.special_projectiles;
        const double gap = projectile_gap(projectile, world.player.pos, player_radius, config);
        metrics.min_clearance = std::min(metrics.min_clearance, gap);
        if (gap < config.safe_margin) metrics.in_danger = true;
    }
    for (const auto& enemy : world.enemies) {
        if (!live(enemy) || !(enemy.contact || enemy.chase)) continue;
        const double gap = enemy_gap(enemy, world.player.pos, player_radius);
        metrics.min_clearance = std::min(metrics.min_clearance, gap);
        if (gap < config.safe_margin) metrics.in_danger = true;
    }

    // Local density: how crowded this landing area is, not whether one specific
    // projectile will hit. Projectile future samples use the clearance horizon,
    // while lasers keep their own longer warning horizon.
    double density = 0.0;
    for (const auto& projectile : world.projectiles) {
        if (!live(projectile) || !projectile.hostile) continue;
        const double extra = projectile_uncertainty(projectile, config);
        for (int step = 0; step <= 2; ++step) {
            const double time = clearance_seconds * double(step) / 2.0;
            const Vec point = projectile.pos + projectile.vel * time;
            const double gap = distance(point, world.player.pos) -
                projectile.radius - extra;
            density += threat_weight(gap, config.clearance_radius);
        }
    }
    for (const auto& hazard : world.hazards) {
        if (!intersects_window(hazard, now, now + clearance_seconds)) continue;
        const double gap = hazard_gap(hazard, world.player.pos, world.player.pos,
            player_radius);
        const double weight = std::max(0.5, std::min(3.0, hazard.spec.risk_weight));
        density += weight * threat_weight(gap, config.clearance_radius);
    }
    for (const auto& enemy : world.enemies) {
        if (!live(enemy) || !(enemy.contact || enemy.chase)) continue;
        const double gap = enemy_gap(enemy, world.player.pos, player_radius);
        density += threat_weight(gap, config.clearance_radius);
    }
    metrics.local_density = std::clamp(
        density / std::max(0.05, config.density_reference * metrics.available_area),
        0.0, 1.0);

    // Laser/warning pressure uses the long horizon. A warning that becomes
    // active later still constrains where the player should stand now.
    for (const auto& hazard : world.hazards) {
        if (!laser_like(hazard) || !intersects_window(hazard, now, now + laser_seconds))
            continue;
        const double lead = std::max(0.0, hazard.active_from - now);
        const double urgency = 1.0 - std::clamp(lead / std::max(1e-6, laser_seconds), 0.0, 1.0);
        const double gap = hazard_gap(hazard, world.player.pos, world.player.pos, player_radius);
        const double proximity = std::clamp(1.0 - std::max(0.0, gap) /
            std::max(1.0, config.clearance_radius * 1.5), 0.0, 1.0);
        metrics.laser_pressure = std::max(metrics.laser_pressure, urgency * proximity);
    }

    // Count exit directions with a swept segment against the *current* threat
    // geometry. This is a manoeuvrability measure; the hard collision gate is
    // still the simulator's actual damage/event result.
    const double probe_distance = std::max(24.0,
        world.player.max_speed * escape_seconds * 0.75);
    for (int move = 0; move < 9; ++move) {
        const Vec endpoint = world.player.pos + direction(static_cast<Move>(move)) * probe_distance;
        if (!grid.sweep_clear(world.player.pos, endpoint, player_radius, world.player.flying))
            continue;
        if (grid.hazard_clearance(endpoint, player_radius, world.player.flying) <
            config.safe_margin)
            continue;
        bool safe = true;
        for (const auto& hazard : world.hazards) {
            if (!intersects_window(hazard, now, now + escape_seconds)) continue;
            if (hazard_gap(hazard, world.player.pos, endpoint, player_radius) < config.safe_margin) {
                safe = false;
                break;
            }
        }
        if (!safe) continue;
        for (const auto& projectile : world.projectiles) {
            if (!live(projectile) || !projectile.hostile) continue;
            const double radius = player_radius + projectile.radius + config.safe_margin +
                projectile_uncertainty(projectile, config);
            if (moving_clearance(world.player.pos, endpoint, projectile.pos, projectile.pos,
                    radius) < 0.0) {
                safe = false;
                break;
            }
        }
        if (!safe) continue;
        for (const auto& enemy : world.enemies) {
            if (!live(enemy) || !(enemy.contact || enemy.chase)) continue;
            const double radius = player_radius + enemy.radius + config.safe_margin;
            if (moving_clearance(world.player.pos, endpoint, enemy.pos, enemy.pos,
                    radius) < 0.0) {
                safe = false;
                break;
            }
        }
        if (safe) ++metrics.escape_directions;
    }
    update_mobility(world,config,metrics);

    for (const auto& event : events) {
        if (event.target != 0) continue;
        if (event.kind == "projectile-hit" || event.kind == "contact-hit" ||
            event.kind == "hazard-hit" || event.kind == "player-death") {
            const int root_frame = world.frame - std::max(0, elapsed_frames);
            const int relative = event.frame - root_frame;
            if (relative < 0) continue; // stale event from before this branch root
            if (metrics.first_hit_frame < 0 || relative < metrics.first_hit_frame)
                metrics.first_hit_frame = relative;
        }
    }

    // `safe` answers the hard question only: is this branch actually taking
    // contact/damage? escape_directions and the BFS mobility fields are soft
    // preferences (Emergency ordering), not survival requirements. A closed
    // corner with no exit probe can still be safe until a real hit appears.
    const bool hit = metrics.first_hit_frame >= 0 || damage_taken > 1e-9;
    metrics.safe = !metrics.in_danger && !hit;
    if (!config.enabled) {
        metrics.safe = true;
        metrics.in_danger = false;
    }
    const double direction_score = double(metrics.escape_directions) / 9.0;
    const double boundary_score = std::clamp(
        metrics.boundary_clearance / std::max(1.0, config.boundary_margin), 0.0, 1.0);
    double maneuver = 0.40 * direction_score + 0.25 * metrics.available_area +
        0.20 * boundary_score + 0.15 * (1.0 - metrics.local_density);
    if (metrics.in_danger) maneuver *= 0.35;
    maneuver *= 1.0 - 0.25 * metrics.laser_pressure;
    // A position with one immediate escape but no reachable open area is not
    // actually manoeuvrable. Keep this as a preference below every hard gate.
    maneuver *= 1.0 - 0.35 * metrics.corner_risk;
    metrics.maneuverability = std::clamp(maneuver, 0.0, 1.0);
    return metrics;
}

SafetyMetrics SafetyGate::assess(const SimWorld& world, const std::vector<SimEvent>& events,
                                 int elapsed_frames, double damage_taken) const {
    return evaluate_safety(world, config_, events, elapsed_frames, damage_taken);
}
bool SafetyGate::passed(const SafetyMetrics& metrics, int elapsed_frames) const {
    if (!config_.enabled) return true;
    return metrics.evaluated && metrics.safe &&
        elapsed_frames >= std::max(0, config_.collision_horizon_frames);
}
} // namespace gamebot
