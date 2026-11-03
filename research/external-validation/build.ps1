param([string]$Compiler='C:/Users/Administrator/.codex/toolchains/zig-x86_64-windows-0.16.0/zig.exe')
$ErrorActionPreference='Stop'
$taskRoot=$PSScriptRoot
$projectRoot=Split-Path -Parent (Split-Path -Parent $taskRoot)
& $Compiler cc -shared -O2 "$taskRoot/memory_address.c" -luser32 -o "$taskRoot/memory_address.node"
if ($LASTEXITCODE -ne 0) { throw 'N-API bridge build failed' }
# The MPC expert path needs the production planner stack the offline loop uses:
# forward simulator, combat intelligence, safety gate, prediction monitor and
# the closed-loop controller. No source is modified for this build.
$sources=@('model','planner','combat','combat_progress','attack_forecast','enemy_intent','unknown_threat',
    'world_state','forward_sim','temporal_reachability','movement_intent','projectile_motion','safety',
    'prediction_monitor','lookahead','mpc','strategy','closed_loop','reader','semantics','weapons') |
    ForEach-Object { "$projectRoot/cpp/src/$_.cpp" }
& $Compiler c++ -std=c++20 -O2 -Wno-nullability-completeness -DNDEBUG -DUNICODE -D_UNICODE "-I$projectRoot/cpp/include" "-I$projectRoot/cpp/third_party" "$taskRoot/reader_main.cpp" @sources -lbcrypt -luser32 -ladvapi32 -o "$taskRoot/ExternalReader.exe"
if ($LASTEXITCODE -ne 0) { throw 'External Reader build failed' }
