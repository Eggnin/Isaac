import { readFileSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';
import { EngineEnvironment } from './engine_environment.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

const saveSeedDir = option('save-seed-dir', '');
const output = option('output', 'menu-controls-probe.json');
const hold = Math.max(1, Number(option('hold', '3')));
const gap = Math.max(0, Number(option('gap', '12')));
const enterCount = Math.max(1, Number(option('enters', '12')));
const activateFrame = Math.max(0, Number(option('activate-frame', '60')));

const env = new EngineEnvironment({
  seed: '7W3L P1Z9',
  stage: 1,
  room: 'none',
  targetNPC: { type: 406, variant: 1, subtype: 0 },
  maxSteps: 3000,
  setupTimeoutMs: 30000,
  saveSeedDir: saveSeedDir || undefined,
  skipSeedConfirmation: true,
});

function snapshot(observation) {
  return {
    frame: observation?.frame ?? null,
    state: observation?.state ?? null,
    managerMode: observation?.game?.managerMode ?? null,
    gamePointer: observation?.game?.pointer ?? null,
    selectedCharacter: observation?.game?.selectedCharacter ?? null,
    runMode: observation?.game?.runMode ?? null,
    selectedDifficulty: observation?.game?.selectedDifficulty ?? null,
    menu: observation?.game?.menu ?? null,
    room: observation?.room
      ? {
          width: observation.room.width,
          height: observation.room.height,
          index: observation.game?.roomIndex,
        }
      : null,
    stage: observation?.game?.stage ?? null,
    stageType: observation?.game?.stageType ?? null,
    difficulty: observation?.game?.difficulty ?? null,
  };
}

const report = {
  native: true,
  scope: 'original menu input and run-mode selection probe',
  seed: '7W3L P1Z9',
  saveSeedDir: saveSeedDir || null,
  hold,
  gap,
  enterCount,
  timeline: [],
};

try {
  let observation = await env.reset({
    seed: '7W3L P1Z9',
    stage: 1,
    room: 'none',
    targetNPC: { type: 406, variant: 1, subtype: 0 },
    saveSeedDir: saveSeedDir || undefined,
    drive: 'none',
    contextMode: true,
    contextNonReady: true,
    contextActivateFrame: activateFrame,
    contextWaitFrames: 1,
    skipSeedConfirmation: true,
    setupTrace: false,
    maxSteps: 3000,
  });
  report.timeline.push({ action: 'initial', ...snapshot(observation) });

  async function advance(frames) {
    for (let i = 0; i < frames; i++) {
      observation = await env.step({ moveX: 0, moveY: 0, fire: 'none' });
    }
    report.timeline.push({ action: `advance ${frames}`, ...snapshot(observation) });
  }

  async function tap(name) {
    observation = await env.key(name, true);
    for (let i = 1; i < hold; i++) {
      observation = await env.step({ moveX: 0, moveY: 0, fire: 'none' });
    }
    observation = await env.key(name, false);
    report.timeline.push({ action: `tap ${name}`, ...snapshot(observation) });
    if (gap) await advance(gap);
  }

  for (let i = 0; i < enterCount; i++) await tap('enter');
} catch (error) {
  report.error = error.stack ?? error.message;
  process.exitCode = 1;
} finally {
  report.runDirectory = env.runDirectory ?? null;
  if (env.runDirectory) {
    try {
      report.engineLogTail = readFileSync(join(env.runDirectory, 'engine.log'), 'utf8')
        .split(/\r?\n/)
        .filter(line => /Menu|Level::Init|RoomConfig|run started/.test(line))
        .slice(-100);
    } catch {
      report.engineLogTail = [];
    }
  }
  writeFileSync(new URL(`../${output}`, import.meta.url), `${JSON.stringify(report, null, 2)}\n`);
  console.log(JSON.stringify({
    output,
    error: report.error ?? null,
    runDirectory: report.runDirectory,
    final: report.timeline.at(-1) ?? null,
  }));
  await env.close();
}
