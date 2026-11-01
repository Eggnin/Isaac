import { readFileSync, writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';

const source = JSON.parse(readFileSync(new URL('../training-results/parameter-search.json', import.meta.url)));
const workers = Math.max(1, Number(process.argv[2] ?? 2));
const validationSeed = '7W3L P1Z9';
const results = [];
let next = 0;
const started = performance.now();
await Promise.all(Array.from({length: workers}, async () => {
  const env = new EngineEnvironment({seed: validationSeed, maxSteps: 1800});
  try {
    while (next < source.results.length) {
      const candidate = source.results[next++];
      await env.reset();
      const result = await env.rollout({steps: 1800, parameters: candidate.parameters});
      const summary = {...result.summary}; delete summary.lastDecision;
      const row = {name: candidate.name, parameters: candidate.parameters,
        train: {cleared: candidate.cleared, damageTaken: candidate.damageTaken, frames: candidate.frames},
        validation: {...summary, runDirectory: env.runDirectory}};
      row.allCleared = row.train.cleared && row.validation.cleared;
      row.totalDamage = row.train.damageTaken + row.validation.damageTaken;
      row.totalFrames = row.train.frames + row.validation.frames;
      results.push(row);
      console.log(JSON.stringify(row));
    }
  } finally { await env.close(); }
}));
results.sort((a,b) => Number(b.allCleared)-Number(a.allCleared) || a.totalDamage-b.totalDamage || a.totalFrames-b.totalFrames);
const selected = results[0];
const env = new EngineEnvironment({seed: 'SWGF G7WV', maxSteps: 1800});
let heldout;
try {
  await env.reset();
  const result = await env.rollout({steps: 1800, parameters: selected.parameters});
  const summary = {...result.summary}; delete summary.lastDecision;
  heldout = {seed: 'SWGF G7WV', ...summary, runDirectory: env.runDirectory};
} finally { await env.close(); }
const report = {native: true, trainSeed: source.trainSeed, validationSeed, workers,
  wallMs: performance.now()-started, results, selected, heldout};
writeFileSync(new URL('../training-results/parameter-validation.json', import.meta.url), JSON.stringify(report,null,2));
// Research preset only. Deployment parameters are unchanged.
writeFileSync(new URL('../training-results/validated-parameters.json', import.meta.url), JSON.stringify(selected.parameters,null,2));
console.log(JSON.stringify({selected: selected.name, selectedDamage: selected.totalDamage,
  heldoutCleared: heldout.cleared, heldoutDamage: heldout.damageTaken, wallMs: report.wallMs}));
