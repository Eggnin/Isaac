$ErrorActionPreference='Stop'
$projectRoot=Split-Path $PSScriptRoot -Parent
$releaseRoot=Join-Path $projectRoot 'dist'
$latest=Get-Content -LiteralPath (Join-Path $releaseRoot 'Latest-Isaac-Program.json') -Raw -Encoding UTF8 | ConvertFrom-Json
$manifest=Get-Content -LiteralPath (Join-Path $releaseRoot $latest.manifest) -Raw -Encoding UTF8 | ConvertFrom-Json
$program=Join-Path $releaseRoot $latest.executable
if((Get-FileHash -LiteralPath $program).Hash -ne $manifest.sha256.ToUpperInvariant()){throw 'Program hash does not match build manifest'}
Start-Process -FilePath $program -WorkingDirectory $projectRoot -WindowStyle Hidden
