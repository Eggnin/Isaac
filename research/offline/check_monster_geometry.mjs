import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { EngineEnvironment } from './engine_environment.mjs';
import { NPC_CONFIGS } from './npc_catalog.mjs';
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

function isAlive(entity) {
  return entity.exists !== false && entity.dead !== true && entity.active !== false;
}

function parentSpawnCommand(parent) {
  const key = typeof parent === 'string' ? parent : parent.key;
  const champion = typeof parent === 'string' ? undefined : parent.champion;
  return `spawn ${key}${champion === undefined ? '' : `.${champion}`}`;
}

function cleanupCommand() {
  return 'lua for _,e in ipairs(Isaac.GetRoom():GetEntities()) do if (e.Type>=10 and e.Type<1000) or e.Type==9 or e.Type==4 then e:Remove() end end';
}

function isolationCommand(types) {
  return `lua local keep={${[...types].map(type => `[${type}]=true`).join(',')}} ` +
    'for _,e in ipairs(Isaac.GetRoom():GetEntities()) do ' +
    'if ((e.Type>=10 and e.Type<1000) and not keep[e.Type]) or e.Type==9 or e.Type==4 then e:Remove() end end';
}

function readJson(path) {
  return JSON.parse(readFileSync(path, 'utf8'));
}

const workers = Math.max(1, Number(option('workers', 8)));
const steps = Math.max(1, Number(option('steps', 2400)));
const start = Math.max(0, Number(option('start', 0)));
const limit = Math.max(0, Number(option('limit', Number.MAX_SAFE_INTEGER)));
const seeds = option('seeds', '3JY1 6FLR,SWGF G7WV')
  .split(',')
  .map(value => value.trim())
  .filter(Boolean);
const selected = new Set(option('ids', '')
  .split(',')
  .map(value => value.trim())
  .filter(Boolean));
const output = option('output', 'monster-geometry-coverage.json');
const roomNames = option('rooms', 'd.36,d.27')
  .split(',')
  .map(value => value.trim())
  .filter(Boolean);
const stationary = option('stationary', 'true') !== 'false';
const mode = option('mode', stationary ? 'stationary' : 'policy');
const attackEnabled = option('attack', 'false') === 'true';
const postSpawnWait = Math.max(0, Number(option('post-spawn-wait', 240)));
const copies = Math.max(1, Number(option('copies', 1)));
const companions = option('companions', '')
  .split(',')
  .map(value => value.trim())
  .filter(Boolean)
  .map(key => key.startsWith('spawn ') ? key : `spawn ${key}`);
const calibrationName = option('damage-calibration', 'invulnerability-calibration.json');
const calibrationReport = readJson(resolve('research', calibrationName));
if (calibrationReport.pass !== true) throw new Error('invulnerability damage calibration has not passed');

const coverage = readJson(resolve('research', 'npc-coverage-final.json'));
const roomCatalog = readJson(resolve('research', 'room-configs', 'basement-rooms.json'));
const coverageByKey = new Map(coverage.entries.map(entry => [entry.key, entry]));
const parentByKey = new Map(NPC_PARENT_CASES.map(testCase => [testCase.target, testCase]));
const roomPool = roomCatalog.rooms.filter(room => roomNames.includes(room.room));
if (roomPool.length !== roomNames.length) {
  const found = new Set(roomPool.map(room => room.room));
  throw new Error(`unknown rooms: ${roomNames.filter(name => !found.has(name)).join(',')}`);
}

const identities = NPC_CONFIGS
  .filter(entry => entry.role === 'monster')
  .filter(entry => !selected.size || selected.has(entry.key) || selected.has(entry.name))
  .slice(start, start + limit);

if (!identities.length) throw new Error('no ordinary monster identities selected');

const jobs = identities.flatMap((entry, index) => seeds.map(seed => {
  const rooms = coverageByKey.get(entry.key)?.rooms;
  const parentCase = parentByKey.get(entry.key);
  const parentDerived = rooms?.narrow?.status === 'parent-derived' ||
    rooms?.long?.status === 'parent-derived';
  const parent = parentDerived ? parentCase?.parents?.[0] : null;
  const target = parseTarget(entry.key);
  return {
    entry,
    index,
    target,
    seed,
    parentDerived,
    spawnNPC: parent ? parentSpawnCommand(parent) : `spawn ${entry.key}`,
    keepTypes: new Set([
      target.type,
      ...(parent ? [parseTarget(typeof parent === 'string' ? parent : parent.key).type] : []),
      ...companions.map(command => parseTarget(command.replace(/^spawn\s+/, '')).type),
    ]),
  };
}));

const actions = mode === 'stationary'
  ? Array.from({ length: steps }, () => ({ moveX: 0, moveY: 0, fire: 'none' }))
  : mode === 'strafe-fire'
    ? Array.from({ length: steps }, (_, frame) => ({
      moveX: Math.floor(frame / 60) % 2 === 0 ? 1 : -1,
      moveY: 0,
      fire: 'down',
    }))
    : undefined;
const results = [];
let next = 0;
const started = performance.now();

function summarize(job, initial, result, room) {
  const targetAtStart = initial.entities.find(entity =>
    isAlive(entity) && exactIdentity(entity, job.target)
  ) ?? null;
  const unexpected = [...new Set(initial.entities
    .filter(entity => isAlive(entity) && entity.type >= 10 && entity.type < 1000)
    .filter(entity => !job.keepTypes.has(entity.type))
    .map(entity => `${entity.type}.${entity.variant}.${entity.subtype}`))];
  const timeline = result.summary.geometryTimeline;
  const dataChecks = {
    targetObservedAtSetup: !!targetAtStart,
    isolated: unexpected.length === 0,
    geometryTimelineWritten: !!timeline?.file && timeline.frames > 0,
    targetObservedInTimeline: timeline?.source_identities?.includes(job.entry.key) === true,
    debugInvulnerability: calibrationReport.pass === true,
  };
  return {
    key: job.entry.key,
    name: job.entry.name,
    seed: job.seed,
    target: job.target,
    spawnNPC: job.spawnNPC,
    parentDerived: job.parentDerived,
    room: {
      command: room.room,
      width: room.width,
      height: room.height,
      shape: room.shape,
    },
    setupTarget: targetAtStart ? {
      address: targetAtStart.address,
      identity: `${targetAtStart.type}.${targetAtStart.variant}.${targetAtStart.subtype}`,
      hp: targetAtStart.hp,
      damage: targetAtStart.damage,
      collision: targetAtStart.collision,
      radius: targetAtStart.radius,
    } : null,
    unexpectedInitialEnemies: unexpected,
    frames: result.summary.frames,
    truncated: result.truncated,
    cleared: result.summary.cleared,
    dead: result.summary.dead,
    geometryTimeline: timeline,
    dataChecks,
    dataPass: Object.values(dataChecks).every(Boolean) && (timeline?.hazard_samples ?? 0) > 0,
    runDirectory: result.runDirectory,
    outcome: (timeline?.hazard_samples ?? 0) > 0 ? 'geometry-observed' : 'no-danger-observed',
  };
}

function approachActions(initial, job) {
  const target = initial.entities.find(entity =>
    isAlive(entity) && exactIdentity(entity, job.target)
  );
  const player = initial.player;
  if (!target || !player) return undefined;
  const dx = target.position.x - player.position.x;
  const dy = target.position.y - player.position.y;
  const moveX = Math.abs(dx) > 8 ? Math.sign(dx) : 0;
  const moveY = Math.abs(dy) > 8 ? Math.sign(dy) : 0;
  return Array.from({ length: steps }, (_, frame) => frame < 120
    ? { moveX, moveY, fire: 'none' }
    : { moveX: 0, moveY: 0, fire: 'none' });
}

await Promise.all(Array.from({ length: Math.min(workers, jobs.length) }, async () => {
  const env = new EngineEnvironment({ maxSteps: steps + 300 });
  try {
    while (next < jobs.length) {
      const job = jobs[next++];
      let row = null;
      let bestRow = null;
      let lastError = null;
      const attemptedRooms = [];
      for (const room of roomPool) {
        attemptedRooms.push(room.room);
        try {
          const initial = await env.reset({
            seed: job.seed,
            room: room.room,
            targetNPC: job.target,
            spawnNPC: job.spawnNPC,
            spawnNPCs: copies > 1 || companions.length
              ? [...Array(copies).fill(job.spawnNPC), ...companions]
              : undefined,
            debugFlags: [3],
            preSpawnCommands: [cleanupCommand()],
            isolationCleanupCommand: isolationCommand(job.keepTypes),
            isolationTypes: [...job.keepTypes],
            isolationCleanupPasses: 4,
            allowVariantFallback: false,
            damageCalibration: calibrationReport.calibration,
            postSpawnWaitFrames: job.parentDerived ? 1800 : postSpawnWait,
            setupMaxFrames: job.parentDerived ? 7000 : 2600,
            maxSteps: steps,
            ignoreRoomClear: true,
            noRender: true,
          });
          const result = await env.rollout({
            steps,
            actions: mode === 'approach' ? approachActions(initial, job) : actions,
            attack: attackEnabled,
            parameters: { dt: 1 / 30, contact_margin: 8 },
            recordGeometryTimeline: true,
          });
          row = {
            ...summarize(job, initial, result, room),
            runDirectory: env.runDirectory,
            attemptedRooms,
          };
          const score = (row.dataPass ? 1_000_000 : 0) +
            (row.dataChecks.isolated ? 100_000 : 0) +
            Math.min(99_999, row.geometryTimeline?.hazard_samples ?? 0);
          const bestScore = bestRow
            ? (bestRow.dataPass ? 1_000_000 : 0) +
              (bestRow.dataChecks.isolated ? 100_000 : 0) +
              Math.min(99_999, bestRow.geometryTimeline?.hazard_samples ?? 0)
            : -1;
          if (score > bestScore) bestRow = row;
          if (row.dataChecks.isolated && row.dataPass) break;
        } catch (error) {
          lastError = error;
        }
      }
      row = bestRow ?? row;
      if (row) {
        results.push(row);
        console.log(JSON.stringify({
          key: row.key,
          seed: row.seed,
          room: row.room.command,
          frames: row.frames,
          hazards: row.geometryTimeline?.hazard_samples ?? 0,
          dataPass: row.dataPass,
        }));
      } else {
        row = {
          key: job.entry.key,
          name: job.entry.name,
          seed: job.seed,
          target: job.target,
          spawnNPC: job.spawnNPC,
          parentDerived: job.parentDerived,
          attemptedRooms,
          outcome: 'technical-error',
          error: lastError?.stack ?? String(lastError),
          dataPass: false,
          runDirectory: env.runDirectory,
        };
        results.push(row);
        console.log(JSON.stringify({ key: row.key, seed: row.seed, error: row.error }));
      }
    }
  } finally {
    await env.close();
  }
}));

results.sort((a, b) => a.key.localeCompare(b.key) || a.seed.localeCompare(b.seed));
const summary = {
  identities: identities.length,
  runs: results.length,
  dataPassed: results.filter(row => row.dataPass).length,
  geometryObserved: results.filter(row => row.outcome === 'geometry-observed').length,
  targetObserved: results.filter(row => row.dataChecks?.targetObservedAtSetup).length,
  isolated: results.filter(row => row.dataChecks?.isolated).length,
  technicalErrors: results.filter(row => row.outcome === 'technical-error').length,
  noDanger: results.filter(row => row.outcome === 'no-danger-observed').length,
  totalFrames: results.reduce((sum, row) => sum + (row.frames ?? 0), 0),
  totalHazardSamples: results.reduce((sum, row) => sum + (row.geometryTimeline?.hazard_samples ?? 0), 0),
  totalTimelineBytes: results.reduce((sum, row) => sum + (row.geometryTimeline?.bytes ?? 0), 0),
};
const report = {
  native: true,
  scope: 'strict-geometry collection for role=monster identities from the local NPC catalog',
  definitions: {
    geometryTimeline: 'per-frame hostile actor and hazard geometry from the original offline engine',
    sourceLink: 'hazard source follows spawner, parent, and owner links recorded in the same frame',
    notStrictYet: 'collection alone does not establish cross-seed stability or a planning-validated model',
  },
  source: {
    catalog: 'data/npc/engine_npc_entity_catalog.tsv',
    coverage: 'research/npc-coverage-final.json',
    rooms: 'research/offline/npc_catalog.mjs',
  },
  steps,
  seeds,
  workers,
  stationary,
  mode,
  attackEnabled,
  postSpawnWait,
  copies,
  companions,
  roomPool: roomPool.map(room => room.room),
  damageCalibration: {
    file: calibrationName,
    pass: calibrationReport.pass,
    bounds: calibrationReport.calibration,
  },
  wallMs: performance.now() - started,
  summary,
  results,
};
writeFileSync(resolve('research', output), `${JSON.stringify(report, null, 2)}\n`);
console.log(JSON.stringify({ summary, wallMs: report.wallMs, output }, null, 2));
if (summary.technicalErrors > 0) process.exitCode = 1;
