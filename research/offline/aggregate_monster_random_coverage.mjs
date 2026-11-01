import { readFileSync, writeFileSync } from 'node:fs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

const baseName = option('base', 'monster-random-coverage-full.json');
const repairNames = option('repairs', 'monster-random-death-scythe.json')
  .split(',')
  .map(value => value.trim())
  .filter(Boolean);
const output = option('output', 'monster-random-coverage-final.json');
const base = JSON.parse(readFileSync(new URL(`../${baseName}`, import.meta.url), 'utf8'));
const rows = new Map(base.results.map(row => [`${row.id}|${row.trial ?? 0}`, row]));
const repairs = [];

for (const repairName of repairNames) {
  const repair = JSON.parse(readFileSync(new URL(`../${repairName}`, import.meta.url), 'utf8'));
  const replaced = [];
  for (const row of repair.results) {
    if (row.dataPass !== true) continue;
    const key = `${row.id}|${row.trial ?? 0}`;
    if (!rows.has(key)) throw new Error(`repair row is not present in base report: ${key}`);
    rows.set(key, row);
    replaced.push(row.id);
  }
  repairs.push({ file: repairName, replaced });
}

const results = [...rows.values()].sort((a, b) => a.index - b.index || (a.trial ?? 0) - (b.trial ?? 0));
const outcomes = {};
for (const row of results) outcomes[row.outcome] = (outcomes[row.outcome] ?? 0) + 1;
const summary = {
  pageRows: base.summary.pageRows,
  excludedBossRows: base.summary.excludedBossRows,
  eligibleRows: base.summary.eligibleRows,
  selectedEntries: base.summary.selectedEntries,
  requestedRuns: base.summary.requestedRuns,
  runs: results.length,
  dataPassed: results.filter(row => row.dataPass).length,
  loadedTargets: results.filter(row => row.exactObserved || row.normalizedObserved).length,
  exactTargets: results.filter(row => row.exactObserved).length,
  normalizedTargets: results.filter(row => row.normalizedObserved).length,
  cleared: results.filter(row => row.cleared === true).length,
  zeroHitClears: results.filter(row => row.cleared === true && row.hitCount === 0).length,
  clearedWithHits: results.filter(row => row.cleared === true && row.hitCount > 0).length,
  hitRuns: results.filter(row => (row.hitCount ?? 0) > 0).length,
  totalHits: results.reduce((sum, row) => sum + (row.hitCount ?? 0), 0),
  timeouts: results.filter(row => row.truncated === true).length,
  technicalErrors: results.filter(row => row.outcome === 'technical-error').length,
  retriedRuns: results.filter(row => (row.attemptedRooms?.length ?? 0) > 1).length,
  outcomes,
};
const report = {
  ...base,
  sourceReports: [baseName, ...repairNames],
  repairs,
  summary,
  results,
};
writeFileSync(new URL(`../${output}`, import.meta.url), `${JSON.stringify(report, null, 2)}\n`);
console.log(JSON.stringify({ output, repairs, summary }, null, 2));
if (summary.dataPassed !== summary.runs) process.exitCode = 1;
