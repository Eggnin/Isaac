#include "gamebot/runtime.hpp"
#include "gamebot/reader.hpp"
#include "gamebot/planner.hpp"
#include "gamebot/control.hpp"
#include "gamebot/semantics.hpp"
#define NOMINMAX
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <shellapi.h>
#include <atomic>
#include <array>
#include <chrono>
#include <fstream>
#include <mutex>
#include <thread>
#include <sstream>
#include <iomanip>

namespace gamebot {
namespace {
double clock_ms(){return std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now().time_since_epoch()).count();}
std::wstring wide(const std::string&s) {if(s.empty())return {};int n=MultiByteToWideChar(CP_UTF8,0,s.data(),int(s.size()),nullptr,0);std::wstring w(n,0);MultiByteToWideChar(CP_UTF8,0,s.data(),int(s.size()),w.data(),n);return w;}
struct View {Frame frame;MechanismFrame mechanisms;Decision decision;Execution execution;std::vector<Threat> threats;std::string status{"Searching for isaac-ng.exe (read-only)"};uint64_t frames{},damage_events{};};
struct App {
    HWND hwnd{};HHOOK hook{};std::atomic_bool quit{};std::atomic_uint commands{};std::atomic_uint32_t pid{};
    std::array<std::atomic_bool,256> physical{};std::atomic_bool attack_enabled{true},background{};std::mutex mutex;View view;std::thread worker;std::filesystem::path root,log_directory;
};
struct RuntimeKeyboard final:KeyboardSink {
    WindowsKeyboard foreground;WindowKeyboard window;bool background{};
    bool transition(const Keys& previous,const Keys& next)override{return background?window.transition(previous,next):foreground.transition(previous,next);}
};
App* app{};
LRESULT CALLBACK keyboard_hook(int code,WPARAM message,LPARAM parameter) {
    if(code==HC_ACTION&&app) {
        auto* key=reinterpret_cast<KBDLLHOOKSTRUCT*>(parameter);
        if(!(key->flags&LLKHF_INJECTED)&&key->vkCode<256) {
            bool down=message==WM_KEYDOWN||message==WM_SYSKEYDOWN,up=message==WM_KEYUP||message==WM_SYSKEYUP;
            bool before=app->physical[key->vkCode].load();
            if(down||up)app->physical[key->vkCode]=down;
            DWORD foreground{};GetWindowThreadProcessId(GetForegroundWindow(),&foreground);
            if(down&&!before&&key->vkCode==VK_F9)app->commands.fetch_or(2);
            if(down&&!before&&key->vkCode==VK_F8&&foreground==app->pid.load())app->commands.fetch_or(1);
            if(down&&!before&&key->vkCode==VK_F6&&foreground==app->pid.load())app->commands.fetch_or(4);
            if(down&&!before&&key->vkCode==VK_F7&&foreground==app->pid.load())app->commands.fetch_or(8);
        }
    }
    return CallNextHookEx(nullptr,code,message,parameter);
}
bool manual_keys(const App& state,bool attack_enabled) {
    for(unsigned key:{unsigned('W'),unsigned('A'),unsigned('S'),unsigned('D'),unsigned(VK_LSHIFT),unsigned(VK_RSHIFT)})if(state.physical[key])return true;
    if(attack_enabled)for(unsigned key:{unsigned(VK_LEFT),unsigned(VK_RIGHT),unsigned(VK_UP),unsigned(VK_DOWN)})if(state.physical[key])return true;
    return false;
}
std::string session_name() {
    SYSTEMTIME t{};GetLocalTime(&t);char name[80];std::snprintf(name,sizeof name,"native-%04u%02u%02u-%02u%02u%02u-%03u",t.wYear,t.wMonth,t.wDay,t.wHour,t.wMinute,t.wSecond,t.wMilliseconds);return name;
}
void run_worker(App& state) {
    RuntimeKeyboard keyboard;Controller control(keyboard);Planner planner;
    MechanismSemantics semantics;auto semantics_path=MechanismSemantics::default_path(state.root);
    semantics.load(semantics_path);
    std::unique_ptr<Reader> reader;uint32_t last_clock{};double unchanged_since{},retry_at{},manual_until{};
    View published;int previous_health=-1;std::ofstream log;
    try {
        auto directory=state.log_directory;std::filesystem::create_directories(directory);
        log.open(directory/L"frames-0001.jsonl");
        if(!log)throw std::runtime_error("Cannot create session log");
        std::ofstream manifest(directory/L"session.json");manifest<<json{{"version",gamebot_version},{"implementation","C++20 native"},{"data_source","external-process-memory"},
            {"log_detail",compact_session_log()?"compact":"full"},
            {"runtime_semantics",{{"path",semantics_path.string()},{"loaded",semantics.loaded()},{"error",semantics.error()},{"source_sha256",semantics.source_sha256()},{"identities",semantics.identity_count()},{"warning_rules",semantics.warning_rule_count()}}},
            {"input","foreground scan codes / background window messages; F8 opt-in"},{"goal","avoid damage and attack"},{"hotkeys",{{"F6","toggle attack"},{"F7","toggle background output; stops control"},{"F8","toggle control"},{"F9","emergency stop"}}}}.dump(2);manifest.close();
        std::ofstream connection_log(directory/L"connection-events.jsonl");
        if(!connection_log)throw std::runtime_error("Cannot create connection log");
        std::string last_connection_status;
        uint32_t segment=1;uint64_t damage_events=0,frames=0;
        while(!state.quit) {
            auto tick=std::chrono::steady_clock::now();double now=clock_ms();unsigned commands=state.commands.exchange(0);
            if(commands&2)control.stop();
            if(commands&4){state.attack_enabled=!state.attack_enabled.load();control.set_attack_enabled(state.attack_enabled.load());}
            if(commands&8){control.stop();keyboard.background=!keyboard.background;state.background=keyboard.background;manual_until=0;}
            if(!reader&&now>=retry_at) {
                retry_at=now+1000;
                try {
                    auto processes=Reader::processes();
                    if(processes.size()!=1)throw std::runtime_error(processes.empty()?"Waiting for isaac-ng.exe":"Multiple game processes; close the extra instance");
                    reader=Reader::attach(processes.front());state.pid=reader->pid();keyboard.window.set_process(reader->pid());planner.reset();unchanged_since=now;last_clock=0;
                    published.status="Connected read-only. Enter a room, then F8 to control.";
                }catch(const std::exception&e){published.status=e.what();}
                if(published.status!=last_connection_status) {
                    connection_log<<json{{"time_ms",now},{"connected",bool(reader)},{"pid",state.pid.load()},{"status",published.status}}.dump()<<'\n';connection_log.flush();
                    last_connection_status=published.status;
                }
            }
            Frame frame;MechanismFrame mechanisms;Decision decision;Execution execution;
            if(reader) {
                frame=reader->capture(now);DWORD foreground{};GetWindowThreadProcessId(GetForegroundWindow(),&foreground);bool focused=foreground==reader->pid();
                if(focused&&manual_keys(state,state.attack_enabled.load()))manual_until=now+250;
                if(!frame.valid||frame.paused||frame.transition||frame.clock!=last_clock){last_clock=frame.clock;unchanged_since=now;}
                if(commands&1) {
                    if(control.enabled())control.stop();
                    else if((!focused||!manual_keys(state,state.attack_enabled.load()))&&state.hook)control.enable();
                }
                if(frame.valid&&!frame.paused&&!frame.transition&&now-unchanged_since>150){frame.valid=false;frame.error="等待游戏逻辑帧恢复：程序持续运行，恢复后自动继续。";}
                mechanisms=semantics.evaluate(frame);
                decision=planner.decide(frame,state.attack_enabled.load(),&mechanisms);execution=control.apply(frame,decision,clock_ms(),focused||keyboard.background,now<manual_until);
                if(frame.valid) {
                    if(previous_health>=0&&frame.player.health<previous_health)++damage_events;
                    previous_health=frame.player.health;
                }
                published.status=execution.reason;
                if(!frame.error.empty())published.status=frame.error;
                if(frame.error.starts_with("Room dimensions invalid"))published.status="房间网格暂不可用："+std::to_string(frame.grid.width)+"×"+std::to_string(frame.grid.height)+"；持续重试。";
                else if(frame.error=="Game is in a menu")published.status="等待进入游戏：程序持续监测，就绪后自动继续。";
                else if(frame.paused)published.status="游戏已暂停：程序持续监测，恢复后自动继续。";
                json record{{"frame",frame},{"mechanisms",mechanisms},{"decision",decision},{"control",{{"enabled",execution.enabled},{"applied",execution.applied},{"keys",execution.keys},{"reason",execution.reason},{"attack_enabled",execution.attack_enabled},{"input_backend",keyboard.background?"window-messages":"scan-codes"},{"game_foreground",focused}}}};
                if(compact_session_log())trim_session_record(record);
                log<<record.dump()<<'\n';if(!log)throw std::runtime_error("Session log write failed; control stopped");
                if(log.tellp()>=64LL*1024*1024) {
                    log.close();std::ostringstream name;name<<"frames-"<<std::setw(4)<<std::setfill('0')<<++segment<<".jsonl";log.open(directory/name.str());
                    if(!log)throw std::runtime_error("Cannot rotate session log");
                }
                ++frames;
                if(frames%30==0)log.flush();
                if(!reader->alive()) {
                    control.stop();reader.reset();state.pid=0;previous_health=-1;published.status="Game exited; keys released";
                    connection_log<<json{{"time_ms",now},{"connected",false},{"status",published.status}}.dump()<<'\n';connection_log.flush();
                    last_connection_status.clear();
                }
            }
            published.frame=std::move(frame);published.mechanisms=std::move(mechanisms);published.decision=std::move(decision);published.execution=execution;
            published.threats=planner.threats();published.frames=frames;published.damage_events=damage_events;
            {std::lock_guard lock(state.mutex);state.view=published;}
            std::this_thread::sleep_until(tick+std::chrono::milliseconds(16));
        }
        control.stop();log.flush();
        std::ofstream summary(directory/L"summary.json");summary<<json{{"frames",frames},{"health_drop_events",damage_events},{"keys_released",control.held().empty()}}.dump(2);
    }catch(const std::exception&e) {
        control.stop();std::lock_guard lock(state.mutex);state.view.status=e.what();state.view.execution.enabled=false;
    }
}
void paint(App& state,HDC target,RECT client) {
    HDC dc=CreateCompatibleDC(target);HBITMAP bitmap=CreateCompatibleBitmap(target,client.right,client.bottom);auto old_bitmap=SelectObject(dc,bitmap);
    HBRUSH background=CreateSolidBrush(RGB(18,23,31));FillRect(dc,&client,background);DeleteObject(background);
    SetBkMode(dc,TRANSPARENT);SetTextColor(dc,RGB(220,230,240));HFONT font=CreateFontW(19,0,0,0,FW_NORMAL,FALSE,FALSE,FALSE,DEFAULT_CHARSET,0,0,0,0,L"Microsoft YaHei UI");auto old_font=SelectObject(dc,font);
    View view;{std::lock_guard lock(state.mutex);view=state.view;}
    auto text=[&](int x,int y,const std::wstring& value){TextOutW(dc,x,y,value.c_str(),int(value.size()));};
    text(24,22,L"以撒 Gamebot · "+wide(gamebot_version)+L" · 只读内存采集");
    text(24,99,L"F6 自动攻击   F7 后台输出   F8 开关控制   F9 急停   Shift 临时手动");
    std::wostringstream stats;stats<<L"采集 "<<view.frames<<L" 帧    观察到生命下降 "<<view.damage_events<<L" 次    决策 "<<std::fixed<<std::setprecision(1)<<view.decision.planning_ms<<L" ms";
    text(24,128,stats.str());text(24,157,wide(view.status));
    std::wostringstream mechanisms;mechanisms<<L"机制 "<<view.mechanisms.known_states<<L"/"<<view.mechanisms.identities<<L"    攻击 "<<view.mechanisms.known_attack_types<<L"    预警 "<<view.mechanisms.predictive_warnings;
    text(620,128,mechanisms.str());
    text(24,186,std::wstring(view.execution.enabled?L"自动控制：开启":L"自动控制：关闭")+(state.attack_enabled?L"    自动攻击：开启":L"    自动攻击：关闭（只躲避，可手动射击）")+(state.background?L"    输出：后台窗口":L"    输出：前台键盘"));
    std::wstring log_text=L"日志："+state.log_directory.wstring();RECT log_rect{24,215,client.right-24,240};DrawTextW(dc,log_text.c_str(),-1,&log_rect,DT_SINGLELINE|DT_PATH_ELLIPSIS|DT_NOPREFIX);
    if(!state.hook)text(24,243,L"键盘观察器不可用，自动控制未开放。");
    const auto& frame=view.frame;
    if(frame.grid.valid) {
        double scale=std::min((client.right-50.0)/(frame.grid.width*40.0),(client.bottom-300.0)/(frame.grid.height*40.0));
        double left=(client.right-frame.grid.width*40*scale)/2,top=275;
        auto point=[&](Vec p){return POINT{LONG(left+(p.x-20)*scale),LONG(top+(p.y-100)*scale)};};
        auto line=[&](Vec a,Vec b,COLORREF color,int width=1){HPEN pen=CreatePen(PS_SOLID,width,color);auto old=SelectObject(dc,pen);auto p=point(a),q=point(b);MoveToEx(dc,p.x,p.y,nullptr);LineTo(dc,q.x,q.y);SelectObject(dc,old);DeleteObject(pen);};
        auto circle=[&](Vec p,double radius,COLORREF color,bool filled){auto c=point(p);int r=int(std::max(2.0,radius*scale));HPEN pen=CreatePen(PS_SOLID,1,color);HBRUSH brush=filled?CreateSolidBrush(color):static_cast<HBRUSH>(GetStockObject(HOLLOW_BRUSH));auto op=SelectObject(dc,pen),ob=SelectObject(dc,brush);Ellipse(dc,c.x-r,c.y-r,c.x+r,c.y+r);SelectObject(dc,op);SelectObject(dc,ob);DeleteObject(pen);if(filled)DeleteObject(brush);};
        for(size_t i=0;i<frame.grid.cells.size();++i) {
            const auto& cell=frame.grid.cells[i];Vec c=frame.grid.center(int(i));auto a=point(c-Vec{19,19}),b=point(c+Vec{19,19});RECT rect{a.x,a.y,b.x,b.y};
            COLORREF color=cell.danger?RGB(130,58,45):cell.collision>=2?RGB(86,91,100):cell.collision==1?RGB(5,8,13):RGB(33,40,51);
            auto brush=CreateSolidBrush(color);FillRect(dc,&rect,brush);DeleteObject(brush);
        }
        for(const auto&t:view.threats) {
            if(t.shape==Shape::capsule)line(t.pos,t.end,RGB(240,120,80),2);
            else if(t.shape==Shape::cone) {
                const Vec axis=t.end-t.pos,side=Vec{-axis.y,axis.x}*0.1005037815259212;
                line(t.pos,t.end+side,RGB(240,120,80),2);line(t.pos,t.end-side,RGB(240,120,80),2);
                line(t.end+side,t.end-side,RGB(240,120,80),1);
            }
            else if(t.shape==Shape::ring)circle(t.pos,distance(t.pos,t.end),RGB(240,100,160),false);
            else if(t.shape==Shape::polyline)for(size_t i=1;i<t.geometry_path.size();++i)
                line(t.geometry_path[i-1],t.geometry_path[i],RGB(240,120,80),2);
            else if(t.kind=="creep"||t.kind=="creep-slow"||t.kind=="creep-slippery")
                circle(t.pos,t.radius,t.soft?RGB(170,145,90):RGB(220,100,70),false);
            else if(t.kind=="bomb"||t.kind=="death-blast"||t.kind=="explosive-npc")circle(t.pos,t.radius,RGB(200,120,60),false);
        }
        for(const auto&e:frame.entities)if(e.alive()) {
            if(e.enemy())circle(e.pos,e.radius,e.friendly?RGB(80,150,100):RGB(220,80,90),true);
            if(e.type==9)circle(e.pos,e.radius,RGB(250,170,60),true);
        }
        const auto&path=view.decision.path;for(size_t i=1;i<path.size();++i)line(path[i-1],path[i],RGB(90,220,170),2);
        if(frame.has_player)circle(frame.player.body.pos,frame.player.body.radius,RGB(100,185,250),true);
    }
    SelectObject(dc,old_font);DeleteObject(font);BitBlt(target,0,0,client.right,client.bottom,dc,0,0,SRCCOPY);SelectObject(dc,old_bitmap);DeleteObject(bitmap);DeleteDC(dc);
}
LRESULT CALLBACK window_proc(HWND hwnd,UINT message,WPARAM w,LPARAM l) {
    if(!app)return DefWindowProcW(hwnd,message,w,l);
    switch(message) {
    case WM_CREATE:
        CreateWindowW(L"BUTTON",L"开启 / 关闭 (F8)",WS_CHILD|WS_VISIBLE|BS_PUSHBUTTON,24,55,180,32,hwnd,reinterpret_cast<HMENU>(101),nullptr,nullptr);
        CreateWindowW(L"BUTTON",L"紧急停止 (F9)",WS_CHILD|WS_VISIBLE|BS_PUSHBUTTON,220,55,180,32,hwnd,reinterpret_cast<HMENU>(102),nullptr,nullptr);
        CreateWindowW(L"BUTTON",L"自动攻击：开 (F6)",WS_CHILD|WS_VISIBLE|BS_PUSHBUTTON,416,55,180,32,hwnd,reinterpret_cast<HMENU>(103),nullptr,nullptr);
        CreateWindowW(L"BUTTON",L"后台输出：关 (F7)",WS_CHILD|WS_VISIBLE|BS_PUSHBUTTON,612,55,180,32,hwnd,reinterpret_cast<HMENU>(105),nullptr,nullptr);
        CreateWindowW(L"BUTTON",L"打开日志文件夹",WS_CHILD|WS_VISIBLE|BS_PUSHBUTTON,808,55,160,32,hwnd,reinterpret_cast<HMENU>(104),nullptr,nullptr);
        SetTimer(hwnd,1,50,nullptr);return 0;
    case WM_COMMAND:if(LOWORD(w)==101)app->commands.fetch_or(1);if(LOWORD(w)==102)app->commands.fetch_or(2);if(LOWORD(w)==103)app->commands.fetch_or(4);if(LOWORD(w)==105)app->commands.fetch_or(8);if(LOWORD(w)==104)ShellExecuteW(hwnd,L"open",app->log_directory.c_str(),nullptr,nullptr,SW_SHOWNORMAL);return 0;
    case WM_TIMER:SetWindowTextW(GetDlgItem(hwnd,103),app->attack_enabled?L"自动攻击：开 (F6)":L"自动攻击：关 (F6)");SetWindowTextW(GetDlgItem(hwnd,105),app->background?L"后台输出：开 (F7)":L"后台输出：关 (F7)");InvalidateRect(hwnd,nullptr,FALSE);return 0;
    case WM_ERASEBKGND:return 1;
    case WM_PAINT:{PAINTSTRUCT ps;auto dc=BeginPaint(hwnd,&ps);RECT rect;GetClientRect(hwnd,&rect);paint(*app,dc,rect);EndPaint(hwnd,&ps);return 0;}
    case WM_CLOSE:app->commands.fetch_or(2);DestroyWindow(hwnd);return 0;
    case WM_DESTROY:app->quit=true;PostQuitMessage(0);return 0;
    default:return DefWindowProcW(hwnd,message,w,l);
    }
}
}
int gui_main(const std::filesystem::path& root) {
    SetProcessDPIAware();App state;state.root=root;state.log_directory=root.parent_path()/L"sessions"/session_name();app=&state;
    WNDCLASSW cls{};cls.lpfnWndProc=window_proc;cls.hInstance=GetModuleHandleW(nullptr);cls.lpszClassName=L"IsaacCppGamebot";cls.hCursor=LoadCursorW(nullptr,IDC_ARROW);RegisterClassW(&cls);
    state.hwnd=CreateWindowExW(0,cls.lpszClassName,L"以撒 Gamebot · C++",WS_OVERLAPPEDWINDOW,CW_USEDEFAULT,CW_USEDEFAULT,1120,820,nullptr,nullptr,cls.hInstance,nullptr);
    if(!state.hwnd){app=nullptr;return 1;}
    for(int i=0;i<256;++i)state.physical[i]=(GetAsyncKeyState(i)&0x8000)!=0;
    state.hook=SetWindowsHookExW(WH_KEYBOARD_LL,keyboard_hook,cls.hInstance,0);
    state.worker=std::thread([&]{run_worker(state);});ShowWindow(state.hwnd,SW_SHOW);
    MSG message{};while(GetMessageW(&message,nullptr,0,0)>0){TranslateMessage(&message);DispatchMessageW(&message);}
    state.quit=true;state.worker.join();if(state.hook)UnhookWindowsHookEx(state.hook);app=nullptr;return 0;
}
}
