import { createHash } from 'node:crypto';
import { readFileSync, writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';
import { NPC_PROBE_ROOMS } from './npc_catalog.mjs';
import { NPC_PARENT_CASES } from './npc_parent_cases.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

function parseTarget(key) {
  const [type, variant, subtype] = key.split('.').map(Number);
  return { type, variant, subtype };
}

function exactIdentity(entity, target) {
  return entity.type === target.type &&
    entity.variant === target.variant &&
    entity.subtype === target.subtype;
}

function sameVariant(entity, target) {
  return entity.type === target.type && entity.variant === target.variant;
}

function isAlive(entity) {
  return entity.exists !== false && entity.dead !== true && entity.active !== false;
}

function parentSpawnCommand(parent) {
  const key = typeof parent === 'string' ? parent : parent.key;
  const champion = typeof parent === 'string' ? undefined : parent.champion;
  return `spawn ${key}${champion === undefined ? '' : `.${champion}`}`;
}

function seededRandom(seed) {
  let state = Number.parseInt(createHash('sha256').update(seed).digest('hex').slice(0, 8), 16) >>> 0;
  return () => {
    state = (state + 0x6D2B79F5) >>> 0;
    let value = state;
    value = Math.imul(value ^ (value >>> 15), value | 1);
    value ^= value + Math.imul(value ^ (value >>> 7), value | 61);
    return ((value ^ (value >>> 14)) >>> 0) / 4294967296;
  };
}

const workers = Math.max(1, Number(option('workers', 2)));
const steps = Math.max(1, Number(option('steps', 2400)));
const roomsPerMonster = Math.max(1, Number(option('rooms-per-monster', 1)));
const attemptsPerMonster = Math.max(1, Number(option('attempts', 2)));
const start = Math.max(0, Number(option('start', 0)));
const limit = Math.max(0, Number(option('limit', Number.MAX_SAFE_INTEGER)));
const randomizationSeed = option('random-seed', 'MONSTER-RANDOM-20261028');
const runSeed = option('run-seed', '3JY1 6FLR');
const roomOverride = option('room', '');
const output = option('output', 'monster-random-coverage.json');
const parameters = JSON.parse(option('parameters', '{}'));
const recordDecisionHistory = option('record-decisions', 'false') === 'true';
const selected = new Set(option('ids', '').split(',').map(value => value.trim()).filter(Boolean));
const calibrationName = option('damage-calibration', 'invulnerability-calibration.json');

const page = JSON.parse(readFileSync(new URL('../monster-page.json', import.meta.url), 'utf8'));
const roomCatalog = JSON.parse(readFileSync(new URL('../room-configs/basement-rooms.json', import.meta.url), 'utf8'));
const identityCoverage = JSON.parse(readFileSync(new URL('../npc-coverage-final.json', import.meta.url), 'utf8'));
const calibrationReport = JSON.parse(readFileSync(new URL(`../${calibrationName}`, import.meta.url), 'utf8'));
if (calibrationReport.pass !== true) throw new Error('invulnerability damage calibration has not passed');
const roomCoverage = new Map(identityCoverage.entries.map(entry => [entry.key, entry.rooms]));
const parentCases = new Map(NPC_PARENT_CASES.map(testCase => [testCase.target, testCase]));

const eligible = page.entries
  .filter(entry => !entry.excludedAsBoss)
  .filter(entry => !selected.size || selected.has(entry.id) || selected.has(entry.name))
  .slice(start, start + limit);

const roomPool = roomCatalog.rooms.filter(room =>
  room.type === 1 &&
  room.spawns.some(stack => stack.entities.some(entity => entity.type >= 10 && entity.type < 1000))
);
if (!roomPool.length) throw new Error('no original normal rooms with hostile spawns');
const parentFallbackRooms = Object.values(NPC_PROBE_ROOMS).map(room => ({
  ...room,
  variant: null,
  shape: 'probe',
  entityCount: 0,
  spawns: [],
}));

const random = seededRandom(randomizationSeed);
for (let index = roomPool.length - 1; index > 0; index--) {
  const swap = Math.floor(random() * (index + 1));
  [roomPool[index], roomPool[swap]] = [roomPool[swap], roomPool[index]];
}

const cleanupCommand = 'lua for _,e in ipairs(Isaac.GetRoom():GetEntities()) do if e:IsActiveEnemy(false) or e.Type == 9 then e:Remove() end end';
const jobs = eligible.flatMap((entry, entryIndex) => {
  const rooms = roomCoverage.get(entry.id);
  const parentCase = parentCases.get(entry.id);
  const isParentDriven = rooms?.narrow?.status === 'parent-derived' ||
    rooms?.long?.status === 'parent-derived';
  const allowVariantFallback = rooms?.narrow?.status === 'normalized-direct' ||
    rooms?.long?.status === 'normalized-direct';
  return Array.from({ length: roomsPerMonster }, (_, trial) => {
    const roomIndex = (entryIndex * roomsPerMonster + trial) % roomPool.length;
    return {
      entry,
      trial,
      roomIndex,
      target: parseTarget(entry.id),
      allowVariantFallback,
      seed: runSeed,
      spawnNPC: isParentDriven && parentCase
        ? parentSpawnCommand(parentCase.parents[0])
        : `spawn ${entry.id}`,
      spawnSource: isParentDriven ? 'parent' : 'direct',
    };
  });
});

const results = [];
let next = 0;
const started = performance.now();

function summarize(job, initial, result, runDirectory) {
  const { entry, room, target } = job;
  const targetAtStart = initial.entities.find(entity => exactIdentity(entity, target)) ??
    initial.entities.find(entity => sameVariant(entity, target));
  const targetIdentityAtStart = targetAtStart
    ? `${targetAtStart.type}.${targetAtStart.variant}.${targetAtStart.subtype}`
    : null;
  const exactObserved = targetAtStart ? exactIdentity(targetAtStart, target) : false;
  const normalizedObserved = targetAtStart ? !exactObserved && sameVariant(targetAtStart, target) : false;
  const targetAtEnd = result.observation.entities.find(entity => isAlive(entity) && exactIdentity(entity, target)) ??
    result.observation.entities.find(entity => isAlive(entity) && sameVariant(entity, target));
  const summary = result.summary;
  const targetTimeline = summary.enemyTypes.find(entity =>
    entity.type === target.type &&
    entity.variant === target.variant &&
    (entity.subtype === target.subtype || job.allowVariantFallback));
  const targetAliveAtEnd = !!targetAtEnd;
  const cleared = summary.cleared === true && summary.dead !== true;
  const outcome = cleared
    ? (summary.hitCount > 0 ? 'cleared-with-hits' : 'cleared-no-hits')
    : targetAliveAtEnd
      ? 'target-alive-at-limit'
      : 'target-gone-room-not-clear';
  const remainingEnemyTypes = [...new Set(result.observation.entities
    .filter(entity => isAlive(entity) && entity.type >= 10 && entity.type < 1000)
    .map(entity => `${entity.type}.${entity.variant}.${entity.subtype}`))];
  const dataChecks = {
    nativeRoomLoaded: initial.ready === true &&
      initial.game?.roomIndex < 0 &&
      initial.room?.width === room.width &&
      initial.room?.height === room.height,
    targetObserved: !!targetAtStart,
    debugInvulnerability: job.calibrationReport.pass === true,
    hitEvidenceComplete: summary.hitEvents.every(event =>
      event.lastDecision && event.player &&
      Array.isArray(event.hazards) && Array.isArray(event.beforeHazards) &&
      event.healthDamage === 0 && event.healthUnchanged === true),
  };
  return {
    index: entry.index,
    name: entry.name,
    id: entry.id,
    trial: job.trial,
    seed: job.seed,
    requestedTarget: job.id,
    target,
    spawnSource: job.spawnSource,
    spawnNPC: job.spawnNPC,
    allowVariantFallback: job.allowVariantFallback,
    room: {
      command: room.room,
      variant: room.variant,
      name: room.name,
      width: room.width,
      height: room.height,
      shape: room.shape,
      originalEntityCount: room.entityCount,
      originalHostileTypes: [...new Set(room.spawns.flatMap(stack =>
        stack.entities.filter(entity => entity.type >= 10 && entity.type < 1000)
          .map(entity => `${entity.type}.${entity.variant}.${entity.subtype}`)
      ))],
    },
    targetAtStart: targetAtStart ? {
      identity: targetIdentityAtStart,
      hp: targetAtStart.hp,
      damage: targetAtStart.damage,
      collision: targetAtStart.collision,
      radius: targetAtStart.radius,
    } : null,
    exactObserved,
    normalizedObserved,
    outcome,
    frames: summary.frames,
    cleared,
    targetAliveAtEnd,
    targetTimeline: targetTimeline ?? null,
    targetAtEnd: targetAtEnd ? {
      identity: `${targetAtEnd.type}.${targetAtEnd.variant}.${targetAtEnd.subtype}`,
      hp: targetAtEnd.hp,
      damage: targetAtEnd.damage,
      collision: targetAtEnd.collision,
      radius: targetAtEnd.radius,
    } : null,
    remainingEnemyTypes,
    hitCount: summary.hitCount,
    hitEvents: summary.hitEvents,
    damageTaken: summary.damageTaken,
    damageEvents: summary.damageEvents,
    dangerFrameCounts: summary.dangerFrameCounts,
    decisionThreatCounts: summary.decisionThreatCounts,
    enemyTypes: summary.enemyTypes,
    truncated: result.truncated,
    lastDecision: summary.lastDecision,
    decisionHistory: summary.decisionHistory,
    dataChecks,
    dataPass: Object.values(dataChecks).every(Boolean),
    runDirectory,
  };
}

await Promise.all(Array.from({ length: Math.min(workers, jobs.length) }, async () => {
  const env = new EngineEnvironment({ maxSteps: steps });
  try {
    while (next < jobs.length) {
      const job = jobs[next++];
      let row = null;
      const attemptedRooms = [];
      let lastError = null;
      const overrideRoom = roomOverride
        ? roomPool.find(room => room.room === roomOverride)
        : null;
      if (roomOverride && !overrideRoom) throw new Error(`unknown room override ${roomOverride}`);
      const roomAttempts = overrideRoom
        ? [overrideRoom]
        : Array.from({ length: attemptsPerMonster }, (_, attempt) =>
          roomPool[(job.roomIndex + attempt * 397) % roomPool.length]
        );
      if (job.spawnSource === 'parent') roomAttempts.push(...parentFallbackRooms);
      for (let attempt = 0; attempt < roomAttempts.length; attempt++) {
        const room = roomAttempts[attempt];
        const current = {
          ...job,
          id: job.entry.id,
          room,
          attempt,
          calibrationReport,
        };
        attemptedRooms.push(room.room);
        try {
          const initial = await env.reset({
            seed: job.seed,
            room: room.room,
            targetNPC: job.target,
            spawnNPC: job.spawnNPC,
            debugFlags: [3],
            preSpawnCommands: [cleanupCommand],
            allowVariantFallback: job.allowVariantFallback,
            damageCalibration: calibrationReport.calibration,
            postSpawnWaitFrames: job.spawnSource === 'parent' ? 2400 : 180,
            setupMaxFrames: job.spawnSource === 'parent' ? 6000 : 2400,
            maxSteps: steps,
          });
          const result = await env.rollout({ steps, parameters, recordDecisionHistory });
          row = {
            ...summarize(current, initial, result, env.runDirectory),
            attempt: attempt + 1,
            attemptedRooms,
          };
          break;
        } catch (error) {
          lastError = error;
        }
      }
      if (row) {
        results.push(row);
        console.log(JSON.stringify({
          name: row.name,
          id: row.id,
          room: row.room.command,
          outcome: row.outcome,
          hits: row.hitCount,
          frames: row.frames,
          dataPass: row.dataPass,
        }));
      } else {
        const lastRoom = roomAttempts.at(-1);
        row = {
          index: job.entry.index,
          name: job.entry.name,
          id: job.entry.id,
          trial: job.trial,
          seed: job.seed,
          room: {
            command: lastRoom.room,
            variant: lastRoom.variant,
            name: lastRoom.name,
            width: lastRoom.width,
            height: lastRoom.height,
            shape: lastRoom.shape,
          },
          spawnSource: job.spawnSource,
          spawnNPC: job.spawnNPC,
          outcome: 'technical-error',
          error: lastError?.stack ?? String(lastError),
          attempt: roomAttempts.length,
          attemptedRooms,
          dataPass: false,
          runDirectory: env.runDirectory,
        };
        results.push(row);
        console.log(JSON.stringify({ name: row.name, id: row.id, room: row.room.command, error: row.error }));
      }
    }
  } finally {
    await env.close();
  }
}));

results.sort((a, b) => a.index - b.index || a.trial - b.trial);
const outcomes = {};
for (const row of results) outcomes[row.outcome] = (outcomes[row.outcome] ?? 0) + 1;
const summary = {
  pageRows: page.rowCount,
  excludedBossRows: page.bossRows,
  eligibleRows: page.eligibleRows,
  selectedEntries: eligible.length,
  requestedRuns: jobs.length,
  runs: results.length,
  dataPassed: results.filter(row => row.dataPass).length,
  loadedTargets: results.filter(row => row.exactObserved || row.normalizedObserved).length,
  exactTargets: results.filter(row => row.exactObserved).length,
  normalizedTargets: results.filter(row => row.normalizedObserved).length,
  cleared: results.filter(row => row.cleared === true).length,
  zeroHitClears: results.filter(row => row.cleared === true && row.hitCount === 0).length,
  clearedWithHits: results.filter(row => row.cleared === true && row.hitCount > 0).length,
  hitRuns: results.filter(row => (row.hitCount ?? 0) > 0).length,
  totalHits: results.reduce((sum, row) => sum + (row.hitCount ?? 0), 0),
  timeouts: results.filter(row => row.truncated === true).length,
  technicalErrors: results.filter(row => row.outcome === 'technical-error').length,
  retriedRuns: results.filter(row => (row.attemptedRooms?.length ?? 0) > 1).length,
  outcomes,
};
const report = {
  native: true,
  scope: 'Fandom Monster List minus boss identities, tested in randomly selected original basement room configs',
  caveat: 'debug 3 and damage-cooldown hit capture are used; hit counts estimate would-be damage and are not health damage',
  source: page.source,
  randomizationSeed,
  runSeed,
  steps,
  roomsPerMonster,
  attemptsPerMonster,
  damageCalibration: {
    file: calibrationName,
    pass: calibrationReport.pass,
    bounds: calibrationReport.calibration,
    summary: calibrationReport.summary,
  },
  parameters: { dt: 1 / 30, contact_margin: 8, ...parameters },
  roomPoolSource: roomCatalog.source,
  roomPoolSize: roomPool.length,
  preSpawnCommand: cleanupCommand,
  wallMs: performance.now() - started,
  summary,
  results,
};
writeFileSync(new URL(`../${output}`, import.meta.url), `${JSON.stringify(report, null, 2)}\n`);
console.log(JSON.stringify({ summary, wallMs: report.wallMs, output }, null, 2));
if (summary.dataPassed !== summary.runs) process.exitCode = 1;
