"""Fetch the pinned upstream SDK with bounded parallel HTTP ranges."""
from concurrent.futures import ThreadPoolExecutor, as_completed
import hashlib
from pathlib import Path
import subprocess

root = Path(__file__).resolve().parent
target = root / 'emsdk/downloads/dbd755b5da399329c2576f6e3dfa7f419f5d8409-wasm-binaries.zip'
url = 'https://storage.googleapis.com/webassembly/emscripten-releases-builds/win/dbd755b5da399329c2576f6e3dfa7f419f5d8409/wasm-binaries.zip'
size = 649645297
expected_md5 = '6448e8b8e8feb9703c7b95b05f5558e2'  # official storage ETag
count = 16
chunk = (size + count - 1) // count

def download(i):
    begin, end = i * chunk, min(size, (i + 1) * chunk) - 1
    part = target.with_suffix(f'.zip.part{i:02}')
    expected = end - begin + 1
    if part.exists() and part.stat().st_size == expected:
        return i, part
    cmd = ['curl.exe', '--fail', '--location', '--silent', '--show-error',
           '--max-time', '240', '--retry', '1', '--range', f'{begin}-{end}', url, '-o', str(part)]
    subprocess.run(cmd, check=True, timeout=500)
    if part.stat().st_size != expected:
        raise RuntimeError(f'bad HTTP range length: {part}')
    return i, part

if target.exists() and target.stat().st_size == size and hashlib.md5(target.read_bytes()).hexdigest() == expected_md5:
    print('SDK archive already verified', flush=True)
else:
    parts = {}
    with ThreadPoolExecutor(max_workers=count) as executor:
        for task in as_completed([executor.submit(download, i) for i in range(count)]):
            i, part = task.result()
            parts[i] = part
            print(f'chunk {i+1}/{count}: {part.stat().st_size} bytes', flush=True)
    digest = hashlib.md5()
    with target.open('wb') as out:
        for i in range(count):
            with parts[i].open('rb') as src:
                while data := src.read(1024 * 1024):
                    digest.update(data)
                    out.write(data)
    if target.stat().st_size != size or digest.hexdigest() != expected_md5:
        raise RuntimeError(f'SDK archive digest mismatch: {digest.hexdigest()}')
    print(f'Verified SDK archive: {size} bytes, MD5={digest.hexdigest()}', flush=True)
