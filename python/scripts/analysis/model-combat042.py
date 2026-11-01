"""Compare 041 and 042 with frozen opponents and fitted player motion only."""
import copy,json,pathlib,queue,sys,tempfile,time,types,marshal
from unittest.mock import Mock
root=pathlib.Path(__file__).resolve().parents[1];src=pathlib.Path(r'C:\Users\Administrator\Documents\Codex\2026-10-16\x20\external');sys.path.insert(0,str(src))
baseline='baseline' in sys.argv
if baseline:
 from PyInstaller.archive.readers import CArchiveReader
 archive=CArchiveReader(str(root/'outputs/IsaacExternalAssist041.exe'));pyz=archive.open_embedded_archive('PYZ.pyz')
 for name in ('shot_geometry','firing_navigation','engine_search','planner','engine_aim','engine_grid_attack','engine_warnings'):
  module=types.ModuleType(name);module.__file__=str(src/(name+'.py'));sys.modules[name]=module;exec(pyz.extract(name),module.__dict__)
 module=types.ModuleType('engine_app');module.__file__=str(src/'engine_app.py');sys.modules['engine_app']=module
 exec(marshal.loads(archive.extract('engine_app')),module.__dict__)
from engine_app import ControlWorker
from room_mechanism import RoomMechanism
cases=json.loads((src/'regression_data/combat042.json').read_text(encoding='utf-8'));results=[]
for name in ('run-0027','run-0035','run-0038','run-0041','run-0106'):
 case=cases[name];snap=copy.deepcopy(case['snapshot']);snap['enums']=json.loads((src/'engine_enums.json').read_text(encoding='utf-8'))
 with tempfile.TemporaryDirectory() as directory:
  control=Mock(requires_foreground=False);control._held=set()
  w=ControlWorker(queue.Queue(),input_controller=control,dry_control=True,log_dir=pathlib.Path(directory))
  w.enabled=True;w.last_frame=snap['frame']-1;w.idle_router=RoomMechanism();w._log=Mock();w.diagnostics.record=Mock()
  original=w.motion.update;compensate=w.motion.compensate
  def fixed(s,p,**kw):
   result=original(s,p,**kw);result.update(copy.deepcopy(case['motion']));result['velocity']=(p['vx'],p['vy']);return result
  w.motion.update=fixed;w.motion.compensate=lambda b,delay,*a,**kw:compensate(b,case['motion']['local_delay_budget_ms']/1000,*a,**kw)
  first=None;hits=0;kind=None;previous=None;reversals=0
  for step in range(60):
   snap['_read_started']=time.perf_counter();u=w.process_snapshot(snap,foreground=False,dt=1/30)
   d=u['decision'];hits+=u['search'].get('hits',0)
   if d.fire:
    first=step;kind='observed_grid_shot' if u['aim'].get('grid_attack') else 'predicted_enemy_shot';break
   if previous and d.move[0]*previous[0]+d.move[1]*previous[1]<0:reversals+=1
   previous=d.move;p=snap['local_player'];m=u['motion'];speed=m.get('speed_per_second') or p['stats']['move_speed']*162
   path,v,_=w.planner._search._trace((p['x'],p['y']),(p['vx'],p['vy']),d.move,speed,m.get('inertia',.8),m.get('position_a',0),m.get('position_b',1),4,w.planner._valid_cache,recovery_mask=u['world']['walkable'],recovery_distance=2**.5*(p['radius']+2))
   for entity in [p,*snap.get('players',[]),*snap.get('entities',[])]:
    if entity.get('address')==p['address']:entity.update(x=path[-1][0],y=path[-1][1],vx=v[0],vy=v[1])
   snap['frame']+=4
  w.shutdown();result={'case':name,'baseline_041':baseline,'steps':step+1,'first_shot':first,'shot_kind':kind,'predicted_collision_frames':hits,'reversals':reversals,'grid_goal':u['search'].get('grid_objective'),'navigation_step':u['search'].get('firing_navigation_step',20)}
  results.append(result);print(json.dumps(result))
(root/'outputs'/('combat042-model-baseline.json' if baseline else 'combat042-model-candidate.json')).write_text(json.dumps({'scope':'Player-only fitted-motion, frozen opponents and hazards. No native damage, obstacle destruction or closed-loop gameplay.','results':results},indent=2),encoding='utf-8')
