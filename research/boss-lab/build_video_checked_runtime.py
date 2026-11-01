"""Bounds-instrument the failing native codec translation unit, separately."""
from pathlib import Path
import hashlib,json,os,shlex,shutil,subprocess,sys
LAB=Path(__file__).resolve().parent
BASE=LAB/'frame-runtime-heap400'
trace='--trace' in sys.argv
OUT=LAB/('frame-runtime-video-trace' if trace else 'frame-runtime-video-checked');OUT.mkdir(exist_ok=True)
os.environ['EM_CONFIG']=str(LAB.parent/'emsdk/.emscripten')
EMCC=LAB.parent/'emsdk/upstream/emscripten/emcc.exe'
source=LAB.parent/'the-browsing-of-isaac/output/recomp/lift/original-j460/lifted_071.c'
target=OUT/'lifted_071_checked.c'
text=source.read_text()
if trace:
 anchor='void sub_00abb750(CpuState *restrict s) {'
 assert text.count(anchor)==1
 probe=r'''
  if(!g_reentry_eip) {
    uint32_t ctx=s->ECX,buf=s->EDX;
    fprintf(stderr,"[codec-mdct] ctx=%08x buf=%08x\n",ctx,buf);
    if(ctx>=0x1000u && ctx<0x1bfffff0u) {
      uint32_t *v=(uint32_t*)(uintptr_t)ctx;
      fprintf(stderr,"[codec-mdct] n=%u log2n=%u trig=%08x bitrev=%08x\n",v[0],v[1],v[2],v[3]);
      if(v[3]>=0x1000u && v[3]<0x1bffffc0u) {
        uint32_t *b=(uint32_t*)(uintptr_t)v[3];
        fprintf(stderr,"[codec-mdct] bitrev-head");
        for(int i=0;i<16;i++)fprintf(stderr," %08x",b[i]);
        fprintf(stderr,"\n");
        recomp_watch_lo=v[3];recomp_watch_hi=v[3]+64u;recomp_watch_wonly=0;
      }
    }
  }
'''
 text='#include <stdio.h>\n'+text.replace(anchor,anchor+probe,1)
target.write_text(text)
obj=OUT/'lifted_071_checked.o'
subprocess.run([str(EMCC),'-O3','-w','-std=gnu11','-DRECOMP_MEM_CHECK=1','-I'+str(BASE/'include'),
 '-c',str(target),'-o',str(obj)],check=True)
args=shlex.split((BASE/'link.rsp').read_text());count=0
for i,arg in enumerate(args):
 if Path(arg).name.endswith('lifted_071.fast.o'):args[i]=str(obj);count+=1
 elif i>0 and args[i-1]=='-o':args[i]=str(OUT/'boot.mjs')
assert count==1
(OUT/'link.rsp').write_text('\n'.join(shlex.quote(a.replace('\\','/')) for a in args))
subprocess.run([str(EMCC),'@'+str(OUT/'link.rsp')],check=True)
for name in ['boot_integration.mjs','explore.mjs','console_typing.mjs']:shutil.copy2(BASE/name,OUT/name)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
(OUT/'manifest.json').write_text(json.dumps({'scope':'native codec memory-access instrumentation; game rules unchanged','mdctTrace':trace,
 'baseWasm':sha(BASE/'boot.wasm'),'wasm':sha(OUT/'boot.wasm'),'source':sha(source)},indent=2))
print('built',OUT,flush=True)
