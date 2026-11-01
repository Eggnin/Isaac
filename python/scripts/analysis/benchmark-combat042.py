import copy,json,pathlib,queue,statistics,sys,tempfile,time,types,marshal
from unittest.mock import Mock
root=pathlib.Path(__file__).resolve().parents[1];src=pathlib.Path(r'C:\Users\Administrator\Documents\Codex\2026-10-16\x20\external');sys.path.insert(0,str(src))
baseline='baseline' in sys.argv
if baseline:
 from PyInstaller.archive.readers import CArchiveReader
 a=CArchiveReader(str(root/'outputs/IsaacExternalAssist041.exe'));pyz=a.open_embedded_archive('PYZ.pyz')
 for name in ('shot_geometry','firing_navigation','engine_search','planner','engine_aim','engine_grid_attack','engine_warnings'):
  module=types.ModuleType(name);module.__file__=str(src/(name+'.py'));sys.modules[name]=module;exec(pyz.extract(name),module.__dict__)
 m=types.ModuleType('engine_app');m.__file__=str(src/'engine_app.py');sys.modules['engine_app']=m;exec(marshal.loads(a.extract('engine_app')),m.__dict__)
from engine_app import ControlWorker
from room_mechanism import RoomMechanism
cases=json.loads((src/'regression_data/combat042.json').read_text(encoding='utf-8'));results=[]
for name in ('run-0027','run-0035','run-0041'):
 case=cases[name];snap=copy.deepcopy(case['snapshot']);snap['enums']=json.loads((src/'engine_enums.json').read_text(encoding='utf-8'))
 with tempfile.TemporaryDirectory() as d:
  control=Mock(requires_foreground=False);control._held=set();w=ControlWorker(queue.Queue(),input_controller=control,dry_control=True,log_dir=pathlib.Path(d))
  w.enabled=True;w.last_frame=snap['frame']-1;w.idle_router=RoomMechanism();w._log=Mock();w.diagnostics.record=Mock()
  original=w.motion.update;compensate=w.motion.compensate
  def fixed(s,p,**kw):
   r=original(s,p,**kw);r.update(copy.deepcopy(case['motion']));return r
  w.motion.update=fixed;w.motion.compensate=lambda b,delay,*a,**kw:compensate(b,case['motion']['local_delay_budget_ms']/1000,*a,**kw)
  samples=[]
  for i in range(7):
   snap['frame']+=1;snap['_read_started']=time.perf_counter();r=w.process_snapshot(snap,foreground=False,dt=1/30);samples.append(r['timing']['plan'])
  w.shutdown();s=r['search'];result={'case':name,'baseline_041':baseline,'cold_ms':round(samples[0],2),'warm_median_ms':round(statistics.median(samples[2:]),2),'samples':5,'grid_goal':s.get('grid_objective'),'navigation_step':s.get('firing_navigation_step',20),'firing_distance':s.get('firing_navigation_start'),'hits':s.get('hits'),'move':r['decision'].move,'fire':r['decision'].fire}
  results.append(result);print(json.dumps(result))
(root/'outputs'/('combat042-benchmark-baseline.json' if baseline else 'combat042-benchmark-candidate.json')).write_text(json.dumps({'scope':'Frozen scene, warm caches, no game or native FPS measurement.','results':results},indent=2),encoding='utf-8')
