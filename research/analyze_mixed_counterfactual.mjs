import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { fileURLToPath, pathToFileURL } from 'node:url';
import { EngineEnvironment } from './boss-lab/offline/engine_environment.mjs';
import { MIXED_FAILURE_SCENARIOS } from './offline/mixed_failure_scenarios.mjs';
import { isCooldownHit } from './offline/damage_tracking.mjs';

const researchRoot = fileURLToPath(new URL('./', import.meta.url));
process.env.BOSS_POLICY_MODULE = pathToFileURL(resolve(researchRoot, 'offline/planner_policy.mjs')).href;

function option(name, fallback) {
  const prefix = `--${name}=`;
  return process.argv.slice(2).find(value => value.startsWith(prefix))?.slice(prefix.length) ?? fallback;
}

const scenarioName = option('scenario', 'known-cage-death');
const scenario = MIXED_FAILURE_SCENARIOS.find(row => row.name === scenarioName);
if (!scenario) throw new Error(`unknown mixed scenario: ${scenarioName}`);
const seed = option('seed', '7W3L P1Z9');
const steps = Math.max(1, Number(option('steps', 3600)));
const lead = Math.max(1, Number(option('lead', 30)));
const backtrack = Math.max(0, Number(option('backtrack', 30)));
const output = option('output', `mixed-counterfactual-${scenarioName}-${seed.replaceAll(' ', '-')}.json`);
const calibration = JSON.parse(readFileSync(new URL('./invulnerability-calibration.json', import.meta.url), 'utf8'));
if (calibration.pass !== true) throw new Error('invulnerability calibration has not passed');

const targetOf = entry => ({ type: entry.type, variant: entry.variant, subtype: entry.subtype });
const actionAt = (candidate, tick) => {
  if (!candidate.plan) return candidate;
  let boundary = 0;
  for (const part of candidate.plan) {
    boundary += part.frames;
    if (tick < boundary) return part.action;
  }
  return candidate.plan.at(-1).action;
};
const cleanupCommand =
  'lua for _,e in ipairs(Isaac.GetRoom():GetEntities()) do if (e.Type>=10 and e.Type<1000) or e.Type==9 or e.Type==4 then e:Remove() end end';
const env = new EngineEnvironment({
  seed,
  room: scenario.room,
  targetNPCs: scenario.targets.map(targetOf),
  spawnNPCs: scenario.spawnCommands,
  debugFlags: [],
  preSpawnCommands: scenario.injected ? [cleanupCommand] : [],
  isolationCleanupCommand: scenario.injected ? scenario.postSpawnCommands[0] : null,
  isolationTypes: scenario.targets.map(entry => entry.type),
  isolationCleanupPasses: 4,
  postSpawnWaitFrames: 600,
  setupMaxFrames: 6000,
  frameRuntime: true,
  damageCalibration: calibration.calibration,
  maxSteps: steps + 600,
});

const report = {
  scope: 'native same-process failure replay and nine-direction counterfactual; not a completed run',
  scenario: scenario.name,
  room: scenario.room,
  seed,
  steps,
  lead,
  backtrack,
  pass: false,
};

try {
  const initial = await env.reset();
  const observed = scenario.targets.map(entry => {
    const target = targetOf(entry);
    return {
      key: entry.key,
      observed: initial.entities.some(entity =>
        entity.exists !== false && entity.dead !== true && entity.active !== false &&
        entity.type === target.type && entity.variant === target.variant && entity.subtype === target.subtype
      ),
    };
  });
  if (observed.some(row => !row.observed)) {
    throw new Error(`setup did not expose all targets: ${JSON.stringify(observed)}`);
  }
  report.targets = observed;
  await env.request('enable_frames');
  const baseline = await env.request('frame_rollout', {
    steps,
    parameters: { dt: 1 / 30, contact_margin: 8, diagnostics: true },
    disableSearch: true,
    prefire: true,
    retainAnchor: true,
    anchorInterval: 1,
    stopOnHit: true,
  });
  report.baseline = {
    frames: baseline.frames,
    damageTaken: baseline.damageTaken,
    hitCount: baseline.hitCount,
    cleared: baseline.cleared,
    dead: baseline.dead,
    anchor: baseline.anchor
      ? { snapshotId: baseline.anchor.snapshotId, frame: baseline.anchor.frame, actions: baseline.anchor.actions.length }
      : null,
  };
  if (!baseline.damageEvents.length || !baseline.anchor) {
    report.pass = true;
    report.result = 'no-first-hit';
  } else {
    const event = baseline.damageEvents[0];
    report.hit = {
      frame: event.frame,
      loss: event.loss,
      selected: event.selected ?? null,
      decisionSafe: event.decision?.safe ?? null,
      decisionKinds: event.decision?.threat_kinds ?? [],
      decisionCause: event.decision?.analysis?.cause ?? null,
      zeroHitFinal: event.decision?.analysis?.zero_hit_final ?? null,
      prunedZeroHit: event.decision?.analysis?.pruned_zero_hit ?? null,
      validFinal: event.decision?.analysis?.valid_final ?? null,
    };
    let forkSnapshotId = baseline.anchor.snapshotId;
    let forkOffset = 0;
    if (backtrack > 0) {
      await env.reset();
      await env.request('enable_frames');
      const prefixSteps = Math.max(0, baseline.frames - backtrack);
      const prefix = await env.request('frame_rollout', {
        steps: prefixSteps,
        parameters: { dt: 1 / 30, contact_margin: 8, diagnostics: true },
        disableSearch: true,
        prefire: true,
        stopOnHit: true,
      });
      if (prefix.damageEvents.length) throw new Error(`hit before rewind point at frame ${prefix.damageEvents[0].frame}`);
      const rewindSnapshot = await env.request('frame_snapshot');
      const replay = await env.request('frame_rollout', {
        steps: backtrack,
        parameters: { dt: 1 / 30, contact_margin: 8, diagnostics: true },
        disableSearch: true,
        prefire: true,
        continuePolicy: true,
        stopOnHit: true,
        recordActions: true,
      });
      report.rewind = {
        requested: backtrack,
        prefixSteps,
        snapshotFrame: rewindSnapshot.frame,
        replayed: replay.damageEvents.length > 0,
        replayHitFrame: replay.damageEvents[0]?.frame ?? null,
      };
      if (replay.actionJournal) {
        const actions = readFileSync(replay.actionJournal, 'utf8')
          .trim()
          .split(/\r?\n/)
          .filter(Boolean)
          .slice(0, 5)
          .map(line => JSON.parse(line));
        report.rewind.firstActions = actions;
      }
      if (replay.damageEvents.length > 0) {
        forkSnapshotId = rewindSnapshot.id;
        forkOffset = backtrack;
      }
    }
    await env.request('frame_restore', { id: forkSnapshotId });
    const before = await env.request('peek_frame');
    const dirs = [
      [0, 0], [0, -1], [1, -1], [1, 0], [1, 1],
      [0, 1], [-1, 1], [-1, 0], [-1, -1],
    ];
    const fire = event.selected?.fire ?? 'none';
    const horizon = lead + forkOffset;
    const constantForecast = await env.request('frame_evaluate', {
      horizon,
      recordHashes: true,
      target: event.decision?.target,
      candidates: dirs.map(([moveX, moveY]) => ({ moveX, moveY, fire })),
    });
    const constantSafe = constantForecast.selected.damage === 0 && constantForecast.selected.hitCount === 0;
    let forecast = constantForecast;
    let searchMode = 'constant-direction';
    if (!constantSafe) {
      const split = Math.max(1, Math.floor(horizon / 2));
      const turns = dirs.flatMap(([moveX, moveY]) => dirs
        .filter(([nextX, nextY]) => nextX !== moveX || nextY !== moveY)
        .map(([nextX, nextY]) => ({
          plan: [
            { frames: split, action: { moveX, moveY, fire } },
            { frames: horizon - split, action: { moveX: nextX, moveY: nextY, fire } },
          ],
        })));
      const turnForecast = await env.request('frame_evaluate', {
        horizon,
        recordHashes: true,
        target: event.decision?.target,
        candidates: turns,
      });
      if (turnForecast.selected.score > constantForecast.selected.score) forecast = turnForecast;
      searchMode = 'constant-and-turn';
    }
    report.counterfactual = {
      frame: forecast.frame,
      horizon: forecast.horizon,
      searchMode,
      constantSelected: constantForecast.selected,
      constantSafe,
      selected: forecast.selected,
      candidates: forecast.candidates.map(row => ({
        index: row.index,
        action: row.action,
        damage: row.damage,
        hitCount: row.hitCount,
        firstHit: row.firstHit,
        dead: row.dead,
      })),
    };
    const selected = forecast.selected;
    let lastHealth = before.player.health;
    let lastCooldown = before.player.damageCooldown;
    const actual = [];
    let hit = false;
    for (let tick = 0; tick < selected.hashes.length; ++tick) {
      const step = await env.step(actionAt(selected.action, tick));
      const player = step.observation.player;
      const currentHit = player.health < lastHealth ||
        isCooldownHit(lastCooldown, player.damageCooldown, calibration.calibration);
      actual.push({
        frame: step.observation.frame,
        health: player.health,
        hit: currentHit,
      });
      lastHealth = player.health;
      lastCooldown = player.damageCooldown;
      hit ||= currentHit;
      if (step.terminated) break;
    }
    report.actual = actual;
    report.escapeFound = selected.damage === 0 && selected.hitCount === 0 && actual.length === horizon && !hit;
    report.result = report.escapeFound
      ? 'safe-counterfactual-exists'
      : 'no-safe-constant-or-turn';
    report.pass = true;
  }
} catch (error) {
  report.error = error.stack ?? String(error);
  process.exitCode = 1;
} finally {
  report.runDirectory = env.runDirectory;
  writeFileSync(resolve(researchRoot, output), `${JSON.stringify(report, null, 2)}\n`);
  await env.close();
  console.log(JSON.stringify({
    pass: report.pass,
    scenario: report.scenario,
    seed: report.seed,
    hit: report.hit ?? null,
    escapeFound: report.escapeFound ?? null,
    result: report.result ?? null,
    runDirectory: report.runDirectory,
    output: resolve(researchRoot, output),
  }, null, 2));
}
