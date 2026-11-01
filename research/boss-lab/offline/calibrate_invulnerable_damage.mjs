import { writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';
import { isCooldownHit } from './damage_tracking.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

const steps = Math.max(1, Number(option('steps', 720)));
const seed = option('seed', '3JY1 6FLR');
const output = option('output', 'invulnerability-calibration.json');
const cleanupCommand = 'lua for _,e in ipairs(Isaac.GetRoom():GetEntities()) do if e:IsActiveEnemy(false) or e.Type == 9 then e:Remove() end end';
const scenarios = [
  { name: 'Gaper contact', id: '10.0.0', room: 'd.5' },
  { name: 'Pooter projectile', id: '14.0.0', room: 'd.7' },
  { name: 'Hopper jump', id: '29.0.0', room: 'd.12' },
];

function targetOf(id) {
  const [type, variant, subtype] = id.split('.').map(Number);
  return { type, variant, subtype };
}

async function executeRun(scenario, debugInvulnerable) {
  const target = targetOf(scenario.id);
  const env = new EngineEnvironment({ maxSteps: steps });
  const previousStep = { moveX: 0, moveY: 0, fire: 'none' };
  try {
    const initial = await env.reset({
      seed,
      room: scenario.room,
      targetNPC: target,
      spawnNPC: `spawn ${scenario.id}`,
      debugFlags: debugInvulnerable ? [3] : [],
      preSpawnCommands: [cleanupCommand],
      maxSteps: steps,
    });
    let previousHealth = initial.player.health;
    let previousCooldown = initial.player.damageCooldown;
    const healthDrops = [];
    const cooldownJumps = [];
    const trace = [];
    for (let index = 0; index < steps; index++) {
      const result = await env.step(previousStep);
      const observation = result.observation;
      const health = observation.player?.health;
      const cooldown = observation.player?.damageCooldown;
      if (Number.isFinite(health) && health < previousHealth) {
        healthDrops.push({
          frame: observation.frame,
          amount: previousHealth - health,
          previousHealth,
          health,
          previousCooldown,
          cooldown,
        });
      }
      if (Number.isFinite(cooldown) && cooldown > previousCooldown) {
        cooldownJumps.push({
          frame: observation.frame,
          previousCooldown,
          cooldown,
          delta: cooldown - previousCooldown,
          health,
        });
      }
      if (trace.length < 24 && (health < previousHealth || cooldown > previousCooldown)) {
        trace.push({ frame: observation.frame, health, cooldown });
      }
      previousHealth = health;
      previousCooldown = cooldown;
      if (result.terminated || result.truncated) break;
    }
    return {
      scenario: scenario.name,
      id: scenario.id,
      room: scenario.room,
      debugInvulnerable,
      initialTarget: initial.entities.find(entity =>
        entity.type === target.type &&
        entity.variant === target.variant &&
        entity.subtype === target.subtype &&
        entity.dead === false
      ) ?? null,
      startingHealth: initial.player.health,
      finalHealth: previousHealth,
      healthDrops,
      cooldownJumps,
      trace,
      runDirectory: env.runDirectory,
    };
  } finally {
    await env.close();
  }
}

const runs = [];
for (const scenario of scenarios) {
  runs.push(await executeRun(scenario, false));
  runs.push(await executeRun(scenario, true));
}

const normalRuns = runs.filter(run => !run.debugInvulnerable);
const debugRuns = runs.filter(run => run.debugInvulnerable);
const calibrationDrops = normalRuns.flatMap(run => run.healthDrops)
  .filter(event => event.cooldown > event.previousCooldown);
if (!calibrationDrops.length) throw new Error('normal mode produced no calibrated health drops');

const minCooldown = Math.min(...calibrationDrops.map(event => event.cooldown));
const minIncrease = Math.min(...calibrationDrops.map(event => event.cooldown - event.previousCooldown));
const calibration = { minCooldown, minIncrease };

for (const run of normalRuns) {
  run.matchedHealthDrops = run.healthDrops.filter(event =>
    isCooldownHit(event.previousCooldown, event.cooldown, calibration)
  ).length;
  run.missedHealthDrops = run.healthDrops.length - run.matchedHealthDrops;
  run.calibratedJumps = run.cooldownJumps.filter(event =>
    isCooldownHit(event.previousCooldown, event.cooldown, calibration)
  );
}
for (const run of debugRuns) {
  run.healthDrops = run.healthDrops;
  run.calibratedJumps = run.cooldownJumps.filter(event =>
    isCooldownHit(event.previousCooldown, event.cooldown, calibration)
  );
  run.healthDropsWhileInvulnerable = run.healthDrops.length;
}

const normalHealthDrops = normalRuns.reduce((sum, run) => sum + run.healthDrops.length, 0);
const normalMatchedDrops = normalRuns.reduce((sum, run) => sum + run.matchedHealthDrops, 0);
const debugHits = debugRuns.reduce((sum, run) => sum + run.calibratedJumps.length, 0);
const debugHealthDrops = debugRuns.reduce((sum, run) => sum + run.healthDrops.length, 0);
const debugScenariosWithHits = debugRuns.filter(run => run.calibratedJumps.length > 0).length;
const normalScenariosWithHits = normalRuns.filter(run => run.healthDrops.length > 0).length;
const signatureMatches = scenarios.map(scenario => {
  const normal = normalRuns.find(run => run.scenario === scenario.name);
  const debug = debugRuns.find(run => run.scenario === scenario.name);
  const normalSignatures = normal.healthDrops.map(event =>
    `${event.previousCooldown}->${event.cooldown}`
  );
  const debugSignatures = debug.calibratedJumps.slice(0, normalSignatures.length).map(event =>
    `${event.previousCooldown}->${event.cooldown}`
  );
  normal.firstHitSignatures = normalSignatures;
  debug.firstHitSignatures = debugSignatures;
  return normalSignatures.length > 0 &&
    normalSignatures.every((signature, index) => signature === debugSignatures[index]);
});
const signatureMatchedScenarios = signatureMatches.filter(Boolean).length;
const pass = normalHealthDrops > 0 &&
  normalMatchedDrops === normalHealthDrops &&
  normalScenariosWithHits === scenarios.length &&
  debugScenariosWithHits === scenarios.length &&
  debugHits >= normalHealthDrops &&
  debugHealthDrops === 0 &&
  signatureMatchedScenarios === scenarios.length;

const report = {
  native: true,
  scope: 'normal health loss calibrates invulnerable damage-cooldown detection',
  seed,
  steps,
  calibration,
  summary: {
    scenarios: scenarios.length,
    normalScenariosWithHits,
    normalHealthDrops,
    normalMatchedDrops,
    debugScenariosWithHits,
    debugHits,
    debugHealthDrops,
    signatureMatchedScenarios,
  },
  pass,
  runs,
};
writeFileSync(new URL(`../${output}`, import.meta.url), `${JSON.stringify(report, null, 2)}\n`);
console.log(JSON.stringify({ output, calibration, pass, summary: report.summary }, null, 2));
if (!pass) process.exitCode = 1;
