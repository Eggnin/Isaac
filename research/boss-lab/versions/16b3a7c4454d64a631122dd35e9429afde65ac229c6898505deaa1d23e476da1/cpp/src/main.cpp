#include "gamebot/runtime.hpp"
#include "gamebot/reader.hpp"
#include "gamebot/planner.hpp"
#define NOMINMAX
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <shellapi.h>
#include <fstream>
#include <iostream>
#include <chrono>
#include <thread>
namespace gamebot {
namespace {
double now_ms(){return std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now().time_since_epoch()).count();}
}
int cli_main(int argc,wchar_t** argv,const std::filesystem::path&) {
    std::wstring mode=argv[1];
    if(mode==L"--help") {
        std::cout<<"Isaac Gamebot C++\n--inspect <isaac-ng.exe>\n--observe <seconds> <output.jsonl>\n--shadow <seconds> <output.jsonl>\n--replay <input.jsonl> <output.jsonl>\nNo keyboard output in any CLI mode.\n";return 0;
    }
    if(mode==L"--inspect"&&argc==3) {
        auto layout=Reader::inspect(argv[2]);std::cout<<json{{"supported",true},{"sha256",layout.sha256},{"game_slot_rva",layout.game_slot},{"manager_slot_rva",layout.manager_slot}}.dump(2)<<'\n';return 0;
    }
    Planner planner;
    if(mode==L"--replay"&&argc==4) {
        if(std::filesystem::absolute(argv[2]).lexically_normal()==std::filesystem::absolute(argv[3]).lexically_normal())throw std::runtime_error("Input and output must differ");
        std::ifstream in{std::filesystem::path(argv[2])};if(!in)throw std::runtime_error("Cannot open replay input");
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        std::ofstream out{std::filesystem::path(argv[3])};if(!out)throw std::runtime_error("Cannot create replay output");
        std::string line;uint64_t count=0;double total_ms=0;
        while(std::getline(in,line)) {
            if(line.size()>8*1024*1024)throw std::runtime_error("Replay line exceeds 8 MiB");
            auto record=json::parse(line);Frame frame=(record.contains("frame")?record.at("frame"):record).get<Frame>();
            auto decision=planner.decide(frame);total_ms+=decision.planning_ms;out<<json{{"frame",frame},{"decision",decision},{"mode","replay"}}.dump()<<'\n';++count;
        }
        if(!in.eof()||!out)throw std::runtime_error("Replay I/O failed");
        std::cout<<json{{"frames",count},{"mean_planning_ms",count?total_ms/count:0},{"keyboard_output",false}}.dump(2)<<'\n';return count?0:2;
    }
    if((mode==L"--observe"||mode==L"--shadow")&&argc==4) {
        double seconds=std::stod(argv[2]);if(!std::isfinite(seconds)||seconds<=0||seconds>900)throw std::runtime_error("Seconds must be in (0,900]");
        if(std::filesystem::exists(argv[3]))throw std::runtime_error("Output already exists");
        auto processes=Reader::processes();if(processes.size()!=1)throw std::runtime_error("Expected exactly one running isaac-ng.exe; found "+std::to_string(processes.size()));
        auto reader=Reader::attach(processes.front());std::ofstream out{std::filesystem::path(argv[3])};if(!out)throw std::runtime_error("Cannot create capture output");
        double until=now_ms()+seconds*1000;uint64_t count=0,valid=0;
        while(now_ms()<until) {
            auto tick=std::chrono::steady_clock::now();auto frame=reader->capture(now_ms());valid+=frame.valid;++count;
            json record{{"frame",frame},{"mode",mode==L"--shadow"?"shadow":"observe"}};
            if(mode==L"--shadow")record["decision"]=planner.decide(frame);
            out<<record.dump()<<'\n';if(!out)throw std::runtime_error("Capture log write failed");
            if(out.tellp()>512LL*1024*1024)break;
            std::this_thread::sleep_until(tick+std::chrono::milliseconds(33));
        }
        std::cout<<json{{"frames",count},{"valid",valid},{"keyboard_output",false},{"sha256",reader->layout().sha256}}.dump(2)<<'\n';return valid?0:2;
    }
    throw std::runtime_error("Invalid arguments; use --help");
}
}
int wmain(int argc,wchar_t**argv) {
    try {
        wchar_t filename[32768];DWORD n=GetModuleFileNameW(nullptr,filename,32768);
        auto root=std::filesystem::path(std::wstring(filename,n)).parent_path();
        if(argc>1)return gamebot::cli_main(argc,argv,root);
        FreeConsole();
        return gamebot::gui_main(root);
    }catch(const std::exception&e){std::cerr<<e.what()<<'\n';return 1;}
}
