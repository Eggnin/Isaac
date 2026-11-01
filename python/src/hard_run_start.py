"""Start hard mode through observed native menus and normal game key input."""
import time


def menu_action(state):
    if state.get('mode')=='startup_screen' and state.get('engine_mode')==3:return 'enter'
    if state.get('mode')!='menu':return None
    menu=state.get('menu_id')
    if menu==1:return 'enter'
    if menu==2:
        # Never confirm a delete prompt or change the user's selected slot.
        if state.get('save_state')==0 and state.get('save_selection') in (0,1,2):return 'enter'
    elif menu==3:
        selected=state.get('game_selection')
        if selected==0:return 'enter'
        if isinstance(selected,int) and 0<selected<10:return 'up'
    elif menu==5 and state.get('character_status')==0 and state.get('character_input_possible'):
        difficulty=state.get('character_difficulty')
        if difficulty not in (0,1,2,3):return None
        if difficulty!=1:return 'down' if difficulty<1 else 'up'
        character=state.get('character_selection')
        # Current menu entry 0 is random (observed roulette status 2); 1 is
        # Isaac. Do not turn deterministic startup into a random-character run.
        if character!=1:
            if isinstance(character,int) and 0<=character<100:return 'left' if character>1 else 'right'
            return None
        if state.get('character_unlocked'):return 'enter'
    return None


def start_hard_run(worker,deadline,report=None,*,check_alive=None):
    if report is None:report={}
    report.update(actions=[],states=[],read_errors={},hard_mode_verified=False,computer_use=False)
    last_signature=None
    next_action=0.
    try:
        while time.monotonic()<deadline:
            if check_alive:check_alive()
            worker._find_game(time.monotonic())
            if worker.reader is None:
                time.sleep(.03);continue
            if getattr(worker.input,'requires_foreground',True) is not False and not worker.window.foreground():
                report['failure']='input_focus_lost'
                raise RuntimeError('Hard-run startup input focus lost; see hard-start-result.json')
            try:
                state=worker.reader.menu_snapshot()
                signature=tuple(sorted(state.items()))
                if signature!=last_signature:
                    report['states'].append(state);last_signature=signature
                if state.get('mode')=='game':
                    snap=worker.reader.snapshot(details=True)
                    player=snap.get('local_player') or {}
                    if (snap.get('transitional') or snap.get('paused') or snap.get('frame',0)<15
                            or not snap.get('doors') or player.get('controls_enabled') is False
                            or player.get('controls_cooldown',0)>0):
                        time.sleep(.03);continue
                    if snap.get('difficulty')!=1:
                        raise RuntimeError('Native game did not enter hard mode')
                    report.update(hard_mode_verified=True,first_frame=snap['frame'],
                                  first_room=snap['room'],difficulty=snap['difficulty'],
                                  level_stage=snap.get('level_stage'),room_index=snap.get('room_index'),
                                  doors=snap.get('doors'),player_character=(snap.get('local_player') or {}).get('character'))
                    worker._save_first_snapshot(snap)
                    return report
                action=menu_action(state)
                if action and time.monotonic()>=next_action:
                    worker.input.set_keys({action})
                    time.sleep(.08)
                    worker.input.release_all()
                    report['actions'].append({'key':action,'state':state})
                    next_action=time.monotonic()+.45
            except (OSError,ValueError) as exc:
                message=str(exc)
                report['read_errors'][message]=report['read_errors'].get(message,0)+1
                worker.input.release_all()
            time.sleep(.03)
        report['failure']='startup_timeout'
        raise RuntimeError('Hard-run start deadline expired; see hard-start-result.json')
    finally:
        worker.input.release_all()
