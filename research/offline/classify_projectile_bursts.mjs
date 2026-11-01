import { existsSync, readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

function finite(value) {
  return Number.isFinite(value);
}

function distance(a, b) {
  return Math.hypot(a.x - b.x, a.y - b.y);
}

function angleDegrees(velocity) {
  return Math.atan2(velocity.y, velocity.x) * 180 / Math.PI;
}

function circularGaps(angles) {
  if (angles.length < 2) return [];
  const sorted = [...angles].sort((a, b) => a - b);
  return sorted.map((angle, index) => {
    const next = index + 1 < sorted.length ? sorted[index + 1] : sorted[0] + 360;
    return next - angle;
  });
}

function classifyBurst(projectiles, source) {
  const velocities = projectiles.map(projectile => projectile.velocity).filter(finitePair);
  const positions = projectiles.map(projectile => projectile.position).filter(finitePair);
  if (!positions.length || !velocities.length) return null;

  const center = {
    x: positions.reduce((sum, point) => sum + point.x, 0) / positions.length,
    y: positions.reduce((sum, point) => sum + point.y, 0) / positions.length,
  };
  const speeds = velocities.map(velocity => Math.hypot(velocity.x, velocity.y));
  const angles = velocities.map(angleDegrees);
  const gaps = circularGaps(angles);
  const gapSpread = gaps.length ? Math.max(...gaps) - Math.min(...gaps) : 0;
  const speedSpread = Math.max(...speeds) - Math.min(...speeds);
  const positionSpread = Math.max(...positions.map(point => distance(point, center)));
  const target = source?.target_pos;
  const sourcePosition = source?.position;
  const expectedGap = 360 / Math.max(1, velocities.length);
  const radial = velocities.length > 1 &&
    gapSpread <= 3 &&
    gaps.every(gap => Math.abs(gap - expectedGap) <= 3);

  let pattern = projectiles.length === 1 ? 'single' : 'unknown';
  if (radial) pattern = `radial-${velocities.length}`;
  else if (velocities.length > 1 && Math.max(...angles) - Math.min(...angles) <= 3) {
    pattern = `parallel-${velocities.length}`;
  }

  return {
    pattern,
    count: projectiles.length,
    center,
    position_spread: positionSpread,
    speed_min: Math.min(...speeds),
    speed_max: Math.max(...speeds),
    speed_spread: speedSpread,
    angle_gaps: gaps,
    gap_spread: gapSpread,
    center_to_source: sourcePosition && finitePair(sourcePosition)
      ? distance(center, sourcePosition)
      : null,
    center_to_target: target && finitePair(target)
      ? distance(center, target)
      : null,
    center_minus_source: sourcePosition && finitePair(sourcePosition)
      ? { x: center.x - sourcePosition.x, y: center.y - sourcePosition.y }
      : null,
  };
}

function finitePair(value) {
  return value && finite(value.x) && finite(value.y);
}

function parseTimeline(path, identity, run) {
  if (!existsSync(path)) return [];
  const lines = readFileSync(path, 'utf8').trim().split(/\r?\n/).filter(Boolean);
  const bursts = [];
  const isolated = run?.dataChecks?.isolated === true;
  let lastSource = null;
  for (const line of lines) {
    const frame = JSON.parse(line);
    const actor = (frame.actors || []).find(candidate => candidate.identity === identity);
    if (actor) lastSource = actor;
    const projectiles = (frame.hazards || []).filter(hazard =>
      (hazard.source_identity === identity ||
        (isolated && hazard.source_identity == null)) &&
      Array.isArray(hazard.kinds) &&
      hazard.kinds.includes('projectile') &&
      hazard.birth === frame.frame
    );
    if (!projectiles.length) continue;
    const source = actor ?? (isolated ? {
      ...(lastSource ?? {}),
      identity,
      position: projectiles[0].position,
      target_pos: lastSource?.target_pos ?? frame.player?.position,
    } : null);
    if (!source) continue;
    const unique = [...new Map(projectiles.map(projectile => [projectile.address, projectile])).values()];
    const classified = classifyBurst(unique, source);
    if (!classified) continue;
    bursts.push({
      frame: frame.frame,
      birth: unique[0].birth,
      source_state: source.state,
      source_animation: source.animation,
      source_animation_frame: source.animation_frame,
      source_ai_i1: source.ai_i1,
      source_ai_i2: source.ai_i2,
      projectile_flags: [...new Set(unique.map(projectile => projectile.projectile_flags).filter(Boolean))],
      angles: unique
        .map(projectile => angleDegrees(projectile.velocity))
        .sort((a, b) => a - b),
      ...classified,
    });
  }
  return bursts;
}

const models = JSON.parse(readFileSync(resolve('research', 'monster-geometry-models-20261030.json'), 'utf8'));
const analysisPath = option('analysis', 'monster-geometry-analysis-all47-20261030.json');
const analysis = JSON.parse(readFileSync(resolve('research', analysisPath), 'utf8'));
const targets = new Set(models.models
  .filter(model => model.kind === 'projectile' && !model.pre_spawn_verified)
  .map(model => model.target_identity));
const selected = new Set(option('ids', '').split(',').map(value => value.trim()).filter(Boolean));
if (selected.size) {
  for (const identity of [...targets]) if (!selected.has(identity)) targets.delete(identity);
}
const reportNames = option('reports', analysis.source_reports.join(','))
  .split(',')
  .map(value => value.trim())
  .filter(Boolean);
const maxRuns = Math.max(1, Number(option('max-runs', 2)));
const output = option('output', 'monster-projectile-burst-classification.json');
const runsByIdentity = new Map([...targets].map(identity => [identity, []]));
const seenTimelines = new Set();

for (const reportName of reportNames) {
  const reportPath = resolve('research', reportName);
  if (!existsSync(reportPath)) continue;
  const report = JSON.parse(readFileSync(reportPath, 'utf8'));
  for (const result of report.results || []) {
    if (!targets.has(result.key)) continue;
    const timeline = result.geometryTimeline?.file;
    if (!timeline || seenTimelines.has(timeline)) continue;
    const runs = runsByIdentity.get(result.key);
    if (runs.length >= maxRuns) continue;
    seenTimelines.add(timeline);
    runs.push({
      seed: result.seed,
      report: reportName,
      timeline,
      bursts: parseTimeline(timeline, result.key, result),
    });
  }
}

const identities = [...targets].sort().map(identity => {
  const runs = runsByIdentity.get(identity);
  const bursts = runs.flatMap(run => run.bursts.map(burst => ({
    seed: run.seed,
    ...burst,
  })));
  const patterns = {};
  for (const burst of bursts) patterns[burst.pattern] = (patterns[burst.pattern] ?? 0) + 1;
  return {
    identity,
    runs: runs.filter(run => run.bursts.length).length,
    bursts: bursts.length,
    patterns,
    observations: bursts,
  };
});

const result = {
  format: 'isaac-gamebot-projectile-burst-classification-v1',
  target_groups: models.models.filter(model =>
    model.kind === 'projectile' && !model.pre_spawn_verified
  ).length,
  identities: identities.length,
  identities_with_bursts: identities.filter(identity => identity.bursts > 0).length,
  results: identities,
};
writeFileSync(resolve('research', output), `${JSON.stringify(result, null, 2)}\n`);

for (const identity of identities) {
  console.log(JSON.stringify({
    identity: identity.identity,
    runs: identity.runs,
    bursts: identity.bursts,
    patterns: identity.patterns,
  }));
}
console.log(JSON.stringify({
  output,
  identities: result.identities,
  identitiesWithBursts: result.identities_with_bursts,
}));
