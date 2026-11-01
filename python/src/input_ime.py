"""Keep game controls out of an IME composition, scoped to its own IME window."""
import ctypes
from ctypes import wintypes


class ImeApi:
    def __init__(self):
        self.user=ctypes.WinDLL('user32',use_last_error=True)
        self.imm=ctypes.WinDLL('imm32',use_last_error=True)
        self.imm.ImmGetDefaultIMEWnd.argtypes=[wintypes.HWND]
        self.imm.ImmGetDefaultIMEWnd.restype=wintypes.HWND
        self.user.SendMessageTimeoutW.argtypes=[wintypes.HWND,wintypes.UINT,
            ctypes.c_size_t,ctypes.c_ssize_t,wintypes.UINT,wintypes.UINT,ctypes.POINTER(ctypes.c_size_t)]
        self.user.SendMessageTimeoutW.restype=ctypes.c_ssize_t
        self.user.IsWindow.argtypes=[wintypes.HWND]
        self.user.IsWindow.restype=wintypes.BOOL

    def ime_window(self,window):return self.imm.ImmGetDefaultIMEWnd(window)
    def is_window(self,window):return bool(self.user.IsWindow(window))

    def command(self,window,command,value=0):
        answer=ctypes.c_size_t()
        if not self.user.SendMessageTimeoutW(window,0x283,command,value,0x2,15,ctypes.byref(answer)):
            raise OSError('游戏输入法窗口无响应；未确认输入法状态')
        return answer.value


class GameImeGuard:
    def __init__(self,api=None):
        self.api=api
        self.window=None;self.original_open=None
        self.target=None
        self.report={'changed':False,'status':'not_acquired'}

    def acquire(self,game_window):
        if self.target==game_window:return
        if self.target:self.restore()
        if self.api is None:self.api=ImeApi()
        window=self.api.ime_window(game_window)
        if not window:
            self.report={'changed':False,'status':'no_ime_window'}
            self.target=game_window
            return
        opened=bool(self.api.command(window,5))
        self.report={'changed':False,'status':'already_closed' if not opened else 'closing',
                     'original_open':opened}
        if not opened:
            self.target=game_window
            return
        # Save before mutation so even a failed confirmation can be restored.
        self.window=window;self.original_open=True
        self.api.command(window,6,0)
        if self.api.command(window,5):raise OSError('输入法仍在接收游戏按键；暂停控制')
        self.target=game_window
        self.report.update(changed=True,status='closed_for_game_controls')

    def restore(self):
        self.target=None
        if not self.window:return
        window=self.window
        if self.api.is_window(window):self.api.command(window,6,int(self.original_open))
        self.window=None;self.original_open=None
        self.report={**self.report,'status':'restored'}
