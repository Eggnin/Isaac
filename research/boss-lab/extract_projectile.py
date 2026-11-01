from pathlib import Path
import re,sys
LAB=Path(__file__).resolve().parent
sys.path.insert(0,str(LAB.parent/'the-browsing-of-isaac/scripts/recomp/host'))
from pe import PE
pe=PE(Path('D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe'))
signature='55 8b ec 6a ff 68 ?? ?? ?? ?? 64 a1 ?? ?? ?? ?? 50 81 ec a8 05 00 00'
pattern=b''.join(b'.' if b=='??' else re.escape(bytes([int(b,16)])) for b in signature.split())
matches=list(re.finditer(pattern,pe.data,re.S))
if len(matches)==1:
    offset=matches[0].start()
    section=next(s for s in pe.sections if s.raw_offset<=offset<s.raw_offset+s.raw_size)
    va=pe.image_base+section.rva+offset-section.raw_offset
else:
    # Old REPENTOGON prologue differs in J460. Resolve the actual runtime
    # vtable Update slot captured from native type-9 entities instead.
    import json
    frame=json.loads((LAB/'results/projectile-frame.json').read_text(encoding='utf-8'))
    values={e['native_update'] for e in frame['entities'] if e['type']==9}
    assert len(values)==1,values
    va=values.pop()
needle=f'void sub_{va:08x}('
print('Projectile::Update',hex(va))
for path in (LAB.parent/'the-browsing-of-isaac/output/recomp/lift/original-j460').glob('lifted_*.c'):
    s=path.read_text();i=s.find(needle)
    if i<0:continue
    j=s.find('\nvoid sub_',i+len(needle));s=s[i:j if j>=0 else len(s)]
    (LAB/'data/projectile-update-native.c').write_text(s)
    print(path.name,len(s));break
