"""Freeze a private boss experiment without editing the concurrent main work."""
from pathlib import Path
import hashlib
import json
import shutil

LAB = Path(__file__).resolve().parent
RESEARCH = LAB.parent
PROJECT = RESEARCH.parent
copied = {}

def copy(src, dst):
    dst.parent.mkdir(parents=True, exist_ok=True)
    if dst.exists():
        raise RuntimeError(f'refusing to overwrite private snapshot: {dst}')
    shutil.copy2(src, dst)
    copied[str(dst.relative_to(LAB))] = hashlib.sha256(dst.read_bytes()).hexdigest()

for src in (PROJECT/'cpp').rglob('*'):
    if src.is_file() and src.suffix in ('.cpp', '.hpp', '.h', '.json'):
        copy(src, LAB/'cpp'/src.relative_to(PROJECT/'cpp'))
for src in (RESEARCH/'offline').iterdir():
    if src.is_file() and src.suffix in ('.mjs', '.wasm', '.cpp'):
        copy(src, LAB/'offline'/src.name)
runtime = RESEARCH/'the-browsing-of-isaac/output/recomp/lift/boot-training-fast'
for name in ['boot.mjs','boot.wasm','boot_integration.mjs','explore.mjs','console_typing.mjs']:
    copy(runtime/name, LAB/'runtime'/name)
copy(RESEARCH/'runtime-inputs/host/isaac.segs.bin', LAB/'runtime/isaac.segs.bin')
copy(RESEARCH/'invulnerability-calibration.json', LAB/'invulnerability-calibration.json')
copy(RESEARCH/'build_planner_policy.py', LAB/'build_policy.py')

env = LAB/'offline/engine_environment.mjs'
s=env.read_text(encoding='utf-8').replace("join(research, 'runtime-instance/resources')", "join(research, '../runtime-instance/resources')")
env.write_text(s, encoding='utf-8')
worker = LAB/'offline/engine_worker.mjs'
s=worker.read_text(encoding='utf-8').replace('the-browsing-of-isaac/output/recomp/lift/boot-training-fast/boot_integration.mjs','runtime/boot_integration.mjs').replace('the-browsing-of-isaac/scripts/recomp/lift/explore.mjs','runtime/explore.mjs').replace('runtime-inputs/host/isaac.segs.bin','runtime/isaac.segs.bin')
worker.write_text(s, encoding='utf-8')
build = LAB/'build_policy.py'
s=build.read_text(encoding='utf-8').replace('project = root.parent', 'project = root').replace("root/'emsdk/", "root.parent/'emsdk/")
build.write_text(s, encoding='utf-8')
(LAB/'snapshot.json').write_text(json.dumps({'source': str(PROJECT), 'originalHashes':copied,
    'purpose':'private frozen boss experiments; shared resources read from research copy; no production edits'},indent=2),encoding='utf-8')
print(json.dumps({'files':len(copied),'lab':str(LAB)}))
