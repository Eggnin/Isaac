param([switch]$Preview)
$ErrorActionPreference='Stop'
# User approved these 20 disposable resource directories in this chat.
# This file is for manual use; automatic deletion was blocked by the execution environment.
# Preserve every run's engine.log, configuration.json, saves, and result files.
$targets=@(
 'D:/Isaac/research/boss-lab/training-runs/1793295477771-27312-0/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295486853-27312-1/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295495992-27312-2/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295505074-27312-3/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295514148-27312-4/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295523227-27312-5/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295532280-27312-6/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295541450-27312-7/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295550613-27312-8/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295559681-27312-9/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295568680-27312-10/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295577748-27312-11/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295586802-27312-12/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295595871-27312-13/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295605257-27312-14/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295614733-27312-15/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295376938-21840-0/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295320692-12792-0/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295241868-4336-0/instance/resources',
 'D:/Isaac/research/boss-lab/training-runs/1793295624271-27312-16/instance/resources'
)
$allowedRoot=[System.IO.Path]::GetFullPath('D:/Isaac/research/boss-lab/training-runs')
$checked=@()
foreach($target in $targets) {
 $absolute=[System.IO.Path]::GetFullPath($target)
 if(!$absolute.StartsWith($allowedRoot+[System.IO.Path]::DirectorySeparatorChar,[System.StringComparison]::OrdinalIgnoreCase)){throw "Target outside approved root: $absolute"}
 if(!(Test-Path -LiteralPath $absolute)){continue}
 $ancestor=$absolute
 while($ancestor.Length -ge $allowedRoot.Length) {
  $item=Get-Item -LiteralPath $ancestor -Force
  if(($item.Attributes -band [System.IO.FileAttributes]::ReparsePoint) -ne 0){throw "Refusing a junction: $ancestor"}
  if($ancestor -eq $allowedRoot){break}
  $ancestor=Split-Path -Parent $ancestor
 }
 $checked+=$absolute
}
foreach($target in $checked) {
 Write-Output $target
 if(!$Preview){Remove-Item -LiteralPath $target -Recurse -Force}
}
Write-Output ("Resource directories: "+$checked.Count+"; preview: "+$Preview)
Write-Output ("Free GiB on D: "+[Math]::Round((Get-PSDrive D).Free/1GB,2))
