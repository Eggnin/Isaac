import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import test from 'node:test';

const research = new URL('../', import.meta.url);
const report = JSON.parse(readFileSync(new URL('monster-random-coverage-final.json', research), 'utf8'));
const page = JSON.parse(readFileSync(new URL('monster-page.json', research), 'utf8'));

test('final monster coverage includes every eligible identity exactly once', () => {
  const eligible = page.entries
    .filter(entry => !entry.excludedAsBoss)
    .map(entry => entry.id)
    .sort();
  const actual = report.results.map(row => row.id).sort();
  assert.equal(report.summary.runs, 365);
  assert.deepEqual(actual, eligible);
  assert.equal(new Set(actual).size, 365);
});

test('final monster coverage has complete target and hit evidence', () => {
  assert.equal(report.summary.dataPassed, 365);
  assert.equal(report.summary.loadedTargets, 365);
  assert.equal(report.summary.exactTargets, 365);
  assert.equal(report.summary.normalizedTargets, 0);
  assert.equal(report.summary.technicalErrors, 0);
  assert.ok(report.results.every(row =>
    row.dataPass === true &&
    row.exactObserved === true &&
    row.runDirectory &&
    row.hitEvents.every(event =>
      event.lastDecision &&
      event.player &&
      Array.isArray(event.hazards) &&
      Array.isArray(event.beforeHazards)
    )
  ));
});

test('final monster coverage totals equal the retained rows', () => {
  const hitTotal = report.results.reduce((sum, row) => sum + (row.hitCount ?? 0), 0);
  const cleared = report.results.filter(row => row.cleared === true).length;
  const zeroHitClears = report.results.filter(row =>
    row.cleared === true && row.hitCount === 0
  ).length;
  assert.equal(report.summary.totalHits, hitTotal);
  assert.equal(report.summary.cleared, cleared);
  assert.equal(report.summary.zeroHitClears, zeroHitClears);
  assert.equal(report.summary.cleared + report.summary.timeouts, 365);
});
