export const ENEMY_SCENARIOS = Object.freeze([
  {
    name: 'Monstro',
    room: 's.boss.1010',
    targetNPC: 20,
    mechanics: ['contact', 'projectile', 'jump-landing'],
  },
  {
    name: 'Larry Jr.',
    room: 's.boss.1020',
    targetNPC: 19,
    mechanics: ['contact', 'split-segments'],
  },
  {
    name: 'Chub',
    room: 's.boss.1030',
    targetNPC: 28,
    mechanics: ['contact', 'jump-landing', 'summon'],
  },
  {
    name: 'Gurdy Jr.',
    room: 's.boss.3280',
    targetNPC: 99,
    mechanics: ['contact', 'charge', 'projectile', 'wall-bounce'],
  },
  {
    name: 'Famine',
    room: 's.boss.4010',
    targetNPC: 63,
    mechanics: ['contact', 'charge', 'projectile'],
  },
  {
    name: 'Duke of Flies',
    room: 's.boss.2010',
    targetNPC: 67,
    mechanics: ['contact', 'summon', 'swarm'],
  },
  {
    name: 'Blastocyst',
    room: 's.boss.2040',
    targetNPC: 74,
    mechanics: ['contact', 'explosive-split', 'projectile'],
  },
  {
    name: 'The Bloat',
    room: 's.boss.3300',
    targetNPC: 68,
    mechanics: ['contact', 'laser', 'jump-landing', 'creep', 'projectile-burst'],
  },
  {
    name: 'Loki',
    room: 's.boss.2030',
    targetNPC: 69,
    mechanics: ['contact', 'projectile', 'explosive-npc', 'summon'],
  },
  {
    name: 'Widow',
    room: 's.boss.3340',
    targetNPC: 100,
    mechanics: ['contact', 'jump-landing', 'summon'],
  },
  {
    name: 'The Cage',
    room: 's.boss.5060',
    targetNPC: 265,
    mechanics: ['contact', 'jump-landing', 'laser', 'creep', 'summon'],
  },
  {
    name: 'Pestilence',
    room: 's.boss.4020',
    targetNPC: 64,
    mechanics: ['contact', 'charge', 'projectile', 'summon'],
  },
]);
