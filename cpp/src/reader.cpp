#include "gamebot/reader.hpp"
#include "gamebot/weapons.hpp"
#define NOMINMAX
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <tlhelp32.h>
#include <psapi.h>
#include <bcrypt.h>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <cstdio>
#include <set>
#include <unordered_map>
#include <map>
#include <chrono>

namespace gamebot {
namespace {
struct Handle { HANDLE value{};~Handle(){if(value&&value!=INVALID_HANDLE_VALUE)CloseHandle(value);} };
void enable_game_read_privilege() {
    static const bool enabled=[] {
        Handle token;
        if(!OpenProcessToken(GetCurrentProcess(),TOKEN_ADJUST_PRIVILEGES,&token.value))
            throw std::runtime_error("Cannot open reader access token: Windows error "+std::to_string(GetLastError()));
        TOKEN_PRIVILEGES privilege{};privilege.PrivilegeCount=1;
        if(!LookupPrivilegeValueW(nullptr,SE_DEBUG_NAME,&privilege.Privileges[0].Luid))
            throw std::runtime_error("Cannot locate SeDebugPrivilege: Windows error "+std::to_string(GetLastError()));
        privilege.Privileges[0].Attributes=SE_PRIVILEGE_ENABLED;
        BOOL adjusted=AdjustTokenPrivileges(token.value,FALSE,&privilege,0,nullptr,nullptr);
        DWORD error=GetLastError();
        if(!adjusted||error==ERROR_NOT_ALL_ASSIGNED)
            throw std::runtime_error("Cannot enable game read privilege (SeDebugPrivilege): Windows error "+std::to_string(error));
        return true;
    }();
    (void)enabled;
}
class WindowsMemory final:public Memory {
    Handle handle_;
public:
    explicit WindowsMemory(uint32_t pid) {handle_.value=OpenProcess(PROCESS_VM_READ|PROCESS_QUERY_LIMITED_INFORMATION,FALSE,pid);if(!handle_.value)throw std::runtime_error("Cannot open game read-only: Windows error "+std::to_string(GetLastError()));}
    bool alive() const override { DWORD code{};return GetExitCodeProcess(handle_.value,&code)&&code==STILL_ACTIVE; }
    void copy(uint32_t address,void* out,size_t size) const override {
        if(address<0x10000||uint64_t(address)+size>0x100000000ULL||size>1048576)throw std::runtime_error("Invalid native read range");
        if(!size)return;SIZE_T copied{};
        if(!ReadProcessMemory(handle_.value,reinterpret_cast<void*>(uintptr_t(address)),out,size,&copied)||copied!=size)throw std::runtime_error("Native memory read failed");
    }
};
std::vector<uint8_t> read_file(const std::filesystem::path&p) {
    std::ifstream in(p,std::ios::binary);if(!in)throw std::runtime_error("Cannot read executable");
    return {std::istreambuf_iterator<char>(in),{}};
}
size_t unique_pattern(const std::vector<uint8_t>& bytes,const std::string& pattern) {
    std::istringstream parser(pattern);std::vector<int> values;std::string token;
    while(parser>>token)values.push_back(token=="??"?-1:std::stoi(token,nullptr,16));
    size_t found=0,count=0;
    for(size_t i=0;i+values.size()<=bytes.size();++i) {
        bool match=true;for(size_t j=0;j<values.size();++j)if(values[j]>=0&&bytes[i+j]!=values[j]){match=false;break;}
        if(match){found=i;++count;}
    }
    if(count!=1)throw std::runtime_error("Executable pattern is not unique: "+std::to_string(count));return found;
}
double finite_float(std::span<const uint8_t>b,size_t off,double max=1e7) {
    double v=unpack<float>(b,off);
    if(!std::isfinite(v)||std::abs(v)>max) {
        char message[64];std::snprintf(message,sizeof message,"Invalid native float at +0x%zX",off);
        throw std::runtime_error(message);
    }
    return v;
}
BOOL CALLBACK collect_game_window(HWND window,LPARAM context) {
    auto& processes=*reinterpret_cast<std::vector<Process>*>(context);
    DWORD pid{};GetWindowThreadProcessId(window,&pid);
    if(!pid||std::any_of(processes.begin(),processes.end(),[&](const Process&p){return p.pid==pid;}))return TRUE;
    Handle process{OpenProcess(PROCESS_QUERY_LIMITED_INFORMATION,FALSE,pid)};
    if(!process.value)return TRUE;
    wchar_t path[32768];DWORD size=32768;
    if(!QueryFullProcessImageNameW(process.value,0,path,&size))return TRUE;
    const wchar_t* filename=wcsrchr(path,L'\\');filename=filename?filename+1:path;
    if(CompareStringOrdinal(filename,-1,L"isaac-ng.exe",-1,TRUE)==CSTR_EQUAL)
        processes.push_back({pid,std::filesystem::path(std::wstring(path,size))});
    return TRUE;
}
}
std::string file_sha256(const std::filesystem::path& path) {
    BCRYPT_ALG_HANDLE alg{};BCRYPT_HASH_HANDLE hash{};
    if(BCryptOpenAlgorithmProvider(&alg,BCRYPT_SHA256_ALGORITHM,nullptr,0)<0)throw std::runtime_error("SHA256 provider failed");
    auto close=[&]{if(hash)BCryptDestroyHash(hash);BCryptCloseAlgorithmProvider(alg,0);};
    if(BCryptCreateHash(alg,&hash,nullptr,0,nullptr,0,0)<0){close();throw std::runtime_error("SHA256 create failed");}
    std::ifstream input(path,std::ios::binary);if(!input){close();throw std::runtime_error("Cannot hash executable");}
    std::vector<uint8_t> data(65536);while(input){input.read(reinterpret_cast<char*>(data.data()),data.size());auto n=input.gcount();if(n&&BCryptHashData(hash,data.data(),ULONG(n),0)<0){close();throw std::runtime_error("SHA256 update failed");}}
    uint8_t digest[32];auto status=BCryptFinishHash(hash,digest,32,0);close();if(status<0)throw std::runtime_error("SHA256 finish failed");
    std::ostringstream out;out<<std::hex<<std::uppercase<<std::setfill('0');for(auto b:digest)out<<std::setw(2)<<int(b);return out.str();
}
Layout Reader::inspect(const std::filesystem::path& path) {
    auto hash=file_sha256(path);
    if(hash!="7122AC28779925B24E23E2416F231322B1470388BD25E2C08665AD8D53B3EA4F"&&
       hash!="3BDFC8BAE0DC7E334B76009D0AD45DFBB16EE5F00C06FFBC3A0094E34D44616B")throw std::runtime_error("Unsupported game SHA256: "+hash);
    auto bytes=read_file(path);std::span<const uint8_t> raw(bytes);
    auto pe=unpack<uint32_t>(raw,0x3c);
    if(unpack<uint32_t>(raw,pe)!=0x4550||unpack<uint16_t>(raw,pe+4)!=0x14c||unpack<uint16_t>(raw,pe+24)!=0x10b)throw std::runtime_error("Expected x86 PE32 game");
    auto preferred=unpack<uint32_t>(raw,pe+24+28);
    auto a=unique_pattern(bytes,"A1 ?? ?? ?? ?? 8B 80 ?? ?? ?? ?? 83 F8 01 74 ?? 83 F8 03 74 ?? 32 C0");
    auto b=unique_pattern(bytes,"55 8B EC A1 ?? ?? ?? ?? 8B D1");
    auto slot=unpack<uint32_t>(raw,a+1);
    if(slot!=unpack<uint32_t>(raw,b+4)||slot<preferred)throw std::runtime_error("Independent game pointer signatures disagree");
    auto m=unique_pattern(bytes,"8B D1 56 8B 35");
    unique_pattern(bytes,"8B 81 F8 64 02 00 C3");
    auto p=unique_pattern(bytes,"8B 81 ?? ?? ?? ?? 2B 81 ?? ?? ?? ?? C1 F8 02 C3");
    if(unpack<uint32_t>(raw,p+8)!=0x1baa8||unpack<uint32_t>(raw,p+2)!=0x1baac)throw std::runtime_error("Player vector layout differs");
    return {0,slot-preferred,unpack<uint32_t>(raw,m+5)-preferred,0x264f8,hash};
}
std::vector<Process> Reader::processes() {
    Handle snap{CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS,0)};std::vector<Process> out;
    if(snap.value==INVALID_HANDLE_VALUE)throw std::runtime_error("Process enumeration failed");
    PROCESSENTRY32W entry{};entry.dwSize=sizeof entry;
    BOOL ok=Process32FirstW(snap.value,&entry);
    if(!ok)throw std::runtime_error("Process32FirstW failed: "+std::to_string(GetLastError()));
    for(;ok;ok=Process32NextW(snap.value,&entry))if(CompareStringOrdinal(entry.szExeFile,-1,L"isaac-ng.exe",-1,TRUE)==CSTR_EQUAL) {
        Handle process{OpenProcess(PROCESS_QUERY_LIMITED_INFORMATION,FALSE,entry.th32ProcessID)};wchar_t path[32768];DWORD size=32768;
        if(!process.value)throw std::runtime_error("Cannot inspect isaac-ng.exe PID "+std::to_string(entry.th32ProcessID)+": OpenProcess error "+std::to_string(GetLastError()));
        if(!QueryFullProcessImageNameW(process.value,0,path,&size))throw std::runtime_error("Cannot query isaac-ng.exe path: Windows error "+std::to_string(GetLastError()));
        out.push_back({entry.th32ProcessID,std::filesystem::path(std::wstring(path,size))});
    }
    if(GetLastError()!=ERROR_NO_MORE_FILES)throw std::runtime_error("Process32NextW failed: "+std::to_string(GetLastError()));
    // Some launch environments expose a filtered Toolhelp process list even
    // while the game window and read-only process handle remain accessible.
    if(out.empty()&&!EnumWindows(collect_game_window,reinterpret_cast<LPARAM>(&out)))
        throw std::runtime_error("Game window enumeration failed: "+std::to_string(GetLastError()));
    return out;
}
uintptr_t process_image_base(const Process& process,bool mapped_image_only) {
    enable_game_read_privilege();
    DWORD module_error=ERROR_MOD_NOT_FOUND;
    if(!mapped_image_only)for(int attempt=0;attempt<5;++attempt) {
        Handle modules{CreateToolhelp32Snapshot(TH32CS_SNAPMODULE|TH32CS_SNAPMODULE32,process.pid)};
        if(modules.value!=INVALID_HANDLE_VALUE) {
            MODULEENTRY32W module{};module.dwSize=sizeof module;
            BOOL ok=Module32FirstW(modules.value,&module);
            for(;ok;ok=Module32NextW(modules.value,&module)) {
                std::error_code error;
                if(std::filesystem::equivalent(module.szExePath,process.path,error))return uintptr_t(module.modBaseAddr);
            }
            module_error=GetLastError();
        }else module_error=GetLastError();
        // The loader can change its module list during a snapshot.
        if(module_error!=ERROR_BAD_LENGTH)break;
        Sleep(10);
    }

    // MEM_IMAGE mappings remain available when the loader's module snapshot
    // cannot be read. Match the full device path, never assume the PE's
    // preferred base or select an arbitrary DLL with the same filename.
    Handle handle{OpenProcess(PROCESS_QUERY_INFORMATION|PROCESS_VM_READ,FALSE,process.pid)};
    if(!handle.value)throw std::runtime_error("Cannot locate game image: module error "+std::to_string(module_error)+", OpenProcess error "+std::to_string(GetLastError()));
    auto expected=std::filesystem::absolute(process.path).wstring();
    if(expected.starts_with(L"\\\\?\\"))expected.erase(0,4);
    wchar_t device[32768]{};
    if(expected.size()<3||expected[1]!=L':'||!QueryDosDeviceW(expected.substr(0,2).c_str(),device,32768))
        throw std::runtime_error("Cannot resolve game image path: Windows error "+std::to_string(GetLastError()));
    expected=std::wstring(device)+expected.substr(2);
    uintptr_t address=0;std::set<uintptr_t> checked;
    MEMORY_BASIC_INFORMATION region{};
    while(VirtualQueryEx(handle.value,reinterpret_cast<void*>(address),&region,sizeof region)==sizeof region) {
        auto base=uintptr_t(region.AllocationBase);
        if(region.State==MEM_COMMIT&&region.Type==MEM_IMAGE&&checked.insert(base).second) {
            wchar_t mapped[32768]{};
            DWORD length=K32GetMappedFileNameW(handle.value,reinterpret_cast<void*>(base),mapped,32768);
            if(length&&length<32768&&CompareStringOrdinal(mapped,int(length),expected.c_str(),int(expected.size()),TRUE)==CSTR_EQUAL)return base;
        }
        auto next=uintptr_t(region.BaseAddress)+region.RegionSize;
        if(next<=address)break;
        address=next;
    }
    throw std::runtime_error("Game image not found: module error "+std::to_string(module_error)+", mapped-image scan error "+std::to_string(GetLastError()));
}
std::unique_ptr<Reader> Reader::attach(const Process& process) {
    auto layout=inspect(process.path);
    auto base=process_image_base(process);
    if(base>UINT32_MAX)throw std::runtime_error("Game image is outside the x86 address space");
    layout.base=uint32_t(base);
    return std::make_unique<Reader>(std::make_shared<WindowsMemory>(process.pid),layout,process.pid);
}
Entity decode_entity(uint32_t address,std::span<const uint8_t> raw) {
    Entity e;e.address=address;e.type=unpack<int>(raw,0x28);e.variant=unpack<int>(raw,0x2c);e.subtype=unpack<int>(raw,0x30);
    e.native_index=unpack<uint32_t>(raw,0x20);
    e.pending_damage=unpack<float>(raw,0x14);e.pending_damage_flags=unpack<uint64_t>(raw,0x18);
    if(e.type<1||e.type>=2000)throw std::runtime_error("Entity type outside supported range");
    for(size_t offset:{0x170u,0x171u,0x172u,0x173u})if(unpack<uint8_t>(raw,offset)>1)throw std::runtime_error("Entity boolean layout differs");
    e.active=unpack<uint8_t>(raw,0x170)!=0;e.exists=unpack<uint8_t>(raw,0x172)!=0;e.dead=unpack<uint8_t>(raw,0x173)!=0;
    e.pos={finite_float(raw,0x33c,15000),finite_float(raw,0x340,15000)};
    e.position_offset={unpack<float>(raw,0x34c),unpack<float>(raw,0x350)};
    double multiplier=e.type==1?60:30;e.vel={finite_float(raw,0x360,500)*multiplier,finite_float(raw,0x364,500)*multiplier};
    e.age=unpack<float>(raw,0x3a4);e.friction=unpack<float>(raw,0x36c);
    e.radius=finite_float(raw,0x370,1000);if(e.radius<0)throw std::runtime_error("Negative entity radius");
    // Mass is an entity field, but not every subclass keeps a finite float at
    // +0x37C; a pointer there would abort the whole snapshot. Capture is
    // best-effort and reports mass_known instead.
    const float mass=unpack<float>(raw,0x37c);
    if(std::isfinite(mass)&&std::abs(mass)<=1e9) { e.mass=mass;e.mass_known=true; }
    e.hp=finite_float(raw,0x380,1e9);e.max_hp=finite_float(raw,0x384,1e9);
    e.damage=finite_float(raw,0x388,10000);e.speed_multiplier=finite_float(raw,0x39c,100);
    e.flags=unpack<uint64_t>(raw,0x168);e.friendly=(e.flags&((1ULL<<29)|(1ULL<<8)))!=0;e.no_target=(e.flags&(1ULL<<4))!=0;
    e.invulnerable=unpack<uint8_t>(raw,0x3b0)!=0;e.parent=unpack<uint32_t>(raw,0x3bc);e.child=unpack<uint32_t>(raw,0x3c0);e.target=unpack<uint32_t>(raw,0x3c4);e.spawner=unpack<uint32_t>(raw,0x3c8);e.spawner_type=unpack<int>(raw,0x34);
    e.boss_status_cooldown=unpack<int>(raw,0x238);
    e.collision=unpack<int>(raw,0x188);e.grid_collision=unpack<int>(raw,0x184);e.seed=unpack<uint32_t>(raw,0x3ec);e.birth=unpack<int>(raw,0x328);e.birth_known=true;
    e.target_pos={finite_float(raw,0x334,15000),finite_float(raw,0x338,15000)};e.animation_frame=finite_float(raw,0x88,100000);
    e.sprite_flip_x=unpack<uint8_t>(raw,0x148)!=0;e.animation_speed=unpack<float>(raw,0x14c);
    e.overlay_animation_frame=unpack<float>(raw,0xa8);
    e.animation_state_known=true;e.animation_playing=unpack<uint8_t>(raw,0x8c)!=0;
    e.overlay_animation_playing=unpack<uint8_t>(raw,0xac)!=0;
    e.animation_events=unpack<uint32_t>(raw,0x90);e.animation_event_history=unpack<uint32_t>(raw,0x94);
    e.overlay_animation_events=unpack<uint32_t>(raw,0xb0);e.overlay_animation_event_history=unpack<uint32_t>(raw,0xb4);
    e.animation_update_delay=unpack<int>(raw,0x3f0);
    if(e.enemy()){
        e.state=unpack<int>(raw,0xb64);e.state_frame=unpack<int>(raw,0x410);
        e.boss_target_mode=unpack<int>(raw,0xf1c);
        e.projectile_cooldown=unpack<int>(raw,0xba0);e.projectile_delay=unpack<int>(raw,0xba4);
        e.ai_v1={finite_float(raw,0xbb0,15000),finite_float(raw,0xbb4,15000)};
        e.ai_v2={finite_float(raw,0xbb8,15000),finite_float(raw,0xbbc,15000)};
        e.held=unpack<uint32_t>(raw,0xbec);
        e.ai_i1=unpack<int>(raw,0xbc0);e.ai_i2=unpack<int>(raw,0xbc4);
        e.is_boss=unpack<uint8_t>(raw,0xc3d)!=0;e.shield_strength=finite_float(raw,0xc40,1e9);
        e.shield_history_capacity=unpack<int>(raw,0xc44);
        e.champion=unpack<int>(raw,0xc64);e.boss_color=unpack<int>(raw,0xc78);
        if(e.type==412) {
            e.delirium_layout_valid=true;
            e.delirium_boss_type=unpack<uint32_t>(raw,0xbc8);e.delirium_boss_variant=unpack<uint32_t>(raw,0xbcc);
            e.delirium_transformation_timer=unpack<uint16_t>(raw,0xbd0);e.delirium_remaining_attacks=unpack<uint8_t>(raw,0xbd2);
            e.delirium_state=unpack<uint8_t>(raw,0xbd3);e.delirium_attack_id=unpack<uint32_t>(raw,0xbd8);
            e.delirium_attack_id_low24=e.delirium_attack_id&0xffffffu;
            e.delirium_attack_angle=unpack<uint8_t>(raw,0xbdc);e.delirium_cycle_id=unpack<uint32_t>(raw,0xbe0);
            e.delirium_cycle_id|=uint64_t(unpack<uint32_t>(raw,0xbe4))<<32;
            e.delirium_cycle_low7=uint32_t(e.delirium_cycle_id&0x7fu);
            e.delirium_cycle_field_15_24=uint32_t((e.delirium_cycle_id>>15)&0x3ffu);
            e.delirium_cycle_field_25_34=uint32_t((e.delirium_cycle_id>>25)&0x3ffu);
        }
    }
    if(e.type==4){e.bomb_countdown2=unpack<int>(raw,0x414);e.bomb_attached=unpack<uint32_t>(raw,0x450);for(size_t i=0;i<4;++i)e.bomb_tear_flags[i]=unpack<uint32_t>(raw,0x438+i*4);e.timeout=unpack<int>(raw,0x410);
        e.bomb_explosion_damage=finite_float(raw,0x418,10000);e.bomb_scale=finite_float(raw,0x434,100);e.bomb_explosion_radius_scale=finite_float(raw,0x44c,100);
        if(e.bomb_scale<0||e.bomb_explosion_radius_scale<0)throw std::runtime_error("Negative native bomb scale");
        e.bomb_explosion_fields_known=true;e.blast_radius=native_bomb_explosion_radius(e);}
    if(e.type==3)e.owner=unpack<uint32_t>(raw,0x410);
    if(e.type==1){e.shot_speed_stat=finite_float(raw,0x1464,10);e.held=unpack<uint32_t>(raw,0x140c);
        e.player_action_bomb=unpack<uint32_t>(raw,0x1410);e.player_action_state=unpack<int>(raw,0x1f2c);
        e.damage_stat=finite_float(raw,0x14f0,10000);e.player_held_known=true;
        e.slow_factor=finite_float(raw,0x3ac,10);e.slow_countdown=unpack<int>(raw,0x220);}
    if(e.type==4)e.bomb_hold_state=unpack<int>(raw,0x3fc);
    if(e.type==7) {
        for(size_t i=0;i<4;++i)e.laser_tear_flags[i]=unpack<uint32_t>(raw,0x428+i*4);
        e.timeout=unpack<int>(raw,0x458);e.endpoint={finite_float(raw,0x4d8,15000),finite_float(raw,0x4dc,15000)};
        e.angle=finite_float(raw,0x41c);e.circle=e.subtype>=1&&e.subtype<=3;e.laser_radius=finite_float(raw,0x4bc,5000);
        e.laser_follow=unpack<uint8_t>(raw,0x4e4)==0;
        e.laser_offset={unpack<float>(raw,0x410),unpack<float>(raw,0x414)};
        e.laser_rotating=unpack<uint8_t>(raw,0x4c0)!=0;e.laser_rotation_delay=unpack<int>(raw,0x4c4);
        e.laser_rotation_degrees=unpack<float>(raw,0x4c8);e.laser_rotation_speed=unpack<float>(raw,0x4cc);
        e.laser_homing_type=unpack<int>(raw,0x4d4);e.laser_max_distance=unpack<float>(raw,0x4d0);e.laser_shrink=unpack<uint8_t>(raw,0x45e)!=0;
        e.laser_first_update=unpack<uint8_t>(raw,0x45c)!=0;e.laser_sampled=unpack<uint8_t>(raw,0x45d)!=0;
        e.laser_damage_disabled=unpack<uint8_t>(raw,0x175)!=0;
        e.laser_origin={unpack<float>(raw,0x468),unpack<float>(raw,0x46c)};
        e.laser_native_end={unpack<float>(raw,0x470),unpack<float>(raw,0x474)};
        e.laser_sample_count=unpack<int>(raw,0x47c);e.laser_shape_kind=unpack<int>(raw,0x4a4);
        e.laser_homing_radius=unpack<float>(raw,0x478);
        e.laser_one_hit=unpack<uint8_t>(raw,0x515)!=0;e.laser_link=unpack<uint32_t>(raw,0x52c);
        // +0x370 is the native laser collision half-width; render scale is not collision size.
        if(e.circle){e.endpoint=e.pos+Vec{e.laser_radius,0};e.geometry_valid=e.laser_radius>0;}
        else e.geometry_valid=distance(e.pos,e.endpoint)>1&&distance(e.pos,e.endpoint)<5000;
    }
    if(e.type==9||e.type==2) {
        // Height is a projectile field at +0x410. For NPCs the same offset is
        // StateFrame, so this must never be generalised to other types.
        e.height=finite_float(raw,0x410,100000);e.height_known=true;
        e.fall_speed=finite_float(raw,0x414,10000);e.fall_accel=finite_float(raw,0x418,10000);
        if(e.type==9) {
            e.projectile_flags=unpack<uint64_t>(raw,0x438);
            e.projectile_change_flags=unpack<uint64_t>(raw,0x450);
            e.projectile_change_velocity=unpack<float>(raw,0x458);
            e.projectile_change_timeout=unpack<int>(raw,0x45c);
            e.projectile_age=finite_float(raw,0x3a4,100000);
            e.projectile_phase=unpack<int>(raw,0x448);
            e.projectile_homing_strength=unpack<float>(raw,0x424);
            e.projectile_accel=unpack<float>(raw,0x42c);
            e.projectile_curve=finite_float(raw,0x428,10000);
            e.projectile_orbit_distance=finite_float(raw,0x430,15000);
            e.projectile_parent_velocity={unpack<float>(raw,0x468)*30.0,unpack<float>(raw,0x46c)*30.0};
        }
    }
    if(e.type==1000){e.effect_state=unpack<int>(raw,0x450);e.timeout=unpack<int>(raw,0x45c);e.effect_lifespan=unpack<int>(raw,0x460);
        e.sprite_scale={finite_float(raw,0xe4,100),finite_float(raw,0xe8,100)};e.sprite_scale_known=true;
        e.sprite_alpha=finite_float(raw,0xfc,100);e.sprite_alpha_known=true;}
    return e;
}
void read_projectile_contacts(const Memory& memory,Entity& entity) {
    if(entity.type!=9||!((entity.projectile_flags|entity.projectile_change_flags)&(1ULL<<42)))return;
    const uint32_t begin=memory.read<uint32_t>(entity.address+0x178),end=memory.read<uint32_t>(entity.address+0x17c);
    if(end<=begin)return;
    const auto bytes=memory.bytes(begin,end-begin);
    for(size_t offset=0;offset<bytes.size();offset+=8)
        entity.grid_contacts.push_back({unpack<float>(bytes,offset),unpack<float>(bytes,offset+4)});
}
void read_optional_laser_points(const Memory& memory,Entity& entity) {
    if(entity.type!=7)return;
    try {
        auto read_vector=[&](uint32_t offset,size_t stride,size_t maximum) {
            const auto header=memory.bytes(entity.address+offset,12);
            const uint32_t begin=unpack<uint32_t>(header,0),end=unpack<uint32_t>(header,4),capacity=unpack<uint32_t>(header,8);
            if(end<begin||capacity<end||(end-begin)%stride||(end-begin)/stride>maximum)throw std::runtime_error("Laser vector layout invalid");
            return end>begin?memory.bytes(begin,end-begin):std::vector<uint8_t>{};
        };
        auto read_points=[&](uint32_t offset,std::vector<Vec>& points) {
            const auto raw=read_vector(offset,8,2048);
            for(size_t i=0;i<raw.size();i+=8)points.push_back({finite_float(raw,i,15000),finite_float(raw,i+4,15000)});
        };
        read_points(0x480,entity.laser_points);read_points(0x498,entity.laser_history_points);
        const auto nodes=read_vector(0x4ac,24,256);
        for(size_t i=0;i<nodes.size();i+=24)entity.laser_nodes.push_back({
            {finite_float(nodes,i,15000),finite_float(nodes,i+4,15000)},
            {finite_float(nodes,i+8,15000),finite_float(nodes,i+12,15000)},
            {finite_float(nodes,i+16,15000),finite_float(nodes,i+20,15000)}});
        const auto hits=read_vector(0x520,4,8192);
        for(size_t i=0;i<hits.size();i+=4)entity.laser_hit_list.push_back(unpack<uint32_t>(hits,i));
    } catch(const std::exception&) {
        entity.laser_points.clear();entity.laser_history_points.clear();entity.laser_nodes.clear();entity.laser_hit_list.clear();
    }
}
std::string Reader::read_string(uint32_t address) const {
    auto raw=memory_->bytes(address,24);auto length=unpack<uint32_t>(raw,16),capacity=unpack<uint32_t>(raw,20);
    if(length>128||capacity<length)throw std::runtime_error("Animation string invalid");
    if(!length)return {};if(capacity<16)return std::string(raw.begin(),raw.begin()+length);
    auto bytes=memory_->bytes(unpack<uint32_t>(raw,0),length);return std::string(bytes.begin(),bytes.end());
}
Frame Reader::capture(double now) {
    auto started=std::chrono::steady_clock::now();Frame frame;frame.sequence=++sequence_;frame.pid=pid_;frame.captured_ms=now;
    const auto& m=*memory_;
    try {
        uint32_t manager=m.read<uint32_t>(layout_.base+layout_.manager_slot);
        if(m.read<int>(manager+8)!=2)throw std::runtime_error("Game is in a menu");
        auto game=m.read<uint32_t>(layout_.base+layout_.game_slot);frame.clock=m.read<uint32_t>(game+layout_.clock_offset);
        frame.room=m.read<uint32_t>(game+0x18300);auto room=frame.room;
        frame.room_type=m.read<int>(room+8);
        for(auto offset:{0x264f4,0x1d520,0x1d654,0x1ba78,0x1b83c,0x23a74})if(m.read<int>(game+offset)!=0)frame.paused=true;
        frame.transition=m.read<int>(game+0x1ba78)!=0||m.read<int>(game+0x1b83c)!=0;
        frame.grid.width=m.read<int>(room+0xc);frame.grid.height=m.read<int>(room+0x10);
        frame.grid.native_min={m.read<float>(room+0x14),m.read<float>(room+0x18)};
        frame.grid.native_max={m.read<float>(room+0x1c),m.read<float>(room+0x20)};
        if(frame.grid.width<5||frame.grid.width>40||frame.grid.height<5||frame.grid.height>35||frame.grid.width*frame.grid.height>448)
            throw std::runtime_error("Room dimensions invalid: "+std::to_string(frame.grid.width)+"x"+std::to_string(frame.grid.height)+"; native grid capacity 448");
        int count=frame.grid.width*frame.grid.height;
        auto descriptor=m.read<uint32_t>(room+4);frame.clear_flags=m.read<uint32_t>(descriptor+0x44);
        frame.cleared=(frame.clear_flags&1)!=0;
        frame.pressure_plates_triggered=(frame.clear_flags&2)!=0;
        auto room_config=m.read<uint32_t>(descriptor+0x10);frame.grid.shape=m.read<int>(room_config+0x48);
        if(frame.grid.shape<1||frame.grid.shape>12)throw std::runtime_error("Room shape unavailable: "+std::to_string(frame.grid.shape));
        int expected_width=frame.grid.shape<=5?15:28;
        int expected_height=(frame.grid.shape==4||frame.grid.shape==5||frame.grid.shape>=8)?16:9;
        if(frame.grid.width!=expected_width||frame.grid.height!=expected_height)throw std::runtime_error("Room shape and dimensions changed during capture");
        const bool greedButtonArmed=m.read<int>(room+0x723c)>=0;
        std::vector<uint32_t> pointers(count);m.copy(room+0x24,pointers.data(),pointers.size()*4);
        frame.grid.cells.resize(count);
        for(int i=0;i<count;++i) {
            auto& cell=frame.grid.cells[i];if(pointers[i]) {
                auto b=m.bytes(pointers[i],0x40);cell.type=unpack<int>(b,4);cell.variant=unpack<int>(b,8);cell.state=unpack<int>(b,12);cell.collision=unpack<int>(b,0x3c);
                if(cell.type<0||cell.type>100||cell.collision<0||cell.collision>6)throw std::runtime_error("Grid cell layout invalid");
            }else {int cost=m.read<int>(room+0x76c+i*4);cell.collision=cost>=3000&&cost<4000?1:cost>=1000?3:0;}
            cell.destructible=cell.type==14||(cell.type==13&&cell.variant==0);
            cell.danger=cell.type==8||cell.type==9||(cell.type==14&&cell.variant==1)||
                (greedButtonArmed&&cell.type==20&&cell.variant==2);
            cell.native_collision=cell.collision;
            if(!frame.grid.inside_shape(i))cell.collision=3;
        }
        if(frame.pressure_plates_triggered&&std::any_of(frame.grid.cells.begin(),frame.grid.cells.end(),[](const Cell& c){return c.type==20&&c.variant==0;}))
            for(auto& c:frame.grid.cells)if(c.type==8||c.type==9)c.danger=false;
        auto vector=m.bytes(game+0x1baa8,12);auto begin=unpack<uint32_t>(vector,0),end=unpack<uint32_t>(vector,4),capacity=unpack<uint32_t>(vector,8);
        if(end<begin||(end-begin)%4||(end-begin)/4<1||(end-begin)/4>16||capacity<end)throw std::runtime_error("Player vector invalid");
        std::vector<uint32_t> players((end-begin)/4);m.copy(begin,players.data(),end-begin);
        std::set<uint32_t> entity_addresses;std::vector<std::pair<uint32_t,std::vector<uint8_t>>> partitions;
        for(uint32_t off:{0x20u,0x30u,0x40u}) {
            auto address=room+0x1218+off;auto bytes=m.bytes(address,16);auto data=unpack<uint32_t>(bytes,4),cap=unpack<uint32_t>(bytes,8),n=unpack<uint32_t>(bytes,12);
            if(n>8192||cap<n)throw std::runtime_error("Entity partition invalid");
            if(off==0x40)frame.native_target_order_known=true;
            auto members=n?m.bytes(data,n*4):std::vector<uint8_t>{};for(uint32_t i=0;i<n;++i) {
                const uint32_t member=unpack<uint32_t>(members,i*4);entity_addresses.insert(member);
                if(off==0x40)frame.native_target_order.push_back(member);
            }
            partitions.emplace_back(address,bytes);
        }
        for(auto address:players)if(!entity_addresses.contains(address))throw std::runtime_error("Player missing from entity partitions");
        std::unordered_map<uint32_t,std::vector<uint8_t>> player_records;
        for(auto address:entity_addresses) {
            auto raw=m.bytes(address,0x410);auto type=unpack<int>(raw,0x28);size_t need=type==1?0x20b0:type>=10&&type<1000?0xf60:type==7?0x568:type==2?0x440:type==9?0x470:type==4?0x458:type==3?0x414:type==1000?0x490:0x410;
            if(need>raw.size())raw=m.bytes(address,need);
            auto entity=decode_entity(address,raw);read_projectile_contacts(m,entity);read_optional_laser_points(m,entity);
            if(entity.pending_damage>0) {
                const uint32_t damage_begin=unpack<uint32_t>(raw,8),damage_end=unpack<uint32_t>(raw,12);
                if(damage_end<damage_begin||(damage_end-damage_begin)%0x38)throw std::runtime_error("Damage queue layout invalid");
                const auto damage=damage_end>damage_begin?m.bytes(damage_begin,damage_end-damage_begin):std::vector<uint8_t>{};
                for(size_t i=0;i<damage.size();i+=0x38)entity.damage_queue.push_back({unpack<float>(damage,i),unpack<uint64_t>(damage,i+8)});
            }
            const uint32_t event_names=unpack<uint32_t>(raw,0xd4),event_count=unpack<uint32_t>(raw,0xd8);
            for(uint32_t i=0;i<event_count;++i)entity.animation_event_names.push_back(read_string(event_names+i*24));
            auto read_animation=[&](uint32_t animation,std::string& name,int& length,bool& loop,std::vector<AnimationTrigger>& triggers) {
                if(!animation)return;
                name=read_string(animation);
                const auto metadata=m.bytes(animation+0x28,13);
                length=unpack<int>(metadata,8);loop=unpack<uint8_t>(metadata,12)!=0;
                const uint32_t data=unpack<uint32_t>(metadata,0),n=unpack<uint32_t>(metadata,4);
                const auto table=n?m.bytes(data,size_t(n)*8):std::vector<uint8_t>{};
                for(uint32_t i=0;i<n;++i)triggers.push_back({unpack<uint32_t>(table,i*8),unpack<int>(table,i*8+4)});
            };
            read_animation(unpack<uint32_t>(raw,0x7c),entity.animation,entity.animation_length,entity.animation_looping,entity.animation_triggers);
            read_animation(unpack<uint32_t>(raw,0x9c),entity.overlay_animation,entity.overlay_animation_length,entity.overlay_animation_looping,entity.overlay_animation_triggers);
            if(type==7) {
                const auto animations=unpack<uint32_t>(raw,0xbc);const auto count=unpack<uint32_t>(raw,0xc0);
                if(count) {
                    const auto metadata=m.bytes(animations,count*0x13c);
                    for(size_t i=0;i<count;++i) {
                        const size_t off=i*0x13c;
                        if(unpack<uint32_t>(metadata,off+0x10)==4&&unpack<uint32_t>(metadata,off)==0x65646146)
                            entity.laser_fade_length=unpack<int>(metadata,off+0x30);
                    }
                }
            }
            if(type==1)player_records[address]=raw;frame.entities.push_back(std::move(entity));
        }
        std::set<int> local_controllers;auto net=m.bytes(manager+0x4b3d8,12);auto nb=unpack<uint32_t>(net,0),ne=unpack<uint32_t>(net,4),nc=unpack<uint32_t>(net,8);
        if(ne<nb||(ne-nb)%4||(ne-nb)/4>32||nc<ne)throw std::runtime_error("Network input ownership unavailable");
        if(ne==nb)local_controllers.insert(0);
        for(auto address=nb;address<ne;address+=4) {
            auto device=m.read<uint32_t>(address);int controller=m.read<int>(device+0xc);auto vtable=m.read<uint32_t>(device+0x370);
            if(m.read<uint32_t>(vtable+20)!=layout_.base+0x65f260)throw std::runtime_error("Unknown network ownership predicate");
            auto owner=m.read<uint32_t>(device+0x374);if(!owner)continue;auto owner_bytes=m.bytes(owner,0x24);
            auto low=unpack<uint32_t>(owner_bytes,8),high=unpack<uint32_t>(owner_bytes,12);bool local=false;
            if(high==0xfefefefe) {
                auto active=m.read<uint32_t>(layout_.base+0x873680),mode=m.read<uint32_t>(layout_.base+0x873694),mng=m.read<uint32_t>(layout_.base+0x87999c);
                local=active&&mode==0x60001&&mng&&low==m.read<uint32_t>(mng+0x2b4);
            }else {auto connection=unpack<uint32_t>(owner_bytes,0x20);auto machine=m.read<uint32_t>(layout_.base+0x85ac00);local=(connection&&m.read<uint32_t>(connection+0x10)==machine)||(owner_bytes[0]&1);}
            if(local)local_controllers.insert(controller);
        }
        for(auto address:players) {
            const auto& raw=player_records.at(address);int controller=unpack<int>(raw,0x1618);
            if(!local_controllers.contains(controller)||unpack<uint8_t>(raw,0x20a9))continue;
            if(frame.has_player)throw std::runtime_error("Multiple local characters require a shared control profile");
            frame.has_player=true;frame.player.body=decode_entity(address,raw);auto& p=frame.player;p.controller=controller;
            p.character=unpack<int>(raw,0x13c0);p.max_speed=260*std::clamp(finite_float(raw,0x1568,10),.1,2.5);
            p.tear_speed=300*std::clamp(finite_float(raw,0x1464,10),.1,3.0);p.tear_range=std::clamp(finite_float(raw,0x1480,10000),40.0,1500.0);
            p.fire_delay=finite_float(raw,0x1460,1000);p.flying=unpack<uint8_t>(raw,0x1570)!=0;p.can_shoot=unpack<uint8_t>(raw,0x1825)!=0;
            p.controls=unpack<uint8_t>(raw,0x410)!=0&&unpack<int>(raw,0x414)<=0;
            p.health=unpack<int>(raw,0x1344)+unpack<int>(raw,0x134c);
            p.fire_direction=unpack<int>(raw,0x1628);
            p.native_grid_collision_known=true;
            // Native item/trinket gates consult the owning player for a
            // variant-1 child. Resolve that owner from this same snapshot.
            uint32_t inventory_owner=address;const auto* inventory_raw=&raw;
            for(size_t depth=0;depth<players.size()&&unpack<int>(*inventory_raw,0x2c)==1;++depth) {
                uint32_t next=unpack<uint32_t>(*inventory_raw,0x3bc);
                auto owner_record=player_records.find(next);
                if(owner_record==player_records.end()&&!players.empty())owner_record=player_records.find(players.front());
                if(owner_record==player_records.end()||owner_record->first==inventory_owner)break;
                inventory_owner=owner_record->first;inventory_raw=&owner_record->second;
            }
            const auto mimic=m.bytes(inventory_owner+0x2ef0,12);
            const bool mimic_active=unpack<uint8_t>(mimic,0)!=0;
            const int mimic_item=unpack<int>(mimic,4);const uint32_t mimic_trinket=unpack<uint32_t>(mimic,8);
            auto vector_entry=[&](size_t header,int index,size_t stride)->uint32_t {
                const uint32_t begin=unpack<uint32_t>(*inventory_raw,header),end=unpack<uint32_t>(*inventory_raw,header+4);
                if(!begin||end<begin||(end-begin)%stride||size_t(index)>=size_t(end-begin)/stride)return 0;
                return begin+uint32_t(size_t(index)*stride);
            };
            auto has_item=[&](int id) {
                if(mimic_active&&mimic_item==id)return true;
                if(unpack<uint8_t>(*inventory_raw,0x202c)||unpack<uint8_t>(*inventory_raw,0x20a9))return false;
                if(unpack<int>(*inventory_raw,0x1fb8)==id)return true;
                const uint32_t entry=vector_entry(0x16c8,id,4);
                const int count=entry?m.read<int>(entry):0;
                return count>(!mimic_active&&mimic_item==id?1:0);
            };
            auto trinket_multiplier=[&](uint32_t id) {
                if(unpack<uint8_t>(*inventory_raw,0x202c)||unpack<uint8_t>(*inventory_raw,0x20a9))return 0;
                int multiplier=0;const int slots=has_item(139)||has_item(458)?2:1;
                for(int slot=0;slot<slots;++slot) {
                    const uint32_t item=unpack<uint32_t>(*inventory_raw,0x16c0+slot*4);
                    if((item&0x7fff)==id)multiplier+=(item&0x8000)?2:1;
                }
                if(const uint32_t entry=vector_entry(0x1748,id,4))
                    multiplier+=m.read<int16_t>(entry)+2*m.read<int16_t>(entry+2);
                if(const uint32_t entry=vector_entry(0x1fe0,id,1))multiplier+=m.read<uint8_t>(entry)!=0;
                const uint32_t pocket=unpack<uint32_t>(*inventory_raw,0x17c4);
                if(pocket&&(mimic_trinket==0||mimic_trinket==id)) {
                    const auto value=m.bytes(pocket,8);
                    if(unpack<int>(value,0)==2&&unpack<uint32_t>(value,4)==id)
                        multiplier+=(unpack<uint8_t>(*inventory_raw,0x17cc)&2)?2:1;
                }
                if((mimic_trinket&0x7fff)==id) {
                    const int adjustment=(mimic_trinket&0x8000)?2:1;
                    multiplier=mimic_active?multiplier+adjustment:std::max(0,multiplier-adjustment);
                }
                if(multiplier>0&&has_item(439))++multiplier;
                return multiplier;
            };
            const int callus_multiplier=trinket_multiplier(14);
            const bool callus=(mimic_active&&mimic_trinket==14)||
                (mimic_trinket==14&&!mimic_active?callus_multiplier>1:callus_multiplier>0);
            p.explosion_reduction_stacks=trinket_multiplier(63);
            const uint32_t trinket_begin=m.read<uint32_t>(manager+0x2a410),trinket_end=m.read<uint32_t>(manager+0x2a414);
            if(trinket_begin&&trinket_end>=trinket_begin&&(trinket_end-trinket_begin)/4>63) {
                const uint32_t config=m.read<uint32_t>(trinket_begin+63*4);
                if(config&&(m.read<uint32_t>(config+0xb8)&0x80000000u)&&unpack<int>(*inventory_raw,0x1e6c)!=0)
                    p.explosion_reduction_stacks*=2;
            }
            p.ground_creep_immune=callus||has_item(571);
            p.creep_effect_immune=has_item(632)&&m.read<int>(address+0x26d0)<30;
            p.poison_effect_immune=has_item(594)||has_item(140)||
                (!unpack<uint8_t>(raw,0x202c)&&!unpack<uint8_t>(raw,0x20a9)&&unpack<int>(raw,0x17ec)>=3);
            const std::map<uint32_t,int> weapon_classes={{0x7815d0,1},{0x7812b8,2},{0x7813d8,3},{0x781420,4},{0x781468,7},{0x781588,9},{0x781228,10},{0x7814f8,13}};
            for(int slot=0;slot<5;++slot) {
                auto weapon_address=unpack<uint32_t>(raw,0x13dc+slot*4);if(!weapon_address)continue;
                auto wr=m.bytes(weapon_address,0x40);Weapon weapon;weapon.address=weapon_address;
                weapon.type=unpack<int>(wr,0x30);weapon.modifiers=unpack<uint32_t>(wr,0x34);weapon.charge=finite_float(wr,0x14,100000);
                weapon.shots_fired=unpack<int>(wr,0xc);
                weapon.fire_delay=finite_float(wr,0x10,1000);weapon.max_charge=max_charge_for(weapon.type,weapon.fire_delay,weapon.modifiers);
                auto vtable=unpack<uint32_t>(wr,0);auto expected=weapon_classes.find(vtable-layout_.base);
                if(!supported_weapon(weapon.type)||expected==weapon_classes.end()||expected->second!=weapon.type||unpack<uint32_t>(wr,4)!=address||weapon.max_charge<0)p.attack_supported=false;
                p.weapons.push_back(weapon);
            }
            if(p.weapons.empty())p.attack_supported=false;
            if(!p.weapons.empty()) {
                int weapon=p.weapons.front().type;
                if(weapon==2||weapon==3){p.tear_speed=12000;p.tear_range=p.character==7&&weapon==2?130:1300;}
                if(weapon==4)p.tear_range=std::clamp(p.tear_range*.6,60.0,650.0);
                if(weapon==10||weapon==13){p.tear_speed=12000;p.tear_range=90;}
            }
        }
        auto validate_links=[&](Entity& entity) {
            entity.parent_in_snapshot=entity.parent&&entity_addresses.contains(entity.parent);
            entity.child_in_snapshot=entity.child&&entity_addresses.contains(entity.child);
            entity.target_in_snapshot=entity.target&&entity_addresses.contains(entity.target);
            entity.spawner_in_snapshot=entity.spawner&&entity_addresses.contains(entity.spawner);
            entity.owner_in_snapshot=entity.owner&&entity_addresses.contains(entity.owner);
        };
        for(auto& entity:frame.entities)validate_links(entity);
        validate_links(frame.player.body);
        // Propagate allegiance only along pointers that resolve in this snapshot.
        for(int iteration=0;iteration<8;++iteration) {
            bool changed=false;for(auto& e:frame.entities)for(const auto& source:frame.entities) {
                bool linked=(e.parent_in_snapshot&&e.parent==source.address)||
                    (e.spawner_in_snapshot&&e.spawner==source.address)||
                    (e.owner_in_snapshot&&e.owner==source.address);
                if(linked&&!e.friendly&&(source.type==1||source.friendly)) {e.friendly=true;changed=true;}
                if(linked&&!e.hostile_source&&((source.enemy()&&!source.friendly)||source.hostile_source)) {e.hostile_source=true;changed=true;}
            }
            if(!changed)break;
        }
        if(m.read<uint32_t>(game+0x18300)!=room||m.read<uint32_t>(room+4)!=descriptor||m.read<uint32_t>(descriptor+0x10)!=room_config||m.bytes(game+0x1baa8,12)!=vector||m.bytes(manager+0x4b3d8,12)!=net)throw std::runtime_error("Room or player ownership changed during capture");
        for(const auto& [address,bytes]:partitions)if(m.bytes(address,16)!=bytes)throw std::runtime_error("Entity partition changed during capture");
        auto last=m.read<uint32_t>(game+layout_.clock_offset);if(last<frame.clock||last-frame.clock>2)throw std::runtime_error("Capture spans too many game updates");
        if(!frame.has_player)throw std::runtime_error("No unambiguous local keyboard player");
        frame.grid.valid=true;frame.valid=true;
    }catch(const std::exception& e){frame.valid=false;frame.error=e.what();}
    frame.read_ms=std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now()-started).count();return frame;
}
}
