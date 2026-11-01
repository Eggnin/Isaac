param([string]$Destination)
$ErrorActionPreference='Stop'
$tcc=Join-Path $PSScriptRoot '..\..\tools\tcc-win32\tcc\tcc.exe'
if(-not $Destination){$Destination=Join-Path $PSScriptRoot 'build'}
New-Item -ItemType Directory -Force -Path $Destination | Out-Null
$mh=Join-Path $PSScriptRoot 'minhook'
$objects=@()
foreach($name in @('turbo.c','minhook/src/buffer.c','minhook/src/hook.c','minhook/src/trampoline.c','minhook/src/hde/hde32.c')){
    $object=Join-Path $Destination (($name -replace '[/.]','_')+'.o')
    & $tcc -c -I $PSScriptRoot -I (Join-Path $mh 'include') -I (Join-Path $mh 'src') -o $object (Join-Path $PSScriptRoot $name)
    if($LASTEXITCODE -ne 0){throw ('Native object failed: '+$name)}
    $objects+=$object
}
& $tcc -shared -o (Join-Path $Destination 'IsaacRoomTurbo.dll') @objects
if($LASTEXITCODE -ne 0){throw 'Room turbo build failed'}
& $tcc -o (Join-Path $Destination 'IsaacRoomTurboInject.exe') (Join-Path $PSScriptRoot 'inject.c')
if($LASTEXITCODE -ne 0){throw 'Room turbo injector build failed'}
