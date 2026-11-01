from pathlib import Path
import importlib.util
import json
import re
import sys
LAB=Path(__file__).resolve().parent
ROOT=LAB.parent
spec=importlib.util.spec_from_file_location('room_extract',ROOT/'offline/extract_room_catalog.py')
extract=importlib.util.module_from_spec(spec);spec.loader.exec_module(extract)
archive_module=extract.load_archive_module()
with archive_module.Archive(str(ROOT/'runtime-instance/resources/packed/afterbirthp.a')) as archive:
    for name in ['stages.xml','entities2.xml','bosspools.xml','rooms/13.void.stb','rooms/12.the void.stb','rooms/13.the void.stb','rooms/12.void.stb','rooms/00.special rooms.stb','rooms/00.special rooms.rep.stb']:
        entry=archive.find(name)
        if entry is None: continue
        data=archive.decode(entry)
        (LAB/'data').mkdir(exist_ok=True)
        output=LAB/'data'/Path(name).name
        output.write_bytes(data)
        if name.endswith('.stb'):
            rooms=extract.parse_afterbirth_stb(data)
            output.with_suffix('.json').write_text(json.dumps(rooms,indent=2),encoding='utf-8')
            print(name,len(rooms),[{'name':r['name'],'variant':r['variant'],'type':r['type'],'shape':r['shape']} for r in rooms if 'delir' in r['name'].lower()])
        else:print(name,len(data))
page=json.loads((LAB/'boss-page.json').read_text(encoding='utf-8'))
html=page['parse']['text']['*']
(LAB/'boss-page.html').write_text(html,encoding='utf-8')
text=re.sub('<[^>]+>',' ',html)
(LAB/'boss-page.txt').write_text(text,encoding='utf-8')
print('headings',re.findall(r'<span class="mw-headline" id="([^"]+)"',html))
