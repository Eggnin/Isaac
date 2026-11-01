import { createHash } from 'node:crypto';
import { writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';

const env = new EngineEnvironment();
const report = { native: true, steps: [], freeze: null };
const digest = value => createHash('sha256').update(JSON.stringify(value)).digest('hex');
try {
  let observation = await env.reset();
  report.runDirectory = env.runDirectory;
  report.initialFrame = observation.frame;
  const first = await env.peek();
  await new Promise(resolve => setTimeout(resolve, 150));
  const second = await env.peek();
  report.freeze = { firstFrame: first.frame, secondFrame: second.frame, identical: digest(first) === digest(second) };
  if (!report.freeze.identical) throw new Error('state advanced while awaiting an action');
  for (let i = 0; i < 60; i++) {
    const before = observation.frame;
    const result = await env.step({ move: i < 20 ? 'right' : i < 40 ? 'left' : 'none', fire: 'down' });
    observation = result.observation;
    report.steps.push({ before, after: observation.frame, state: observation.state, health: observation.player?.health,
      position: observation.player?.position, tears: observation.entities.filter(e => e.type === 2).length });
    if (observation.frame !== before + 1) throw new Error('step did not advance exactly one logic frame');
    if (result.terminated || result.truncated) break;
  }
  report.pass = report.steps.length > 0 && report.steps.every(s => s.after === s.before + 1) && report.freeze.identical;
  writeFileSync(new URL('../native-step-check.json', import.meta.url), JSON.stringify(report, null, 2));
  console.log(JSON.stringify({ pass: report.pass, runDirectory: env.runDirectory, freeze: report.freeze, steps: report.steps.length }));
} finally { await env.close(); }
