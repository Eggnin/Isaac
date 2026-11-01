import { createHash } from 'node:crypto';
import { writeFileSync, openSync, writeSync, closeSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';

const excluded = new Set(['address', 'descriptor', 'managerPointer', 'parent', 'pointer']);
function canonical(value) {
  if (Array.isArray(value)) return value.map(canonical);
  if (!value || typeof value !== 'object') return value;
  return Object.fromEntries(Object.entries(value).filter(([key]) => !excluded.has(key)).map(([k, v]) => [k, canonical(v)]));
}
const hash = value => createHash('sha256').update(JSON.stringify(canonical(value))).digest('hex');
const env = new EngineEnvironment();
const reports = [];
try {
  for (let repeat = 0; repeat < 2; repeat++) {
    let observation = await env.reset();
    const report = { directory: env.runDirectory, hashes: [hash(observation)], projectileFrames: 0, steps: 0 };
    const fd = openSync(`${env.runDirectory}/determinism.jsonl`, 'w');
    try {
      writeSync(fd, JSON.stringify({ initial: observation }) + '\n');
      for (let i = 0; i < 180; i++) {
        const action = { moveX: i % 60 < 30 ? 1 : -1, fire: 'up' };
        const result = await env.step(action);
        observation = result.observation;
        report.hashes.push(hash(observation)); report.steps++;
        report.projectileFrames += observation.entities.some(e => e.type === 9 && e.dead === false);
        writeSync(fd, JSON.stringify({ action, ...result }) + '\n');
        if (result.terminated || result.truncated) break;
      }
    } finally { closeSync(fd); }
    reports.push(report);
  }
  const pass = reports[0].steps >= 60 && JSON.stringify(reports[0].hashes) === JSON.stringify(reports[1].hashes);
  const result = { native: true, pass, excluded: [...excluded], runs: reports };
  writeFileSync(new URL('../native-reset-check.json', import.meta.url), JSON.stringify(result, null, 2));
  console.log(JSON.stringify({ pass, steps: reports.map(r => r.steps), projectileFrames: reports.map(r => r.projectileFrames), directories: reports.map(r => r.directory) }));
  if (!pass) process.exitCode = 1;
} finally { await env.close(); }
