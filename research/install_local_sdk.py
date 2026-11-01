"""Install the verified SDK archive locally; no global environment changes."""
from pathlib import Path
import hashlib
import zipfile

base = (Path(__file__).resolve().parent / 'emsdk').resolve()
archive = base / 'downloads/dbd755b5da399329c2576f6e3dfa7f419f5d8409-wasm-binaries.zip'
assert hashlib.md5(archive.read_bytes()).hexdigest() == '6448e8b8e8feb9703c7b95b05f5558e2'
source, destination = base / '.unpack/install', base / 'upstream'
assert source.resolve().is_relative_to(base) and destination.resolve().is_relative_to(base)
if not destination.exists():
    with zipfile.ZipFile(archive) as z:
        for info in z.infolist():
            assert (base / '.unpack' / info.filename).resolve().is_relative_to(base / '.unpack')
        z.extractall(base / '.unpack')
    source.rename(destination)
config = """LLVM_ROOT = r'D:/Isaac/research/emsdk/upstream/bin'
BINARYEN_ROOT = r'D:/Isaac/research/emsdk/upstream'
EMSCRIPTEN_ROOT = r'D:/Isaac/research/emsdk/upstream/emscripten'
NODE_JS = [r'C:/Program Files/nodejs/node.exe']
CACHE = r'D:/Isaac/research/emsdk/upstream/emscripten/cache'
"""
(base / '.emscripten').write_text(config)
print(destination, flush=True)
