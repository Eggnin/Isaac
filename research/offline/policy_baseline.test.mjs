import assert from 'node:assert/strict';
import { createHash } from 'node:crypto';
import { readFileSync, statSync } from 'node:fs';
import { join } from 'node:path';
import { fileURLToPath } from 'node:url';
import test from 'node:test';

const project = fileURLToPath(new URL('../../', import.meta.url));
const baselineV2 = join(project, 'research', 'policy-baselines', 'policy-20261028-v2');
const baselineV3 = join(project, 'research', 'policy-baselines', 'policy-20261028-v3');
const baselineV4 = join(project, 'research', 'policy-baselines', 'policy-20261029-v4');
const baselineV5 = join(project, 'research', 'policy-baselines', 'policy-20261029-v5');
const baselineV6 = join(project, 'research', 'policy-baselines', 'policy-20261029-v6');
const manifestV2 = JSON.parse(readFileSync(join(baselineV2, 'manifest.json'), 'utf8'));
const manifestV3 = JSON.parse(readFileSync(join(baselineV3, 'manifest.json'), 'utf8'));
const manifestV4 = JSON.parse(readFileSync(join(baselineV4, 'manifest.json'), 'utf8'));
const manifestV5 = JSON.parse(readFileSync(join(baselineV5, 'manifest.json'), 'utf8'));
const manifestV6 = JSON.parse(readFileSync(join(baselineV6, 'manifest.json'), 'utf8'));

function hashFile(path) {
  return createHash('sha256').update(readFileSync(path)).digest('hex').toUpperCase();
}

function assertSnapshot(manifest, baseline) {
  for (const file of [...manifest.sources, ...manifest.artifacts]) {
    const snapshot = join(baseline, 'snapshot', file.path);
    assert.equal(statSync(snapshot).size, file.bytes, file.path);
    assert.equal(hashFile(snapshot), file.sha256, file.path);
  }
  const combined = createHash('sha256')
    .update([...manifest.sources, ...manifest.artifacts]
      .map(file => `${file.path}\0${file.sha256}`)
      .sort()
      .join('\n'))
    .digest('hex')
    .toUpperCase();
  assert.equal(manifest.combinedHash, combined);
}

test('policy v2 manifest matches its frozen source and build artifacts', () => {
  assertSnapshot(manifestV2, baselineV2);
});

test('policy v3 manifest matches its frozen source and build artifacts', () => {
  assertSnapshot(manifestV3, baselineV3);
});

test('policy v4 snapshot remains immutable', () => {
  assertSnapshot(manifestV4, baselineV4);
});

test('policy v5 snapshot remains immutable', () => {
  assertSnapshot(manifestV5, baselineV5);
});

test('policy v6 manifest matches current hysteresis source and build artifacts', () => {
  assertSnapshot(manifestV6, baselineV6);
  for (const file of [...manifestV6.sources, ...manifestV6.artifacts]) {
    const absolute = join(project, file.path);
    assert.equal(statSync(absolute).size, file.bytes, file.path);
    assert.equal(hashFile(absolute), file.sha256, file.path);
  }
  assert.equal(manifestV6.effectiveParameters.native_player_motion, true);
  assert.equal(manifestV6.effectiveParameters.native_projectile_motion, true);
  assert.equal(manifestV6.effectiveParameters.native_laser_geometry, true);
  assert.equal(manifestV6.effectiveParameters.action_hold_frames, 2);
  assert.equal(manifestV6.effectiveParameters.navigation_waypoint_hold, true);
});

test('policy v6 action hysteresis clears three Monstro seeds without damage', () => {
  assert.equal(manifestV6.reports.length, 3);
  for (const entry of manifestV6.reports) {
    const report = JSON.parse(readFileSync(join(project, 'research', entry.path), 'utf8'));
    assert.equal(report.pass, true, entry.path);
    assert.equal(report.cleared, true, entry.path);
    assert.equal(report.damageTaken, 0, entry.path);
    assert.equal(report.dead, false, entry.path);
  }
});

test('policy v2 reports are complete and belong to the declared baseline', () => {
  assert.equal(manifestV2.id, 'policy-20261028-v2');
  assert.equal(manifestV2.reports.length, 7);
  for (const report of manifestV2.reports) {
    const data = JSON.parse(readFileSync(join(project, 'research', report.path), 'utf8'));
    assert.equal(data.summary.dataPassed, data.summary.runs, report.path);
  }
  const mixed = manifestV2.reports.filter(report => report.path.includes('mixed-'));
  for (const report of mixed) {
    const data = JSON.parse(readFileSync(join(project, 'research', report.path), 'utf8'));
    assert.equal(data.summary.normalDeaths, 0, report.path);
  }
  const boss = JSON.parse(readFileSync(
    join(project, 'research', manifestV2.reports.find(report => report.path.includes('boss-baseline')).path),
    'utf8',
  ));
  assert.equal(boss.summary.dead, 0);
});

test('policy v2 later Eye and Cross Stoney runs clear in both seeds', () => {
  for (const report of manifestV2.reports.filter(report =>
    report.path.includes('eye-seed') || report.path.includes('cross-stoney-seed')
  )) {
    const data = JSON.parse(readFileSync(join(project, 'research', report.path), 'utf8'));
    assert.equal(data.summary.cleared, 1, report.path);
    assert.equal(data.summary.timeouts, 0, report.path);
    assert.equal(data.summary.technicalErrors, 0, report.path);
  }
});

test('policy v3 reports are complete and retain the known Cage limit', () => {
  assert.equal(manifestV3.id, 'policy-20261028-v3');
  assert.equal(manifestV3.reports.length, 2);
  for (const report of manifestV3.reports) {
    const data = JSON.parse(readFileSync(join(project, 'research', report.path), 'utf8'));
    assert.equal(data.summary.dataPassed, data.summary.runs, report.path);
  }
  const mixed = JSON.parse(readFileSync(
    join(project, 'research', manifestV3.reports.find(report => report.path.includes('mixed-v3')).path),
    'utf8',
  ));
  assert.equal(mixed.summary.normalRuns, 14);
  assert.equal(mixed.summary.normalDeaths, 0);
  assert.equal(mixed.summary.normalDamaged, 6);
});

test('policy v4 Greed run never presses the active pressure plate', () => {
  const report = manifestV4.reports.find(entry =>
    entry.path.includes('greedier-floor1-switch-guard-realhealth')
  );
  const data = JSON.parse(readFileSync(join(project, 'research', report.path), 'utf8'));
  assert.ok(data.summary.waveAssistFrames > 0);
  assert.ok(data.summary.greedButtonEscapeFrames > 0);
  for (const event of data.summary.damageEvents) {
    const buttonStates = [...(event.beforeHazards ?? []), ...(event.hazards ?? [])]
      .filter(hazard => hazard.type === 20)
      .map(hazard => hazard.state);
    assert.ok(buttonStates.every(state => state === 0),
      `frame ${event.frame} pressed the active Greed pressure plate`);
  }
});
