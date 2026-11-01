import test from 'node:test';
import assert from 'node:assert/strict';
import { NPC_CONFIGS, NPC_PROBE_ROOMS } from './npc_catalog.mjs';

test('the local NPC catalog contains all 653 exact configurations', () => {
  assert.equal(NPC_CONFIGS.length, 653);
  assert.equal(new Set(NPC_CONFIGS.map(entry => entry.key)).size, 653);
  assert.equal(NPC_CONFIGS.filter(entry => entry.category === 'monster').length, 322);
  assert.equal(NPC_CONFIGS.filter(entry => entry.category === 'boss').length, 132);
  assert.equal(NPC_CONFIGS.filter(entry => entry.category === 'trap').length, 25);
  assert.equal(NPC_CONFIGS.filter(entry => entry.category === 'unlisted_npc').length, 174);
  for (const entry of NPC_CONFIGS) {
    assert.match(entry.key, /^\d+\.\d+\.\d+$/);
    assert.ok(Number.isInteger(entry.type));
    assert.ok(Number.isInteger(entry.variant));
    assert.ok(Number.isInteger(entry.subtype));
  }
});

test('catalog probes use distinct original narrow and long rooms', () => {
  assert.deepEqual(
    [NPC_PROBE_ROOMS.narrow.width, NPC_PROBE_ROOMS.narrow.height],
    [15, 16],
  );
  assert.deepEqual(
    [NPC_PROBE_ROOMS.long.width, NPC_PROBE_ROOMS.long.height],
    [28, 9],
  );
  assert.notEqual(NPC_PROBE_ROOMS.narrow.room, NPC_PROBE_ROOMS.long.room);
});
