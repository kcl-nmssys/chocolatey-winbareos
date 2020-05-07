$packageName = 'winbareos.install'
$url = 'https://download.bareos.org/bareos/release/latest/windows/winbareos-19.2.7-release-32-bit.exe'
$url64 = 'https://download.bareos.org/bareos/release/latest/windows/winbareos-19.2.7-release-64-bit.exe'
$checksum = '3ca9fe7bc67dc042f9f97ab448f05a733502833bfcade3b26ccef900545e7faf'
$checksum64 = 'd2880a6110c7a1a42aed7bb97f0bcb176f58427223eff1c305a183382cfc1055'

$packageArgs = @{
  packageName = $packageName
  fileType = 'exe'
  url = $url
  url64 = $url64
  silentArgs = '/S'
  validExitCodes = @(0)
  checksum = $checksum
  checksumType = 'sha256'
  checksum64 = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
