"""Find selected public REPENTOGON signatures in the unmodified local EXE."""
from pathlib import Path
import json
import re
import sys

root = Path(__file__).resolve().parent
sys.path.insert(0, str(root / 'the-browsing-of-isaac/scripts/recomp/host'))
from pe import PE, disasm
pe = PE('D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe')
zhl = (root / 'repentogon-reference/libzhl/functions/EntityNPC.zhl').read_text()
selected = ['Hornfel_UpdateAI', 'FireProjectiles', 'FireBossProjectiles', 'CheckPlayerProximity']
results = []
for pattern, declaration in re.findall(r'"([0-9a-fA-F?]+)"\s*:\s*([^;]+);', zhl):
    if not any(name in declaration for name in selected):
        continue
    signature = b''.join(b'.' if pattern[i:i+2] == '??' else re.escape(bytes.fromhex(pattern[i:i+2]))
                         for i in range(0, len(pattern), 2))
    hits = []
    for section in pe.sections:
        if not section.is_exec:
            continue
        data = pe.data[section.raw_offset:section.raw_offset + section.raw_size]
        for match in re.finditer(signature, data, re.S):
            va = pe.image_base + section.rva + match.start()
            hits.append({'va': hex(va), 'instructions': [f'{i.address:08x}: {i.mnemonic} {i.op_str}' for i in disasm(pe, va, 16)]})
    results.append({'declaration': declaration.strip(), 'matches': hits})
(root / 'npc-signature-check.json').write_text(json.dumps(results, indent=2), encoding='utf-8')
print(json.dumps(results, indent=2))
