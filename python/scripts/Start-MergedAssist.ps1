param([switch]$Check)
$ErrorActionPreference = 'Stop'
$pythonRoot = Get-Item -LiteralPath (Split-Path -Parent $PSScriptRoot)
$canonicalDirectory = $pythonRoot
while ($canonicalDirectory.LinkType -eq 'Junction') {
    $canonicalDirectory = Get-Item -LiteralPath $canonicalDirectory.Target
}
$mergedLauncher = Join-Path $canonicalDirectory.Parent.FullName 'cpp\Start-Gamebot.ps1'
& $mergedLauncher -Check:$Check
