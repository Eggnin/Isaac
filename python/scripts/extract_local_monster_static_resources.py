"""Extract the local game's roster-referenced entities2.xml and ANM2 files without modifying game files."""
import argparse
import hashlib
import json
from pathlib import Path
import struct
import xml.etree.ElementTree as ET
import zlib


ROOT = Path(__file__).resolve().parents[1]
CATALOG_PATH = ROOT / 'src' / 'engine_monster_catalog.tsv'
RECORD = struct.Struct('<IIIII')
HEADER = struct.Struct('<7scIH')
MASK32 = 0xFFFFFFFF


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--packed-dir', type=Path, required=True,
                        help='The local game resources/packed directory; input archives are read only.')
    parser.add_argument('--output-dir', type=Path, required=True,
                        help='Project output directory for extracted XML, ANM2 files, and manifest.')
    parser.add_argument('--catalog', type=Path, default=CATALOG_PATH)
    args = parser.parse_args()

    catalog = {
        row[0]: {'name_zh': row[1], 'category': row[2], 'role': row[3] if len(row) > 3 else row[2]}
        for row in (line.split('\t') for line in args.catalog.read_text(encoding='utf-8').splitlines()[1:])
        if row
    }
    archives = sorted(args.packed_dir.glob('*.a'))
    index = {}
    archive_types = {}
    for archive in archives:
        with archive.open('rb') as source:
            header = source.read(HEADER.size)
            if len(header) != HEADER.size:
                continue
            signature, kind, record_start, record_count = HEADER.unpack(header)
            if signature != b'ARCH000':
                continue
            if record_start + record_count * RECORD.size > archive.stat().st_size:
                raise ValueError(f'Archive record table exceeds file size: {archive}')
            archive_types[archive.name] = kind[0]
            source.seek(record_start)
            for record_index in range(record_count):
                row = RECORD.unpack(source.read(RECORD.size))
                index.setdefault(row[0], []).append((archive, kind[0], record_index, row))

    entity_record = _select_record(index, 'entities2.xml', ('repentance.a', 'afterbirthp.a', 'afterbirth.a'))
    entity_bytes = _decode_record(entity_record)
    entities_root = ET.fromstring(entity_bytes)
    if entities_root.tag != 'entities':
        raise ValueError(f'Unexpected entities XML root: {entities_root.tag}')

    roster_entities = []
    for entity in entities_root.findall('entity'):
        key = '.'.join((entity.get('id', '-1'), entity.get('variant', '0'), entity.get('subtype', '0')))
        if key in catalog:
            roster_entities.append((key, entity))
    matched_keys = {key for key, _ in roster_entities}
    if matched_keys != set(catalog):
        missing = sorted(set(catalog) - matched_keys)
        raise ValueError(f'Local entities2.xml does not cover the catalog; missing={missing[:20]}')

    animations_root = entities_root.get('anm2root', '')
    animation_paths = sorted({
        (animations_root + entity.get('anm2path', '')).replace('\\', '/')
        for _, entity in roster_entities if entity.get('anm2path')
    })
    if len({Path(path).name.lower() for path in animation_paths}) != len(animation_paths):
        raise ValueError('Roster ANM2 paths contain colliding file names; use a path-preserving output layout.')

    args.output_dir.mkdir(parents=True, exist_ok=True)
    animation_dir = args.output_dir / 'animations'
    animation_dir.mkdir(parents=True, exist_ok=True)
    entity_path = args.output_dir / 'entities2.xml'
    entity_path.write_bytes(entity_bytes)

    extracted_animations = []
    for animation_path in animation_paths:
        record = _select_record(index, animation_path, ('repentance.a', 'afterbirthp.a', 'afterbirth.a'))
        data = _decode_record(record)
        root = ET.fromstring(data)
        destination = animation_dir / Path(animation_path).name.lower()
        destination.write_bytes(data)
        extracted_animations.append({
            'path': animation_path,
            'output': destination.relative_to(args.output_dir).as_posix(),
            'xml_root': root.tag,
            'size': len(data),
            'sha256': hashlib.sha256(data).hexdigest(),
            'archive': record[0].name,
            'archive_record_index': record[2],
            'archive_checksum_field': record[3][4],
        })

    source_archives = []
    for archive_name in sorted({entity_record[0].name, *(entry['archive'] for entry in extracted_animations)}):
        archive = args.packed_dir / archive_name
        source_archives.append({
            'name': archive.name,
            'size': archive.stat().st_size,
            'sha256': _sha256(archive),
        })
    manifest = {
        'format': 'isaac-local-monster-static-resources-v1',
        'input_packed_dir': str(args.packed_dir),
        'archive_types': archive_types,
        'source_archives': source_archives,
        'entities_xml': {
            'output': entity_path.relative_to(args.output_dir).as_posix(),
            'size': len(entity_bytes),
            'sha256': hashlib.sha256(entity_bytes).hexdigest(),
            'archive': entity_record[0].name,
            'archive_record_index': entity_record[2],
            'archive_checksum_field': entity_record[3][4],
            'roster_entries': len(catalog),
            'roster_entries_matched': len(matched_keys),
        },
        'animation_files': len(extracted_animations),
        'animation_bytes': sum(entry['size'] for entry in extracted_animations),
        'animations': extracted_animations,
        'limitations': [
            'Only roster-referenced entity definitions and ANM2 files are extracted.',
            'The archive checksum field is retained but not validated; the local checksum algorithm is not established.',
            'Chunked raw-DEFLATE records are supported; encrypted 1024-byte chunks fail explicitly.',
            'ANM2 names and triggers are static cues, not proof of runtime attack behavior.',
        ],
    }
    manifest_path = args.output_dir / 'manifest.json'
    manifest_path.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({
        'output_dir': str(args.output_dir),
        'entities_xml': manifest['entities_xml'],
        'animation_files': manifest['animation_files'],
        'animation_bytes': manifest['animation_bytes'],
        'manifest': str(manifest_path),
    }, ensure_ascii=False, indent=2))


def _select_record(index, resource_path, archive_preference):
    candidates = (f'resources-dlc3/{resource_path}', f'resources/{resource_path}')
    for candidate in candidates:
        records = index.get(_filename_hash(candidate), [])
        if not records:
            continue
        for preferred_archive in archive_preference:
            preferred = [record for record in records if record[0].name.lower() == preferred_archive]
            if preferred:
                return preferred[-1]
        return records[-1]
    raise FileNotFoundError(f'No archive record found for {resource_path}')


def _decode_record(record):
    archive, kind, _, row = record
    if kind != 2:
        raise ValueError(f'Unsupported archive compression type {kind}: {archive.name}')
    _, _, data_start, output_size, _ = row
    output = bytearray()
    encrypted = False
    with archive.open('rb') as source:
        source.seek(data_start)
        while len(output) < output_size:
            chunk_header = source.read(4)
            if len(chunk_header) != 4:
                raise EOFError(f'Truncated chunk header in {archive.name}')
            word = struct.unpack('<I', chunk_header)[0]
            chunk_size = word & 0x7FFFFFFF
            chunk = source.read(chunk_size)
            if len(chunk) != chunk_size:
                raise EOFError(f'Truncated archive chunk in {archive.name}')
            compressed_flag = bool(word & 0x80000000)
            if not encrypted and not compressed_flag and chunk_size == 0x400:
                encrypted = True
            if encrypted:
                raise ValueError(f'Encrypted archive chunk is unsupported: {archive.name}')
            decoded = zlib.decompressobj(-15).decompress(chunk)
            if not decoded:
                raise ValueError(f'Empty or invalid raw-DEFLATE chunk in {archive.name}')
            output.extend(decoded)
    if len(output) < output_size:
        raise ValueError(f'Decoded record is short in {archive.name}: {len(output)} < {output_size}')
    return bytes(output[:output_size])


def _filename_hash(path):
    value = 0x1505
    for character in path:
        byte = ord(character)
        if 0x41 <= byte <= 0x5A:
            byte += 0x20
        if byte == 0x5C:
            byte = 0x2F
        value = ((value << 5) + value + byte) & MASK32
    return value


def _sha256(path):
    digest = hashlib.sha256()
    with path.open('rb') as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b''):
            digest.update(chunk)
    return digest.hexdigest()


if __name__ == '__main__':
    main()
