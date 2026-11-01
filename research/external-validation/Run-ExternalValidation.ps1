param(
    [int]$Steps=600,
    [string]$Cases='20.0.0,413.0.0,886.1.0,406.0.0,411.0.0,412.0.0,60.0.0,68.1.0',
    [string]$Output='',
    [string]$SourceExe='D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe'
)
$ErrorActionPreference='Stop'
$taskRoot=$PSScriptRoot
$projectRoot=Split-Path -Parent (Split-Path -Parent $taskRoot)
if (!$Output) { $Output=Join-Path $projectRoot ('validation/external-memory-'+(Get-Date -Format 'yyyyMMdd-HHmmss-fff')) }
$Output=[System.IO.Path]::GetFullPath($Output)
& "$taskRoot/build.ps1"
if ($LASTEXITCODE -ne 0) { throw 'External validation build failed' }
& node "$taskRoot/run.mjs" "--steps=$Steps" "--cases=$Cases" '--familiar=true' '--transition=true' "--source-exe=$SourceExe" "--output=$Output" 2>&1 | Tee-Object -FilePath "$Output.log"
$runExit=$LASTEXITCODE
if (Test-Path -LiteralPath "$Output/report.json") {
    & python -X utf8 "$taskRoot/summarize.py" $Output
    if ($LASTEXITCODE -ne 0) { throw 'Mechanism summary failed' }
    & python -X utf8 "$taskRoot/analyze_unmodeled.py"
    if ($LASTEXITCODE -ne 0) { throw 'Unmodeled field triage failed' }
    & python -X utf8 "$projectRoot/research/ai-recovery/build_runtime_field_coverage.py" --external-report "$Output/report.json"
    if ($LASTEXITCODE -ne 0) { throw 'Coverage matrix update failed' }
}
Write-Output "External validation results: $Output"
exit $runExit
