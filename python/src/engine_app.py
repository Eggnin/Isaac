"""Read-only engine HUD and opt-in keyboard controller for Isaac."""
from __future__ import annotations

import argparse
import ctypes
from ctypes import wintypes
from dataclasses import asdict, is_dataclass
import json
import math
from pathlib import Path
import queue
import sys
import threading
import time
import tkinter as tk
from tkinter import ttk
from typing import Any

from engine_reader import EngineReader, GAME
from engine_weapons import EngineWeaponController, make_profile
from engine_world import EngineWorld
from engine_motion import EngineMotion
from engine_targeting import EngineTargeting
from engine_aim import EngineAim
from engine_diagnostics import EngineDiagnostics
from planner import Planner
from shot_geometry import channel_mask
from win_platform import GameWindow, InputController, hotkey_pressed, user32

VK_F6, VK_F7, VK_ESCAPE = 0x75, 0x76, 0x1B
APP_VERSION='0.5.8-dev-combat'


def _json_safe(value: Any):
    if value is None or isinstance(value, (str, bool, int)):
        return value
    if isinstance(value, float):
        return value if math.isfinite(value) else None
    if is_dataclass(value):
        return _json_safe(asdict(value))
    if isinstance(value, dict):
        return {str(k): _json_safe(v) for k, v in value.items()}
    if isinstance(value, (list, tuple, set)):
        return [_json_safe(v) for v in value]
    if hasattr(value, "tolist"):
        return _json_safe(value.tolist())
    return str(value)


def _finite(value) -> bool:
    return isinstance(value, (int, float)) and math.isfinite(float(value))


class ControlWorker:
    """All engine reads and keyboard state changes stay on this worker thread."""
    def __init__(self, updates: queue.Queue, *, window=None, input_controller=None,
                 reader_factory=EngineReader, world=None, planner=None, weapon_controller=None,
                 log_dir: Path | None = None, dry_control: bool = False, dodge_only: bool = False) -> None:
        self.updates = updates
        self.commands: queue.Queue = queue.Queue()
        self.window = window or GameWindow()
        self.input = input_controller or InputController(self.window,mode='windowmessage')
        self.reader_factory = reader_factory
        self.world = world or EngineWorld()
        self.planner = planner or Planner()
        self.weapons = weapon_controller or EngineWeaponController()
        self.motion = EngineMotion()
        self.targeting = EngineTargeting()
        self.aim = EngineAim()
        self.previous_move = None
        self.idle_router = None
        home=Path(sys.executable).resolve().parent if getattr(sys,'frozen',False) else Path(__file__).resolve().parent
        self.log_dir = log_dir or (home.parent/'records/assist' if home.name in ('src','dist') else home/'logs')
        self.diagnostics=EngineDiagnostics(self.log_dir)
        self._control_signature=None
        self._release_signature=None
        self.dry_control = dry_control
        self.dodge_only = dodge_only
        self.synchronous_test = False
        self.enabled = False
        self.pending_hard_start = False
        self.stop_event = threading.Event()
        self.thread: threading.Thread | None = None
        self.reader = None
        self.pid: int | None = None
        self.last_frame = None
        self.last_frame_time = 0.
        self.last_room = None
        self._observation_key = None
        self._observed_update = None
        self.last_find = 0.0
        self.last_log = 0.0
        self.last_status_log = 0.0
        self.last_snapshot_saved = False
        self.last_plan_seconds = 1/30
        self.latest: dict = {"status": "默认关闭；仅读取引擎状态", "enabled": False}
        self._hotkey_down: set[int] = set()
        self._input_error: str | None = None
        self._close_lock = threading.Lock()

    def start(self) -> None:
        if self.thread is None:
            self.thread = threading.Thread(target=self.run, name="isaac-engine-worker", daemon=False)
            self.thread.start()

    def _post(self, update: dict) -> None:
        self.latest = update
        signature=(update.get('status'),update.get('enabled'),update.get('foreground'),update.get('error'))
        if signature!=self._control_signature:
            self._control_signature=signature
            self.diagnostics._enqueue(('event',{'time':time.time(),'kind':'control_state',
                'version':APP_VERSION,'pid':self.pid,'status':signature[0],'enabled':signature[1],
                'foreground':signature[2],'error':signature[3],
                'keys':sorted(getattr(self.input,'_held',()))}))
        now=time.monotonic()
        if now-self.last_status_log>=0.5:
            self.last_status_log=now
            try:
                self.log_dir.mkdir(parents=True,exist_ok=True)
                snap=update.get('snapshot') or {}
                world=update.get('world') or {}
                state={k:update.get(k) for k in ('status','enabled','foreground','error','timing')}
                state.update(time=time.time(),pid=self.pid,frame=snap.get('frame'),
                             paused=snap.get('paused'),transitional=snap.get('transitional'),
                             targets=len(world.get('targets',[])),bodies=len(world.get('bodies',[])),
                             keys=sorted(self.input._held) if hasattr(self.input,'_held') else None)
                mechanisms=world.get('attack_mechanisms') or {}
                state['attack_mechanisms']={k:mechanisms.get(k) for k in ('continuity','coverage',
                    'current_mechanism_counts','current_monster_sources','unattributed_active')}
                state.update(version=APP_VERSION,search=update.get('search'),aim=update.get('aim'),motion=update.get('motion'))
                state['locality']=snap.get('locality')
                player=update.get('player') or {}
                state['player_controls']={k:player.get(k) for k in ('controls_enabled','controls_cooldown')}
                state['input_delivery']=update.get('input_delivery')
                state['keyboard_input']=update.get('keyboard_input')
                state['diagnostics']={'queue_dropped':self.diagnostics.dropped,'write_errors':self.diagnostics.write_errors}
                (self.log_dir/'control-state.json').write_text(json.dumps(_json_safe(state),ensure_ascii=False,indent=2),encoding='utf-8')
            except OSError:
                pass
        try:
            self.updates.put_nowait(update)
        except queue.Full:
            try:
                self.updates.get_nowait()
            except queue.Empty:
                pass
            try:
                self.updates.put_nowait(update)
            except queue.Full:
                pass

    def _release(self, reason: str) -> None:
        held=sorted(getattr(self.input,'_held',()))
        signature=(reason,tuple(held))
        if signature!=self._release_signature:
            self._release_signature=signature
            self.diagnostics._enqueue(('event',{'time':time.time(),'kind':'release','reason':reason,
                'held_before':held,'frame':self.last_frame}))
        self.previous_move = None
        try:
            self.input.release_all()
            self._input_error = None
        except Exception as exc:
            self._input_error = str(exc)
            reason = f"{reason}；释放按键失败：{exc}"
        self.latest["status"] = reason
        self.latest["decision"] = None

    def set_enabled(self, enabled: bool) -> None:
        self.enabled = bool(enabled)
        if not self.enabled:
            self.pending_hard_start=False
            self._release("辅助已关闭")
        else:
            self.latest["status"] = "辅助已开启；等待有效游戏数据"
        self.latest["enabled"] = self.enabled
        self._post(dict(self.latest))

    def _process_hotkeys(self) -> None:
        pressed = {vk for vk in (VK_F6, VK_F7, VK_ESCAPE) if hotkey_pressed(vk)}
        edges = pressed - self._hotkey_down
        self._hotkey_down = pressed
        if VK_F6 in edges:
            self.set_enabled(not self.enabled)
        if VK_F7 in edges:
            self.set_enabled(False)
        elif VK_ESCAPE in edges:
            self._release("Esc 已释放按键；辅助开关保留，暂停期间不操作")

    def _window_pid(self) -> int | None:
        if not self.window.hwnd or user32 is None:
            return None
        pid = wintypes.DWORD()
        if not user32.GetWindowThreadProcessId(self.window.hwnd, ctypes.byref(pid)) or not pid.value:
            return None
        return int(pid.value)

    def _close_reader(self) -> None:
        if self.reader is not None:
            try:
                self.reader.close()
            finally:
                self.reader = None
        self.pid = None
        self.last_frame = None
        self.last_room = None
        self._observation_key = None
        self._observed_update = None
        self.weapons.reset()
        self.world.reset()
        clear_mechanism_coverage=getattr(self.world,'clear_attack_mechanism_coverage',None)
        if clear_mechanism_coverage:clear_mechanism_coverage()
        self.planner.reset()
        self.motion.reset()
        self.targeting.reset()
        self.aim.reset()
        self.diagnostics.reset_context()
        self._release("游戏读取连接已关闭")
        self.window.target_pid=None

    def _connect(self, pid: int) -> None:
        if self.pid == pid and self.reader is not None:
            return
        self._close_reader()
        self.reader = self.reader_factory(pid)
        self.pid = pid
        self.window.target_pid=pid
        self.last_frame = None
        self.last_room = None
        self.latest["status"] = "已连接只读引擎，等待完整快照"

    def _error_log(self, message: str) -> None:
        try:
            record = {"time": time.time(), "pid": self.pid, "error": str(message)}
            self.diagnostics._enqueue(('event',{**record,'kind':'error'}))
            self.diagnostics._enqueue(('error',record))
        except Exception:
            pass

    def _save_first_snapshot(self, snapshot: dict) -> None:
        if self.last_snapshot_saved:
            return
        self.diagnostics._enqueue(('snapshot',_json_safe(snapshot)))
        self.last_snapshot_saved = True

    def _log(self, snapshot: dict | None, player: dict | None, profile: dict | None,
             decision, timing: dict) -> None:
        now = time.time()
        if now - self.last_log < 1.0:
            return
        self.last_log = now
        record = {
            "time": now, "pid": self.pid,
            "frame": snapshot.get("frame") if snapshot else None,
            "room": snapshot.get("room") if snapshot else None,
            "player": player,
            "stats": (player or {}).get("stats"),
            "weapons": (profile or {}).get("weapons"),
            "entity_count": len((snapshot or {}).get("entities") or []),
            "locality":(snapshot or {}).get('locality'),
            "decision": ({"move": decision.move, "fire": decision.fire,
                          "target": decision.target, "risk": decision.risk} if decision else None),
            "timing_ms": timing,
            "enabled":self.enabled,
            "search":getattr(getattr(self.planner,'_search',None),'last_report',{}),
            "aim":self.aim.last_report,
            "weapon_control":getattr(self.weapons,'last_report',{}),
            "targeting":self.targeting.last_report,
            "weapon_notes":(profile or {}).get('missing_mechanics',[]),
        }
        self.diagnostics._enqueue(('engine',_json_safe(record)))

    def process_snapshot(self, snapshot: dict | None, *, foreground: bool, dt: float,
                         error: str | None = None, read_ms: float = 0.0) -> dict:
        """Process one complete snapshot; exposed for mock-only integration tests."""
        started = time.perf_counter()
        control_available=bool(foreground or getattr(self.input,'requires_foreground',True) is False)
        if error is not None or not isinstance(snapshot, dict):
            self._release(error or "引擎快照不可用")
            self._error_log(error or "引擎快照不可用")
            return {**self.latest, "status": self.latest.get("status"), "enabled": self.enabled,
                    "timing": {"read": 0.0, "world": 0.0, "plan": 0.0}}
        if snapshot.get("complete") is False or snapshot.get("read_complete") is False or snapshot.get("error"):
            reason = str(snapshot.get("error") or "引擎读取不完整")
            self._release(reason)
            self._error_log(reason)
            return {"status": reason, "enabled": self.enabled, "snapshot": snapshot,
                    "player": None, "profile": None, "world": None, "decision": None,
                    "entity_count": len(snapshot.get("entities") or []),
                    "foreground": foreground, "timing": {"read": 0.0, "world": 0.0, "plan": 0.0}}

        player = snapshot.get("local_player")
        entities = snapshot.get("entities")
        if not isinstance(entities, list):
            reason = "快照缺少完整实体列表"
            self._release(reason)
            self._error_log(reason)
            return {"status": reason, "enabled": self.enabled, "snapshot": snapshot,
                    "player": None, "profile": None, "world": None, "decision": None,
                    "entity_count": 0, "foreground": foreground,
                    "timing": {"read": 0.0, "world": 0.0, "plan": 0.0}}
        if player is None:
            reason = "未识别到当前玩家；已释放按键"
            self._release(reason)
            return {"status": reason, "enabled": self.enabled, "snapshot": snapshot,
                    "player": None, "profile": None, "world": None, "decision": None,
                    "entity_count": len(entities), "foreground": foreground,
                    "timing": {"read": 0.0, "world": 0.0, "plan": 0.0}}
        if snapshot.get("transitional"):
            reason = "房间切换中；控制暂时释放"
            self._release(reason)
            return {"status": reason, "enabled": self.enabled, "snapshot": snapshot,
                    "player": player, "profile": None, "world": None, "decision": None,
                    "entity_count": len(entities), "foreground": foreground,
                    "timing": {"read": 0.0, "world": 0.0, "plan": 0.0}}

        if player.get('controls_enabled') is False or player.get('controls_cooldown',0)>0:
            reason='引擎暂不允许角色操作；已释放按键'
            self._release(reason)
            self.weapons.reset()
            self.last_frame=snapshot.get('frame')
            return {'status':reason,'enabled':self.enabled,'snapshot':snapshot,
                    'player':player,'profile':None,'world':None,'decision':None,
                    'entity_count':len(entities),'foreground':foreground,
                    'timing':{'read':read_ms,'world':0.,'plan':0.}}

        profile = make_profile(player, entities)
        if snapshot.get("paused") and not self.dry_control:
            reason = "游戏暂停；控制暂时释放"
            self._release(reason)
            return {"status": reason, "enabled": self.enabled, "snapshot": snapshot,
                    "player": player, "profile": profile, "world": None, "decision": None,
                    "entity_count": len(entities), "foreground": foreground,
                    "timing": {"read": read_ms, "world": 0.0, "plan": 0.0}}
        frame = snapshot.get("frame")
        frame_valid = isinstance(frame, int) and not isinstance(frame, bool)
        if not frame_valid:
            reason = "引擎帧无效；已释放按键"
            self._release(reason)
            return {"status": reason, "enabled": self.enabled, "snapshot": snapshot,
                    "player": player, "profile": profile, "world": None, "decision": None,
                    "entity_count": len(entities), "foreground": foreground,
                    "timing": {"read": read_ms, "world": 0.0, "plan": 0.0}}
        room_key = snapshot.get("room")
        observation_key = (snapshot.get('level_stage'),snapshot.get('room_index'),
                           room_key, player.get('address'), player.get('seed'))
        if ((self._observation_key is not None and observation_key != self._observation_key)
                or (self.last_frame is not None and frame < self.last_frame)):
            self._release("房间、当前玩家或引擎帧发生变化；重新建立预测")
            self.world.reset()
            self.planner.reset()
            self.weapons.reset()
            same_player=(self._observation_key is not None and
                         observation_key[-2:]==self._observation_key[-2:] and
                         self.last_frame is not None and frame>=self.last_frame)
            if same_player:self.motion.reset_room()
            else:
                self.motion.reset()
                if self.idle_router:self.idle_router.reset()
            self.targeting.reset()
            self.aim.reset()
            self.diagnostics.reset_context()
            self._observed_update = None
            self.last_frame = None
            self.last_frame_time = 0.
        self._observation_key = observation_key
        self.last_room = room_key
        observation_gap = frame-self.last_frame if self.last_frame is not None else None
        advancing = observation_gap is not None and observation_gap > 0
        duplicate = observation_gap == 0
        if advancing:
            self.last_frame_time = time.monotonic()
        self.last_frame = frame
        if duplicate:
            # Preserve the last complete observation. Re-observing this frame
            # sets measured laser rotation/endpoint velocity and NPC turns to
            # zero, destroying the history used by the next prediction.
            status = "只读状态正常"
            if self.enabled:
                if not control_available and not self.dry_control:
                    self._release("游戏失焦；已暂时释放，前台恢复后继续")
                    status = self.latest['status']
                elif not self.dry_control and time.monotonic()-self.last_frame_time > .1:
                    self._release("等待新的引擎帧；不沿用旧决策")
                    status = self.latest['status']
                else:
                    status = "等待下一引擎帧；保留当前按键"
            return {**(self._observed_update or {}), "status": status,
                    "enabled": self.enabled, "foreground": foreground,
                    "snapshot": snapshot, "player": player, "profile": profile,
                    "decision": None, "entity_count": len(entities),
                    "timing": {"read": read_ms, "world": 0.0, "plan": 0.0},
                    "keyboard_input": snapshot.get('keyboard_input'),
                    "input_delivery": self.input.delivery_state() if hasattr(self.input,'delivery_state') else None}
        model_snapshot=snapshot
        if isinstance(snapshot.get('level_stage'),int) and isinstance(snapshot.get('room_index'),int):
            model_snapshot={**snapshot,'room':(snapshot['level_stage'],snapshot['room_index'],room_key)}
        if not self.dodge_only:self.aim.observe(model_snapshot,player)
        motion=self.motion.update(model_snapshot,player,input_vector=self.previous_move,
                                  eligible=bool(self.enabled and control_available and not snapshot.get('paused')))
        motion['observation_gap_frames']=observation_gap
        motion['velocity']=(player.get('vx',0.),player.get('vy',0.))
        # Carry the native post-hit cooldown into movement planning.
        cooldown=player.get('damage_cooldown',0)
        motion['damage_cooldown']=max(0,int(cooldown)) if _finite(cooldown) else 0
        world_started = time.perf_counter()
        prediction_snapshot=self.motion.prediction_snapshot(model_snapshot,motion['models'])
        world = self.world.update(prediction_snapshot, player)
        observe_attack_mechanisms=getattr(self.world,'observe_attack_mechanisms',None)
        if observe_attack_mechanisms:world['attack_mechanisms']=observe_attack_mechanisms(model_snapshot)
        world_ms = (time.perf_counter() - world_started) * 1000.0
        world['bodies']=self.motion.apply(snapshot,player,world['bodies'],motion['models'])+motion['hazards']
        capture_started=snapshot.get('_read_started',started-read_ms/1000)
        local_age=max(0.,time.perf_counter()-capture_started)
        delay_budget=min(.2,max(1/30,local_age+self.last_plan_seconds+1/30))
        # In the opt-in single-player test bridge the engine is blocked at
        # this exact boundary. Wall computation time is not simulated latency.
        if self.synchronous_test:delay_budget=0.
        motion['local_delay_budget_ms']=delay_budget*1000
        motion['network_rtt_ms']=None
        motion['network_rtt_source']='not_verified'
        displacement_scale=motion.get('position_a',0.)+motion.get('position_b',1.)
        observed_speed=math.hypot(*motion['velocity'])
        move_stat=(player.get('stats') or {}).get('move_speed')
        nominal_speed=float(move_stat)*5.4 if _finite(move_stat) and move_stat>=0 else 0.
        speed_bound=max(observed_speed,motion.get('speed_per_frame') or 0.,nominal_speed)*displacement_scale*30
        motion['player_displacement_scale']=displacement_scale
        motion['player_speed_bound_per_second']=speed_bound
        world['bodies']=self.motion.compensate(world['bodies'],delay_budget,
            tuple(v*displacement_scale for v in motion['velocity']),player_speed_bound=speed_bound)

        status = "只读状态正常" if not self.enabled else "辅助已开启"
        decision = None
        plan_ms = 0.0
        phases={}
        decision_rejection=None
        if self.enabled:
            if not control_available and not self.dry_control:
                self._release("游戏失焦；已暂时释放，前台恢复后继续")
                status = self.latest["status"]
            elif not frame_valid or (not advancing and not self.dry_control and time.monotonic()-self.last_frame_time>.1):
                self._release("等待新的引擎帧；不沿用旧决策")
                status = self.latest["status"]
            elif not advancing and not self.dry_control:
                status='等待下一引擎帧；保留当前按键'
            else:
                stats = player.get("stats") or {}
                move_stat = stats.get("move_speed")
                if not _finite(move_stat) or move_stat < 0:
                    self._release("自身移动速度不可用；已释放按键")
                    status = self.latest["status"]
                else:
                    bodies = world["bodies"]
                    targets = world["targets"]
                    projectiles = [body for body in bodies if body.kind in ("projectile", "warning", "enemy", "hazard")]
                    cleared_exit=(self.idle_router is not None and snapshot.get('room_clear') is True and
                        (snapshot.get('room_config') or {}).get('type')!=5 and
                        any(d.get('collision') in (0,5) and d.get('state')==2 for d in snapshot.get('doors',[])))
                    if not targets and (not projectiles or cleared_exit or getattr(self.idle_router,'handles_idle_hazards',False)):
                        self.weapons.reset()
                        if self.idle_router is None:
                            self._release("房间内无目标与弹幕；交还玩家自行行动")
                            status = self.latest["status"]
                        else:
                            plan_started=time.perf_counter()
                            decision=self.idle_router.decide(snapshot,player,world,motion,self.planner)
                            self.last_plan_seconds=time.perf_counter()-plan_started
                            plan_ms=self.last_plan_seconds*1000
                            phases['compute']=plan_ms
                            motion['decision_age_ms']=(time.perf_counter()-capture_started)*1000
                            if not self.dry_control and not self.synchronous_test and motion['decision_age_ms']>delay_budget*1000:
                                self._release('导航计算超出安全时限；等待新数据');decision=None
                                self.planner.release_control();decision_rejection='decision_deadline_exceeded'
                                status=self.latest['status']
                            elif not self.dry_control:
                                dx,dy=decision.move;keys=set()
                                if dx:keys.add('a' if dx<0 else 'd')
                                if dy:keys.add('w' if dy<0 else 's')
                                input_started=time.perf_counter();self.input.set_keys(keys)
                                phases['input']=(time.perf_counter()-input_started)*1000
                                length=math.hypot(dx,dy)
                                self.previous_move=(dx/length,dy/length) if length else (0.,0.)
                                status='整局推进：'+self.idle_router.last_report.get('status','idle')
                            else:status='整局导航干跑（未发送按键）'
                    else:
                        if self.idle_router:
                            self.idle_router.last_report={'status':'combat','room':(snapshot.get('level_stage'),snapshot.get('room_index'))}
                        plan_started = time.perf_counter()
                        target_info={} if self.dodge_only else self.targeting.update(player,entities,world,dt)
                        phases['targeting']=(time.perf_counter()-plan_started)*1000
                        spectral_mask=world.get('spectral_shot_walkable')
                        emitters=[] if self.dodge_only else self.aim.channels(profile,player)
                        main_emitters=[c for c in emitters if c['owner']=='player'] or emitters
                        navigation_shots=[{'mask':channel_mask(c,world['shot_walkable'],spectral_mask),
                            'range':c['range'],'offset':(c['origin'][0]-player['x'],c['origin'][1]-player['y']),
                            'channel':{k:c[k] for k in ('speed','range','instantaneous','eye','radius','area_radius') if k in c},
                            'eye_side':-(self.aim.eye or 0) if self.aim.eye_streak>=2 else 0,
                            'targets':{t['address']:t for t in targets},'player_radius':world['player_radius'],
                            'blockers':() if c['body_pass'] else world.get('shot_blockers',())} for c in main_emitters]
                        from engine_grid_attack import ordinary_poop_candidates
                        search_started=time.perf_counter()
                        decision = self.planner.decide(
                            world["player_position"], bodies, world["walkable"], dt,
                            speed=motion.get('speed_per_second') or float(move_stat) * 5.4 * 30.0,
                            player_radius=world["player_radius"],
                            projectile_speed=profile["projectile_speed"],
                            attack_range=profile["attack_range"],
                            shot_walkable=world.get("shot_walkable"),
                            shooter_origin=profile.get("shooter_origin"),
                            target_info=target_info,
                            cursor_mode=bool(profile.get('cursor_control')),
                            aim_origin=profile.get('aim_origin'),motion=motion,frame=frame,
                            attack_cost=lambda p,target:self.aim.position_cost(profile,player,targets,p,target,world.get('shot_blockers',()),world['shot_walkable'],spectral_mask),
                            attack_cost_batch=lambda p,target:self.aim.position_cost_batch(profile,player,targets,p,target,world.get('shot_blockers',()),world['shot_walkable'],spectral_mask),
                            navigation_shots=navigation_shots,
                            terrain_goals=ordinary_poop_candidates(snapshot,player,profile),
                            shot_blockers=world.get('shot_blockers',()) if not set(profile.get('primary_weapon_types',())).intersection((2,3,4,9,10,13)) else (),
                            stationary_attack_ready=bool(self.aim.last_report.get('predicted_hit_channels',0)),
                            dodge_only=self.dodge_only,
                        )
                        plan_ms = (time.perf_counter() - plan_started) * 1000.0
                        phases['search']=(time.perf_counter()-search_started)*1000
                        aim_started=time.perf_counter()
                        decision.fire=None if self.dodge_only else self.aim.choose(profile,player,targets,world['shot_walkable'],decision.path,decision.target,world.get('shot_blockers',[]),spectral_mask)
                        if decision.fire is None and not self.dodge_only:
                            from engine_grid_attack import blocking_poop_shot
                            grid_attack=blocking_poop_shot(snapshot,player,profile,world,decision,self.planner._search.last_report,aim=self.aim)
                            if grid_attack:
                                decision.fire=grid_attack['direction']
                                self.aim.last_report.update(grid_attack=grid_attack,no_fire_reason='clearing_blocking_poop')
                        phases['aim']=(time.perf_counter()-aim_started)*1000
                        weapon_started=time.perf_counter()
                        arrows = set() if self.dodge_only else self.weapons.update(profile, decision.fire, bool(targets), dt)
                        phases['weapons']=(time.perf_counter()-weapon_started)*1000
                        keys = set(arrows)
                        dx, dy = decision.move
                        if dx < 0: keys.add("a")
                        elif dx > 0: keys.add("d")
                        if dy < 0: keys.add("w")
                        elif dy > 0: keys.add("s")
                        self.last_plan_seconds=time.perf_counter()-plan_started
                        phases['compute']=self.last_plan_seconds*1000
                        decision_age=time.perf_counter()-capture_started
                        motion['decision_age_ms']=decision_age*1000
                        if not self.dry_control and not self.synchronous_test and decision_age>delay_budget:
                            self._release('本帧计算超出安全时限；释放按键并等待新数据')
                            self.weapons.reset();self.planner.release_control()
                            decision_rejection='decision_deadline_exceeded'
                            status=self.latest['status'];decision=None
                        elif not self.dry_control:
                            input_started=time.perf_counter();self.input.set_keys(keys)
                            phases['input']=(time.perf_counter()-input_started)*1000
                            length=math.hypot(dx,dy)
                            self.previous_move=(dx/length,dy/length) if length else (0.,0.)
                            status='辅助运行中'
                        else:status='干跑规划中（未发送按键）'
        elif not control_available:
            status = "游戏不在前台；只读状态保留，辅助默认关闭"

        timing = {"read": read_ms, "world": world_ms, "plan": plan_ms,
                  "total": (time.perf_counter() - started) * 1000.0}
        timing.update(phases)
        update = {"status": status, "enabled": self.enabled, "foreground": foreground,
                  "control_available":control_available,
                  "snapshot": snapshot, "player": player, "profile": profile, "world": world,
                  "decision": decision, "entity_count": len(entities), "timing": timing,
                  "dry_control": self.dry_control}
        update['search']=getattr(getattr(self.planner,'_search',None),'last_report',{})
        update['motion']={k:v for k,v in motion.items() if k not in ('models','hazards')}
        update['targeting']=self.targeting.last_report
        update['aim']=self.aim.last_report
        update['keyboard_input']=snapshot.get('keyboard_input')
        update['route']=dict(self.idle_router.last_report) if self.idle_router else None
        update['input_delivery']=self.input.delivery_state() if hasattr(self.input,'delivery_state') else None
        update['decision_rejection']=decision_rejection
        try:
            self.diagnostics.record(snapshot,player,world,decision,{
                'version':APP_VERSION,'status':status,'enabled':self.enabled,'foreground':foreground,
                'control_available':control_available,
                'decision_rejection':decision_rejection,
                'keys':sorted(getattr(self.input,'_held',())), 'timing':timing,'motion':update['motion'],
                'input_delivery':update['input_delivery'],
                'keyboard_input':update['keyboard_input'],
                'search':update['search'],'aim':self.aim.last_report,
                'route':update['route'],
                'weapon_profile':{k:profile.get(k) for k in ('weapons','companions','supported','can_shoot',
                    'attack_range','projectile_speed','shooter_origin','cursor','brim_tail_active','brim_tail_entities',
                    'predicted_hit','dangerous_release','companion_release','charge_fraction')},
                'weapon_control':getattr(self.weapons,'last_report',{}),'targeting':self.targeting.last_report})
        except Exception:self.diagnostics.write_errors+=1
        self._log(snapshot, player, profile, decision, timing)
        self._observed_update = update
        return update

    def _hotkey_loop(self) -> None:
        self._process_hotkeys()

    def _find_game(self, now: float) -> None:
        if now - self.last_find < 1.0:
            return
        self.last_find = now
        try:
            found = self.window.find()
            pid = self._window_pid() if found else None
            if pid is None:
                if self.reader is not None:
                    self._close_reader()
                self.latest["status"] = "等待原版游戏窗口"
                return
            if self.reader is None or pid != self.pid:
                self._connect(pid)
        except Exception as exc:
            if self.reader is not None:
                self._close_reader()
            self.latest["status"] = f"连接失败：{exc}"
            self._error_log(str(exc))

    def _drain_commands(self) -> None:
        while True:
            try:
                command = self.commands.get_nowait()
            except queue.Empty:
                return
            if command == "toggle":
                self.set_enabled(not self.enabled)
            elif command == "disable":
                self.set_enabled(False)
            elif command == 'start_hard_run':
                self.set_enabled(False)
                self.pending_hard_start=True
                self.latest['status']='等待游戏启动；将自动进入困难模式'
                self._post(dict(self.latest))
            elif command in ('route_on','route_off'):
                self._release('已切换自动走门设置')
                if command=='route_on':
                    from hard_run_route import HardRunRoute
                    self.idle_router=HardRunRoute(first_floor_boss=False)
                else:
                    from room_mechanism import RoomMechanism
                    self.idle_router=RoomMechanism()
            elif command == "shutdown":
                self.stop_event.set()
                return

    def _start_pending_run(self):
        from hard_run_start import start_hard_run
        def responsive_check():
            self._drain_commands();self._hotkey_loop()
            if self.stop_event.is_set() or not self.pending_hard_start:
                raise RuntimeError('自动开局已取消')
        try:
            # This helper also waits for engine initialization after the
            # window appears. Do not read the menu once and fail too early.
            start_hard_run(self,time.monotonic()+35,check_alive=responsive_check)
            if self.pending_hard_start and not self.stop_event.is_set():
                self.pending_hard_start=False
                self.set_enabled(True)
        except Exception as exc:
            self.pending_hard_start=False
            self._release(str(exc));self._error_log(str(exc))
            self._post({**self.latest,'enabled':False})

    def _wait_responsive(self, seconds: float) -> None:
        # Reading at 2 Hz while disabled must not reduce hotkey/button polling
        # to 2 Hz as well. Keep control changes responsive between snapshots.
        deadline=time.monotonic()+max(0.,seconds)
        initial=self.enabled
        while not self.stop_event.is_set():
            remaining=deadline-time.monotonic()
            if remaining<=0:
                return
            self.stop_event.wait(min(.015,remaining))
            self._drain_commands()
            self._hotkey_loop()
            if self.enabled!=initial:
                return

    def run(self) -> None:
        try:
            while not self.stop_event.is_set():
                self._drain_commands()
                if self.stop_event.is_set():
                    break
                self._hotkey_loop()
                now = time.monotonic()
                self._find_game(now)
                foreground = bool(self.reader is not None and self.window.foreground())
                if self.reader is None:
                    if self.enabled:
                        self._release(self.latest.get("status", "等待游戏读取连接"))
                    self._post({**self.latest, "enabled": self.enabled, "foreground": False})
                    delay = 1.0 / 30.0 if self.enabled else 0.5
                    self._wait_responsive(delay)
                    continue
                if self.pending_hard_start:
                    self._start_pending_run()
                    continue
                read_started = time.perf_counter()
                try:
                    snapshot = self.reader.snapshot(details=True)
                    read_ms = (time.perf_counter() - read_started) * 1000.0
                    snapshot['_read_started']=read_started
                    if not self.last_snapshot_saved:
                        self._save_first_snapshot(snapshot)
                    dt = 1.0 / 30.0
                    update = self.process_snapshot(snapshot, foreground=foreground, dt=dt, read_ms=read_ms)
                    update["timing"]["read"] = read_ms
                    self._post(update)
                except Exception as exc:
                    self._release(f"读取／规划失败：{exc}")
                    self._error_log(str(exc))
                    self._post({"status": self.latest["status"], "enabled": self.enabled,
                                "foreground": foreground, "error": str(exc),
                                "timing": {"read": (time.perf_counter() - read_started) * 1000.0,
                                           "world": 0.0, "plan": 0.0}})
                delay = 1.0 / 30.0 if self.enabled else 0.5
                self._wait_responsive(max(0.0, delay - (time.perf_counter() - read_started)))
        except Exception as exc:
            self._release(f"worker异常：{exc}")
            self._error_log(str(exc))
        finally:
            self.set_enabled(False)
            if self.reader is not None:
                try:
                    self.reader.close()
                except Exception:
                    pass
                self.reader = None
            try:
                self.input.close()
            except Exception as exc:
                self.latest["status"] = f"输入关闭失败：{exc}"
            self._post({**self.latest, "enabled": False})
            self.diagnostics.close()

    def shutdown(self) -> None:
        self.stop_event.set()
        if self.thread is not None and self.thread.is_alive():
            self.thread.join()
        elif self.thread is None:
            self.enabled = False
            self._release("辅助已退出")
            if self.reader is not None:
                try:
                    self.reader.close()
                finally:
                    self.reader = None
            try:
                self.input.close()
            except Exception as exc:
                self.latest["status"] = f"输入关闭失败：{exc}"
        close=getattr(self.planner,'close',None)
        if close:close()
        self.diagnostics.close()


class EngineApp:
    def __init__(self, root: tk.Tk, *, start_worker: bool = True,
                 worker: ControlWorker | None = None) -> None:
        self.root = root
        self.root.title(f"以撒｜自动战斗 {APP_VERSION}")
        self.root.protocol("WM_DELETE_WINDOW", self.close)
        self.updates: queue.Queue = queue.Queue(maxsize=1)
        self.worker = worker or ControlWorker(self.updates)
        self.closed = False
        self.last_map_draw=0.
        self._build()
        if start_worker:
            self.worker.start()
        self.root.after(100, self._pump)

    def _build(self) -> None:
        shell = ttk.Frame(self.root, padding=12)
        shell.pack(fill="both", expand=True)
        controls = ttk.Frame(shell)
        controls.pack(fill="x")
        self.toggle_text = tk.StringVar(value="开启战斗辅助")
        self.toggle_button = ttk.Button(controls, textvariable=self.toggle_text,
                                        command=lambda: self.worker.commands.put("toggle"))
        self.toggle_button.pack(side="left", fill="x", expand=True)
        ttk.Label(shell,text='自动闪避并射击敌人；拾取和切换房间由你操作。').pack(anchor='w',pady=(8,0))
        self.status = tk.StringVar(value="默认关闭；仅读取引擎状态")
        ttk.Label(shell, textvariable=self.status, wraplength=560).pack(anchor="w", pady=(10, 6))
        self.details = tk.StringVar(value="等待游戏窗口")
        ttk.Label(shell, textvariable=self.details, justify="left", wraplength=560).pack(anchor="w", pady=4)
        self.map = tk.Canvas(shell, width=320, height=220, background="#14171b", highlightthickness=0)
        self.map.pack(anchor="w", pady=(8, 0))
        ttk.Label(shell, text="F6 开关战斗辅助，F7 立即停止。\n请自行启动游戏并进入房间。",wraplength=560).pack(
            anchor="w", pady=(8, 0))

    def _draw_map(self, update: dict) -> None:
        self.map.delete("all")
        snapshot, world, player = update.get("snapshot"), update.get("world"), update.get("player")
        if not snapshot or world is None:
            self.map.create_text(8, 8, anchor="nw", fill="#cbd0d6", text="等待有效房间数据")
            return
        gw, gh = int(snapshot.get("grid_width") or 15), int(snapshot.get("grid_height") or 9)
        cells = snapshot.get("grid_cells") or []
        width, height = 290, 190
        sx, sy = width / max(gw, 1), height / max(gh, 1)
        self.map.create_rectangle(10, 10, 10 + width, 10 + height, outline="#616b75")
        for cell in cells:
            index = int(cell.get("index", -1))
            if index < 0:
                continue
            col, row = index % gw, index // gw
            x0, y0 = 10 + col * sx, 10 + row * sy
            collision = int(cell.get("collision", 0))
            color = "#30383f" if collision in (1, 2, 3, 4) else "#20272d"
            self.map.create_rectangle(x0, y0, x0 + sx, y0 + sy, fill=color, outline="")
        def point(x, y):
            col = (float(x) - 40.0) / (gw * 40.0)
            row = (float(y) - 120.0) / (gh * 40.0)
            return 10 + max(0, min(1, col)) * width, 10 + max(0, min(1, row)) * height
        for body in world.get("bodies", []):
            x, y = point(body.x, body.y)
            color = "#ffd166" if body.kind == "projectile" else "#ff6874" if body.kind == "enemy" else "#c8b4ff"
            self.map.create_oval(x - 3, y - 3, x + 3, y + 3, fill=color, outline="")
        if player:
            x, y = point(player.get("x", 0), player.get("y", 0))
            self.map.create_oval(x - 4, y - 4, x + 4, y + 4, fill="#63e6be", outline="white")

    def _render(self, update: dict) -> None:
        enabled = bool(update.get("enabled"))
        self.toggle_text.set("关闭战斗辅助" if enabled else "开启战斗辅助")
        self.status.set(update.get("status", ""))
        player = update.get("player") or {}
        profile = update.get("profile") or {}
        stats = player.get("stats") or {}
        character = player.get("character", "未知")
        weapons = ", ".join(w.get("name") or f"未知类型{w.get('type')}"
                             for w in profile.get("weapons", [])) or "未知"
        timing = update.get("timing") or {}
        self.details.set(
            f"角色：{character}　自身控制器：{player.get('controller_index','—')}\n移动速度：{stats.get('move_speed', '—')}　射程：{profile.get('attack_range', '—')}\n"
            f"武器：{weapons}\n实体：{update.get('entity_count', 0)}　"
            f"读取：{timing.get('read', 0):.1f} ms　世界：{timing.get('world', 0):.1f} ms　"
            f"规划：{timing.get('plan', 0):.1f} ms")
        now=time.monotonic()
        if now-self.last_map_draw>=.5:
            self.last_map_draw=now
            self._draw_map(update)

    def _pump(self) -> None:
        if self.closed:
            return
        latest = None
        try:
            while True:
                latest = self.updates.get_nowait()
        except queue.Empty:
            pass
        if latest:
            self._render(latest)
        self.root.after(100, self._pump)

    def close(self) -> None:
        if self.closed:
            return
        self.closed = True
        self.worker.shutdown()
        self.root.destroy()


def _headless(seconds: float, *, dry_control: bool) -> int:
    updates: queue.Queue = queue.Queue(maxsize=1)
    worker = ControlWorker(updates, dry_control=dry_control)
    if dry_control:
        worker.enabled = True
    worker.start()
    deadline = time.monotonic() + max(0.0, seconds)
    try:
        while time.monotonic() < deadline:
            try:
                update = updates.get(timeout=min(0.5, max(0.01, deadline - time.monotonic())))
                print(update.get("status", ""))
            except queue.Empty:
                pass
    finally:
        worker.shutdown()
    return 0


def main(argv=None) -> int:
    argv=list(sys.argv[1:] if argv is None else argv)
    if argv and argv[0]=='--fixture-observer':
        try:
            from fixture_observer import main as observe
            observe(argv[1:]);return 0
        except Exception:return 1
    if argv and argv[0]=='--identify-game':
        from engine_reader import identify
        destination=Path(argv[1])
        try:
            destination.write_text(json.dumps(identify(),indent=2),encoding='utf-8');return 0
        except Exception as exc:
            destination.write_text(json.dumps({'error':str(exc)}),encoding='utf-8');return 1
    if argv and argv[0]=='--record-loop-run':
        from loop_history import record_run
        record_run(*argv[1:4]);return 0
    parser = argparse.ArgumentParser(description="以撒只读引擎辅助")
    parser.add_argument("--smoke", action="store_true", help="创建并更新隐藏GUI，不查找游戏、不发送按键")
    modes = parser.add_mutually_exclusive_group()
    modes.add_argument("--observe-seconds", type=float, help="无GUI只读观察指定秒数")
    modes.add_argument("--dry-control-seconds", type=float, help="无GUI运行规划指定秒数但绝不发送按键")
    args = parser.parse_args(argv)
    if args.observe_seconds is not None:
        return _headless(args.observe_seconds, dry_control=False)
    if args.dry_control_seconds is not None:
        return _headless(args.dry_control_seconds, dry_control=True)
    root = tk.Tk()
    app = EngineApp(root, start_worker=not args.smoke)
    if args.smoke:
        root.withdraw()
        root.update()
        app.close()
        return 0
    root.mainloop()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
