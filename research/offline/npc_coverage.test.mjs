import test from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import { NPC_CONFIGS } from './npc_catalog.mjs';

const report = JSON.parse(readFileSync(new URL('../npc-coverage-final.json', import.meta.url), 'utf8'));
const catalogKeys = new Set(NPC_CONFIGS.map(entry => entry.key));

test('final NPC matrix contains every catalog identity exactly once', () => {
  assert.equal(report.entries.length, 653);
  assert.equal(new Set(report.entries.map(entry => entry.key)).size, 653);
  assert.deepEqual(new Set(report.entries.map(entry => entry.key)), catalogKeys);
});

test('both original room shapes account for all 653 identities', () => {
  for (const roomName of ['narrow', 'long']) {
    const statuses = report.entries.map(entry => entry.rooms[roomName]?.status);
    assert.equal(statuses.filter(Boolean).length, 653);
    assert.deepEqual(
      [...new Set(statuses)].sort(),
      ['exact-direct', 'normalized-direct', 'parent-derived'],
    );
    const notEmitted = report.entries.filter(entry => entry.rooms[roomName].status === 'not-emitted');
    assert.deepEqual(notEmitted, []);
    assert.equal(report.summary[roomName].emitted, 653);
  }
});

test('emitted entries retain direct or parent run evidence', () => {
  for (const entry of report.entries) {
    for (const [roomName, result] of Object.entries(entry.rooms)) {
      if (result.status === 'not-emitted') continue;
      assert.ok(result.evidence, `${entry.key} ${roomName} is missing evidence`);
      if (result.status.startsWith('exact-') || result.status.startsWith('normalized-')) {
        assert.equal(result.evidence.source, 'direct');
        assert.match(result.evidence.runDirectory, /training-runs/);
      } else {
        assert.equal(result.evidence.source, 'parent');
        assert.equal(result.evidence.childObserved, true);
        assert.match(result.evidence.runDirectory, /training-runs/);
      }
    }
  }
});
