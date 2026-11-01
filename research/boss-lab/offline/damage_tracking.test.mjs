import test from 'node:test';
import assert from 'node:assert/strict';
import { HIT_COOLDOWN_RESET_FRAMES, isCooldownHit } from './damage_tracking.mjs';

test('damage cooldown reset recognizes invulnerable hits', () => {
  assert.equal(HIT_COOLDOWN_RESET_FRAMES, 60);
  assert.equal(isCooldownHit(0, 60), true);
  assert.equal(isCooldownHit(2, 60), true);
  assert.equal(isCooldownHit(30, 60), true);
});

test('normal cooldown decay is not a new hit', () => {
  assert.equal(isCooldownHit(60, 58), false);
  assert.equal(isCooldownHit(4, 2), false);
  assert.equal(isCooldownHit(0, 2), false);
  assert.equal(isCooldownHit(null, 60), false);
});

test('calibrated reset bounds replace the default constants', () => {
  const calibration = { minCooldown: 40, minIncrease: 5 };
  assert.equal(isCooldownHit(10, 40, calibration), true);
  assert.equal(isCooldownHit(36, 40, calibration), false);
});
