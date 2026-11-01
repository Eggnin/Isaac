"""Check the original extra-animation loop against captured native frames."""
from pathlib import Path
import sys,json,xml.etree.ElementTree as ET,collections
LAB=Path(__file__).resolve().parent
path=Path(sys.argv[1]) if len(sys.argv)>1 else LAB/'results/checkpoint-replay-control.json'
capture=json.loads(path.read_text())
rows=capture['failureAnalysis']['factual']
resources=json.loads((LAB/'data/boss-animation-events-all.json').read_text())
animations={}
for resource in resources:
    file=LAB/'data/animations'/Path(resource['path']).relative_to('gfx')
    root=ET.fromstring(file.read_bytes())
    animations[tuple(resource['identity'][:2])]={a.get('Name'):(int(a.get('FrameNum')),a.get('Loop')=='true') for a in root.findall('./Animations/Animation')}
checks=[]
skipped=collections.Counter()
for first,second in zip(rows,rows[1:]):
    a,b=first.get('boss'),second.get('boss')
    if not a or not b or (a['morph_type'],a['morph_variant'],a['animation'])!=(b['morph_type'],b['morph_variant'],b['animation']):
        skipped['identity-or-animation-changed']+=1;continue
    if a['state']==0:
        skipped['initializing']+=1;continue
    animation=animations.get((a['morph_type'],a['morph_variant']),{}).get(a['animation'])
    if not animation:
        skipped['unmapped-animation']+=1;continue
    length,loop=animation
    if not loop and a['animation_frame']>=length-1:
        skipped['nonlooping-final-frame']+=1;continue
    d=a['delirium'];lo=d['speedControlLo'];hi=d['speedControlHi']
    timer=(lo>>7)&255;counter=((lo>>25)|(hi<<7))&1023
    aggression=int(3*(1-max(0,min(1,a['hp']/d['maxHP']))))
    count=3 if timer else aggression
    active=counter>4*count
    expected=1+((aggression if active else 1) if d['extraAnimationEnabled'] else 0)
    observed=b['animation_frame']-a['animation_frame']
    if loop and observed<0:observed+=length
    checks.append({'frame':first['frame'],'form':[a['morph_type'],a['morph_variant']],
        'animation':a['animation'],'animationFrame':a['animation_frame'],'aggression':aggression,
        'active':active,'expected':expected,'observed':observed,'match':abs(expected-observed)<.001})
groups={}
for row in checks:
    group=groups.setdefault(str(row['aggression']),{'samples':0,'matches':0,'observed':{}})
    group['samples']+=1;group['matches']+=int(row['match'])
    key=str(row['observed']);group['observed'][key]=group['observed'].get(key,0)+1
result={'source':str(path),'scope':'native animation rate calibration; not an attack prediction or boss-clear result',
        'samples':len(checks),'matches':sum(r['match'] for r in checks),'byAggression':groups,
        'skipped':dict(skipped),'mismatches':[r for r in checks if not r['match']],'checks':checks}
output=LAB/'results'/f'{path.stem}-animation-analysis.json'
output.write_text(json.dumps(result,indent=2))
print(json.dumps({k:v for k,v in result.items() if k not in ['checks','mismatches']}))
