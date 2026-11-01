from pathlib import Path
import importlib.util,xml.etree.ElementTree as ET,json,sys,hashlib
LAB=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('extract',LAB.parent/'offline/extract_room_catalog.py')
extract=importlib.util.module_from_spec(spec);spec.loader.exec_module(extract)
module=extract.load_archive_module()
entities=ET.fromstring((LAB/'data/entities2.xml').read_bytes())
records=[]
all_bosses='--all' in sys.argv
catalog=json.loads((LAB/'boss-catalog.json').read_text())
identities=list(dict.fromkeys(tuple(map(int,e['identity'].split('.'))) for b in catalog['bosses'] for e in b['entities'])) if all_bosses else [(20,0,0),(43,0,0),(68,1,0)]
with module.Archive(str(LAB.parent/'runtime-instance/resources/packed/afterbirthp.a')) as archive:
    for identity in identities:
        entity=next(e for e in entities.findall('entity') if (int(e.get('id')),int(e.get('variant','0')),int(e.get('subtype','0')))==identity)
        path='gfx/'+entity.get('anm2path')
        entry=archive.find(path)
        if entry is None:
            records.append({'identity':identity,'path':path,'missing':True});continue
        data=archive.decode(entry)
        output=LAB/'data/animations'/Path(path).relative_to('gfx') if all_bosses else LAB/'data'/Path(path).name
        output.parent.mkdir(parents=True,exist_ok=True);output.write_bytes(data)
        root=ET.fromstring(data)
        names={e.get('Id'):e.get('Name') for e in root.findall('./Content/Events/Event')}
        animations=[]
        for anim in root.findall('./Animations/Animation'):
            events=[{**event.attrib,'Name':names.get(event.get('EventId'))} for event in anim.findall('./Triggers/Trigger')]
            if events:animations.append({'name':anim.get('Name'),'frames':anim.get('FrameNum'),'loop':anim.get('Loop'),'events':events})
        records.append({'identity':identity,'path':path,'sha256':hashlib.sha256(data).hexdigest(),
          'classification':'uncalibrated animation events; not a complete attack model','eventNames':names,'animations':animations})
(LAB/('data/boss-animation-events-all.json' if all_bosses else 'data/boss-animation-events.json')).write_text(json.dumps(records,indent=2))
print(json.dumps({'bossNames':len(catalog['bosses']),'entityConfigurations':len(records),
    'missing':[r for r in records if r.get('missing')],'withEvents':sum(bool(r.get('animations')) for r in records)}) if all_bosses else json.dumps(records))
