import { readFileSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';
import { EngineEnvironment } from './engine_environment.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

const seed = option('seed', '3JY1 6FLR');
const stage = Number(option('stage', '7'));
const difficulty = Number(option('difficulty', '3'));
const modeCommand = option('command', 'ugg');
const room = option('room', 'd.boss.1000');
const type = Number(option('type', '406'));
const variant = Number(option('variant', difficulty === 3 ? '1' : '0'));
const subtype = Number(option('subtype', '0'));
const steps = Math.max(1, Number(option('steps', '120')));
const spawn = option('spawn', '');
const output = option('output', 'greed-probe.json');
const requireTarget = option('require-target', 'true') !== 'false';
const forcedDifficulty = option('force-game-difficulty', '');
const activateFrame = Math.max(1, Number(option('activate-frame', '60')));
const drive = option('drive', 'explore');
const inputTimeline = option('input', '');
const saveSeedDir = option('save-seed-dir', '');
const contextNonReady = option('context-nonready', 'false') === 'true';
const rolloutEnabled = option('rollout', 'false') === 'true';
const ignoreRoomClear = option('ignore-room-clear', 'false') === 'true';
const greedButtonFrames = Math.max(0, Number(option('greed-button-frames', '0')));
const greedRetreatFrames = Math.max(
  0,
  Number(option('greed-retreat-frames', String(greedButtonFrames))),
);
const greedWaveAssist = option('greed-wave-assist', 'false') === 'true';
const greedSackPriority = option('greed-sack-priority', 'false') === 'true';
const greedDropStalledTargets = option('greed-drop-stalled-targets', 'false') === 'true';
const greedAggressiveClear = option('greed-aggressive-clear', 'false') === 'true';
const noRender = option('no-render', 'false') === 'true';
const order = option('order', 'mode,stage,seed,debug,goto')
  .split(',')
  .map(value => value.trim())
  .filter(Boolean);
const setupTimeoutMs = Math.max(1000, Number(option('setup-timeout', '45000')));
const consoleAt = option('console-at', '');

const commandParts = {
  seed: `seed ${seed}`,
  stage: `stage ${stage}`,
  mode: modeCommand,
  debug: 'debug 3',
  goto: `goto ${room}`,
};
const startupCommands = order.map(name => {
  const command = commandParts[name];
  if (command === undefined) throw new Error(`unknown startup command ${name}`);
  return command;
}).filter(Boolean);

const env = new EngineEnvironment({ seed, stage, room, maxSteps: steps, setupTimeoutMs });
const report = {
  native: true,
  scope: 'Greed Mode stage and boss entry probe',
  seed,
  stage,
  requestedDifficulty: difficulty,
  modeCommand,
  room,
  target: { type, variant, subtype },
  spawn: spawn || null,
  steps,
  order,
  startupCommands,
  setupTimeoutMs,
  consoleAt: consoleAt === '' ? null : Number(consoleAt),
  requireTarget,
  forcedDifficulty: forcedDifficulty === '' ? null : Number(forcedDifficulty),
  drive,
  inputTimeline: inputTimeline || null,
  saveSeedDir: saveSeedDir || null,
  contextNonReady,
  rollout: rolloutEnabled,
  ignoreRoomClear,
  greedButtonFrames,
  greedRetreatFrames,
  greedWaveAssist,
  greedSackPriority,
  greedDropStalledTargets,
  greedAggressiveClear,
  noRender,
};

try {
  const initial = await env.reset({
    seed,
    stage,
    room,
    targetNPC: { type, variant, subtype },
    spawnNPC: spawn || undefined,
    startupCommands,
    postSpawnWaitFrames: 180,
    setupMaxFrames: 1800,
    maxSteps: steps,
    contextMode: !requireTarget,
    contextWaitFrames: 60,
    contextActivateFrame: activateFrame,
    setupTrace: !requireTarget,
    forcedDifficulty: forcedDifficulty === '' ? undefined : Number(forcedDifficulty),
    drive,
    inputTimeline: inputTimeline || undefined,
    saveSeedDir: saveSeedDir || undefined,
    contextNonReady,
    ignoreRoomClear,
    greedWaveAssist,
    greedSackPriority,
    greedDropStalledTargets,
    greedAggressiveClear,
    noRender,
    consoleAt: consoleAt === '' ? undefined : Number(consoleAt),
  });
  const targetAtStart = initial.entities.find(entity =>
    entity.type === type && entity.variant === variant && entity.subtype === subtype &&
    entity.exists !== false && entity.dead !== true && entity.active !== false
  );
  Object.assign(report, {
    initial: {
      frame: initial.frame,
      room: initial.room,
      game: initial.game,
      target: targetAtStart ?? null,
      enemyTypes: [...new Set(initial.entities
        .filter(entity => entity.type >= 10 && entity.type < 1000)
        .map(entity => `${entity.type}.${entity.variant}.${entity.subtype}`))],
      enemies: initial.entities
        .filter(entity => entity.type >= 10 && entity.type < 1000 &&
          entity.exists !== false && entity.dead !== true && entity.active !== false)
        .map(entity => ({
          address: entity.address,
          type: entity.type,
          variant: entity.variant,
          subtype: entity.subtype,
          hp: entity.hp,
          position: entity.position,
          velocity: entity.velocity,
          radius: entity.radius,
          collision: entity.collision,
          damage: entity.damage,
          friendly: entity.friendly,
          targetable: entity.targetable,
          noTarget: entity.noTarget,
          invulnerable: entity.invulnerable,
          state: entity.state,
          animation: entity.animation,
          parent: entity.parent,
          spawner: entity.spawner,
        })),
    },
  });
  if (!targetAtStart && requireTarget) {
    report.error = `target ${type}.${variant}.${subtype} was not present after startup`;
    process.exitCode = 1;
  }
  if (targetAtStart || rolloutEnabled) {
    const prefixActions = greedButtonFrames > 0
      ? [
          ...Array.from({ length: greedButtonFrames }, () => ({
            moveX: 0,
            moveY: 1,
            fire: 'none',
          })),
          ...Array.from({ length: greedRetreatFrames }, () => ({
            moveX: 0,
            moveY: -1,
            fire: 'none',
          })),
          ...Array.from({ length: 30 }, () => ({
            moveX: 0,
            moveY: 0,
            fire: 'none',
          })),
        ]
      : undefined;
    const result = await env.rollout({
      steps,
      prefixActions,
      parameters: { diagnostics: true },
      recordDecisionHistory: true,
      decisionHistoryLimit: 60,
      recordEntityTimeline: [type, 7, 9, 30, 293, 294, 1000],
    });
    const targetAtEnd = targetAtStart
      ? result.observation.entities.find(entity =>
          entity.type === type && entity.variant === variant && entity.subtype === subtype &&
          entity.exists !== false && entity.dead !== true && entity.active !== false
        )
      : null;
    Object.assign(report, {
      summary: result.summary,
      truncated: result.truncated,
      targetAtEnd: targetAtEnd ?? null,
      final: {
        frame: result.observation.frame,
        game: result.observation.game,
        greedButton: result.observation.grid?.find(cell =>
          cell.type === 20 && cell.variant === 2
        ) ?? null,
        enemies: result.observation.entities
          .filter(entity => entity.type >= 10 && entity.type < 1000 &&
            entity.exists !== false && entity.dead !== true && entity.active !== false)
          .map(entity => ({
            address: entity.address,
            type: entity.type,
            variant: entity.variant,
            subtype: entity.subtype,
            hp: entity.hp,
            position: entity.position,
            collision: entity.collision,
            damage: entity.damage,
            targetable: entity.targetable,
            noTarget: entity.noTarget,
            invulnerable: entity.invulnerable,
            state: entity.state,
            animation: entity.animation,
          })),
        room: result.observation.room
          ? {
              type: result.observation.room.type,
              variant: result.observation.room.variant,
              width: result.observation.room.width,
              height: result.observation.room.height,
              clear: result.observation.room.clear,
              clearDelay: result.observation.room.clearDelay,
              aliveA: result.observation.room.aliveA,
              aliveB: result.observation.room.aliveB,
              greedWaveTimer: result.observation.room.greedWaveTimer,
            }
          : null,
      },
      pass: result.summary.cleared === true &&
        result.summary.dead === false &&
        result.summary.hitCount === 0 &&
        result.summary.damageTaken === 0 &&
        !result.truncated,
    });
  } else if (!targetAtStart) {
    report.summary = { contextOnly: true };
    report.pass = false;
  }
} catch (error) {
  report.error = error.stack ?? error.message;
  process.exitCode = 1;
} finally {
  report.runDirectory = env.runDirectory ?? null;
  if (env.runDirectory) {
    try {
      report.engineLogTail = readFileSync(join(env.runDirectory, 'engine.log'), 'utf8')
        .split(/\r?\n/)
        .filter(line => /Level::Init|RoomConfig|greed|stage|Error|error/i.test(line))
        .slice(-80);
    } catch {
      report.engineLogTail = [];
    }
  }
  writeFileSync(new URL(`../${output}`, import.meta.url), `${JSON.stringify(report, null, 2)}\n`);
  console.log(JSON.stringify({
    stage: report.stage,
    command: report.modeCommand,
    room: report.room,
    pass: report.pass,
    initial: report.initial
      ? {
          stage: report.initial.game?.stage,
          stageType: report.initial.game?.stageType,
          difficulty: report.initial.game?.difficulty,
          room: report.initial.room?.name,
          target: Boolean(report.initial.target),
        }
      : null,
    error: report.error ?? null,
    runDirectory: report.runDirectory,
  }));
  await env.close();
}
