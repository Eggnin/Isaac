import { readFileSync, writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';
import { MIXED_FAILURE_SCENARIOS } from './mixed_failure_scenarios.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

function targetOf(entry) {
  return { type: entry.type, variant: entry.variant, subtype: entry.subtype };
}

function observedTargets(observation, specs) {
  return specs.map(entry => {
    const target = targetOf(entry);
    const entity = observation.entities.find(candidate =>
      candidate.exists !== false &&
      candidate.dead !== true &&
      candidate.active !== false &&
      candidate.type === target.type &&
      candidate.variant === target.variant &&
      candidate.subtype === target.subtype
    );
    return {
      id: entry.key,
      observed: !!entity,
      entity: entity ?? null,
    };
  });
}

const workers = Math.max(1, Number(option('workers', 2)));
const steps = Math.max(1, Number(option('steps', 3600)));
const parameters = JSON.parse(option('parameters', '{}'));
const recordDecisionHistory = option('record-decisions', 'false') === 'true';
const decisionHistoryLimit = Math.max(1, Number(option('decision-history-limit', 120)));
const debugModes = option('debug', 'both') === 'false' ? [false] : [false, true];
const recordFriendlyTears = option('record-tears', 'false') === 'true';
const seeds = option('seeds', '3JY1 6FLR,7W3L P1Z9').split(',').map(value => value.trim()).filter(Boolean);
const output = option('output', 'mixed-failure-baseline.json');
const selected = new Set(option('scenario', '').split(',').map(value => value.trim()).filter(Boolean));
const scenarios = MIXED_FAILURE_SCENARIOS.filter(scenario => !selected.size || selected.has(scenario.name));
const calibration = JSON.parse(readFileSync(new URL('../invulnerability-calibration.json', import.meta.url), 'utf8'));
if (calibration.pass !== true) throw new Error('invulnerability damage calibration has not passed');

const cleanupCommand = 'lua for _,e in ipairs(Isaac.GetRoom():GetEntities()) do if (e.Type>=10 and e.Type<1000) or e.Type==9 or e.Type==4 then e:Remove() end end';
const jobs = scenarios.flatMap(scenario => seeds.flatMap(seed =>
  debugModes.map(debug => ({ scenario, seed, debug }))
));
const results = [];
let next = 0;
const started = performance.now();

await Promise.all(Array.from({ length: Math.min(workers, jobs.length) }, async () => {
  const env = new EngineEnvironment({ maxSteps: steps });
  try {
    while (next < jobs.length) {
      const job = jobs[next++];
      const { scenario, seed, debug } = job;
      try {
        const initial = await env.reset({
          seed,
          room: scenario.room,
          targetNPCs: scenario.targets.map(targetOf),
          spawnNPCs: scenario.spawnCommands,
          debugFlags: debug ? [3] : [],
          preSpawnCommands: scenario.injected ? [cleanupCommand] : [],
          isolationCleanupCommand: scenario.injected ? scenario.postSpawnCommands[0] : null,
          isolationTypes: scenario.targets.map(entry => entry.type),
          isolationCleanupPasses: 4,
          damageCalibration: calibration.calibration,
          postSpawnWaitFrames: 600,
          setupMaxFrames: 6000,
          maxSteps: steps,
        });
        const observed = observedTargets(initial, scenario.targets);
        if (observed.some(target => !target.observed)) {
          throw new Error(`mixed scenario did not expose all targets: ${JSON.stringify(observed)}`);
        }
        const result = await env.rollout({
          steps,
          parameters,
          recordDecisionHistory,
          decisionHistoryLimit,
          recordEntityTimeline: [...new Set([
            ...(recordFriendlyTears ? [2] : []),
            7,
            9,
            1000,
            ...scenario.targets.map(entry => entry.type),
          ])],
        });
        const targetIds = new Set(scenario.targets.map(entry => entry.key));
        const unexpectedInitialEnemies = [...new Set(initial.entities
          .filter(entity =>
            entity.exists !== false &&
            entity.dead !== true &&
            entity.active !== false &&
            entity.type >= 10 &&
            entity.type < 1000)
          .map(entity => `${entity.type}.${entity.variant}.${entity.subtype}`)
          .filter(key => !targetIds.has(key)))];
        const row = {
          scenario: scenario.name,
          room: scenario.room,
          expectedRoom: [scenario.width, scenario.height],
          seed,
          debugInvulnerable: debug,
          injected: scenario.injected,
          targets: scenario.targets.map(entry => ({
            id: entry.key,
            name: entry.name,
            category: entry.category,
          })),
          initialTargets: observed,
          unexpectedInitialEnemies,
          frames: result.summary.frames,
          cleared: result.summary.cleared,
          dead: result.summary.dead,
          truncated: result.truncated,
          health: result.summary.health,
          damageTaken: result.summary.damageTaken,
          hitCount: result.summary.hitCount,
          damageEvents: result.summary.damageEvents,
          hitEvents: result.summary.hitEvents,
          unsafeFrames: result.summary.unsafeFrames,
          unsafeEvents: result.summary.unsafeEvents,
          stopEvents: result.summary.stopEvents,
          decisionTransitions: result.summary.decisionTransitions,
          decisionHistory: result.summary.decisionHistory,
          entityTransitions: result.summary.entityTransitions,
          enemyHpTransitions: result.summary.enemyHpTransitions,
          lastDecision: result.summary.lastDecision,
          enemyTypes: result.summary.enemyTypes,
          dangerFrameCounts: result.summary.dangerFrameCounts,
          finalObservation: result.summary.cleared ? null : result.observation,
          dataChecks: {
            roomLoaded: initial.ready === true &&
              initial.room.width === scenario.width &&
              initial.room.height === scenario.height,
            allTargetsObserved: observed.every(target => target.observed),
            isolatedRoom: !scenario.injected || unexpectedInitialEnemies.length === 0,
            hitEvidenceComplete: result.summary.hitEvents.every(event =>
              event.lastDecision &&
              event.player &&
              Array.isArray(event.hazards) &&
              Array.isArray(event.beforeHazards)),
          },
          runDirectory: env.runDirectory,
        };
        row.dataPass = Object.values(row.dataChecks).every(Boolean);
        results.push(row);
        console.log(JSON.stringify({
          scenario: row.scenario,
          seed,
          debug,
          frames: row.frames,
          damage: row.damageTaken,
          hits: row.hitCount,
          dead: row.dead,
          cleared: row.cleared,
          dataPass: row.dataPass,
        }));
      } catch (error) {
        const row = {
          scenario: scenario.name,
          room: scenario.room,
          seed,
          debugInvulnerable: debug,
          outcome: 'technical-error',
          error: error.stack ?? String(error),
          dataPass: false,
          runDirectory: env.runDirectory,
        };
        results.push(row);
        console.log(JSON.stringify({ scenario: row.scenario, seed, debug, error: row.error }));
      }
    }
  } finally {
    await env.close();
  }
}));

results.sort((a, b) =>
  a.scenario.localeCompare(b.scenario) ||
  a.seed.localeCompare(b.seed) ||
  Number(a.debugInvulnerable) - Number(b.debugInvulnerable)
);
const summary = {
  runs: results.length,
  dataPassed: results.filter(row => row.dataPass).length,
  normalRuns: results.filter(row => row.debugInvulnerable === false).length,
  normalDeaths: results.filter(row => row.debugInvulnerable === false && row.dead === true).length,
  normalDamaged: results.filter(row => row.debugInvulnerable === false && row.damageTaken > 0).length,
  debugHitRuns: results.filter(row => row.debugInvulnerable === true && row.hitCount > 0).length,
  unsafeFrames: results.reduce((sum, row) => sum + (row.unsafeFrames ?? 0), 0),
};
const report = {
  native: true,
  scope: 'normal-mode and calibrated invulnerable mixed-hazard failure regression',
  steps,
  parameters: { dt: 1 / 30, contact_margin: 8, ...parameters },
  calibration: {
    file: 'invulnerability-calibration.json',
    pass: calibration.pass,
    bounds: calibration.calibration,
    summary: calibration.summary,
  },
  wallMs: performance.now() - started,
  summary,
  results,
};
writeFileSync(new URL(`../${output}`, import.meta.url), `${JSON.stringify(report, null, 2)}\n`);
console.log(JSON.stringify({ summary, wallMs: report.wallMs, output }, null, 2));
if (summary.dataPassed !== summary.runs) process.exitCode = 1;
