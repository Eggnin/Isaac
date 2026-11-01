param([string]$Outputs)
$ErrorActionPreference='Stop'
$env:PSModulePath=(Join-Path $PSHOME 'Modules')+[IO.Path]::PathSeparator+$env:PSModulePath
$checked=0
foreach($path in @((Join-Path $Outputs 'Start-Loop-Runs.ps1'),(Join-Path $PSScriptRoot 'run-native-fixture.ps1'))){
    $parseErrors=$null;$parseTokens=$null
    $ast=[System.Management.Automation.Language.Parser]::ParseFile($path,[ref]$parseTokens,[ref]$parseErrors)
    if($parseErrors){throw 'PowerShell syntax failure'}
    # Execute only the parameter declaration, never the launcher body.
    $parameters=[scriptblock]::Create($ast.ParamBlock.Extent.Text+'; [bool]$NoTurbo')
    if((& $parameters) -ne $true){throw 'Default must disable turbo'}
    $checked++
}
$nativeAst=$ast
$guard=@($nativeAst.FindAll({param($n) $n -is [System.Management.Automation.Language.TryStatementAst] -and $n.Extent.Text.Contains('A previous room-test bridge remains')},$true))[0]
if(-not $guard){throw 'Missing room-test preflight guard'}
$runtimeRoot=$PSScriptRoot
$guardText=$guard.Extent.Text.Replace('$PSScriptRoot','$runtimeRoot')
$temporary=Join-Path ([IO.Path]::GetTempPath()) ('isaac-offline-preflight-'+[guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $temporary | Out-Null
try {
    foreach($leftover in @($true,$false)){
        $run=Join-Path $temporary ('case-'+[int]$leftover)
        New-Item -ItemType Directory -Path $run | Out-Null
        $bridgeRoot=Join-Path $run 'bridge';$Scenario='room-test';$preflight=@{ready=$true}
        if($leftover){New-Item -ItemType Directory -Path $bridgeRoot | Out-Null}
        try { & ([scriptblock]::Create($guardText));throw 'Expected preflight rejection' } catch {}
        $result=Get-Content -LiteralPath (Join-Path $run 'preflight.json') -Encoding UTF8 -Raw|ConvertFrom-Json
        if($result.ready -ne $false -or -not $result.error){throw 'Permanent setup failure was not classified as preflight_failed'}
        if($leftover -and $result.error -notmatch 'previous room-test bridge'){throw 'Wrong leftover error'}
        if(-not $leftover -and $result.error -notmatch 'Missing room-test asset'){throw 'Wrong missing-asset error'}
        Remove-Item -LiteralPath (Join-Path $run 'preflight.json')
        if($leftover){Remove-Item -LiteralPath $bridgeRoot}
        Remove-Item -LiteralPath $run
        $checked++
    }
} finally {
    if((Test-Path -LiteralPath $temporary) -and -not @(Get-ChildItem -LiteralPath $temporary).Count){[IO.Directory]::Delete($temporary)}
}
Write-Output ('Offline launcher checks passed: '+$checked+'. No launcher body or game executed.')
