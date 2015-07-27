$packageName = 'renamer.portable'
$validExitCodes = @(0)
$targetFolder = Join-Path $(Get-BinRoot) 'renamer'

Echo ("Deleting " + $targetFolder)
Remove-Item -Force -Recurse $targetFolder
