"""Single-player room sampling until death; launched only by the user's script."""
import hashlib
import json
import math
from pathlib import Path
import queue
import sys
import time
import traceback

from engine_app import APP_VERSION,ControlWorker,_json_safe
from engine_reader import identify
from hard_run_start import start_hard_run
from native_session import wait_engine_ready
from room_mechanism import RoomMechanism,ConsecutiveBlocker
from room_test_transport import RoomBridge,RoomTurbo,SynchronousInput
from run_journal import RunJournal
from combat_evidence import CombatEvidence
from engine_event_journal import EngineEventJournal,finish_engine_capture
from win_platform import hotkey_pressed


def main(args):
    if getattr(args,'realtime',False):
        from realtime_room_test import main as realtime_main
        return realtime_main(args)
    output=args.output;output.mkdir(parents=True,exist_ok=True)
    config=json.loads(args.room_test_config.read_text(encoding='utf-8-sig'))
    worker=ControlWorker(queue.Queue(maxsize=1),log_dir=output/'logs')
    worker.input.mode='windowmessage';worker.diagnostics.retain_all=True
    guard=bridge=turbo=evidence=journal=events=None;logical=[0.];boundary=None
    report={'version':APP_VERSION,'mode':'synchronous_room_test','computer_use':False,
            'visual_validation':False,'test_bridge_mod':True,'turbo_requested':not args.no_turbo,
            'gameplay_memory_written':False,'test_clock_render_hooks':False,'turbo_active':False,
            'observations':0,'control_frames':0,'background_control_frames':0,'damage_observations':0,
            'visited_rooms':[],'room_results':[],'read_errors':{},'stop_reason':'room_test_setup_failed'}
    startup={};wall_start=time.monotonic();simulation_start=None
    def save(name,value):
        destination=output/name;data=json.dumps(_json_safe(value),ensure_ascii=False,indent=2)
        if name=='progress.json':
            temporary=destination.with_suffix('.tmp');temporary.write_text(data,encoding='utf-8')
            try:temporary.replace(destination)
            except PermissionError:pass # A status reader may briefly own the old file.
        else:destination.write_text(data,encoding='utf-8')
    def stop():
        if (args.stop_file and args.stop_file.exists() and args.stop_file.read_text(encoding='utf-8-sig').strip()=='stop') or hotkey_pressed(0x76):
            from fixture_observer import StopRequested
            if args.stop_file:args.stop_file.write_text('stop',encoding='utf-8')
            raise StopRequested('manual_stop')
        if guard:guard.check_alive()
    try:
        identify() # Full file SHA256 gate before enabling any test hooks.
        guard=wait_engine_ready(worker.window,args.pid,args.process_mode,output,timeout=args.startup_timeout)
        report['launch']=guard.launch_report
        start_hard_run(worker,time.monotonic()+35,report=startup,check_alive=stop)
        save('hard-start-result.json',startup)
        if not worker.reader:raise RuntimeError('room_test_reader_not_connected')
        bridge=RoomBridge(config,stop);boundary=bridge.connect()
        if config.get('capture_mode')=='all_callbacks_raw':events=EngineEventJournal(config,output)
        report['bridge_revision']=boundary.get('bridge_revision','unknown')
        worker.input.close();worker.input=SynchronousInput();worker.synchronous_test=True;worker.enabled=True
        worker.idle_router=RoomMechanism()
        # The callback now holds the engine still. Only now may turbo be enabled.
        runtime=Path(config.get('runtime_directory',args.room_test_config.parent/'room-test-runtime'))
        if not args.no_turbo:
            turbo=RoomTurbo(guard.pid,runtime);report['turbo_start']=turbo.start()
        report['turbo_active']=not args.no_turbo
        report['test_clock_render_hooks']=report['turbo_active']
        report['stop_reason']='running'
        journal=RunJournal(output,stall_seconds=args.stall_seconds,room_seconds=args.room_seconds,
                           semantic_progress=True,clock=lambda:logical[0])
        evidence=CombatEvidence(output/'evidence');simulation_start=time.perf_counter()
        generation=None;room_ticks=0;door_ticks=0;last_heartbeat=0.;room_damage=0;room_combat=False
        blocker_watch=ConsecutiveBlocker()
        deadline=math.inf if args.seconds<=0 else time.monotonic()+args.seconds
        while time.monotonic()<deadline:
            stop();began=time.perf_counter()
            snap=worker.reader.snapshot(details=True);snap['_read_started']=began
            if snap['frame']!=boundary['frame']:raise RuntimeError('room_test_snapshot_not_at_boundary')
            if len(snap.get('players',[]))!=1 or (snap.get('local_player') or {}).get('controller_index')!=0:
                raise RuntimeError('room_test_ownership_not_unique')
            if generation!=boundary['generation']:
                generation=boundary['generation'];room_ticks=door_ticks=0
                room_damage=evidence.damage;room_combat=False
            room_ticks+=1
            foreground=worker.window.foreground()
            update=worker.process_snapshot(snap,foreground=foreground,dt=1/30,read_ms=(time.perf_counter()-began)*1000)
            worker._post(update);player=snap.get('local_player') or {}
            evidence.observe(snap,update,worker.input._held,boundary);journal.observe(snap,player,update)
            if events:events.observe(snap,evidence.damage)
            report['observations']+=1;report['damage_observations']=evidence.damage
            report['attack_no_progress_windows']=evidence.attack_failures
            report['last_player']={k:player.get(k) for k in ('x','y','health_parts','damage_cooldown','stats')}
            report.setdefault('first_player',report['last_player'])
            key=[snap.get('level_stage'),snap.get('room_index')]
            if key not in report['visited_rooms']:report['visited_rooms'].append(key)
            if update.get('decision'):
                report['control_frames']+=1
                if not foreground:report['background_control_frames']+=1
            targets=(update.get('world') or {}).get('targets') or []
            room_combat|=bool(targets)
            report['route']=update.get('route')
            if time.monotonic()-last_heartbeat>=2:
                save('progress.json',{'frame':snap['frame'],'stage':key[0],'room':key[1],
                    'observations':report['observations'],'mode':report['mode'],'health':player.get('health_parts'),
                    'damage_observations':evidence.damage,'rooms_completed':len(report['room_results']),
                    'game_speed':logical[0]/max(.001,time.perf_counter()-simulation_start),
                    'task':(update.get('route') or {}).get('status','combat')})
                last_heartbeat=time.monotonic()
            if player.get('dead') or boundary.get('dead'):
                report['stop_reason']='player_dead';save('death-snapshot.json',snap);break
            opened=RoomMechanism.open_doors(snap)
            eligible=bool(opened and not snap.get('paused') and not snap.get('transitional') and room_ticks>=3)
            door_ticks=door_ticks+1 if eligible else 0
            if door_ticks>=3:
                result={'generation':generation,'frame':snap['frame'],'stage':key[0],'room':key[1],
                    'config':snap.get('room_config'),'completion':'observed_open_door','open_slots':[d['slot'] for d in opened],
                    'native_room_clear':snap.get('room_clear'),'combat_seen':room_combat,
                    'damage_observations':evidence.damage-room_damage,'health':player.get('health_parts')}
                report['room_results'].append(result);journal.emit('room_test_complete',**result)
                save('room-results.json',report['room_results']);worker.input.release_all()
                previous=boundary;boundary=bridge.next_room()
                logical[0]+=2/30
                journal.emit('test_room_teleported',before=previous,after=boundary)
                continue
            route=update.get('route') or {}
            if route.get('status') in ('plate_no_effect','unknown_blocker'):
                path=output/f"blocker-{generation}-{route['status']}.json"
                if not path.exists():save(path.name,{'snapshot':snap,'route':route});evidence.save_sequence(f"blocker-{generation}-{route['status']}")
            if blocker_watch.observe(generation,snap['frame'],route.get('status')):
                report['stop_reason']='unknown_blocker';save('stall-snapshot.json',snap);break
            reason=journal.timeout_reason()
            if reason:
                report['stop_reason']=reason;save('stall-snapshot.json',snap);evidence.save_sequence('stall-sequence');break
            previous=boundary;boundary=bridge.step(worker.input._held,1)
            logical[0]+=1/30
        else:report['stop_reason']='time_budget_exhausted'
    except Exception as exc:
        from fixture_observer import StopRequested
        if isinstance(exc,StopRequested):report['stop_reason']='manual_stop'
        else:
            report['fatal_error']={'type':type(exc).__name__,'message':str(exc),'traceback':traceback.format_exc()}
            if guard:
                try:report['game_process_at_error']=guard.state()
                except Exception as state_error:report['game_process_at_error']={'status_error':str(state_error)}
            if report['stop_reason']=='running':report['stop_reason']='room_test_runtime_error'
            save('room-test-error.json',report['fatal_error'])
    finally:
        report['attack_mechanism_coverage']=worker.world.attack_mechanism_coverage()
        save('hard-start-result.json',startup)
        if events:
            report['engine_event_capture']=finish_engine_capture(events,bridge)
            if not report['engine_event_capture']['complete']:
                report['capture_original_stop_reason']=report['stop_reason'];report['stop_reason']='engine_event_capture_incomplete'
        if evidence:evidence.close()
        if turbo:
            report['turbo_end']=turbo.stats();turbo.close()
        if bridge:bridge.close()
        worker.shutdown()
        if guard:guard.close()
        if journal:journal.close(report['stop_reason']);report['event_counts']=journal.counts
        report['diagnostics']={'dropped':worker.diagnostics.dropped,'write_errors':worker.diagnostics.write_errors}
        report['game_seconds']=logical[0];report['wall_seconds']=time.monotonic()-wall_start
        elapsed=time.perf_counter()-simulation_start if simulation_start else 0
        report['effective_game_speed']=logical[0]/elapsed if elapsed>0 else None
        report['production_realtime_verified']=False;report['official_multiplayer_verified']=False
        save('observer-result.json',report)
        print(json.dumps(_json_safe({k:report.get(k) for k in ('stop_reason','observations','damage_observations','effective_game_speed','fatal_error')}),ensure_ascii=False),flush=True)
    return 0
