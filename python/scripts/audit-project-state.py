"""Compare the selected release with working sources without starting the game."""
import argparse
import hashlib
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


def audit():
    pointer = json.loads((ROOT / 'dist/Latest-Isaac-Program.json').read_text(encoding='utf-8-sig'))
    manifest = json.loads((ROOT / 'dist' / pointer['manifest']).read_text(encoding='utf-8-sig'))
    frozen = ROOT / 'build/releases' / pointer['executable'].removeprefix('IsaacExternalAssist').removesuffix('.exe') / 'source'
    sources = {}
    for name, expected in manifest['source_hashes'].items():
        sources[name] = {
            'expected_sha256': expected,
            'working_sha256': sha(ROOT / 'src' / name),
            'frozen_sha256': sha(frozen / name),
        }
    executable_hash = sha(ROOT / 'dist' / pointer['executable'])
    report = {
        'scope': 'Release identity and source hashes only; no gameplay or attack coverage validation.',
        'pointer': pointer,
        'executable_sha256': executable_hash,
        'executable_matches_manifest': executable_hash is not None and executable_hash == manifest['sha256'],
        'version_matches_manifest': pointer['version'] == manifest['version'],
        'frozen_source_directory': str(frozen.relative_to(ROOT)),
        'source_entries': len(sources),
        'frozen_source_mismatches': [name for name, row in sources.items()
                                     if row['frozen_sha256'] != row['expected_sha256']],
        'working_source_divergence': [name for name, row in sources.items()
                                      if row['working_sha256'] != row['expected_sha256']],
        'working_files_outside_manifest': sorted(path.name for path in (ROOT / 'src').iterdir()
                                                if path.is_file() and path.name not in sources),
        'sources': sources,
    }
    return report


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest() if path.is_file() else None


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, help='Optional report path; default prints only.')
    args = parser.parse_args()
    report = audit()
    document = json.dumps(report, ensure_ascii=False, indent=2) + '\n'
    if args.output:
        args.output.write_text(document, encoding='utf-8')
    print(document, end='')
    raise SystemExit(0 if report['executable_matches_manifest'] and report['version_matches_manifest']
                     and not report['frozen_source_mismatches'] else 1)
