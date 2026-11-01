"""External Windows screen capture and input for Isaac accessibility tools.

This module does not inspect or modify game memory/files and does not inject code.
"""
from __future__ import annotations

import ctypes
from ctypes import wintypes

import numpy as np
from input_ime import GameImeGuard


# Win32 values and structures are kept available on non-Windows hosts so the
# module can be imported and its ABI tested without opening Windows APIs.
user32 = ctypes.WinDLL("user32", use_last_error=True) if hasattr(ctypes, "WinDLL") else None
gdi32 = ctypes.WinDLL("gdi32", use_last_error=True) if hasattr(ctypes, "WinDLL") else None
kernel32 = ctypes.WinDLL("kernel32", use_last_error=True) if hasattr(ctypes, "WinDLL") else None


class RECT(ctypes.Structure):
    _fields_ = [("left", wintypes.LONG), ("top", wintypes.LONG),
                ("right", wintypes.LONG), ("bottom", wintypes.LONG)]


class BITMAPINFOHEADER(ctypes.Structure):
    _fields_ = [("biSize", wintypes.DWORD), ("biWidth", wintypes.LONG),
                ("biHeight", wintypes.LONG), ("biPlanes", wintypes.WORD),
                ("biBitCount", wintypes.WORD), ("biCompression", wintypes.DWORD),
                ("biSizeImage", wintypes.DWORD), ("biXPelsPerMeter", wintypes.LONG),
                ("biYPelsPerMeter", wintypes.LONG), ("biClrUsed", wintypes.DWORD),
                ("biClrImportant", wintypes.DWORD)]


class RGBQUAD(ctypes.Structure):
    _fields_ = [("rgbBlue", wintypes.BYTE), ("rgbGreen", wintypes.BYTE),
                ("rgbRed", wintypes.BYTE), ("rgbReserved", wintypes.BYTE)]


class BITMAPINFO(ctypes.Structure):
    _fields_ = [("bmiHeader", BITMAPINFOHEADER), ("bmiColors", RGBQUAD * 1)]


class KEYBDINPUT(ctypes.Structure):
    _fields_ = [("wVk", wintypes.WORD), ("wScan", wintypes.WORD),
                ("dwFlags", wintypes.DWORD), ("time", wintypes.DWORD),
                ("dwExtraInfo", ctypes.c_size_t)]


class MOUSEINPUT(ctypes.Structure):
    _fields_ = [("dx", wintypes.LONG), ("dy", wintypes.LONG),
                ("mouseData", wintypes.DWORD), ("dwFlags", wintypes.DWORD),
                ("time", wintypes.DWORD), ("dwExtraInfo", ctypes.c_size_t)]


class HARDWAREINPUT(ctypes.Structure):
    _fields_ = [("uMsg", wintypes.DWORD), ("wParamL", wintypes.WORD),
                ("wParamH", wintypes.WORD)]


class _INPUT_UNION(ctypes.Union):
    _fields_ = [("mi", MOUSEINPUT), ("ki", KEYBDINPUT), ("hi", HARDWAREINPUT)]


class INPUT(ctypes.Structure):
    _anonymous_ = ("union",)
    _fields_ = [("type", wintypes.DWORD), ("union", _INPUT_UNION)]


PROCESS_QUERY_LIMITED_INFORMATION = 0x1000
BI_RGB = 0
DIB_RGB_COLORS = 0
SRCCOPY = 0x00CC0020
INPUT_KEYBOARD = 1
KEYEVENTF_KEYUP = 0x0002
KEYEVENTF_EXTENDEDKEY = 0x0001
KEYEVENTF_SCANCODE = 0x0008
_KEY_SCAN = {"w": 0x11, "a": 0x1E, "s": 0x1F, "d": 0x20,
             "up": 0x48, "down": 0x50, "left": 0x4B, "right": 0x4D,
             "enter": 0x1C, "escape": 0x01}
_EXTENDED_KEYS = {"up", "down", "left", "right"}
_KEY_VK = {"w":0x57,"a":0x41,"s":0x53,"d":0x44,
           "up":0x26,"down":0x28,"left":0x25,"right":0x27,"enter":0x0D,"escape":0x1B}


def _require_windows() -> None:
    if user32 is None or gdi32 is None or kernel32 is None:
        raise OSError("Windows APIs are unavailable on this platform")


def _last_error(message: str) -> OSError:
    code = ctypes.get_last_error()
    return ctypes.WinError(code) if code else OSError(message)


class GameWindow:
    """Find and capture a visible client area belonging to isaac-ng.exe."""

    def __init__(self,*,target_pid=None) -> None:
        self.hwnd = None
        self.target_pid=target_pid

    def find(self) -> bool:
        _require_windows()
        found = []
        callback_type = ctypes.WINFUNCTYPE(wintypes.BOOL, wintypes.HWND, wintypes.LPARAM)

        @callback_type
        def visit(hwnd, _):
            if not user32.IsWindowVisible(hwnd):
                return True
            pid = wintypes.DWORD()
            user32.GetWindowThreadProcessId(hwnd, ctypes.byref(pid))
            if not pid.value:
                return True
            if self.target_pid is not None and pid.value!=self.target_pid:
                return True
            process = kernel32.OpenProcess(PROCESS_QUERY_LIMITED_INFORMATION, False, pid.value)
            if not process:
                return True
            try:
                capacity = wintypes.DWORD(32768)
                path = ctypes.create_unicode_buffer(capacity.value)
                if not kernel32.QueryFullProcessImageNameW(process, 0, path, ctypes.byref(capacity)):
                    return True
                if path.value.replace("/", "\\").rsplit("\\", 1)[-1].casefold() != "isaac-ng.exe":
                    return True
                rect = RECT()
                if not user32.GetClientRect(hwnd, ctypes.byref(rect)):
                    return True
                if rect.right <= rect.left or rect.bottom <= rect.top:
                    return True
                found.append(hwnd)
                return False
            finally:
                kernel32.CloseHandle(process)

        ctypes.set_last_error(0)
        if not user32.EnumWindows(callback_type(visit), 0):
            err = ctypes.get_last_error()
            # EnumWindows returns zero when the callback deliberately stops too.
            if not found and err:
                raise ctypes.WinError(err)
        self.hwnd = found[0] if found else None
        return self.hwnd is not None

    def process_id(self):
        if not self.hwnd:return None
        pid=wintypes.DWORD()
        user32.GetWindowThreadProcessId(self.hwnd,ctypes.byref(pid))
        return pid.value or None

    def foreground(self) -> bool:
        _require_windows()
        return bool(self.hwnd and user32.IsWindow(self.hwnd) and
                    user32.GetForegroundWindow() == self.hwnd)

    def activate(self) -> bool:
        """Request focus once for the game process selected by the launcher."""
        _require_windows()
        if not self.hwnd or not user32.IsWindow(self.hwnd):return False
        if self.target_pid is None or self.process_id()!=self.target_pid:return False
        if user32.IsIconic(self.hwnd):user32.ShowWindow(self.hwnd,9)
        user32.SetForegroundWindow(self.hwnd)
        return self.foreground()

    def client_rect(self) -> tuple[int, int, int, int]:
        _require_windows()
        if not self.hwnd or not user32.IsWindow(self.hwnd):
            raise RuntimeError("game window is not available")
        rect = RECT()
        if not user32.GetClientRect(self.hwnd, ctypes.byref(rect)):
            raise _last_error("GetClientRect failed")
        point = wintypes.POINT(0, 0)
        if not user32.ClientToScreen(self.hwnd, ctypes.byref(point)):
            raise _last_error("ClientToScreen failed")
        width, height = rect.right - rect.left, rect.bottom - rect.top
        if width <= 0 or height <= 0:
            raise RuntimeError("game window has an empty client area")
        return int(point.x), int(point.y), int(width), int(height)

    def capture(self) -> np.ndarray:
        _require_windows()
        left, top, width, height = self.client_rect()
        hwnd_dc = user32.GetDC(self.hwnd)
        if not hwnd_dc:
            raise _last_error("GetDC failed")
        memory_dc = bitmap = old_bitmap = None
        try:
            memory_dc = gdi32.CreateCompatibleDC(hwnd_dc)
            if not memory_dc:
                raise _last_error("CreateCompatibleDC failed")
            info = BITMAPINFO()
            info.bmiHeader.biSize = ctypes.sizeof(BITMAPINFOHEADER)
            info.bmiHeader.biWidth = width
            info.bmiHeader.biHeight = -height  # top-down rows
            info.bmiHeader.biPlanes = 1
            info.bmiHeader.biBitCount = 32
            info.bmiHeader.biCompression = BI_RGB
            bits = ctypes.c_void_p()
            bitmap = gdi32.CreateDIBSection(hwnd_dc, ctypes.byref(info), DIB_RGB_COLORS,
                                            ctypes.byref(bits), None, 0)
            if not bitmap or not bits.value:
                raise _last_error("CreateDIBSection failed")
            old_bitmap = gdi32.SelectObject(memory_dc, bitmap)
            if not old_bitmap:
                raise _last_error("SelectObject failed")
            if not gdi32.BitBlt(memory_dc, 0, 0, width, height, hwnd_dc, 0, 0, SRCCOPY):
                raise _last_error("BitBlt failed")
            raw = ctypes.string_at(bits.value, width * height * 4)
            bgra = np.frombuffer(raw, dtype=np.uint8).reshape(height, width, 4)
            return bgra[:, :, :3].copy()
        finally:
            if old_bitmap:
                gdi32.SelectObject(memory_dc, old_bitmap)
            if bitmap:
                gdi32.DeleteObject(bitmap)
            if memory_dc:
                gdi32.DeleteDC(memory_dc)
            user32.ReleaseDC(self.hwnd, hwnd_dc)


class InputController:
    """Send only state changes for keys explicitly held through this instance."""

    def __init__(self, window: GameWindow, *, mode: str = 'scancode') -> None:
        if mode not in ('scancode','virtualkey','windowmessage'):
            raise ValueError('unsupported keyboard encoding')
        self.window = window
        self.mode = mode
        self.ime=GameImeGuard()
        self._held: set[str] = set()
        self._closed = False

    @property
    def requires_foreground(self):return self.mode!='windowmessage'

    def _send(self, key: str, key_up: bool) -> None:
        _require_windows()
        if self.mode=='windowmessage':
            if self.window.target_pid is None or self.window.process_id()!=self.window.target_pid:
                raise RuntimeError('Window-message target no longer belongs to the selected game PID')
            flags=1|(_KEY_SCAN[key]<<16)|(int(key in _EXTENDED_KEYS)<<24)
            if key_up:flags|=(1<<30)|(1<<31)
            if not user32.PostMessageW(self.window.hwnd,0x101 if key_up else 0x100,_KEY_VK[key],flags):
                raise _last_error('PostMessage keyboard event failed')
            return
        item = INPUT()
        item.type = INPUT_KEYBOARD
        flags = KEYEVENTF_SCANCODE if self.mode=='scancode' else 0
        if key in _EXTENDED_KEYS:
            flags |= KEYEVENTF_EXTENDEDKEY
        if key_up:
            flags |= KEYEVENTF_KEYUP
        item.ki = KEYBDINPUT(0 if self.mode=='scancode' else _KEY_VK[key],
                            _KEY_SCAN[key] if self.mode=='scancode' else 0, flags, 0, 0)
        if user32.SendInput(1, ctypes.byref(item), ctypes.sizeof(INPUT)) != 1:
            raise _last_error("SendInput failed")

    def set_keys(self, keys: set[str]) -> None:
        if self._closed:
            raise RuntimeError("input controller is closed")
        requested = set(keys)
        unknown = requested - _KEY_SCAN.keys()
        if unknown:
            raise ValueError(f"unsupported keys: {sorted(unknown)}")
        if not self.window.hwnd or (self.requires_foreground and not self.window.foreground()):
            self.release_all()
            return
        if requested and self.requires_foreground:self.ime.acquire(self.window.hwnd)
        for key in sorted(self._held - requested):
            self._send(key, True)
            self._held.remove(key)
        for key in sorted(requested - self._held):
            self._send(key, False)
            self._held.add(key)
        if not requested:self.ime.restore()

    def release_all(self) -> None:
        for key in sorted(tuple(self._held)):
            self._send(key, True)
            self._held.remove(key)
        self.ime.restore()

    def delivery_state(self) -> dict:
        """OS key state is evidence of submission, not game consumption."""
        _require_windows()
        return {'encoding':self.mode,'held':sorted(self._held),
                'os_pressed':[k for k in sorted(self._held) if user32.GetAsyncKeyState(_KEY_VK[k])&0x8000],
                'ime':dict(self.ime.report),
                'engine_consumption_verified':False}

    def close(self) -> None:
        if not self._closed:
            self.release_all()
            self._closed = True


def hotkey_pressed(vk: int) -> bool:
    _require_windows()
    return bool(user32.GetAsyncKeyState(vk) & 0x8000)


def cursor_client(window: GameWindow) -> tuple[int, int]:
    _require_windows()
    if not window.hwnd or not user32.IsWindow(window.hwnd):
        raise RuntimeError("game window is not available")
    point = wintypes.POINT()
    if not user32.GetCursorPos(ctypes.byref(point)):
        raise _last_error("GetCursorPos failed")
    if not user32.ScreenToClient(window.hwnd, ctypes.byref(point)):
        raise _last_error("ScreenToClient failed")
    return int(point.x), int(point.y)


def set_dpi_awareness() -> None:
    """Request per-monitor DPI awareness for correct client screen coordinates."""
    _require_windows()
    # DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 is the pseudo-handle -4.
    context = ctypes.c_void_p(-4)
    if user32.SetProcessDpiAwarenessContext(context):
        return
    # A manifest or host may have set awareness already; no change is then needed.
    if user32.GetThreadDpiAwarenessContext():
        return
    raise _last_error("SetProcessDpiAwarenessContext failed")

# Declare pointer-sized handles explicitly; ctypes' default c_int return would
# truncate HWND/HDC/HBITMAP values in a 64-bit process.
if user32 is not None:
    user32.IsWindow.argtypes = [wintypes.HWND]; user32.IsWindow.restype = wintypes.BOOL
    user32.IsWindowVisible.argtypes = [wintypes.HWND]; user32.IsWindowVisible.restype = wintypes.BOOL
    user32.GetWindowThreadProcessId.argtypes = [wintypes.HWND, ctypes.POINTER(wintypes.DWORD)]; user32.GetWindowThreadProcessId.restype = wintypes.DWORD
    user32.EnumWindows.argtypes = [ctypes.c_void_p, wintypes.LPARAM]; user32.EnumWindows.restype = wintypes.BOOL
    user32.GetForegroundWindow.restype = wintypes.HWND
    user32.SetForegroundWindow.argtypes = [wintypes.HWND]; user32.SetForegroundWindow.restype = wintypes.BOOL
    user32.IsIconic.argtypes = [wintypes.HWND]; user32.IsIconic.restype = wintypes.BOOL
    user32.ShowWindow.argtypes = [wintypes.HWND, ctypes.c_int]; user32.ShowWindow.restype = wintypes.BOOL
    user32.GetClientRect.argtypes = [wintypes.HWND, ctypes.POINTER(RECT)]; user32.GetClientRect.restype = wintypes.BOOL
    user32.ClientToScreen.argtypes = [wintypes.HWND, ctypes.POINTER(wintypes.POINT)]; user32.ClientToScreen.restype = wintypes.BOOL
    user32.GetDC.argtypes = [wintypes.HWND]; user32.GetDC.restype = wintypes.HDC
    user32.ReleaseDC.argtypes = [wintypes.HWND, wintypes.HDC]; user32.ReleaseDC.restype = ctypes.c_int
    user32.SendInput.argtypes = [wintypes.UINT, ctypes.POINTER(INPUT), ctypes.c_int]; user32.SendInput.restype = wintypes.UINT
    user32.PostMessageW.argtypes = [wintypes.HWND,wintypes.UINT,wintypes.WPARAM,wintypes.LPARAM]; user32.PostMessageW.restype = wintypes.BOOL
    user32.GetAsyncKeyState.argtypes = [ctypes.c_int]; user32.GetAsyncKeyState.restype = ctypes.c_short
    user32.GetCursorPos.argtypes = [ctypes.POINTER(wintypes.POINT)]; user32.GetCursorPos.restype = wintypes.BOOL
    user32.ScreenToClient.argtypes = [wintypes.HWND, ctypes.POINTER(wintypes.POINT)]; user32.ScreenToClient.restype = wintypes.BOOL
    user32.SetProcessDpiAwarenessContext.argtypes = [ctypes.c_void_p]; user32.SetProcessDpiAwarenessContext.restype = wintypes.BOOL
    user32.GetThreadDpiAwarenessContext.restype = ctypes.c_void_p
if gdi32 is not None:
    gdi32.CreateCompatibleDC.argtypes = [wintypes.HDC]; gdi32.CreateCompatibleDC.restype = wintypes.HDC
    gdi32.CreateDIBSection.argtypes = [wintypes.HDC, ctypes.POINTER(BITMAPINFO), wintypes.UINT, ctypes.POINTER(ctypes.c_void_p), wintypes.HANDLE, wintypes.DWORD]; gdi32.CreateDIBSection.restype = wintypes.HBITMAP
    gdi32.SelectObject.argtypes = [wintypes.HDC, wintypes.HGDIOBJ]; gdi32.SelectObject.restype = wintypes.HGDIOBJ
    gdi32.BitBlt.argtypes = [wintypes.HDC, ctypes.c_int, ctypes.c_int, ctypes.c_int, ctypes.c_int, wintypes.HDC, ctypes.c_int, ctypes.c_int, wintypes.DWORD]; gdi32.BitBlt.restype = wintypes.BOOL
    gdi32.DeleteObject.argtypes = [wintypes.HGDIOBJ]; gdi32.DeleteObject.restype = wintypes.BOOL
    gdi32.DeleteDC.argtypes = [wintypes.HDC]; gdi32.DeleteDC.restype = wintypes.BOOL
if kernel32 is not None:
    kernel32.OpenProcess.argtypes = [wintypes.DWORD, wintypes.BOOL, wintypes.DWORD]; kernel32.OpenProcess.restype = wintypes.HANDLE
    kernel32.QueryFullProcessImageNameW.argtypes = [wintypes.HANDLE, wintypes.DWORD, wintypes.LPWSTR, ctypes.POINTER(wintypes.DWORD)]; kernel32.QueryFullProcessImageNameW.restype = wintypes.BOOL
    kernel32.CloseHandle.argtypes = [wintypes.HANDLE]; kernel32.CloseHandle.restype = wintypes.BOOL




