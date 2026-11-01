"""Read-only native spawn-site logging in a separate offline runtime."""
from pathlib import Path
import hashlib,json,os,shlex,shutil,subprocess,sys
LAB=Path(__file__).resolve().parent
BASE=LAB/'frame-runtime-heap400'
damage_mode='--damage' in sys.argv
stem='lifted_036' if damage_mode else 'lifted_001'
OUT=LAB/('frame-runtime-damage-trace' if damage_mode else 'frame-runtime-spawn-trace')
OUT.mkdir(exist_ok=True)
os.environ['EM_CONFIG']=str(LAB.parent/'emsdk/.emscripten')
EMCC=LAB.parent/'emsdk/upstream/emscripten/emcc.exe'
source=LAB.parent/f'the-browsing-of-isaac/output/recomp/lift/original-j460/{stem}.c'
text=source.read_text()
anchor='void sub_007729d0(CpuState *restrict s) {' if damage_mode else 'void sub_00428b20(CpuState *restrict s) {'
assert text.count(anchor)==1
trace=r'''
  if (!g_reentry_eip) {
    uint32_t *args=(uint32_t*)(uintptr_t)s->ESP;
    if (args[1]==1000u && args[2]==19u) {
      uint32_t game=*(uint32_t*)(uintptr_t)0xc71678u;
      uint32_t spawner=args[5];
      fprintf(stderr,"[boss-spawn19] frame=%u return=%08x subtype=%u spawner=%08x type=%u pos=(%.6f,%.6f) ebp=%08x\n",
        game?*(uint32_t*)(uintptr_t)(game+0x264f8u):0u,args[0],args[6],spawner,
        spawner?*(uint32_t*)(uintptr_t)(spawner+0x28u):0u,
        (double)*(float*)(uintptr_t)args[3],(double)*(float*)(uintptr_t)(args[3]+4u),s->EBP);
      uint32_t fp=s->EBP;
      for(int i=0;i<8 && fp>=0x19ef0000u && fp<0x19fefff8u;i++) {
        uint32_t *chain=(uint32_t*)(uintptr_t)fp;
        fprintf(stderr,"[boss-spawn19-stack] depth=%d frameptr=%08x return=%08x\n",i,fp,chain[1]);
        if(chain[0]<=fp)break;
        fp=chain[0];
      }
    }
  }
'''
if damage_mode:
    trace=r'''
  if (!g_reentry_eip) {
    uint32_t *args=(uint32_t*)(uintptr_t)s->ESP;
    uint32_t source=args[4];
    if ((args[2]&8u) && source && *(uint32_t*)(uintptr_t)source==950u) {
      uint32_t game=*(uint32_t*)(uintptr_t)0xc71678u;
      fprintf(stderr,"[boss-damage-site] frame=%u return=%08x flags=%u source=%u\n",
        game?*(uint32_t*)(uintptr_t)(game+0x264f8u):0u,args[0],args[2],*(uint32_t*)(uintptr_t)source);
      uint32_t fp=s->EBP;
      for(int i=0;i<10 && fp>=0x19ef0000u && fp<0x19fefff8u;i++) {
        uint32_t *chain=(uint32_t*)(uintptr_t)fp;
        fprintf(stderr,"[boss-damage-stack] depth=%d frameptr=%08x return=%08x\n",i,fp,chain[1]);
        if(chain[0]<=fp)break;
        fp=chain[0];
      }
    }
  }
'''
text='#include <stdio.h>\n'+text.replace(anchor,anchor+trace,1)
target=OUT/f'{stem}_trace.c'
target.write_text(text)
obj=OUT/f'{stem}_trace.o'
subprocess.run([str(EMCC),'-O3','-w','-std=gnu11','-DRECOMP_MEM_CHECK=0',
 '-I'+str(BASE/'include'),'-c',str(target),'-o',str(obj)],check=True)
args=shlex.split((BASE/'link.rsp').read_text())
count=0
for i,arg in enumerate(args):
 if Path(arg).name.endswith(f'{stem}.fast.o'):args[i]=str(obj);count+=1
 elif i>0 and args[i-1]=='-o':args[i]=str(OUT/'boot.mjs')
assert count==1
(OUT/'link.rsp').write_text('\n'.join(shlex.quote(a.replace('\\','/')) for a in args))
subprocess.run([str(EMCC),'@'+str(OUT/'link.rsp')],check=True)
for name in ['boot_integration.mjs','explore.mjs','console_typing.mjs']:shutil.copy2(BASE/name,OUT/name)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
(OUT/'manifest.json').write_text(json.dumps({'scope':('logging at native player laser-damage entry' if damage_mode else 'logging at native Spawn(1000,19)')+', no game state writes',
 'baseWasm':sha(BASE/'boot.wasm'),'wasm':sha(OUT/'boot.wasm'),'source':sha(source),'instrumentedSource':sha(target)},indent=2))
print('built',OUT,flush=True)
