$packageName = 'renamer.portable'
$url = 'https://dl.dropboxusercontent.com/u/22096967/renamer-6.2.zip'

try {
  $installDir = Join-Path $(Get-BinRoot) "renamer"
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir"

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
