import test from 'node:test';
import assert from 'node:assert/strict';
import { NPC_CONFIGS } from './npc_catalog.mjs';
import { NPC_PARENT_CASES } from './npc_parent_cases.mjs';

test('parent cases cover only exact catalog identities', () => {
  const keys = new Set(NPC_CONFIGS.map(entry => entry.key));
  assert.equal(new Set(NPC_PARENT_CASES.map(testCase => testCase.target)).size, NPC_PARENT_CASES.length);
  for (const testCase of NPC_PARENT_CASES) {
    assert.ok(keys.has(testCase.target), `unknown target ${testCase.target}`);
    assert.ok(testCase.parents.length > 0);
    for (const parent of testCase.parents) {
      const key = typeof parent === 'string' ? parent : parent.key;
      assert.ok(keys.has(key), `unknown parent ${key}`);
    }
  }
});

test('special NPC parents use the verified original-engine source', () => {
  const byTarget = new Map(NPC_PARENT_CASES.map(testCase => [testCase.target, testCase]));
  assert.deepEqual(byTarget.get('819.1.0').parents, ['920.0.0']);
  const eternalFlyParents = byTarget.get('96.0.0').parents;
  assert.ok(eternalFlyParents.every(parent => parent.champion === 17 || parent.champion === 25));
});
