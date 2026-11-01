/* Load only in this non-game host; verify identity rejection installs no hooks. */
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdio.h>
int main(int argc,char **argv) {
    char name[80];HANDLE mapping;DWORD *block;int i;
    if(argc!=2)return 2;
    sprintf(name,"Local\\IsaacRoomTurbo.%lu",GetCurrentProcessId());
    mapping=CreateFileMappingA(INVALID_HANDLE_VALUE,NULL,PAGE_READWRITE,0,4096,name);
    block=(DWORD*)MapViewOfFile(mapping,FILE_MAP_ALL_ACCESS,0,0,4096);
    if(!block || !LoadLibraryA(argv[1]))return 3;
    for(i=0;i<200 && block[4]==0;i++)Sleep(10);
    printf("identity_status=%lu manager_calls=%lu render_calls=%lu\n",block[4],block[5],block[6]);
    return block[4]==2 && block[3]==0 && block[5]==0 && block[6]==0?0:4;
}
