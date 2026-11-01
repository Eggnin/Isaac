import test from 'node:test';
import assert from 'node:assert/strict';
import { ENEMY_SCENARIOS } from './enemy_suite.mjs';

test('enemy suite covers the named combat mechanics without duplicate rooms', () => {
  assert.ok(ENEMY_SCENARIOS.length >= 10);
  assert.equal(new Set(ENEMY_SCENARIOS.map(scenario => scenario.name)).size, ENEMY_SCENARIOS.length);
  assert.equal(new Set(ENEMY_SCENARIOS.map(scenario => scenario.room)).size, ENEMY_SCENARIOS.length);
  const mechanics = new Set(ENEMY_SCENARIOS.flatMap(scenario => scenario.mechanics));
  for (const required of [
    'contact', 'charge', 'laser', 'jump-landing', 'explosive-split', 'summon', 'projectile',
  ]) {
    assert.ok(mechanics.has(required), `missing mechanic ${required}`);
  }
});

test('enemy suite entries identify real room and target pairs', () => {
  for (const scenario of ENEMY_SCENARIOS) {
    assert.match(scenario.room, /^s\.boss\.\d+$/);
    assert.ok(Number.isInteger(scenario.targetNPC) && scenario.targetNPC >= 10);
    assert.ok(scenario.mechanics.length > 0);
  }
});
