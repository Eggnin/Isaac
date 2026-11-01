import { mkdirSync, readdirSync, readFileSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';

const root = new URL('../../', import.meta.url);
const source = new URL('validation/release-20261029/room-probe/fixtures/', root);
const output = new URL('cpp/tests/fixtures/native-rooms/', root);
mkdirSync(output, { recursive: true });

const CORE_BYTES = 0x410;
const NPC_BYTES = 0xf60;
let extended = 0;
for (const name of readdirSync(source).filter(value => /^shape-\d{2}\.json$/.test(value)).sort()) {
  const fixture = JSON.parse(readFileSync(new URL(name, source), 'utf8'));
  for (const segment of fixture.segments) {
    const bytes = Buffer.from(segment.hex, 'hex');
    if (bytes.length !== 0xc68 || bytes.length <= 0x28 + 4) continue;
    const type = bytes.readInt32LE(0x28);
    if (type < 10 || type >= 1000) continue;
    if (bytes.length < NPC_BYTES) {
      segment.hex = Buffer.concat([bytes, Buffer.alloc(NPC_BYTES - bytes.length)]).toString('hex');
      ++extended;
    }
  }
  writeFileSync(new URL(name, output), `${JSON.stringify(fixture)}\n`);
}

console.log(JSON.stringify({
  output: output.pathname,
  files: readdirSync(output).filter(value => /^shape-\d{2}\.json$/.test(value)).length,
  extendedNpcSegments: extended,
  note: 'Only historical NPC fixture tails absent at capture time are zero-filled; reads still enforce exact segment bounds.',
}));
