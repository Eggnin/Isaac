// J460 offline-engine memory observer.
//
// Offsets below mirror cpp/src/reader.cpp and the hash-bound J460 notes. This
// module reads an existing Wasm training instance; it does not create or
// mutate game state.

const GLOBAL = Object.freeze({
  game: 0x00c71678,
  manager: 0x00c7169c,
});

const GAME = Object.freeze({
  stage: 0x00,
  stageType: 0x04,
  difficulty: 0x269c8,
  frame: 0x264f8,
  room: 0x18300,
  roomIndex: 0x18304,
  greedWaveIndex: 0x18334,
  transitionGuard: 0x1ba78,
  transition: 0x1b83c,
  playerVector: 0x1baa8,
  pauseWords: Object.freeze([0x264f4, 0x1d520, 0x1d654, 0x1ba78, 0x1b83c, 0x23a74]),
});

const MANAGER = Object.freeze({
  mode: 0x08,
  selectedCharacter: 0x4b134,
  runMode: 0x4b138,
  difficulty: 0x4b198,
  menuCore: 0x4b290,
  menuF0: 0x4b294,
  menuF1: 0x4b298,
  menuF2: 0x4b29c,
  menuDw: 0x4b2a0,
});

const ROOM = Object.freeze({
  width: 0x0c,
  height: 0x10,
  descriptor: 0x04,
  grid: 0x24,
  gridSlots: 0x1c0,
  gridCosts: 0x76c,
  clearDelay: 0x11ec,
  aliveA: 0x12c0,
  aliveB: 0x12c4,
  bossCountA: 0x12c8,
  bossCountB: 0x12cc,
  bossSnapshot: 0x7224,
  greedWaveTimer: 0x723c,
  entityPartitionBase: 0x1218,
  entityPartitionOffsets: Object.freeze([0x20, 0x30, 0x40]),
});

const ROOM_CONFIG = Object.freeze({
  data: 0x10,
  type: 0x08,
  variant: 0x0c,
  shape: 0x48,
});

const DESCRIPTOR = Object.freeze({
  flags: 0x44,
  clearCount: 0x4a,
});

const ENTITY = Object.freeze({
  flagsLow: 0x168,
  flagsHigh: 0x16c,
  active: 0x170,
  exists: 0x172,
  dead: 0x173,
  collision: 0x188,
  type: 0x28,
  variant: 0x2c,
  subtype: 0x30,
  spawnerType: 0x34,
  positionX: 0x33c,
  positionY: 0x340,
  velocityX: 0x360,
  velocityY: 0x364,
  radius: 0x370,
  hp: 0x380,
  damage: 0x388,
  parent: 0x3bc,
  seed: 0x3ec,
  coreBytes: 0x410,
});

const PLAYER = Object.freeze({
  controlsFlag: 0x410,
  controlsCooldown: 0x414,
  damageCooldown: 0x13bc,
  hpA: 0x1344,
  hpB: 0x134c,
  fireDelay: 0x1460,
  controller: 0x1618,
  character: 0x13c0,
  recordBytes: 0x1620,
});

const GRID_CELL = Object.freeze({
  type: 0x04,
  variant: 0x08,
  state: 0x0c,
  collision: 0x3c,
  recordBytes: 0x40,
});

export const TRAINING_OBSERVER_OFFSETS = Object.freeze({
  global: GLOBAL,
  game: GAME,
  manager: MANAGER,
  room: ROOM,
  roomConfig: ROOM_CONFIG,
  descriptor: DESCRIPTOR,
  entity: ENTITY,
  player: PLAYER,
  gridCell: GRID_CELL,
});

// This is the exact key-event schema used by scripts/recomp/lift/explore.mjs:
// [type=1, virtual-key, scancode | extended << 8, down].
const ACTION_KEYS = Object.freeze({
  a: Object.freeze([0x41, 0x1e, 0]),
  w: Object.freeze([0x57, 0x11, 0]),
  d: Object.freeze([0x44, 0x20, 0]),
  s: Object.freeze([0x53, 0x1f, 0]),
  left: Object.freeze([0x25, 0x4b, 1]),
  up: Object.freeze([0x26, 0x48, 1]),
  right: Object.freeze([0x27, 0x4d, 1]),
  down: Object.freeze([0x28, 0x50, 1]),
});

const KEY_ORDER = Object.freeze(['a', 'w', 'd', 's', 'left', 'up', 'right', 'down']);
const CARDINAL = Object.freeze({
  none: Object.freeze({ x: 0, y: 0 }),
  up: Object.freeze({ x: 0, y: -1 }),
  north: Object.freeze({ x: 0, y: -1 }),
  right: Object.freeze({ x: 1, y: 0 }),
  east: Object.freeze({ x: 1, y: 0 }),
  down: Object.freeze({ x: 0, y: 1 }),
  south: Object.freeze({ x: 0, y: 1 }),
  left: Object.freeze({ x: -1, y: 0 }),
  west: Object.freeze({ x: -1, y: 0 }),
});

const ENTITY_KIND = Object.freeze({
  player: 'player',
  pickup: 'pickup',
  tear: 'tear',
  familiar: 'familiar',
  bomb: 'bomb',
  laser: 'laser',
  projectile: 'projectile',
  npc: 'npc',
  effect: 'effect',
  other: 'other',
  unknown: 'unknown',
});

function keyEvent(name, down) {
  const [vk, scancode, extended] = ACTION_KEYS[name];
  return [1, vk, scancode | (extended << 8), down ? 1 : 0];
}

function readAxes(value, field) {
  if (value == null) return { x: 0, y: 0 };
  if (typeof value === 'string') {
    const direction = CARDINAL[value.toLowerCase()];
    if (!direction) throw new TypeError(`${field} must be a cardinal direction`);
    return direction;
  }
  if (typeof value !== 'object') throw new TypeError(`${field} must be an object or cardinal direction`);
  const x = value.x ?? 0;
  const y = value.y ?? 0;
  if (!Number.isFinite(x) || !Number.isFinite(y)) throw new TypeError(`${field}.x/y must be finite numbers`);
  return { x, y };
}

function normalizeAction(action) {
  if (action == null) return { moveX: 0, moveY: 0, fire: 'none' };
  if (typeof action !== 'object') throw new TypeError('action must be an object');

  let move;
  if (action.move != null) {
    if (action.moveX != null || action.moveY != null || action.direction != null) {
      throw new TypeError('use either action.move, action.moveX/moveY, or action.direction');
    }
    move = readAxes(action.move, 'action.move');
  } else if (action.direction != null) {
    if (action.moveX != null || action.moveY != null) {
      throw new TypeError('use either action.direction or action.moveX/moveY');
    }
    move = readAxes(action.direction, 'action.direction');
  } else {
    move = readAxes({ x: action.moveX ?? 0, y: action.moveY ?? 0 }, 'action.move');
  }

  const fire = String(action.fire ?? 'none').toLowerCase();
  if (fire !== 'none' && !CARDINAL[fire]) throw new TypeError('action.fire must be up/right/down/left/none');
  return { moveX: move.x, moveY: move.y, fire: fire in CARDINAL ? fire : 'none' };
}

function keySetForAction(action) {
  const a = normalizeAction(action);
  const keys = new Set();
  if (a.moveX < 0) keys.add('a');
  if (a.moveX > 0) keys.add('d');
  if (a.moveY < 0) keys.add('w');
  if (a.moveY > 0) keys.add('s');
  if (a.fire !== 'none') {
    const fire = a.fire === 'north' ? 'up'
      : a.fire === 'east' ? 'right'
        : a.fire === 'south' ? 'down'
          : a.fire === 'west' ? 'left'
            : a.fire;
    keys.add(fire);
  }
  return keys;
}

export function actionToKeyDeltas(desired, previous) {
  const next = keySetForAction(desired);
  const prior = keySetForAction(previous);
  const deltas = [];
  for (const key of KEY_ORDER) {
    if (prior.has(key) && !next.has(key)) deltas.push(keyEvent(key, false));
  }
  for (const key of KEY_ORDER) {
    if (next.has(key) && !prior.has(key)) deltas.push(keyEvent(key, true));
  }
  return deltas;
}

function asUint8Array(module) {
  const heap = module?.HEAPU8;
  if (!heap || !ArrayBuffer.isView(heap) || heap.BYTES_PER_ELEMENT !== 1) {
    throw new TypeError('module.HEAPU8 must be a Uint8Array view');
  }
  return heap;
}

class SnapshotMemory {
  constructor(heap) {
    this.heap = heap;
    this.view = new DataView(heap.buffer, heap.byteOffset, heap.byteLength);
  }

  has(address, size = 1) {
    return Number.isInteger(address) && address >= 0 && size >= 0 &&
      address + size <= this.view.byteLength;
  }

  bytes(address, size) {
    if (!this.has(address, size)) throw new RangeError('guest memory range is outside HEAPU8');
    return this.heap.slice(address, address + size);
  }

  u8(address) {
    if (!this.has(address, 1)) throw new RangeError('guest u8 is outside HEAPU8');
    return this.view.getUint8(address);
  }

  u16(address) {
    if (!this.has(address, 2)) throw new RangeError('guest u16 is outside HEAPU8');
    return this.view.getUint16(address, true);
  }

  i32(address) {
    if (!this.has(address, 4)) throw new RangeError('guest i32 is outside HEAPU8');
    return this.view.getInt32(address, true);
  }

  u32(address) {
    if (!this.has(address, 4)) throw new RangeError('guest u32 is outside HEAPU8');
    return this.view.getUint32(address, true);
  }

  f32(address) {
    if (!this.has(address, 4)) throw new RangeError('guest f32 is outside HEAPU8');
    return this.view.getFloat32(address, true);
  }
}

function snapshotView(bytes) {
  return new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength);
}

function u16At(bytes, offset) {
  return new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength).getUint16(offset, true);
}

function i32At(bytes, offset) {
  return new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength).getInt32(offset, true);
}

function u32At(bytes, offset) {
  return new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength).getUint32(offset, true);
}

function f32At(bytes, offset) {
  return new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength).getFloat32(offset, true);
}

function finiteAt(bytes, offset, max, label, unknown) {
  const value = f32At(bytes, offset);
  if (!Number.isFinite(value) || Math.abs(value) > max) {
    unknown.push(label);
    return null;
  }
  return value;
}

function boolByte(memory, address, label, unknown) {
  const value = memory.u8(address);
  if (value > 1) {
    unknown.push(label);
    return null;
  }
  return value !== 0;
}

function emptyObservation(state = 'empty', error = null) {
  return {
    schema: 'isaac-offline-observation/1',
    state,
    ready: false,
    game: null,
    room: null,
    frame: null,
    clear: null,
    cleared: null,
    dead: null,
    player: null,
    playerCount: 0,
    entities: [],
    grid: [],
    unknownFields: [],
    error,
  };
}

function readPlayerPointers(memory, game) {
  const header = memory.bytes(game + GAME.playerVector, 12);
  const begin = u32At(header, 0);
  const end = u32At(header, 4);
  const capacity = u32At(header, 8);
  const count = (end - begin) / 4;
  if (end < begin || (end - begin) % 4 || capacity < end || !Number.isInteger(count) || count > 16) {
    throw new Error('player vector layout differs');
  }
  if (!count) return [];
  // One snapshot of the current pointer vector.
  const raw = memory.bytes(begin, count * 4);
  return Array.from({ length: count }, (_, index) => u32At(raw, index * 4));
}

function readPartitionPointers(memory, room) {
  const pointers = [];
  for (const offset of ROOM.entityPartitionOffsets) {
    const address = room + ROOM.entityPartitionBase + offset;
    const header = memory.bytes(address, 16);
    const data = u32At(header, 4);
    const capacity = u32At(header, 8);
    const count = u32At(header, 12);
    if (count > 8192 || capacity < count) throw new Error('entity partition layout differs');
    if (!count) continue;
    // One snapshot of this partition's current pointer vector.
    const raw = memory.bytes(data, count * 4);
    for (let index = 0; index < count; index += 1) pointers.push(u32At(raw, index * 4));
  }
  return pointers;
}

function entityKind(type) {
  if (type === 1) return ENTITY_KIND.player;
  if (type === 2) return ENTITY_KIND.tear;
  if (type === 3) return ENTITY_KIND.familiar;
  if (type === 4) return ENTITY_KIND.bomb;
  if (type === 5) return ENTITY_KIND.pickup;
  if (type === 7) return ENTITY_KIND.laser;
  if (type === 9) return ENTITY_KIND.projectile;
  if (type >= 10 && type < 1000) return ENTITY_KIND.npc;
  if (type === 1000) return ENTITY_KIND.effect;
  if (type < 1 || type >= 2000) return ENTITY_KIND.unknown;
  return ENTITY_KIND.other;
}

function readEntity(memory, address) {
  const unknownFields = [];
  const type = memory.i32(address + ENTITY.type);
  const record = memory.bytes(address, type === 1 ? PLAYER.recordBytes : ENTITY.coreBytes);
  const flagsLow = u32At(record, ENTITY.flagsLow);
  const flagsHigh = u32At(record, ENTITY.flagsHigh);
  const entity = {
    address,
    kind: entityKind(type),
    type,
    variant: i32At(record, ENTITY.variant),
    subtype: i32At(record, ENTITY.subtype),
    spawnerType: i32At(record, ENTITY.spawnerType),
    active: boolByte(memory, address + ENTITY.active, 'active', unknownFields),
    exists: boolByte(memory, address + ENTITY.exists, 'exists', unknownFields),
    dead: boolByte(memory, address + ENTITY.dead, 'dead', unknownFields),
    position: {
      x: finiteAt(record, ENTITY.positionX, 15000, 'position.x', unknownFields),
      y: finiteAt(record, ENTITY.positionY, 15000, 'position.y', unknownFields),
    },
    velocity: {
      x: finiteAt(record, ENTITY.velocityX, 500, 'velocity.x', unknownFields),
      y: finiteAt(record, ENTITY.velocityY, 500, 'velocity.y', unknownFields),
    },
    radius: finiteAt(record, ENTITY.radius, 1000, 'radius', unknownFields),
    hp: finiteAt(record, ENTITY.hp, 1e9, 'hp', unknownFields),
    damage: finiteAt(record, ENTITY.damage, 10000, 'damage', unknownFields),
    collision: i32At(record, ENTITY.collision),
    parent: u32At(record, ENTITY.parent),
    seed: u32At(record, ENTITY.seed),
    flags: {
      low: flagsLow,
      high: flagsHigh,
      hex: `${flagsHigh.toString(16).padStart(8, '0')}${flagsLow.toString(16).padStart(8, '0')}`.toUpperCase(),
    },
    friendly: (flagsLow & ((1 << 29) | (1 << 8))) !== 0,
    noTarget: (flagsLow & (1 << 4)) !== 0,
    invulnerable: memory.u8(address + 0x3b0) !== 0,
    unknownFields,
  };

  const multiplier = type === 1 ? 60 : 30;
  if (entity.velocity.x != null) entity.velocity.x *= multiplier;
  if (entity.velocity.y != null) entity.velocity.y *= multiplier;

  if (type === 1) {
    const hpA = i32At(record, PLAYER.hpA);
    const hpB = i32At(record, PLAYER.hpB);
    const health = hpA + hpB;
    const fireDelay = finiteAt(record, PLAYER.fireDelay, 1000, 'fireDelay', unknownFields);
    entity.controller = i32At(record, PLAYER.controller);
    entity.character = i32At(record, PLAYER.character);
    entity.health = health;
    entity.hp = health;
    entity.fireDelay = fireDelay;
    entity.damageCooldown = i32At(record, PLAYER.damageCooldown);
    entity.controls = memory.u8(address + PLAYER.controlsFlag) !== 0 &&
      memory.i32(address + PLAYER.controlsCooldown) <= 0;
  }
  if (type >= 10 && type < 1000) {
    entity.targetable = entity.active && entity.exists && !entity.dead &&
      !entity.friendly && !entity.noTarget && !entity.invulnerable &&
      entity.collision !== 0 && entity.collision !== 1 && entity.hp > 0;
  }
  return entity;
}

function classifyCollision(cost) {
  return cost >= 3000 && cost < 4000 ? 1 : cost >= 1000 ? 3 : 0;
}

function readGrid(memory, room, width, height) {
  const count = width * height;
  const greedWaveTimer = memory.i32(room + ROOM.greedWaveTimer);
  const greedButtonArmed = greedWaveTimer >= 0;
  if (width < 5 || width > 40 || height < 5 || height > 35 || count > ROOM.gridSlots) {
    throw new Error('room dimensions differ');
  }

  // One snapshot of the current grid pointer vector.
  const pointerBytes = memory.bytes(room + ROOM.grid, count * 4);
  const costs = memory.bytes(room + ROOM.gridCosts, count * 4);
  const cells = [];
  const unknownFields = [];
  for (let index = 0; index < count; index += 1) {
    const address = u32At(pointerBytes, index * 4);
    const collisionCost = i32At(costs, index * 4);
    const cell = {
      index,
      x: index % width,
      y: Math.floor(index / width),
      address: address || null,
      type: null,
      variant: null,
      state: null,
      collision: classifyCollision(collisionCost),
      destructible: false,
      danger: false,
      unknownFields: [],
    };
    if (address) {
      const record = memory.bytes(address, GRID_CELL.recordBytes);
      cell.type = i32At(record, GRID_CELL.type);
      cell.variant = i32At(record, GRID_CELL.variant);
      cell.state = i32At(record, GRID_CELL.state);
      cell.collision = i32At(record, GRID_CELL.collision);
      if (cell.type < 0 || cell.type > 100 || cell.collision < 0 || cell.collision > 6) {
        cell.unknownFields.push('gridRecord');
      }
      cell.destructible = cell.type === 14 || (cell.type === 13 && cell.variant === 0);
      cell.danger = cell.type === 8 || cell.type === 9 ||
        (cell.type === 20 && greedButtonArmed);
    }
    cells.push(cell);
  }
  return { width, height, cells, unknownFields };
}

export function readObservation(module) {
  const heap = asUint8Array(module);
  const memory = new SnapshotMemory(heap);
  const observation = emptyObservation();

  if (!memory.has(GLOBAL.game, 4) || !memory.has(GLOBAL.manager, 4)) {
    observation.error = 'engine pointer globals are outside the current HEAPU8';
    return observation;
  }

  const managerPointer = memory.u32(GLOBAL.manager);
  const managerMode = managerPointer && memory.has(managerPointer + MANAGER.mode, 4)
    ? memory.i32(managerPointer + MANAGER.mode)
    : null;
  observation.game = {
    pointer: null,
    managerPointer: managerPointer || null,
    managerMode,
    selectedCharacter: managerPointer &&
      memory.has(managerPointer + MANAGER.selectedCharacter, 4)
      ? memory.i32(managerPointer + MANAGER.selectedCharacter)
      : null,
    runMode: managerPointer && memory.has(managerPointer + MANAGER.runMode, 4)
      ? memory.i32(managerPointer + MANAGER.runMode)
      : null,
    selectedDifficulty: managerPointer &&
      memory.has(managerPointer + MANAGER.difficulty, 4)
      ? memory.i32(managerPointer + MANAGER.difficulty)
      : null,
    menu: managerPointer && memory.has(managerPointer + MANAGER.menuDw, 4)
      ? {
          core: memory.i32(managerPointer + MANAGER.menuCore),
          f0: memory.f32(managerPointer + MANAGER.menuF0),
          f1: memory.f32(managerPointer + MANAGER.menuF1),
          f2: memory.f32(managerPointer + MANAGER.menuF2),
          dw: memory.i32(managerPointer + MANAGER.menuDw),
        }
      : null,
  };

  const game = memory.u32(GLOBAL.game);
  if (!game) {
    observation.state = managerPointer && managerMode !== null && managerMode !== 2 ? 'menu' : 'empty';
    return observation;
  }
  observation.game.pointer = game;
  if (managerMode !== 2) {
    observation.state = 'menu';
    return observation;
  }

  try {
    const room = memory.u32(game + GAME.room);
    const frame = memory.i32(game + GAME.frame);
    const transition = memory.i32(game + GAME.transition) !== 0 ||
      memory.i32(game + GAME.transitionGuard) !== 0;
    const pauseWords = GAME.pauseWords.map((offset) => memory.i32(game + offset));
    const paused = pauseWords.some((value) => value !== 0);
    observation.frame = frame;
    observation.game.frame = frame;
    observation.game.stage = memory.i32(game + GAME.stage);
    observation.game.stageType = memory.i32(game + GAME.stageType);
    observation.game.difficulty = memory.i32(game + GAME.difficulty);
    observation.game.roomIndex = memory.i32(game + GAME.roomIndex);
    observation.game.greedWaveIndex = memory.i32(game + GAME.greedWaveIndex);
    observation.game.transition = transition;
    observation.game.paused = paused;

    if (!room) {
      observation.state = transition ? 'transition' : 'empty';
      return observation;
    }

    const descriptor = memory.u32(room + ROOM.descriptor);
    const roomConfig = descriptor ? memory.u32(descriptor + ROOM_CONFIG.data) : 0;
    const width = memory.i32(room + ROOM.width);
    const height = memory.i32(room + ROOM.height);
    const clearFlags = descriptor && memory.has(descriptor + DESCRIPTOR.flags, 4)
      ? memory.u32(descriptor + DESCRIPTOR.flags)
      : null;
    const clearCount = descriptor && memory.has(descriptor + DESCRIPTOR.clearCount, 2)
      ? memory.u16(descriptor + DESCRIPTOR.clearCount)
      : null;
    observation.cleared = clearFlags == null ? null : (clearFlags & 1) !== 0;
    observation.clear = observation.cleared;
    observation.room = {
      pointer: room,
      descriptor: descriptor || null,
      type: roomConfig ? memory.i32(roomConfig + ROOM_CONFIG.type) : null,
      variant: roomConfig ? memory.i32(roomConfig + ROOM_CONFIG.variant) : null,
      shape: roomConfig ? memory.i32(roomConfig + ROOM_CONFIG.shape) : null,
      width,
      height,
      clear: observation.cleared,
      cleared: observation.cleared,
      clearFlags,
      clearCount,
      clearDelay: memory.i32(room + ROOM.clearDelay),
      aliveA: memory.i32(room + ROOM.aliveA),
      aliveB: memory.i32(room + ROOM.aliveB),
      bossCountA: memory.i32(room + ROOM.bossCountA),
      bossCountB: memory.i32(room + ROOM.bossCountB),
      bossSnapshot: memory.i32(room + ROOM.bossSnapshot),
      greedWaveTimer: memory.i32(room + ROOM.greedWaveTimer),
    };

    const playerPointers = readPlayerPointers(memory, game);
    const partitionPointers = readPartitionPointers(memory, room);
    const addresses = [...new Set([...playerPointers, ...partitionPointers].filter(Boolean))];
    const entities = addresses.map((address) => readEntity(memory, address));
    const players = entities.filter((entity) => playerPointers.includes(entity.address));
    observation.playerCount = players.length;
    observation.player = players[0] ?? null;
    observation.entities = entities;
    observation.dead = observation.player?.dead ?? null;

    const grid = readGrid(memory, room, width, height);
    observation.grid = grid.cells;
    observation.room.grid = grid.cells;
    observation.room.unknownFields = grid.unknownFields;

    if (playerPointers.some((address) => !partitionPointers.includes(address))) {
      throw new Error('player is missing from the Room entity partitions');
    }
    if (managerMode !== 2) observation.state = 'menu';
    else if (transition) observation.state = 'transition';
    else if (paused) observation.state = 'paused';
    else if (players.length === 0) observation.state = 'empty';
    else if (players.length !== 1) observation.state = 'ambiguous';
    else if (observation.dead !== false) observation.state = observation.dead ? 'dead' : 'invalid';
    else observation.state = 'ready';
    observation.ready = observation.state === 'ready';
  } catch (error) {
    observation.state = 'invalid';
    observation.ready = false;
    observation.error = error instanceof Error ? error.message : String(error);
  }

  return observation;
}
