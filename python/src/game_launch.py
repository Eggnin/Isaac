"""Normal Steam launch and the game's persistent background-pause preference."""
import ctypes
from datetime import datetime, timezone
import json
from pathlib import Path
import re
import uuid


def prepare_background_launch(log_dir, *, options_path=None):
    if options_path is None:
        documents=ctypes.create_unicode_buffer(32768)
        if ctypes.WinDLL('shell32').SHGetFolderPathW(None,5,None,0,documents)!=0:
            raise OSError('无法定位 Windows 文档目录')
        options_path=Path(documents.value)/'My Games'/'Binding of Isaac Repentance+'/'options.ini'
    path=Path(options_path)
    if not path.is_file():raise RuntimeError('未找到游戏配置，请先正常启动一次忏悔+。')
    original=path.read_bytes()
    match=re.search(rb'(?m)^(PauseOnFocusLost=)([01])(?=\r?$)',original)
    if match is None:raise RuntimeError('游戏配置缺少 PauseOnFocusLost，无法设置后台运行。')
    if match.group(2)==b'0':return None
    directory=Path(log_dir);directory.mkdir(parents=True,exist_ok=True)
    backup=directory/('options-before-background-'+datetime.now(timezone.utc).strftime('%Y%m%d-%H%M%S-%f')+'.ini')
    backup.write_bytes(original)
    changed=original[:match.start(2)]+b'0'+original[match.end(2):]
    temporary=path.with_name('.isaac-assist-'+uuid.uuid4().hex+'.tmp')
    try:
        temporary.write_bytes(changed);temporary.replace(path)
    finally:
        temporary.unlink(missing_ok=True)
    record={'path':str(path),'backup':str(backup),'PauseOnFocusLost':0}
    (directory/'background-setting.json').write_text(json.dumps(record,ensure_ascii=False,indent=2),encoding='utf-8')
    return record
