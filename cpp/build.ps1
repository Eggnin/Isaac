param([switch]$Test,[string]$Compiler='',[string]$NativeFixtures='')
$ErrorActionPreference='Stop'
$projectRoot=$PSScriptRoot
$outputRoot=Join-Path (Split-Path -Parent $projectRoot) 'bin'
New-Item -ItemType Directory -Path $outputRoot -Force | Out-Null
if (!$Compiler) {
 $compilerCandidates=@(
  'C:/Users/Administrator/.codex/toolchains/zig-x86_64-windows-0.16.0/zig.exe',
  'C:/Users/Administrator/.codex/toolchains/zig-x86_64-windows-0.15.2/zig.exe',
  'C:/Users/Administrator/.codex/toolchains/zig-0.13.0-npm/package/zig.exe'
 )
 $Compiler=$compilerCandidates | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1
}
if (!$Compiler) { $availableZig=Get-Command zig -ErrorAction SilentlyContinue; if ($availableZig) { $Compiler=$availableZig.Source } }
if (!$Compiler) { throw 'C++ compiler missing. Install Zig 0.13+ and pass -Compiler <zig.exe>.' }
$stampPath=Join-Path $outputRoot 'build-stamp.json'
$stampInputs=@(Get-ChildItem (Join-Path $projectRoot 'src') -Filter *.cpp -File)+
    @(Get-ChildItem (Join-Path $projectRoot 'include') -Recurse -Filter *.hpp -File)+
    @(Get-Item (Join-Path $projectRoot 'tests/core_tests.cpp'))+@(Get-Item (Join-Path $projectRoot 'app.rc'))
$stampInputs=$stampInputs | Sort-Object FullName
$stampLines=@($stampInputs | ForEach-Object { "$($_.FullName)|$((Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash)" }) -join "`n"
$sourceHash=(Get-FileHash -InputStream ([IO.MemoryStream]::new([Text.Encoding]::UTF8.GetBytes($stampLines))) -Algorithm SHA256).Hash
$version=[regex]::Match((Get-Content -LiteralPath (Join-Path $projectRoot 'include/gamebot/runtime.hpp') -Raw),'gamebot_version\[\]="([^"]+)"').Groups[1].Value
$previous=$null
if(Test-Path -LiteralPath $stampPath) { try { $previous=Get-Content -LiteralPath $stampPath -Raw | ConvertFrom-Json } catch { $previous=$null } }
if($previous -and $previous.source_sha256 -ne $sourceHash -and -not $Test -and $previous.tests_ran) {
    Write-Warning 'Sources changed since the last tested build; this build will record tests_ran=false.'
}
$common=@('c++','-std=c++20','-O2','-DNDEBUG','-DUNICODE','-D_UNICODE','-Wall','-Wextra','-Wno-unused-parameter','-Wno-nullability-completeness',"-I$projectRoot/include","-I$projectRoot/third_party",'-target','x86_64-windows-gnu')
$core=@("$projectRoot/src/model.cpp","$projectRoot/src/planner.cpp","$projectRoot/src/reader.cpp","$projectRoot/src/semantics.cpp","$projectRoot/src/control.cpp","$projectRoot/src/weapons.cpp")
$application=@("$projectRoot/src/main.cpp","$projectRoot/src/keyboard_win32.cpp","$projectRoot/src/gui_win32.cpp","$projectRoot/app.rc")
& $Compiler @common @core @application '-municode' '-luser32' '-lgdi32' '-lbcrypt' '-lshell32' '-ladvapi32' '-o' "$outputRoot/IsaacGamebot.exe"
if ($LASTEXITCODE -ne 0) { throw 'C++ application build failed.' }
$stamp=[ordered]@{
    version=$version
    built_utc=(Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ')
    source_sha256=$sourceHash
    compiler=$Compiler
    tests_ran=$false
    tests=$null
}
$stamp | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath $stampPath -Encoding UTF8
if ($Test) {
 & $Compiler @common @core "$projectRoot/tests/core_tests.cpp" '-lbcrypt' '-luser32' '-ladvapi32' '-o' "$outputRoot/GamebotTests.exe"
 if ($LASTEXITCODE -ne 0) { throw 'C++ tests build failed.' }
 if ($NativeFixtures) { & "$outputRoot/GamebotTests.exe" "$outputRoot/test-results.json" $NativeFixtures }
 else { & "$outputRoot/GamebotTests.exe" "$outputRoot/test-results.json" }
 if ($LASTEXITCODE -ne 0) { throw 'C++ tests failed.' }
 $results=Get-Content -LiteralPath "$outputRoot/test-results.json" -Raw | ConvertFrom-Json
 $stamp.tests_ran=$true
 $stamp.tests=[ordered]@{passed=($results.tests-$results.failed);failed=$results.failed;elapsed_ms=[math]::Round($results.elapsed_ms)}
 $stamp.source_sha256=$sourceHash
 $stamp | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath $stampPath -Encoding UTF8
}
Write-Output "Built: $outputRoot/IsaacGamebot.exe"
