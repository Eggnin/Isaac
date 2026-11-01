"""Resolve the documented getter signature against the actual J460 binary."""
from pathlib import Path
import sys,re,sqlite3,json
LAB=Path(__file__).resolve().parent
sys.path.insert(0,str(LAB.parent/'the-browsing-of-isaac/scripts/recomp/host'))
from pe import PE
pe=PE(Path('D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe'))
signature='55 8b ec 83 e4 f8 83 ec 18 80 7d ?? 00'
pattern=b''.join(b'.' if b=='??' else re.escape(bytes([int(b,16)])) for b in signature.split())
addresses=[]
for match in re.finditer(pattern,pe.data,re.S):
    section=next(s for s in pe.sections if s.raw_offset<=match.start()<s.raw_offset+s.raw_size)
    addresses.append(pe.image_base+section.rva+match.start()-section.raw_offset)
print('GetTearMovementInheritance candidates',*[hex(a) for a in addresses])
db=sqlite3.connect(str(LAB.parent/'the-browsing-of-isaac/output/decomp/7122ac287799/index/pe-index.sqlite'))
assert len(addresses)==1,addresses
start=addresses[0]
end=db.execute('select end from func where start=?',(start,)).fetchone()[0]
rows=db.execute('select va,mn,ops from insn where va>=? and va<?',(start,end)).fetchall()
(LAB/'data/tear-inheritance-native.asm').write_text('\n'.join(f'{v:08x} {mn} {ops}' for v,mn,ops in rows))
constants={}
for _,_,ops in rows:
    for raw in re.findall(r'\[0x([0-9a-f]+)\]',ops):
        address=int(raw,16)
        if 0xba0000<=address<0xbc0000:
            import struct
            constants[raw]=struct.unpack('<f',pe.read_at_va(address,4))[0]
print('instructions',len(rows),'constants',json.dumps(constants))
