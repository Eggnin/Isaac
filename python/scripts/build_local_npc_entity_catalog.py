"""Build a J460 NPC catalog that preserves the Wiki monster roster and adds other native NPC definitions."""
import argparse
import json
from pathlib import Path
import xml.etree.ElementTree as ET


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_WIKI_CATALOG = ROOT / 'src' / 'engine_monster_catalog.tsv'
DEFAULT_OUTPUT = ROOT / 'src' / 'engine_npc_entity_catalog.tsv'


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--entities-xml', type=Path, required=True)
    parser.add_argument('--wiki-catalog', type=Path, default=DEFAULT_WIKI_CATALOG)
    parser.add_argument('--output', type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    wiki_rows = [line.split('\t') for line in args.wiki_catalog.read_text(encoding='utf-8').splitlines()[1:] if line]
    wiki = {row[0]: row[1:] for row in wiki_rows}
    entities = {}
    for entity in ET.parse(args.entities_xml).getroot().findall('entity'):
        identity = entity.attrib
        if not identity.get('id', '').isdigit() or not 10 <= int(identity['id']) <= 999:
            continue
        key = '.'.join((identity['id'], identity.get('variant', '0'), identity.get('subtype', '0')))
        if key in entities:
            raise ValueError(f'Duplicate local NPC identity: {key}')
        entities[key] = identity

    missing = sorted(set(wiki) - set(entities))
    if missing:
        raise ValueError(f'Local J460 entities2.xml is missing Wiki NPC identities: {missing[:20]}')

    rows = []
    for key in sorted(entities, key=lambda value: tuple(int(part) for part in value.split('.'))):
        entity = entities[key]
        local_name = entity.get('name', '')
        if key in wiki:
            name_zh, category, role = wiki[key][:3]
        else:
            name_zh, category, role = '', 'unlisted_npc', 'unlisted_npc'
        rows.append('\t'.join((key, name_zh, category, role, local_name)))

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text('key\tname_zh\tcategory\trole\tentity_config_name\n' +
                           '\n'.join(rows) + '\n', encoding='utf-8')
    print(json.dumps({
        'output': str(args.output),
        'wiki_monster_roster_entries': len(wiki),
        'local_npc_entity_definitions': len(entities),
        'supplemental_unlisted_npc_definitions': len(entities) - len(wiki),
    }, ensure_ascii=False, indent=2))


if __name__ == '__main__':
    main()
