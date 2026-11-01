param([int]$MaxRuns=0,[double]$StallSeconds=30,[double]$RoomTimeoutSeconds=600,[int]$MaxRunSeconds=0,[int]$RestartDelaySeconds=3,[ValidateSet('room-test','until-death')][string]$Mode='room-test',[switch]$NoTurbo=$true)
$ErrorActionPreference='Stop'
# A Windows PowerShell launch from PowerShell 7 may inherit only PS7 module
# locations. Resolve this host's built-in commands from its own module folder.
$env:PSModulePath=(Join-Path $PSHOME 'Modules')+[IO.Path]::PathSeparator+$env:PSModulePath
if($MaxRuns -lt 0 -or $StallSeconds -le 0 -or $RoomTimeoutSeconds -lt 0 -or $MaxRunSeconds -lt 0){throw 'Invalid loop parameters'}
$root=Join-Path $PSScriptRoot 'loop-runs'
$stopFile=Join-Path $PSScriptRoot 'loop-stop.request'
$pointer=Join-Path $PSScriptRoot 'Latest-Isaac-Program.json'
$lock=New-Object Threading.Mutex($false,'Local\IsaacAssistLoopRunner')
$owned=$false
$session=$null
try {
    try {$owned=$lock.WaitOne(0)}catch [Threading.AbandonedMutexException]{$owned=$true}
    if(-not $owned){throw 'Another loop runner is already active'}
    if(Get-Process isaac-ng,IsaacExternalAssist* -ErrorAction SilentlyContinue){throw 'Close the current game and assist program before starting the loop'}
    New-Item -ItemType Directory -Force -Path $root | Out-Null
    $session=Join-Path $root ((Get-Date -Format 'yyyyMMdd-HHmmss')+'-'+[guid]::NewGuid().ToString('N').Substring(0,6))
    New-Item -ItemType Directory -Path $session | Out-Null
    'run' | Set-Content -LiteralPath $stopFile -Encoding utf8
    @{session=$session;status='running';runner_pid=$PID;started_at=(Get-Date).ToUniversalTime().ToString('o');max_runs=$MaxRuns;stall_seconds=$StallSeconds;room_timeout_seconds=$RoomTimeoutSeconds;mode=$Mode;turbo_requested=($Mode -eq 'room-test' -and -not $NoTurbo)} |
        ConvertTo-Json | Set-Content -LiteralPath (Join-Path $session 'session.json') -Encoding utf8
    @{session=$session;status='running';runner_pid=$PID} | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $root 'current-session.json') -Encoding utf8
    Write-Output ('Loop logs: '+$session)
    if($Mode -eq 'room-test' -and $NoTurbo){Write-Output 'Room test: REALTIME, visible rendering; turbo and frame blocking disabled.'}
    $number=0
    while($MaxRuns -eq 0 -or $number -lt $MaxRuns){
        if((Get-Content -Encoding UTF8 -LiteralPath $stopFile -Raw).Trim() -eq 'stop'){break}
        $drive=[IO.DriveInfo]::new([IO.Path]::GetPathRoot($root))
        if($drive.AvailableFreeSpace -lt 1GB){throw 'Less than 1 GB remains on the log drive; stopping to preserve logs and backups'}
        # Re-resolve on each game so a later published version is picked up at
        # a run boundary. Never replace an executable while it is in use.
        $latest=Get-Content -Encoding UTF8 -LiteralPath $pointer -Raw | ConvertFrom-Json
        $program=Join-Path $PSScriptRoot $latest.executable
        $manifestPath=Join-Path $PSScriptRoot $latest.manifest
        $manifest=Get-Content -Encoding UTF8 -LiteralPath $manifestPath -Raw | ConvertFrom-Json
        if((Get-FileHash -LiteralPath $program).Hash -ne $manifest.sha256.ToUpperInvariant()){throw 'Latest program hash does not match its build manifest'}
        if($Mode -eq 'room-test'){
            foreach($asset in $manifest.room_test_asset_hashes.PSObject.Properties){
                $assetPath=Join-Path $PSScriptRoot $asset.Name
                if(-not(Test-Path -LiteralPath $assetPath) -or (Get-FileHash -LiteralPath $assetPath).Hash -ne $asset.Value.ToUpperInvariant()){throw ('Room-test asset hash mismatch: '+$asset.Name)}
            }
            if(-not $manifest.room_test_asset_hashes){throw 'Selected program does not declare its room-test runtime'}
        }
        $number++
        $attempt=Join-Path $session ('run-'+$number.ToString('D4'))
        New-Item -ItemType Directory -Path $attempt | Out-Null
        Copy-Item -LiteralPath $manifestPath -Destination (Join-Path $attempt 'program-build.json')
        Write-Output ('Run '+$number+' / '+$manifest.version)
        try {
            & (Join-Path $PSScriptRoot 'Run-Native-Session.ps1') -Scenario $Mode -Seconds $MaxRunSeconds -InputMode windowmessage -LaunchMode steam -ObserverExecutable $program -OutputRoot $attempt -StallSeconds $StallSeconds -RoomSeconds $RoomTimeoutSeconds -StopFile $stopFile -NoTurbo:$NoTurbo *> (Join-Path $attempt 'launcher.log')
        } catch {
            $_.Exception.Message | Set-Content -LiteralPath (Join-Path $attempt 'attempt-error.txt') -Encoding utf8
        }
        $recorder=Start-Process -FilePath $program -ArgumentList @('--record-loop-run',('"'+$session+'"'),('"'+$attempt+'"'),('"'+$root+'"')) -WindowStyle Hidden -PassThru
        if(-not $recorder.WaitForExit(15000) -or $recorder.ExitCode -ne 0){throw 'Could not persist run summary; raw logs are retained'}
        $summary=Get-Content -Encoding UTF8 -LiteralPath (Join-Path $attempt 'summary.json') -Raw | ConvertFrom-Json
        Write-Output ('Ended: '+$summary.reason+'; damage observations: '+$summary.damage_observations)
        if($summary.fatal_error){Write-Output ('Error: '+$summary.fatal_error.type+': '+$summary.fatal_error.message)}
        if($summary.restoration_required -and -not $summary.restored){throw 'Save restoration did not complete; backups retained. Automatic restarts stopped.'}
        if($summary.reason -in @('manual_stop','game_closed','preflight_failed','room_test_setup_failed','room_test_runtime_error')){break}
        $delayEnd=(Get-Date).AddSeconds($RestartDelaySeconds)
        while((Get-Date) -lt $delayEnd){
            if((Get-Content -Encoding UTF8 -LiteralPath $stopFile -Raw).Trim() -eq 'stop'){break}
            Start-Sleep -Milliseconds 200
        }
    }
    Write-Output ('Loop finished. History: '+(Join-Path $root 'runs-history.jsonl'))
} catch {
    if($session){$_.Exception.Message | Set-Content -LiteralPath (Join-Path $session 'session-error.txt') -Encoding utf8}
    throw
} finally {
    if($session){
        $state=Get-Content -Encoding UTF8 -LiteralPath (Join-Path $session 'session.json') -Raw | ConvertFrom-Json
        $state.status='stopped'
        $state | Add-Member -NotePropertyName ended_at -NotePropertyValue ((Get-Date).ToUniversalTime().ToString('o')) -Force
        $state | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $session 'session.json') -Encoding utf8
        @{session=$session;status='stopped';runner_pid=$PID} | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $root 'current-session.json') -Encoding utf8
    }
    if($owned){$lock.ReleaseMutex()}
    $lock.Dispose()
}
