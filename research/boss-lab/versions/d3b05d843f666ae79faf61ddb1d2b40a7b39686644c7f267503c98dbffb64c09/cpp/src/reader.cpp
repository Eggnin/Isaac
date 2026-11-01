#include "gamebot/reader.hpp"
#include "gamebot/weapons.hpp"
#define NOMINMAX
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <tlhelp32.h>
#include <bcrypt.h>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <set>
#include <unordered_map>
#include <map>
#include <chrono>

namespace gamebot {
namespace {
struct Handle { HANDLE value{};~Handle(){if(value&&value!=INVALID_HANDLE_VALUE)CloseHandle(value);} };
class WindowsMemory final:public Memory {
    Handle handle_;
public:
    explicit WindowsMemory(uint32_t pid) {handle_.value=OpenProcess(PROCESS_VM_READ|PROCESS_QUERY_LIMITED_INFORMATION,FALSE,pid);if(!handle_.value)throw std::runtime_error("Cannot open game read-only");}
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
    double v=unpack<float>(b,off);if(!std::isfinite(v)||std::abs(v)>max)throw std::runtime_error("Invalid native float");return v;
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
std::unique_ptr<Reader> Reader::attach(const Process& process) {
    auto layout=inspect(process.path);
    Handle modules{CreateToolhelp32Snapshot(TH32CS_SNAPMODULE|TH32CS_SNAPMODULE32,process.pid)};
    if(modules.value==INVALID_HANDLE_VALUE)throw std::runtime_error("Module enumeration failed");
    MODULEENTRY32W module{};module.dwSize=sizeof module;
    for(BOOL ok=Module32FirstW(modules.value,&module);ok;ok=Module32NextW(modules.value,&module))if(_wcsicmp(module.szModule,L"isaac-ng.exe")==0) {
        if(!std::filesystem::equivalent(module.szExePath,process.path))throw std::runtime_error("Game executable path mismatch");
        layout.base=uint32_t(uintptr_t(module.modBaseAddr));break;
    }
    if(!layout.base)throw std::runtime_error("Game module missing");
    return std::make_unique<Reader>(std::make_shared<WindowsMemory>(process.pid),layout,process.pid);
}
Entity decode_entity(uint32_t address,std::span<const uint8_t> raw) {
    Entity e;e.address=address;e.type=unpack<int>(raw,0x28);e.variant=unpack<int>(raw,0x2c);e.subtype=unpack<int>(raw,0x30);
    if(e.type<1||e.type>=2000)throw std::runtime_error("Entity type outside supported range");
    for(size_t offset:{0x170u,0x171u,0x172u,0x173u})if(unpack<uint8_t>(raw,offset)>1)throw std::runtime_error("Entity boolean layout differs");
    e.active=unpack<uint8_t>(raw,0x170)!=0;e.exists=unpack<uint8_t>(raw,0x172)!=0;e.dead=unpack<uint8_t>(raw,0x173)!=0;
    e.pos={finite_float(raw,0x33c,15000),finite_float(raw,0x340,15000)};
    double multiplier=e.type==1?60:30;e.vel={finite_float(raw,0x360,500)*multiplier,finite_float(raw,0x364,500)*multiplier};
    e.radius=finite_float(raw,0x370,1000);if(e.radius<0)throw std::runtime_error("Negative entity radius");
    e.hp=finite_float(raw,0x380,1e9);e.damage=finite_float(raw,0x388,10000);
    e.flags=unpack<uint64_t>(raw,0x168);e.friendly=(e.flags&((1ULL<<29)|(1ULL<<8)))!=0;e.no_target=(e.flags&(1ULL<<4))!=0;
    e.invulnerable=unpack<uint8_t>(raw,0x3b0)!=0;e.parent=unpack<uint32_t>(raw,0x3bc);e.spawner=unpack<uint32_t>(raw,0x3c8);e.spawner_type=unpack<int>(raw,0x34);
    e.collision=unpack<int>(raw,0x188);e.grid_collision=unpack<int>(raw,0x184);e.seed=unpack<uint32_t>(raw,0x3ec);e.birth=unpack<int>(raw,0x328);
    e.target_pos={finite_float(raw,0x334,15000),finite_float(raw,0x338,15000)};e.animation_frame=finite_float(raw,0x88,100000);
    if(e.enemy()){e.state=unpack<int>(raw,0xb64);e.state_frame=unpack<int>(raw,0x410);e.champion=unpack<int>(raw,0xc64);}
    if(e.type==4){e.timeout=unpack<int>(raw,0x410);e.blast_radius=std::clamp(80*finite_float(raw,0x434,100),80.0,800.0);}
    if(e.type==3)e.owner=unpack<uint32_t>(raw,0x410);
    if(e.type==7) {
        e.timeout=unpack<int>(raw,0x458);e.endpoint={finite_float(raw,0x4d8,15000),finite_float(raw,0x4dc,15000)};
        e.angle=finite_float(raw,0x41c);e.circle=e.subtype>=1&&e.subtype<=3;e.laser_radius=finite_float(raw,0x4bc,5000);
        e.laser_follow=unpack<uint8_t>(raw,0x4e4)==0;
        double scale=std::abs(finite_float(raw,0x4e0,100));e.radius=std::clamp(5*scale,3.0,60.0);
        if(e.circle){e.endpoint=e.pos+Vec{e.laser_radius,0};e.geometry_valid=e.laser_radius>0;}
        else e.geometry_valid=distance(e.pos,e.endpoint)>1&&distance(e.pos,e.endpoint)<5000;
    }
    if(e.type==9||e.type==2) {
        e.height=finite_float(raw,0x410,100000);e.fall_speed=finite_float(raw,0x414,10000);e.fall_accel=finite_float(raw,0x418,10000);
        if(e.type==9)e.projectile_flags=unpack<uint64_t>(raw,0x438);
    }
    if(e.type==1000){e.timeout=unpack<int>(raw,0x45c);}
    return e;
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
        for(auto offset:{0x264f4,0x1d520,0x1d654,0x1ba78,0x1b83c,0x23a74})if(m.read<int>(game+offset)!=0)frame.paused=true;
        frame.transition=m.read<int>(game+0x1ba78)!=0||m.read<int>(game+0x1b83c)!=0;
        frame.grid.width=m.read<int>(room+0xc);frame.grid.height=m.read<int>(room+0x10);int count=frame.grid.width*frame.grid.height;
        if(frame.grid.width<5||frame.grid.width>40||frame.grid.height<5||frame.grid.height>35||count>447)throw std::runtime_error("Room dimensions invalid");
        auto descriptor=m.read<uint32_t>(room+4);frame.cleared=(m.read<uint8_t>(descriptor+0x44)&1)!=0;
        std::vector<uint32_t> pointers(count);m.copy(room+0x24,pointers.data(),pointers.size()*4);
        frame.grid.cells.resize(count);
        for(int i=0;i<count;++i) {
            auto& cell=frame.grid.cells[i];if(pointers[i]) {
                auto b=m.bytes(pointers[i],0x40);cell.type=unpack<int>(b,4);cell.variant=unpack<int>(b,8);cell.state=unpack<int>(b,12);cell.collision=unpack<int>(b,0x3c);
                if(cell.type<0||cell.type>100||cell.collision<0||cell.collision>6)throw std::runtime_error("Grid cell layout invalid");
            }else {int cost=m.read<int>(room+0x76c+i*4);cell.collision=cost>=3000&&cost<4000?1:cost>=1000?3:0;}
            cell.destructible=cell.type==14||(cell.type==13&&cell.variant==0);
            cell.danger=cell.type==8||(cell.type==9&&cell.state!=1);
        }
        auto vector=m.bytes(game+0x1baa8,12);auto begin=unpack<uint32_t>(vector,0),end=unpack<uint32_t>(vector,4),capacity=unpack<uint32_t>(vector,8);
        if(end<begin||(end-begin)%4||(end-begin)/4<1||(end-begin)/4>16||capacity<end)throw std::runtime_error("Player vector invalid");
        std::vector<uint32_t> players((end-begin)/4);m.copy(begin,players.data(),end-begin);
        std::set<uint32_t> entity_addresses;std::vector<std::pair<uint32_t,std::vector<uint8_t>>> partitions;
        for(uint32_t off:{0x20u,0x30u,0x40u}) {
            auto address=room+0x1218+off;auto bytes=m.bytes(address,16);auto data=unpack<uint32_t>(bytes,4),cap=unpack<uint32_t>(bytes,8),n=unpack<uint32_t>(bytes,12);
            if(n>8192||cap<n)throw std::runtime_error("Entity partition invalid");
            auto members=n?m.bytes(data,n*4):std::vector<uint8_t>{};for(uint32_t i=0;i<n;++i)entity_addresses.insert(unpack<uint32_t>(members,i*4));
            partitions.emplace_back(address,bytes);
        }
        for(auto address:players)if(!entity_addresses.contains(address))throw std::runtime_error("Player missing from entity partitions");
        std::unordered_map<uint32_t,std::vector<uint8_t>> player_records;
        for(auto address:entity_addresses) {
            auto raw=m.bytes(address,0x410);auto type=unpack<int>(raw,0x28);size_t need=type==1?0x20b0:type>=10&&type<1000?0xc68:type==7?0x500:type==2?0x440:type==9?0x470:type==4?0x440:type==3?0x414:type==1000?0x490:0x410;
            if(need>raw.size())raw=m.bytes(address,need);
            auto entity=decode_entity(address,raw);auto animation=unpack<uint32_t>(raw,0x7c);if(animation)entity.animation=read_string(animation);
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
            const std::map<uint32_t,int> weapon_classes={{0x7815d0,1},{0x7812b8,2},{0x7813d8,3},{0x781420,4},{0x781468,7},{0x781588,9},{0x781228,10},{0x7814f8,13}};
            for(int slot=0;slot<5;++slot) {
                auto weapon_address=unpack<uint32_t>(raw,0x13dc+slot*4);if(!weapon_address)continue;
                auto wr=m.bytes(weapon_address,0x40);Weapon weapon;weapon.address=weapon_address;
                weapon.type=unpack<int>(wr,0x30);weapon.modifiers=unpack<uint32_t>(wr,0x34);weapon.charge=finite_float(wr,0x14,100000);
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
        // Propagate allegiance only along observed parent/spawner pointers.
        for(int iteration=0;iteration<8;++iteration) {
            bool changed=false;for(auto& e:frame.entities)for(const auto& source:frame.entities) {
                bool linked=e.parent==source.address||e.spawner==source.address||e.owner==source.address;
                if(linked&&!e.friendly&&(source.type==1||source.friendly)) {e.friendly=true;changed=true;}
                if(linked&&!e.hostile_source&&((source.enemy()&&!source.friendly)||source.hostile_source)) {e.hostile_source=true;changed=true;}
            }
            if(!changed)break;
        }
        if(m.read<uint32_t>(game+0x18300)!=room||m.bytes(game+0x1baa8,12)!=vector||m.bytes(manager+0x4b3d8,12)!=net)throw std::runtime_error("Room or player ownership changed during capture");
        for(const auto& [address,bytes]:partitions)if(m.bytes(address,16)!=bytes)throw std::runtime_error("Entity partition changed during capture");
        auto last=m.read<uint32_t>(game+layout_.clock_offset);if(last<frame.clock||last-frame.clock>2)throw std::runtime_error("Capture spans too many game updates");
        if(!frame.has_player)throw std::runtime_error("No unambiguous local keyboard player");
        frame.grid.valid=true;frame.valid=true;
    }catch(const std::exception& e){frame.valid=false;frame.error=e.what();}
    frame.read_ms=std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now()-started).count();return frame;
}
}
