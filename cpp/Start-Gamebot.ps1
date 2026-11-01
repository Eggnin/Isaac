param([switch]$Check,[switch]$Build)
$ErrorActionPreference='Stop'
$projectRoot=Split-Path -Parent $PSScriptRoot
$executable=Join-Path $projectRoot 'bin/IsaacGamebot.exe'
if ($Check) {
 [pscustomobject]@{engine='cpp';executable=$executable;exists=(Test-Path -LiteralPath $executable);source=(Join-Path $PSScriptRoot 'src')} | ConvertTo-Json
 return
}
$newestSource=Get-ChildItem -LiteralPath (Join-Path $PSScriptRoot 'src'),(Join-Path $PSScriptRoot 'include'),(Join-Path $PSScriptRoot 'app.rc'),(Join-Path $PSScriptRoot 'app.manifest') -File -Recurse | Sort-Object LastWriteTimeUtc -Descending | Select-Object -First 1
$needBuild=$Build -or !(Test-Path -LiteralPath $executable)
if (!$needBuild -and $newestSource) { $needBuild=$newestSource.LastWriteTimeUtc -gt (Get-Item -LiteralPath $executable).LastWriteTimeUtc }
if ($needBuild) { & (Join-Path $PSScriptRoot 'build.ps1'); if (!$?) { throw 'C++ build failed.' } }
Start-Process -FilePath $executable -WorkingDirectory $projectRoot -Verb RunAs -WindowStyle Normal
