from pathlib import Path
import sys,sqlite3
LAB=Path(__file__).resolve().parent
sys.path.insert(0,str(LAB.parent/'the-browsing-of-isaac/scripts/recomp/host'))
from pe import PE
pe=PE(Path('D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe'))
db=sqlite3.connect(str(LAB.parent/'the-browsing-of-isaac/output/decomp/7122ac287799/index/pe-index.sqlite'))
name=sys.argv[1] if len(sys.argv)>1 else 'CurvingStrength'
offset=pe.data.find(name.encode()+b'\0')
assert offset>=0,name
section=next(s for s in pe.sections if s.raw_offset<=offset<s.raw_offset+s.raw_size)
va=pe.image_base+section.rva+offset-section.raw_offset
refs=db.execute('select src from xref where dst=?',(va,)).fetchall()
print(name,hex(va),[hex(r[0]) for r in refs])
for (address,) in refs[:2]:
    print('\n'.join(f'{v:08x} {m} {o}' for v,m,o in db.execute('select va,mn,ops from insn where va>=? and va<?',(address-50,address+60))))
