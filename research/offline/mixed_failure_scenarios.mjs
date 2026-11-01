import { NPC_CONFIGS } from './npc_catalog.mjs';

const catalog = new Map(NPC_CONFIGS.map(entry => [entry.key, entry]));
const target = key => {
  const entry = catalog.get(key);
  if (!entry) throw new Error(`unknown mixed-scenario target ${key}`);
  return entry;
};

function cleanupKeeping(keys) {
  const keep = keys.map(key => Number(key.split('.')[0]))
    .map(type => `[${type}]=true`)
    .join(',');
  return `lua local k={${keep}} for _,e in ipairs(Isaac.GetRoom():GetEntities()) do if ((e.Type>=10 and e.Type<1000) and not k[e.Type]) or e.Type==9 or e.Type==4 then e:Remove() end end`;
}

export const MIXED_FAILURE_SCENARIOS = Object.freeze([
  {
    name: 'mixed-spiders-laser-jump-narrow',
    room: 'd.700',
    width: 15,
    height: 16,
    injected: true,
    targetKeys: ['284.0.0', '85.0.0', '94.0.0', '884.0.0', '203.0.0', '29.0.0'],
    spawnCommands: [
      'spawn 85.0.0',
      'spawn 94.0.0',
      'spawn 884.0.0',
      'spawn 203.0.0',
      'spawn 29.0.0',
    ],
  },
  {
    name: 'mixed-spiders-laser-jump-l-room',
    room: 'd.818',
    width: 28,
    height: 16,
    injected: true,
    targetKeys: ['10.1.0', '85.0.0', '884.0.0', '212.3.0', '54.0.0'],
    spawnCommands: [
      'spawn 85.0.0',
      'spawn 884.0.0',
      'spawn 212.3.0',
      'spawn 54.0.0',
    ],
  },
  {
    name: 'mixed-spiders-explosion-laser-jump',
    room: 'd.349',
    width: 15,
    height: 16,
    injected: true,
    targetKeys: ['11.1.0', '85.0.0', '94.0.0', '250.0.0', '203.0.0', '29.0.0'],
    spawnCommands: [
      'spawn 85.0.0',
      'spawn 94.0.0',
      'spawn 250.0.0',
      'spawn 203.0.0',
      'spawn 29.0.0',
    ],
  },
  {
    name: 'mixed-cross-stoney-laser-jump',
    room: 'd.985',
    width: 15,
    height: 9,
    injected: true,
    targetKeys: ['302.10.0', '203.0.0', '29.0.0', '85.0.0'],
    spawnCommands: [
      'spawn 302.10.0',
      'spawn 203.0.0',
      'spawn 29.0.0',
      'spawn 85.0.0',
    ],
  },
  {
    name: 'mixed-small-obstacle-room',
    room: 'd.980',
    width: 15,
    height: 9,
    injected: true,
    targetKeys: ['884.0.0', '203.0.0', '29.0.0'],
    spawnCommands: ['spawn 884.0.0', 'spawn 203.0.0', 'spawn 29.0.0'],
  },
  {
    name: 'known-gurdy-jr-death',
    room: 's.boss.3280',
    width: 15,
    height: 9,
    injected: false,
    targetKeys: ['99.0.0'],
    spawnCommands: [],
  },
  {
    name: 'known-cage-death',
    room: 's.boss.5060',
    width: 15,
    height: 9,
    injected: false,
    targetKeys: ['265.0.0'],
    spawnCommands: [],
  },
].map(scenario => Object.freeze({
  ...scenario,
  targets: scenario.targetKeys.map(target),
  postSpawnCommands: scenario.injected ? [cleanupKeeping(scenario.targetKeys)] : [],
})));
