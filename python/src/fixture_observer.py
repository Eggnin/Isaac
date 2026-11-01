"""Bounded native fixture observer. Uses the production controller, no UI API."""
import argparse
import hashlib
import json
import math
from pathlib import Path
import queue
import statistics
import sys
import time

from engine_app import APP_VERSION, ControlWorker, _json_safe
from engine_reader import EngineReader
from win_platform import GameWindow,InputController,hotkey_pressed


class StopRequested(RuntimeError):pass


def input_echo(output, seconds,*,window=None,process_guard=None,input_mode='scancode'):
    """Compare keyboard encodings in an empty native room, with observed effects."""
    window=window or GameWindow();reader=None;controller=None
    result={'computer_use':False,'game_memory_written':False,'stages':[],'read_errors':0}
    deadline=time.monotonic()+seconds
    def sample():
        s=reader.snapshot(details=True)
        p=s.get('local_player')
        if not p or s.get('paused') or s.get('transitional') or p.get('controls_enabled') is False or p.get('controls_cooldown',0)>0:
            raise ValueError('player_not_ready')
        return s,p
    try:
        while time.monotonic()<deadline:
            if process_guard:process_guard.check_alive()
            try:
                if reader is None:
                    if not window.find():raise ValueError('no_window')
                    import ctypes
                    from ctypes import wintypes
                    from win_platform import user32
                    pid=wintypes.DWORD();user32.GetWindowThreadProcessId(window.hwnd,ctypes.byref(pid))
                    reader=EngineReader(pid.value)
                s,p=sample()
                if s.get('frame',0)>=30:break
            except Exception:
                result['read_errors']+=1
            time.sleep(.03)
        else:raise RuntimeError('No ready room before echo deadline')
        stages=(('windowmessage',{'s','right'}),) if input_mode=='windowmessage' else (('scancode',{'s','right'}),('virtualkey',{'w','left'}))
        result['foreground_at_start']=window.foreground()
        for mode,keys in stages:
            controller=InputController(window,mode=mode)
            s,p=sample();first=dict(p);seen=set();os_states=[];flags=[]
            end=min(deadline,time.monotonic()+1.)
            while time.monotonic()<end:
                if controller.requires_foreground and not window.foreground():raise RuntimeError('focus_lost_no_input')
                controller.set_keys(keys)
                time.sleep(.03)
                s,p=sample()
                seen.update((e['address'],e.get('seed')) for e in s['entities'] if e['type']==2)
                os_states.append(controller.delivery_state())
                flags.append((p.get('controls_enabled'),p.get('controls_cooldown')))
            controller.release_all();controller.close();controller=None
            result['stages'].append({'encoding':mode,'keys':sorted(keys),'start':(first['x'],first['y']),
                'end':(p['x'],p['y']),'delta':(p['x']-first['x'],p['y']-first['y']),
                'tears_observed':len(seen),'weapon_num_fired':[w.get('num_fired') for w in p.get('weapons',[])],
                'os_states':os_states,'control_flags':flags,'keyboard_input':s.get('keyboard_input'),
                'foreground_at_end':window.foreground()})
            time.sleep(.3)
        print(json.dumps(result,ensure_ascii=False),flush=True)
    finally:
        if controller:controller.close()
        if reader:reader.close()
        output.mkdir(parents=True,exist_ok=True)
        (output/'input-echo-result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')


def main(argv=None):
    parser = argparse.ArgumentParser()
    parser.add_argument('--pid', type=int, required=True)
    parser.add_argument('--process-mode',choices=('native','steam'),default='native')
    parser.add_argument('--startup-timeout',type=float,default=35.)
    parser.add_argument('--seconds', type=float, default=35)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--input-echo',action='store_true')
    parser.add_argument('--input-mode',choices=('scancode','virtualkey','windowmessage'),default='scancode')
    parser.add_argument('--start-hard-run',action='store_true')
    parser.add_argument('--start-only',action='store_true')
    parser.add_argument('--whole-run',action='store_true')
    parser.add_argument('--first-floor-goal',action='store_true')
    parser.add_argument('--until-death',action='store_true')
    parser.add_argument('--stall-seconds',type=float,default=30.)
    parser.add_argument('--room-seconds',type=float,default=600.)
    parser.add_argument('--stop-file',type=Path)
    parser.add_argument('--room-test-config',type=Path)
    parser.add_argument('--no-turbo',action='store_true')
    parser.add_argument('--realtime',action='store_true')
    args = parser.parse_args(argv)
    if args.realtime and not(args.room_test_config and args.no_turbo):parser.error('--realtime requires --room-test-config and --no-turbo')
    if args.room_test_config:
        from room_test_runner import main as room_test_main
        return room_test_main(args)
    if args.until_death and (not args.whole_run or args.first_floor_goal):parser.error('--until-death requires --whole-run without --first-floor-goal')
    if args.first_floor_goal and not (args.whole_run and args.start_hard_run):
        parser.error('--first-floor-goal requires --whole-run and --start-hard-run')
    if args.input_echo:
        from native_session import wait_engine_ready
        window=GameWindow()
        guard=wait_engine_ready(window,args.pid,args.process_mode,args.output,timeout=args.startup_timeout)
        try:return input_echo(args.output,args.seconds,window=window,process_guard=guard,input_mode=args.input_mode)
        finally:guard.close()
    worker = ControlWorker(queue.Queue(maxsize=1), log_dir=args.output / 'logs')
    worker.input.mode=args.input_mode
    report = {'version': APP_VERSION, 'computer_use': False, 'game_memory_written': False,
              'observations': 0, 'control_frames': 0, 'shadow_planning_frames': 0,
              'input_backend':args.input_mode,'background_observations':0,'background_control_frames':0,
              'no_game_connection_polls': 0,
              'native_difficulties': [],
              'read_errors': {}, 'damage_observations': 0, 'rooms_cleared': False,
              'first_player': None, 'last_player': None, 'statuses': {},
              'friendly_tear_entities_observed':0, 'weapon_num_fired_max':0,
              'control_frame_meaning':f'decisions submitted by {args.input_mode}; not engine acknowledgement'}
    report['source_hashes']={name:hashlib.sha256((Path(__file__).parent/name).read_bytes()).hexdigest()
        for name in ('engine_app.py','engine_reader.py','engine_motion.py','engine_search.py',
                     'engine_world.py','engine_retreat.py','planner.py','hard_run_start.py','hard_run_route.py','first_floor_goal.py',
                     'native_session.py','fixture_observer.py','win_platform.py','run_journal.py')
        if (Path(__file__).parent/name).is_file()}
    if getattr(sys,'frozen',False):
        binary=Path(sys.executable)
        manifest=json.loads(binary.with_suffix('.BUILD.json').read_text(encoding='utf-8-sig'))
        report['source_hashes']=manifest['source_hashes']
        report['executable_sha256']=hashlib.sha256(binary.read_bytes()).hexdigest()
        if report['executable_sha256'].lower()!=manifest['sha256'].lower():raise RuntimeError('Packaged executable differs from its build manifest')
    tears_seen = set()
    plans, reads, previous_health, previous_cooldown = [], [], None, 0
    previous_inventory=None
    route_anchor=None
    goal_audit=None
    journal=None;last_snapshot=None
    process_guard=None
    last_print, combat_seen, clean_since = 0, False, None
    try:
        if args.until_death:
            from run_journal import RunJournal
            journal=RunJournal(args.output,stall_seconds=args.stall_seconds,room_seconds=args.room_seconds)
            worker.diagnostics.retain_all=True
        def check_stop(check_process=False):
            stop=args.stop_file and args.stop_file.exists() and args.stop_file.read_text(encoding='utf-8-sig').strip()=='stop'
            if stop or (args.until_death and hotkey_pressed(0x76)):
                if args.stop_file:args.stop_file.write_text('stop',encoding='utf-8')
                raise StopRequested('manual_stop')
            if check_process and process_guard:process_guard.check_alive()
        from native_session import wait_engine_ready
        process_guard=wait_engine_ready(worker.window,args.pid,args.process_mode,args.output,timeout=args.startup_timeout)
        report['launch']=process_guard.launch_report
        report['input_ready']=bool(not worker.input.requires_foreground or worker.window.foreground() or worker.window.activate())
        if not report['input_ready']:
            raise RuntimeError('Game engine is ready, but Windows did not grant input focus to the launched game')
        worker.enabled = True
        if args.whole_run:
            from hard_run_route import HardRunRoute
            worker.idle_router=HardRunRoute(first_floor_boss=args.first_floor_goal)
        if args.start_hard_run:
            from hard_run_start import start_hard_run
            startup={}
            try:
                start_hard_run(worker,time.monotonic()+(35 if args.seconds<=0 else min(args.seconds,35)),report=startup,check_alive=lambda:check_stop(True))
            finally:
                args.output.mkdir(parents=True,exist_ok=True)
                (args.output/'hard-start-result.json').write_text(json.dumps(startup,ensure_ascii=False,indent=2),encoding='utf-8')
            report['hard_start']=startup
            if args.start_only:return
            if args.first_floor_goal:
                from first_floor_goal import FirstFloorBossAudit
                goal_audit=FirstFloorBossAudit(startup.get('level_stage'),startup_verified=startup.get('hard_mode_verified') is True,
                    initial_frame=startup.get('first_frame'))
        end = math.inf if args.until_death and args.seconds<=0 else time.monotonic()+args.seconds
        while time.monotonic() < end:
            check_stop()
            if journal and journal.timeout_reason():
                report['stop_reason']=journal.timeout_reason()
                if last_snapshot:(args.output/'stall-snapshot.json').write_text(json.dumps(last_snapshot,indent=2),encoding='utf-8')
                break
            exit_code=process_guard.poll()
            if exit_code is not None:
                report.update(stop_reason='game_exited',game_exit_code=exit_code);break
            began = time.perf_counter()
            try:
                worker._find_game(time.monotonic())
                if worker.reader is None:
                    report['no_game_connection_polls'] += 1
                    report['last_connection_status'] = worker.latest.get('status')
                    time.sleep(.1)
                    continue
                snap = worker.reader.snapshot(details=True)
                last_snapshot=snap
                read_ms = (time.perf_counter()-began)*1000
                snap['_read_started'] = began
                worker._save_first_snapshot(snap)
                if snap.get('difficulty') not in report['native_difficulties']:
                    report['native_difficulties'].append(snap.get('difficulty'))
                foreground = worker.window.foreground()
                if not foreground and worker.input.requires_foreground:
                    report.update(stop_reason='input_focus_lost',input_interruption={
                        'frame':snap.get('frame'),'room_index':snap.get('room_index'),
                        'game_pid':process_guard.pid,'paused':snap.get('paused')})
                    worker._release('fixture_input_focus_lost')
                    break
                worker.dry_control = False
                update = worker.process_snapshot(snap, foreground=foreground,
                                                  dt=1/30, read_ms=read_ms)
                worker._post(update)
                if journal:
                    journal.observe(snap,update.get('player'),update)
                    if time.monotonic()-last_print>5:
                        checkpoint={'frame':snap.get('frame'),'stage':snap.get('level_stage'),'room':snap.get('room_index'),
                            'observations':report['observations'],'health':(snap.get('local_player') or {}).get('health_parts')}
                        (args.output/'progress.json').write_text(json.dumps(checkpoint),encoding='utf-8')
                report['observations'] += 1
                if not foreground:report['background_observations']+=1
                if args.whole_run:
                    room_key=(snap.get('level_stage'),snap.get('room_index'))
                    visited=report.setdefault('visited_rooms',[])
                    if list(room_key) not in visited:visited.append(list(room_key))
                    report['route']=update.get('route')
                    report['items_collected']=list(worker.idle_router.collected)
                    report['items_skipped']=list(worker.idle_router.skipped)
                    if (update.get('route') or {}).get('status')=='free_collectible_skipped':
                        (args.output/f"pickup-skip-{snap.get('level_stage')}-{snap.get('room_index')}-{snap['frame']}.json").write_text(
                            json.dumps(snap,indent=2),encoding='utf-8')
                status = update['status']
                report['statuses'][status] = report['statuses'].get(status, 0)+1
                player = update.get('player')
                if goal_audit:
                    report['first_floor_goal']=goal_audit.observe(snap,player,
                        controlled=bool(update.get('decision') and not worker.dry_control))
                for entity in snap.get('entities',[]):
                    if entity.get('type')==2:tears_seen.add((entity.get('address'),entity.get('seed')))
                report['friendly_tear_entities_observed'] = len(tears_seen)
                for weapon in (update.get('profile') or {}).get('weapons',[]):
                    report['weapon_num_fired_max']=max(report['weapon_num_fired_max'],weapon.get('num_fired',0) or 0)
                if player:
                    inventory=player.get('collectibles') or {}
                    if previous_inventory is None:
                        report['first_collectibles']=dict(inventory)
                    else:
                        for item,count in inventory.items():
                            gained=count-previous_inventory.get(item,0)
                            if gained>0:
                                report.setdefault('inventory_gains',[]).append({
                                    'frame':snap['frame'],'room':snap.get('room_index'),
                                    'collectible':int(item),'count':gained})
                    previous_inventory=dict(inventory)
                    report['last_collectibles']=dict(inventory)
                    state = {k:player.get(k) for k in ('x','y','health_parts','damage_cooldown','stats')}
                    if report['first_player'] is None:report['first_player'] = state
                    report['last_player'] = state
                    health = tuple((player.get('health_parts') or {}).get(k,0) for k in ('red','soul','bone'))
                    cooldown = player.get('damage_cooldown',0)
                    if (previous_health and any(a<b for a,b in zip(health,previous_health))) or (cooldown>0 and previous_cooldown<=0):
                        report['damage_observations'] += 1
                    previous_health,previous_cooldown = health,cooldown
                    if args.whole_run and not args.until_death and report['damage_observations']:
                        report['stop_reason']='damage_observed';break
                    if player.get('dead'):
                        report['player_dead'] = True
                        report['stop_reason']='player_dead'
                        (args.output/'death-snapshot.json').write_text(json.dumps(snap,indent=2),encoding='utf-8')
                        break
                if goal_audit and goal_audit.failures:
                    report['stop_reason']='first_floor_evidence_invalid';break
                if goal_audit and goal_audit.completed:
                    report['stop_reason']='first_floor_boss_defeated_no_damage'
                    (args.output/'first-floor-complete-snapshot.json').write_text(json.dumps(snap,indent=2),encoding='utf-8')
                    break
                if update.get('decision'):
                    report['shadow_planning_frames' if worker.dry_control else 'control_frames'] += 1
                    if not foreground and not worker.dry_control:report['background_control_frames']+=1
                    plans.append(update['timing']['plan'])
                reads.append(read_ms)
                targets = len((update.get('world') or {}).get('targets',[]))
                if args.whole_run and (update.get('route') or {}).get('status') in (
                        'frontier_exhausted','door_transition_timeout','no_safe_door_approach','pickup_collection_timeout') and not args.until_death:
                    report['stop_reason']=update['route']['status'];break
                route=update.get('route') or {}
                if args.whole_run and not args.until_death and player and route.get('status','').startswith('approaching_'):
                    route_key=(snap.get('level_stage'),snap.get('room_index'),route['status'])
                    point=(player['x'],player['y'])
                    if route_anchor is None or route_anchor[0]!=route_key or math.dist(route_anchor[1],point)>=2.:
                        route_anchor=(route_key,point,snap['frame'])
                    elif snap['frame']-route_anchor[2]>90:
                        report['stop_reason']='navigation_no_progress'
                        (args.output/'route-stall-snapshot.json').write_text(json.dumps(snap,indent=2),encoding='utf-8')
                        break
                else:route_anchor=None
                combat_seen |= targets>0
                live_npcs=any(10<=e.get('type',0)<1000 and not e.get('dead') and e.get('health',0)>0
                              for e in snap.get('entities',[]))
                if (combat_seen and player and update.get('world') is not None and
                        not snap.get('paused') and not targets and not live_npcs):
                    clean_since = clean_since or time.monotonic()
                    if time.monotonic()-clean_since>1:
                        report['rooms_cleared'] = True
                        if not args.whole_run:break
                else:clean_since = None
                if time.monotonic()-last_print>5:
                    print(json.dumps({'observations':report['observations'],'control_frames':report['control_frames'],
                                      'targets':targets,'status':status},ensure_ascii=False),flush=True)
                    last_print = time.monotonic()
            except Exception as exc:
                worker._release(str(exc))
                message = str(exc)
                report['read_errors'][message] = report['read_errors'].get(message,0)+1
                if journal:journal.error(message)
            time.sleep(max(0,.033-(time.perf_counter()-began)))
        if args.whole_run:report.setdefault('stop_reason','time_budget_exhausted')
    except StopRequested:
        report['stop_reason']='manual_stop'
    except Exception as exc:
        report['fatal_error']={'type':type(exc).__name__,'message':str(exc)}
        raise
    finally:
        cleanup_error=None
        try:worker.shutdown()
        except Exception as exc:
            report['cleanup_error']={'type':type(exc).__name__,'message':str(exc)}
            if 'fatal_error' not in report:cleanup_error=exc
        if process_guard:
            try:report['game_process_at_observer_end']=process_guard.state()
            except Exception as exc:
                report['process_status_error']={'type':type(exc).__name__,'message':str(exc)}
                if 'fatal_error' not in report and cleanup_error is None:cleanup_error=exc
            finally:
                try:process_guard.close()
                except Exception as exc:
                    report['process_handle_cleanup_error']={'type':type(exc).__name__,'message':str(exc)}
                    if 'fatal_error' not in report and cleanup_error is None:cleanup_error=exc
        report['planning_ms'] = {'count':len(plans),'median':statistics.median(plans) if plans else None,
                                 'max':max(plans) if plans else None}
        report['read_ms_median'] = statistics.median(reads) if reads else None
        report['diagnostics']={'dropped':worker.diagnostics.dropped,'write_errors':worker.diagnostics.write_errors}
        if journal:
            journal.close(report.get('stop_reason','fatal_error'))
            report['event_counts']=dict(journal.counts)
        args.output.mkdir(parents=True,exist_ok=True)
        if goal_audit:
            (args.output/'first-floor-result.json').write_text(json.dumps(goal_audit.result(),indent=2),encoding='utf-8')
        (args.output/'observer-result.json').write_text(json.dumps(_json_safe(report),ensure_ascii=False,indent=2),encoding='utf-8')
        print(json.dumps(_json_safe(report),ensure_ascii=False),flush=True)
        if cleanup_error:raise cleanup_error


if __name__ == '__main__':main()
