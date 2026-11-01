"""Compile the existing C++ planner, without the Windows reader/input backend."""
from pathlib import Path
import os
import subprocess

root = Path(__file__).resolve().parent
project = root.parent
os.environ['EM_CONFIG'] = str(root/'emsdk/.emscripten')
compiler = root/'emsdk/upstream/emscripten/em++.exe'
command = [str(compiler), '-O3', '-std=c++20', '-fexceptions',
    '-I'+str(project/'cpp/include'), '-I'+str(project/'cpp/third_party'),
    str(root/'offline/planner_bridge.cpp'), str(project/'cpp/src/model.cpp'),
    str(project/'cpp/src/planner.cpp'), str(project/'cpp/src/weapons.cpp'),
    '--no-entry', '--profiling-funcs', '-sENVIRONMENT=node', '-sMODULARIZE=1', '-sEXPORT_ES6=1',
    '-sALLOW_MEMORY_GROWTH=1', '-sINITIAL_MEMORY=16777216',
    '-sSTACK_SIZE=1048576',
    '-sEXPORTED_FUNCTIONS=["_planner_configure","_planner_decide","_malloc","_free"]',
    '-sEXPORTED_RUNTIME_METHODS=["ccall","HEAPU8"]',
    '-o', str(root/'offline/planner_policy.mjs')]
subprocess.run(command, check=True)
print(root/'offline/planner_policy.mjs')
