"""Private quiescent-frame entry. Reuse frozen objects; change no game rules."""
from pathlib import Path
import hashlib,json,os,re,shlex,shutil,subprocess

LAB=Path(__file__).resolve().parent
RESEARCH=LAB.parent
REPO=RESEARCH/'the-browsing-of-isaac'
LIFT=REPO/'output/recomp/lift/original-j460'
HOST=REPO/'scripts/recomp/host'
BOOT=REPO/'output/recomp/lift/boot-training-fast'
OUT=LAB/'frame-runtime'
OUT.mkdir(exist_ok=True)
os.environ['EM_CONFIG']=str(RESEARCH/'emsdk/.emscripten')
EMCC=RESEARCH/'emsdk/upstream/emscripten/emcc.exe'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()

if sha(BOOT/'boot.wasm')!=sha(LAB/'runtime/boot.wasm'):
    raise RuntimeError('shared base engine changed since boss snapshot; explicit rebase required')

for folder in ['include','src','obj']:(OUT/folder).mkdir(exist_ok=True)
for source in list((HOST/'include').glob('*.h'))+list((HOST/'generated').glob('*.h'))+list((REPO/'scripts/recomp/lift').glob('*.h'))+list(LIFT.glob('*.h')):
    target=OUT/'include'/source.name
    if not target.exists():shutil.copy2(source,target)

source=(LIFT/'lifted_055.c').read_text()
start=source.index('void sub_00931050(CpuState *restrict s) {')
end=source.find('\nvoid sub_',start+30)
if end<0:end=len(source)
main=source[start:end]
assert 'L_00931231:' in main
assert main.count('  goto L_00931231;')==3
main=main.replace('void sub_00931050(CpuState *restrict s) {',
    'void sub_00931050(CpuState *restrict s) {\n  extern int boss_frame_enabled;\n  extern void boss_capture_frame(CpuState*);',1)
main=main.replace('    case 0x00931099u:', '    case 0x00931231u: goto L_00931231;\n    case 0x00931099u:',1)
registers=['EBP','ESP','FS_OFFSET','EAX','CF','OF','SF','ZF','PF','EBX','ESI','EDI','ECX','EDX','FPUInstructionPointer','AF']
capture='  if (boss_frame_enabled) {\n'+''.join(f'    s->{r} = {r};\n' for r in registers)+\
    '    s->EIP = 0x00931231u;\n    boss_capture_frame(s);\n    return;\n  }\n'
main=main.replace('  goto L_00931231;',capture+'  goto L_00931231;')
(OUT/'src/lifted_055.c').write_text(source[:start]+main+source[end:])
training=(HOST/'src/host_training.c').read_text().replace('void isaac_training_boundary(void) {',
    'void isaac_training_boundary(void) {\n    extern int boss_frame_enabled;\n    if (boss_frame_enabled) return;',1)
(OUT/'src/host_training.c').write_text(training)
(OUT/'src/boss_frame.c').write_text('''
#include <stdint.h>
#include <string.h>
#include <emscripten.h>
#include "isaac_host.h"
extern uint32_t g_reentry_eip;
int boss_frame_enabled;
static CpuState boss_cpu;
static int boss_captured;
void boss_capture_frame(CpuState *s) { boss_cpu=*s; boss_captured=1; }
EMSCRIPTEN_KEEPALIVE void boss_frame_enable(int value) { boss_frame_enabled=value; }
EMSCRIPTEN_KEEPALIVE int boss_frame_ready(void) { return boss_captured; }
EMSCRIPTEN_KEEPALIVE uint32_t boss_frame_cpu_address(void) { return (uint32_t)(uintptr_t)&boss_cpu; }
EMSCRIPTEN_KEEPALIVE int boss_frame_step(void) {
    if (!boss_frame_enabled || !boss_captured) return -1;
    boss_captured=0;
    g_reentry_eip=0x00931231u;
    isaac_guest_call(0x00931050u,&boss_cpu);
    return boss_captured;
}
''')

args=shlex.split((BOOT/'link.rsp').read_text())
exports=json.loads((BOOT/'exported_functions.json').read_text())
exports+=['_boss_frame_enable','_boss_frame_ready','_boss_frame_step','_boss_frame_cpu_address']
(OUT/'exports.json').write_text(json.dumps(exports))
linked=[]
for index,arg in enumerate(args):
    if arg.endswith(('.o','.a')):
        source=Path(arg);target=OUT/'obj'/f'{index:03d}-{source.name}'
        if not target.exists():shutil.copy2(source,target)
        linked.append((arg,target))
new_args=[]
for i,arg in enumerate(args):
    if arg.startswith('-sEXPORTED_FUNCTIONS='):arg='-sEXPORTED_FUNCTIONS=@'+str(OUT/'exports.json')
    elif arg.startswith('-sEXPORTED_RUNTIME_METHODS='):arg='-sEXPORTED_RUNTIME_METHODS=HEAPU8,HEAP32,FS'
    elif i>0 and args[i-1]=='-o':arg=str(OUT/'boot.mjs')
    elif arg.endswith(('.o','.a')):arg=str(next(dst for src,dst in linked if src==arg))
    new_args.append(arg)

for name in ['lifted_055','host_training','boss_frame']:
    obj=OUT/'obj'/f'boss-{name}.o'
    flags=['-O3','-w','-std=gnu11','-DRECOMP_MEM_CHECK=0','-I'+str(OUT/'include')]
    if name!='lifted_055':flags+=['-msimd128','-DISAAC_TRAINING=1','-sSUPPORT_LONGJMP=wasm']
    command=[str(EMCC),*flags,'-c',str(OUT/'src'/f'{name}.c'),'-o',str(obj)]
    print('compile',name,flush=True);subprocess.run(command,check=True)
    old_name='lifted_055.fast.o' if name=='lifted_055' else 'host_training.training.o'
    if name=='boss_frame':new_args.append(str(obj))
    else:
        old=next(dst for src,dst in linked if Path(src).name==old_name)
        new_args=[str(obj) if arg==str(old) else arg for arg in new_args]
(OUT/'link.rsp').write_text('\n'.join(shlex.quote(a.replace('\\','/')) for a in new_args))
print('link',flush=True);subprocess.run([str(EMCC),'@'+str(OUT/'link.rsp')],check=True)
for name in ['boot_integration.mjs','explore.mjs','console_typing.mjs']:
    shutil.copy2(LAB/'runtime'/name,OUT/name)
driver=OUT/'boot_integration.mjs'
text=driver.read_text(encoding='utf-8')
anchor="console.log(`  isaac_boot_call_main -> ${mainRc}`);"
assert anchor in text
text=text.replace(anchor,"if (!m._boss_frame_ready?.()) {\n"+anchor,1)+'\n}\n'
driver.write_text(text,encoding='utf-8')
(OUT/'manifest.json').write_text(json.dumps({'scope':'quiescent main-loop frame entry, original game rules retained',
    'baseWasm':sha(LAB/'runtime/boot.wasm'),'wasm':sha(OUT/'boot.wasm'),
    'sources':{p.name:sha(p) for p in (OUT/'src').glob('*.c')}},indent=2))
print(OUT/'boot.wasm',flush=True)
