// All memory in this file is a synthetic layout fixture. These tests validate
// the observer contract and offsets against cpp/src/reader.cpp; they are not
// runtime captures or gameplay evidence.

import test from 'node:test';
import assert from 'node:assert/strict';
import {
  TRAINING_OBSERVER_OFFSETS,
  actionToKeyDeltas,
  readObservation,
} from './training_observer.mjs';

const SYNTHETIC = 'synthetic-layout-fixture; not runtime evidence';

class CountingHeap extends Uint8Array {
  constructor(size) {
    super(size);
    this.sliceReads = [];
  }

  slice(start, end) {
    this.sliceReads.push([start, end]);
    return Uint8Array.prototype.slice.call(this, start, end);
  }
}

function view(heap) {
  return new DataView(heap.buffer, heap.byteOffset, heap.byteLength);
}

function putU8(heap, address, value) {
  view(heap).setUint8(address, value);
}

function putU16(heap, address, value) {
  view(heap).setUint16(address, value, true);
}

function putI32(heap, address, value) {
  view(heap).setInt32(address, value, true);
}

function putU32(heap, address, value) {
  view(heap).setUint32(address, value >>> 0, true);
}

function putF32(heap, address, value) {
  view(heap).setFloat32(address, value, true);
}

function putEntity(heap, address, {
  type,
  position = { x: 0, y: 0 },
  velocity = { x: 0, y: 0 },
  radius = 10,
  hp = 10,
  damage = 1,
  flags = 0,
  dead = false,
  variant = 0,
  subtype = 0,
} = {}) {
  putI32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.type, type);
  putI32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.variant, variant);
  putI32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.subtype, subtype);
  putI32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.spawnerType, 0);
  putU32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.flagsLow, flags);
  putU32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.flagsHigh, 0);
  putU8(heap, address + TRAINING_OBSERVER_OFFSETS.entity.active, 1);
  putU8(heap, address + TRAINING_OBSERVER_OFFSETS.entity.exists, 1);
  putU8(heap, address + TRAINING_OBSERVER_OFFSETS.entity.dead, dead ? 1 : 0);
  putI32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.collision, 2);
  putF32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.positionX, position.x);
  putF32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.positionY, position.y);
  putF32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.velocityX, velocity.x);
  putF32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.velocityY, velocity.y);
  putF32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.radius, radius);
  putF32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.hp, hp);
  putF32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.damage, damage);
  putU32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.parent, 0);
  putU32(heap, address + TRAINING_OBSERVER_OFFSETS.entity.seed, address);
}

function putVector(heap, headerAddress, dataAddress, pointers) {
  putU32(heap, headerAddress + 0, dataAddress);
  putU32(heap, headerAddress + 4, dataAddress + 4 * pointers.length);
  putU32(heap, headerAddress + 8, dataAddress + 4 * pointers.length);
  pointers.forEach((pointer, index) => putU32(heap, dataAddress + index * 4, pointer));
}

function putPartition(heap, room, offset, dataAddress, pointers) {
  const header = room + TRAINING_OBSERVER_OFFSETS.room.entityPartitionBase + offset;
  putU32(heap, header + 0, 0);
  putU32(heap, header + 4, dataAddress);
  putU32(heap, header + 8, pointers.length);
  putU32(heap, header + 12, pointers.length);
  pointers.forEach((pointer, index) => putU32(heap, dataAddress + index * 4, pointer));
}

function fixture({
  size = 0x02000000,
  clear = true,
  transition = false,
  dead = false,
  width = 5,
  height = 5,
} = {}) {
  const heap = new CountingHeap(size);
  const a = {
    game: 0x00100000,
    manager: 0x00110000,
    room: 0x00120000,
    descriptor: 0x00130000,
    player: 0x00140000,
    npc: 0x00150000,
    projectile: 0x00160000,
    tear: 0x00170000,
    gridCell: 0x00180000,
    playerPointers: 0x00190000,
    partition0: 0x001a0000,
    partition1: 0x001b0000,
    partition2: 0x001c0000,
    // The J460 reader treats Room+0x24 as the inline pointer vector itself.
    gridPointers: 0x00120024,
  };

  putU32(heap, TRAINING_OBSERVER_OFFSETS.global.game, a.game);
  putU32(heap, TRAINING_OBSERVER_OFFSETS.global.manager, a.manager);
  putI32(heap, a.manager + TRAINING_OBSERVER_OFFSETS.manager.mode, 2);

  putI32(heap, a.game + TRAINING_OBSERVER_OFFSETS.game.stage, 8);
  putI32(heap, a.game + TRAINING_OBSERVER_OFFSETS.game.stageType, 0);
  putI32(heap, a.game + TRAINING_OBSERVER_OFFSETS.game.frame, 42);
  putU32(heap, a.game + TRAINING_OBSERVER_OFFSETS.game.room, a.room);
  putI32(heap, a.game + TRAINING_OBSERVER_OFFSETS.game.roomIndex, 84);
  putI32(heap, a.game + TRAINING_OBSERVER_OFFSETS.game.transitionGuard, transition ? 1 : 0);
  putI32(heap, a.game + TRAINING_OBSERVER_OFFSETS.game.transition, 0);

  putI32(heap, a.room + TRAINING_OBSERVER_OFFSETS.room.width, width);
  putI32(heap, a.room + TRAINING_OBSERVER_OFFSETS.room.height, height);
  putU32(heap, a.room + TRAINING_OBSERVER_OFFSETS.room.descriptor, a.descriptor);
  putU32(heap, a.descriptor + TRAINING_OBSERVER_OFFSETS.descriptor.flags, clear ? 1 : 0);
  putU16(heap, a.descriptor + TRAINING_OBSERVER_OFFSETS.descriptor.clearCount, clear ? 2 : 1);

  putEntity(heap, a.player, {
    type: 1,
    position: { x: 120, y: 200 },
    velocity: { x: 1, y: 2 },
    radius: 10,
    hp: 6,
    dead,
  });
  putU8(heap, a.player + TRAINING_OBSERVER_OFFSETS.player.controlsFlag, 1);
  putI32(heap, a.player + TRAINING_OBSERVER_OFFSETS.player.controlsCooldown, 0);
  putI32(heap, a.player + TRAINING_OBSERVER_OFFSETS.player.damageCooldown, 23);
  putI32(heap, a.player + TRAINING_OBSERVER_OFFSETS.player.hpA, 4);
  putI32(heap, a.player + TRAINING_OBSERVER_OFFSETS.player.hpB, 2);
  putF32(heap, a.player + TRAINING_OBSERVER_OFFSETS.player.fireDelay, 7.5);
  putI32(heap, a.player + TRAINING_OBSERVER_OFFSETS.player.controller, 0);
  putI32(heap, a.player + TRAINING_OBSERVER_OFFSETS.player.character, 0);

  putEntity(heap, a.npc, {
    type: 10,
    variant: 2,
    position: { x: 300, y: 220 },
    velocity: { x: -2, y: 0.5 },
    radius: 18,
    hp: 20,
    flags: 0x20,
  });
  putEntity(heap, a.projectile, {
    type: 9,
    position: { x: 180, y: 160 },
    velocity: { x: 6, y: -3 },
    radius: 6,
    hp: 1,
  });
  putEntity(heap, a.tear, {
    type: 2,
    position: { x: 100, y: 140 },
    velocity: { x: 2, y: -1 },
    radius: 5,
    hp: 1,
  });

  putVector(
    heap,
    a.game + TRAINING_OBSERVER_OFFSETS.game.playerVector,
    a.playerPointers,
    [a.player],
  );
  putPartition(heap, a.room, 0x20, a.partition0, [a.player, a.npc]);
  putPartition(heap, a.room, 0x30, a.partition1, [a.projectile]);
  putPartition(heap, a.room, 0x40, a.partition2, [a.tear]);

  const gridSlots = width * height;
  for (let index = 0; index < gridSlots; index += 1) {
    putU32(heap, a.gridPointers + index * 4, 0);
    putI32(heap, a.room + TRAINING_OBSERVER_OFFSETS.room.gridCosts + index * 4, 0);
  }
  putU32(heap, a.gridPointers + 6 * 4, a.gridCell);
  putI32(heap, a.gridCell + TRAINING_OBSERVER_OFFSETS.gridCell.type, 13);
  putI32(heap, a.gridCell + TRAINING_OBSERVER_OFFSETS.gridCell.variant, 0);
  putI32(heap, a.gridCell + TRAINING_OBSERVER_OFFSETS.gridCell.state, 0);
  putI32(heap, a.gridCell + TRAINING_OBSERVER_OFFSETS.gridCell.collision, 3);

  return {
    module: { HEAPU8: heap },
    heap,
    addresses: {
      ...a,
      playerPointerBytes: 4,
      partition0PointerBytes: 8,
      partition1PointerBytes: 4,
      partition2PointerBytes: 4,
      gridPointerBytes: gridSlots * 4,
    },
  };
}

test(`synthetic fixture: ${SYNTHETIC}`, () => {
  const { module, heap, addresses } = fixture();
  const fixtureView = view(heap);
  assert.equal(fixtureView.getUint32(TRAINING_OBSERVER_OFFSETS.global.game, true), addresses.game);
  assert.equal(fixtureView.getUint32(TRAINING_OBSERVER_OFFSETS.global.manager, true), addresses.manager);
  assert.equal(
    fixtureView.getUint32(addresses.game + TRAINING_OBSERVER_OFFSETS.game.room, true),
    addresses.room,
  );
  assert.equal(
    fixtureView.getUint32(addresses.game + TRAINING_OBSERVER_OFFSETS.game.playerVector, true),
    addresses.playerPointers,
  );
  assert.equal(
    fixtureView.getUint32(
      addresses.room + TRAINING_OBSERVER_OFFSETS.room.entityPartitionBase + 0x20 + 4,
      true,
    ),
    addresses.partition0,
  );
  const observation = readObservation(module);
  assert.equal(observation.state, 'ready');
  assert.equal(observation.ready, true);
  assert.equal(observation.frame, 42);
  assert.equal(observation.clear, true);
  assert.equal(observation.cleared, true);
  assert.equal(observation.dead, false);
  assert.equal(observation.playerCount, 1);
  assert.equal(observation.room.width, 5);
  assert.equal(observation.room.height, 5);
  assert.equal(observation.room.clearFlags, 1);
  assert.equal(observation.room.clearCount, 2);
  assert.equal(observation.room.clear, true);
});

test(`synthetic fixture: ${SYNTHETIC} - real player and partition vector layouts`, () => {
  const { module, heap, addresses } = fixture();
  const observation = readObservation(module);

  assert.deepEqual(
    observation.entities.map((entity) => entity.kind),
    ['player', 'npc', 'projectile', 'tear'],
  );
  assert.equal(observation.player.health, 6);
  assert.equal(observation.player.fireDelay, 7.5);
  assert.equal(observation.player.damageCooldown, 23);
  assert.equal(Object.hasOwn(observation.player, 'cooldown'), false);
  assert.deepEqual(observation.player.position, { x: 120, y: 200 });
  assert.deepEqual(observation.player.velocity, { x: 60, y: 120 });

  const npc = observation.entities.find((entity) => entity.kind === 'npc');
  const projectile = observation.entities.find((entity) => entity.kind === 'projectile');
  const tear = observation.entities.find((entity) => entity.kind === 'tear');
  assert.deepEqual(npc.velocity, { x: -60, y: 15 });
  assert.equal(npc.radius, 18);
  assert.equal(npc.hp, 20);
  assert.equal(npc.flags.hex, '0000000000000020');
  assert.deepEqual(projectile.velocity, { x: 180, y: -90 });
  assert.deepEqual(tear.position, { x: 100, y: 140 });

  const expectedReads = [
    [addresses.playerPointers, addresses.playerPointers + addresses.playerPointerBytes],
    [addresses.partition0, addresses.partition0 + addresses.partition0PointerBytes],
    [addresses.partition1, addresses.partition1 + addresses.partition1PointerBytes],
    [addresses.partition2, addresses.partition2 + addresses.partition2PointerBytes],
    [addresses.gridPointers, addresses.gridPointers + addresses.gridPointerBytes],
  ];
  for (const [start, end] of expectedReads) {
    assert.equal(
      heap.sliceReads.filter(([actualStart, actualEnd]) => actualStart === start && actualEnd === end).length,
      1,
      `pointer vector ${start.toString(16)} must be snapshotted once`,
    );
  }
});

test(`synthetic fixture: ${SYNTHETIC} - grid, clear bit, and unknown fields`, () => {
  const { module, heap, addresses } = fixture({ clear: false });
  let observation = readObservation(module);
  assert.equal(observation.cleared, false);
  assert.equal(observation.clear, false);
  assert.equal(observation.grid.length, 25);
  assert.equal(observation.grid[0].type, null);
  assert.equal(observation.grid[0].address, null);
  assert.equal(observation.grid[6].address, addresses.gridCell);
  assert.equal(observation.grid[6].type, 13);
  assert.equal(observation.grid[6].collision, 3);
  assert.equal(observation.grid[6].destructible, true);

  putU32(heap, addresses.descriptor + TRAINING_OBSERVER_OFFSETS.descriptor.flags, 1);
  putF32(heap, addresses.projectile + TRAINING_OBSERVER_OFFSETS.entity.velocityX, Number.NaN);
  observation = readObservation(module);
  assert.equal(observation.cleared, true);
  assert.equal(observation.clear, true);
  const projectile = observation.entities.find((entity) => entity.kind === 'projectile');
  assert.equal(projectile.velocity.x, null);
  assert.ok(projectile.unknownFields.includes('velocity.x'));
});

test(`synthetic fixture: ${SYNTHETIC} - 28x16 uses the full 448-slot grid`, () => {
  const observation = readObservation(fixture({ width: 28, height: 16 }).module);
  assert.equal(observation.state, 'ready');
  assert.equal(observation.ready, true);
  assert.equal(observation.room.width, 28);
  assert.equal(observation.room.height, 16);
  assert.equal(observation.grid.length, 448);
  assert.equal(observation.grid[447].index, 447);
  assert.equal(observation.grid[447].x, 27);
  assert.equal(observation.grid[447].y, 15);

  const overCapacity = readObservation(fixture({ width: 29, height: 16 }).module);
  assert.equal(overCapacity.state, 'invalid');
  assert.equal(overCapacity.ready, false);
  assert.match(overCapacity.error, /room dimensions differ/);
});

test(`synthetic fixture: ${SYNTHETIC} - transition and death are explicit states`, () => {
  const transition = readObservation(fixture({ transition: true }).module);
  assert.equal(transition.state, 'transition');
  assert.equal(transition.ready, false);
  assert.equal(transition.game.transition, true);
  assert.equal(transition.dead, false);

  const dead = readObservation(fixture({ dead: true }).module);
  assert.equal(dead.state, 'dead');
  assert.equal(dead.ready, false);
  assert.equal(dead.dead, true);
  assert.equal(dead.player.dead, true);
});

test(`synthetic fixture: ${SYNTHETIC} - empty module and HEAPU8 growth`, () => {
  const module = { HEAPU8: new CountingHeap(0x100000) };
  let observation = readObservation(module);
  assert.equal(observation.state, 'empty');
  assert.equal(observation.ready, false);
  assert.equal(observation.room, null);
  assert.equal(observation.cleared, null);
  assert.equal(observation.clear, null);
  assert.equal(observation.dead, null);

  const grown = fixture();
  module.HEAPU8 = grown.heap;
  observation = readObservation(module);
  assert.equal(observation.state, 'ready');
  assert.equal(observation.ready, true);
  assert.equal(observation.frame, 42);
});

test('held actions emit only key-state deltas in the existing event schema', () => {
  const previous = { moveX: 1, moveY: 0, fire: 'up' };
  assert.deepEqual(actionToKeyDeltas(previous, previous), []);

  const changed = actionToKeyDeltas(
    { moveX: -1, moveY: 0, fire: 'down' },
    previous,
  );
  assert.deepEqual(changed, [
    [1, 0x44, 0x20, 0],
    [1, 0x26, 0x148, 0],
    [1, 0x41, 0x1e, 1],
    [1, 0x28, 0x150, 1],
  ]);

  assert.deepEqual(
    actionToKeyDeltas({ direction: 'left', fire: 'none' }, null),
    [[1, 0x41, 0x1e, 1]],
  );
  assert.deepEqual(
    actionToKeyDeltas({ move: { x: 1, y: -1 }, fire: 'right' }, null),
    [
      [1, 0x57, 0x11, 1],
      [1, 0x44, 0x20, 1],
      [1, 0x27, 0x14d, 1],
    ],
  );
  assert.throws(
    () => actionToKeyDeltas({ moveX: 1, fire: 'diagonal' }, null),
    /action\.fire/,
  );
});
