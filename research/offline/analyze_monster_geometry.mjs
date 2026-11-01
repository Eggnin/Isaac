import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { NPC_PARENT_CASES } from './npc_parent_cases.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

function readJson(path) {
  return JSON.parse(readFileSync(path, 'utf8'));
}

const staticContactByKey = new Map(
  readJson(resolve('data', 'npc', 'engine_monster_static_mechanism_candidates.json'))
    .entries
    .map(entry => {
      const entity = entry.static_entity_data?.[0];
      return [entry.key, entity && entry.contact_damage?.base_candidate ? {
        radius: entity.collision_radius,
        damage: entity.collision_damage,
      } : null];
    })
);

const parentIdentitiesByTarget = new Map(NPC_PARENT_CASES.map(testCase => [
  testCase.target,
  new Set(testCase.parents.map(parent => {
    const key = typeof parent === 'string' ? parent : parent.key;
    return key.split('.').slice(0, 3).join('.');
  })),
]));

function finite(value) {
  return typeof value === 'number' && Number.isFinite(value);
}

function vector(value) {
  return value && finite(value.x) && finite(value.y) ? value : null;
}

function distance(a, b) {
  return a && b ? Math.hypot(a.x - b.x, a.y - b.y) : null;
}

function relative(point, origin) {
  return point && origin ? { x: point.x - origin.x, y: point.y - origin.y } : null;
}

function angle(point) {
  return point ? Math.atan2(point.y, point.x) * 180 / Math.PI : null;
}

function angleDelta(a, b) {
  if (!finite(a) || !finite(b)) return null;
  return Math.abs(((a - b + 540) % 360) - 180);
}

function stats(values) {
  const rows = values.filter(finite);
  if (!rows.length) return null;
  const sorted = [...rows].sort((a, b) => a - b);
  const sum = rows.reduce((total, value) => total + value, 0);
  return {
    count: rows.length,
    min: sorted[0],
    max: sorted.at(-1),
    mean: sum / rows.length,
    range: sorted.at(-1) - sorted[0],
  };
}

function sameValue(values) {
  return values.length > 0 && values.every(value => value === values[0]);
}

function projectileSpawnPatternStable(rows, tolerance = 3) {
  const seeds = [...new Set(rows.map(row => row.seed))];
  if (seeds.length < 2) return false;
  const offsetsBySeed = new Map(seeds.map(seed => [seed, []]));
  for (const row of rows) {
    if (!row.spawnOffset) continue;
    offsetsBySeed.get(row.seed).push(row.spawnOffset);
  }
  const covered = (source, target) => {
    if (!source.length || !target.length) return 0;
    const matched = source.filter(point =>
      target.some(candidate => distance(point, candidate) <= tolerance)
    ).length;
    return matched / source.length;
  };
  let minimum = 1;
  for (let left = 0; left < seeds.length; left++) {
    for (let right = left + 1; right < seeds.length; right++) {
      const a = offsetsBySeed.get(seeds[left]);
      const b = offsetsBySeed.get(seeds[right]);
      minimum = Math.min(minimum, covered(a, b), covered(b, a));
    }
  }
  return minimum >= 0.8;
}

function stateKey(actor) {
  return `${actor.state}|${actor.animation}`;
}

function actorStateStart(actorHistory, sourceAddress, state, animation, frame) {
  const history = actorHistory.get(sourceAddress);
  if (!history) return null;
  let start = null;
  for (let index = 0; index < history.length; index++) {
    const entry = history[index];
    if (entry.frame > frame) break;
    if (entry.state === state && entry.animation === animation &&
        (index === 0 || stateKey(history[index - 1]) !== stateKey(entry))) {
      start = entry;
    }
  }
  return start;
}

function actorAt(actorHistory, sourceAddress, frame) {
  return actorHistory.get(sourceAddress)?.find(entry => entry.frame === frame) ?? null;
}

function sameIdentityFamily(a, b) {
  return typeof a === 'string' && typeof b === 'string' &&
    a.split('.').slice(0, 2).join('.') === b.split('.').slice(0, 2).join('.');
}

function targetRelation(
  result,
  hazard,
  hazardFrame,
  sourceActor,
  targetAddresses,
  targetActorsAtFrame,
  targetLastSeenFrame,
  isolatedTargetOnly,
) {
  const targetKey = result.key;
  const sourceAddress = hazard.source_address ?? sourceActor?.address ?? null;
  const sourceIdentity = hazard.source_identity ?? sourceActor?.identity ?? null;
  const sourceChain = hazard.source_chain ?? [];
  const sourceChainLinked = sourceChain.some(entry =>
    entry.identity === targetKey || targetAddresses.has(entry.address)
  );
  if (sourceIdentity === targetKey || targetAddresses.has(sourceAddress)) {
    return { scope: 'direct', evidence: 'native-source-identity-or-address' };
  }
  const sourceIsChildOfTarget = sourceActor && (
    targetAddresses.has(sourceActor.parent) ||
    targetAddresses.has(sourceActor.spawner) ||
    targetAddresses.has(sourceActor.owner) ||
    targetAddresses.has(sourceActor.child)
  );
  const targetIsChildOfSource = targetActorsAtFrame.some(actor =>
    actor.parent === sourceAddress ||
    actor.spawner === sourceAddress ||
    actor.owner === sourceAddress
  );
  if (sourceChainLinked) {
    if (targetIsChildOfSource) {
      return { scope: 'linked', evidence: 'target-is-child-of-source' };
    }
    if (sameIdentityFamily(sourceIdentity, targetKey)) {
      return { scope: 'linked', evidence: 'same-family-source-chain' };
    }
    return { scope: 'child-source', evidence: 'source-chain-child-is-a-separate-identity' };
  }
  if (sourceIsChildOfTarget) {
    return sameIdentityFamily(sourceIdentity, targetKey)
      ? { scope: 'linked', evidence: 'same-family-source-child' }
      : { scope: 'child-source', evidence: 'source-is-a-separate-child-identity' };
  }
  if (targetIsChildOfSource) {
    return { scope: 'linked', evidence: 'target-is-child-of-source' };
  }
  if (sourceIdentity && parentIdentitiesByTarget.get(targetKey)?.has(sourceIdentity)) {
    return { scope: 'linked', evidence: 'catalog-parent-case' };
  }
  if (isolatedTargetOnly && result.setupTarget?.identity === targetKey &&
      sourceIdentity && sourceActor && Number.isFinite(sourceActor.birth) && sourceActor.birth > 0) {
    return sameIdentityFamily(sourceIdentity, targetKey)
      ? { scope: 'linked', evidence: 'isolated-run-same-family-source' }
      : { scope: 'child-source', evidence: 'isolated-run-new-hostile-source' };
  }
  if (isolatedTargetOnly && result.setupTarget?.identity === targetKey &&
      !sourceIdentity && !sourceAddress) {
    const gap = Number.isFinite(targetLastSeenFrame) ? hazardFrame - targetLastSeenFrame : Infinity;
    return gap <= 8
      ? { scope: 'inferred', evidence: 'isolated-target-only-run-near-last-seen' }
      : { scope: 'unrelated', evidence: 'isolated-hazard-after-target-lost' };
  }
  return { scope: 'unrelated', evidence: 'source-is-not-target-linked' };
}

function hazardIdentity(hazard) {
  return hazard.identity ?? `${hazard.type}.${hazard.variant}.${hazard.subtype}`;
}

function hazardGroupKey(sample) {
  if (sample.kinds.includes('contact')) {
    const sourceScope = sample.hazardIdentity === sample.targetKey
      ? `self:${sample.hazardIdentity}`
      : 'child-contact-pool';
    return [sample.targetKey, sourceScope, 'contact'].join('|');
  }
  return [
    sample.targetKey,
    sample.sourceIdentity ?? 'unknown-source',
    sample.hazardIdentity,
    sample.kinds.join('+'),
    sample.state ?? 'unknown-state',
    sample.animation ?? 'unknown-animation',
    sample.projectileFlags ?? 'no-flags',
  ].join('|');
}

function collectRun(result, options = {}) {
  const file = result.geometryTimeline?.file;
  if (!file) return [];
  const actorHistory = new Map();
  const actorsByFrame = new Map();
  const hazards = new Map();
  const targetAddresses = new Set();
  if (Number.isInteger(result.setupTarget?.address)) {
    targetAddresses.add(result.setupTarget.address);
  }
  const lines = readFileSync(file, 'utf8').split(/\r?\n/).filter(Boolean);
  for (const line of lines) {
    const row = JSON.parse(line);
    actorsByFrame.set(row.frame, row.actors ?? []);
    for (const actor of row.actors ?? []) {
      if (actor.identity === result.key) targetAddresses.add(actor.address);
      if (!actorHistory.has(actor.address)) actorHistory.set(actor.address, []);
      actorHistory.get(actor.address).push({
        frame: row.frame,
        state: actor.state,
        state_frame: actor.state_frame,
        animation: actor.animation,
        animation_frame: actor.animation_frame,
        position: actor.position,
        velocity: actor.velocity,
        ai_v1: actor.ai_v1,
        ai_v2: actor.ai_v2,
        ai_i1: actor.ai_i1,
        ai_i2: actor.ai_i2,
        projectile_cooldown: actor.projectile_cooldown,
        projectile_delay: actor.projectile_delay,
        parent: actor.parent,
        spawner: actor.spawner,
        owner: actor.owner,
        child: actor.child,
      });
    }
    for (const hazard of row.hazards ?? []) {
      const key = [
        hazard.address,
        hazard.birth,
        hazard.type,
        hazard.variant,
        hazard.subtype,
      ].join(':');
      const prior = hazards.get(key);
      if (!prior) {
        hazards.set(key, {
          firstFrame: row.frame,
          lastFrame: row.frame,
          samples: 1,
          hazard,
          sourceFrame: row.frame,
          player: row.player,
        });
      } else {
        prior.lastFrame = row.frame;
        prior.samples++;
        if ((!prior.hazard.source_address || !prior.hazard.source_identity) &&
            (hazard.source_address || hazard.source_identity)) {
          prior.hazard = hazard;
          prior.sourceFrame = row.frame;
        }
      }
    }
  }

  const samples = [];
  for (const entry of hazards.values()) {
    const hazard = entry.hazard;
    const sourceAddress = hazard.source_address;
    const sourceActor = sourceAddress
      ? actorAt(actorHistory, sourceAddress, entry.sourceFrame ?? entry.firstFrame)
      : null;
    const frameActors = actorsByFrame.get(entry.firstFrame) ?? [];
    const targetActorsAtFrame = frameActors.filter(actor => actor.identity === result.key);
    const nearbyTargetActors = [];
    for (let offset = -5; offset <= 5; offset++) {
      nearbyTargetActors.push(...(actorsByFrame.get(entry.firstFrame + offset) ?? [])
        .filter(actor => actor.identity === result.key));
    }
    let inferredActor = !sourceActor
      ? frameActors.find(actor => actor.identity === result.key) ??
        nearbyTargetActors[0] ??
        frameActors
          .filter(actor => actor.type >= 10 && actor.type < 1000)
          .sort((a, b) => distance(a.position, hazard.position) - distance(b.position, hazard.position))[0] ??
        null
      : null;
    const targetLastSeenFrame = Math.max(
      -Infinity,
      ...[...targetAddresses].flatMap(address => {
        const history = actorHistory.get(address) ?? [];
        const prior = [...history].reverse().find(actor => actor.frame <= entry.firstFrame);
        return prior ? [prior.frame] : [];
      }),
    );
    const inferredTargetBefore = options.isolatedTargetOnly &&
      Number.isFinite(targetLastSeenFrame) &&
      entry.firstFrame - targetLastSeenFrame <= 8
      ? [...targetAddresses]
        .flatMap(address => actorHistory.get(address) ?? [])
        .find(actor => actor.frame === targetLastSeenFrame) ?? null
      : null;
    const resolvedActor = sourceActor ?? inferredActor ?? inferredTargetBefore;
    const resolvedAddress = sourceAddress ?? resolvedActor?.address ?? null;
    const relation = targetRelation(
      result,
      hazard,
      entry.firstFrame,
      sourceActor,
      targetAddresses,
      targetActorsAtFrame,
      targetLastSeenFrame,
      options.isolatedTargetOnly === true,
    );
    const sourceState = resolvedActor?.state ?? hazard.state ?? null;
    const sourceAnimation = resolvedActor?.animation ?? hazard.animation ?? null;
    const stateStart = resolvedAddress
      ? actorStateStart(actorHistory, resolvedAddress, sourceState, sourceAnimation, entry.firstFrame)
      : null;
    const sourcePosition = resolvedActor?.position ?? hazard.position ?? null;
    const spawnOffset = relative(hazard.position, sourcePosition);
    const endpointOffset = relative(hazard.endpoint, sourcePosition);
    const velocity = vector(hazard.velocity);
    const speed = velocity ? Math.hypot(velocity.x, velocity.y) : null;
    const direction = velocity ? angle(velocity) : null;
    const targetDirection = sourcePosition && entry.player?.position
      ? angle(relative(entry.player.position, sourcePosition))
      : null;
    samples.push({
      seed: result.seed,
      key: result.key,
      targetKey: result.key,
      room: result.room?.command,
      firstFrame: entry.firstFrame,
      lastFrame: entry.lastFrame,
      activeFrames: entry.lastFrame - entry.firstFrame + 1,
      samples: entry.samples,
      sourceIdentity: hazard.source_identity ?? (sourceActor ? resolvedActor?.identity : null) ?? null,
      sourceAddress: resolvedAddress,
      targetRelation: relation.scope,
      targetRelationEvidence: relation.evidence,
      sourceLinkEvidence: hazard.source_identity
        ? 'native-parent-spawner-owner'
        : 'isolated-room-target-attribution',
      sourceFamily: (hazard.source_identity ?? '').split('.').slice(0, 2).join('.') || null,
      hazardIdentity: hazardIdentity(hazard),
      kinds: hazard.kinds ?? [],
      sourceState,
      sourceAnimation,
      sourceAnimationFrame: resolvedActor?.animation_frame ?? null,
      sourceStateFrame: resolvedActor?.state_frame ?? null,
      sourceAiI1: resolvedActor?.ai_i1 ?? null,
      sourceAiI2: resolvedActor?.ai_i2 ?? null,
      sourceProjectileCooldown: resolvedActor?.projectile_cooldown ?? null,
      sourceProjectileDelay: resolvedActor?.projectile_delay ?? null,
      stateStartFrame: stateStart?.frame ?? null,
      triggerDelta: stateStart ? entry.firstFrame - stateStart.frame : null,
      sourcePosition,
      spawnOffset,
      endpointOffset,
      endpointLength: endpointOffset ? Math.hypot(endpointOffset.x, endpointOffset.y) : null,
      speed,
      direction,
      targetDirection,
      relativeDirection: direction !== null && targetDirection !== null
        ? angleDelta(direction, targetDirection)
        : null,
      radius: hazard.radius,
      laserRadius: hazard.laser_radius,
      timeout: hazard.timeout,
      blastRadius: hazard.blast_radius,
      damage: hazard.damage,
      contactDamage: hazard.contact_damage,
      contactDamageSource: hazard.contact_damage_source,
      projectileFlags: hazard.projectile_flags,
      projectileAge: hazard.projectile_age,
      projectileCurve: hazard.projectile_curve,
      projectilePhase: hazard.projectile_phase,
      height: hazard.height,
      fallSpeed: hazard.fall_speed,
      fallAccel: hazard.fall_accel,
      laserPoints: hazard.laser_points,
      sourceChain: hazard.source_chain,
    });
  }
  return samples;
}

function groupSamples(samples) {
  const groups = new Map();
  for (const sample of samples) {
    const key = hazardGroupKey(sample);
    if (!groups.has(key)) groups.set(key, []);
    groups.get(key).push(sample);
  }
  return groups;
}

function summarizeGroup(key, rows) {
  const allRows = rows;
  const targetRows = rows.filter(row =>
    row.targetRelation === 'direct' ||
    row.targetRelation === 'linked' ||
    row.targetRelation === 'inferred'
  );
  const targetAttributed = targetRows.length > 0;
  rows = targetAttributed ? targetRows : allRows;
  const seeds = [...new Set(rows.map(row => row.seed))].sort();
  const kind = [...new Set(rows.flatMap(row => row.kinds))].sort().join('+');
  const sourceIdentities = [...new Set(rows.map(row => row.sourceIdentity).filter(Boolean))].sort();
  const sourceLinkEvidence = [...new Set(rows.map(row => row.sourceLinkEvidence))].sort();
  const targetRelations = [...new Set(rows.map(row => row.targetRelation))].sort();
  const sourceLinkVerified = targetAttributed && seeds.every(seed => rows.some(row =>
    row.seed === seed &&
    (row.targetRelation === 'direct' || row.targetRelation === 'linked' || row.targetRelation === 'inferred')
  ));
  const triggerFrames = rows.map(row => row.sourceAnimationFrame);
  const triggerStateFrames = rows.map(row => row.sourceStateFrame);
  const triggerAiI1 = rows.map(row => row.sourceAiI1);
  const triggerAiI2 = rows.map(row => row.sourceAiI2);
  const triggerCooldowns = rows.map(row => row.sourceProjectileCooldown);
  const triggerDelays = rows.map(row => row.sourceProjectileDelay);
  const triggerDeltas = rows.map(row => row.triggerDelta);
  const radii = rows.map(row => row.radius);
  const laserRadii = rows.map(row => row.laserRadius);
  const timeouts = rows.map(row => row.timeout);
  const activeFrames = rows.map(row => row.activeFrames);
  const speeds = rows.map(row => row.speed);
  const spawnXs = rows.map(row => row.spawnOffset?.x);
  const spawnYs = rows.map(row => row.spawnOffset?.y);
  const endpointLengths = rows.map(row => row.endpointLength);
  const flags = rows.map(row => row.projectileFlags);
  const triggerStats = stats(triggerFrames);
  const triggerStateStats = stats(triggerStateFrames);
  const triggerAiI1Stats = stats(triggerAiI1);
  const triggerAiI2Stats = stats(triggerAiI2);
  const triggerCooldownStats = stats(triggerCooldowns);
  const triggerDelayStats = stats(triggerDelays);
  const radiusBySeedMax = seeds.map(seed => {
    const values = rows
      .filter(row => row.seed === seed)
      .map(row => row.radius)
      .filter(finite);
    return values.length ? Math.max(...values) : null;
  });
  const radiusStats = stats(radii);
  const childContactPool = kind === 'contact' &&
    rows[0].hazardIdentity !== rows[0].targetKey;
  const contactRadiusBound = childContactPool && radiusStats
    ? Math.ceil(radiusStats.max)
    : null;
  const creepRadiusBound = kind === 'creep' && radiusStats
    ? Math.ceil(radiusStats.max)
    : null;
  const timeoutStats = stats(timeouts);
  const activeStats = stats(activeFrames);
  const speedStats = stats(speeds);
  const spawnXStats = stats(spawnXs);
  const spawnYStats = stats(spawnYs);
  const endpointStats = stats(endpointLengths);
  const spawnPatternStable = kind === 'projectile'
    ? projectileSpawnPatternStable(rows)
    : true;
  const speedStable = speedStats
    ? speedStats.range <= Math.max(1, speedStats.mean * 0.02)
    : false;
  const flagsStable = sameValue(flags.filter(Boolean));
  const crossSeed = seeds.length >= 2;
  const staticContact = kind === 'contact'
    ? staticContactByKey.get(rows[0].hazardIdentity)
    : null;
  const contactDamageSources = [...new Set(rows
    .map(row => row.contactDamageSource)
    .filter(Boolean))].sort();
  const staticContactVerified = !!staticContact &&
    !!radiusStats &&
    Math.abs(radiusStats.mean - staticContact.radius) <= 0.5;
  const identityEvidence = crossSeed || staticContactVerified;
  const triggerStable = kind === 'contact'
    ? true
    : [
      triggerStats,
      triggerStateStats,
      triggerAiI1Stats,
      triggerAiI2Stats,
      triggerCooldownStats,
      triggerDelayStats,
    ].some(value => value && value.range <= 1);
  const radiusStable = kind === 'creep'
    ? (() => {
      const maxima = stats(radiusBySeedMax);
      return maxima ? maxima.range <= 1 : false;
    })()
    : radiusStats
      ? radiusStats.range <= 1
      : false;
  const radiusBound = contactRadiusBound ?? creepRadiusBound;
  const radiusGate = radiusStable || radiusBound !== null;
  const timeoutStable = kind === 'contact'
    ? true
    : timeoutStats
      ? timeoutStats.range <= 1
      : false;
  const activeStable = activeStats ? activeStats.range <= 1 : false;
  const projectileStable = kind === 'projectile'
    ? !!speedStats && !!spawnXStats && !!spawnYStats && flagsStable
    : true;
  const preSpawnParameterStable = kind === 'projectile'
    ? speedStable && spawnPatternStable && flagsStable
    : true;
  const timeoutApplicable = ['laser', 'bomb', 'creep'].includes(kind);
  const activeFramesApplicable = ['cage-rock-wave', 'falling-impact'].includes(kind);
  const timeoutBound = timeoutApplicable && timeoutStats && timeoutStats.max >= 1
    ? Math.ceil(timeoutStats.max)
    : null;
  const activeBound = activeFramesApplicable && activeStats && activeStats.max >= 1
    ? Math.ceil(activeStats.max)
    : null;
  const durationBound = timeoutBound ?? activeBound;
  const durationBoundSource = timeoutBound !== null
    ? 'timeout-max'
    : activeBound !== null
      ? 'active-frames-max'
      : null;
  const durationStable = timeoutApplicable
    ? timeoutStable
    : activeFramesApplicable
      ? activeStable
      : true;
  const durationGate = durationStable || durationBound !== null;
  const geometryFields = kind === 'projectile'
    ? !!speedStats && !!spawnXStats && !!spawnYStats
    : kind === 'laser'
      ? !!radiusStats && !!timeoutStats && !!endpointStats
      : kind === 'contact'
        ? !!radiusStats
        : !!radiusStats;
  const verified = targetAttributed && identityEvidence && triggerStable && radiusGate &&
    durationGate &&
    projectileStable && geometryFields && sourceLinkVerified;
  const inferredIsolatedEvidence = rows.every(row => row.targetRelation === 'inferred');
  const runtimeGeometryVerified = targetAttributed && !verified &&
    (identityEvidence || inferredIsolatedEvidence) && radiusGate &&
    durationGate && projectileStable && geometryFields && sourceLinkVerified;
  const preSpawnVerified = verified && preSpawnParameterStable;
  return {
    key,
    target_identity: rows[0].targetKey,
    source_identity: sourceIdentities.length === 1 ? sourceIdentities[0] : null,
    source_identities: sourceIdentities,
    source_family: rows[0].sourceFamily,
    source_link_evidence: targetAttributed
      ? sourceLinkEvidence
      : [...sourceLinkEvidence, 'unrelated-companion-source'],
    target_relation: targetAttributed
      ? targetRelations.length === 1
        ? targetRelations[0]
        : 'mixed'
      : 'unrelated',
    target_relations: targetRelations,
    attributed_target_identity: targetAttributed ? rows[0].targetKey : null,
    hazard_identity: rows[0].hazardIdentity,
    kind,
    source_state: rows[0].sourceState,
    source_animation: rows[0].sourceAnimation,
    seeds,
    samples: rows.length,
    excluded_unrelated_samples: allRows.length - rows.length,
    trigger_animation_frame: triggerStats,
    trigger_state_frame: triggerStateStats,
    trigger_ai_i1: triggerAiI1Stats,
    trigger_ai_i2: triggerAiI2Stats,
    trigger_projectile_cooldown: triggerCooldownStats,
    trigger_projectile_delay: triggerDelayStats,
    trigger_delta_frames: stats(triggerDeltas),
    radius: radiusStats,
    laser_radius: stats(laserRadii),
    timeout: timeoutStats,
    active_frames: activeStats,
    speed: speedStats,
    spawn_offset_x: spawnXStats,
    spawn_offset_y: spawnYStats,
    endpoint_length: endpointStats,
    projectile_flags: [...new Set(flags.filter(Boolean))],
    gates: {
      cross_seed: crossSeed,
      identity_evidence: identityEvidence,
      static_contact_verified: staticContactVerified,
      trigger_stable: triggerStable,
      radius_stable: radiusStable,
      radius_stable_or_bounded: radiusGate,
      contact_radius_bounded: contactRadiusBound !== null,
      timeout_stable: !timeoutApplicable || timeoutStable,
      active_frames_stable: !activeFramesApplicable || activeStable,
      duration_stable_or_bounded: durationGate,
      duration_bounded: durationBound !== null,
      timeout_applicable: timeoutApplicable,
      active_frames_applicable: activeFramesApplicable,
      projectile_stable: projectileStable,
      projectile_spawn_pattern_stable: spawnPatternStable,
      projectile_speed_stable: speedStable,
      pre_spawn_parameter_stable: preSpawnParameterStable,
      source_link_verified: sourceLinkVerified,
      geometry_fields_present: geometryFields,
    },
    status: targetAttributed
      ? verified
        ? 'verified_geometry'
        : runtimeGeometryVerified
          ? 'runtime_geometry_only'
          : 'provisional_geometry'
      : 'excluded_unrelated_source',
    runtime_geometry_verified: runtimeGeometryVerified,
    pre_spawn_verified: preSpawnVerified,
    geometry_scope: kind === 'projectile'
      ? preSpawnVerified
        ? 'pre-spawn-parametric'
        : 'runtime-parametric'
      : kind === 'creep'
        ? 'bounded-radius-and-duration'
        : contactRadiusBound !== null
          ? 'bounded-contact-radius'
          : durationStable
            ? 'pre-spawn-parametric'
            : 'bounded-duration',
    contact_radius_bound: contactRadiusBound,
    radius_bound: radiusBound,
    duration_bound_frames: durationBound,
    duration_bound_source: durationBoundSource,
    contact_damage_sources: contactDamageSources,
    evidence_status: verified
      ? kind === 'contact' && contactDamageSources.includes('static-entity-config')
        ? 'native runtime collision + static EntityConfig collisionDamage; applied hit not implied'
        : 'native-engine cross-seed geometry; independent collision oracle not implied'
      : 'native-engine observations; stability gates not all passed',
    static_contact: staticContactVerified ? staticContact : null,
  };
}

const inputs = option('input', 'monster-geometry-coverage.json')
  .split(',')
  .map(value => value.trim())
  .filter(Boolean);
const output = option('output', 'monster-geometry-analysis.json');
const reports = inputs.map(input => readJson(resolve('research', input)));
const allSamples = [];
for (const report of reports) {
  for (const result of report.results ?? []) {
    if (!result.geometryTimeline?.file) continue;
    allSamples.push(...collectRun(result, {
      isolatedTargetOnly: result.dataChecks?.isolated === true &&
        (report.companions?.length ?? 0) === 0 &&
        (report.copies ?? 1) === 1,
    }));
  }
}
const childSourceHazards = new Set(allSamples
  .filter(row => row.targetRelation === 'child-source')
  .map(row => `${row.targetKey}|${row.hazardIdentity}|${row.kinds.join('+')}`));
const attributedSamples = allSamples.filter(row =>
  row.targetRelation !== 'inferred' ||
  !childSourceHazards.has(`${row.targetKey}|${row.hazardIdentity}|${row.kinds.join('+')}`)
);
const groups = [...groupSamples(attributedSamples).entries()]
  .map(([key, rows]) => summarizeGroup(key, rows))
  .sort((a, b) => String(a.target_identity).localeCompare(String(b.target_identity)) ||
    String(a.source_identity).localeCompare(String(b.source_identity)) ||
    String(a.hazard_identity).localeCompare(String(b.hazard_identity)) ||
    String(a.kind).localeCompare(String(b.kind)));
const byIdentity = new Map();
for (const group of groups) {
  if (!group.target_identity) continue;
  if (!byIdentity.has(group.target_identity)) byIdentity.set(group.target_identity, []);
  byIdentity.get(group.target_identity).push(group);
}
const identities = [...byIdentity.entries()].map(([identity, identityGroups]) => {
  const attributedGroups = identityGroups.filter(group => group.status !== 'excluded_unrelated_source');
  const directGroups = attributedGroups.filter(group =>
    group.target_relation === 'direct' ||
    group.target_relation === 'inferred' ||
    group.source_identity === group.target_identity ||
    group.source_identities?.includes(group.target_identity)
  );
  const coverageGroups = directGroups.length ? directGroups : attributedGroups;
  const verified = coverageGroups.filter(group => group.status === 'verified_geometry');
  const runtimeVerified = coverageGroups.filter(group => group.runtime_geometry_verified);
  const unresolved = coverageGroups.filter(group =>
    group.status !== 'verified_geometry' && !group.runtime_geometry_verified
  );
  const preSpawnVerified = coverageGroups.filter(group => group.pre_spawn_verified);
  return {
    identity,
    groups: identityGroups.length,
    attributed_groups: attributedGroups.length,
    unrelated_source_groups: identityGroups.length - attributedGroups.length,
    direct_groups: directGroups.length,
    linked_child_groups: attributedGroups.length - directGroups.length,
    coverage_scope: directGroups.length ? 'direct' : attributedGroups.length ? 'linked-only' : 'none',
    verified_groups: verified.length,
    provisional_groups: coverageGroups.length - verified.length,
    pre_spawn_verified_groups: preSpawnVerified.length,
    pre_spawn_status: !coverageGroups.length
      ? 'no_geometry_observed'
      : preSpawnVerified.length === coverageGroups.length
        ? 'verified_pre_spawn'
        : preSpawnVerified.length
          ? 'partial_pre_spawn'
          : 'runtime_only',
    status: !coverageGroups.length
      ? 'no_geometry_observed'
      : verified.length === coverageGroups.length
        ? 'verified_geometry'
        : runtimeVerified.length && !unresolved.length
          ? 'runtime_geometry_only'
        : verified.length
          ? 'partial_geometry'
          : 'provisional_geometry',
  };
}).sort((a, b) => a.identity.localeCompare(b.identity));
const analysis = {
  native: true,
  source_reports: inputs,
  definitions: {
    group: 'exact source identity + hazard identity + hazard kind + source state + source animation',
    verified_geometry: 'cross-seed native-engine stability gates passed; this is not an independent collision-oracle claim',
    target_attribution: 'direct source identity/address, explicit source chain, parent/spawner/owner/child relation, or isolated single-hostile inference',
    excluded_unrelated_source: 'hazard source is another enemy in the probe and has no native link to the target',
    planning_validated: false,
  },
  summary: {
    identities: identities.length,
    verified_identities: identities.filter(identity => identity.status === 'verified_geometry').length,
    partial_identities: identities.filter(identity => identity.status === 'partial_geometry').length,
    provisional_identities: identities.filter(identity => identity.status === 'provisional_geometry').length,
    runtime_geometry_only_identities: identities.filter(identity => identity.status === 'runtime_geometry_only').length,
    geometry_groups: groups.length,
    verified_groups: groups.filter(group => group.status === 'verified_geometry').length,
    provisional_groups: groups.filter(group => group.status === 'provisional_geometry').length,
    excluded_unrelated_source_groups: groups.filter(group => group.status === 'excluded_unrelated_source').length,
    samples: allSamples.length,
  },
  identities,
  groups,
};
writeFileSync(resolve('research', output), `${JSON.stringify(analysis, null, 2)}\n`);
console.log(JSON.stringify({ summary: analysis.summary, output }, null, 2));
