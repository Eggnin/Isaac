"""Give the isolated engine more guest heap without moving any fixed regions."""
from pathlib import Path
import hashlib,json,os,re,shlex,shutil,subprocess
LAB=Path(__file__).resolve().parent
BASE=LAB/'frame-runtime'
OUT=LAB/'frame-runtime-heap400'
HOST=LAB.parent/'the-browsing-of-isaac/scripts/recomp/host'
EMCC=LAB.parent/'emsdk/upstream/emscripten/emcc.exe'
os.environ['EM_CONFIG']=str(LAB.parent/'emsdk/.emscripten')
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
OUT.mkdir(exist_ok=True)
for folder in ['include','obj']:
    (OUT/folder).mkdir(exist_ok=True)
    for source in (BASE/folder).iterdir():
        if source.is_file() and not (OUT/folder/source.name).exists():shutil.copy2(source,OUT/folder/source.name)
(OUT/'src').mkdir(exist_ok=True)
header=OUT/'include/isaac_host.h'
text=header.read_text()
heap_start=0x00e00000;heap_size=400*1024*1024;stack_bottom=0x19ff0000-0x100000
assert heap_start+heap_size<stack_bottom,'guest heap would overlap the stack'
text,n=re.subn(r'(#define ISAAC_HEAP_SIZE\s+)0x[0-9a-fA-F]+u[^\n]*',r'\g<1>0x19000000u /* 400 MiB, isolated long-battle runtime */',text)
assert n==1
header.write_text(text)
source=OUT/'src/host_shims_heap.c'
if not source.exists():shutil.copy2(HOST/'src/host_shims_heap.c',source)
obj=OUT/'obj/heap400-host_shims_heap.o'
subprocess.run([str(EMCC),'-O3','-w','-std=gnu11','-msimd128','-DRECOMP_MEM_CHECK=0','-DISAAC_TRAINING=1',
    '-sSUPPORT_LONGJMP=wasm','-I'+str(OUT/'include'),'-c',str(source),'-o',str(obj)],check=True)
args=shlex.split((BASE/'link.rsp').read_text())
shutil.copy2(BASE/'exports.json',OUT/'exports.json')
replacement_count=0
for index,arg in enumerate(args):
    if arg.endswith(('.o','.a')):
        if 'host_shims_heap' in Path(arg).name:args[index]=str(obj);replacement_count+=1
        else:args[index]=str(OUT/'obj'/Path(arg).name)
    elif arg.startswith('-sEXPORTED_FUNCTIONS='):args[index]='-sEXPORTED_FUNCTIONS=@'+str(OUT/'exports.json')
    elif index>0 and args[index-1]=='-o':args[index]=str(OUT/'boot.mjs')
assert replacement_count==1
(OUT/'link.rsp').write_text('\n'.join(shlex.quote(a.replace('\\','/')) for a in args))
subprocess.run([str(EMCC),'@'+str(OUT/'link.rsp')],check=True)
for name in ['boot_integration.mjs','explore.mjs','console_typing.mjs']:shutil.copy2(BASE/name,OUT/name)
(OUT/'manifest.json').write_text(json.dumps({'scope':'guest allocator capacity only; native game rules and fixed guest regions retained',
    'baseFrameWasm':sha(BASE/'boot.wasm'),'wasm':sha(OUT/'boot.wasm'),
    'guestHeapStart':heap_start,'guestHeapSize':heap_size,'guestHeapEnd':heap_start+heap_size,
    'guestStackBottom':stack_bottom,'modifiedHostSource':sha(source),'modifiedHostHeader':sha(header)},indent=2))
print('built',OUT/'boot.wasm',flush=True)
