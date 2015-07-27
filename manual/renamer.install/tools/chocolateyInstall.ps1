$packageName = 'renamer.install'
$installerType = 'EXE'
$url = 'https://dl.dropboxusercontent.com/u/22096967/renamer-6.2.exe'

$silentArgs = '/silent' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
