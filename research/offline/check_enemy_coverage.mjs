import { writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';
import { ENEMY_SCENARIOS } from './enemy_suite.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

const workers = Math.max(1, Number(option('workers', 2)));
const steps = Math.max(1, Number(option('steps', 4200)));
const seeds = option('seeds', '3JY1 6FLR').split(',').map(value => value.trim()).filter(Boolean);
const parameters = JSON.parse(option('parameters', '{}'));
const recordDecisionHistory = option('record-decisions', 'false') === 'true';
const decisionHistoryLimit = Math.max(1, Number(option('decision-history-limit', 120)));
const output = option('output', 'enemy-coverage.json');
const selected = new Set(option('scenario', '').split(',').map(value => value.trim()).filter(Boolean));
const scenarios = ENEMY_SCENARIOS.filter(scenario => !selected.size || selected.has(scenario.name));
const jobs = scenarios.flatMap(scenario => seeds.map(seed => ({ scenario, seed })));
const results = [];
let next = 0;
const started = performance.now();

function targetObserved(observation, targetNPC) {
  return observation.entities?.some(entity =>
    entity.type === targetNPC && entity.dead === false && entity.exists !== false) ?? false;
}

await Promise.all(Array.from({ length: Math.min(workers, jobs.length) }, async () => {
  const env = new EngineEnvironment({ maxSteps: steps });
  try {
    while (next < jobs.length) {
      const { scenario, seed } = jobs[next++];
      try {
        const initial = await env.reset({
          seed,
          room: scenario.room,
          targetNPC: scenario.targetNPC,
          maxSteps: steps,
        });
        const loadedTarget = targetObserved(initial, scenario.targetNPC);
        if (!loadedTarget) throw new Error(`reset did not expose target NPC ${scenario.targetNPC}`);
        const result = await env.rollout({
          steps,
          parameters,
          recordDecisionHistory,
          decisionHistoryLimit,
        });
        const summary = result.summary;
        const observedTarget = summary.enemyTypes.some(entity =>
          entity.type === scenario.targetNPC);
        const damageEvidenceComplete = summary.damageEvents.every(event =>
          event.lastDecision && event.player && Array.isArray(event.hazards) &&
          Array.isArray(event.beforeHazards));
        const row = {
          name: scenario.name,
          room: scenario.room,
          seed,
          targetNPC: scenario.targetNPC,
          mechanics: scenario.mechanics,
          initialEnemyTypes: initial.entities
            .filter(entity => entity.kind === 'npc' && entity.dead === false)
            .map(entity => `${entity.type}.${entity.variant}.${entity.subtype}`),
          frames: summary.frames,
          damageTaken: summary.damageTaken,
          health: summary.health,
          cleared: summary.cleared,
          dead: summary.dead,
          truncated: result.truncated,
          enemyTypes: summary.enemyTypes,
          dangerFrameCounts: summary.dangerFrameCounts,
          decisionThreatCounts: summary.decisionThreatCounts,
          damageEvents: summary.damageEvents,
          decisionHistory: summary.decisionHistory,
          enemyHpTransitions: summary.enemyHpTransitions,
          stopEvents: summary.stopEvents,
          dataChecks: {
            nativeRoomLoaded: initial.ready === true && initial.game?.roomIndex < 0,
            targetLoaded: loadedTarget,
            targetObserved: observedTarget,
            damageEvidenceComplete,
          },
          runDirectory: env.runDirectory,
        };
        row.dataPass = Object.values(row.dataChecks).every(Boolean);
        row.combatPass = row.cleared && row.damageTaken === 0 && row.dead === false &&
          !row.truncated;
        results.push(row);
        console.log(JSON.stringify({
          name: row.name,
          seed: row.seed,
          frames: row.frames,
          damageTaken: row.damageTaken,
          cleared: row.cleared,
          dead: row.dead,
          truncated: row.truncated,
          dataPass: row.dataPass,
          combatPass: row.combatPass,
        }));
      } catch (error) {
        const row = {
          name: scenario.name,
          room: scenario.room,
          seed,
          targetNPC: scenario.targetNPC,
          mechanics: scenario.mechanics,
          error: error.stack ?? String(error),
          dataPass: false,
          combatPass: false,
          runDirectory: env.runDirectory,
        };
        results.push(row);
        console.log(JSON.stringify({ name: row.name, seed: row.seed, error: row.error }));
      }
    }
  } finally {
    await env.close();
  }
}));

results.sort((a, b) => a.name.localeCompare(b.name) || a.seed.localeCompare(b.seed));
const summary = {
  runs: results.length,
  dataPassed: results.filter(row => row.dataPass).length,
  cleared: results.filter(row => row.cleared).length,
  zeroDamage: results.filter(row => row.damageTaken === 0).length,
  damaged: results.filter(row => row.damageTaken > 0).length,
  dead: results.filter(row => row.dead).length,
  truncated: results.filter(row => row.truncated).length,
};
const report = {
  native: true,
  scope: 'Original-engine combat rooms across contact, charge, jump, laser, explosion, summon and projectile mechanics',
  seed: seeds,
  steps,
  parameters: { dt: 1 / 30, contact_margin: 8, ...parameters },
  wallMs: performance.now() - started,
  summary,
  results,
};

writeFileSync(new URL(`../${output}`, import.meta.url), JSON.stringify(report, null, 2));
console.log(JSON.stringify({ summary, wallMs: report.wallMs }));
if (summary.dataPassed !== summary.runs) process.exitCode = 1;
