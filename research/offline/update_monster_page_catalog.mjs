import { writeFileSync } from 'node:fs';
import { NPC_CONFIGS } from './npc_catalog.mjs';

const PAGE = 'Monsters';
const API = `https://bindingofisaacrebirth.fandom.com/api.php?action=parse&page=${PAGE}&prop=text&format=json`;

function decodeHtml(value) {
  return value
    .replace(/&#39;|&apos;/g, "'")
    .replace(/&quot;/g, '"')
    .replace(/&amp;/g, '&')
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>');
}

function normalizeId(value) {
  const parts = value.split('.');
  if (parts.length === 2) parts.push('0');
  if (parts.length !== 3 || parts.some(part => !/^\d+$/.test(part))) {
    throw new Error(`invalid entity id ${JSON.stringify(value)}`);
  }
  return parts.join('.');
}

const response = await fetch(API, {
  headers: { 'user-agent': 'IsaacGamebot research catalog updater' },
});
if (!response.ok) throw new Error(`Fandom API returned ${response.status}`);
const payload = await response.json();
const html = payload.parse?.text?.['*'];
if (typeof html !== 'string') throw new Error('Fandom API response has no parsed text');

const declaredNaturalCount = Number(
  html.match(/There are\s+(\d+)\s+naturally spawning monsters/i)?.[1],
);
if (!Number.isInteger(declaredNaturalCount)) {
  throw new Error('could not read the naturally spawning monster count');
}

const catalog = new Map(NPC_CONFIGS.map(entry => [entry.key, entry]));
const rowPattern = /<td data-sort-value="([^"]+)" style="text-align: center">.*?<\/td>\s*<td data-sort-value="([^"]+)">([^<]+)<\/td>/gs;
const entries = [...html.matchAll(rowPattern)].map((match, index) => {
  const id = normalizeId(match[3].trim());
  const entity = catalog.get(id);
  return {
    index: index + 1,
    name: decodeHtml(match[1]),
    id,
    localCategory: entity?.category ?? null,
    localRole: entity?.role ?? null,
    excludedAsBoss: entity?.role?.includes('boss') === true,
  };
});

if (entries.length !== 367) {
  throw new Error(`expected 367 Monster List rows, found ${entries.length}`);
}
if (new Set(entries.map(entry => entry.name)).size !== entries.length) {
  throw new Error('Monster List contains duplicate names');
}
if (new Set(entries.map(entry => entry.id)).size !== entries.length) {
  throw new Error('Monster List contains duplicate entity ids');
}

const report = {
  format: 'bindingofisaacrebirth-fandom-monsters-v1',
  source: {
    page: `https://bindingofisaacrebirth.fandom.com/wiki/${PAGE}`,
    api: API,
    revisionId: payload.parse?.revid ?? null,
    fetchedAt: new Date().toISOString(),
  },
  declaredNaturalCount,
  rowCount: entries.length,
  bossRows: entries.filter(entry => entry.excludedAsBoss).length,
  eligibleRows: entries.filter(entry => !entry.excludedAsBoss).length,
  entries,
};

const output = new URL('../monster-page.json', import.meta.url);
writeFileSync(output, `${JSON.stringify(report, null, 2)}\n`);
console.log(JSON.stringify({
  output: output.pathname,
  declaredNaturalCount,
  rowCount: report.rowCount,
  bossRows: report.bossRows,
  eligibleRows: report.eligibleRows,
}, null, 2));
