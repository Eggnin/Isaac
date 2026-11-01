import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import test from 'node:test';
import { NPC_CONFIGS } from './npc_catalog.mjs';
import { buildPatternGeometryRefs } from './planner_frame.mjs';

const modelFile = JSON.parse(readFileSync(
  new URL('../monster-geometry-models-20261030.json', import.meta.url),
  'utf8',
));
const patternFile = JSON.parse(readFileSync(
  new URL('../../data/mechanisms/gamebot_monster_geometry_patterns.json', import.meta.url),
  'utf8',
));
const roles = new Map(NPC_CONFIGS.map(entry => [entry.key, entry.role]));

test('monster geometry model file has unique IDs and monster-only targets', () => {
  assert.equal(modelFile.format, 'isaac-gamebot-monster-geometry-models-v1');
  const ids = modelFile.models.map(model => model.id);
  assert.equal(new Set(ids).size, ids.length);
  assert.ok(modelFile.models.every(model =>
    roles.get(model.target_identity) === 'monster' &&
    model.geometry_verified === true &&
    model.planning_validated === (model.kind === 'contact') &&
    ['direct', 'linked', 'inferred', 'mixed'].includes(model.target_relation) &&
    !model.source_link_evidence.includes('unrelated-companion-source') &&
    (model.source_identity === model.target_identity ||
      ['direct', 'linked', 'inferred', 'mixed'].includes(model.target_relation))
  ));
});

test('runtime projectile patterns match verified monster geometry models', () => {
  assert.equal(patternFile.format, 'isaac-gamebot-monster-geometry-patterns-v1');
  for (const rule of patternFile.rules) {
    assert.equal(roles.get(rule.target_identity), 'monster');
    assert.equal(rule.kind, 'projectile');
    assert.ok(['radial', 'aimed', 'spread', 'stream'].includes(rule.pattern));
    assert.ok(Number.isInteger(rule.source_state));
    if (rule.source_ai_i1 !== undefined) assert.ok(Number.isInteger(rule.source_ai_i1));
    if (rule.source_ai_i2 !== undefined) assert.ok(Number.isInteger(rule.source_ai_i2));
    assert.ok(rule.source_animation.length > 0);
    const hasExactTrigger = Number.isInteger(rule.trigger_animation_frame) &&
      rule.trigger_animation_frame >= 0;
    const hasTriggerWindow = Number.isInteger(rule.trigger_animation_frame_min) &&
      Number.isInteger(rule.trigger_animation_frame_max) &&
      rule.trigger_animation_frame_min >= 0 &&
      rule.trigger_animation_frame_max >= rule.trigger_animation_frame_min;
    assert.ok(hasExactTrigger || hasTriggerWindow);
    if (hasExactTrigger && hasTriggerWindow) {
      assert.ok(rule.trigger_animation_frame >= rule.trigger_animation_frame_min);
      assert.ok(rule.trigger_animation_frame <= rule.trigger_animation_frame_max);
    }
    assert.ok(rule.speed > 0 && rule.radius > 0 && rule.duration_frames > 0);
    assert.ok(rule.count >= 1);
    assert.ok((rule.phase_samples ?? 1) >= 1);
    if (rule.pattern === 'spread') {
      assert.ok(rule.spacing_degrees > 0 ||
        (Array.isArray(rule.offset_degrees) && rule.offset_degrees.length > 0));
    }
    if (rule.pattern === 'stream') {
      assert.ok(rule.speed_min > 0 && rule.speed_min <= rule.speed);
      assert.ok(rule.phase_uncertainty_degrees >= 0 && rule.phase_uncertainty_degrees <= 90);
    }
    assert.ok(modelFile.models.some(model =>
      model.target_identity === rule.target_identity &&
      model.kind === rule.kind
    ));
  }
});

test('monster geometry summary matches exported models and unresolved identities', () => {
  const identities = new Set([
    ...modelFile.models.map(model => model.target_identity),
    ...modelFile.runtime_models.map(model => model.target_identity),
  ]);
  assert.equal(modelFile.summary.catalog_monster_identities,
    NPC_CONFIGS.filter(entry => entry.role === 'monster').length);
  assert.equal(modelFile.summary.identities_with_models, identities.size);
  assert.equal(modelFile.summary.models, modelFile.models.length);
  assert.equal(modelFile.summary.identities_with_runtime_models,
    new Set(modelFile.runtime_models.map(model => model.target_identity)).size);
  assert.equal(modelFile.summary.unresolved_identities, modelFile.unresolved.length);
  assert.equal(
    modelFile.summary.identities_with_models +
      modelFile.summary.provisional_geometry +
      modelFile.summary.no_hazard_observed +
      modelFile.summary.no_geometry_observed,
    modelFile.summary.catalog_monster_identities,
  );
  assert.equal(
    modelFile.summary.partial_or_provisional,
    modelFile.summary.partial_geometry + modelFile.summary.provisional_geometry,
  );
});

test('monster geometry unresolved identities are explicitly classified', () => {
  const allowed = new Set([
    'partial_geometry',
    'provisional_geometry',
    'no_geometry_observed',
  ]);
  assert.ok(modelFile.unresolved.every(entry =>
    roles.get(entry.identity) === 'monster' && allowed.has(entry.status)
  ));
});

test('no-hazard identities retain multi-run isolation evidence', () => {
  assert.ok(modelFile.no_hazard_observed.every(entry =>
    roles.get(entry.identity) === 'monster' &&
    entry.runs >= 4 &&
    entry.seeds.length >= 2 &&
    entry.target_hazard_samples === 0
  ));
});

test('runtime-only identities have stable geometry without claiming pre-spawn timing', () => {
  const runtimeIds = new Set(modelFile.runtime_geometry_only.map(entry => entry.identity));
  assert.equal(modelFile.summary.runtime_geometry_only_identities, runtimeIds.size);
  assert.ok(modelFile.runtime_models.every(model =>
    runtimeIds.has(model.target_identity) &&
    model.runtime_geometry_verified === true &&
    model.geometry_verified === false &&
    model.planning_validated === false
  ));
});

test('unrelated companion hazards are excluded from target geometry coverage', () => {
  assert.ok(modelFile.summary.excluded_unrelated_source_groups > 0);
  assert.ok(modelFile.models.every(model =>
    model.target_relation !== 'unrelated' &&
    !model.source_link_evidence.includes('unrelated-companion-source')
  ));
});

test('offline planner bridge preserves AI-gated and bounded pattern rules', () => {
  const refs = buildPatternGeometryRefs();
  const slime = refs.get('29.3.0') ?? [];
  for (const expected of [
    { state: 3, animation: 'Idle2', ai1: 1, count: 4 },
    { state: 3, animation: 'Idle', ai1: 2, count: 6 },
    { state: 3, animation: 'Idle2', ai1: 3, count: 8 },
    { state: 4, animation: 'Hop2', ai1: 0, count: 12 },
  ]) {
    assert.ok(slime.some(ref =>
      ref.source_state === expected.state &&
      ref.source_animation === expected.animation &&
      ref.source_ai_i1 === expected.ai1 &&
      ref.pattern_count === expected.count
    ));
  }
  const faceless = refs.get('827.1.0') ?? [];
  for (const animation of ['WalkHori', 'WalkVert']) {
    assert.ok(faceless.some(ref =>
      ref.source_state === 8 &&
      ref.source_animation === animation &&
      ref.trigger_animation_frame_min === 1 &&
      ref.trigger_animation_frame_max === 32 &&
      ref.pattern === 'radial' &&
      ref.pattern_count === 6
    ));
  }
  const faceless61 = refs.get('61.6.0') ?? [];
  assert.ok(faceless61.some(ref =>
    ref.source_state === 1 &&
    ref.source_animation === 'Appear' &&
    ref.source_ai_i1 === 24 &&
    ref.source_ai_i2 === 1 &&
    ref.trigger_animation_frame === 10 &&
    ref.pattern_count === 4
  ));
  assert.ok(faceless61.some(ref =>
    ref.source_state === 3 &&
    ref.source_animation === 'Dash' &&
    ref.trigger_animation_frame_min === 0 &&
    ref.trigger_animation_frame_max === 7 &&
    ref.pattern_count === 4
  ));
  const spread = (refs.get('829.1.0') ?? []).find(ref => ref.pattern === 'spread');
  assert.ok(spread);
  assert.equal(spread.source_state, 8);
  assert.equal(spread.source_animation, 'Shoot');
  assert.equal(spread.pattern_count, 3);
  assert.equal(spread.pattern_spacing_degrees, 16.0241);
  assert.equal(spread.trigger_animation_frame_min, 4);
  assert.equal(spread.trigger_animation_frame_max, 10);
  const spreadFour = (refs.get('14.2.0') ?? []).find(ref => ref.pattern === 'spread');
  assert.ok(spreadFour);
  assert.equal(spreadFour.pattern_count, 4);
  assert.equal(spreadFour.pattern_spacing_degrees, 18.5544);
  assert.equal(spreadFour.trigger_animation_frame, 7);
  for (const [identity, state, animation, spacing, speed] of [
    ['38.1.0', 4, 'Attack', 15.9553, 310.54],
    ['27.0.0', 8, 'Shoot', 16.0241, 269.65],
  ]) {
    const rule = (refs.get(identity) ?? []).find(ref => ref.pattern === 'spread');
    assert.ok(rule);
    assert.equal(rule.source_state, state);
    assert.equal(rule.source_animation, animation);
    assert.equal(rule.pattern_count, 3);
    assert.equal(rule.pattern_spacing_degrees, spacing);
    assert.equal(rule.speed, speed);
  }
  const nonuniform = refs.get('240.3.0') ?? [];
  for (const animation of ['AttackStart', 'AttackLoop']) {
    const rule = nonuniform.find(ref =>
      ref.pattern === 'spread' && ref.source_animation === animation);
    assert.ok(rule);
    assert.deepEqual(rule.pattern_offsets_degrees,
      [-41.6880, -15.6852, 15.6852, 41.6880]);
    assert.equal(rule.source_ai_i1, 2);
  }
  const stream = refs.get('879.0.0') ?? [];
  assert.equal(stream.filter(ref => ref.pattern === 'stream').length, 8);
  for (let direction=0;direction<8;direction++) {
    const rule=stream.find(ref => ref.source_ai_i2===direction);
    assert.ok(rule);
    assert.equal(rule.pattern,'stream');
    assert.equal(rule.speed_min,120);
    assert.equal(rule.speed,240);
    assert.equal(rule.pattern_phase_degrees,direction*45);
    assert.equal(rule.pattern_phase_uncertainty_degrees,10);
  }
});
