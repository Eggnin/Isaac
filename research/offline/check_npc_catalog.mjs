import { mkdirSync, writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';
import { NPC_CONFIGS, NPC_PROBE_ROOMS } from './npc_catalog.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

const roomNames = option('rooms', 'narrow,long').split(',').map(value => value.trim()).filter(Boolean);
const start = Math.max(0, Number(option('start', 0)));
const limit = Math.max(0, Number(option('limit', NPC_CONFIGS.length)));
const observeFrames = Math.max(1, Number(option('observe', 60)));
const output = option('output', 'npc-coverage.json');
const parameters = JSON.parse(option('parameters', '{}'));
const entries = NPC_CONFIGS.slice(start, start + limit);
const outputPath = new URL(`../${output}`, import.meta.url);

if (!entries.length) throw new Error('NPC probe selection is empty');
for (const name of roomNames) {
  if (!NPC_PROBE_ROOMS[name]) throw new Error(`unknown room probe ${name}`);
}

const report = {
  native: true,
  scope: 'one catalog identity per NPC configuration in original narrow and long combat rooms',
  caveat: 'debug 3 invulnerability is used for catalog identity/danger probes; damage and clear results do not count as no-damage combat evidence',
  catalogCount: NPC_CONFIGS.length,
  start,
  limit: entries.length,
  observeFrames,
  parameters: { dt: 1 / 30, contact_margin: 8, ...parameters },
  rooms: {},
};
const started = performance.now();

for (const roomName of roomNames) {
  const room = NPC_PROBE_ROOMS[roomName];
  const env = new EngineEnvironment({
    room: room.room,
    targetNPC: { type: -1, variant: -1, subtype: -1 },
    catalogMode: true,
    debugFlags: [3],
    noRender: false,
    maxSteps: 100000,
  });
  const rows = [];
  try {
    const initial = await env.reset();
    if (initial.room.width !== room.width || initial.room.height !== room.height) {
      throw new Error(`${roomName} room loaded as ${initial.room.width}x${initial.room.height}, expected ${room.width}x${room.height}`);
    }
    console.log(JSON.stringify({ event: 'roomReady', roomName, width: initial.room.width, height: initial.room.height, runDirectory: env.runDirectory }));
    const result = await env.probe({ entries, observeFrames, parameters });
    rows.push(...result.results);
  } catch (error) {
    rows.push(...env.probeResults);
    rows.push({ status: 'engine-error', error: error.stack ?? String(error), runDirectory: env.runDirectory });
    report.error = error.stack ?? String(error);
  } finally {
    await env.close();
  }
  const observed = rows.filter(row => row.identityObserved || row.normalizedIdentityObserved).length;
  const dangerObserved = rows.filter(row => row.hazardKinds?.length || row.policyThreatKinds?.length).length;
  report.rooms[roomName] = {
    ...room,
    runDirectory: env.runDirectory,
    invulnerableProbe: true,
    results: rows,
    summary: {
      requested: entries.length,
      observed,
      exactObserved: rows.filter(row => row.identityObserved).length,
      normalizedObserved: rows.filter(row => row.normalizedIdentityObserved).length,
      missing: entries.length - observed,
      dangerObserved,
      spawnFailed: rows.filter(row => row.status === 'spawn-failed').length,
      resetTimeout: rows.filter(row => row.status === 'reset-timeout').length,
      engineErrors: rows.filter(row => row.status === 'engine-error').length,
    },
  };
  console.log(JSON.stringify({ event: 'roomComplete', roomName, ...report.rooms[roomName].summary }));
}

report.wallMs = performance.now() - started;
mkdirSync(new URL('../npc-coverage/', import.meta.url), { recursive: true });
writeFileSync(outputPath, JSON.stringify(report, null, 2));
console.log(JSON.stringify({
  catalogCount: report.catalogCount,
  selected: report.limit,
  rooms: Object.fromEntries(Object.entries(report.rooms).map(([name, value]) => [name, value.summary])),
  wallMs: report.wallMs,
  output: outputPath.pathname,
}));

if (Object.values(report.rooms).some(value => value.summary.observed !== value.summary.requested)) {
  process.exitCode = 1;
}
