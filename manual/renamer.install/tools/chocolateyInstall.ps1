$packageName = 'renamer.install'
$installerType = 'EXE'
$url = 'http://www.den4b.com/?x=get&product=renamer&type=installer&version=6.4&token=chocolatey'

$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
