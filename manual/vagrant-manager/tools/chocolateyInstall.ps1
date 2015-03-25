$packageName = 'vagrant-manager'
$installerType = 'EXE'
$url = 'https://github.com/lanayotech/vagrant-manager-windows/releases/download/1.0.0.3/vagrant-manager-windows-1.0.0.3.exe' # download url
$silentArgs = '/verysilent /norestart'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
