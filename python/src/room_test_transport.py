"""Test-only frame-synchronous transport + optional original-engine turbo."""
import json
import mmap
from pathlib import Path
import socket
import struct
import subprocess
import time


class BridgeGameExit(RuntimeError):pass


class BridgeCommandRejected(RuntimeError):
    def __init__(self,reason):super().__init__(reason);self.reason=reason


class RoomBridge:
    def __init__(self,config,check_stop=lambda:None,*,realtime=False):
        self.config=config;self.check_stop=check_stop;self.sock=None;self.buffer=b'';self.boundary=None
        self.realtime=realtime
        self.capture_status=None

    def connect(self):
        deadline=time.monotonic()+20
        while True:
            self.check_stop()
            try:self.sock=socket.create_connection(('127.0.0.1',self.config['port']),timeout=.3);break
            except OSError:
                if time.monotonic()>deadline:raise RuntimeError('room_bridge_connection_timeout')
                time.sleep(.1)
        self.sock.settimeout(.2)
        self.sock.setsockopt(socket.IPPROTO_TCP,socket.TCP_NODELAY,1)
        self._send({'cmd':'hello','token':self.config['token'],'mode':'realtime' if self.realtime else 'synchronous'})
        boundary=self.receive()
        if self.realtime and boundary.get('mode')!='realtime':raise RuntimeError('bridge_realtime_mode_not_acknowledged')
        if self.config.get('capture_mode')=='all_callbacks_raw':
            capture=boundary.get('capture') or {}
            if capture.get('protocol')!=1 or not capture.get('enabled') or capture.get('error') or capture.get('mode')!='all_callbacks_raw':
                raise RuntimeError('engine_event_capture_not_ready: '+str(capture.get('error')))
        return boundary

    def _send(self,value):self.sock.sendall((json.dumps(value,separators=(',',':'))+'\n').encode())

    def receive(self,*,timeout_seconds=20,ignore_stop=False):
        deadline=time.monotonic()+timeout_seconds
        while b'\n' not in self.buffer:
            if not ignore_stop:self.check_stop()
            try:
                data=self.sock.recv(65536)
                if not data:raise RuntimeError('room_bridge_disconnected')
                self.buffer+=data
            except socket.timeout:
                if time.monotonic()>deadline:raise RuntimeError('room_bridge_boundary_timeout')
        line,_,self.buffer=self.buffer.partition(b'\n');value=json.loads(line)
        if 'capture' in value:self.capture_status=value['capture']
        if value.get('type')=='game_exit':raise BridgeGameExit('engine_pre_game_exit')
        if value.get('error'):raise BridgeCommandRejected(str(value['error']))
        if value.get('type')=='capture_finished' and value.get('protocol')==1:return value
        if value.get('type')!='boundary' or value.get('protocol')!=1:raise RuntimeError('invalid_room_bridge_packet')
        if value.get('players')!=1 or value.get('controller')!=0:raise RuntimeError('room_bridge_ownership_rejected')
        self.boundary=value;return value

    def finish_capture(self):
        if self.capture_status and self.capture_status.get('closed'):return self.capture_status
        if not self.sock or not self.boundary:raise RuntimeError('capture_finish_without_connection')
        self._send({'cmd':'finish_capture','seq':self.boundary['seq']})
        value=self.receive(timeout_seconds=2,ignore_stop=True)
        if value.get('type')!='capture_finished':raise RuntimeError('capture_finish_not_acknowledged')
        return value.get('capture') or {}

    def step(self,keys,frames=1):
        if self.realtime:raise RuntimeError('step_not_allowed_in_realtime_mode')
        self._send({'cmd':'step','seq':self.boundary['seq'],'keys':sorted(keys),'frames':frames})
        previous=self.boundary;current=self.receive()
        if current['generation']==previous['generation'] and current['frame']-previous['frame']!=frames:
            raise RuntimeError('room_bridge_step_mismatch')
        return current

    def next_room(self):
        previous=self.boundary
        self._send({'cmd':'next','seq':previous['seq']});current=self.receive()
        if current['generation']==previous['generation']:raise RuntimeError('room_transition_not_observed')
        return current

    def close(self):
        if self.sock:
            try:self._send({'cmd':'close'})
            except OSError:pass
            self.sock.close();self.sock=None


class SynchronousInput:
    requires_foreground=False
    mode='synchronous_test_bridge'
    def __init__(self):self._held=set()
    def set_keys(self,keys):self._held=set(keys)
    def release_all(self):self._held.clear()
    def close(self):self.release_all()
    def delivery_state(self):return {'encoding':self.mode,'held':sorted(self._held),'engine_consumption_verified':False}


class RoomTurbo:
    def __init__(self,pid,runtime):
        self.pid=pid;self.runtime=Path(runtime);self.mm=None
    def start(self):
        # The reader's full SHA256 identity gate must run before this method.
        self.mm=mmap.mmap(-1,4096,tagname=f'Local\\IsaacRoomTurbo.{self.pid}')
        self.mm[:4096]=b'\0'*4096
        result=subprocess.run([str(self.runtime/'IsaacRoomTurboInject.exe'),str(self.pid),str(self.runtime/'IsaacRoomTurbo.dll')],
                              capture_output=True,text=True,timeout=20,creationflags=0x08000000)
        if result.returncode:raise RuntimeError('turbo_injection_failed: '+result.stdout+result.stderr)
        deadline=time.monotonic()+5
        while True:
            status=struct.unpack_from('<I',self.mm,16)[0]
            if status==1:break
            if status in (2,3) or time.monotonic()>deadline:raise RuntimeError(f'turbo_identity_or_hook_failed: {status}')
            time.sleep(.01)
        struct.pack_into('<I',self.mm,12,3)
        return self.stats()
    def stats(self):
        names=('magic','protocol','pid','flags','status','manager_calls','render_calls','render_skipped')
        return dict(zip(names,struct.unpack_from('<8I',self.mm))) if self.mm else None
    def close(self):
        if self.mm:
            struct.pack_into('<I',self.mm,12,0);self.mm.close();self.mm=None
