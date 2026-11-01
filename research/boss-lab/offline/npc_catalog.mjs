import { readFileSync } from 'node:fs';

const catalogPath = new URL('../../data/npc/engine_npc_entity_catalog.tsv', import.meta.url);

function parseCatalog(text) {
  const [header, ...lines] = text.replace(/^\uFEFF/, '').trimEnd().split(/\r?\n/);
  const columns = header.split('\t');
  return lines.map(line => {
    const values = line.split('\t');
    const row = Object.fromEntries(columns.map((column, index) => [column, values[index] ?? '']));
    const [type, variant, subtype] = row.key.split('.').map(Number);
    return {
      key: row.key,
      type,
      variant,
      subtype,
      name: row.name_zh,
      category: row.category,
      role: row.role,
      configName: row.entity_config_name,
    };
  });
}

export const NPC_CONFIGS = Object.freeze(
  parseCatalog(readFileSync(catalogPath, 'utf8')).map(Object.freeze),
);

export const NPC_PROBE_ROOMS = Object.freeze({
  narrow: Object.freeze({
    room: 's.boss.3702',
    width: 15,
    height: 16,
    description: 'original tall narrow boss room',
  }),
  long: Object.freeze({
    room: 's.boss.3700',
    width: 28,
    height: 9,
    description: 'original wide long boss room',
  }),
});
