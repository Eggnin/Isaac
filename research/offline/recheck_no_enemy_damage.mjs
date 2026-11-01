import { readFileSync, writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

function exactIdentity(entity, target) {
  return entity.type === target.type &&
    entity.variant === target.variant &&
    entity.subtype === target.subtype;
}

const workers = Math.max(1, Number(option('workers', 2)));
const steps = Math.max(1, Number(option('steps', 2400)));
const parameters = JSON.parse(option('parameters', '{}'));
const output = option('output', 'no-damage-recheck-v3.json');
const selected = new Set(option('ids', '').split(',').map(value => value.trim()).filter(Boolean));
const source = JSON.parse(readFileSync(
  new URL('../monster-random-coverage-final.json', import.meta.url),
  'utf8'
));
const calibration = JSON.parse(readFileSync(
  new URL('../invulnerability-calibration.json', import.meta.url),
  'utf8'
));
if (calibration.pass !== true) throw new Error('invulnerability damage calibration has not passed');

const candidates = source.results.filter(row => {
  if (!row.truncated || !row.targetAliveAtEnd || row.targetAtStart.hp <= 0) return false;
  const minHp = row.targetTimeline?.minHp;
  return Number.isFinite(minHp) && minHp >= row.targetAtStart.hp - 0.01 &&
    (!selected.size || selected.has(row.id));
});
const cleanupCommand = 'lua for _,e in ipairs(Isaac.GetRoom():GetEntities()) do if e:IsActiveEnemy(false) or e.Type == 9 then e:Remove() end end';
const results = [];
let next = 0;
const started = performance.now();

await Promise.all(Array.from({ length: Math.min(workers, candidates.length) }, async () => {
  const env = new EngineEnvironment({ maxSteps: steps });
  try {
    while (next < candidates.length) {
      const previous = candidates[next++];
      try {
        const initial = await env.reset({
          seed: previous.seed,
          room: previous.room.command,
          targetNPC: previous.target,
          spawnNPC: previous.spawnNPC,
          debugFlags: [3],
          preSpawnCommands: [cleanupCommand],
          allowVariantFallback: previous.allowVariantFallback,
          damageCalibration: calibration.calibration,
          postSpawnWaitFrames: previous.spawnSource === 'parent' ? 2400 : 180,
          setupMaxFrames: previous.spawnSource === 'parent' ? 6000 : 2400,
          maxSteps: steps,
        });
        const targetAtStart = initial.entities.find(entity => exactIdentity(entity, previous.target));
        if (!targetAtStart) throw new Error(`target ${previous.id} was not observed after reset`);
        const result = await env.rollout({ steps, parameters });
        const targetAtEnd = result.observation.entities.find(entity =>
          exactIdentity(entity, previous.target) &&
          entity.exists !== false &&
          entity.dead !== true &&
          entity.active !== false
        );
        const timeline = result.summary.enemyTypes.find(entity =>
          entity.type === previous.target.type &&
          entity.variant === previous.target.variant &&
          (entity.subtype === previous.target.subtype || previous.allowVariantFallback)
        );
        const startHp = Number(targetAtStart.hp);
        const minHp = Number.isFinite(timeline?.minHp) ? timeline.minHp : startHp;
        const row = {
          id: previous.id,
          name: previous.name,
          room: previous.room.command,
          seed: previous.seed,
          spawnSource: previous.spawnSource,
          spawnNPC: previous.spawnNPC,
          targetAtStart: {
            hp: targetAtStart.hp,
            radius: targetAtStart.radius,
            collision: targetAtStart.collision,
            friendly: targetAtStart.friendly,
            noTarget: targetAtStart.noTarget,
            invulnerable: targetAtStart.invulnerable,
            targetable: targetAtStart.targetable,
          },
          startHp,
          minHp,
          targetDamaged: minHp < startHp - 0.01,
          targetAliveAtEnd: !!targetAtEnd,
          cleared: result.summary.cleared,
          dead: result.summary.dead,
          truncated: result.truncated,
          frames: result.summary.frames,
          hitCount: result.summary.hitCount,
          damageTaken: result.summary.damageTaken,
          remainingEnemyTypes: [...new Set(result.observation.entities
            .filter(entity =>
              entity.exists !== false &&
              entity.dead !== true &&
              entity.active !== false &&
              entity.type >= 10 &&
              entity.type < 1000)
            .map(entity => `${entity.type}.${entity.variant}.${entity.subtype}`))],
          lastDecision: result.summary.lastDecision,
          runDirectory: env.runDirectory,
          dataPass: true,
        };
        results.push(row);
        console.log(JSON.stringify({
          id: row.id,
          room: row.room,
          damaged: row.targetDamaged,
          alive: row.targetAliveAtEnd,
          cleared: row.cleared,
          hits: row.hitCount,
          frames: row.frames,
        }));
      } catch (error) {
        const row = {
          id: previous.id,
          name: previous.name,
          room: previous.room.command,
          seed: previous.seed,
          error: error.stack ?? String(error),
          runDirectory: env.runDirectory,
          dataPass: false,
        };
        results.push(row);
        console.log(JSON.stringify({ id: row.id, room: row.room, error: row.error }));
      }
    }
  } finally {
    await env.close();
  }
}));

results.sort((a, b) => a.id.localeCompare(b.id));
const summary = {
  requested: candidates.length,
  runs: results.length,
  dataPassed: results.filter(row => row.dataPass).length,
  damaged: results.filter(row => row.targetDamaged).length,
  stillNoDamage: results.filter(row => row.dataPass && !row.targetDamaged).length,
  cleared: results.filter(row => row.cleared).length,
  zeroHitClears: results.filter(row => row.cleared && row.hitCount === 0).length,
  targetAlive: results.filter(row => row.targetAliveAtEnd).length,
  timeouts: results.filter(row => row.truncated).length,
  technicalErrors: results.filter(row => !row.dataPass).length,
};
const report = {
  native: true,
  scope: 'v3 exact-room recheck of historical alive zero-damage targets',
  steps,
  parameters: { dt: 1 / 30, contact_margin: 8, ...parameters },
  calibration: {
    file: 'invulnerability-calibration.json',
    pass: calibration.pass,
    bounds: calibration.calibration,
  },
  wallMs: performance.now() - started,
  summary,
  results,
};
writeFileSync(new URL(`../${output}`, import.meta.url), `${JSON.stringify(report, null, 2)}\n`);
console.log(JSON.stringify({ summary, wallMs: report.wallMs, output }, null, 2));
if (summary.dataPassed !== summary.runs) process.exitCode = 1;
