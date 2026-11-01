import assert from 'node:assert/strict';
import test from 'node:test';
import { MIXED_FAILURE_SCENARIOS } from './mixed_failure_scenarios.mjs';

test('mixed failure scenarios have unique names and resolved targets', () => {
  assert.equal(new Set(MIXED_FAILURE_SCENARIOS.map(scenario => scenario.name)).size,
    MIXED_FAILURE_SCENARIOS.length);
  for (const scenario of MIXED_FAILURE_SCENARIOS) {
    assert.ok(scenario.width > 0 && scenario.height > 0);
    assert.equal(scenario.targets.length, scenario.targetKeys.length);
    assert.ok(scenario.targets.every(target => target && Number.isInteger(target.type)));
    assert.ok(scenario.targetKeys.every(key => scenario.targets.some(target => target.key === key)));
  }
});

test('mixed scenario spawn commands refer to declared target types', () => {
  for (const scenario of MIXED_FAILURE_SCENARIOS) {
    const declared = new Set(scenario.targets.map(target => target.type));
    for (const command of scenario.spawnCommands) {
      const match = /^spawn\s+(\d+)\./.exec(command);
      assert.ok(match, `${scenario.name}: invalid spawn command ${command}`);
      assert.ok(declared.has(Number(match[1])), `${scenario.name}: undeclared spawn ${command}`);
    }
  }
});
