"""Read-only engine diagnostics. This module contains no game write/injection API.

Layouts originate in TeamREPENTOGON's published libzhl definitions. A matching
file hash and redundant code signatures identify this candidate build, but
runtime validation is still required before using these fields for control.
"""
from __future__ import annotations

import argparse
import ctypes as c
from ctypes import wintypes as w
from dataclasses import asdict, dataclass
from datetime import datetime, timezone
import hashlib
import json
import math
from pathlib import Path
import re
import struct

GAME = Path(r'D:\Steam\steamapps\common\The Binding of Isaac Rebirth\isaac-ng.exe')
SUPPORTED_HASH = '7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F'
SOURCE = 'https://github.com/TeamREPENTOGON/REPENTOGON/tree/main/libzhl/functions'
kernel = c.WinDLL('kernel32',use_last_error=True)
PROCESS_VM_READ = 0x0010
PROCESS_QUERY_LIMITED_INFORMATION = 0x1000


class MODULEENTRY32W(c.Structure):
    _fields_ = [('dwSize',w.DWORD),('th32ModuleID',w.DWORD),('th32ProcessID',w.DWORD),
                ('GlblcntUsage',w.DWORD),('ProccntUsage',w.DWORD),('modBaseAddr',c.c_void_p),
                ('modBaseSize',w.DWORD),('hModule',w.HMODULE),('szModule',w.WCHAR*256),
                ('szExePath',w.WCHAR*260)]


kernel.OpenProcess.argtypes=[w.DWORD,w.BOOL,w.DWORD];kernel.OpenProcess.restype=w.HANDLE
kernel.CloseHandle.argtypes=[w.HANDLE];kernel.CloseHandle.restype=w.BOOL
kernel.ReadProcessMemory.argtypes=[w.HANDLE,c.c_void_p,c.c_void_p,c.c_size_t,c.POINTER(c.c_size_t)]
kernel.ReadProcessMemory.restype=w.BOOL
kernel.CreateToolhelp32Snapshot.argtypes=[w.DWORD,w.DWORD];kernel.CreateToolhelp32Snapshot.restype=w.HANDLE
kernel.Module32FirstW.argtypes=[w.HANDLE,c.POINTER(MODULEENTRY32W)];kernel.Module32FirstW.restype=w.BOOL
kernel.Module32NextW.argtypes=[w.HANDLE,c.POINTER(MODULEENTRY32W)];kernel.Module32NextW.restype=w.BOOL


def uint(raw,offset=0):
    return struct.unpack_from('<I',raw,offset)[0]


def single(raw,offset):
    value=struct.unpack_from('<f',raw,offset)[0]
    if not math.isfinite(value):
        raise ValueError(f'Non-finite engine float at {offset:#x}')
    return value


def match_unique(data,pattern):
    expression=b''.join(b'.' if pattern[i:i+2]=='??' else re.escape(bytes.fromhex(pattern[i:i+2]))
                        for i in range(0,len(pattern),2))
    hits=list(re.finditer(expression,data,re.DOTALL))
    if len(hits)!=1:
        raise ValueError(f'Engine signature is not unique ({len(hits)} matches)')
    return hits[0].start()


def identify(exe=GAME):
    data=exe.read_bytes()
    file_hash=hashlib.sha256(data).hexdigest().upper()
    if file_hash!=SUPPORTED_HASH:
        raise ValueError('游戏版本或文件已变化；只读布局尚未验证，不使用旧地址')
    pe=uint(data,0x3c)
    if data[pe:pe+4]!=b'PE\0\0' or struct.unpack_from('<H',data,pe+24)[0]!=0x10b:
        raise ValueError('Expected a 32-bit PE engine')
    preferred_base=uint(data,pe+24+28)
    hard=match_unique(data,'a1????????8b80????????83f80174??83f80374??32c0')
    active=match_unique(data,'558beca1????????8bd1')
    slot1,slot2=uint(data,hard+1),uint(data,active+4)
    if slot1!=slot2:
        raise ValueError('Independent Game pointer signatures disagree')
    players=match_unique(data,'8b81????????2b81????????c1f802c3')
    end,begin=uint(data,players+2),uint(data,players+8)
    if end-begin!=4 or begin!=0x1baa8:
        raise ValueError('Player manager layout differs from published candidate layout')
    paused=match_unique(data,'8bd1568b35')
    frame=match_unique(data,'8b81f8640200c3')
    menu=match_unique(data,'c745??ffffffff8bc8a3????????e8????????8b0d????????6a01')
    clear=match_unique(data,'8b41048a40442401c3')
    grid_contact=match_unique(data,'8a8190010000c3')
    return {'file_sha256':file_hash,'engine_version':'v1.9.7.17.J460','baseline':'user_reinstall_2026-10-23',
            'preferred_base':preferred_base,'game_slot_rva':slot1-preferred_base,
            'isaac_slot_rva':uint(data,paused+5)-preferred_base,
            'frame_offset':uint(data,frame+2),
            'difficulty_offset':uint(data,hard+7),
            'menu_manager_slot_rva':uint(data,menu+10)-preferred_base,
            'room_clear_descriptor_offset':data[clear+5],
            'entity_grid_contact_offset':uint(data,grid_contact+2),
            'player_list_offset':begin,'source':SOURCE,'runtime_verified':False}


@dataclass
class Entity:
    address:int
    index:int
    type:int
    variant:int
    subtype:int
    seed:int
    x:float
    y:float
    vx:float
    vy:float
    radius:float
    collision_class:int
    collision_damage:float
    health:float
    flags:int
    visible:bool
    dead:bool
    state:int|None=None
    state_frame:int|None=None
    controller_index:int|None=None
    player_index:int|None=None
    grid_colliding:bool=False


def decode_entity(address,raw):
    if len(raw)<0x410:
        raise ValueError('Incomplete entity read')
    kind=uint(raw,0x28)
    x,y=single(raw,0x33c),single(raw,0x340)
    vx,vy=single(raw,0x360),single(raw,0x364)
    radius=single(raw,0x370)
    hp=single(raw,0x380)
    damage=single(raw,0x388)
    if not 1<=kind<2000 or not -5000<x<10000 or not -5000<y<10000:
        raise ValueError('Entity identity/position invariant failed')
    if abs(vx)>500 or abs(vy)>500 or not 0<=radius<1000 or not -100000<hp<1e9:
        raise ValueError('Entity physical fields invariant failed')
    if any(raw[o] not in (0,1) for o in [0x170,0x171,0x172,0x173]):
        raise ValueError('Entity boolean layout invariant failed')
    e=Entity(address,uint(raw,0x20),kind,uint(raw,0x2c),uint(raw,0x30),uint(raw,0x3ec),
             x,y,vx,vy,radius,uint(raw,0x188),damage,hp,struct.unpack_from('<Q',raw,0x168)[0],
             bool(raw[0x171]),bool(raw[0x173]))
    # Lua CollidesWithGrid -> 0x665a80 reads Entity+0x190, independently
    # signature-checked above. +0x172 is a different native boolean.
    e.grid_colliding=bool(raw[0x190])
    if kind==1:
        if len(raw)<0x1620:raise ValueError('Incomplete player identity read')
        e.controller_index=uint(raw,0x1618)
        e.player_index=uint(raw,0x161c)
    elif kind>=10 and kind not in (1000,) and len(raw)>=0xb68:
        e.state=uint(raw,0xb64)
        # EntityNPC.StateFrame is signed; negative tail ticks are observable
        # in native Lua callbacks (e.g. -3), not multi-billion-frame timers.
        e.state_frame=struct.unpack_from('<i',raw,0x410)[0]
    return e


class EngineReader:
    def __init__(self,pid,exe=GAME):
        self.profile=identify(exe)
        self.handle=None
        snapshot=kernel.CreateToolhelp32Snapshot(0x08|0x10,pid)
        if snapshot in (None,c.c_void_p(-1).value):
            raise c.WinError(c.get_last_error())
        module=MODULEENTRY32W();module.dwSize=c.sizeof(module)
        base=None
        try:
            ok=kernel.Module32FirstW(snapshot,c.byref(module))
            while ok:
                if module.szModule.casefold()=='isaac-ng.exe':
                    if Path(module.szExePath).resolve()!=exe.resolve():
                        raise ValueError('Unexpected Isaac executable path')
                    base=module.modBaseAddr
                    break
                ok=kernel.Module32NextW(snapshot,c.byref(module))
        finally:
            kernel.CloseHandle(snapshot)
        if not base:
            raise ValueError('Isaac main module was not found')
        self.base=base
        self.handle=kernel.OpenProcess(PROCESS_VM_READ|PROCESS_QUERY_LIMITED_INFORMATION,False,pid)
        if not self.handle:
            raise c.WinError(c.get_last_error())
        self.pid=pid
        self._animation_names={}
        self._weapon_main_getters={}
        self._getters=None

    def read(self,address,size):
        if not self.handle or address<0x10000 or address+size>0x100000000 or not 0<size<=1048576:
            raise ValueError(f'Invalid read range: address={address:#x}, size={size:#x}')
        buf=c.create_string_buffer(size);got=c.c_size_t()
        if not kernel.ReadProcessMemory(self.handle,address,buf,size,c.byref(got)) or got.value!=size:
            raise c.WinError(c.get_last_error())
        return buf.raw

    def pointer(self,address):
        return uint(self.read(address,4))

    def menu_snapshot(self):
        """Read the current build's menu state; no in-process calls or writes.

        MenuManager dispatch at 0x989c47 reads +0x40, then passes +0xb90
        to Menu_Game, +0x2f4 to Menu_Save and +0x1534 to Menu_Character.
        These differ independently from the published reference layout.
        """
        isaac=self.pointer(self.base+self.profile['isaac_slot_rva'])
        mode=self.pointer(isaac+8)
        if mode==2:return {'mode':'game'}
        if mode==3:return {'mode':'startup_screen','engine_mode':mode}
        slot=self.base+self.profile['menu_manager_slot_rva']
        manager=self.pointer(slot)
        if not manager:return {'mode':'unavailable','engine_mode':mode}
        menu_id=self.pointer(manager+0x40)
        if not 0<=menu_id<=22:raise ValueError('Unrecognized native menu ID')
        game=self.read(manager+0xb90,8)
        save=self.read(manager+0x2f4,8)
        char=self.read(manager+0x1534,0x18)
        result={'mode':'menu','engine_mode':mode,'menu_id':menu_id,
                'game_selection':uint(game,4),'save_state':uint(save),
                'save_selection':uint(save,4),'character_status':uint(char),
                'character_input_possible':bool(char[6]),'character_unlocked':bool(char[5]),
                'character_difficulty':uint(char,8),
                'character_selection':struct.unpack_from('<i',char,0x10)[0]}
        if self.pointer(slot)!=manager or self.pointer(manager+0x40)!=menu_id:
            raise ValueError('Menu changed during capture')
        return result

    def snapshot(self, details=False):
        game=self.pointer(self.base+self.profile['game_slot_rva'])
        first_frame=self.pointer(game+self.profile['frame_offset']) if details else None
        room=self.pointer(game+0x18300)
        dimensions=self.read(room+0xc,8)
        gw,gh=struct.unpack('<II',dimensions)
        if not 5<=gw<=40 or not 5<=gh<=35 or gw*gh>0x1c0:
            raise ValueError('Room layout not valid; menu, transition, or unsupported engine')
        player_vector=self.read(game+self.profile['player_list_offset'],12)
        begin,end,capacity=struct.unpack('<III',player_vector)
        if end<begin or (end-begin)%4 or not 1<=(end-begin)//4<=16 or capacity<end:
            raise ValueError('Player vector not valid')
        player_addresses=list(struct.unpack('<'+'I'*((end-begin)//4),self.read(begin,end-begin)))
        # Main and persistent entities are separate partitions. Players normally
        # live in persistent; the update list overlaps both. Read their union,
        # retaining the source descriptors to detect a transition during capture.
        descriptors=[]
        partitions={}
        pointers=[]
        for name,offset in [('main',0x20),('persistent',0x30),('update',0x40)]:
            address=room+0x1218+offset
            descriptor=self.read(address,16)
            data,capacity,count=struct.unpack_from('<III',descriptor,4)
            if count>8192 or capacity<count:
                raise ValueError(f'{name} entity list invariants failed')
            members=list(struct.unpack('<'+'I'*count,self.read(data,count*4))) if count else []
            descriptors.append((address,descriptor))
            partitions[name]=count
            pointers.extend(members)
        pointers=list(dict.fromkeys(pointers))
        if not all(p in pointers for p in player_addresses):
            raise ValueError('Player manager and room entity list disagree')
        entities=[]
        invalid=[]
        for address in pointers:
            try:
                raw=self.read(address,0x410)
                kind=uint(raw,0x28)
                if kind==1:
                    raw=self.read(address,0x2ea0 if details else 0x1620)
                elif kind>=10 and kind!=1000:
                    raw=self.read(address,0xb68)
                entity=asdict(decode_entity(address,raw))
                identity=self._npc_identity(entity)
                if identity:
                    entity['npc_identity']=identity
                if details:
                    entity=self._entity_details(address,raw,entity)
                entities.append(entity)
            except (OSError,ValueError) as exc:
                invalid.append({'address':address,'error':str(exc)})
        # No partial success is offered as a complete danger set.
        if invalid:
            raise ValueError(f'Incomplete entity snapshot: {invalid[:2]}')
        players=[e for e in entities if e['address'] in player_addresses]
        if any(e['type']!=1 or not 1<=e['radius']<=80 for e in players):
            raise ValueError('Player identity/collision-radius invariants failed')
        if (self.pointer(game+0x18300)!=room or
                self.read(game+self.profile['player_list_offset'],12)!=player_vector or
                any(self.read(address,16)!=descriptor for address,descriptor in descriptors)):
            raise ValueError('Room/entity list changed during read; discard this frame')
        result={'profile':self.profile,'candidate_layout':True,
                'captured_at':datetime.now(timezone.utc).isoformat(),
                'runtime_checks_passed':True,
                'game':game,'room':room,'grid_width':gw,'grid_height':gh,
                'entity_partitions':partitions,
                'players':players,
                'entities':entities,
                'control_enabled':False,
                'note':'外部只读快照；仅读取内存，不执行引擎函数；详细新增字段尚待实战核对'}
        npc_identities=[e['npc_identity'] for e in entities if 'npc_identity' in e]
        result['npc_identity_coverage']={
            'scope':'entities in this snapshot with Type 10..999',
            'observed':len(npc_identities),
            'wiki_exact':sum(identity['resolution']=='wiki_exact' for identity in npc_identities),
            'local_entity_catalog_matches':sum(identity['entity_config_key'] is not None
                                               for identity in npc_identities),
            'local_entity_exact':sum(identity['local_entity_catalog_match_basis']=='exact_identity'
                                      for identity in npc_identities),
            'local_entity_unique_type_variant':sum(
                identity['local_entity_catalog_match_basis']=='unique_type_variant_entity_config'
                for identity in npc_identities),
            'supplemental_local_npcs':sum(identity['role']=='unlisted_npc' for identity in npc_identities),
            'wiki_monsters':sum(identity['category']=='monster' for identity in npc_identities),
            'wiki_bosses':sum(identity['category']=='boss' for identity in npc_identities),
            'type_name_resolved':sum(identity['type_name'] is not None for identity in npc_identities),
            'base_type_only':sum(identity['variant']==0 and identity['subtype']==0 for identity in npc_identities),
            'variant_subtype_specific_name_missing':sum(
                identity['name_zh'] is None and (identity['variant']!=0 or identity['subtype']!=0)
                for identity in npc_identities),
        }
        if details:
            self._room_details(result,game,room)
            last_frame=self.pointer(game+self.profile['frame_offset'])
            span=last_frame-first_frame
            if not 0<=span<=2:
                raise ValueError('Snapshot spans too many engine frames; discard stale state')
            result['capture_frame_span']=span
            for e in entities:
                e['age']=max(0,result['frame']-e.pop('_birth_frame',result['frame']))
            controllers,locality=self._local_controllers(players)
            result['locality']=locality
            locals_=[p for p in players if p.get('controller_index') in controllers and not p.get('coop_ghost',False)]
            result['local_player']=min(locals_,key=lambda p:p.get('player_index',0)) if locals_ else None
            result['keyboard_input']=self._keyboard_state()
        return result

    def _npc_identity(self,e):
        if not 10<=e['type']<1000:
            return None
        if not hasattr(self,'_enums'):
            self._enums=json.loads((Path(__file__).resolve().parent/'engine_enums.json').read_text(encoding='utf-8'))
        if not hasattr(self,'_entity_type_names'):
            self._entity_type_names={int(value):name for name,value in self._enums.get('EntityType',{}).items()}
        if not hasattr(self,'_monster_catalog'):
            lines=(Path(__file__).resolve().parent/'engine_monster_catalog.tsv').read_text(encoding='utf-8').splitlines()
            self._monster_catalog={parts[0]:{'name_zh':parts[1],'category':parts[2]}
                                   for parts in (line.split('\t') for line in lines[1:] if line)}
        if not hasattr(self,'_npc_entity_catalog'):
            lines=(Path(__file__).resolve().parent/'engine_npc_entity_catalog.tsv').read_text(encoding='utf-8').splitlines()
            self._npc_entity_catalog={parts[0]:{'name_zh':parts[1] or None,'category':parts[2],
                                                'role':parts[3],
                                                'entity_config_name':parts[4] if len(parts)>4 else None}
                                      for parts in (line.split('\t') for line in lines[1:] if line)}
            type_variants={}
            for catalog_key in self._npc_entity_catalog:
                type_variant='.'.join(catalog_key.split('.')[:2])
                type_variants.setdefault(type_variant,[]).append(catalog_key)
            self._npc_entity_catalog_by_type_variant={
                type_variant:matches[0] for type_variant,matches in type_variants.items() if len(matches)==1}
        typ=e['type'];variant=e['variant'];subtype=e['subtype']
        key=f'{typ}.{variant}.{subtype}'
        type_name=self._entity_type_names.get(typ)
        wiki_entry=self._monster_catalog.get(key)
        entity_config_key=(key if key in self._npc_entity_catalog else
                           self._npc_entity_catalog_by_type_variant.get(f'{typ}.{variant}'))
        entity_config=self._npc_entity_catalog.get(entity_config_key) if entity_config_key else None
        match_basis=('exact_identity' if key in self._npc_entity_catalog else
                     'unique_type_variant_entity_config' if entity_config else None)
        return {'key':key,
                'type_name':type_name,
                'name_zh':wiki_entry['name_zh'] if wiki_entry else None,
                'display_name':(wiki_entry['name_zh'] if wiki_entry else
                                entity_config['entity_config_name'] if entity_config else type_name or key),
                'category':wiki_entry['category'] if wiki_entry else entity_config['category'] if entity_config else None,
                'role':entity_config['role'] if entity_config else None,
                'variant':variant,
                'subtype':subtype,
                'entity_config_key':entity_config_key,
                'entity_config_name':entity_config['entity_config_name'] if entity_config else None,
                'local_entity_catalog_match_basis':match_basis,
                'resolution':'wiki_exact' if wiki_entry else
                             'local_entity_exact' if match_basis=='exact_identity' else
                             'local_entity_unique_type_variant' if match_basis else
                             'type_enum_base' if type_name and variant==0 and subtype==0 else
                             'type_enum_and_numeric_variant_subtype' if type_name else 'numeric_only'}

    def _keyboard_state(self):
        """Read KAGE's current keyboard action map; never call its methods.

        Current manager vtable +0x28/+0x74 walk +8/+12 in 8-byte
        reference records. Keyboard vtable +0x38 (0xa1ea20) walks the
        16-byte action records at +0x10; raw key getter 0xa6c580 reads
        the GLFW-key-indexed array at preferred VA 0xc78c10.
        """
        try:
            manager=self.base+0x857b18
            pairs=self._vector(manager+8,8,32)
            keys=self.read(self.base+0x878c10,349)
            records=[]
            for device,reference in struct.iter_unpack('<II',pairs):
                raw=self.read(device,0xc4)
                if uint(raw)!=self.base+0x7a1678:continue
                mappings=self._vector(device+0x10,16,128)
                if len(mappings)<8*16:raise ValueError('Keyboard action map too short')
                bindings=[list(item) for item in struct.iter_unpack('<iiii',mappings[:8*16])]
                if any(not -1<=key<349 for row in bindings for key in row):
                    raise ValueError('Keyboard binding outside verified GLFW range')
                records.append({'controller_index':uint(raw,0xc),'active':bool(raw[8]&2),
                    'bindings':bindings,
                    'pressed_actions':[any(k>=0 and keys[k] for k in row) for row in bindings]})
            return {'status':'verified_current_build' if records else 'no_verified_keyboard_device','devices':records}
        except (ValueError,OSError) as exc:
            return {'status':'unavailable','reason':str(exc),'devices':[]}

    def _local_controllers(self,players):
        """Data-only equivalent of NetInputDevice's IsLocal ownership query.

        Network controllers are allocated after local input devices: they are
        not necessarily zero and player index zero can belong to the host.
        Offsets and the ownership predicate below were traced in this exact EXE
        through its 'broadcast_frame_input ... local player' assertion.
        No native function is executed.
        """
        isaac=self.pointer(self.base+self.profile['isaac_slot_rva'])
        vector=isaac+0x4b3d8
        descriptor=self.read(vector,12)
        devices=self._vector(vector,maximum=32)
        current_indices={p.get('controller_index') for p in players}
        records=[];local=set()
        for (address,) in struct.iter_unpack('<I',devices):
            raw=self.read(address,0x378)
            controller=uint(raw,0xc)
            if controller not in current_indices:continue
            # Embedded user reference vtable slot 5 is IsLocal, as checked by
            # NetInputDevice::broadcast_frame_input at preferred VA 0x90299b.
            fn=self.pointer(uint(raw,0x370)+5*4)
            if fn!=self.base+0x65f260:
                raise ValueError('Unknown network input ownership predicate; do not guess local player')
            owner=uint(raw,0x374)
            own=False
            if owner:
                data=self.read(owner,0x24)
                low,high=uint(data,8),uint(data,12)
                if high==0xfefefefe:
                    # Synthetic local-device ID path, IsLocal -> GetLocalID.
                    active=self.pointer(self.base+(0xc73680-0x400000))
                    mode=self.pointer(self.base+(0xc73694-0x400000))
                    manager=self.pointer(self.base+(0xc7999c-0x400000))
                    own=bool(active and mode==0x60001 and manager and low==self.pointer(manager+0x2b4))
                else:
                    connection=uint(data,0x20)
                    machine=self.pointer(self.base+(0xc5ac00-0x400000))
                    own=bool(connection and self.pointer(connection+0x10)==machine) or bool(data[0]&1)
            records.append({'controller_index':controller,'is_local':own})
            if own:local.add(controller)
        if self.read(vector,12)!=descriptor:
            raise ValueError('Network input devices changed while resolving current player')
        # A nonempty network vector remains online evidence even when its
        # devices do not yet match the current player list (join/reconnect).
        # Falling back to keyboard/controller zero here guesses ownership.
        if devices:
            return local,{'method':'native_net_input_ownership','devices':records,'local_controller_indices':sorted(local)}
        return {0},{'method':'offline_keyboard_controller','devices':[],'local_controller_indices':[0]}

    def _string(self,address):
        raw=self.read(address,24)
        length,capacity=uint(raw,16),uint(raw,20)
        if length>128 or capacity<length:
            raise ValueError('Invalid animation name')
        value=raw[:length] if capacity<16 else self.read(uint(raw),length) if length else b''
        return value.decode('utf-8',errors='replace')

    def _vector(self,address,stride=4,maximum=8192):
        begin,end,capacity=struct.unpack('<III',self.read(address,12))
        if not begin and not end:
            return b''
        if end<begin or (end-begin)%stride or (end-begin)//stride>maximum or capacity<end:
            raise ValueError('Invalid engine vector')
        return self.read(begin,end-begin) if end>begin else b''

    def _weapon(self,address,slot=0):
        if not address:
            return None
        from native_getters import evaluate_max_charge
        if self._getters is None:
            self._getters=json.loads((Path(__file__).resolve().parent/'native_getters.json').read_text(encoding='utf-8'))
            if self._getters['engine_sha256']!=self.profile['file_sha256']:
                raise ValueError('Weapon expression definitions do not match this engine')
        raw=self.read(address,0x40)
        vt=uint(raw)
        entry=self._getters['vtables'].get(hex(vt-self.base))
        if entry is None:
            raise ValueError('Unrecognized weapon layout; no guessed input profile is used')
        maximum=evaluate_max_charge(entry['max_charge'],self._getters['constants'],raw)
        if vt not in self._weapon_main_getters:
            fn=self.pointer(vt+10*4)
            code=self.read(fn,12)
            offset=None
            if code[:2]==b'\x8b\x41' and code[3]==0xc3:
                offset=code[2]
            elif code[:2]==b'\x8b\x81' and code[6]==0xc3:
                offset=uint(code,2)
            self._weapon_main_getters[vt]=offset
        offset=self._weapon_main_getters[vt]
        main=self.pointer(address+offset) if offset is not None else 0
        return {'address':address,'slot':slot,'owner':uint(raw,4),'type':uint(raw,0x30),
                'fire_delay':single(raw,0xc),'max_fire_delay':single(raw,0x10),
                'charge':single(raw,0x14),'max_charge':maximum,'modifiers':uint(raw,0x34),
                'num_fired':uint(raw,0x38),'direction':list(struct.unpack_from('<ff',raw,0x20)),
                'main_entity':main,'class':entry['name'],'max_charge_exact':maximum is not None}

    def _entity_details(self,address,raw,e):
        typ=e['type']
        sizes={2:0x848,3:0xf30,4:0x440,5:0x550,7:0x568,8:0x480,9:0x470,1000:0x490}
        need=sizes.get(typ,0xf60 if typ>=10 else len(raw))
        if len(raw)<need:
            raw+=self.read(address+len(raw),need-len(raw))
        e.update(parent=uint(raw,0x3bc),spawner=uint(raw,0x3c8),target=uint(raw,0x3c4),
                 spawner_type=uint(raw,0x34),spawner_variant=uint(raw,0x38),grid_collision_class=uint(raw,0x184),
                 max_health=single(raw,0x384),invulnerable=bool(raw[0x3b0]),
                 target_position=list(struct.unpack_from('<ff',raw,0x334)),
                 position_offset=list(struct.unpack_from('<ff',raw,0x34c)),
                 size_multi=list(struct.unpack_from('<ff',raw,0x374)),
                 sprite_flip_x=bool(raw[0x148]),_birth_frame=uint(raw,0x328))
        # Entity.sprite +0x48; ANM2.animState +0x30;
        # AnimationState.animData +4 and animFrame +0x10.
        # Current EXE ANM2::GetFrame checks [ecx+0x34], confirming animData.
        e['animation_frame']=single(raw,0x88)
        animation=uint(raw,0x7c)
        if animation:
            if animation not in self._animation_names:
                self._animation_names[animation]=self._string(animation)
            e['animation']=self._animation_names[animation]
        else:
            e['animation']=''
        if typ==1:
            # Current Lua property registrations: getter 0x6b84a0 reads
            # byte +0x410; getter 0x85e250 reads signed int +0x414.
            e['controls_enabled']=bool(raw[0x410])
            e['controls_cooldown']=struct.unpack_from('<i',raw,0x414)[0]
            e['character']=uint(raw,0x13c0)
            e['coop_ghost']=bool(raw[0x20a9])
            e['damage_cooldown']=uint(raw,0x13bc)
            e['stats']={name:single(raw,offset) for name,offset in
                        [('max_fire_delay',0x1460),('shot_speed',0x1464),('damage',0x1470),
                         ('tear_range',0x1480),('move_speed',0x1568),('luck',0x156c)]}
            e['stats'].update(can_fly=bool(raw[0x1570]),can_shoot=bool(raw[0x1825]))
            # Current EXE Lua EntityPlayer.TearFlags registration at 0x86a163:
            # push 1; push 0x1488; push "TearFlags"; call 0x883ab0 (BitSet128).
            # Covered by the same exact EXE hash gate as the other stats.
            e['tear_flags']=int.from_bytes(raw[0x1488:0x1498],'little')
            counts=self._vector(address+0x16c8)
            amounts=struct.unpack('<'+'i'*(len(counts)//4),counts)
            e['collectibles']={str(i):v for i,v in enumerate(amounts) if v>0}
            e['weapons']=[w for i in range(5) if (w:=self._weapon(uint(raw,0x13dc+4*i),i))]
            e['health_parts']={name:uint(raw,offset) for name,offset in
                              [('max_red',0x1340),('red',0x1344),('eternal',0x1348),('soul',0x134c),
                               ('bone',0x1d88),('broken',0x1da0),('rotten',0x1da4)]}
            e['marked_target']=uint(raw,0x1408)
            e['active_charges']=[uint(raw,0x1588+slot*32)+uint(raw,0x158c+slot*32) for slot in range(4)]
        elif typ==2:
            e['tear']={'height':single(raw,0x410),'fall_speed':single(raw,0x414),
                       'fall_accel':single(raw,0x418),'range':single(raw,0x820),
                       'flags':int.from_bytes(raw[0x428:0x438],'little')}
        elif typ==3:
            e['familiar']={'owner':uint(raw,0x410),'state':uint(raw,0xd88),'fire_cooldown':struct.unpack_from('<i',raw,0xd4c)[0],
                           'weapon':self._weapon(uint(raw,0xdb0))}
        elif typ==4:
            e['bomb']={'countdown':struct.unpack_from('<i',raw,0x410)[0],
                       'explosion_radius':max(80.,80.*single(raw,0x434))}
        elif typ==5:
            e['pickup']={'price':struct.unpack_from('<i',raw,0x534)[0]}
        elif typ==7:
            samples=self._vector(address+0x464+0x1c,8,4096)
            points=[list(p) for p in struct.iter_unpack('<ff',samples)]
            e['laser']={'timeout':struct.unpack_from('<i',raw,0x458)[0],'shrink':bool(raw[0x45e]),
                        'origin':[e['x'],e['y']],
                        'endpoint':list(struct.unpack_from('<ff',raw,0x4d8)),
                        'samples':points,'max_distance':single(raw,0x4d0),'scale':single(raw,0x4e0),
                        'angle':single(raw,0x41c),'is_circle':e['subtype'] in (1,2,3),'disable_follow_parent':bool(raw[0x4e4]),
                        'radius':single(raw,0x4bc),'radius_expansion':single(raw,0x4f4)}
        elif typ==8:
            e['knife']={'max_distance':single(raw,0x45c),'charge':single(raw,0x460),'is_flying':bool(raw[0x464]),'rotation':single(raw,0x438)}
        elif typ==9:
            e['projectile']={'flags':int.from_bytes(raw[0x438:0x440],'little'),
                             'height':single(raw,0x410),'fall_speed':single(raw,0x414),
                             'fall_accel':single(raw,0x418)}
        elif typ==1000:
            e['effect']={'state':uint(raw,0x450),'timeout':struct.unpack_from('<i',raw,0x45c)[0],
                         'lifespan':struct.unpack_from('<i',raw,0x460)[0]}
        elif typ>=10:
            e['champion_color']=struct.unpack_from('<i',raw,0xc64)[0]
            e['is_boss']=bool(raw[0xc3d])
            e['projectile_cooldown']=struct.unpack_from('<i',raw,0xba0)[0]
            e['projectile_delay']=struct.unpack_from('<i',raw,0xba4)[0]
            e['v1']=list(struct.unpack_from('<ff',raw,0xbb0))
            e['v2']=list(struct.unpack_from('<ff',raw,0xbb8))
            e['i1']=struct.unpack_from('<i',raw,0xbc0)[0]
            e['i2']=struct.unpack_from('<i',raw,0xbc4)[0]
        return e

    def _room_details(self,result,game,room):
        frame=self.pointer(game+self.profile['frame_offset'])
        difficulty=self.pointer(game+self.profile['difficulty_offset'])
        if difficulty not in (0,1,2,3):
            raise ValueError('Invalid native game difficulty')
        isaac=self.pointer(self.base+self.profile['isaac_slot_rva'])
        active=self.pointer(isaac+8)==2
        pause_fields=[0x264f4,0x1d520,0x1d654,0x1ba78,0x1b83c,0x23a74]
        pause_values=[struct.unpack('<i',self.read(game+offset,4))[0] for offset in pause_fields]
        result.update(frame=frame,difficulty=difficulty,paused=not active or pause_values[0]>0 or any(pause_values[1:]),
                      transitional=bool(pause_values[3] or pause_values[4]),pause_fields=pause_values)
        count=result['grid_width']*result['grid_height']
        pointers=struct.unpack('<'+'I'*count,self.read(room+0x24,count*4))
        paths=struct.unpack('<'+'i'*count,self.read(room+0x76c,count*4))
        descriptor=self.pointer(room+4)
        # Lua Room.IsClear registration 0x86c4b5 -> getter 0x436080:
        # [Room+4] descriptor byte +0x44, bit 0. Do not infer clear from
        # an empty entity list during a spawn/transition frame.
        result['room_clear']=bool(self.read(descriptor+self.profile.get('room_clear_descriptor_offset',0x44),1)[0]&1)
        config=self.pointer(descriptor+0x10)
        room_config=self.read(config,0x4c) if config else None
        # Current EXE Room::GetGridCollision (VA 0x7f0800, also registered
        # under that Lua name) returns NONE before inspecting either array
        # for StageId 35 / Type 16. Path costs alone are not authoritative here.
        no_grid_collision=bool(room_config and uint(room_config)==35 and uint(room_config,8)==16)
        cells=[]
        for index,address in enumerate(pointers):
            if address:
                data=self.read(address,0x40)
                cell={'index':index,'type':uint(data,4),'variant':uint(data,8),
                      'state':uint(data,12),'collision':uint(data,0x3c)}
            else:
                path=paths[index]
                collision=1 if 3000<=path<=3999 else 3 if path>=1000 else 0
                cell={'index':index,'type':0,'variant':0,'state':0,'collision':collision}
            cell['grid_path']=paths[index]
            if no_grid_collision:
                cell['collision']=0
            cells.append(cell)
        result['room_shape']=uint(room_config,0x48) if room_config else None
        result['room_config']=({'stage_id':uint(room_config),'type':uint(room_config,8),
                                'variant':uint(room_config,12),'subtype':uint(room_config,16)}
                               if room_config else None)
        result['grid_collision_source']='native_stage35_type16_none' if no_grid_collision else 'native_grid_or_path'
        result['grid_cells']=cells
        # Lua GetStage -> 0x40c3a0 [ecx], GetCurrentRoomIndex ->
        # 0x4360e0 [ecx+0x18304], Room.GetDoor -> 0x436020 [+0x724].
        result['level_stage']=self.pointer(game)
        result['room_index']=struct.unpack('<i',self.read(game+0x18304,4))[0]
        door_vector=self.read(room+0x724,32)
        doors=[]
        for slot,address in enumerate(struct.unpack('<8I',door_vector)):
            if not address:continue
            data=self.read(address,0x398)
            index=uint(data,0x24)
            if uint(data,4)!=16 or index>=0x1c0 or uint(data,0x3c)>5:
                raise ValueError('Door identity/geometry invariants failed')
            # TargetRoomIndex getter/setter at 0x60cfe0/0x738150 uses
            # +0x394, not the older public +0x280. Type fields are Lua
            # registered independently at +0x15c/+0x160.
            doors.append({'slot':slot,'address':address,'grid_index':index,
                          'x':40+(index%result['grid_width'])*40,
                          'y':120+(index//result['grid_width'])*40,
                          'collision':uint(data,0x3c),'state':uint(data,12),
                          'current_room_type':uint(data,0x15c),
                          'target_room_type':uint(data,0x160),
                          'target_room_index':struct.unpack_from('<i',data,0x394)[0]})
        if self.read(room+0x724,32)!=door_vector:
            raise ValueError('Doors changed during capture')
        result['doors']=doors
        if not hasattr(self,'_enums'):
            self._enums=json.loads((Path(__file__).resolve().parent/'engine_enums.json').read_text(encoding='utf-8'))
        result['enums']=self._enums
        if self.pointer(game+0x18300)!=room:
            raise ValueError('Room changed while reading terrain; discard frame')
        if self.pointer(room+4)!=descriptor:
            raise ValueError('Room descriptor changed while reading terrain; discard frame')

    def close(self):
        if self.handle:
            kernel.CloseHandle(self.handle)
            self.handle=None


def main():
    parser=argparse.ArgumentParser(description='以撒外部只读引擎诊断，不发送操作')
    parser.add_argument('--pid',type=int)
    parser.add_argument('--output',type=Path,default=Path(__file__).resolve().parent/'engine-snapshot.json')
    args=parser.parse_args()
    if args.pid is None:
        print(json.dumps(identify(),ensure_ascii=False,indent=2))
        return
    reader=EngineReader(args.pid)
    try:
        result=reader.snapshot()
        args.output.write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
        print(json.dumps({'players':result['players'],'entities':len(result['entities']),
                          'candidate_layout':True,'control_enabled':False},ensure_ascii=False,indent=2))
    finally:
        reader.close()


if __name__=='__main__':
    main()
