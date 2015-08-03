$packageName = 'renamer.install'
$installerType = 'EXE'
$silentArgs = "/VERYSILENT"
$validExitCodes = @(0)

$is64bit = (Get-WmiObject Win32_Processor).AddressWidth -eq 64
$programFiles = $env:programfiles
if ($is64bit) {$programFiles = ${env:ProgramFiles(x86)}}
$fsObject = New-Object -ComObject Scripting.FileSystemObject
$programFiles = $fsObject.GetFolder("$programFiles").ShortPath
$file = $(join-path $programFiles 'ReNamer\unins000.exe')

Uninstall-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -File "$file" -ValidExitCodes "$validExitCodes"
