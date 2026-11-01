"""Durable run summaries and aggregate memory across loop sessions."""
from datetime import datetime, timezone
import json
from pathlib import Path
import re


def read_json(path,default=None):
    return json.loads(path.read_text(encoding='utf-8-sig')) if path.is_file() else default


def write_json(path,value):
    temporary=path.with_suffix(path.suffix+'.tmp')
    temporary.write_text(json.dumps(value,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    temporary.replace(path)


def record_run(session,attempt,root):
    session,attempt,root=map(Path,(session,attempt,root))
    candidates=sorted(p for pattern in ('external*-until-death-*','external*-room-test-*') for p in attempt.glob(pattern) if p.is_dir())
    run=candidates[-1] if candidates else attempt
    observer=read_json(run/'observer-result.json',{})
    restoration=read_json(run/'restoration.json',{})
    preflight=read_json(run/'preflight.json',{})
    watchdog=read_json(run/'observer-watchdog.json',{})
    build=read_json(attempt/'program-build.json',{})
    error_path=attempt/'attempt-error.txt'
    error=error_path.read_text(encoding='utf-8-sig').strip() if error_path.is_file() else None
    reason=watchdog.get('reason') or observer.get('stop_reason') or ('preflight_failed' if preflight.get('ready') is False else 'run_error')
    seed=None
    if (run/'game-log.txt').is_file():
        text=(run/'game-log.txt').read_text(encoding='utf-8',errors='replace')
        hits=re.findall(r'RNG Start Seed:\s*([^\r\n]+)',text)
        if hits:seed=hits[-1]
    summary={'recorded_at':datetime.now(timezone.utc).isoformat(),'run_directory':str(run),
        'version':observer.get('version',build.get('version')),'executable_sha256':build.get('sha256'),
        'reason':reason,'error':error,'game_seed':seed,
        'restoration_required':(run/'backups.json').exists(),'restored':restoration.get('restored',False),
        **{key:observer.get(key) for key in ('observations','control_frames','background_control_frames',
            'damage_observations','visited_rooms','items_collected','items_skipped','inventory_gains','last_player','diagnostics','event_counts',
            'mode','turbo_active','effective_game_speed','game_seconds','wall_seconds','room_results','attack_no_progress_windows','fatal_error',
            'bridge_revision','game_process_at_error','input_mode','engine_waits_for_planner','max_observation_frame_gap','planning_ms',
            'engine_event_capture','capture_original_stop_reason','phase_timing_ms','decision_rejections','native_fixture')}}
    write_json(attempt/'summary.json',summary)
    for index in (session/'runs.jsonl',root/'runs-history.jsonl'):
        with index.open('a',encoding='utf-8') as file:file.write(json.dumps(summary,ensure_ascii=False,separators=(',',':'))+'\n')
    memory=read_json(root/'loop-memory.json',{'total_runs':0,'end_reasons':{},'failures':{},'maximum_stage_observed':0})
    memory['total_runs']+=1
    memory['end_reasons'][reason]=memory['end_reasons'].get(reason,0)+1
    rooms=summary.get('visited_rooms') or []
    stages=[r[0] for r in rooms if isinstance(r[0],int)]
    memory['maximum_stage_observed']=max([memory['maximum_stage_observed']]+stages)
    if reason not in ('player_dead','manual_stop','time_budget_exhausted'):
        last_room=rooms[-1] if rooms else None
        signature=json.dumps([reason,last_room],separators=(',',':'))
        issue=memory['failures'].setdefault(signature,{'count':0,'last_run':None})
        issue['count']+=1;issue['last_run']=str(run)
    memory['last_run']=summary
    write_json(root/'loop-memory.json',memory)
    write_json(session/'latest-run.json',summary)
    with (session/'session-summary.md').open('a',encoding='utf-8') as file:
        file.write(f"- {attempt.name}: {reason}; version={summary['version']}; damage={summary['damage_observations']}; rooms={len(rooms)}; restored={summary['restored']}\n")
    return summary
