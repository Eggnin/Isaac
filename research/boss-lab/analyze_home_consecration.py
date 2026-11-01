"""Compare native exposure state with the recorded Home first-hit episode."""
import json,math
from pathlib import Path
LAB=Path(__file__).resolve().parent
episode=json.loads((LAB/'results/home-consecration-diagnostic.json').read_text())
oracle=json.loads((LAB/'results/home-battle-spawn-trace.json').read_text())
rows=[]
for step in episode['failureAnalysis']['factual']:
    p=step['player'];auras=[e for e in step['hazards'] if e.get('aura_radius',0)>0 and not e['friendly']]
    margin=min((math.hypot(e['pos']['x']-p['pos']['x'],e['pos']['y']-p['pos']['y'])-e['aura_radius']-p['radius'] for e in auras),default=None)
    rows.append({'frame':step['frame'],'counterBefore':p['consecration_counter'],
                 'queuedPoisonBefore':bool(p['pending_damage_flags']&0x8000),'auraMargin':margin})
exposed=[r for r in rows if r['queuedPoisonBefore']]
spawn=[s for s in oracle['nativeSpawnEvents'] if s.startswith('[boss-spawn19]')]
assert episode['failureAnalysis']['exactReplay']
assert len(exposed)==31 and [r['counterBefore'] for r in exposed]==list(range(31))
assert all(r['auraMargin'] is not None and r['auraMargin']<0 for r in exposed)
assert len(spawn)==1 and 'frame=381 return=00783de6' in spawn[0]
assert episode['combat']['damageEvents'][0]['frame']==381
exit_test=json.loads((LAB/'results/home-consecration-exit-up.json').read_text())['failureAnalysis']
reset=[(a,b) for a,b in zip(exit_test['actual'],exit_test['actual'][1:]) if a['consecrationCounter']>0 and b['consecrationCounter']==0]
assert exit_test['exactReplay'] and len(reset)==1
assert reset[0][0]['pendingDamageFlags']==0 and reset[0][1]['frame']%3==0
report={'pass':True,'scope':'one native Dogma exposure episode and one exit/reset branch; other variants uncalibrated',
 'sources':{'auraQuery':'0x606c72..0x606d4e','queryFinalDistanceFilter':'0x41a960..0x41a9bf',
            'playerQueue':'0x773b90..0x773c2a','counterIncrement':'0x783a0c',
            'counterReset':'0x783a82..0x783aa0','spawnThreshold':'0x783d52..0x783de1'},
 'interpretation':['Effect 123 hostile aura radius is 40 * Sprite.Scale.X; final query includes the player radius.',
   'A zero-damage poison/burn notification queues exposure; it is not itself the health hit.',
   'Player +0x1ea8 increments once per observed game frame with queued exposure.',
   'The observed holy beam is spawned at player position when the counter becomes greater than 30.',
   'Without a queued notification, the source clears the counter on its period-3 update; the exit branch observed 6 -> 0 at frame 387.'],
 'resetSample':reset[0],'exitBranchHadHits':any(r['hit'] for r in exit_test['actual']),
 'exposedFrames':exposed,'spawnEvents':spawn,'damageEvents':oracle['nativeDamageEvents']}
(LAB/'results/home-consecration-calibration.json').write_text(json.dumps(report,indent=2))
print(json.dumps({'pass':True,'exposureFrames':len(exposed),'firstHitFrame':381,'counterBeforeHit':exposed[-1]['counterBefore']}))
