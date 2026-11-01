import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { NPC_CONFIGS } from './npc_catalog.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

function readJson(path) {
  return JSON.parse(readFileSync(path, 'utf8'));
}

function shapeFor(kind) {
  if (kind === 'laser') return 'capsule-or-polyline';
  if (kind === 'projectile' || kind === 'contact' || kind === 'creep' ||
      kind === 'bomb' || kind === 'falling-impact') return 'disc';
  if (kind === 'cage-rock-wave') return 'disc-or-grid-cell';
  return 'unknown';
}

function modelId(group) {
  return group.key;
}

const analysisPath = option('analysis', 'monster-geometry-analysis-all2-20261030.json');
const outputPath = option('output', 'monster-geometry-models-20261030.json');
const analysis = readJson(resolve('research', analysisPath));
const roles = new Map(NPC_CONFIGS.map(entry => [entry.key, entry.role]));
const analysisStatus = new Map((analysis.identities ?? []).map(item => [item.identity, item.status]));
const staticMechanisms = readJson(resolve('data', 'npc', 'engine_monster_static_mechanism_candidates.json'));
const staticContactCandidate = new Map((staticMechanisms.entries ?? []).map(entry => [
  entry.key,
  entry.contact_damage?.base_candidate === true,
]));
const groupsByIdentity = new Map();
for (const group of analysis.groups ?? []) {
  if (group.status === 'excluded_unrelated_source') continue;
  if (!groupsByIdentity.has(group.target_identity)) groupsByIdentity.set(group.target_identity, []);
  groupsByIdentity.get(group.target_identity).push(group);
}

const monsterIdentities = NPC_CONFIGS.filter(entry => entry.role === 'monster');
const models = [];
const runtimeModels = [];
const unresolved = [];
const runtimeGeometryOnly = [];
for (const entry of monsterIdentities) {
  const groups = groupsByIdentity.get(entry.key) ?? [];
  const verified = groups.filter(group => group.status === 'verified_geometry');
  const provisional = groups.filter(group => group.status !== 'verified_geometry');
  const runtimeOnly = groups.filter(group =>
    group.runtime_geometry_verified && group.status !== 'verified_geometry'
  );
  for (const group of verified) {
    models.push({
      id: modelId(group),
      target_identity: group.target_identity,
      target_role: roles.get(group.target_identity) ?? 'unknown',
      source_identity: group.source_identity,
      source_identities: group.source_identities ?? [],
      source_family: group.source_family ?? null,
      source_link_evidence: group.source_link_evidence ?? [],
      target_relation: group.target_relation ?? 'unknown',
      attributed_target_identity: group.attributed_target_identity ?? null,
      hazard_identity: group.hazard_identity,
      kind: group.kind,
      shape: shapeFor(group.kind),
      source_state: group.source_state,
      source_animation: group.source_animation,
      trigger_animation_frame: group.trigger_animation_frame,
      trigger_state_frame: group.trigger_state_frame,
      trigger_delta_frames: group.trigger_delta_frames,
      radius: group.radius,
      laser_radius: group.laser_radius,
      timeout: group.timeout,
      active_frames: group.active_frames,
      speed: group.speed,
      spawn_offset_x: group.spawn_offset_x,
      spawn_offset_y: group.spawn_offset_y,
      endpoint_length: group.endpoint_length,
      projectile_flags: group.projectile_flags,
      geometry_scope: group.geometry_scope,
      duration_bound_frames: group.duration_bound_frames,
      duration_bound_source: group.duration_bound_source,
      contact_radius_bound: group.contact_radius_bound ?? null,
      radius_bound: group.radius_bound ?? null,
      contact_damage_sources: group.contact_damage_sources ?? [],
      static_contact: group.static_contact ?? null,
      pre_spawn_verified: group.pre_spawn_verified,
      seeds: group.seeds,
      samples: group.samples,
      gates: group.gates,
      evidence_status: group.evidence_status,
      geometry_verified: true,
      planning_validated: group.kind === 'contact',
    });
  }
  for (const group of runtimeOnly) {
    runtimeModels.push({
      id: group.key,
      target_identity: group.target_identity,
      target_role: roles.get(group.target_identity) ?? 'unknown',
      source_identity: group.source_identity,
      source_identities: group.source_identities ?? [],
      source_link_evidence: group.source_link_evidence ?? [],
      target_relation: group.target_relation ?? 'unknown',
      hazard_identity: group.hazard_identity,
      kind: group.kind,
      shape: shapeFor(group.kind),
      source_state: group.source_state,
      source_animation: group.source_animation,
      trigger_animation_frame: group.trigger_animation_frame,
      trigger_state_frame: group.trigger_state_frame,
      trigger_delta_frames: group.trigger_delta_frames,
      radius: group.radius,
      speed: group.speed,
      spawn_offset_x: group.spawn_offset_x,
      spawn_offset_y: group.spawn_offset_y,
      projectile_flags: group.projectile_flags,
      radius_bound: group.radius_bound ?? null,
      contact_damage_sources: group.contact_damage_sources ?? [],
      seeds: group.seeds,
      samples: group.samples,
      gates: group.gates,
      geometry_verified: false,
      runtime_geometry_verified: true,
      planning_validated: false,
      evidence_status: 'runtime-parametric geometry only; trigger timing unverified',
    });
  }
  const analyzedStatus = analysisStatus.get(entry.key) ?? 'no_geometry_observed';
  const status = verified.length && analyzedStatus === 'provisional_geometry'
    ? 'partial_geometry'
    : analyzedStatus;
  if (status === 'runtime_geometry_only') {
    runtimeGeometryOnly.push({
      identity: entry.key,
      name: entry.name,
      status,
      verified_groups: verified.length,
      runtime_groups: runtimeOnly.length,
      limitation: 'Geometry is stable at spawn, but the pre-spawn trigger is unverified.',
    });
    continue;
  }
  if (status === 'partial_geometry' || status === 'provisional_geometry') {
    unresolved.push({
      identity: entry.key,
      name: entry.name,
      status,
      verified_groups: verified.length,
      provisional_groups: provisional.length,
      provisional_ids: provisional.map(modelId),
    });
  } else if (status === 'no_geometry_observed') {
    unresolved.push({
      identity: entry.key,
      name: entry.name,
      status: 'no_geometry_observed',
      verified_groups: 0,
      provisional_groups: 0,
      provisional_ids: [],
    });
  }
}

const duplicateRuntimeModels = [];
const keptRuntimeModels = [];
const flagLow32 = value => String(value).toLowerCase().slice(-8);
const sameFlags = (a, b) => {
  const left = [...(a ?? [])].sort();
  const right = [...(b ?? [])].sort();
  return JSON.stringify(left) === JSON.stringify(right) ||
    (left.length === right.length &&
      left.every((value, index) => flagLow32(value) === flagLow32(right[index])));
};
const within = (stats, value, margin = 20) => !stats || !Number.isFinite(value) ||
  (value >= stats.min - margin && value <= stats.max + margin);
const closeMean = (a, b, relative = 0.03, absolute = 1) =>
  a && b && Number.isFinite(a.mean) && Number.isFinite(b.mean) &&
  Math.abs(a.mean - b.mean) <= Math.max(absolute, Math.abs(a.mean) * relative);
for (const runtime of runtimeModels) {
  const match = models.find(model =>
    model.target_identity === runtime.target_identity &&
    model.kind === runtime.kind &&
    model.hazard_identity === runtime.hazard_identity &&
    model.source_state === runtime.source_state &&
    model.source_animation === runtime.source_animation &&
    sameFlags(model.projectile_flags, runtime.projectile_flags) &&
    closeMean(model.radius, runtime.radius) &&
    closeMean(model.speed, runtime.speed) &&
    within(model.spawn_offset_x, runtime.spawn_offset_x?.mean) &&
    within(model.spawn_offset_y, runtime.spawn_offset_y?.mean)
  );
  if (match) {
    duplicateRuntimeModels.push({
      id: runtime.id,
      target_identity: runtime.target_identity,
      merged_into: match.id,
      reason: 'same target, hazard, flags, state/animation, speed/radius, and spawn range',
    });
  } else {
    keptRuntimeModels.push(runtime);
  }
}
runtimeModels.splice(0, runtimeModels.length, ...keptRuntimeModels);
const keptRuntimeIds = new Set(runtimeModels.map(model => model.target_identity));
runtimeGeometryOnly.splice(
  0,
  runtimeGeometryOnly.length,
  ...runtimeGeometryOnly.filter(item => keptRuntimeIds.has(item.identity)),
);
for (const item of runtimeGeometryOnly) {
  item.runtime_groups = runtimeModels.filter(model => model.target_identity === item.identity).length;
}

models.sort((a, b) => a.target_identity.localeCompare(b.target_identity) ||
  String(a.source_identity ?? '').localeCompare(String(b.source_identity ?? '')) ||
  a.kind.localeCompare(b.kind));
unresolved.sort((a, b) => a.identity.localeCompare(b.identity));
const sourceReports = (analysis.source_reports ?? []).map(path => ({
  path,
  report: readJson(resolve('research', path)),
}));
const noHazardObserved = [];
for (const item of unresolved.filter(entry => entry.status === 'no_geometry_observed')) {
  const runs = [];
  for (const source of sourceReports) {
    for (const result of source.report.results ?? []) {
      if (result.key === item.identity) {
        runs.push({
          seed: result.seed,
          mode: source.report.mode ?? 'unknown',
          hazards: result.geometryTimeline?.hazard_samples ?? 0,
          dataPass: result.dataPass === true,
          targetObservedAtSetup: result.dataChecks?.targetObservedAtSetup === true,
        });
      }
    }
  }
  const hazardSamples = runs.reduce((sum, run) => sum + run.hazards, 0);
  const targetHazardSamples = 0;
  const observedRuns = runs.filter(run => run.targetObservedAtSetup);
  const seeds = [...new Set(observedRuns.map(run => run.seed))].sort();
  if (observedRuns.length >= 4 && seeds.length >= 2 && targetHazardSamples === 0) {
    noHazardObserved.push({
      identity: item.identity,
      name: item.name,
      status: 'no_target_hazard_observed',
      runs: observedRuns.length,
      seeds,
      modes: [...new Set(observedRuns.map(run => run.mode))].sort(),
      hazard_samples: hazardSamples,
      target_hazard_samples: targetHazardSamples,
      static_contact_candidate: staticContactCandidate.get(item.identity) === true,
      limitation: staticContactCandidate.get(item.identity) === true
        ? 'Static EntityConfig has a contact-damage candidate, but no target-attributable runtime collision geometry was observed; mixed-scenario immunity is not proven.'
        : 'No target-attributable hostile geometry observed; mixed-scenario immunity is not proven.',
    });
  }
}
const noHazardIds = new Set(noHazardObserved.map(item => item.identity));
const remainingUnresolved = unresolved.filter(item => !noHazardIds.has(item.identity));
const modelIdentities = new Set(models.map(model => model.target_identity));
const runtimeModelIdentities = new Set(runtimeModels.map(model => model.target_identity));
const modeledIdentities = new Set([...modelIdentities, ...runtimeModelIdentities]);
const modelFile = {
  format: 'isaac-gamebot-monster-geometry-models-v1',
  generated_at: new Date().toISOString(),
  source_analysis: analysisPath,
  scope: 'local catalog role=monster only',
  policy: {
    geometry_verified: 'cross-seed native-engine geometry gates passed',
    planning_validated: false,
    pre_spawn_verified: 'launch parameters stable across seeds; runtime-parametric groups may still be exact at spawn',
    excluded: 'provisional, unresolved, trap_mechanism, boss, miniboss, unlisted_npc',
    target_attribution: 'models require a direct, linked, or isolated-target source relation',
  },
  summary: {
    catalog_monster_identities: monsterIdentities.length,
    identities_with_models: modeledIdentities.size,
    models: models.length,
    identities_with_verified_models: [...modelIdentities].length,
    identities_with_runtime_models: runtimeModelIdentities.size,
    unresolved_identities: remainingUnresolved.length,
    no_hazard_observed: noHazardObserved.length,
    no_geometry_observed: remainingUnresolved.filter(item => item.status === 'no_geometry_observed').length,
    partial_geometry: remainingUnresolved.filter(item => item.status === 'partial_geometry').length,
    provisional_geometry: remainingUnresolved.filter(item => item.status === 'provisional_geometry').length,
    excluded_unrelated_source_groups: (analysis.groups ?? []).filter(group =>
      group.status === 'excluded_unrelated_source'
    ).length,
    runtime_geometry_only_identities: runtimeGeometryOnly.length,
    runtime_models: runtimeModels.length,
    partial_or_provisional: remainingUnresolved.filter(item => item.status !== 'no_geometry_observed').length,
    pre_spawn_verified_models: models.filter(model => model.pre_spawn_verified).length,
    runtime_parametric_models: models.filter(model => !model.pre_spawn_verified).length,
  },
  models,
  runtime_models: runtimeModels,
  duplicate_runtime_models: duplicateRuntimeModels,
  runtime_geometry_only: runtimeGeometryOnly,
  no_hazard_observed: noHazardObserved,
  unresolved: remainingUnresolved,
};
writeFileSync(resolve('research', outputPath), `${JSON.stringify(modelFile, null, 2)}\n`);
console.log(JSON.stringify({ summary: modelFile.summary, output: outputPath }, null, 2));
