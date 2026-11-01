import assert from 'node:assert/strict';
import test from 'node:test';
import {
  aggregateReports,
  classifyFailure,
  hazardFamilies,
  hazardFamily,
} from './analyze_failure_priority.mjs';

test('hazard families retain contact subtype and projectile explosion', () => {
  assert.equal(hazardFamily({
    kinds: ['contact'], type: 265, state: 8, animation: 'RollLoop',
  }), 'roll');
  assert.equal(hazardFamily({
    kinds: ['contact'], type: 99, state: 8, animation: 'Slide',
  }), 'charge');
  assert.equal(hazardFamily({
    kinds: ['projectile'], projectile_flags: '0000000000000002',
  }), 'explosive-projectile');
  assert.deepEqual(hazardFamilies({
    hazards: [{ kinds: ['contact'], type: 10, animation: 'Walk' }],
    lastDecision: { threat_kinds: ['contact'] },
  }), ['contact']);
});

test('failure classification separates misses, optimistic safety, and no safe route', () => {
  const hazards = [{ kinds: ['projectile'] }];
  assert.equal(classifyFailure({
    amount: 1,
    hazards,
    lastDecision: { valid: true, safe: true, threat_kinds: ['projectile'] },
  }), 'optimistic-safe');
  assert.equal(classifyFailure({
    amount: 1,
    hazards,
    lastDecision: { valid: true, safe: true, threat_kinds: ['contact'] },
  }), 'missing-prediction:projectile');
  assert.equal(classifyFailure({
    amount: 1,
    hazards,
    lastDecision: { valid: true, safe: false, threat_kinds: ['projectile'] },
  }), 'no-predicted-zero-risk-route');
  assert.equal(classifyFailure({
    amount: 1,
    hazards,
    lastDecision: {
      valid: true,
      safe: false,
      threat_kinds: ['projectile'],
      analysis: { valid_final: 48, zero_hit_final: 0, pruned_zero_hit: 0 },
    },
  }), 'no-zero-risk-route-in-search');
  assert.equal(classifyFailure({
    amount: 1,
    hazards,
    lastDecision: {
      valid: true,
      safe: false,
      threat_kinds: ['projectile'],
      analysis: { valid_final: 48, zero_hit_final: 0, pruned_zero_hit: 3 },
    },
  }), 'beam-pruned-safe-route');
  assert.equal(classifyFailure({
    amount: 1,
    hazards,
    lastDecision: { valid: true, safe: false, threat_kinds: ['contact'] },
  }), 'missing-prediction:projectile');
});

test('aggregation ranks health damage above calibrated zero-damage hits', () => {
  const reports = [{
    label: 'fixture.json',
    path: 'fixture.json',
    sha256: '00',
    results: [{
      scenario: 'fixture',
      seed: 'seed',
      hitEvents: [
        {
          frame: 10,
          amount: 0,
          healthDamage: 0,
          hazards: [{ kinds: ['contact'], type: 10, animation: 'Walk' }],
          lastDecision: { valid: true, safe: false, threat_kinds: ['contact'] },
        },
        {
          frame: 20,
          amount: 2,
          healthDamage: 2,
          hazards: [{ kinds: ['projectile'], projectile_flags: '0000000000000002' }],
          lastDecision: { valid: true, safe: true, threat_kinds: ['projectile'] },
        },
      ],
    }],
  }];
  const report = aggregateReports(reports);
  assert.equal(report.totals.hitEvents, 2);
  assert.equal(report.totals.damagingEvents, 1);
  assert.equal(report.totals.healthDamage, 2);
  assert.equal(report.attackFamilies[0].family, 'explosive-projectile');
  assert.equal(report.attackFamilies[0].damagingEvents, 1);
  assert.equal(report.reasons['optimistic-safe'], 1);
});
