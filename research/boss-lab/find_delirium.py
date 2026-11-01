from pathlib import Path
import importlib.util,sys,sqlite3,json
LAB=Path(__file__).resolve().parent
host=LAB.parent/'the-browsing-of-isaac/scripts/recomp/host'
sys.path.insert(0,str(host))
from pe import PE
pe=PE(Path('D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe'))
data=pe.data
needle=b'Changed Delirium form'
offset=data.find(needle)
va=None
for s in pe.sections:
    if s.raw_offset<=offset<s.raw_offset+s.raw_size:
        va=pe.image_base+s.rva+offset-s.raw_offset
print('offset',hex(offset),'VA',hex(va) if va else None)
db=sqlite3.connect(str(LAB.parent/'the-browsing-of-isaac/output/decomp/7122ac287799/index/pe-index.sqlite'))
if va:
    print('refs',db.execute('select src,dst,kind from xref where dst between ? and ?', (va-10,va+10)).fetchall())
    print('functions',db.execute('select start from func where start<=? order by start desc limit 4',(4878003,)).fetchall())
    print('schema',db.execute('pragma table_info(insn)').fetchall())
