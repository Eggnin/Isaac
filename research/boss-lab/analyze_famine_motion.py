"""Compare observed displacement with nominal and native-loop projections."""
from pathlib import Path
import json,math,statistics,collections
LAB=Path(__file__).resolve().parent
capture=json.loads((LAB/'results/famine-motion-calibration.json').read_text())
groups=collections.defaultdict(list)
rows=[]
for sample in capture['motionSamples']:
    before,after=sample['before'],sample['after']
    delta={axis:after['position'][axis]-before['pos'][axis] for axis in ['x','y']}
    nominal=math.hypot(*(delta[k]-before['vel'][k]/30 for k in ['x','y']))
    scaled=math.hypot(*(delta[k]-before['vel'][k]*before['native_motion_scale']/30 for k in ['x','y']))
    row={'frame':sample['frame'],'animation':before['animation'],'afterForm':sample['afterForm'],
         'scale':before['native_motion_scale'],'nominalError':nominal,'scaledError':scaled}
    rows.append(row);groups[before['animation']].append(row)
def summary(items):
    return {'samples':len(items),'meanNominalError':statistics.mean(r['nominalError'] for r in items),
            'meanScaledError':statistics.mean(r['scaledError'] for r in items),
            'maxScaledError':max(r['scaledError'] for r in items)}
assert len(rows)>=100,'insufficient native motion samples'
result={**summary(rows),'byAnimation':{k:summary(v) for k,v in groups.items()},
        'scope':'next-frame Famine-form displacement in the recorded native episode; includes AI changes and collisions',
        'exactPrediction':False,'rows':rows}
result['improvesMeanError']=result['meanScaledError']<result['meanNominalError']
(LAB/'results/famine-motion-analysis.json').write_text(json.dumps(result,indent=2))
print(json.dumps({k:v for k,v in result.items() if k!='rows'}))
