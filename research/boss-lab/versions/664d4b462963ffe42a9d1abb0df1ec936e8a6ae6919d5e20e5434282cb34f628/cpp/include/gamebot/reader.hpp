#pragma once
#include "model.hpp"
#include <filesystem>
#include <memory>
#include <span>
#include <stdexcept>
#include <cstring>

namespace gamebot {
class Memory {
public:
    virtual ~Memory()=default;
    virtual void copy(uint32_t address,void* target,size_t size) const=0;
    template<class T>T read(uint32_t address) const { T value{};copy(address,&value,sizeof value);return value; }
    std::vector<uint8_t> bytes(uint32_t address,size_t size) const { std::vector<uint8_t> out(size);copy(address,out.data(),size);return out; }
};
struct Layout {uint32_t base{},game_slot{},manager_slot{},clock_offset{0x264f8};std::string sha256;};
struct Process {uint32_t pid{};std::filesystem::path path;};
class Reader {
    std::shared_ptr<Memory> memory_;Layout layout_;uint32_t pid_{};uint64_t sequence_{};
    std::string read_string(uint32_t address) const;
public:
    Reader(std::shared_ptr<Memory> memory,Layout layout,uint32_t pid):memory_(std::move(memory)),layout_(std::move(layout)),pid_(pid){}
    static std::vector<Process> processes();
    static Layout inspect(const std::filesystem::path& path);
    static std::unique_ptr<Reader> attach(const Process& process);
    Frame capture(double now_ms);
    const Layout& layout() const{return layout_;}
    uint32_t pid() const{return pid_;}
};
template<class T>T unpack(std::span<const uint8_t> raw,size_t offset) {
    if(offset+sizeof(T)>raw.size())throw std::runtime_error("Truncated native record");
    T value;std::memcpy(&value,raw.data()+offset,sizeof value);return value;
}
Entity decode_entity(uint32_t address,std::span<const uint8_t> raw);
std::string file_sha256(const std::filesystem::path& path);
}
