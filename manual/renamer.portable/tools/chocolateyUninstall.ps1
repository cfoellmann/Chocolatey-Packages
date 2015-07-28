$packageName = 'renamer.portable'
$validExitCodes = @(0)
$targetFolder = Join-Path $(Get-BinRoot) 'renamer'

Remove-Item -Force -Recurse $targetFolder
