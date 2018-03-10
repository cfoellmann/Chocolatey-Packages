$packageName = 'vagrant-manager'
$installerType = 'EXE'
$url = 'https://github.com/lanayotech/vagrant-manager-windows/releases/download/1.0.0.6/vagrant-manager-windows-1.0.0.6.zip' # download url
$zipFile = 'vagrant-manager-windows-1.0.0.6.zip' # name of the actual EXE we extract
$exeFile = 'vagrant-manager-windows-1.0.0.6.exe' # name of the actual EXE we extract
$silentArgs = '/verysilent /norestart'
$validExitCodes = @(0)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Get-ChocolateyWebFile -PackageName $packageName -FileFullPath "$toolsDir\$zipFile" -Url $url
Get-ChocolateyUnzip -PackageName $packageName  -FileFullPath "$toolsDir\$zipFile" -Destination $env:TEMP
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$env:TEMP\$exeFile"   -validExitCodes $validExitCodes
