$packageName = 'renamer.portable'
$url = 'http://www.den4b.com/?x=get&product=renamer&type=archive&version=6.2&token=chocolatey'

try {
  $installDir = Join-Path $(Get-BinRoot) "renamer"
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
