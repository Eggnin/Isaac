"""Bounded open-loop replay; recorded NPC paths are not a closed-loop game."""
import argparse,copy,json,math,queue,sys,tempfile,time
from pathlib import Path
from unittest.mock import Mock
import numpy as np

root=Path(__file__).resolve().parents[1]
parser=argparse.ArgumentParser()
parser.add_argument('--source',type=Path,default=root/'src')
parser.add_argument('--fixture',type=Path,required=True)
parser.add_argument('--frames',type=int,default=60)
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--disable-committed-escape',action='store_true',
                    help='Offline ablation only: retain dash hazards, omit the new escape-rank activation.')
parser.add_argument('--synchronous-egress',action='store_true',
                    help='Offline deterministic advice build; does not change native execution.')
parser.add_argument('--dodge-only',action='store_true',help='Plan movement without shooting or firing navigation.')
args=parser.parse_args()
if not 1<=args.frames<=300:parser.error('--frames must be between 1 and 300')
sys.path.insert(0,str(args.source))
from engine_app import APP_VERSION,ControlWorker
from engine_search import HazardAtlas
enums=json.loads((args.source/'engine_enums.json').read_text(encoding='utf-8'))
cases=json.loads(args.fixture.read_text(encoding='utf-8'))
report={'version':APP_VERSION,'source':str(args.source),'fixture':str(args.fixture),
    'kind':'open_loop_native_sequence','window_frames':args.frames,
    'ablation':'disable_committed_escape' if args.disable_committed_escape else None,
    'synchronous_egress':args.synchronous_egress,
    'dodge_only':args.dodge_only,
    'limits':['NPCs follow original recorded paths; changing inputs can change later enemy behavior.',
              'Player dynamics use recorded fit; this is not proof that input was delivered or damage was avoided.',
              'Target/path history starts at the selected window; original full planner state is unavailable.'],
    'cases':{}}
for name,case in cases.items():
    frame=case['damage']['frame'];all_rows=case['sequence']
    rows=[r for r in all_rows if frame-args.frames<=r['snapshot']['frame']<frame]
    seed=case['damage']['engine_damage_attempts'][0]['source_entity']['InitSeed']
    by_frame={r['snapshot']['frame']:r for r in all_rows}
    results=[]
    with tempfile.TemporaryDirectory() as directory:
        input_control=Mock(requires_foreground=False);input_control._held=set()
        worker=ControlWorker(queue.Queue(),input_controller=input_control,dry_control=True,log_dir=Path(directory),dodge_only=args.dodge_only)
        worker.enabled=True;worker._log=Mock();worker.diagnostics.record=Mock()
        if args.synchronous_egress:
            worker.planner._egress.advise=worker.planner._egress.prepare
        if args.disable_committed_escape:
            decide=worker.planner.decide
            def without_new_escape(*a,**kw):
                if kw.get('motion') is not None:kw['motion']={**kw['motion'],'committed_dashes':[]}
                return decide(*a,**kw)
            worker.planner.decide=without_new_escape
        update=worker.motion.update;compensate=worker.motion.compensate
        measured={}
        def fitted(s,p,**kw):
            result=update(s,p,**kw);result.update(measured);return result
        worker.motion.update=fitted
        worker.motion.compensate=lambda bodies,delay,*a,**kw:compensate(bodies,measured['local_delay_budget_ms']/1000,*a,**kw)
        for row in all_rows:
            if row['snapshot']['frame']>=rows[0]['snapshot']['frame']:break
            s=copy.deepcopy(row['snapshot']);s['enums']=enums
            update(s,s['local_player'])
        try:
            for row in rows:
                s=copy.deepcopy(row['snapshot']);s['enums']=enums
                measured=copy.deepcopy(row['decision']['motion']);s['_read_started']=time.perf_counter()
                result=worker.process_snapshot(s,foreground=False,dt=1/30)
                d=result.get('decision')
                if d is None:continue
                p=s['local_player'];source=next((e for e in s['entities'] if e.get('seed')==seed),None)
                clearance=[];previous=(p['x'],p['y']);last=source
                # Compare only the first committed four-frame segment against
                # the same source's native future, before the damage boundary.
                for n,point in enumerate(d.path[:4],1):
                    future=by_frame.get(s['frame']+n)
                    if future is None or s['frame']+n>=frame:break
                    e=next((e for e in future['snapshot']['entities'] if e.get('seed')==seed),None)
                    if e and last and not e.get('dead') and e.get('collision_class') in (1,2,4):
                        a=(previous[0]-last['x'],previous[1]-last['y'])
                        b=(point[0]-e['x'],point[1]-e['y']);v=(b[0]-a[0],b[1]-a[1])
                        square=v[0]*v[0]+v[1]*v[1]
                        t=max(0.,min(1.,-(a[0]*v[0]+a[1]*v[1])/square)) if square else 0.
                        clearance.append(math.hypot(a[0]+t*v[0],a[1]+t*v[1])-p['radius']-e['radius'])
                    previous=point;last=e
                search=result.get('search') or {}
                guard=min(len(d.path),search.get('latency_guard_frames',4))
                geometry=HazardAtlas(result['world']['bodies'],result['world']['player_radius']).measure(
                    np.asarray([d.path[:guard]]),np.asarray([(p['x'],p['y'])]),0,include_geometry=True,
                    full_paths=np.asarray([d.path[:guard]]),player_start=(p['x'],p['y']))
                results.append({'frame':s['frame'],'move':d.move,'fire':d.fire,
                    'timing_ms':result['timing'],
                    'geometry_hits':search.get('geometry_hits'),'hits':search.get('hits'),
                    'committed_dash_pressure':search.get('committed_dash_pressure',False),
                    'dash_count':len(result.get('motion',{}).get('committed_dashes',[])),
                    'fixed_source_first_segment_contact_frames':sum(v<=0 for v in clearance),
                    'guard_geometry_hits':int(geometry[7][0]),
                    'fixed_source_first_segment_min_clearance':min(clearance) if clearance else None})
        finally:worker.shutdown()
    pairs=list(zip(results,results[1:]))
    reversals=sum(a['move'][0]*b['move'][0]+a['move'][1]*b['move'][1]<0 for a,b in pairs)
    report['cases'][name]={'observations':len(results),
        'zero_move_observations':sum(r['move']==(0,0) for r in results),
        'direction_reversals':reversals,
        'guard_geometry_contact_observations':sum(r['guard_geometry_hits']>0 for r in results),
        'fixed_source_contact_observations':sum(r['fixed_source_first_segment_contact_frames']>0 for r in results),
        'decisions':results}
args.output.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'version':APP_VERSION,'cases':{k:{p:v for p,v in c.items() if p!='decisions'} for k,c in report['cases'].items()}}))
