"""Remove the recorded internal installation; preserve backups outside resources."""
import argparse
import hashlib
import json
import re
import shutil
import subprocess
from datetime import datetime
from pathlib import Path

GAME = Path(r'D:\Steam\steamapps\common\The Binding of Isaac Rebirth')
HERE = Path(__file__).resolve().parent
DEST = Path(r'D:\IsaacAccessAssist\removed-internal')


def digest(p):
    return hashlib.sha256(p.read_bytes()).hexdigest().upper()


def child(root, relative):
    p = (root / relative).resolve()
    if not p.is_relative_to(root.resolve()):
        raise RuntimeError(f'Path escaped root: {p}')
    return p


def main(apply=False):
    builtin = GAME / 'resources/scripts/aa_builtin'
    m = json.loads((builtin / 'INSTALLATION.json').read_text(encoding='utf-8-sig'))
    if Path(m['game']) != GAME:
        raise RuntimeError('Unexpected installation root')
    for f in m['files']:
        p = child(GAME / 'resources', str(Path(f['path']).relative_to('resources')))
        if digest(p) != f['sha256']:
            raise RuntimeError(f'Installed file has changed: {p}')
        if f['existed'] and digest(child(Path(m['backup']), f['path'])) != f['previous_sha256']:
            raise RuntimeError(f'Invalid original backup: {p}')
    source = (HERE.parent / 'research/online/Isaac-Online-Modded-master/IsaacOnlineModded/GamePatcher.cs').read_text(encoding='utf-8-sig')
    patterns = {n: bytes.fromhex(h) for n, h in re.findall(
        r'byte\[\] (\w+) = Convert.FromHexString\(\s*"([A-Fa-f0-9]+)"\)', source)}
    exe = GAME / 'isaac-ng.exe'
    before = exe.read_bytes()
    after = before
    patches = []
    for name, patched in patterns.items():
        if not name.endswith('Patched'):
            continue
        original = patterns[name[:-7] + 'Original']
        if len(original) != len(patched):
            raise RuntimeError('Patch lengths differ')
        if after.count(patched) == 1 and after.count(original) == 0:
            patches.append({'name': name, 'offset': after.find(patched)})
            after = after.replace(patched, original, 1)
        elif after.count(patched) != 0 or after.count(original) != 1:
            raise RuntimeError(f'Ambiguous executable pattern: {name}')
    locale = json.loads((HERE.parent / 'online/CHINESE-RESOURCE-RESTORE.json').read_text(encoding='utf-8-sig'))
    locale_path = Path(locale['target'])
    if digest(locale_path) not in (locale['sha256'], locale['previous_sha256']):
        raise RuntimeError('Translation archive changed after installation')
    if digest(Path(locale['backup'])) != locale['previous_sha256']:
        raise RuntimeError('Invalid original Chinese archive backup')
    report = {'managed_files': len(m['files']), 'exe_patches': patches, 'applied': False}
    if not apply:
        print(json.dumps(report, indent=2))
        return
    # The launcher handles only the known pending option transaction, if any.
    subprocess.run(['powershell.exe', '-NoProfile', '-ExecutionPolicy', 'Bypass', '-File',
                    str(builtin / 'launch-online.ps1'), '-RestoreOnly', '-NoDialog'], check=True)
    archive = DEST / datetime.now().strftime('%Y%m%d-%H%M%S')
    archive.mkdir(parents=True, exist_ok=False)
    shutil.copytree(builtin, archive / 'aa_builtin')
    shutil.copy2(exe, archive / 'isaac-ng.before.exe')
    shutil.copy2(locale_path, archive / 'repentance_zh.before.a')
    # Back up each managed overlay before restoring/deleting it.
    for f in m['files']:
        p = child(GAME, f['path'])
        saved = child(archive / 'overlay', f['path'])
        saved.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(p, saved)
    for f in m['files']:
        p = child(GAME, f['path'])
        if f['existed']:
            shutil.copy2(child(Path(m['backup']), f['path']), p)
            if digest(p) != f['previous_sha256']:
                raise RuntimeError(f'Restored file hash mismatch: {p}')
        else:
            p.unlink()
    # Archive generated logs/settings and remove the loader folder from resource search.
    if builtin.resolve() != (GAME / 'resources/scripts/aa_builtin').resolve() or builtin.is_symlink():
        raise RuntimeError('Unexpected built-in directory')
    shutil.move(str(builtin), str(archive / 'remaining-generated'))
    exe.write_bytes(after)
    shutil.copy2(Path(locale['backup']), locale_path)
    link = Path(m['shortcut'])
    if link.name != 'Isaac Online Assist (Experimental).lnk':
        raise RuntimeError('Unexpected shortcut')
    if link.exists():
        shutil.copy2(link, archive / link.name)
        link.unlink()
    report.update(applied=True, archive=str(archive),
                  exe_before_sha256=hashlib.sha256(before).hexdigest().upper(),
                  exe_after_sha256=digest(exe),
                  original_main_sha256=digest(GAME / 'resources/scripts/main.lua'),
                  original_chinese_archive_sha256=digest(locale_path),
                  saves_changed=False,
                  builtin_present=builtin.exists())
    (archive / 'REMOVAL.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    (HERE / 'REMOVAL.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--apply', action='store_true')
    main(parser.parse_args().apply)
