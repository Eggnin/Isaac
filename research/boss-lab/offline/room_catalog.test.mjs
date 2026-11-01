import test from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';

const report = JSON.parse(readFileSync(new URL('../room-configs/basement-rooms.json', import.meta.url), 'utf8'));

test('basement room catalog is complete after STB parsing', () => {
  assert.equal(report.roomCount, 1220);
  assert.equal(report.rooms.length, 1220);
  assert.equal(new Set(report.rooms.map(room => room.room)).size, 1220);
  assert.match(report.source.entrySha256, /^[0-9a-f]{64}$/);
  assert.match(report.source.archiveSha256, /^[0-9a-f]{64}$/);
});

test('random combat pool uses original normal rooms with hostile spawns', () => {
  const rooms = report.rooms.filter(room =>
    room.type === 1 &&
    room.spawns.some(stack => stack.entities.some(entity => entity.type >= 10 && entity.type < 1000))
  );
  assert.ok(rooms.length > 1000);
  assert.ok(rooms.every(room => room.room === `d.${room.variant}`));
  assert.deepEqual(new Set(rooms.map(room => `${room.width}x${room.height}`)), new Set([
    '15x9',
    '15x16',
    '28x9',
    '28x16',
  ]));
});
