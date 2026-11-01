import { mkdirSync, writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';
import { NPC_CONFIGS, NPC_PROBE_ROOMS } from './npc_catalog.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

function parseNumberList(text) {
  const values = [];
  for (const token of text.split(',').map(value => value.trim()).filter(Boolean)) {
    const range = token.match(/^(\d+)-(\d+)$/);
    if (range) {
      const start = Number(range[1]);
      const end = Number(range[2]);
      const step = start <= end ? 1 : -1;
      for (let value = start; value !== end + step; value += step) values.push(value);
    } else {
      values.push(Number(token));
    }
  }
  if (values.some(value => !Number.isInteger(value) || value < 0)) {
    throw new Error(`invalid number list ${JSON.stringify(text)}`);
  }
  return [...new Set(values)];
}

function parseCases(text, catalog) {
  return text.split(',').map(value => value.trim()).filter(Boolean).map(value => {
    const [parentKey, targetChild] = value.split(':');
    const parent = catalog.get(parentKey);
    if (!parent) throw new Error(`unknown parent ${parentKey}`);
    if (!catalog.has(targetChild)) throw new Error(`unknown target ${targetChild}`);
    return { parent, targetChild };
  });
}

function matchingIdentities(result) {
  const keys = new Set();
  for (const identity of result.newIdentities ?? []) {
    if (identity.type >= 1000) continue;
    keys.add(identity.key);
  }
  return [...keys];
}

const observeFrames = Math.max(1, Number(option('observe', 1200)));
const attack = option('attack', 'true') !== 'false';
const output = option('output', 'npc-variant-coverage.json');
const debugFlags = parseNumberList(option('debug', '3,4'));
const champions = parseNumberList(option('champions', '1-25'));
const selectedRooms = new Set(option('rooms', 'narrow').split(',').map(value => value.trim()).filter(Boolean));
const catalog = new Map(NPC_CONFIGS.map(entry => [entry.key, entry]));
const testCases = parseCases(
  option('cases', '10.0.0:96.0.0,14.0.0:96.0.0,307.0.0:307.0.1'),
  catalog,
);
const rooms = Object.entries(NPC_PROBE_ROOMS)
  .filter(([name]) => selectedRooms.has(name))
  .map(([name, room]) => ({ name, ...room }));
const report = {
  native: true,
  scope: 'parent identity and champion variants in original combat rooms',
  caveat: 'debug flags accelerate original behavior; child identity evidence does not count as balanced combat or no-damage evidence',
  observeFrames,
  attack,
  debugFlags,
  champions,
  cases: testCases.map(testCase => ({
    parent: testCase.parent.key,
    targetChild: testCase.targetChild,
  })),
  rooms: {},
};
const started = performance.now();

for (const room of rooms) {
  const env = new EngineEnvironment({
    room: room.room,
    targetNPC: { type: -1, variant: -1, subtype: -1 },
    catalogMode: true,
    debugFlags,
    noRender: false,
    maxSteps: 100000,
  });
  const rows = [];
  try {
    const initial = await env.reset();
    if (initial.room.width !== room.width || initial.room.height !== room.height) {
      throw new Error(`${room.name} room loaded as ${initial.room.width}x${initial.room.height}, expected ${room.width}x${room.height}`);
    }
    const entries = testCases.flatMap(testCase => champions.map(champion => ({
      ...testCase.parent,
      champion,
      targetChild: testCase.targetChild,
      exactOnly: true,
    })));
    const result = await env.probe({ entries, observeFrames, attack });
    rows.push(...result.results.map(row => {
      const child = row.newIdentities?.find(identity => identity.key === row.targetChild) ?? null;
      return {
        room: room.name,
        roomConfig: room.room,
        parent: row.key,
        parentChampion: row.champion,
        targetChild: row.targetChild,
        parentObserved: !!row.identityObserved,
        childObserved: !!child,
        child,
        identities: matchingIdentities(row),
        status: !row.identityObserved ? 'parent-spawn-failed' : child ? 'child-observed' : 'child-not-observed',
        runDirectory: env.runDirectory,
      };
    }));
  } catch (error) {
    rows.push({ room: room.name, status: 'engine-error', error: error.stack ?? String(error), runDirectory: env.runDirectory });
  } finally {
    await env.close();
  }

  const targets = {};
  for (const row of rows) {
    if (!row.targetChild) continue;
    const target = targets[row.targetChild] ?? { observed: false, parents: {} };
    target.observed ||= row.childObserved;
    const parent = target.parents[row.parent] ?? { parent: row.parent, observedChampions: [] };
    if (row.childObserved) parent.observedChampions.push(row.parentChampion);
    target.parents[row.parent] = parent;
    targets[row.targetChild] = target;
  }
  for (const target of Object.values(targets)) {
    target.parents = Object.values(target.parents).map(parent => ({
      parent: parent.parent,
      observedChampions: [...new Set(parent.observedChampions)],
    }));
  }
  report.rooms[room.name] = { ...room, results: rows, targets };
  console.log(JSON.stringify({
    room: room.name,
    requested: testCases.length * champions.length,
    observed: rows.filter(row => row.childObserved).length,
    targets,
  }));
}

report.wallMs = performance.now() - started;
mkdirSync(new URL('../npc-coverage/', import.meta.url), { recursive: true });
writeFileSync(new URL(`../npc-coverage/${output}`, import.meta.url), JSON.stringify(report, null, 2));
console.log(JSON.stringify({ wallMs: report.wallMs, output }));

if (Object.values(report.rooms).some(room => room.results.some(row => row.status === 'engine-error'))) {
  process.exitCode = 1;
}
