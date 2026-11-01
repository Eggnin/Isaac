import { createHash } from 'node:crypto';
import { execFileSync } from 'node:child_process';
import {
  copyFileSync,
  mkdirSync,
  readFileSync,
  statSync,
  writeFileSync,
} from 'node:fs';
import { dirname, join, relative } from 'node:path';
import { fileURLToPath } from 'node:url';
import { createCorePolicy } from './core_policy.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

const project = fileURLToPath(new URL('../../', import.meta.url));
const id = option('id', 'policy-baseline');
const reports = option('reports', '')
  .split(',')
  .map(value => value.trim())
  .filter(Boolean);
const outputRoot = join(project, 'research', 'policy-baselines', id);
const snapshotRoot = join(outputRoot, 'snapshot');
mkdirSync(snapshotRoot, { recursive: true });

const sourceFiles = [
  'cpp/include/gamebot/model.hpp',
  'cpp/include/gamebot/planner.hpp',
  'cpp/src/model.cpp',
  'cpp/src/planner.cpp',
  'cpp/src/weapons.cpp',
  'cpp/tests/core_tests.cpp',
  'research/build_planner_policy.py',
  'research/offline/core_policy.mjs',
  'research/offline/planner_bridge.cpp',
  'research/offline/planner_frame.mjs',
];
const artifactFiles = [
  'bin/IsaacGamebot.exe',
  'research/offline/planner_policy.mjs',
  'research/offline/planner_policy.wasm',
];

function hashFile(path) {
  return createHash('sha256').update(readFileSync(path)).digest('hex').toUpperCase();
}

function recordFile(path) {
  const absolute = join(project, path);
  return {
    path,
    bytes: statSync(absolute).size,
    sha256: hashFile(absolute),
  };
}

function copyIntoSnapshot(path) {
  const source = join(project, path);
  const destination = join(snapshotRoot, path);
  mkdirSync(dirname(destination), { recursive: true });
  copyFileSync(source, destination);
}

for (const path of [...sourceFiles, ...artifactFiles]) copyIntoSnapshot(path);

const policy = await createCorePolicy();
const configured = policy.configure({});
const sources = sourceFiles.map(recordFile);
const artifacts = artifactFiles.map(recordFile);
const combinedHash = createHash('sha256')
  .update([...sources, ...artifacts]
    .map(file => `${file.path}\0${file.sha256}`)
    .sort()
    .join('\n'))
  .digest('hex')
  .toUpperCase();

const reportRecords = reports.map(path => {
  const absolute = join(project, 'research', path);
  const report = JSON.parse(readFileSync(absolute, 'utf8'));
  return {
    path,
    sha256: hashFile(absolute),
    parameters: report.parameters ?? null,
    summary: report.summary ?? null,
  };
});
const emVersion = execFileSync(
  join(project, 'research/emsdk/upstream/emscripten/em++.exe'),
  ['--version'],
  { encoding: 'utf8' },
).split(/\r?\n/)[0];

const manifest = {
  schemaVersion: 1,
  id,
  capturedAt: new Date().toISOString(),
  project,
  combinedHash,
  effectiveParameters: configured.parameters,
  classification: {
    formalGamebot: [
      'cpp/include/gamebot/model.hpp',
      'cpp/include/gamebot/planner.hpp',
      'cpp/src/model.cpp',
      'cpp/src/planner.cpp',
      'cpp/src/weapons.cpp',
      'bin/IsaacGamebot.exe',
    ],
    offlinePolicyBuild: [
      'research/offline/planner_bridge.cpp',
      'research/offline/planner_frame.mjs',
      'research/offline/core_policy.mjs',
      'research/offline/planner_policy.mjs',
      'research/offline/planner_policy.wasm',
    ],
    researchOnly: [
      'research/offline/check_mixed_failures.mjs',
      'research/offline/check_monster_random_coverage.mjs',
      'research/offline/capture_policy_baseline.mjs',
    ],
  },
  sources,
  artifacts,
  reports: reportRecords,
  tools: {
    node: process.version,
    python: execFileSync('python', ['--version'], { encoding: 'utf8' }).trim(),
    emscripten: emVersion,
  },
  snapshot: relative(outputRoot, snapshotRoot),
};

writeFileSync(join(outputRoot, 'manifest.json'), `${JSON.stringify(manifest, null, 2)}\n`);
console.log(JSON.stringify({
  id,
  combinedHash,
  output: join(outputRoot, 'manifest.json'),
  parameters: configured.parameters,
  reports: reportRecords.map(report => report.path),
}, null, 2));
