import { writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';

const calibration = JSON.parse(
  await import('node:fs').then(({ readFileSync }) =>
    readFileSync(new URL('../invulnerability-calibration.json', import.meta.url), 'utf8')
  )
);

const fires = ['up', 'right', 'down', 'left'];
const moves = [
  { name: 'stay', moveX: 0, moveY: 0 },
  { name: 'north', moveX: 0, moveY: -1 },
  { name: 'northeast', moveX: 1, moveY: -1 },
  { name: 'east', moveX: 1, moveY: 0 },
  { name: 'southeast', moveX: 1, moveY: 1 },
  { name: 'south', moveX: 0, moveY: 1 },
  { name: 'southwest', moveX: -1, moveY: 1 },
  { name: 'west', moveX: -1, moveY: 0 },
  { name: 'northwest', moveX: -1, moveY: -1 },
];
const framesPerCombination = 20;
const pulseFrame = 6;
const combinations = fires.flatMap(fire => moves.map(move => ({ fire, ...move })));
const env = new EngineEnvironment({ maxSteps: combinations.length * framesPerCombination });
const samples = [];
try {
  await env.reset({
    seed: '7W3L P1Z9',
    room: 's.boss.5060',
    targetNPC: { type: 265, variant: 0, subtype: 0 },
    debugFlags: [3],
    damageCalibration: calibration.calibration,
    postSpawnWaitFrames: 180,
    setupMaxFrames: 2400,
    maxSteps: combinations.length * framesPerCombination,
  });
  let priorAddresses = new Set();
  let absoluteFrame = 0;
  for (const combination of combinations) {
    for (let localFrame = 0; localFrame < framesPerCombination; localFrame++) {
      const pulse = localFrame === pulseFrame;
      const action = {
        moveX: combination.moveX,
        moveY: combination.moveY,
        fire: pulse ? combination.fire : 'none',
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
      priorAddresses = new Set(tears.map(tear => tear.address));
      if (pulse || created.length) {
        samples.push({
          frame: absoluteFrame,
          combination,
          pulse,
          player: observation.player,
          created,
          tears,
        });
      }
      absoluteFrame++;
    }
  }
  const output = new URL('../tear-velocity-probe.json', import.meta.url);
  writeFileSync(output, `${JSON.stringify({ samples }, null, 2)}\n`);
  console.log(JSON.stringify({
    output: output.pathname,
    samples: samples.length,
    created: samples.reduce((sum, sample) => sum + sample.created.length, 0),
  }));
} finally {
  await env.close();
}
