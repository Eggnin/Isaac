import { openSync, writeSync, closeSync, writeFileSync } from 'node:fs';
import { readObservation } from './training_observer.mjs';

export function attachRecorder(module) {
  const path = process.env.ISAAC_OBSERVATION_LOG;
  if (!path) throw new Error('ISAAC_OBSERVATION_LOG is required');
  const fd = openSync(path, 'w');
  const started = performance.now();
  const rooms = new Map();
  let lastKey = '', snapshots = 0, invalid = 0, run = 1, previousFrame = null;
  const priorPoll = module.isaacInputPoll ?? (() => 0);
  module.isaacInputPoll = (presented, out) => {
    const obs = readObservation(module);
    if (obs.frame !== null) {
      if (previousFrame !== null && obs.frame < previousFrame) run++;
      previousFrame = obs.frame;
    }
    const roomKey = obs.game && obs.room
      ? `${run}:${obs.game.stage}:${obs.game.stageType}:${obs.game.roomIndex}:${obs.room.pointer}` : null;
    const key = `${roomKey}:${obs.frame}:${obs.state}`;
    if (key !== lastKey) {
      lastKey = key;
      snapshots++;
      invalid += obs.state === 'invalid';
      if (roomKey && obs.frame !== null) {
        const record = rooms.get(roomKey) ?? {
          key: roomKey, firstFrame: obs.frame, lastFrame: obs.frame,
          combatSeen: false, completed: false, died: false, peakNPCs: 0,
          peakTears: 0, peakProjectiles: 0, damageEvents: [],
          startHealth: null, lastHealth: null,
        };
        record.lastFrame = obs.frame;
        const live = obs.entities.filter(e => e.dead === false && e.exists !== false);
        const npcs = live.filter(e => e.kind === 'npc');
        record.peakNPCs = Math.max(record.peakNPCs, npcs.length);
        record.peakTears = Math.max(record.peakTears, live.filter(e => e.type === 2).length);
        record.peakProjectiles = Math.max(record.peakProjectiles, live.filter(e => e.type === 9 || e.type === 7).length);
        if (obs.ready && !obs.cleared && npcs.length) record.combatSeen = true;
        if (record.combatSeen && obs.ready && obs.cleared === true) record.completed = true;
        record.died ||= obs.dead === true;
        const hp = obs.player?.health;
        if (Number.isFinite(hp)) {
          if (record.startHealth === null) record.startHealth = hp;
          if (record.lastHealth !== null && hp < record.lastHealth)
            record.damageEvents.push({ frame: obs.frame, before: record.lastHealth, after: hp });
          record.lastHealth = hp;
        }
        rooms.set(roomKey, record);
      }
      writeSync(fd, JSON.stringify({ presented, elapsedMs: performance.now() - started, observation: obs }) + '\n');
    }
    return priorPoll(presented, out);
  };
  process.once('exit', () => {
    closeSync(fd);
    const summary = { schema: 'isaac-original-room-evidence/1', snapshots, invalidSnapshots: invalid,
      elapsedMs: performance.now() - started, rooms: [...rooms.values()] };
    writeFileSync(`${path}.summary.json`, JSON.stringify(summary, null, 2));
  });
}
