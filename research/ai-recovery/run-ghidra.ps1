param(
    [string]$InputExe = "D:\Steam\steamapps\common\The Binding of Isaac Rebirth\isaac-ng.exe",
    [string]$SeedFile = "ai-seeds.tsv",
    [string]$OutputName = "ghidra-export",
    [switch]$Reanalyze
)

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
$Headless = Join-Path $Root "tools\ghidra_11.1.2_PUBLIC\support\analyzeHeadless.bat"
$ProjectDir = Join-Path $Root "ghidra-project"
$ProjectName = "IsaacJ460_7122ac287799"
$ScriptDir = Join-Path $Root "ghidra"
$Seeds = Join-Path $Root $SeedFile
$OutputDir = Join-Path $Root $OutputName
$LogPath = Join-Path $Root ($OutputName + ".log")
$ScriptLogPath = Join-Path $Root ($OutputName + ".script.log")
$ProjectFile = Join-Path $ProjectDir "$ProjectName.gpr"

foreach ($Required in @($Headless, $InputExe, $Seeds, (Join-Path $ScriptDir "ExportAiFunctions.java"))) {
    if (-not (Test-Path -LiteralPath $Required)) {
        throw "Required input not found: $Required"
    }
}

New-Item -ItemType Directory -Force -Path $ProjectDir, $OutputDir | Out-Null

$ProgramArgs = if (Test-Path -LiteralPath $ProjectFile) {
    if ($Reanalyze) {
        @("-process", (Split-Path -Leaf $InputExe), "-analysisTimeoutPerFile", "1800")
    } else {
        @("-process", (Split-Path -Leaf $InputExe), "-noanalysis")
    }
} else {
    @("-import", $InputExe, "-analysisTimeoutPerFile", "1800")
}

$Arguments = @(
    $ProjectDir,
    $ProjectName
) + $ProgramArgs + @(
    "-scriptPath", $ScriptDir,
    "-scriptlog", $ScriptLogPath,
    "-postScript", "ExportAiFunctions.java",
    $Seeds,
    $OutputDir
)

Write-Host "Ghidra project: $ProjectFile"
Write-Host "Input: $InputExe"
Write-Host "Output: $OutputDir"

& $Headless @Arguments 2>&1 | Tee-Object -FilePath $LogPath
if ($LASTEXITCODE -ne 0) {
    throw "Ghidra exited with status $LASTEXITCODE. See $LogPath"
}

$Manifest = Join-Path $OutputDir "ai-decompiled.json"
if (-not (Test-Path -LiteralPath $Manifest)) {
    throw "Ghidra completed without producing $Manifest"
}

Write-Host "Manifest: $Manifest"
