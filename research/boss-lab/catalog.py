"""Join the requested Wiki floor roster to local entity/room configuration."""
from pathlib import Path
import importlib.util
import json
import re
import html
import xml.etree.ElementTree as ET
from datetime import datetime,timezone

LAB=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('extract',LAB.parent/'offline/extract_room_catalog.py')
extract=importlib.util.module_from_spec(spec);spec.loader.exec_module(extract)
page=json.loads((LAB/'boss-page.json').read_text(encoding='utf-8'))
markup=page['parse']['text']['*']
strip=lambda s:html.unescape(re.sub('<[^>]+>',' ',s)).strip()
groups=[]
for row in re.findall(r'<tr\b[^>]*>(.*?)</tr>',markup,re.S):
    head=re.search(r'<th\b[^>]*>(.*?)</th>',row,re.S)
    body=re.search(r'<td\b[^>]*>(.*?)</td>',row,re.S)
    if not head or not body:continue
    titles=re.findall(r'<a\b[^>]*title="([^"]+)"[^>]*>[^<]+</a>',head[1])
    if not titles:continue
    group=html.unescape(titles[0])
    if group=='??? (Floor)':group='???'
    if not (group.startswith('Chapter') or group in ['???','Corpse','The Void','Home','Greed Mode']):continue
    names=[html.unescape(x) for x in re.findall(r'<a\b[^>]*title="([^"]+)"[^>]*>[^<]+</a>',body[1])]
    if names:groups.append({'floor':group,'names':list(dict.fromkeys(names))})
entities=ET.fromstring((LAB/'data/entities2.xml').read_bytes())
entity_rows=[dict(e.attrib) for e in entities.findall('entity') if e.get('boss')=='1']
def norm(s):
    s=re.sub('[^a-z0-9]','',s.lower().replace('(boss)',''))
    return s[3:] if s.startswith('the') else s
aliases={'???':'bluebaby','??? (Boss)':'bluebaby','Gurglings':'gurglingboss','Tuff Twins':'tufftwin','Turdlings':'turdling','C.H.A.D.':'chad'}
special=json.loads((LAB/'data/00.special rooms.json').read_text(encoding='utf-8'))
room_sources=[{'stage':'special','rooms':special}]
archive_module=extract.load_archive_module()
with archive_module.Archive(str(LAB.parent/'runtime-instance/resources/packed/afterbirthp.a')) as archive:
    for stage in ET.fromstring((LAB/'data/stages.xml').read_bytes()).findall('stage'):
        path='rooms/'+stage.get('path','').lower().replace('.xml','.stb')
        entry=archive.find(path)
        if entry is None or path.endswith('00.special rooms.stb'):continue
        rooms=extract.parse_afterbirth_stb(archive.decode(entry))
        room_sources.append({'stage':stage.get('name'),'stageConfigId':stage.get('id'),'path':path,'rooms':rooms})
(LAB/'data/room-sources.json').write_text(json.dumps(room_sources,indent=2),encoding='utf-8')
ordered=['The Void','Home','Greed Mode','Chapter 6','Chapter 5','Corpse','???','Chapter 4','Chapter 3.5','Chapter 3','Chapter 2.5','Chapter 2','Chapter 1.5','Chapter 1']
missing=set(ordered)-{g['floor'] for g in groups}
assert not missing, f'Boss floor groups missing from source parse: {sorted(missing)}'
bosses={}
for floor in ordered:
    for group in groups:
        if group['floor']!=floor:continue
        for name in group['names']:
            if name in bosses:
                bosses[name]['floors'].append(floor);continue
            key=norm(aliases.get(name,name))
            matches=[e for e in entity_rows if norm(e.get('name','').lstrip('#'))==key]
            mapped=[]
            for e in matches:
                identity=(int(e['id']),int(e.get('variant',0)),int(e.get('subtype',0)))
                candidates=[]
                for source in room_sources:
                    for room in source['rooms']:
                        if room['type']!=5:continue
                        entry_identity=(102,2,0) if name=='Hush' and source.get('stageConfigId')=='13' else identity
                        if any((x['type'],x['variant'],x['subtype'])==entry_identity for stack in room['spawns'] for x in stack['entities']):
                            candidates.append({'source':source['stage'],'variant':room['variant'],'name':room['name'],
                                'stageConfigId':source.get('stageConfigId'),'roomType':room['type'],
                                'width':room['width'],'height':room['height'],'shape':room['shape'],
                                'command':f"s.boss.{room['variant']}" if source['stage']=='special' else f"d.boss.{room['variant']}",
                                'requiresStageContext':source['stage']!='special',
                                'entryIdentity':'.'.join(map(str,entry_identity)),
                                'includesEarlierPhase':entry_identity!=identity})
                mapped.append({'identity':'.'.join(map(str,identity)),'baseHP':e.get('baseHP'),
                    'bossID':e.get('bossID'),'animation':e.get('anm2path'),'rooms':candidates})
            bosses[name]={'name':name,'floors':[floor],'entities':mapped,'status':'pending' if mapped else 'mapping-required'}
acceptance_path=LAB/'boss-acceptance.json'
if acceptance_path.exists():
    for name,acceptance in json.loads(acceptance_path.read_text(encoding='utf-8')).items():
        if name in bosses:
            bosses[name]['status']=acceptance['status']
            bosses[name]['acceptance']=acceptance
report={'source':{'page':'https://bindingofisaacrebirth.fandom.com/wiki/Bosses',
    'apiTitle':page['parse'].get('title'),'revision':page['parse'].get('revid'),
    'capturedAt':datetime.now(timezone.utc).isoformat()},'order':ordered,'groups':groups,'bosses':list(bosses.values())}
(LAB/'boss-catalog.json').write_text(json.dumps(report,indent=2),encoding='utf-8')
print(json.dumps({'bosses':len(bosses),'mapped':sum(bool(b['entities']) for b in bosses.values()),
    'unmapped':[b['name'] for b in bosses.values() if not b['entities']]}))
