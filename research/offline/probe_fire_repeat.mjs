import { writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';

const calibration = JSON.parse(
  await import('node:fs').then(({ readFileSync }) =>
    readFileSync(new URL('../invulnerability-calibration.json', import.meta.url), 'utf8')
  )
);

const periods = [8, 10, 12, 14, 16, 18, 20];
const framesPerPeriod = 120;
const warmupFrames = 20;
const env = new EngineEnvironment({ maxSteps: warmupFrames + periods.length * framesPerPeriod });
const frames = [];
try {
  await env.reset({
    seed: '7W3L P1Z9',
    room: 's.boss.5060',
    targetNPC: { type: 265, variant: 0, subtype: 0 },
    debugFlags: [3],
    damageCalibration: calibration.calibration,
    postSpawnWaitFrames: 180,
    setupMaxFrames: 2400,
    maxSteps: warmupFrames + periods.length * framesPerPeriod,
  });
  const priorAddresses = new Set();
  for (let frame = 0; frame < warmupFrames + periods.length * framesPerPeriod; frame++) {
    const segmentFrame = frame - warmupFrames;
    const period = segmentFrame < 0
      ? null
      : periods[Math.floor(segmentFrame / framesPerPeriod)];
    const localFrame = segmentFrame < 0 ? 0 : segmentFrame % framesPerPeriod;
    const action = {
      moveX: 0,
      moveY: 0,
      fire: period !== null && localFrame % period === 0 ? 'down' : 'none',
    };
    const result = await env.step(action);
    const observation = result.observation;
    const tears = observation.entities
      .filter(entity => entity.type === 2 && entity.dead !== true)
      .map(entity => ({
        address: entity.address,
        position: entity.position,
        velocity: entity.velocity,
        birth: entity.birth,
      }));
    const created = tears.filter(tear => !priorAddresses.has(tear.address));
    priorAddresses.clear();
    for (const tear of tears) priorAddresses.add(tear.address);
    frames.push({
      frame,
      period,
      localFrame,
      action,
      player: observation.player,
      tears,
      created,
    });
  }
  writeFileSync(
    new URL('../fire-repeat-probe.json', import.meta.url),
    `${JSON.stringify({ frames }, null, 2)}\n`
  );
  console.log(JSON.stringify({
    periods: Object.fromEntries(periods.map(period => [
      period,
      frames.filter(frame => frame.period === period)
        .reduce((sum, frame) => sum + frame.created.length, 0),
    ])),
  }));
} finally {
  await env.close();
}
