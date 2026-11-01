"""Validate new aimed envelopes against existing source-linked native timelines."""
from pathlib import Path
import collections
import hashlib
import json
import math

index_path=Path('research/monster-geometry-analysis-61x-20261030.json')
index=json.loads(index_path.read_text(encoding='utf-8'))
pattern_path=Path('data/mechanisms/gamebot_monster_geometry_patterns.json')
patterns=json.loads(pattern_path.read_text(encoding='utf-8'))['rules']
rules={(r['target_identity'],r['source_animation']):r for r in patterns
       if r['target_identity'] in ['87.0.0','857.0.0']}
timelines={}
for name in index['source_reports']:
    path=Path('research')/name
    if not path.exists():continue
    for run in json.loads(path.read_text(encoding='utf-8')).get('results',[]):
        if run.get('key') in ['87.0.0','857.0.0'] and run.get('geometryTimeline',{}).get('file'):
            timelines[run['geometryTimeline']['file']]=(run['key'],run['seed'])

samples=collections.defaultdict(list)
secondary=[]
for path,(identity,seed) in timelines.items():
    last_primary={}
    last_sources={}
    seen=set()
    for line in Path(path).open(encoding='utf-8'):
        frame=json.loads(line)
        for actor in frame['actors']:
            if actor['identity']==identity:last_sources[actor['address']]=actor
        bursts=collections.defaultdict(list)
        for shot in frame['hazards']:
            if shot['type']!=9 or shot.get('source_identity')!=identity:continue
            flags=int(shot.get('projectile_flags','0'),16)
            if identity=='857.0.0' and flags==0x6000000000:
                last_primary[(shot['address'],shot['seed'])]=(frame['frame'],shot)
            if shot['birth']!=frame['frame']:continue
            key=(shot['address'],shot['seed'],shot['birth'])
            if key in seen:continue
            seen.add(key)
            chain=next((s for s in shot.get('source_chain',[]) if s.get('identity')==identity),{})
            animation=chain.get('animation')
            if identity=='857.0.0' and flags==0x2000000000:
                bursts[shot.get('source_address')].append(shot)
                continue
            rule=rules.get((identity,animation))
            if not rule:continue
            if identity=='857.0.0' and animation=='Attack1' and flags!=0x6000000000:continue
            assert chain['state']==rule['source_state']
            assert chain['animation_frame']==rule['trigger_animation_frame_min']==rule['trigger_animation_frame_max']
            point=shot['position'];velocity=shot['velocity'];player=frame['player']['position']
            speed=math.hypot(velocity['x'],velocity['y'])
            dx,dy=player['x']-point['x'],player['y']-point['y']
            aim_distance=math.hypot(dx,dy)
            angle=math.atan2(velocity['y'],velocity['x'])-math.atan2(dy,dx)
            error=math.degrees(math.atan2(math.sin(angle),math.cos(angle)))
            origin_padding=rule['radius']-shot['radius']
            angular_padding=math.degrees(math.atan2(origin_padding,max(1e-9,aim_distance)))
            assert rule['speed_min']-1e-3<=speed<=rule['speed']+1e-3,(identity,speed)
            assert abs(error)<=rule['phase_uncertainty_degrees']+angular_padding+1e-3,(identity,error)
            samples[(identity,animation)].append({'seed':seed,'frame':frame['frame'],'speed':speed,
                'aim_error_degrees':error,'aim_distance':aim_distance,'projectile_flags':shot['projectile_flags']})
        for source,shots in bursts.items():
            if len(shots)!=8:continue
            center={axis:sum(s['position'][axis] for s in shots)/8 for axis in ['x','y']}
            near=[math.hypot(center['x']-s['position']['x'],center['y']-s['position']['y'])
                  for tick,s in last_primary.values() if 0<frame['frame']-tick<=4 and s.get('source_address')==source]
            npc=last_sources.get(source)
            secondary.append({'seed':seed,'frame':frame['frame'],'count':8,
                'nearest_recent_primary_distance':min(near) if near else None,
                'center_to_npc':math.hypot(center['x']-npc['position']['x'],center['y']-npc['position']['y']) if npc else None})

summary=[]
for (identity,animation),rows in samples.items():
    summary.append({'identity':identity,'animation':animation,'emissions':len(rows),
        'seeds':sorted({r['seed'] for r in rows}),
        'speed_min':min(r['speed'] for r in rows),'speed_max':max(r['speed'] for r in rows),
        'aim_error_min':min(r['aim_error_degrees'] for r in rows),
        'aim_error_max':max(r['aim_error_degrees'] for r in rows)})
assert len(summary)==3
report={'source_index':str(index_path),'patterns_sha256':hashlib.sha256(pattern_path.read_bytes()).hexdigest(),
    'coverage_pass':True,'new_native_episodes':0,'gameplay_evidence':False,'independent_collision_oracle':False,
    'summary':summary,'secondary_bursts':secondary,
    'secondary_note':'0x2000000000 eight-way births separated from initial 0x6000000000 shots; proximity supports projectile-origin split, not an NPC Idle windup rule.'}
Path('validation/aimed-envelope-evidence-20261030.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'coverage_pass':True,'summary':summary,'secondary_bursts':len(secondary)},ensure_ascii=True))
