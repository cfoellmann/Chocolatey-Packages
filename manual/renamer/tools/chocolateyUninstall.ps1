$packageName = 'renamer.install'
$installerType = 'EXE'
$programFiles = 'C:\Program Files (x86)' # [Environment]::GetEnvironmentVariable('ProgramFiles(x86)', [System.EnvironmentVariableTarget]::Machine)
$file = Join-Path $programFiles '\ReNamer\unins000.exe'
$silentArgs = "/VERYSILENT"
$validExitCodes = @(0)

Uninstall-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -File "$file" -ValidExitCodes "$validExitCodes"
