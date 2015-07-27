$packageName = 'renamer.install'
$installerType = 'EXE'
$url = 'https://dl.dropboxusercontent.com/u/22096967/renamer-6.2.exe'

$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
