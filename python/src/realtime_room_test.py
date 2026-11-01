"""Visible real-time room test: never pause the engine for external planning.

Uses the production window-message input and its latency/stale-decision checks.
The test Lua connection is used only for authenticated room transitions.
"""
import json
import math
from pathlib import Path
import queue
import statistics
import time
import traceback

from engine_app import APP_VERSION,ControlWorker,_json_safe
from engine_reader import identify
from native_session import wait_engine_ready
from hard_run_start import start_hard_run
from room_mechanism import RoomMechanism,ConsecutiveBlocker
from room_test_transport import RoomBridge,BridgeCommandRejected,BridgeGameExit
from run_journal import RunJournal
from combat_evidence import CombatEvidence
from engine_event_journal import EngineEventJournal,finish_engine_capture
from win_platform import hotkey_pressed


def wait_native_fixture(worker,fixture,deadline,report,check_alive,*,clock=time.monotonic,sleep=time.sleep):
    """Attach to a CLI-loaded native room without driving menus or changing stats."""
    report['startup_mode']='native_room_fixture'
    while clock()<deadline:
        check_alive();worker._find_game(clock())
        if worker.reader is None:sleep(.03);continue
        try:snap=worker.reader.snapshot(details=True)
        except (OSError,ValueError):
            report['fixture_read_retries']=report.get('fixture_read_retries',0)+1
            sleep(.03);continue
        player=snap.get('local_player') or {}
        if snap.get('transitional') or snap.get('frame',0)<15 or not player or player.get('controls_enabled') is False:
            sleep(.03);continue
        if (snap.get('room_config') or {}).get('variant')!=fixture['variant']:
            raise RuntimeError('native_fixture_room_identity_mismatch')
        if len(snap.get('players',[]))!=1 or player.get('controller_index')!=0:
            raise RuntimeError('native_fixture_requires_unique_offline_player')
        if snap.get('paused') or player.get('controls_cooldown',0)>0:sleep(.03);continue
        counts={}
        for e in snap.get('entities',[]):
            if not e.get('dead'):counts[e['type']]=counts.get(e['type'],0)+1
        if any(counts.get(int(typ),0)<count for typ,count in fixture.get('minimum_entities',{}).items()):
            raise RuntimeError('native_fixture_expected_entities_missing')
        report.update(native_fixture=fixture,first_frame=snap['frame'],difficulty=snap.get('difficulty'),
                      hard_mode_verified=snap.get('difficulty')==1)
        worker._save_first_snapshot(snap);return
    raise RuntimeError('native_fixture_readiness_timeout')


def main(args):
    if not args.no_turbo:raise ValueError('Realtime room tests cannot enable turbo')
    output=args.output;output.mkdir(parents=True,exist_ok=True)
    config=json.loads(args.room_test_config.read_text(encoding='utf-8-sig'))
    worker=ControlWorker(queue.Queue(maxsize=1),log_dir=output/'logs')
    worker.input.mode='windowmessage';worker.diagnostics.retain_all=True
    worker.synchronous_test=False
    report={'version':APP_VERSION,'mode':'realtime_windowmessage_room_test','computer_use':False,
        'visual_validation':False,'test_bridge_mod':True,'turbo_requested':False,'turbo_active':False,
        'test_clock_render_hooks':False,'engine_waits_for_planner':False,
        'input_mode':'production_windowmessage','observations':0,'control_frames':0,'background_control_frames':0,
        'damage_observations':0,'visited_rooms':[],'room_results':[],'read_errors':{},
        'stop_reason':'room_test_setup_failed','max_observation_frame_gap':0}
    guard=bridge=journal=evidence=events=None;startup={};logical=[0.];plans=[];timing_samples={}
    wall_started=time.perf_counter();sample_started=None;last_frame=None;last_sample=None
    generation=0;room_key=None;room_ticks=door_ticks=0;last_heartbeat=0.;read_error_since=None
    room_damage=0;room_combat=False;blocker_watch=ConsecutiveBlocker()
    def save(name,value):
        destination=output/name;data=json.dumps(_json_safe(value),ensure_ascii=False,indent=2)
        if name=='progress.json':
            temporary=destination.with_suffix('.tmp');temporary.write_text(data,encoding='utf-8')
            try:temporary.replace(destination)
            except PermissionError:pass
        else:destination.write_text(data,encoding='utf-8')
    def stop():
        if (args.stop_file and args.stop_file.exists() and args.stop_file.read_text(encoding='utf-8-sig').strip()=='stop') or hotkey_pressed(0x76):
            from fixture_observer import StopRequested
            if args.stop_file:args.stop_file.write_text('stop',encoding='utf-8')
            raise StopRequested('manual_stop')
        if guard:guard.check_alive()
    try:
        identify();guard=wait_engine_ready(worker.window,args.pid,args.process_mode,output,timeout=args.startup_timeout)
        report['launch']=guard.launch_report
        if config.get('native_fixture'):
            wait_native_fixture(worker,config['native_fixture'],time.monotonic()+35,startup,stop)
            report['native_fixture']=config['native_fixture']
        else:start_hard_run(worker,time.monotonic()+35,report=startup,check_alive=stop)
        if not worker.reader:raise RuntimeError('room_test_reader_not_connected')
        bridge=RoomBridge(config,stop,realtime=True);hello=bridge.connect()
        if config.get('capture_mode')=='all_callbacks_raw':events=EngineEventJournal(config,output)
        report['bridge_revision']=hello.get('bridge_revision');worker.enabled=True;worker.idle_router=RoomMechanism()
        report['stop_reason']='running';sample_started=time.perf_counter()
        journal=RunJournal(output,stall_seconds=args.stall_seconds,room_seconds=args.room_seconds,
                           semantic_progress=True,clock=lambda:logical[0])
        evidence=CombatEvidence(output/'evidence',input_mode='production_windowmessage')
        deadline=math.inf if args.seconds<=0 else time.monotonic()+args.seconds
        while time.monotonic()<deadline:
            stop();began=time.perf_counter()
            try:snap=worker.reader.snapshot(details=True)
            except (OSError,ValueError) as exc:
                worker._release('Incomplete realtime snapshot; waiting for fresh data')
                text=str(exc);report['read_errors'][text]=report['read_errors'].get(text,0)+1;journal.error(text)
                if read_error_since is None:read_error_since=time.monotonic()
                if time.monotonic()-read_error_since>5:raise
                time.sleep(.005);continue
            read_error_since=None;snap['_read_started']=began
            player=snap.get('local_player') or {}
            if len(snap.get('players',[]))!=1 or player.get('controller_index')!=0:
                raise RuntimeError('room_test_ownership_not_unique')
            key=(snap.get('level_stage'),snap.get('room_index'),snap.get('room'))
            sample=(key,snap['frame'])
            if sample==last_sample:time.sleep(.005);continue
            last_sample=sample
            if last_frame is not None:
                gap=max(0,snap['frame']-last_frame);logical[0]+=gap/30
                report['max_observation_frame_gap']=max(report['max_observation_frame_gap'],gap)
            last_frame=snap['frame']
            if key!=room_key:
                room_key=key;generation+=1;room_ticks=door_ticks=0
                room_damage=evidence.damage;room_combat=False
            room_ticks+=1;foreground=worker.window.foreground()
            update=worker.process_snapshot(snap,foreground=foreground,dt=1/30,read_ms=(time.perf_counter()-began)*1000)
            worker._post(update)
            boundary={'generation':generation,'frame':snap['frame'],'mode':'realtime'}
            evidence.observe(snap,update,worker.input._held,boundary);journal.observe(snap,player,update)
            if events:events.observe(snap,evidence.damage)
            report['observations']+=1;report['damage_observations']=evidence.damage
            for name,value in (update.get('timing') or {}).items():
                if isinstance(value,(int,float)) and math.isfinite(value):timing_samples.setdefault(name,[]).append(value)
            computed=(update.get('timing') or {}).get('compute',(update.get('timing') or {}).get('plan',0))
            if isinstance(computed,(int,float)) and computed>0:plans.append(computed)
            if update.get('decision_rejection'):
                rejected=report.setdefault('decision_rejections',{})
                reason=update['decision_rejection'];rejected[reason]=rejected.get(reason,0)+1
            report['attack_no_progress_windows']=evidence.attack_failures
            report['last_player']={k:player.get(k) for k in ('x','y','health_parts','damage_cooldown','stats')}
            report.setdefault('first_player',report['last_player'])
            room=[key[0],key[1]]
            if room not in report['visited_rooms']:report['visited_rooms'].append(room)
            if update.get('decision'):
                report['control_frames']+=1
                if not foreground:report['background_control_frames']+=1
            targets=(update.get('world') or {}).get('targets') or [];room_combat|=bool(targets)
            route=update.get('route') or {};report['route']=route
            if time.monotonic()-last_heartbeat>=2:
                elapsed=max(.001,time.perf_counter()-sample_started)
                save('progress.json',{'frame':snap['frame'],'stage':key[0],'room':key[1],'observations':report['observations'],
                    'damage_observations':evidence.damage,'rooms_completed':len(report['room_results']),
                    'game_speed':logical[0]/elapsed,'ai_hz':report['control_frames']/elapsed,
                    'mode':report['mode'],'task':route.get('status','combat'),'health':player.get('health_parts')})
                last_heartbeat=time.monotonic()
            if player.get('dead'):
                report['stop_reason']='player_dead';save('death-snapshot.json',snap);break
            opened=RoomMechanism.open_doors(snap)
            eligible=bool(opened and not snap.get('paused') and not snap.get('transitional') and room_ticks>=3)
            door_ticks=door_ticks+1 if eligible else 0
            if door_ticks>=3:
                worker._release('Room open; test transition requested')
                try:after=bridge.next_room()
                except BridgeCommandRejected as exc:
                    if exc.reason=='door_not_open':journal.emit('room_completion_rejected',reason=exc.reason);door_ticks=0;continue
                    raise
                result={'generation':generation,'frame':snap['frame'],'stage':key[0],'room':key[1],
                    'config':snap.get('room_config'),'completion':'observed_open_door','open_slots':[d['slot'] for d in opened],
                    'native_room_clear':snap.get('room_clear'),'combat_seen':room_combat,
                    'damage_observations':evidence.damage-room_damage,'health':player.get('health_parts')}
                report['room_results'].append(result);journal.emit('room_test_complete',**result)
                journal.emit('test_room_teleported',after=after);save('room-results.json',report['room_results'])
                if config.get('native_fixture'):
                    report['stop_reason']='fixture_room_cleared';break
                continue
            if route.get('status') in ('plate_no_effect','unknown_blocker','plate_route_blocked','plate_navigation_stalled'):
                name=f"blocker-{generation}-{route['status']}"
                if not(output/(name+'.json')).exists():save(name+'.json',{'snapshot':snap,'route':route});evidence.save_sequence(name)
            reason='unknown_blocker' if blocker_watch.observe(generation,snap['frame'],route.get('status')) else journal.timeout_reason()
            if reason:
                report['stop_reason']=reason;save('stall-snapshot.json',snap);evidence.save_sequence('stall-sequence');break
            # Wall pacing only for the observer. No game-side step or wait.
            time.sleep(max(0.,1/30-(time.perf_counter()-began)))
        else:report['stop_reason']='time_budget_exhausted'
    except BridgeGameExit:report['stop_reason']='game_closed'
    except Exception as exc:
        from fixture_observer import StopRequested
        if isinstance(exc,StopRequested):report['stop_reason']='manual_stop'
        else:
            report['fatal_error']={'type':type(exc).__name__,'message':str(exc),'traceback':traceback.format_exc()}
            if guard:
                try:report['game_process_at_error']=guard.state()
                except Exception:pass
            if report['stop_reason']=='running':report['stop_reason']='room_test_runtime_error'
            save('room-test-error.json',report['fatal_error'])
    finally:
        report['attack_mechanism_coverage']=worker.world.attack_mechanism_coverage()
        worker.shutdown()
        if events:
            report['engine_event_capture']=finish_engine_capture(events,bridge)
            if not report['engine_event_capture']['complete']:
                report['capture_original_stop_reason']=report['stop_reason'];report['stop_reason']='engine_event_capture_incomplete'
        if bridge:bridge.close()
        if evidence:evidence.close()
        if journal:journal.close(report['stop_reason']);report['event_counts']=journal.counts
        if guard:guard.close()
        save('hard-start-result.json',startup)
        report['diagnostics']={'dropped':worker.diagnostics.dropped,'write_errors':worker.diagnostics.write_errors}
        report['planning_ms']={'median':statistics.median(plans) if plans else None,'max':max(plans) if plans else None}
        report['planning_ms']['includes_rejected_decisions']=True
        def distribution(values):
            ordered=sorted(values)
            return {'count':len(ordered),'p50':statistics.median(ordered),
                'p95':ordered[min(len(ordered)-1,math.ceil(len(ordered)*.95)-1)],
                'p99':ordered[min(len(ordered)-1,math.ceil(len(ordered)*.99)-1)],'max':ordered[-1]}
        report['phase_timing_ms']={name:distribution(values) for name,values in timing_samples.items() if values}
        report['game_seconds']=logical[0];report['wall_seconds']=time.perf_counter()-wall_started
        elapsed=time.perf_counter()-sample_started if sample_started else 0
        report['effective_game_speed']=logical[0]/elapsed if elapsed>0 else None
        report['production_realtime_verified']=False;report['official_multiplayer_verified']=False
        save('observer-result.json',report)
        print(json.dumps(_json_safe({k:report.get(k) for k in ('stop_reason','observations','damage_observations','effective_game_speed','fatal_error')}),ensure_ascii=False),flush=True)
    return 0
