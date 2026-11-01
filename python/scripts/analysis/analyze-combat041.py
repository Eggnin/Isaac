import collections,json,pathlib
ROOT=pathlib.Path(__file__).resolve().parents[1]
SESSION=ROOT/'outputs/loop-runs/20261025-013409-ed6868'
def load(p):return json.loads(p.read_text(encoding='utf-8-sig'))
rows=[];stalls=[];damages=[];attack=collections.Counter();stage=collections.Counter()
for p in sorted(SESSION.glob('run-*/summary.json')):
 s=load(p)
 if s.get('version')!='0.4.0-external-core':continue
 rows.append(s);d=pathlib.Path(s['run_directory'])
 for f in (d/'evidence').glob('attack-no-progress-*.json'):
  a=load(f);attack[a['reason']]+=1
 for f in (d/'evidence').glob('damage-*.json'):
  a=load(f);snapfiles=list((d/'logs').glob(f'damage-snapshot-*-{a["frame"]}.json'))
  snap=load(snapfiles[0]) if snapfiles else {}
  entities={e['address']:e for e in snap.get('entities',[])}
  near=a.get('nearby_modeled_dangers',[])
  e=entities.get(near[0]['id'],{}) if near else {}
  damages.append({'run':p.parent.name,'frame':a['frame'],'nearest_kind':near[0]['kind'] if near else None,
   'nearest_type':e.get('type'),'nearest_variant':e.get('variant'),'nearest_clearance':near[0]['clearance'] if near else None,
   'snapshot':str(snapfiles[0]) if snapfiles else None})
 if s.get('reason') in ('stuck_timeout','room_timeout','unknown_blocker'):
  f=d/'stall-snapshot.json'
  if not f.exists():f=next(d.glob('blocker-*.json'),None)
  snap=load(f) if f else {};pl=snap.get('local_player') or {}
  es=[e for e in snap.get('entities',[]) if 10<=e.get('type',0)<1000 and e.get('health',0)>0 and not e.get('dead')]
  state=load(d/'logs/control-state.json') if (d/'logs/control-state.json').exists() else {}
  stalls.append({'run':p.parent.name,'reason':s['reason'],'stage':snap.get('level_stage'),'room_config':snap.get('room_config'),
   'room_clear':snap.get('room_clear'),'player':[round(pl.get('x',0),1),round(pl.get('y',0),1)],
   'enemies':[(e['type'],e.get('variant'),e.get('health'),round(e['x'],1),round(e['y'],1)) for e in es],
   'state_keys':list(state),'snapshot':str(f),'directory':str(d)})
report={'version':'0.4.0-external-core','runs':len(rows),'reasons':dict(collections.Counter(s['reason'] for s in rows)),
 'restored':sum(s.get('restored') is True for s in rows),'damage_count':len(damages),
 'damage_nearest_counts':[(str(k),n) for k,n in collections.Counter((x['nearest_kind'],x['nearest_type'],x['nearest_variant']) for x in damages).most_common(20)],
 'damage_attribution':'Nearest modeled danger is a candidate, not confirmed source.',
 'attack_failure_counts':dict(attack),'stalls':stalls,'damages':damages}
(ROOT/'outputs/combat041-record-analysis.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
print(json.dumps({k:v for k,v in report.items() if k not in ('stalls','damages')},ensure_ascii=False))
for s in stalls:print(json.dumps({k:v for k,v in s.items() if k not in ('directory','snapshot','state_keys')},ensure_ascii=False))
