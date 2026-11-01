from pathlib import Path
import sys,struct,sqlite3,json
LAB=Path(__file__).resolve().parent
sys.path.insert(0,str(LAB.parent/'the-browsing-of-isaac/scripts/recomp/host'))
from pe import PE
pe=PE(Path('D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe'))
db=sqlite3.connect(str(LAB.parent/'the-browsing-of-isaac/output/decomp/7122ac287799/index/pe-index.sqlite'))
results=[]
for value in [.775,1.2,.225]:
    needle=struct.pack('<f',value)
    for section in pe.sections:
        if section.rva<0x700000:continue
        data=pe.data[section.raw_offset:section.raw_offset+section.raw_size]
        index=data.find(needle)
        while index>=0:
            address=pe.image_base+section.rva+index
            refs=db.execute('select src from xref where dst=?',(address,)).fetchall()
            if refs:results.append({'value':value,'address':hex(address),'refs':[hex(r[0]) for r in refs]})
            index=data.find(needle,index+1)
(LAB/'data/player-motion-constants.json').write_text(json.dumps(results,indent=2))
print(json.dumps(results))
