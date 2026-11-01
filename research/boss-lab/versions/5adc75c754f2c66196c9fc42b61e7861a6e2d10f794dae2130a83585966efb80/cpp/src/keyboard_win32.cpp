#include "gamebot/control.hpp"
#define NOMINMAX
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
namespace gamebot {
bool WindowsKeyboard::transition(const Keys& before,const Keys& after) {
    std::vector<INPUT> inputs;
    for(const auto& event:scan_code_events(before,after)) {
        if(!event.scan)return false;
        INPUT in{};in.type=INPUT_KEYBOARD;in.ki.wScan=event.scan;
        in.ki.dwFlags=KEYEVENTF_SCANCODE|(event.key_up?KEYEVENTF_KEYUP:0)|(event.extended?KEYEVENTF_EXTENDEDKEY:0);
        inputs.push_back(in);
    }
    return inputs.empty()||SendInput(UINT(inputs.size()),inputs.data(),sizeof(INPUT))==inputs.size();
}
namespace {
struct WindowSearch {DWORD pid{};HWND hwnd{};long long area{};};
BOOL CALLBACK find_game_window(HWND hwnd,LPARAM parameter) {
    auto& search=*reinterpret_cast<WindowSearch*>(parameter);DWORD pid{};GetWindowThreadProcessId(hwnd,&pid);
    if(pid==search.pid&&IsWindowVisible(hwnd)) {
        RECT client{};GetClientRect(hwnd,&client);long long area=static_cast<long long>(client.right-client.left)*(client.bottom-client.top);
        if(area>search.area){search.area=area;search.hwnd=hwnd;}
    }
    return TRUE;
}
}
bool WindowKeyboard::transition(const Keys& before,const Keys& after) {
    HWND hwnd=reinterpret_cast<HWND>(window_);DWORD owner{};
    if(hwnd)GetWindowThreadProcessId(hwnd,&owner);
    if(!hwnd||!IsWindow(hwnd)||owner!=process_id_) {
        WindowSearch search{process_id_,nullptr,0};
        if(process_id_)EnumWindows(find_game_window,reinterpret_cast<LPARAM>(&search));
        hwnd=search.hwnd;window_=reinterpret_cast<uintptr_t>(hwnd);
    }
    if(!hwnd)return after.empty();
    for(const auto& event:scan_code_events(before,after)) {
        if(!event.scan)return false;
        LPARAM bits=1|(LPARAM(event.scan)<<16)|(event.extended?(LPARAM(1)<<24):0);
        if(event.key_up)bits|=(LPARAM(1)<<30)|(LPARAM(1)<<31);
        UINT vk=MapVirtualKeyW(event.scan|(event.extended?0xe000u:0u),MAPVK_VSC_TO_VK_EX);
        if(!vk||!PostMessageW(hwnd,event.key_up?WM_KEYUP:WM_KEYDOWN,vk,bits))return false;
    }
    return true;
}
}
