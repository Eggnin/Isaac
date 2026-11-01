"""Native process lifetime + read-only readiness handshake for game tests.

The phase/error separation follows the launch workflow studied in AIsaac
(1a0fd29e021849097305911da91dd9cc00f6a1e2). This adapter uses our existing
external reader; it neither injects the upstream training DLL nor loads a mod.
"""
import ctypes
from ctypes import wintypes
import json
from pathlib import Path
import time

from engine_reader import EngineReader, GAME, kernel


class StartupError(RuntimeError):
    pass


class GameProcess:
    def __init__(self,pid,expected_exe=GAME):
        self.pid=int(pid);self.handle=None
        kernel.WaitForSingleObject.argtypes=[wintypes.HANDLE,wintypes.DWORD]
        kernel.WaitForSingleObject.restype=wintypes.DWORD
        kernel.GetExitCodeProcess.argtypes=[wintypes.HANDLE,ctypes.POINTER(wintypes.DWORD)]
        kernel.GetExitCodeProcess.restype=wintypes.BOOL
        kernel.QueryFullProcessImageNameW.argtypes=[wintypes.HANDLE,wintypes.DWORD,wintypes.LPWSTR,ctypes.POINTER(wintypes.DWORD)]
        kernel.QueryFullProcessImageNameW.restype=wintypes.BOOL
        self.handle=kernel.OpenProcess(0x100000|0x1000,False,self.pid)
        if not self.handle:raise ctypes.WinError(ctypes.get_last_error())
        try:
            size=wintypes.DWORD(32768);path=ctypes.create_unicode_buffer(size.value)
            if not kernel.QueryFullProcessImageNameW(self.handle,0,path,ctypes.byref(size)):
                raise ctypes.WinError(ctypes.get_last_error())
            self.path=path.value
            if Path(self.path).resolve()!=Path(expected_exe).resolve():
                raise StartupError(f'PID {self.pid} is not the expected game executable: {self.path}')
        except BaseException:
            self.close();raise

    def poll(self):
        state=kernel.WaitForSingleObject(self.handle,0)
        if state==258:return None
        if state!=0:raise ctypes.WinError(ctypes.get_last_error())
        code=wintypes.DWORD()
        if not kernel.GetExitCodeProcess(self.handle,ctypes.byref(code)):
            raise ctypes.WinError(ctypes.get_last_error())
        return code.value

    def check_alive(self):
        code=self.poll()
        if code is not None:raise StartupError(f'Game PID {self.pid} exited, code={code} (0x{code:08x})')

    def state(self):
        code=self.poll()
        return {'game_pid':self.pid,'executable':self.path,'alive':code is None,'exit_code':code}

    def close(self):
        if self.handle:
            kernel.CloseHandle(self.handle);self.handle=None


def wait_engine_ready(window,launcher_pid,mode,output,*,timeout=30.,reader_factory=EngineReader,
                      guard_factory=GameProcess,clock=None,sleep=None):
    """Track the real game PID, then require a valid native menu/game state."""
    clock=clock or time.monotonic;sleep=sleep or time.sleep
    output=Path(output);output.mkdir(parents=True,exist_ok=True)
    started=clock();deadline=started+timeout;guard=None;reader=None
    report={'launcher_pid':launcher_pid,'launch_mode':mode,'game_pid':None,
            'engine_ready':False,'phase':'waiting_for_process','computer_use':False,
            'last_reader_error':None,'last_state':None}
    def save():
        report['elapsed_seconds']=clock()-started
        path=output/'launch-handshake.json';temporary=path.with_suffix('.tmp')
        temporary.write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
        temporary.replace(path)
    try:
        if mode=='native':
            window.target_pid=launcher_pid
            guard=guard_factory(launcher_pid)
            report.update(game_pid=guard.pid,phase='waiting_for_window')
        save()
        while clock()<deadline:
            if guard:
                code=guard.poll()
                if code is not None:
                    report.update(phase='process_exited_before_ready',exit_code=code)
                    raise StartupError(f'Game exited before readiness, PID={guard.pid}, code={code} (0x{code:08x})')
            if window.find():
                actual=window.process_id()
                if guard is None:
                    guard=guard_factory(actual);window.target_pid=actual
                    report.update(game_pid=actual)
                if actual!=guard.pid:
                    raise StartupError(f'Window PID {actual} differs from owned game PID {guard.pid}')
                report['phase']='waiting_for_engine'
                try:
                    if reader is None:reader=reader_factory(guard.pid)
                    state=reader.menu_snapshot();report['last_state']=state
                    if state.get('mode') in ('menu','startup_screen','game'):
                        report.update(engine_ready=True,phase='engine_ready',foreground=window.foreground(),
                                      executable=guard.path,engine_sha256=reader.profile['file_sha256'])
                        save();guard.launch_report=report;return guard
                except (OSError,ValueError) as exc:
                    report['last_reader_error']=str(exc)
                    if getattr(exc,'winerror',None)==5:
                        report['phase']='engine_access_denied';raise StartupError(str(exc)) from exc
            sleep(.05)
        report['phase']='engine_readiness_timeout' if report['phase']=='waiting_for_engine' else 'window_timeout'
        report['process_alive_at_timeout']=bool(guard and guard.poll() is None)
        raise StartupError('Game readiness deadline expired: '+json.dumps(report,ensure_ascii=False))
    except BaseException as exc:
        if getattr(exc,'winerror',None)==5:report['phase']='process_access_denied'
        report['error']={'type':type(exc).__name__,'message':str(exc)}
        if guard:guard.close()
        save();raise
    finally:
        if reader:
            try:reader.close()
            except Exception as exc:
                report['reader_cleanup_error']=str(exc);save()
