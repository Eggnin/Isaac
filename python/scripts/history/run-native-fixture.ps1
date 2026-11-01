param([int]$Seconds=35,[ValidateSet('combat','input-echo','hard-start','whole-run','first-floor','until-death','room-test')][string]$Scenario='combat',[ValidateSet('scancode','virtualkey','windowmessage')][string]$InputMode='scancode',[string]$OutputRoot='D:\IsaacAccessAssist\tests',[ValidateSet('steam','native')][string]$LaunchMode='steam',[string]$ObserverExecutable,[double]$StallSeconds=30,[double]$RoomSeconds=600,[string]$StopFile,[switch]$NoTurbo=$true,[string]$RoomTestRuntime)
$ErrorActionPreference='Stop'
if(-not $RoomTestRuntime){$RoomTestRuntime=Join-Path $PSScriptRoot 'room-test-runtime'}
$captureAllCallbacks=Test-Path -LiteralPath (Join-Path $RoomTestRuntime 'engine_event_capture.lua')
$game='D:\Steam\steamapps\common\The Binding of Isaac Rebirth'
$python='C:\Users\Administrator\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
$isaacProfile=Join-Path ([Environment]::GetFolderPath('MyDocuments')) 'My Games\Binding of Isaac Repentance+'
$label=if($Scenario -eq 'until-death'){'external034'}else{'external032'}
if($Scenario -in @('until-death','room-test') -and $ObserverExecutable -and [IO.Path]::GetFileNameWithoutExtension($ObserverExecutable) -match 'IsaacExternalAssist(\d{3,})$'){$label='external'+$Matches[1]}
$run=Join-Path $OutputRoot ($label+'-'+$Scenario+'-'+(Get-Date -Format 'yyyyMMdd-HHmmss'))
if(Get-Process isaac-ng -ErrorAction SilentlyContinue){throw 'Close the menu-only game before starting the native fixture.'}
if(Test-Path -LiteralPath $run){throw 'Fixture output already exists'}
New-Item -ItemType Directory -Path $run -Force | Out-Null
$steamState=Get-ItemProperty -LiteralPath 'HKCU:\Software\Valve\Steam\ActiveProcess' -ErrorAction SilentlyContinue
$steamProcesses=@(Get-Process steam -ErrorAction SilentlyContinue)
$preflight=@{execution_user=[Security.Principal.WindowsIdentity]::GetCurrent().Name;steam_active_user=$steamState.ActiveUser;
    steam_pids=@($steamProcesses|ForEach-Object Id);game_exe=(Join-Path $game 'isaac-ng.exe');ready=$false}
if(-not $steamState.ActiveUser -or -not $steamProcesses.Count){
    $preflight.error='Current Windows account has no signed-in Steam session; no game or save configuration was changed.'
    $preflight|ConvertTo-Json -Depth 4|Set-Content -LiteralPath (Join-Path $run 'preflight.json') -Encoding utf8
    throw $preflight.error
}
if($ObserverExecutable){
    $identityFile=Join-Path $run 'engine-identity.json'
    $identifyProcess=Start-Process -FilePath $ObserverExecutable -ArgumentList @('--identify-game',('"'+$identityFile+'"')) -WindowStyle Hidden -PassThru
    if(-not $identifyProcess.WaitForExit(15000)){Stop-Process -Id $identifyProcess.Id;throw 'Executable identity probe timed out before any save changes'}
    $identityCode=$identifyProcess.ExitCode
    $identityOutput=Get-Content -Encoding UTF8 -LiteralPath $identityFile -Raw -ErrorAction SilentlyContinue
} else {
    $identityOutput=& $python (Join-Path $PSScriptRoot 'engine_reader.py')
    $identityCode=$LASTEXITCODE
}
if($identityCode -ne 0){
    $preflight.error='Game identity check failed before launch; no game or save configuration was changed.'
    $preflight|ConvertTo-Json -Depth 4|Set-Content -LiteralPath (Join-Path $run 'preflight.json') -Encoding utf8
    throw $preflight.error
}
$preflight.engine=($identityOutput -join "`n")|ConvertFrom-Json
$preflight.ready=$true
$preflight|ConvertTo-Json -Depth 4|Set-Content -LiteralPath (Join-Path $run 'preflight.json') -Encoding utf8
$roots=@()
foreach($user in Get-ChildItem 'D:\Steam\userdata' -Directory){
    $remote=Join-Path $user.FullName '250900\remote'
    if(Test-Path -LiteralPath $remote){$roots+=$remote}
}
$files=@((Join-Path $isaacProfile 'options.ini'),(Join-Path $game 'steam_appid.txt'))
$localSaveFiles=@()
foreach($slot in 1..3){
    $localSaveFiles+=@(Join-Path $isaacProfile ('persistentgamedata'+$slot+'.dat'))
    $localSaveFiles+=@(Join-Path $isaacProfile ('gamestate'+$slot+'.dat'))
}
$files+=$localSaveFiles
foreach($root in $roots){$files+=@(Get-ChildItem -LiteralPath $root -File -Recurse | ForEach-Object FullName)}
foreach($user in Get-ChildItem 'D:\Steam\userdata' -Directory){
    $cache=Join-Path $user.FullName '250900\remotecache.vdf'
    if(Test-Path -LiteralPath $cache){$files+=$cache}
}
$records=@();$started=$null;$fixtureStartedAt=$null;$restoration=$false
$bridgeRoot=Join-Path $game 'mods\isaac_assist_room_test035'
$modMarkers=@();$bridgeFiles=@();$bridgeCreated=$false
try { if($Scenario -eq 'room-test'){
    if(Test-Path -LiteralPath $bridgeRoot){throw 'A previous room-test bridge remains; preserve its recovery files and restore it before retrying'}
    foreach($asset in @('main.lua','metadata.xml','IsaacRoomTurbo.dll','IsaacRoomTurboInject.exe')){
        if(-not(Test-Path -LiteralPath (Join-Path $RoomTestRuntime $asset))){throw ('Missing room-test asset: '+$asset)}
    }
    foreach($modRoot in @((Join-Path $game 'mods'),'D:\Steam\steamapps\workshop\content\250900')){
        if(Test-Path -LiteralPath $modRoot){
            foreach($mod in Get-ChildItem -LiteralPath $modRoot -Directory){$modMarkers+=Join-Path $mod.FullName 'disable.it'}
        }
    }
    $modMarkers=@($modMarkers|Select-Object -Unique)
    $bridgeFiles=@('main.lua','metadata.xml','room_test_config.lua')|ForEach-Object {Join-Path $bridgeRoot $_}
    if($captureAllCallbacks){$bridgeFiles+=Join-Path $bridgeRoot 'engine_event_capture.lua'}
    $files+=@($modMarkers)+@($bridgeFiles)
} } catch {
    $preflight.ready=$false;$preflight.error=$_.Exception.Message
    $preflight|ConvertTo-Json -Depth 5|Set-Content -LiteralPath (Join-Path $run 'preflight.json') -Encoding utf8
    throw
}
$oldAppId=[Environment]::GetEnvironmentVariable('SteamAppId','Process')
$oldPythonPath=[Environment]::GetEnvironmentVariable('PYTHONPATH','Process')
foreach($path in $files){
    $exists=Test-Path -LiteralPath $path
    $copy=Join-Path $run ('backup-'+$records.Count+'.bin')
    $hash=$null
    if($exists){Copy-Item -LiteralPath $path -Destination $copy;$hash=(Get-FileHash -LiteralPath $path).Hash}
    $records+=@{path=$path;existed=$exists;backup=$copy;hash=$hash}
}
$records | ConvertTo-Json -Depth 5 | Set-Content (Join-Path $run 'backups.json') -Encoding utf8
$room=Join-Path $run 'external-room.xml'
@'
<?xml version="1.0" encoding="UTF-8"?>
<room variant="991227" name="External controller normal combat" type="1" subtype="0" shape="1" width="13" height="7" difficulty="1" weight="1">
 <door exists="True" x="-1" y="3"/><door exists="True" x="6" y="-1"/>
 <door exists="True" x="13" y="3"/><door exists="True" x="6" y="7"/>
 <spawn x="2" y="1"><entity type="85" variant="0" subtype="0" weight="1"/></spawn>
 <spawn x="10" y="1"><entity type="10" variant="0" subtype="0" weight="1"/></spawn>
 <spawn x="10" y="5"><entity type="29" variant="0" subtype="0" weight="1"/></spawn>
 <spawn x="2" y="5"><entity type="10" variant="0" subtype="0" weight="1"/></spawn>
</room>
'@ | Set-Content -LiteralPath $room -Encoding utf8
if($Scenario -eq 'input-echo'){
    $xml=[IO.File]::ReadAllText($room)
    [IO.File]::WriteAllText($room,[regex]::Replace($xml,'(?s)<spawn\b.*?</spawn>',''))
}
try {
    $optionPath=Join-Path $isaacProfile 'options.ini'
    $options=[IO.File]::ReadAllText($optionPath)
    $originalUsesSteamCloud=$options -match '(?m)^SteamCloud=1\s*$'
    # These are single-player diagnostics. Pause if input focus is lost, then
    # let the observer report the interruption instead of running unassisted.
    $pauseForFocus=if($InputMode -eq 'windowmessage'){'0'}else{'1'}
    $modsValue=if($Scenario -eq 'room-test'){'1'}else{'0'}
    foreach($pair in @(@('SteamCloud','0'),@('PauseOnFocusLost',$pauseForFocus),@('EnableMods',$modsValue))){
        $pattern='(?m)^'+$pair[0]+'=[^\r\n]*'
        if($options -notmatch $pattern){throw ('Missing existing option '+$pair[0])}
        $options=[regex]::Replace($options,$pattern,($pair[0]+'='+$pair[1]))
    }
    [IO.File]::WriteAllText($optionPath,$options)
    if($Scenario -eq 'room-test'){
        foreach($marker in $modMarkers){[IO.File]::WriteAllText($marker,'temporary room-test isolation')}
        New-Item -ItemType Directory -Path $bridgeRoot | Out-Null
        $bridgeCreated=$true
        Copy-Item -LiteralPath (Join-Path $RoomTestRuntime 'main.lua') -Destination (Join-Path $bridgeRoot 'main.lua')
        Copy-Item -LiteralPath (Join-Path $RoomTestRuntime 'metadata.xml') -Destination (Join-Path $bridgeRoot 'metadata.xml')
        if($captureAllCallbacks){Copy-Item -LiteralPath (Join-Path $RoomTestRuntime 'engine_event_capture.lua') -Destination (Join-Path $bridgeRoot 'engine_event_capture.lua')}
        $portProbe=[Net.Sockets.TcpListener]::new([Net.IPAddress]::Loopback,0)
        $portProbe.Start();$bridgePort=$portProbe.LocalEndpoint.Port;$portProbe.Stop()
        $bridgeToken=[guid]::NewGuid().ToString('N')
        $captureConfig=@{port=$bridgePort;token=$bridgeToken;runtime_directory=$RoomTestRuntime}
        $luaConfig="return {port="+$bridgePort+",token='"+$bridgeToken+"'"
        if($captureAllCallbacks){
            $captureConfig.capture_mode='all_callbacks_raw'
            foreach($capturePair in @(@('capture_path','engine-events.jsonl'),@('capture_damage_path','engine-damage-events.jsonl'),@('capture_status_path','engine-event-status.json'))){
                $captureValue=Join-Path $run $capturePair[1]
                $captureConfig[$capturePair[0]]=$captureValue
                $luaValue=$captureValue.Replace('\','\\').Replace("'","\'").Replace("`r",'\r').Replace("`n",'\n')
                $luaConfig+=(','+$capturePair[0]+"='"+$luaValue+"'")
            }
        }
        [IO.File]::WriteAllText((Join-Path $bridgeRoot 'room_test_config.lua'),($luaConfig+'}'))
        $roomTestConfig=Join-Path $PSScriptRoot 'room-test-bridge.json'
        $captureConfig|ConvertTo-Json|Set-Content -LiteralPath $roomTestConfig -Encoding utf8
        @{temporary_bridge=$bridgeRoot;disabled_markers=$modMarkers;no_turbo=[bool]$NoTurbo}|
            ConvertTo-Json -Depth 4|Set-Content -LiteralPath (Join-Path $run 'room-test-setup.json') -Encoding utf8
    }
    # With SteamCloud=0 the game reads profile-local generic filenames. Seed
    # them from this logged-in user's original Repentance+ progress, without
    # changing unlocks or the source remote files. All local destinations were
    # explicitly backed up above, including paths that did not yet exist.
    if($originalUsesSteamCloud){
        $activeUser=(Get-ItemProperty -LiteralPath 'HKCU:\Software\Valve\Steam\ActiveProcess').ActiveUser
        if(-not $activeUser){throw 'No authenticated Steam user for test save preparation'}
        $activeRemote=Join-Path 'D:\Steam\userdata' ($activeUser.ToString()+'\250900\remote')
        foreach($slot in 1..3){
            $sourceSave=Join-Path $activeRemote ('rep+persistentgamedata'+$slot+'.dat')
            if(Test-Path -LiteralPath $sourceSave){
                Copy-Item -LiteralPath $sourceSave -Destination (Join-Path $isaacProfile ('persistentgamedata'+$slot+'.dat')) -Force
            }
        }
        @{active_steam_user=$activeUser;source=$activeRemote;progress_modified=$false} | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $run 'save-source.json') -Encoding utf8
    }
    # A separate native test room needs no Lua bootstrap, mod, engine patch or UI navigation.
    $fixtureStartedAt=Get-Date
    $gameArgs=@(('--load-room="'+$room+'"'),'--set-stage=1','--set-stage-type=0')
    if($Scenario -in @('hard-start','whole-run','first-floor','until-death','room-test')){$gameArgs=@()}
    if($Scenario -eq 'room-test'){$gameArgs=@('--luadebug')}
    if($LaunchMode -eq 'steam'){
        $started=Start-Process -FilePath 'D:\Steam\steam.exe' -WorkingDirectory 'D:\Steam' -ArgumentList (@('-applaunch','250900')+$gameArgs) -WindowStyle Normal -PassThru -RedirectStandardOutput (Join-Path $run 'native-stdout.txt') -RedirectStandardError (Join-Path $run 'native-stderr.txt')
    } else {
        [IO.File]::WriteAllText((Join-Path $game 'steam_appid.txt'),'250900',[Text.Encoding]::ASCII)
        [Environment]::SetEnvironmentVariable('SteamAppId','250900','Process')
        if($gameArgs.Count){
            $started=Start-Process -FilePath (Join-Path $game 'isaac-ng.exe') -WorkingDirectory $game -ArgumentList $gameArgs -WindowStyle Normal -PassThru -RedirectStandardOutput (Join-Path $run 'native-stdout.txt') -RedirectStandardError (Join-Path $run 'native-stderr.txt')
        } else {
            $started=Start-Process -FilePath (Join-Path $game 'isaac-ng.exe') -WorkingDirectory $game -WindowStyle Normal -PassThru -RedirectStandardOutput (Join-Path $run 'native-stdout.txt') -RedirectStandardError (Join-Path $run 'native-stderr.txt')
        }
    }
    @{launcher_pid=$started.Id;mode=$LaunchMode;started_at=$fixtureStartedAt.ToUniversalTime().ToString('o');game_arguments=$gameArgs;game_directory=$game} |
        ConvertTo-Json -Depth 3|Set-Content -LiteralPath (Join-Path $run 'initial-launch.json') -Encoding utf8
    $env:PYTHONPATH='D:\IsaacAccessAssist\vendor'
    $observerArgs=@('--pid',$started.Id,'--process-mode',$LaunchMode,'--seconds',$Seconds,'--output',$run,'--input-mode',$InputMode)
    if($Scenario -eq 'input-echo'){$observerArgs+='--input-echo'}
    if($Scenario -eq 'hard-start'){$observerArgs+=@('--start-hard-run','--start-only')}
    if($Scenario -eq 'whole-run'){$observerArgs+=@('--start-hard-run','--whole-run')}
    if($Scenario -eq 'first-floor'){$observerArgs+=@('--start-hard-run','--whole-run','--first-floor-goal')}
    if($Scenario -eq 'until-death'){$observerArgs+=@('--start-hard-run','--whole-run','--until-death','--stall-seconds',$StallSeconds,'--room-seconds',$RoomSeconds)}
    if($Scenario -eq 'room-test'){
        $observerArgs+=@('--room-test-config',$roomTestConfig,'--stall-seconds',$StallSeconds,'--room-seconds',$RoomSeconds)
        if($NoTurbo){$observerArgs+=@('--no-turbo','--realtime')}
    }
    if($StopFile){$observerArgs+=@('--stop-file',$StopFile)}
    if($ObserverExecutable){
        $observerBegan=Get-Date
        $observerProcess=Start-Process -FilePath $ObserverExecutable -ArgumentList (@('--fixture-observer')+@($observerArgs|ForEach-Object {'"'+$_+'"'})) -WindowStyle Hidden -PassThru
        $stopBegan=$null
        $lastProgressEcho=$observerBegan
        while(-not $observerProcess.WaitForExit(500)){
            $now=Get-Date
            if($StopFile -and (Test-Path -LiteralPath $StopFile) -and (Get-Content -Encoding UTF8 -LiteralPath $StopFile -Raw).Trim() -eq 'stop'){
                if(-not $stopBegan){$stopBegan=$now}
            }
            $checkpoint=Get-Item -LiteralPath (Join-Path $run 'progress.json') -ErrorAction SilentlyContinue
            if($Scenario -eq 'room-test' -and $checkpoint -and ($now-$lastProgressEcho).TotalSeconds -ge 5){
                try {
                    $live=Get-Content -Encoding UTF8 -LiteralPath $checkpoint.FullName -Raw|ConvertFrom-Json
                    # Console output bypasses the caller's launcher.log redirection.
                    $aiHz=if($null -ne $live.ai_hz){[Math]::Round($live.ai_hz,1)}else{'n/a'}
                    [Console]::WriteLine(('Progress: frame={0} stage={1} room={2} observations={3} completed={4} damage={5} speed={6:F2}x AI={7}Hz task={8}' -f $live.frame,$live.stage,$live.room,$live.observations,$live.rooms_completed,$live.damage_observations,$live.game_speed,$aiHz,$live.task))
                } catch { # A concurrent status replacement is retried next time.
                }
                $lastProgressEcho=$now
            }
            $expired=if($checkpoint){($now-$checkpoint.LastWriteTime).TotalSeconds -gt ($StallSeconds+15)}else{($now-$observerBegan).TotalSeconds -gt 90}
            if($expired -or ($stopBegan -and ($now-$stopBegan).TotalSeconds -gt 10)){
                @{reason=$(if($stopBegan){'manual_stop'}else{'observer_watchdog_timeout'});observer_pid=$observerProcess.Id} | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $run 'observer-watchdog.json') -Encoding utf8
                # A one-file build has a bootloader and child. Stop only this
                # invocation's matching executable; never a pre-existing GUI.
                Get-Process -Name ([IO.Path]::GetFileNameWithoutExtension($ObserverExecutable)) -ErrorAction SilentlyContinue |
                    Where-Object {$_.Path -eq $ObserverExecutable -and $_.StartTime -ge $observerBegan} | Stop-Process -ErrorAction SilentlyContinue
                [void]$observerProcess.WaitForExit(5000)
                break
            }
        }
        $observerCode=$observerProcess.ExitCode
    } else {
        & $python (Join-Path $PSScriptRoot 'fixture_observer.py') @observerArgs
        $observerCode=$LASTEXITCODE
    }
    if($observerCode -ne 0){throw ('Observer exited '+$observerCode)}
    $started.Refresh()
    @{mode=$LaunchMode;launcher_pid=$started.Id;launcher_exited=$started.HasExited;launcher_exit_code=$(if($started.HasExited){$started.ExitCode}else{$null})} | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $run 'launch-result.json') -Encoding utf8
    if($Scenario -in @('combat','whole-run','first-floor','until-death','room-test')){
        $observed=Get-Content -Encoding UTF8 -Raw -LiteralPath (Join-Path $run 'observer-result.json') | ConvertFrom-Json
        if($observed.observations -eq 0){throw ('No controlled game observations; stop_reason='+$observed.stop_reason)}
    }
} catch {
    $_ | Out-String | Set-Content -LiteralPath (Join-Path $run 'launcher-error.txt') -Encoding utf8
    throw
} finally {
    # No game existed at entry. Steam may replace our launch process; accept
    # only the exact game executable started since this fixture's launch.
    # Get-Process avoids a WMI permission failure blocking save restoration.
    $owned=@(Get-Process isaac-ng -ErrorAction SilentlyContinue | Where-Object {$fixtureStartedAt -and $_.Path -eq (Join-Path $game 'isaac-ng.exe') -and $_.StartTime -ge $fixtureStartedAt})
    foreach($process in $owned){
        $exiting=Get-Process -Id $process.Id -ErrorAction SilentlyContinue
        Stop-Process -Id $process.Id -ErrorAction SilentlyContinue
        if($exiting){[void]$exiting.WaitForExit(5000)}
    }
    [Environment]::SetEnvironmentVariable('SteamAppId',$oldAppId,'Process')
    [Environment]::SetEnvironmentVariable('PYTHONPATH',$oldPythonPath,'Process')
    if(Get-Process isaac-ng -ErrorAction SilentlyContinue){throw ('Live game blocks restoration; backups preserved in '+$run)}
    Copy-Item -LiteralPath (Join-Path $isaacProfile 'log.txt') -Destination (Join-Path $run 'game-log.txt') -ErrorAction SilentlyContinue
    foreach($root in $roots){
        $known=@($records | ForEach-Object path)
        foreach($file in Get-ChildItem -LiteralPath $root -File -Recurse){
            if($file.FullName -notin $known -and $file.Extension -eq '.dat'){
                $absolute=[IO.Path]::GetFullPath($file.FullName)
                if(-not $absolute.StartsWith($root+'\',[StringComparison]::OrdinalIgnoreCase)){throw 'Invalid restoration path'}
                Remove-Item -LiteralPath $absolute -Force
            }
        }
    }
    foreach($record in $records){
        if($record.existed){
            Copy-Item -LiteralPath $record.backup -Destination $record.path -Force
            if((Get-FileHash -LiteralPath $record.path).Hash -ne $record.hash){throw ('Restoration hash mismatch: '+$record.path)}
        } elseif(Test-Path -LiteralPath $record.path){
            if($record.path -in $modMarkers -or $record.path -in $bridgeFiles){
                Remove-Item -LiteralPath $record.path -Force
                continue
            }
            if($record.path -in $localSaveFiles){
                $localArchive=Join-Path $run 'generated-local-saves'
                New-Item -ItemType Directory -Force -Path $localArchive | Out-Null
                Move-Item -LiteralPath $record.path -Destination (Join-Path $localArchive (Split-Path -Leaf $record.path))
                continue
            }
            # Archive the temporary app-ID rather than deleting it.
            if($record.path -ne (Join-Path $game 'steam_appid.txt')){throw 'Unexpected temporary path'}
            Move-Item -LiteralPath $record.path -Destination (Join-Path $run 'temporary-steam_appid.txt')
        }
    }
    if($bridgeCreated -and (Test-Path -LiteralPath $bridgeRoot)){
        # Remove only the empty directory created by this invocation. Unknown
        # files cause a restoration failure instead of a recursive deletion.
        Remove-Item -LiteralPath $bridgeRoot -ErrorAction Stop
    }
    $restoration=$true
    @{restored=$restoration;files=$records.Count;computer_use=$false;game_exe_changed=$false;online_verified=$false} | ConvertTo-Json | Set-Content (Join-Path $run 'restoration.json') -Encoding utf8
    Write-Output ('Fixture evidence: '+$run)
}
