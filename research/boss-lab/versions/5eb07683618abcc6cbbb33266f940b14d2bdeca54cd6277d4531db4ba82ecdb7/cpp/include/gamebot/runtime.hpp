#pragma once
#include <filesystem>
namespace gamebot {
int gui_main(const std::filesystem::path& root);
int cli_main(int argc,wchar_t** argv,const std::filesystem::path& root);
}
