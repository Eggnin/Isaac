"""Compile the existing C++ planner, without the Windows reader/input backend."""
from pathlib import Path
import os
import subprocess
import hashlib
import json
import shutil

root = Path(__file__).resolve().parent
project = root
os.environ['EM_CONFIG'] = str(root.parent/'emsdk/.emscripten')
compiler = root.parent/'emsdk/upstream/emscripten/em++.exe'
command = [str(compiler), '-O3', '-std=c++20', '-fexceptions',
    '-I'+str(project/'cpp/include'), '-I'+str(project/'cpp/third_party'),
    str(root/'offline/planner_bridge.cpp'), str(project/'cpp/src/model.cpp'),
    str(project/'cpp/src/planner.cpp'), str(project/'cpp/src/weapons.cpp'),
    '--no-entry', '--profiling-funcs', '-sENVIRONMENT=node', '-sMODULARIZE=1', '-sEXPORT_ES6=1',
    '-sALLOW_MEMORY_GROWTH=1', '-sINITIAL_MEMORY=16777216',
    '-sSTACK_SIZE=1048576',
    '-sEXPORTED_FUNCTIONS=["_planner_configure","_planner_decide","_planner_trace","_planner_shot_velocity","_planner_move_trace","_planner_consecration_trace","_malloc","_free"]',
    '-sEXPORTED_RUNTIME_METHODS=["ccall","HEAPU8"]',
    '-o', str(root/'offline/planner_policy.mjs')]
subprocess.run(command, check=True)
version=hashlib.sha256((root/'offline/planner_policy.wasm').read_bytes()).hexdigest()
snapshot=root/'versions'/version
if not snapshot.exists():
    snapshot.mkdir(parents=True)
    inputs=[root/'offline/planner_policy.mjs',root/'offline/planner_policy.wasm',root/'offline/planner_bridge.cpp']
    inputs.extend(p for p in (root/'cpp').rglob('*') if p.is_file() and p.suffix in ('.cpp','.hpp','.h'))
    hashes={}
    for source in inputs:
        relative=source.relative_to(root)
        target=snapshot/relative
        target.parent.mkdir(parents=True,exist_ok=True)
        shutil.copy2(source,target)
        hashes[str(relative)]=hashlib.sha256(target.read_bytes()).hexdigest()
    (snapshot/'manifest.json').write_text(json.dumps({'policySha256':version,'inputs':hashes},indent=2),encoding='utf-8')
print('policy snapshot',snapshot)
print(root/'offline/planner_policy.mjs')
