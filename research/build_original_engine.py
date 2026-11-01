"""Build the owned J460 game's original logic in an isolated WASM runtime."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import sqlite3
import struct
import subprocess
import sys

ROOT = Path(__file__).resolve().parent
REPO = ROOT / 'the-browsing-of-isaac'
EXE = Path('D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe')
INPUTS = ROOT / 'runtime-inputs'
OUT = REPO / 'output/recomp/lift/original-j460'
PYTHON = ROOT / 'wasm-validation-env/Scripts/python.exe'
LIFT = REPO / 'scripts/recomp/lift'
EXTRA_FUNCTION_STARTS = {
    0x00624DD0: 'Siren helper path indirect target; 55 8b ec at this address; linear index merged it into preceding embedded data',
}

def run(command):
    print(subprocess.list2cmdline([str(x) for x in command]), flush=True)
    subprocess.run([str(x) for x in command], cwd=REPO, check=True)

parser = argparse.ArgumentParser()
parser.add_argument('stage', choices=['inventory', 'lift', 'mechanics', 'build', 'training'])
parser.add_argument('--jobs', type=int, default=4)
args = parser.parse_args()
os.environ['PYTHONPATH'] = str(Path(sys.base_prefix) / 'Lib/site-packages')
os.environ['EMSDK'] = str(ROOT / 'emsdk')
os.environ['EMCC'] = str(ROOT / 'emsdk/upstream/emscripten/emcc.exe')
os.environ['EM_CONFIG'] = str(ROOT / 'emsdk/.emscripten')
OUT.mkdir(parents=True, exist_ok=True)

if args.stage == 'inventory':
    index = REPO / 'output/decomp/7122ac287799/index/pe-index.sqlite'
    with sqlite3.connect(index.resolve().as_uri() + '?mode=ro', uri=True) as db:
        starts = {row[0] for row in db.execute('SELECT start FROM func ORDER BY start')}
        instruction_starts = {row[0] for row in db.execute('SELECT va FROM insn')}
        escaped = {row[0] for row in db.execute(
            'SELECT DISTINCT x.dst FROM xref x JOIN insn i ON i.va=x.dst WHERE x.kind=?', ('addr',))}
        meta = dict(db.execute('SELECT key,value FROM meta'))
    assert meta['sha256'].lower() == hashlib.sha256(EXE.read_bytes()).hexdigest()
    sys.path.insert(0, str(REPO / 'scripts/recomp/host'))
    from pe import PE
    pe = PE(EXE)
    address_taken = set()
    # C++ vtables and CRT initializer tables contain code pointers without a
    # direct CALL site. Include only actual instruction boundaries from this
    # same hash's masked index, not arbitrary in-image numeric constants.
    for section in pe.sections:
        if section.name not in ('.rdata', '.data'):
            continue
        data = pe.data[section.raw_offset:section.raw_offset + section.raw_size]
        for (target,) in struct.iter_unpack('<I', data[:len(data) // 4 * 4]):
            if pe.is_text_va(target) and target in instruction_starts:
                address_taken.add(target)
    prior_count = len(starts)
    starts = sorted(starts | address_taken | escaped | set(EXTRA_FUNCTION_STARTS))
    (OUT / 'requests.txt').write_text(''.join(f'0x{va:08x}\n' for va in starts))
    (OUT / 'inventory-provenance.json').write_text(json.dumps({
        'exe': str(EXE), 'index': str(index), 'sha256': meta['sha256'],
        'method': 'masked Capstone index plus address-taken .rdata/.data code pointers; candidate starts, not a Ghidra inventory',
        'index_starts': prior_count, 'address_taken_targets': len(address_taken),
        'code_address_escape_targets': len(escaped),
        'extra_function_starts': {
            f'0x{va:08x}': reason for va, reason in EXTRA_FUNCTION_STARTS.items()
        },
        'requested_starts': len(starts),
    }, indent=2))
    print(f'{len(starts)} candidate starts', flush=True)
elif args.stage == 'lift':
    run([PYTHON, LIFT / 'lift_parallel.py', '--jobs', args.jobs,
         '--exe', EXE, '--va-file', OUT / 'requests.txt',
         '--imports', INPUTS / 'census/imports.json',
         '--shim-table', INPUTS / 'host/shim-table.json',
         '--hand-written', REPO / 'scripts/recomp/host/src/missing_fns.c',
         '--follow', '--dispatch', 'auto', '--max-insns', '100000',
         '--split-va', '0x18000', '--trace-va', '--out', OUT])
elif args.stage == 'mechanics':
    # Reuse the independently built, hash-matched instruction index rather than
    # changing the upstream canonical-binary hash or disabling its check.
    with sqlite3.connect((REPO / 'output/decomp/7122ac287799/index/pe-index.sqlite').resolve().as_uri() + '?mode=ro', uri=True) as db:
        meta = dict(db.execute('SELECT key,value FROM meta'))
        assert meta['sha256'].lower() == hashlib.sha256(EXE.read_bytes()).hexdigest()
        continuations = [va for (va,) in db.execute("SELECT va + size FROM insn WHERE mn='call'")]
    continuation_file = OUT / 'call_cont.txt'
    continuation_file.write_text(''.join(f'{va:08x}\n' for va in sorted(set(continuations))))
    run([PYTHON, LIFT / 'patch_reentry.py', '--dir', OUT, '--cont', continuation_file])
    # Only representation-preserving passes. The source-specific restorative
    # patches for the author's modified binary must not replace pristine bodies.
    sys.path.insert(0, str(LIFT))
    from lift_patches import apply_entry_first, apply_call_slim
    from split_giants import apply_split_giants
    changed = set(apply_entry_first(OUT))
    changed.update(apply_split_giants(OUT))
    changed.update(apply_call_slim(OUT))
    print(f'mechanical passes updated {len(changed)} translation units')
    run([PYTHON, LIFT / 'check_lifted.py', '--dir', OUT])
else:
    command = [PYTHON, LIFT / 'build_boot.py', '--dir', OUT, '--jobs', args.jobs,
               '--fast', '--no-lift-patches']
    if args.stage == 'training':
        # Keep this reproducible after a fresh lift. The original render body
        # remains available; environments opt in only via noRender=true.
        run([PYTHON, ROOT / 'enable_render_gate.py'])
        command.append('--training')
    run(command)
