"""External experiment GUI; visual controls plus a separate read-only engine probe."""
from __future__ import annotations

import argparse
from dataclasses import asdict
import json
import os
from pathlib import Path
import queue
import sys
import threading
import time
import tkinter as tk
from tkinter import messagebox, ttk

import numpy as np
from PIL import Image, ImageTk

from planner import Planner
from vision import Perception, normalize
from win_platform import GameWindow, InputController, cursor_client, hotkey_pressed, set_dpi_awareness
from win_platform import user32
from engine_reader import EngineReader
import ctypes
from ctypes import wintypes


VK_F6, VK_F7, VK_F8, VK_F9, VK_ESCAPE = 0x75, 0x76, 0x77, 0x78, 0x1B
CARDINALS = {"up", "down", "left", "right"}


class WeaponController:
    """Approximate input timing for a user-selected weapon mode; no weapon detection."""
    MODES = {"普通", "蓄力", "持续"}

    def __init__(self, mode: str = "普通", charge_seconds: float = 1.0,
                 release_tail_seconds: float = 0.4) -> None:
        self.configure(mode, charge_seconds, release_tail_seconds)
        self.reset()

    def configure(self, mode: str, charge_seconds: float, release_tail_seconds: float) -> None:
        if mode not in self.MODES:
            raise ValueError("武器模式必须为普通、蓄力或持续")
        if charge_seconds <= 0 or release_tail_seconds < 0:
            raise ValueError("蓄力秒数须大于0，松手尾段不能小于0")
        self.mode = mode
        self.charge_seconds = float(charge_seconds)
        self.release_tail_seconds = float(release_tail_seconds)
        self.reset()

    def reset(self) -> None:
        self.phase = "charging"
        self.charge_elapsed = 0.0
        self.release_remaining = 0.0
        self.charge_direction: str | None = None

    def update(self, fire: str | None, dt: float) -> tuple[set[str], str | None]:
        """Return held arrow keys and a direction that fired on this update."""
        if fire is not None and fire not in CARDINALS:
            raise ValueError("fire must be a cardinal direction or None")
        dt = max(0.0, float(dt))
        if self.mode in ("普通", "持续"):
            return ({fire} if fire else set()), fire

        if self.phase == "releasing":
            self.release_remaining -= dt
            if self.release_remaining <= 0:
                self.phase = "charging"
                self.charge_elapsed = 0.0
                self.charge_direction = fire
            return set(), None

        if fire:
            self.charge_direction = fire
        if self.charge_direction is None:
            return set(), None
        self.charge_elapsed += dt
        if self.charge_elapsed >= self.charge_seconds and fire is not None:
            fired = self.charge_direction
            self.phase = "releasing"
            self.release_remaining = self.release_tail_seconds
            return set(), fired
        # Hold the currently selected shot direction while charging. The user
        # chooses this approximation because weapon state is not observable here.
        return {self.charge_direction}, None


class Worker:
    """Capture/perception/planning thread. It has no Tk objects or callbacks."""
    def __init__(self, updates: queue.Queue, *, window=None, input_controller=None,
                 perception=None, planner=None, capture_enabled: bool = True,
                 log_dir: Path | None = None) -> None:
        self.updates = updates
        self.commands: queue.Queue = queue.Queue()
        self.window = window or GameWindow()
        self.input = input_controller or InputController(self.window)
        self.perception = perception or Perception()
        self.planner = planner or Planner()
        self.capture_enabled = capture_enabled
        home = Path(sys.executable).resolve().parent if getattr(sys,'frozen',False) else Path(__file__).resolve().parent
        self.log_dir = log_dir or (Path(os.environ.get('ISAAC_EXTERNAL_HOME',str(home))) / 'logs')
        self.stop_event = threading.Event()
        self.thread: threading.Thread | None = None
        self.auto_enabled = False
        self.input_failed = False
        self.input_error = ""
        self.stop_reason = "默认仅观察，按 F8 标记自己"
        self.latest_frame: np.ndarray | None = None
        self.latest_player = None
        self.latest_bodies = []
        self.latest_decision = None
        self.latest_reliable = False
        self.latest_foreground = False
        self.latest_timing = 0.0
        self.last_capture = 0.0
        self.last_window_check = 0.0
        self.last_log = 0.0
        self.last_status = "等待游戏窗口"
        self.engine_probe_status = '只读引擎：尚未检测（不参与自动控制）'
        self._hotkey_down: set[int] = set()
        self._speed = 130.0
        self._projectile_speed = 330.0
        self._attack_range = 280.0
        self._player_radius = 9.0
        self.weapon = WeaponController()
        self._log_file = None

    def start(self) -> None:
        if self.thread is not None:
            return
        self.thread = threading.Thread(target=self.run, name="isaac-visual-worker", daemon=False)
        self.thread.start()

    def _post(self, item: dict) -> None:
        try:
            self.updates.put_nowait(item)
        except queue.Full:
            try:
                self.updates.get_nowait()
            except queue.Empty:
                pass
            try:
                self.updates.put_nowait(item)
            except queue.Full:
                pass

    def _stop_auto(self, reason: str) -> None:
        was_active = self.auto_enabled
        self.auto_enabled = False
        self.weapon.reset()
        self.stop_reason = reason
        try:
            self.input.release_all()
        except Exception as exc:
            self.input_failed = True
            self.input_error = str(exc)
            self.last_status = f"{reason}；释放按键失败：{exc}"
            return
        self.last_status = reason

    def _enable_auto(self) -> bool:
        if self.input_failed:
            self.last_status = f"控制已禁用：按键异常（{self.input_error}）"
            return False
        if not self.latest_foreground:
            self.last_status = "F6 未启用：游戏必须在前台"
            return False
        if not self.latest_reliable:
            self.last_status = "F6 未启用：尚无可靠的自己定位"
            return False
        if self.perception.frame_count < 18:
            self.last_status = "F6 未启用：背景仍在学习，至少需要18帧"
            return False
        self.auto_enabled = True
        self.last_status = "视觉实验控制已启用"
        return True

    def _hotkey_edges(self) -> list[int]:
        pressed_now = {vk for vk in (VK_F6, VK_F7, VK_F8, VK_F9, VK_ESCAPE) if hotkey_pressed(vk)}
        edges = sorted(pressed_now - self._hotkey_down)
        self._hotkey_down = pressed_now
        return edges

    def _handle_hotkeys(self, frame: np.ndarray | None) -> None:
        for vk in self._hotkey_edges():
            if vk in (VK_F7, VK_ESCAPE):
                self._stop_auto("已停止（F7/Escape）")
            elif vk == VK_F6:
                if self.auto_enabled:
                    self._stop_auto("已停止（F6）")
                else:
                    self._enable_auto()
            elif vk in (VK_F8, VK_F9):
                if not self.latest_foreground or frame is None:
                    self.last_status = "标记失败：请先让游戏窗口处于前台"
                    continue
                try:
                    self._stop_auto('重新标记，控制已停止')
                    _, _, client_w, client_h = self.window.client_rect()
                    cx, cy = cursor_client(self.window)
                    x = round(cx * frame.shape[1] / client_w)
                    y = round(cy * frame.shape[0] / client_h)
                    if vk == VK_F8:
                        self.perception.select_self(frame, (x, y))
                        self.latest_reliable = False
                    else:
                        self.perception.add_friend(frame, (x, y))
                    self.last_status = "已标记自己" if vk == VK_F8 else "已标记队友"
                except Exception as exc:
                    self.last_status = f"标记失败：{exc}"

    def _probe_engine(self) -> None:
        self._stop_auto('只读检测，自动控制已停止')
        reader = None
        result = {'time':time.time(),'ok':False,'control_enabled':False}
        try:
            if not self.window.hwnd:
                self.window.find()
            if not self.window.hwnd:
                raise RuntimeError('请从 Steam 正常进入游戏房间，再点只读检测')
            pid = wintypes.DWORD()
            user32.GetWindowThreadProcessId(self.window.hwnd,ctypes.byref(pid))
            reader = EngineReader(pid.value)
            snapshot = reader.snapshot()
            self.log_dir.mkdir(parents=True,exist_ok=True)
            (self.log_dir/'engine-snapshot.json').write_text(
                json.dumps(snapshot,ensure_ascii=False,indent=2),encoding='utf-8')
            positions = '；'.join(f"P{i+1}: ({p['x']:.1f}, {p['y']:.1f}) 半径{p['radius']:.1f}"
                                 for i,p in enumerate(snapshot['players']))
            self.engine_probe_status = f"只读检测通过结构检查：{len(snapshot['entities'])}实体；{positions}。尚未用于控制。"
            result.update(ok=True,players=snapshot['players'],entity_count=len(snapshot['entities']),
                          snapshot_captured_at=snapshot['captured_at'])
        except Exception as exc:
            self.engine_probe_status = f'只读检测未通过：{exc}'
            result.update(error=str(exc),error_type=type(exc).__name__)
        finally:
            if reader:
                reader.close()
        result['message'] = self.engine_probe_status
        self.log_dir.mkdir(parents=True,exist_ok=True)
        (self.log_dir/'engine-probe.json').write_text(
            json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
        self.last_status = self.engine_probe_status
        self._post({'engine_probe_status':self.engine_probe_status,'status':self.last_status,'auto':False})

    def _handle_commands(self) -> None:
        while True:
            try:
                command = self.commands.get_nowait()
            except queue.Empty:
                return
            kind = command.get("kind")
            if kind == 'engine_probe':
                self._probe_engine()
                continue
            if kind == "shutdown":
                self.stop_event.set()
                return
            if kind == "config":
                try:
                    self._speed = float(command.get("speed", self._speed))
                    self._projectile_speed = float(command.get("projectile_speed", self._projectile_speed))
                    self._attack_range = float(command.get("attack_range", self._attack_range))
                    self._player_radius = float(command.get("player_radius", self._player_radius))
                    self.weapon.configure(command.get("weapon", self.weapon.mode),
                                          float(command.get("charge_seconds", self.weapon.charge_seconds)),
                                          float(command.get("release_tail_seconds", self.weapon.release_tail_seconds)))
                except Exception as exc:
                    self.last_status = f"参数无效：{exc}"
                continue
            if kind == "clear":
                self._stop_auto("已清除标记，请重新标记自己")
                self.perception = Perception()
                self.planner.reset()
                self.latest_player = None
                self.latest_bodies = []
                self.latest_reliable = False
                continue
            try:
                frame = command["frame"]
                point = command.get("point")
                if kind == "self":
                    self._stop_auto("重新标记自己，控制已停止")
                    self.perception.select_self(frame, point)
                    self.planner.reset()
                    self.latest_reliable = False
                elif kind == "friend":
                    self.perception.add_friend(frame, point)
                elif kind == "bounds":
                    self.perception.set_bounds(command["rect"])
                elif kind == "blocker":
                    self.perception.add_blocker(command["rect"])
                self.last_status = self.perception.reason
            except Exception as exc:
                self.last_status = f"标记失败：{exc}"

    def _log(self, now: float, player, bodies, decision, timing: float) -> None:
        if now - self.last_log < 1.0:
            return
        self.last_log = now
        self.log_dir.mkdir(parents=True, exist_ok=True)
        if self._log_file is None:
            self._log_file = (self.log_dir / "vision.jsonl").open("a", encoding="utf-8")
        record = {
            "time": now,
            "player": list(player) if player is not None else None,
            "confidence": float(self.perception.self_tracker.confidence),
            "bodies": [asdict(body) for body in bodies],
            "perception": self.perception.reason,
            "decision": ({"move": list(decision.move), "fire": decision.fire,
                          "target": decision.target, "risk": decision.risk} if decision else None),
            "timing_ms": round(timing * 1000, 2),
        }
        self._log_file.write(json.dumps(record, ensure_ascii=False) + "\n")
        self._log_file.flush()

    def _process_frame(self, frame: np.ndarray, dt: float, foreground: bool) -> None:
        began = time.perf_counter()
        player, bodies = self.perception.update(frame, dt)
        self.last_status = (f"控制已禁用：按键异常（{self.input_error}）"
                            if self.input_failed else self.perception.reason)
        self.latest_player, self.latest_bodies = player, bodies
        self.latest_reliable = (player is not None and self.perception.self_tracker.misses == 0
                                and self.perception.self_tracker.confidence >= .68)
        if self.perception.scene_changed:
            self._stop_auto("场景变化，已停止；请重新标记")
        if self.auto_enabled and not foreground:
            self._stop_auto("游戏失焦，已停止；请按 F6 手动恢复")
        elif self.auto_enabled and not self.latest_reliable:
            self._stop_auto("自己定位丢失，已停止并释放按键")
        elif self.auto_enabled and player is not None and self.perception.frame_count >= 18:
            try:
                walkable = self.perception.walkable
                if walkable is None:
                    raise RuntimeError("尚无可走区域")
                decision = self.planner.decide(player, bodies, walkable, dt,
                                               speed=self._speed, player_radius=self._player_radius,
                                               projectile_speed=self._projectile_speed,
                                               attack_range=self._attack_range)
                if decision.target is None:
                    self.weapon.reset()
                    arrows, fired = set(), None
                else:
                    arrows, fired = self.weapon.update(decision.fire, dt)
                keys: set[str] = set()
                dx, dy = decision.move
                if dx < 0: keys.add("a")
                if dx > 0: keys.add("d")
                if dy < 0: keys.add("w")
                if dy > 0: keys.add("s")
                keys.update(arrows)
                try:
                    self.input.set_keys(keys)
                except Exception as exc:
                    self.input_failed = True
                    self.input_error = str(exc)
                    raise
                if fired:
                    self.perception.note_fire(fired, player)
                elif arrows:
                    self.perception.note_fire(next(iter(arrows)), player)
                self.latest_decision = decision
                self.last_status = "视觉实验控制已启用"
            except Exception as exc:
                self._stop_auto(f"控制异常，已停止：{exc}")
                self.latest_decision = None
        else:
            self.latest_decision = None
        elapsed = time.perf_counter() - began
        self.latest_timing = elapsed
        self._log(time.time(), player, bodies, self.latest_decision, elapsed)

    def _publish(self, foreground: bool, elapsed: float) -> None:
        frame = self.latest_frame
        if frame is None:
            return
        try:
            preview = self.perception.draw(frame, self.latest_player, self.latest_bodies,
                                           self.latest_decision.path if self.latest_decision else None)
        except Exception:
            preview = frame.copy()
        self._post({"frame": frame, "preview": preview,
                    'engine_probe_status':self.engine_probe_status,
                    "status": self.last_status if self.auto_enabled or self.last_status else self.perception.reason,
                    "perception": self.perception.reason, "player": self.latest_player,
                    "confidence": float(self.perception.self_tracker.confidence),
                    "body_count": len(self.latest_bodies), "timing": self.latest_timing,
                    "auto": self.auto_enabled, "foreground": foreground,
                    "frame_count": self.perception.frame_count,
                    "decision": self.latest_decision})

    def run(self) -> None:
        period = 1.0 / 30.0
        previous = time.perf_counter()
        try:
            while not self.stop_event.is_set():
                loop_start = time.perf_counter()
                self._handle_commands()
                if self.stop_event.is_set():
                    break
                now = time.monotonic()
                if self.capture_enabled and now - self.last_window_check >= 1.0:
                    self.last_window_check = now
                    try:
                        if not self.window.hwnd or not self.window.foreground():
                            found = self.window.find()
                            if found:
                                self.last_status = "已找到游戏窗口；默认仅观察"
                        else:
                            self.latest_foreground = True
                    except Exception as exc:
                        self.last_status = f"查找窗口失败：{exc}"
                foreground = bool(self.window.hwnd and self.window.foreground()) if self.capture_enabled else False
                self.latest_foreground = foreground
                frame = self.latest_frame
                self._handle_hotkeys(frame)
                if self.capture_enabled and self.window.hwnd:
                    try:
                        raw = self.window.capture()
                        frame = normalize(raw)
                        self.latest_frame = frame
                        dt = max(.001, min(.2, time.perf_counter() - previous))
                        previous = time.perf_counter()
                        self._process_frame(frame, dt, foreground)
                    except Exception as exc:
                        self._stop_auto(f"处理异常，已停止并释放按键：{exc}")
                elif self.auto_enabled:
                    self._stop_auto("游戏窗口不可用，已停止")
                self._publish(foreground, time.perf_counter() - loop_start)
                remaining = period - (time.perf_counter() - loop_start)
                if remaining > 0:
                    self.stop_event.wait(remaining)
        except Exception as exc:
            self.last_status = f"worker异常：{exc}"
            self._stop_auto(self.last_status)
            self._post({"status": self.last_status, "auto": False})
        finally:
            self._stop_auto("worker已退出")
            try:
                self.input.close()
            except Exception as exc:
                self.last_status = f"关闭输入时失败：{exc}"
            if self._log_file:
                self._log_file.close()

    def shutdown(self) -> None:
        self.stop_event.set()
        if self.thread is not None and self.thread.is_alive():
            self.thread.join()
        elif self.thread is None:
            self._stop_auto("worker未启动")


class App:
    def __init__(self, root: tk.Tk, start_worker: bool = True) -> None:
        self.root = root
        self.root.title("以撒：外部视觉实验版")
        self.root.protocol("WM_DELETE_WINDOW", self.close)
        self.updates: queue.Queue = queue.Queue(maxsize=2)
        self.worker = Worker(self.updates)
        self.frame: np.ndarray | None = None
        self.photo = None
        self.image_size = (0, 0)
        self.image_origin = (0, 0)
        self.tool: str | None = None
        self.drag_start: tuple[int, int] | None = None
        self.drag_rect = None
        self.closing = False
        self._build_ui()
        if start_worker:
            self.worker.start()
        self.root.after(30, self._pump)

    def _build_ui(self) -> None:
        shell = ttk.Frame(self.root, padding=8)
        shell.pack(fill="both", expand=True)
        left = ttk.Frame(shell)
        left.pack(side="left", fill="both", expand=True)
        right = ttk.Frame(shell, padding=(10, 0, 0, 0))
        right.pack(side="right", fill="y")
        self.canvas = tk.Canvas(left, width=640, height=480, background="#17191d", highlightthickness=0)
        self.canvas.pack(fill="both", expand=True)
        self.canvas.bind("<ButtonPress-1>", self._press)
        self.canvas.bind("<B1-Motion>", self._drag)
        self.canvas.bind("<ButtonRelease-1>", self._release)
        ttk.Label(right, text="默认仅观察｜窗口化／无边框模式\nF8标记自己　F9标记队友\nF6启停控制　F7或Esc立即停止", justify="left").pack(anchor="w", pady=(0, 8))
        self.status_var = tk.StringVar(value="等待画面；不会自动发送按键")
        ttk.Label(right, textvariable=self.status_var, wraplength=310).pack(anchor="w", pady=4)
        self.engine_probe_var = tk.StringVar(value='只读引擎：尚未检测（不参与自动控制）')
        ttk.Label(right,textvariable=self.engine_probe_var,wraplength=310).pack(anchor='w',pady=4)
        self.stats_var = tk.StringVar(value="识别 0｜背景 0/18｜处理 —")
        ttk.Label(right, textvariable=self.stats_var).pack(anchor="w", pady=4)
        ttk.Button(right, text="标记自己（点击）", command=lambda: self._set_tool("self")).pack(fill="x", pady=2)
        ttk.Button(right, text="标记队友（点击）", command=lambda: self._set_tool("friend")).pack(fill="x", pady=2)
        ttk.Button(right, text="房间范围（拖框）", command=lambda: self._set_tool("bounds")).pack(fill="x", pady=2)
        ttk.Button(right, text="障碍物（拖框）", command=lambda: self._set_tool("blocker")).pack(fill="x", pady=2)
        ttk.Button(right, text="清除并重标记", command=lambda: self.worker.commands.put({"kind": "clear"})).pack(fill="x", pady=(2, 8))
        ttk.Button(right, text="从 Steam 启动游戏", command=self._launch_game).pack(fill="x", pady=2)
        ttk.Button(right, text='只读引擎检测（不操作）',
                   command=lambda:self.worker.commands.put({'kind':'engine_probe'})).pack(fill='x',pady=2)
        ttk.Separator(right).pack(fill="x", pady=8)
        ttk.Label(right, text="估计参数（只影响规划，不改角色属性）").pack(anchor="w")
        self.speed_var = tk.StringVar(value="130")
        self.range_var = tk.StringVar(value="280")
        self.shot_speed_var = tk.StringVar(value="330")
        self.radius_var = tk.StringVar(value="9")
        self.charge_var = tk.StringVar(value="1.0")
        self.tail_var = tk.StringVar(value="0.4")
        self.weapon_var = tk.StringVar(value="普通")
        for label, variable in (("移动速度估计 px/s", self.speed_var), ("攻击射程估计 px", self.range_var),
                                ("泪弹速度估计 px/s", self.shot_speed_var), ("自己半径估计 px", self.radius_var)):
            row = ttk.Frame(right); row.pack(fill="x", pady=1)
            ttk.Label(row, text=label).pack(side="left")
            ttk.Entry(row, textvariable=variable, width=8).pack(side="right")
        ttk.Label(right, text="武器模式（用户手动选择）").pack(anchor="w", pady=(6, 0))
        ttk.Combobox(right, textvariable=self.weapon_var, values=("普通", "蓄力", "持续"),
                     state="readonly", width=10).pack(anchor="w")
        row = ttk.Frame(right); row.pack(fill="x", pady=2)
        ttk.Label(row, text="蓄力秒数").pack(side="left")
        ttk.Entry(row, textvariable=self.charge_var, width=6).pack(side="right")
        row = ttk.Frame(right); row.pack(fill="x", pady=2)
        ttk.Label(row, text="松手尾段秒数").pack(side="left")
        ttk.Entry(row, textvariable=self.tail_var, width=6).pack(side="right")
        ttk.Button(right, text="应用估计参数", command=self._apply_config).pack(fill="x", pady=4)
        ttk.Label(right, text="蓄力与尾段均为用户设定的时间估计；\n程序无法识别当前武器或隐藏状态。",
                  justify="left", wraplength=300).pack(anchor="w", pady=4)
        self.canvas.create_text(10, 10, anchor="nw", fill="#d7dce2", text="等待游戏客户区画面")

    def _set_tool(self, tool: str) -> None:
        self.tool = tool
        self.status_var.set({"self": "在预览中点击自己脚下", "friend": "在预览中点击队友脚下",
                             "bounds": "在预览中拖框选择房间内部", "blocker": "在预览中拖框选择障碍"}[tool])

    def _canvas_to_frame(self, x: float, y: float) -> tuple[int, int] | None:
        if self.frame is None or not self.image_size[0] or not self.image_size[1]:
            return None
        ox, oy = self.image_origin
        sx, sy = self.image_size
        if not (ox <= x < ox + sx and oy <= y < oy + sy):
            return None
        fx = round((x - ox) * self.frame.shape[1] / sx)
        fy = round((y - oy) * self.frame.shape[0] / sy)
        return max(0, min(self.frame.shape[1] - 1, fx)), max(0, min(self.frame.shape[0] - 1, fy))

    def _press(self, event) -> None:
        point = self._canvas_to_frame(event.x, event.y)
        if point is None or not self.tool:
            return
        self.drag_start = point
        self.drag_rect = self.canvas.create_rectangle(event.x, event.y, event.x, event.y,
                                                       outline="#ffd060", width=2)

    def _release(self, event) -> None:
        if self.drag_start is None or self.frame is None:
            return
        end = self._canvas_to_frame(event.x, event.y)
        start = self.drag_start
        self.drag_start = None
        if self.drag_rect:
            self.canvas.delete(self.drag_rect)
            self.drag_rect = None
        frozen = self.frame.copy()
        if self.tool in ("self", "friend"):
            self.worker.commands.put({"kind": self.tool, "frame": frozen, "point": start})
        elif self.tool in ("bounds", "blocker") and end:
            rect = (min(start[0], end[0]), min(start[1], end[1]),
                    max(start[0], end[0]), max(start[1], end[1]))
            self.worker.commands.put({"kind": self.tool, "frame": frozen, "rect": rect})
        self.tool = None

    def _drag(self, event) -> None:
        if self.drag_start is None or not self.drag_rect:
            return
        point = self._canvas_to_frame(event.x, event.y)
        if point is None:
            return
        sx, sy = self.drag_start
        ox, oy = self.image_origin
        scale_x = self.image_size[0] / self.frame.shape[1]
        scale_y = self.image_size[1] / self.frame.shape[0]
        self.canvas.coords(self.drag_rect, ox + sx * scale_x, oy + sy * scale_y,
                           ox + point[0] * scale_x, oy + point[1] * scale_y)

    def _apply_config(self) -> None:
        try:
            values = {"kind": "config", "speed": float(self.speed_var.get()),
                      "attack_range": float(self.range_var.get()),
                      "projectile_speed": float(self.shot_speed_var.get()),
                      "player_radius": float(self.radius_var.get()),
                      "weapon": self.weapon_var.get(),
                      "charge_seconds": float(self.charge_var.get()),
                      "release_tail_seconds": float(self.tail_var.get())}
            if min(values["speed"], values["attack_range"], values["player_radius"]) < 0:
                raise ValueError("估计参数不能小于0")
            if values["projectile_speed"] <= 0 or values["charge_seconds"] <= 0 or values["release_tail_seconds"] < 0:
                raise ValueError("泪弹速度和蓄力秒数须大于0，松手尾段不能小于0")
            self.worker.commands.put(values)
            self.status_var.set("估计参数已提交")
        except ValueError as exc:
            messagebox.showerror("参数无效", str(exc), parent=self.root)

    def _launch_game(self) -> None:
        try:
            os.startfile("steam://run/250900")
        except Exception as exc:
            messagebox.showerror("启动失败", str(exc), parent=self.root)

    def _pump(self) -> None:
        if self.closing:
            return
        latest = None
        while True:
            try:
                latest = self.updates.get_nowait()
            except queue.Empty:
                break
        if latest:
            self._render(latest)
        self.root.after(30, self._pump)

    def _render(self, update: dict) -> None:
        if 'engine_probe_status' in update:
            self.engine_probe_var.set(update['engine_probe_status'])
        self.status_var.set(update.get("status", ""))
        self.stats_var.set(f"识别 {update.get('body_count', 0)}｜背景 {update.get('frame_count', 0)}/18｜"
                           f"处理 {update.get('timing', 0)*1000:.1f} ms｜"
                           f"{'控制中' if update.get('auto') else '仅观察'}")
        frame = update.get("frame")
        image = update.get("preview")
        if frame is None or image is None:
            return
        self.frame = frame
        h, w = image.shape[:2]
        scale = min(1.0, 640 / w, 480 / h)
        shown_w, shown_h = max(1, round(w * scale)), max(1, round(h * scale))
        rgb = image[:, :, ::-1]
        pil = Image.fromarray(rgb).resize((shown_w, shown_h), Image.Resampling.BILINEAR)
        self.photo = ImageTk.PhotoImage(pil)
        self.canvas.delete("all")
        ox = max(0, (self.canvas.winfo_width() - shown_w) // 2)
        oy = max(0, (self.canvas.winfo_height() - shown_h) // 2)
        self.image_size = (shown_w, shown_h)
        self.image_origin = (ox, oy)
        self.canvas.create_image(ox, oy, anchor="nw", image=self.photo)

    def close(self) -> None:
        if self.closing:
            return
        self.closing = True
        self.worker.shutdown()
        self.root.destroy()


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(description="以撒外部视觉实验版")
    parser.add_argument("--smoke", action="store_true", help="仅创建并更新隐藏GUI，不查找游戏或发送按键")
    args = parser.parse_args(argv)
    if not args.smoke:
        try:
            set_dpi_awareness()
        except OSError:
            pass
    root = tk.Tk()
    app = App(root, start_worker=not args.smoke)
    if args.smoke:
        root.withdraw()
        root.update()
        app.close()
        return 0
    root.mainloop()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
