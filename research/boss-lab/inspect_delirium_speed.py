"""Keep native instructions and constants for the observed fast contact step."""
from pathlib import Path
import sqlite3,sys,struct,json
LAB=Path(__file__).resolve().parent
sys.path.insert(0,str(LAB.parent/'the-browsing-of-isaac/scripts/recomp/host'))
from pe import PE
pe=PE(Path('D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe'))
db=sqlite3.connect(str(LAB.parent/'the-browsing-of-isaac/output/decomp/7122ac287799/index/pe-index.sqlite'))
rows=db.execute('select va,mn,ops from insn where va>=? and va<?',(0x4a9860,0x4aa8ca)).fetchall()
(LAB/'data/delirium-speed-native.asm').write_text('\n'.join(f'{v:08x} {m} {o}' for v,m,o in rows))
case=pe.read_at_va(0x4aa924+63-19,1)[0]
report={'function':'0x4a9860','famineCase':hex(pe.u32_at_va(0x4aa8cc+case*4)),
 'constants':{hex(a):struct.unpack('<f',pe.read_at_va(a,4))[0] for a in [0xbaa6fc,0xbaa528]},
 'scope':'native control flow evidence; pending frame-by-frame calibration',
 'controlFields':['+be0/+be4 packed counters','+380 current HP','+384 max HP'],
 'interpretation':[
   'aggression truncates 3*(1-clamped HP ratio); a nonzero packed timer overrides loop count to 3',
   'packed counter must exceed 4*loop count before extra movement executes',
   'Famine case captures velocity * 1.5 * loop count / 3',
   'iterations 1 through loop count add the captured displacement to position',
   'for count 3 this adds 4.5 nominal velocity steps, alongside ordinary movement',
   'native AI calls within the loop can also change state; this is not a complete future AI model']}
(LAB/'data/delirium-speed-notes.json').write_text(json.dumps(report,indent=2))
print(json.dumps(report))
