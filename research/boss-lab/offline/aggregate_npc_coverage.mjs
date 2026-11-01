import { readFileSync, writeFileSync } from 'node:fs';
import { NPC_CONFIGS } from './npc_catalog.mjs';

const root = new URL('../', import.meta.url);
const output = new URL('npc-coverage-final.json', root);
const directSources = [
  'npc-coverage/direct-000-580.json',
  'npc-coverage/direct-581-653.json',
];
const childSources = [
  'npc-horny-boys-child.json',
  'npc-child-observe-final.json',
  'npc-child-siren-after-lift.json',
  'npc-siren-observe.json',
  'npc-child-coverage-hard-narrow.json',
  'npc-child-coverage-rest.json',
  'npc-coverage/npc-champion-sweep-observe.json',
];
const negativeSources = [
  'npc-coverage/npc-eternal-fly-bomb-death.json',
  'npc-spawn-command-matrix.json',
];

function readReport(name) {
  const report = JSON.parse(readFileSync(new URL(name, root), 'utf8'));
  return { name, report };
}

function directEvidence(row) {
  return {
    source: 'direct',
    file: row.file,
    status: row.status,
    observedIdentity: row.observedIdentity ?? null,
    firstFrame: row.firstFrame ?? null,
    lastFrame: row.lastFrame ?? null,
    observedFrames: row.observedFrames ?? null,
    hazardKinds: row.hazardKinds ?? [],
    policyThreatKinds: row.policyThreatKinds ?? [],
    runDirectory: row.runDirectory ?? null,
  };
}

function childEvidence(row, file) {
  return {
    source: 'parent',
    file,
    parent: row.parent,
    parentChampion: row.parentChampion ?? null,
    childObserved: row.childObserved === true,
    child: row.child ?? null,
    status: row.status,
    runDirectory: row.runDirectory ?? null,
  };
}

const direct = Object.fromEntries(['narrow', 'long'].map(room => [room, new Map()]));
for (const name of directSources) {
  const { report } = readReport(name);
  for (const [roomName, room] of Object.entries(report.rooms ?? {})) {
    for (const row of room.results ?? []) {
      if (!row.key) continue;
      const prior = direct[roomName].get(row.key);
      if (!prior || (!prior.identityObserved && !prior.normalizedIdentityObserved)) {
        direct[roomName].set(row.key, { ...row, file: name, runDirectory: row.runDirectory ?? room.runDirectory });
      }
    }
  }
}

const children = Object.fromEntries(['narrow', 'long'].map(room => [room, new Map()]));
for (const name of childSources) {
  const { report } = readReport(name);
  for (const [roomName, room] of Object.entries(report.rooms ?? {})) {
    for (const row of room.results ?? []) {
      if (!row.targetChild) continue;
      const prior = children[roomName].get(row.targetChild) ?? [];
      prior.push(childEvidence(row, name));
      children[roomName].set(row.targetChild, prior);
    }
  }
}

const negative = new Map();
for (const name of negativeSources) {
  const { report } = readReport(name);
  if (report.rows) {
    const current = negative.get('819.1.0') ?? {};
    negative.set('819.1.0', {
      ...current,
      source: name,
      commands: report.rows.map(row => ({
        command: row.command,
        status: row.status,
        observedIdentity: row.observedIdentity,
      })),
      runDirectory: report.runDirectory ?? null,
    });
    continue;
  }
  for (const [roomName, room] of Object.entries(report.rooms ?? {})) {
    const rows = (room.results ?? []).filter(row => row.targetChild === '819.1.0');
    if (!rows.length) continue;
    const current = negative.get('819.1.0') ?? { attempts: [] };
    current.attempts.push({
      source: name,
      room: roomName,
      rows: rows.map(row => ({
        parent: row.parent,
        parentChampion: row.parentChampion,
        status: row.status,
        identities: row.identities ?? [],
      })),
    });
    negative.set('819.1.0', current);
  }
}

const entries = NPC_CONFIGS.map(entry => {
  const rooms = {};
  for (const roomName of ['narrow', 'long']) {
    const directRow = direct[roomName].get(entry.key);
    if (directRow?.identityObserved) {
      rooms[roomName] = { status: 'exact-direct', evidence: directEvidence(directRow) };
      continue;
    }
    if (directRow?.normalizedIdentityObserved) {
      rooms[roomName] = { status: 'normalized-direct', evidence: directEvidence(directRow) };
      continue;
    }
    const childRows = children[roomName].get(entry.key) ?? [];
    const childRow = childRows.find(row => row.childObserved);
    if (childRow) {
      rooms[roomName] = { status: 'parent-derived', evidence: childRow };
      continue;
    }
    rooms[roomName] = {
      status: 'unresolved',
      evidence: {
        direct: directRow ? directEvidence(directRow) : null,
        parentAttempts: childRows,
        negative: negative.get(entry.key) ?? null,
      },
    };
  }
  return {
    key: entry.key,
    name: entry.name,
    category: entry.category,
    role: entry.role,
    configName: entry.configName,
    rooms,
  };
});

function roomSummary(roomName) {
  const counts = {};
  let dangerObserved = 0;
  for (const entry of entries) {
    const result = entry.rooms[roomName];
    counts[result.status] = (counts[result.status] ?? 0) + 1;
    if (result.status === 'exact-direct' || result.status === 'normalized-direct') {
      if ((result.evidence.hazardKinds?.length ?? 0) > 0 ||
          (result.evidence.policyThreatKinds?.length ?? 0) > 0) {
        dangerObserved++;
      }
    }
  }
  return {
    configurations: NPC_CONFIGS.length,
    emitted: NPC_CONFIGS.length - (counts['not-emitted'] ?? 0) - (counts.unresolved ?? 0),
    directDangerObserved: dangerObserved,
    ...counts,
  };
}

const report = {
  native: true,
  scope: 'catalog identity coverage in original narrow and long combat rooms',
  caveat: 'Identity and hazard probes use debug flags and do not count as balanced combat, clear, or no-damage evidence.',
  sources: { direct: directSources, parent: childSources, negative: negativeSources },
  summary: {
    narrow: roomSummary('narrow'),
    long: roomSummary('long'),
  },
  entries,
};
writeFileSync(output, JSON.stringify(report, null, 2));
console.log(JSON.stringify({ output: output.pathname, summary: report.summary }, null, 2));
