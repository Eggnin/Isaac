param(
    [ValidateSet('layout','boot','main','room')][string]$Stage = 'boot',
    [int]$Frames = 6000,
    [string]$Commands = 'goto s.boss.1010',
    [long]$Epoch = 1793118193
)
$ErrorActionPreference = 'Stop'
$researchRoot = $PSScriptRoot
$driver = Join-Path $researchRoot 'the-browsing-of-isaac/output/recomp/lift/boot-fast/boot_integration.mjs'
$image = Join-Path $researchRoot 'runtime-inputs/host/isaac.segs.bin'
$instance = Join-Path $researchRoot 'runtime-instance'
if (!(Test-Path -LiteralPath $driver) -or !(Test-Path -LiteralPath $image)) {
    throw 'Build the original engine and prepare runtime inputs first.'
}
$session = Join-Path $researchRoot ('offline-runs/' + (Get-Date -Format 'yyyyMMdd-HHmmss-fff'))
New-Item -ItemType Directory -Path $session -Force | Out-Null
$log = Join-Path $session 'engine.log'
$receipt = [ordered]@{ stage=$Stage; frames=$Frames; commands=$Commands; epoch=$Epoch; driver=$driver; image=$image; instance=$instance; started=(Get-Date).ToString('o'); status='running' }
$receipt | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $session 'run.json') -Encoding utf8
$env:ISAAC_INSTANCE_DIR = $instance
$env:ISAAC_SAVE_DIR = Join-Path $instance 'isolated-save-store'
$env:ISAAC_EPOCH = [string]$Epoch
$env:ISAAC_MAX_FRAMES = [string]$Frames
$env:ISAAC_YIELD = '0'
$env:ISAAC_V8_FLAGS = '--no-wasm-tier-up'
$env:ISAAC_V8_FLAGS_APPLIED = ''
$env:ISAAC_DRIVE = ''
$env:ISAAC_CONSOLE = ''
$env:ISAAC_INPUT = ''
$env:ISAAC_OBSERVER_MODULE = Join-Path $researchRoot 'offline/record_episode.mjs'
$env:ISAAC_OBSERVATION_LOG = Join-Path $session 'observations.jsonl'
$engineStage = $Stage
if ($Stage -eq 'room') {
    $engineStage = 'main'
    $env:ISAAC_DRIVE = 'explore'
    $env:ISAAC_CONSOLE = $Commands
    $env:ISAAC_CONSOLE_DELAY = '90'
    $env:ISAAC_EXPLORE_CENSUS = '1'
}
Push-Location -LiteralPath $instance
try {
    # Windows PowerShell 5 turns native stderr into ErrorRecords. The engine
    # logs normal boot progress there; classify success from its exit/result.
    $ErrorActionPreference = 'Continue'
    & node $driver $image $engineStage 2>&1 | ForEach-Object {
        $nativeLine = $_.ToString()
        if ($nativeLine -ne 'System.Management.Automation.RemoteException') { $nativeLine }
    } | Set-Content -LiteralPath $log -Encoding utf8
    $nativeExit = $LASTEXITCODE
} finally {
    $ErrorActionPreference = 'Stop'
    Pop-Location
}
$text = Get-Content -LiteralPath $log -Raw
$receipt['finished'] = (Get-Date).ToString('o')
$receipt['nativeExit'] = $nativeExit
$receipt['log'] = $log
$receipt['status'] = if ($nativeExit -eq 0 -and $text -match 'RESULT: (layout OK|boot rc=1|main returned 0)') { 'engine-returned' } else { 'failed' }
# Room success requires observations of live combat followed by real room-clear.
# A clean engine return alone is not counted as a completed combat episode.
$receipt | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $session 'run.json') -Encoding utf8
Write-Output "Session: $session"
Get-Content -LiteralPath $log -Tail 18
if ($receipt.status -eq 'failed') { exit 1 }
