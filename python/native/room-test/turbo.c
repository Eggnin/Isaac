/* Test-only J460 clock/render adapter. Method: Lceoliu/AIsaac turbo.
 * No gameplay hooks. Synchronous stepping is provided by room_test_bridge.lua.
 * MinHook v1.3.4 is redistributed with its BSD license in minhook/LICENSE.txt.
 */
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "minhook/include/MinHook.h"

typedef struct { DWORD magic,version,pid,flags,status; DWORD manager_calls,render_calls,render_skipped; } Block;
static Block *block;
static unsigned char *base;
static void (__stdcall *original_manager)(char);
static void (__attribute__((fastcall)) *original_render)(void*,void*);
static void *original_clock;
static int virtual_mode;
static double virtual_now,offset;
double room_test_now;

double real_time(void) {
    LARGE_INTEGER q;QueryPerformanceCounter(&q);
    return (double)(q.QuadPart-*(int64_t*)(base+0x874BA8))/(double)*(int64_t*)(base+0x874BB0);
}
void clock_read(void) {
    double real=real_time();int active=(block->flags&1)!=0;
    if(active!=virtual_mode) {
        if(active)virtual_now=real+offset;else offset=virtual_now-real;
        virtual_mode=active;
    }
    room_test_now=active?virtual_now:real+offset;
}
void clock_hook(void);
/* TinyCC's assembler lacks the movsd mnemonic; F2 0F 10 05 disp32 is
 * movsd absolute-double,%xmm0, preserving J460's nonstandard return ABI. */
__asm__(".text\n.globl clock_hook\nclock_hook:\ncall clock_read\n.byte 0xf2,0x0f,0x10,0x05\n.long room_test_now\nret\n");

static void __stdcall manager_hook(char x) {
    original_manager(x);block->manager_calls++;
    if(virtual_mode)virtual_now+=(1.0/60.0)*(1.0+1.0/65536.0);
}
static void __attribute__((fastcall)) render_hook(void *a,void *b) {
    block->render_calls++;
    if(block->flags&2){block->render_skipped++;return;}
    original_render(a,b);
}
static int matches(DWORD rva,const char *pattern) {
    DWORD i=0;unsigned x;
    while(*pattern) {
        if(*pattern==' '){pattern++;continue;}
        if(*pattern!='?' && (sscanf(pattern,"%2x",&x)!=1 || base[rva+i]!=(unsigned char)x))return 0;
        pattern+=2;i++;
    }
    return 1;
}
static DWORD WINAPI initialize(void *unused) {
    char name[80];HANDLE mapping;LARGE_INTEGER freq;IMAGE_NT_HEADERS *pe;MH_STATUS result;
    sprintf(name,"Local\\IsaacRoomTurbo.%lu",GetCurrentProcessId());
    mapping=CreateFileMappingA(INVALID_HANDLE_VALUE,NULL,PAGE_READWRITE,0,4096,name);
    if(!mapping)return 1;
    block=(Block*)MapViewOfFile(mapping,FILE_MAP_ALL_ACCESS,0,0,4096);if(!block)return 2;
    block->magic=0x35545249;block->version=1;block->pid=GetCurrentProcessId();block->status=0;
    base=(unsigned char*)GetModuleHandleA(NULL);pe=(IMAGE_NT_HEADERS*)(base+((IMAGE_DOS_HEADER*)base)->e_lfanew);
    if(pe->FileHeader.Machine!=IMAGE_FILE_MACHINE_I386 || pe->FileHeader.TimeDateStamp!=0x69E6E3A7 ||
       pe->OptionalHeader.SizeOfImage!=0x92C000 ||
       !matches(0x6266A0,"55 8B EC 83 EC 08 83 3D ?? ?? ?? ?? 00 75 16") ||
       !matches(0x554CD0,"55 8B EC 83 E4 F0 81 EC 78 04 00 00 A1 ?? ?? ?? ?? 33 C4") ||
       !matches(0x5555C0,"53 8B DC 83 EC 08 83 E4 F8 83 C4 04 55 8B 6B 04 89 6C 24 04 8B EC 6A FF")) {
        block->flags=0;block->status=2;return 3;
    }
    QueryPerformanceFrequency(&freq);
    if(freq.QuadPart!=*(int64_t*)(base+0x874BB0)){block->status=2;return 4;}
    virtual_now=real_time();offset=0;
    result=MH_Initialize();
    if(result!=MH_OK || MH_CreateHook(base+0x6266A0,clock_hook,&original_clock)!=MH_OK ||
       MH_CreateHook(base+0x554CD0,manager_hook,(void**)&original_manager)!=MH_OK ||
       MH_CreateHook(base+0x5555C0,render_hook,(void**)&original_render)!=MH_OK || MH_EnableHook(MH_ALL_HOOKS)!=MH_OK) {
        MH_DisableHook(MH_ALL_HOOKS);block->flags=0;block->status=3;return 5;
    }
    block->status=1;return 0;
}
BOOL WINAPI DllMain(HINSTANCE h,DWORD reason,LPVOID reserved) {
    if(reason==DLL_PROCESS_ATTACH){HANDLE t;DisableThreadLibraryCalls(h);t=CreateThread(NULL,0,initialize,NULL,0,NULL);if(t)CloseHandle(t);}
    return TRUE;
}
