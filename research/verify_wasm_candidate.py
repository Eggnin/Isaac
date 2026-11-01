"""Read-only comparison of the local game with the candidate port's PE layout."""
import hashlib
import json
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parent
REPO = ROOT / 'the-browsing-of-isaac'
sys.path.insert(0, str(REPO / 'scripts/recomp/host'))
from pe import PE, disasm
from boot_tables import walk_imports

game = Path('D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe')
pe = PE(game)
expected = {'.text': 0x1000, '.rdata': 0x718000, '.data': 0x7f8000}
checks = {
    'machine_x86': pe.machine == 0x14c,
    'image_base': pe.image_base == 0x400000,
    'image_size': pe.size_of_image == 0x8fe000,
    'iat_rva': pe.dirs['IAT'][0] == 0x718000,
    'iat_size': pe.dirs['IAT'][1] == 2600,
    **{f'section_{name}_rva': pe.section(name).rva == rva for name, rva in expected.items()},
    'text_virtual_size': pe.section('.text').virtual_size == 0x716134,
    'entry_matches_unpacked_target': pe.entry_va == 0xaefc46,
}
imports = walk_imports(pe)
probes = {}
for va in [0x423480, 0x40d040, 0x685bc0, 0x931050, 0xaefc46]:
    probes[hex(va)] = {
        'bytes': pe.read_at_va(va, 32).hex(),
        'instructions': [f'{i.address:08x}: {i.mnemonic} {i.op_str}' for i in disasm(pe, va, 8)]
    }
result = {
    'scope': 'disk inspection only; no execution, unpacking or game modification',
    'exe': str(game), 'size': len(pe.data),
    'sha256': hashlib.sha256(pe.data).hexdigest(),
    'entry_va': hex(pe.entry_va), 'checks': checks,
    'sections': [{k: getattr(s, k) for k in s.__slots__} for s in pe.sections],
    'imports': {k: imports[k] for k in ['descriptorCount', 'iatDirRva', 'iatDirSize']},
    'probes': probes,
}
out = ROOT / 'wasm-local-pe-check.json'
out.write_text(json.dumps(result, indent=2), encoding='utf-8')
print(json.dumps({'checks': checks, 'entry_va': hex(pe.entry_va), 'imports': result['imports'], 'report': str(out)}, indent=2))
