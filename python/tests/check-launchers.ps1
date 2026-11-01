$ErrorActionPreference='Stop'
$project=Split-Path $PSScriptRoot -Parent
$scripts=Join-Path $project 'scripts'
. (Join-Path $scripts 'Room-Test-Paths.ps1')
foreach($name in @('Start-Loop-Runs.ps1','Run-Native-Session.ps1','Start-Assist.ps1','Room-Test-Paths.ps1')){
    $parseErrors=$null
    [void][Management.Automation.Language.Parser]::ParseFile((Join-Path $scripts $name),[ref]$null,[ref]$parseErrors)
    if($parseErrors.Count){throw ($parseErrors|Out-String)}
}
$source=[IO.File]::ReadAllText((Join-Path $scripts 'Run-Native-Session.ps1'))
$begin=$source.IndexOf('$captureConfig=@')
$end=$source.IndexOf('$roomTestConfig=',$begin)
if($begin -lt 0 -or $end -le $begin){throw 'Config fragment missing'}
$fragment=$source.Substring($begin,$end-$begin)
$temporary=[IO.Path]::GetFullPath((Join-Path $project ('build\launch-check-'+[guid]::NewGuid().ToString('N'))))
if(-not $temporary.StartsWith(([IO.Path]::GetFullPath($project)+'\'),[StringComparison]::OrdinalIgnoreCase)){throw 'Unexpected check path'}
$run=Join-Path $temporary "O'Brien-records"
$bridge=Join-Path $temporary 'bridge'
try {
    [void][IO.Directory]::CreateDirectory($run)
    [void][IO.Directory]::CreateDirectory($bridge)
    $captureDirectory=Get-RoomCaptureDirectory -ProjectRoot $project -RunDirectory $run
    $reused=Get-RoomCaptureDirectory -ProjectRoot $project -RunDirectory $run
    if($captureDirectory -ne $reused){throw 'Capture alias changed on reuse'}
    $block=[scriptblock]::Create('param($run,$bridgeRoot,$bridgePort,$bridgeToken,$captureAllCallbacks,$RoomTestRuntime,$captureDirectory)' + [Environment]::NewLine + $fragment)
    [void]$block.Invoke($run,$bridge,1234,'offline',$true,(Join-Path $project 'runtime\room-test-runtime045'),$captureDirectory)
    @{powershell_major=$PSVersionTable.PSVersion.Major;syntax_checks=4;lua=[IO.File]::ReadAllText((Join-Path $bridge 'room_test_config.lua'));expected_run=$run;capture_directory=$captureDirectory;alias_reused=$true;game_launched=$false}|ConvertTo-Json -Compress |
        Set-Content -LiteralPath (Join-Path $project 'build\launch-check-result.json') -Encoding UTF8
    $python='C:\Users\Administrator\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
    $env:PYTHONPATH=Join-Path $project 'tools\python-packages'
    & $python (Join-Path $project 'tests\verify-lua-capture-paths.py') (Join-Path $project 'build\launch-check-result.json')
    if($LASTEXITCODE -ne 0){throw 'Real Lua file creation check failed'}
} finally {
    foreach($name in @('engine-events.jsonl','engine-damage-events.jsonl','engine-event-status.json')){
        $captured=Join-Path $run $name
        if(Test-Path -LiteralPath $captured){Remove-Item -LiteralPath $captured}
    }
    $file=Join-Path $bridge 'room_test_config.lua'
    if(Test-Path -LiteralPath $file){Remove-Item -LiteralPath $file}
    foreach($directory in @($bridge,$run,$temporary)){
        if(Test-Path -LiteralPath $directory){Remove-Item -LiteralPath $directory -ErrorAction Stop}
    }
}
