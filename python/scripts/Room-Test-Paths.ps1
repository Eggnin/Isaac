function Get-RoomCaptureDirectory {
    param(
        [Parameter(Mandatory=$true)][string]$ProjectRoot,
        [Parameter(Mandatory=$true)][string]$RunDirectory
    )
    $projectPath=[IO.Path]::GetFullPath($ProjectRoot).TrimEnd('\')
    $runPath=[IO.Path]::GetFullPath($RunDirectory).TrimEnd('\')
    if(-not $runPath.StartsWith($projectPath+'\',[StringComparison]::OrdinalIgnoreCase)){
        throw 'Capture directory must be inside the project'
    }
    if(-not [IO.Directory]::Exists($runPath)){throw 'Capture directory does not exist'}
    if($runPath -notmatch '[^\x00-\x7F]'){return $runPath}

    # Lua's narrow CRT file API does not decode UTF-8 Windows paths.
    # A junction gives it an ASCII name for the same physical project.
    $aliasPath=Join-Path ([IO.Path]::GetPathRoot($projectPath)) 'IsaacAssistIO'
    if(-not(Test-Path -LiteralPath $aliasPath)){
        New-Item -ItemType Junction -Path $aliasPath -Target $projectPath -ErrorAction Stop | Out-Null
    }
    $alias=Get-Item -LiteralPath $aliasPath -Force -ErrorAction Stop
    if($alias.LinkType -ne 'Junction'){throw ('Capture alias is not a junction: '+$aliasPath)}
    $target=[IO.Path]::GetFullPath([string]@($alias.Target)[0]).TrimEnd('\')
    if(-not $target.Equals($projectPath,[StringComparison]::OrdinalIgnoreCase)){
        throw ('Capture alias points to another directory: '+$aliasPath)
    }
    $captureDirectory=Join-Path $aliasPath $runPath.Substring($projectPath.Length+1)
    if($captureDirectory -match '[^\x00-\x7F]'){
        throw 'Capture path below the project root must use ASCII directory names'
    }
    if(-not [IO.Directory]::Exists($captureDirectory)){throw 'Capture alias does not resolve to the existing run directory'}
    return $captureDirectory
}
