import { mkdirSync, writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

function parseCases(text) {
  return text.split(',').map(value => value.trim()).filter(Boolean).map(value => {
    const [key, room] = value.split('@');
    const [type, variant, subtype] = key.split('.').map(Number);
    if (![type, variant, subtype].every(Number.isInteger)) {
      throw new Error(`invalid identity ${key}`);
    }
    return {
      key,
      type,
      variant,
      subtype,
      room: room || 's.boss.3702',
    };
  });
}

const steps = Math.max(1, Number(option('steps', 3600)));
const output = option('output', 'state-semantics-runtime-validation.json');
const cases = parseCases(option(
  'cases',
  '20.0.0@s.boss.1010,100.0.0@s.boss.3340,413.0.0@s.boss.3702,886.1.0@s.boss.3702',
));
const report = {
  native: true,
  scope: 'original-engine state, invincibility, HP, animation, and entity-transition probes',
  caveat: 'debug 3 keeps the player alive; policy attacks are used to reach HP/phase transitions',
  steps,
  cases: [],
};
const started = performance.now();

for (const testCase of cases) {
  const env = new EngineEnvironment({
    room: testCase.room,
    targetNPC: { type: testCase.type, variant: testCase.variant, subtype: testCase.subtype },
    spawnNPC: { type: testCase.type, variant: testCase.variant, subtype: testCase.subtype },
    debugFlags: [3],
    maxSteps: steps + 3000,
    noRender: true,
  });
  const row = {
    ...testCase,
    status: 'engine-error',
    runDirectory: null,
  };
  try {
    const initial = await env.reset();
    row.runDirectory = env.runDirectory;
    row.initialRoom = {
      width: initial.room?.width,
      height: initial.room?.height,
      shape: initial.room?.shape,
      cleared: initial.cleared,
    };
    const initialTarget = initial.entities.find(entity =>
      entity.type === testCase.type &&
      entity.variant === testCase.variant &&
      entity.subtype === testCase.subtype
    );
    row.initialTarget = initialTarget || null;

    const result = await env.rollout({
      steps,
      attack: true,
      recordEntityTimeline: [...new Set([
        testCase.type, 2, 3, 4, 7, 9, 10, 1000,
      ])],
    });
    const transitions = result.summary.entityTransitions ?? [];
    const targetTransitions = transitions.filter(transition =>
      transition.type === testCase.type &&
      transition.variant === testCase.variant &&
      transition.subtype === testCase.subtype
    );
    const stateTransitions = [];
    let previous = null;
    for (const transition of targetTransitions) {
      const current = {
        frame: transition.frame,
        state: transition.state,
        stateFrame: transition.state_frame,
        animation: transition.animation,
        animationFrame: transition.animation_frame,
        hp: transition.hp,
        invulnerable: transition.invulnerable,
        noTarget: transition.no_target,
        targetable: transition.targetable,
        collision: transition.collision,
        position: transition.position,
        maxHp: transition.max_hp,
        speedMultiplier: transition.speed_multiplier,
        child: transition.child,
        target: transition.target,
        projectileCooldown: transition.projectile_cooldown,
        projectileDelay: transition.projectile_delay,
        aiV1: transition.ai_v1,
        aiV2: transition.ai_v2,
        aiI1: transition.ai_i1,
        aiI2: transition.ai_i2,
        isBoss: transition.is_boss,
        shieldStrength: transition.shield_strength,
        bossColor: transition.boss_color,
        bossStatusCooldown: transition.boss_status_cooldown,
        deliriumBossType: transition.delirium_boss_type,
        deliriumBossVariant: transition.delirium_boss_variant,
        deliriumTransformationTimer: transition.delirium_transformation_timer,
        deliriumRemainingAttacks: transition.delirium_remaining_attacks,
        deliriumState: transition.delirium_state,
        deliriumAttackId: transition.delirium_attack_id,
        deliriumAttackIdLow24: transition.delirium_attack_id_low24,
        deliriumAttackAngle: transition.delirium_attack_angle,
        deliriumCycleId: transition.delirium_cycle_id,
        deliriumCycleLow7: transition.delirium_cycle_low7,
        deliriumCycleField1524: transition.delirium_cycle_field_15_24,
        deliriumCycleField2534: transition.delirium_cycle_field_25_34,
      };
      if (!previous ||
          previous.state !== current.state ||
          previous.animation !== current.animation ||
          previous.invulnerable !== current.invulnerable ||
          previous.hp !== current.hp) {
        stateTransitions.push({
          ...current,
          previousState: previous?.state ?? null,
          previousAnimation: previous?.animation ?? null,
          previousInvulnerable: previous?.invulnerable ?? null,
          previousHp: previous?.hp ?? null,
        });
      }
      previous = current;
    }
    row.status = 'observed';
    row.summary = {
      frames: result.summary.frames,
      cleared: result.summary.cleared,
      dead: result.summary.dead,
      hitCount: result.summary.hitCount,
      dangerFrameCounts: result.summary.dangerFrameCounts,
      enemyTypes: result.summary.enemyTypes,
      targetTransitionCount: targetTransitions.length,
      stateTransitionCount: stateTransitions.length,
      aiI1Values: [...new Set(stateTransitions.map(transition => transition.aiI1)
        .filter(Number.isFinite))],
      aiI2Values: [...new Set(stateTransitions.map(transition => transition.aiI2)
        .filter(Number.isFinite))],
      deliriumStates: [...new Set(stateTransitions.map(transition => transition.deliriumState)
        .filter(Number.isFinite))],
      deliriumAttackIds: [...new Set(stateTransitions.map(transition => transition.deliriumAttackId)
        .filter(Number.isFinite))],
      deliriumCycleIds: [...new Set(stateTransitions.map(transition => transition.deliriumCycleId)
        .filter(Number.isFinite))],
      invincibleTransitions: stateTransitions.filter(transition =>
        transition.previousInvulnerable != null &&
        transition.invulnerable !== transition.previousInvulnerable).length,
    };
    row.stateTransitions = stateTransitions;
    row.enemyHpTransitions = result.summary.enemyHpTransitions ?? [];
    row.newIdentities = [
      ...new Set(transitions
        .filter(transition => transition.type !== testCase.type)
        .map(transition => `${transition.type}.${transition.variant}.${transition.subtype}`)),
    ];
  } catch (error) {
    row.error = error.stack ?? String(error);
    row.runDirectory = env.runDirectory ?? null;
  } finally {
    await env.close();
  }
  report.cases.push(row);
  console.log(JSON.stringify({
    key: testCase.key,
    room: testCase.room,
    status: row.status,
    stateTransitions: row.stateTransitions?.length ?? 0,
    runDirectory: row.runDirectory,
  }));
}

report.wallMs = performance.now() - started;
report.summary = {
  requested: cases.length,
  observed: report.cases.filter(row => row.status === 'observed').length,
  errors: report.cases.filter(row => row.status === 'engine-error').length,
  states: Object.fromEntries(report.cases.map(row => [
    row.key,
    [...new Set((row.stateTransitions ?? []).map(transition => transition.state))],
  ])),
  parameterCoverage: {
    aiI1: report.cases.filter(row => row.summary?.aiI1Values?.length).length,
    aiI2: report.cases.filter(row => row.summary?.aiI2Values?.length).length,
    deliriumState: report.cases.filter(row => row.summary?.deliriumStates?.length).length,
    deliriumAttackId: report.cases.filter(row => row.summary?.deliriumAttackIds?.length).length,
    deliriumCycleId: report.cases.filter(row => row.summary?.deliriumCycleIds?.length).length,
    invincibleTransition: report.cases.filter(row => row.summary?.invincibleTransitions > 0).length,
  },
};
mkdirSync(new URL('../state-semantics/', import.meta.url), { recursive: true });
const outputPath = new URL(`../state-semantics/${output}`, import.meta.url);
writeFileSync(outputPath, JSON.stringify(report, null, 2));
console.log(JSON.stringify({
  output: outputPath.pathname,
  summary: report.summary,
  wallMs: report.wallMs,
}));

if (report.summary.errors) process.exitCode = 1;
