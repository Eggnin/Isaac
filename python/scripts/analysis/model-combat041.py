"""Bounded player-only rollout. Frozen enemies do not respond to movement."""
import copy,json,pathlib,queue,sys,tempfile,time,types
from unittest.mock import Mock
root=pathlib.Path(__file__).resolve().parents[1];src=pathlib.Path(r'C:\Users\Administrator\Documents\Codex\2026-10-16\x20\external')
sys.path.insert(0,str(src));baseline='baseline' in sys.argv
if baseline:
 from PyInstaller.archive.readers import CArchiveReader
 archive=CArchiveReader(str(root/'outputs/IsaacExternalAssist040.exe')).open_embedded_archive('PYZ.pyz')
 for name in ('engine_search','planner'):
  module=types.ModuleType(name);sys.modules[name]=module;exec(archive.extract(name),module.__dict__)
from engine_app import ControlWorker
from room_mechanism import RoomMechanism
cases={}
for filename,names in [('combat039.json',['run-0005','run-0007']),('combat041.json',['run-0023','run-0115'])]:
 values=json.loads((src/'regression_data'/filename).read_text(encoding='utf-8'))
 for name in names:cases[filename+':'+name]=values[name]
results=[]
for name,case in cases.items():
 snap=copy.deepcopy(case['snapshot']);snap['enums']=json.loads((src/'engine_enums.json').read_text(encoding='utf-8'))
 with tempfile.TemporaryDirectory() as directory:
  control=Mock(requires_foreground=False);control._held=set()
  w=ControlWorker(queue.Queue(),input_controller=control,dry_control=True,log_dir=pathlib.Path(directory))
  w.enabled=True;w.last_frame=snap['frame']-1;w.idle_router=RoomMechanism();w._log=Mock();w.diagnostics.record=Mock()
  original=w.motion.update;compensate=w.motion.compensate
  def fixed(s,p,**kw):
   result=original(s,p,**kw);result.update(copy.deepcopy(case['motion']));result['velocity']=(p['vx'],p['vy']);return result
  w.motion.update=fixed
  w.motion.compensate=lambda bodies,delay,*a,**kw:compensate(bodies,case['motion']['local_delay_budget_ms']/1000,*a,**kw)
  first=None;hits=0;reversals=0;previous=None;start=(snap['local_player']['x'],snap['local_player']['y'])
  for step in range(60):
   snap['_read_started']=time.perf_counter();u=w.process_snapshot(snap,foreground=False,dt=1/30)
   d=u['decision'];hits+=u['search'].get('hits',0)
   if d.fire:first=step;break
   if previous and d.move[0]*previous[0]+d.move[1]*previous[1]<0:reversals+=1
   previous=d.move;p=snap['local_player'];m=u['motion']
   speed=m.get('speed_per_second') or p['stats']['move_speed']*162
   path,v,_=w.planner._search._trace((p['x'],p['y']),(p['vx'],p['vy']),d.move,speed,
      m.get('inertia',.8),m.get('position_a',0),m.get('position_b',1),4,w.planner._valid_cache,
      recovery_mask=u['world']['walkable'],recovery_distance=2**.5*(p['radius']+2))
   for entity in [p,*snap.get('players',[]),*snap.get('entities',[])]:
    if entity.get('address')==p['address']:entity.update(x=path[-1][0],y=path[-1][1],vx=v[0],vy=v[1])
   snap['frame']+=4
  w.shutdown()
  result={'case':name,'baseline_040':baseline,'steps':step+1,'first_predicted_shot':first,
          'predicted_collision_frames':hits,'reversals':reversals,'start':start,'end':(p['x'],p['y'])}
  results.append(result);print(json.dumps(result))
(root/'outputs'/('combat041-model-baseline.json' if baseline else 'combat041-model-candidate.json')).write_text(json.dumps({'scope':'Player-only fitted-motion, frozen enemies and hazards; not native gameplay or damage evidence.','results':results},indent=2),encoding='utf-8')
