"""Build an isolated, logging-only copy of the original lifted player damage path."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

ROOT = Path(__file__).resolve().parents[2]
REPO = ROOT / "research/the-browsing-of-isaac"
LIFT = REPO / "output/recomp/lift/original-j460"
BOOT = LIFT.parent / "boot-training-fast"
OUT = Path(__file__).parent / "damage-oracle"
OUT.mkdir(exist_ok=True)
emcc = ROOT / "research/emsdk/upstream/emscripten/emcc.exe"
os.environ["EMSDK"] = str(ROOT / "research/emsdk")
os.environ["EM_CONFIG"] = str(ROOT / "research/emsdk/.emscripten")
source = LIFT / "lifted_036.c"
text = source.read_text()
needle = "void sub_007729d0(CpuState *restrict s) {"
assert text.count(needle) == 1
wrapper = r'''
/* A separate host-side ring. This never writes guest gameplay memory or CpuState. */
static uint32_t phase4_damage_ring[4096][40], phase4_damage_total;
uint32_t phase4_current_laser;
uint32_t phase4_damage_count(void) { return phase4_damage_total; }
uint32_t phase4_damage_record(uint32_t ordinal) {
    return (uint32_t)(uintptr_t)phase4_damage_ring[ordinal % 4096];
}
static uint32_t phase4_r32(uint32_t p) {
    return p >= 0x10000u && p < 0x1bfff000u ? MEMR32(p) : 0;
}
void sub_007729d0(CpuState *restrict s) {
    if(g_reentry_eip) { phase4_original_player_damage(s); return; }
    uint32_t ordinal=phase4_damage_total++, *r=phase4_damage_ring[ordinal % 4096];
    uint32_t player=s->ECX, stack=s->ESP, game=phase4_r32(0xc71678u);
    uint32_t ref=phase4_r32(stack+16), entity=phase4_r32(ref+0x24);
    memset(r,0,40*sizeof(uint32_t));
    r[0]=ordinal;r[1]=phase4_r32(game+0x264f8);r[2]=player;r[3]=phase4_r32(stack);
    r[4]=phase4_r32(stack+4);r[5]=phase4_r32(stack+8);r[6]=phase4_r32(stack+12);
    r[7]=ref;r[8]=entity;r[9]=phase4_r32(stack+20);
    r[10]=phase4_r32(player+0x1344)+phase4_r32(player+0x134c);
    r[11]=phase4_r32(player+0x13bc);
    r[12]=phase4_r32(entity+0x28);r[13]=phase4_r32(entity+0x2c);
    r[14]=phase4_r32(entity+0x30);r[15]=phase4_r32(entity+0x3ec);
    r[16]=phase4_r32(player+0x33c);r[17]=phase4_r32(player+0x340);
    r[18]=phase4_r32(player+0x370);r[19]=phase4_r32(entity+0x33c);
    r[20]=phase4_r32(entity+0x340);r[21]=phase4_r32(entity+0x370);
    r[22]=phase4_r32(ref);r[23]=phase4_r32(ref+4);
    r[27]=phase4_current_laser;
    r[28]=1;r[29]=phase4_r32(player+0x3ec);
    r[30]=phase4_r32(entity+0x3bc);r[31]=phase4_r32(entity+0x3c8);
    r[32]=phase4_r32(r[30]+0x28);r[33]=phase4_r32(r[31]+0x28);r[35]=phase4_r32(ref+8);
    phase4_original_player_damage(s);
    r[24]=s->EAX;r[25]=phase4_r32(player+0x1344)+phase4_r32(player+0x134c);
    r[26]=phase4_r32(player+0x13bc);r[34]=phase4_r32(player+0x3ec);
}
uint32_t phase4_npc_damage_begin(CpuState *s) {
    uint32_t ordinal=phase4_damage_total++,*r=phase4_damage_ring[ordinal%4096];
    uint32_t target=s->ECX,stack=s->ESP,game=phase4_r32(0xc71678u);
    uint32_t ref=phase4_r32(stack+16),entity=phase4_r32(ref+0x24);
    memset(r,0,40*sizeof(uint32_t));
    r[0]=ordinal;r[1]=phase4_r32(game+0x264f8);r[2]=target;r[3]=phase4_r32(stack);
    r[4]=phase4_r32(stack+4);r[5]=phase4_r32(stack+8);r[6]=phase4_r32(stack+12);
    r[7]=ref;r[8]=entity;r[9]=phase4_r32(stack+20);r[10]=phase4_r32(target+0x380);
    r[12]=phase4_r32(entity+0x28);r[13]=phase4_r32(entity+0x2c);r[14]=phase4_r32(entity+0x30);
    r[15]=phase4_r32(entity+0x3ec);r[16]=phase4_r32(target+0x33c);r[17]=phase4_r32(target+0x340);
    r[18]=phase4_r32(target+0x370);r[19]=phase4_r32(entity+0x33c);r[20]=phase4_r32(entity+0x340);
    r[21]=phase4_r32(entity+0x370);r[22]=phase4_r32(ref);r[23]=phase4_r32(ref+4);
    r[27]=phase4_current_laser;r[28]=phase4_r32(target+0x28);r[29]=phase4_r32(target+0x3ec);
    r[30]=phase4_r32(entity+0x3bc);r[31]=phase4_r32(entity+0x3c8);
    r[32]=phase4_r32(r[30]+0x28);r[33]=phase4_r32(r[31]+0x28);r[35]=phase4_r32(ref+8);
    return ordinal;
}
void phase4_npc_damage_end(CpuState *s,uint32_t ordinal) {
    uint32_t *r=phase4_damage_ring[ordinal%4096];
    r[24]=s->EAX;r[25]=phase4_r32(r[2]+0x380);r[34]=phase4_r32(r[2]+0x3ec);
}
void phase4_npc_damage_tag(uint32_t ordinal,uint32_t entry) {phase4_damage_ring[ordinal%4096][38]=entry;}
'''
instrumented = text.replace(needle, "void phase4_original_player_damage(CpuState *restrict s) {") + wrapper
src = OUT / "lifted_036.oracle.c"
src.write_text(instrumented)
includes = [REPO / "scripts/recomp/lift", LIFT, REPO / "scripts/recomp/host/include"]
args = [str(emcc), "-c", "-O3", "-w", "-DRECOMP_MEM_CHECK=0"]
for path in includes:
    args += ["-I", str(path)]
obj = OUT / "lifted_036.oracle.o"
subprocess.run(args + [str(src), "-o", str(obj)], check=True)
laser_wrapper = r'''
extern uint32_t phase4_current_laser;
static uint32_t phase4_laser_ring[4096][32], phase4_laser_total;
uint32_t phase4_laser_count(void) {return phase4_laser_total;}
uint32_t phase4_laser_record(uint32_t ordinal) {return (uint32_t)(uintptr_t)phase4_laser_ring[ordinal%4096];}
static uint32_t p4read(uint32_t p) {return p>=0x10000u&&p<0x1bfff000u?MEMR32(p):0;}
void phase4_log_laser(uint32_t laser,uint32_t target,uint32_t kind,uint32_t result,uint32_t caller) {
    if(p4read(target+0x28)!=1)return;
    uint32_t ordinal=phase4_laser_total++,*r=phase4_laser_ring[ordinal%4096];
    memset(r,0,32*sizeof(uint32_t));
    uint32_t game=p4read(0xc71678);
    r[0]=ordinal;r[1]=p4read(game+0x264f8);r[2]=kind;r[3]=laser;r[4]=p4read(laser+0x3ec);
    r[5]=target;r[6]=result;r[7]=caller;
    r[8]=p4read(laser+0x33c);r[9]=p4read(laser+0x340);r[10]=p4read(laser+0x370);
    r[11]=p4read(laser+0x4d8);r[12]=p4read(laser+0x4dc);r[13]=p4read(laser+0x458);
    r[14]=p4read(laser+0x4bc);r[15]=p4read(laser+0x4e0);r[16]=p4read(laser+0x460);
    r[17]=p4read(target+0x33c);r[18]=p4read(target+0x340);r[19]=p4read(target+0x370);
    r[20]=p4read(laser+0x2c);r[21]=p4read(laser+0x30);
}
'''
eligible_wrapper = r'''
void phase4_log_laser(uint32_t,uint32_t,uint32_t,uint32_t,uint32_t);
void sub_0096cf80(CpuState *restrict s) {
    if(g_reentry_eip){phase4_original_laser_eligible(s);return;}
    uint32_t laser=s->ECX,target=MEMR32(s->ESP+4),caller=MEMR32(s->ESP);
    phase4_original_laser_eligible(s);
    phase4_log_laser(laser,target,1,s->EAX&255,caller);
}
'''
apply_wrapper = r'''
void sub_0097e3c0(CpuState *restrict s) {
    if(g_reentry_eip){phase4_original_laser_damage(s);return;}
    uint32_t laser=s->ECX,target=MEMR32(s->ESP+4),caller=MEMR32(s->ESP),old=phase4_current_laser;
    phase4_log_laser(laser,target,2,1,caller);
    phase4_current_laser=laser;
    phase4_original_laser_damage(s);
    phase4_current_laser=old;
}
'''
extra_objs = []
npc_wrapper = r'''
uint32_t phase4_npc_damage_begin(CpuState*);
void phase4_npc_damage_end(CpuState*,uint32_t);
void phase4_npc_damage_tag(uint32_t,uint32_t);
void sub_006ace60(CpuState *restrict s) {
    if(g_reentry_eip){phase4_original_npc_damage(s);return;}
    uint32_t ordinal=phase4_npc_damage_begin(s);
    phase4_npc_damage_tag(ordinal,0x6ace60);
    phase4_original_npc_damage(s);
    phase4_npc_damage_end(s,ordinal);
}
'''
for number, symbol, renamed, suffix in [
    (28, "sub_006ace60", "phase4_original_npc_damage", npc_wrapper),
    (30, "sub_006d60a0", "phase4_original_npc_virtual_damage", npc_wrapper.replace("sub_006ace60", "sub_006d60a0").replace("phase4_original_npc_damage", "phase4_original_npc_virtual_damage").replace("0x6ace60", "0x6d60a0")),
    (57, "sub_0096cf80", "phase4_original_laser_eligible", eligible_wrapper),
    (58, "sub_0097e3c0", "phase4_original_laser_damage", laser_wrapper + apply_wrapper),
]:
    original = LIFT / f"lifted_{number:03}.c"
    body = original.read_text()
    entry = f"void {symbol}(CpuState *restrict s) {{"
    assert body.count(entry) == 1
    body = body.replace(entry, f"void {renamed}(CpuState *restrict s) {{") + suffix
    generated = OUT / f"lifted_{number:03}.oracle.c"
    generated.write_text(body)
    obj_path = generated.with_suffix(".o")
    subprocess.run(args + [str(generated), "-o", str(obj_path)], check=True)
    extra_objs.append((number, obj_path))
exports = json.loads((BOOT / "exported_functions.json").read_text())
exports += ["_phase4_damage_count", "_phase4_damage_record", "_phase4_laser_count", "_phase4_laser_record"]
export_path = OUT / "exported_functions.json"
export_path.write_text(json.dumps(exports))
rsp = (BOOT / "link.rsp").read_text()
rsp = rsp.replace(str(BOOT).replace("\\", "/") + "/exported_functions.json", str(export_path).replace("\\", "/"))
rsp = rsp.replace(str(BOOT).replace("\\", "/") + "/boot.mjs", str(OUT / "boot.mjs").replace("\\", "/"))
rsp = rsp.replace(str(LIFT / "lifted_036.fast.o").replace("\\", "/"), str(obj).replace("\\", "/"))
for number, obj_path in extra_objs:
    rsp = rsp.replace(str(LIFT / f"lifted_{number:03}.fast.o").replace("\\", "/"), str(obj_path).replace("\\", "/"))
link = OUT / "link.rsp"
link.write_text(rsp)
subprocess.run([str(emcc), "@" + str(link)], check=True)
for name in ("boot_integration.mjs", "explore.mjs", "console_typing.mjs"):
    shutil.copyfile(BOOT / name, OUT / name)
provenance = {"source_tu_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
              "other_source_tus": {f"lifted_{n:03}.c": hashlib.sha256((LIFT/f"lifted_{n:03}.c").read_bytes()).hexdigest() for n in (28,30,57,58)},
              "original_wasm_sha256": hashlib.sha256((BOOT / "boot.wasm").read_bytes()).hexdigest(),
              "instrumented_wasm_sha256": hashlib.sha256((OUT / "boot.wasm").read_bytes()).hexdigest(),
              "function": "0x007729d0; current runtime Player vtable slot 8",
              "method": "original function body retained; wrapper reads arguments/health before and after; host-side ring only"}
(OUT / "provenance.json").write_text(json.dumps(provenance, indent=2) + "\n")
print(json.dumps(provenance, indent=2))
