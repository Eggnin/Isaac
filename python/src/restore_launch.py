"""Restore only the Isaac Steam launch wrapper and development Lua flag."""
import json
import re
import shutil
import subprocess
import time
from pathlib import Path

HERE = Path(__file__).resolve().parent


def isaac_launch_span(text):
    tokens = list(re.finditer(r'"(?:\\.|[^"\\])*"|[{}]', text))
    found = []
    for i, t in enumerate(tokens[:-1]):
        if t.group() != '"250900"' or tokens[i + 1].group() != '{':
            continue
        depth = 1
        j = i + 2
        while j < len(tokens) and depth:
            value = tokens[j].group()
            if value == '{':
                depth += 1
            elif value == '}':
                depth -= 1
            elif depth == 1 and value == '"LaunchOptions"':
                found.append(tokens[j + 1].span())
            j += 1
    if len(found) != 1:
        raise RuntimeError('Isaac launch option was not unique')
    return found[0]


def main():
    report_path = HERE / 'REMOVAL.json'
    report = json.loads(report_path.read_text(encoding='utf-8'))
    archive = Path(report['archive'])
    config = Path(r'D:\Steam\userdata\1236967141\config\localconfig.vdf')
    text = config.read_bytes().decode('utf-8')
    a, b = isaac_launch_span(text)
    old = text[a:b]
    if 'REPENTOGONLauncher' not in old:
        raise RuntimeError('Unexpected launch wrapper; no Steam configuration changed')
    steam = Path(r'D:\Steam\steam.exe')
    running = subprocess.run(['tasklist.exe', '/FI', 'IMAGENAME eq steam.exe', '/FO', 'CSV'], capture_output=True).stdout
    was_running = b'"steam.exe"' in running.lower()
    if was_running:
        subprocess.Popen([str(steam), '-shutdown'], creationflags=subprocess.CREATE_NO_WINDOW)
        for _ in range(60):
            running = subprocess.run(['tasklist.exe', '/FI', 'IMAGENAME eq steam.exe', '/FO', 'CSV'], capture_output=True).stdout
            if b'"steam.exe"' not in running.lower():
                break
            time.sleep(.25)
        else:
            raise RuntimeError('Steam has not exited; launch configuration was not changed')
    # Read again after Steam flushes its configuration.
    text = config.read_bytes().decode('utf-8')
    a, b = isaac_launch_span(text)
    if 'REPENTOGONLauncher' not in text[a:b]:
        raise RuntimeError('Launch wrapper changed while Steam closed')
    shutil.copy2(config, archive / 'localconfig.before.vdf')
    config.write_bytes((text[:a] + '""' + text[b:]).encode('utf-8'))
    launcher = Path.home() / 'Documents/My Games/repentogon_launcher.ini'
    shutil.copy2(launcher, archive / 'repentogon_launcher.before.ini')
    raw = launcher.read_bytes()
    raw, count = re.subn(rb'(?m)^LuaDebug\s*=\s*1(?=\r?$)', b'LuaDebug = 0', raw)
    if count:
        launcher.write_bytes(raw)
    report['steam_launch_options'] = ''
    report['launcher_lua_debug_disabled'] = True
    report_path.write_text(json.dumps(report, indent=2), encoding='utf-8')
    (archive / 'REMOVAL.json').write_bytes(report_path.read_bytes())
    if was_running:
        subprocess.Popen([str(steam), '-silent'], creationflags=subprocess.CREATE_NO_WINDOW)
    print('Isaac launch options cleared; Steam restored; Language=13 preserved.')


if __name__ == '__main__':
    main()
