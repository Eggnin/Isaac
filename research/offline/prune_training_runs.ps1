[CmdletBinding()]
param(
    [string]$ResearchRoot = 'D:\Isaac\research',
    [string[]]$KeepReports = @(),
    [switch]$Execute
)

$ErrorActionPreference = 'Stop'
$KeepReports = @($KeepReports | ForEach-Object { $_ -split ',' } |
    ForEach-Object { $_.Trim() } | Where-Object { $_ })
$root = [IO.Path]::GetFullPath($ResearchRoot).TrimEnd('\')
$runsRoot = [IO.Path]::GetFullPath((Join-Path $root 'training-runs')).TrimEnd('\')
if (-not (Test-Path -LiteralPath $runsRoot -PathType Container)) {
    throw "Training runs directory not found: $runsRoot"
}

$refs = [Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
$reports = Get-ChildItem -LiteralPath $root -Recurse -File |
    Where-Object {
        $_.FullName -notlike "$runsRoot\*" -and
        $_.Extension -in '.json', '.md', '.txt'
    }
if ($KeepReports.Count -gt 0) {
    $reports = $reports | Where-Object {
        $relativePath = $_.FullName.Substring($root.Length).TrimStart('\')
        $KeepReports | Where-Object { $relativePath -like $_ } | Select-Object -First 1
    }
}
foreach ($report in $reports) {
    $text = [IO.File]::ReadAllText($report.FullName)
    foreach ($match in [regex]::Matches($text, 'training-runs(?:\\+|/)+([0-9]+-[0-9]+-[0-9]+)')) {
        [void]$refs.Add($match.Groups[1].Value)
    }
}

$runs = @(Get-ChildItem -LiteralPath $runsRoot -Directory)
$unreferenced = @($runs | Where-Object { -not $refs.Contains($_.Name) })
foreach ($run in $unreferenced) {
    $resolved = [IO.Path]::GetFullPath($run.FullName)
    if ([IO.Path]::GetDirectoryName($resolved) -ne $runsRoot) {
        throw "Refusing to delete outside training-runs: $resolved"
    }
    if ($run.Attributes -band [IO.FileAttributes]::ReparsePoint) {
        throw "Refusing to delete a reparse point: $resolved"
    }
}

$result = [pscustomobject]@{
    RunsRoot = $runsRoot
    RunDirectories = $runs.Count
    ReferencedDirectories = @($runs | Where-Object { $refs.Contains($_.Name) }).Count
    UnreferencedDirectories = $unreferenced.Count
    Execute = [bool]$Execute
}

if (-not $Execute) {
    $result
    return
}

$unreferenced | Sort-Object LastWriteTime | ForEach-Object {
    Remove-Item -LiteralPath $_.FullName -Recurse -Force
}

[pscustomobject]@{
    DeletedDirectories = $unreferenced.Count
    RemainingDirectories = @(Get-ChildItem -LiteralPath $runsRoot -Directory).Count
    FreeGB = [math]::Round((Get-PSDrive -Name ([IO.Path]::GetPathRoot($runsRoot).TrimEnd('\', ':'))).Free / 1GB, 2)
}
