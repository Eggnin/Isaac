import { mkdirSync, writeFileSync } from 'node:fs';
import { EngineEnvironment } from './engine_environment.mjs';
import { NPC_CONFIGS } from './npc_catalog.mjs';
import { NPC_PARENT_CASES } from './npc_parent_cases.mjs';

function option(name, fallback) {
  const prefix = `--${name}=`;
  const value = process.argv.slice(2).find(argument => argument.startsWith(prefix));
  return value === undefined ? fallback : value.slice(prefix.length);
}

const observeFrames = Math.max(1, Number(option('observe', 1200)));
const attack = option('attack', 'true') !== 'false';
const output = option('output', 'npc-child-coverage.json');
const selectedTargets = new Set(option('targets', '').split(',').map(value => value.trim()).filter(Boolean));
const debugFlags = option('debug', '3').split(',').map(Number).filter(Number.isFinite);
const selectedRooms = new Set(option('rooms', 'narrow,long').split(',').map(value => value.trim()).filter(Boolean));
const rooms = [
  { name: 'narrow', room: 's.boss.3702' },
  { name: 'long', room: 's.boss.3700' },
].filter(room => selectedRooms.has(room.name));
const cases = NPC_PARENT_CASES.filter(testCase => !selectedTargets.size || selectedTargets.has(testCase.target));
const catalog = new Map(NPC_CONFIGS.map(entry => [entry.key, entry]));
const report = {
  native: true,
  scope: 'parent-driven validation in original narrow and long combat rooms',
  caveat: `debug ${debugFlags.join(',')} is enabled and automatic attack is ${attack ? 'enabled' : 'disabled'}; results validate child identity, not balanced combat outcomes`,
  observeFrames,
  attack,
  rooms: {},
};
const started = performance.now();

function mapParentResult(parent, room, runDirectory) {
  const child = parent.newIdentities?.find(identity => identity.key === parent.targetChild);
  return {
    room: room.name,
    roomConfig: room.room,
    targetChild: parent.targetChild,
    parent: parent.key,
    parentChampion: parent.champion ?? null,
    parentObserved: !!parent.identityObserved,
    childObserved: !!child,
    child: child ?? null,
    newIdentities: parent.newIdentities ?? [],
    status: !parent.identityObserved ? 'parent-spawn-failed' : child ? 'child-observed' : 'child-not-observed',
    runDirectory,
  };
}

for (const room of rooms) {
  const rows = [];
  for (const test of cases) {
    for (const parent of test.parents) {
      const entry = typeof parent === 'string'
        ? { ...catalog.get(parent), targetChild: test.target, exactOnly: true }
        : { ...catalog.get(parent.key), champion: parent.champion, targetChild: test.target, exactOnly: true };
      if (!entry || !Number.isInteger(entry.type)) throw new Error(`unknown parent ${JSON.stringify(parent)}`);
      const env = new EngineEnvironment({
        room: room.room,
        targetNPC: { type: -1, variant: -1, subtype: -1 },
        catalogMode: true,
        debugFlags,
        noRender: false,
        maxSteps: 100000,
      });
      try {
        await env.reset();
        const result = await env.probe({ entries: [entry], observeFrames, attack });
        rows.push(mapParentResult(result.results[0], room, env.runDirectory));
      } catch (error) {
        rows.push({
          room: room.name,
          roomConfig: room.room,
          targetChild: test.target,
          parent: entry.key,
          parentChampion: entry.champion ?? null,
          parentObserved: false,
          childObserved: false,
          status: 'engine-error',
          error: error.stack ?? String(error),
          runDirectory: env.runDirectory,
        });
      } finally {
        await env.close();
      }
    }
  }
  const targets = new Map();
  for (const row of rows) {
    if (!row.targetChild) continue;
    const current = targets.get(row.targetChild) ?? { observed: false, parents: new Map() };
    current.observed ||= row.childObserved;
    const parentKey = `${row.parent}.${row.parentChampion ?? 'none'}`;
    const parent = current.parents.get(parentKey) ?? {
      parent: row.parent,
      champion: row.parentChampion,
      childObserved: false,
    };
    parent.childObserved ||= row.childObserved;
    current.parents.set(parentKey, parent);
    targets.set(row.targetChild, current);
  }
  report.rooms[room.name] = {
    ...room,
    results: rows,
    targets: Object.fromEntries([...targets].map(([key, value]) => [key, {
      observed: value.observed,
      parents: [...value.parents.values()],
    }])),
  };
  const observed = Object.values(report.rooms[room.name].targets).filter(value => value.observed).length;
  console.log(JSON.stringify({ room: room.name, requested: cases.length, observed }));
}

report.wallMs = performance.now() - started;
mkdirSync(new URL('../npc-coverage/', import.meta.url), { recursive: true });
writeFileSync(new URL(`../${output}`, import.meta.url), JSON.stringify(report, null, 2));
console.log(JSON.stringify({ wallMs: report.wallMs, output }));

for (const room of Object.values(report.rooms)) {
  if (Object.values(room.targets).some(value => !value.observed)) process.exitCode = 1;
}
