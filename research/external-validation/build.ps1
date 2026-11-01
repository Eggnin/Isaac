param([string]$Compiler='C:/Users/Administrator/.codex/toolchains/zig-x86_64-windows-0.16.0/zig.exe')
$ErrorActionPreference='Stop'
$taskRoot=$PSScriptRoot
$projectRoot=Split-Path -Parent (Split-Path -Parent $taskRoot)
& $Compiler cc -shared -O2 "$taskRoot/memory_address.c" -luser32 -o "$taskRoot/memory_address.node"
if ($LASTEXITCODE -ne 0) { throw 'N-API bridge build failed' }
& $Compiler c++ -std=c++20 -O2 -Wno-nullability-completeness -DNDEBUG -DUNICODE -D_UNICODE "-I$projectRoot/cpp/include" "-I$projectRoot/cpp/third_party" "$taskRoot/reader_main.cpp" "$projectRoot/cpp/src/reader.cpp" "$projectRoot/cpp/src/model.cpp" "$projectRoot/cpp/src/weapons.cpp" "$projectRoot/cpp/src/planner.cpp" "$projectRoot/cpp/src/semantics.cpp" -lbcrypt -luser32 -ladvapi32 -o "$taskRoot/ExternalReader.exe"
if ($LASTEXITCODE -ne 0) { throw 'External Reader build failed' }
