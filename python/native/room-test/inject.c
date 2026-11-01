#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
int main(int argc,char **argv) {
    HANDLE p,t;LPVOID remote;SIZE_T wrote;DWORD module=0,wait;char path[MAX_PATH];
    if(argc!=3 || !GetFullPathNameA(argv[2],MAX_PATH,path,NULL))return 2;
    if(GetFileAttributesA(path)==INVALID_FILE_ATTRIBUTES)return 3;
    p=OpenProcess(PROCESS_CREATE_THREAD|PROCESS_QUERY_INFORMATION|PROCESS_VM_OPERATION|PROCESS_VM_WRITE|PROCESS_VM_READ,FALSE,strtoul(argv[1],NULL,10));
    if(!p)return 4;
    remote=VirtualAllocEx(p,NULL,strlen(path)+1,MEM_COMMIT|MEM_RESERVE,PAGE_READWRITE);if(!remote){CloseHandle(p);return 5;}
    if(!WriteProcessMemory(p,remote,path,strlen(path)+1,&wrote)){VirtualFreeEx(p,remote,0,MEM_RELEASE);CloseHandle(p);return 6;}
    t=CreateRemoteThread(p,NULL,0,(LPTHREAD_START_ROUTINE)GetProcAddress(GetModuleHandleA("kernel32.dll"),"LoadLibraryA"),remote,0,NULL);
    if(!t){VirtualFreeEx(p,remote,0,MEM_RELEASE);CloseHandle(p);return 7;}
    wait=WaitForSingleObject(t,15000);
    if(wait==WAIT_OBJECT_0){GetExitCodeThread(t,&module);VirtualFreeEx(p,remote,0,MEM_RELEASE);}
    CloseHandle(t);CloseHandle(p);printf("module=%lu wait=%lu\n",module,wait);return module?0:8;
}
