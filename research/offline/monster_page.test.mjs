import test from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';

const report = JSON.parse(readFileSync(new URL('../monster-page.json', import.meta.url), 'utf8'));

test('Fandom Monster List snapshot is complete and unique', () => {
  assert.equal(report.rowCount, 367);
  assert.equal(report.entries.length, 367);
  assert.equal(new Set(report.entries.map(entry => entry.id)).size, 367);
  assert.equal(new Set(report.entries.map(entry => entry.name)).size, 367);
  assert.equal(report.declaredNaturalCount, 336);
});

test('boss rows are excluded and champions are not separate entries', () => {
  const bosses = report.entries.filter(entry => entry.excludedAsBoss);
  assert.deepEqual(bosses.map(entry => entry.id), ['260.0.0', '68.1.0']);
  assert.equal(report.eligibleRows, 365);
  assert.equal(report.entries.some(entry => /champion/i.test(entry.name)), false);
});
