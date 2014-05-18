$packageName = 'winbareos.install'
$installerType = 'exe'
$url = 'http://download.bareos.org/bareos/release/latest/windows/winbareos-13.2.2-32-bit-r2.1.exe'
$url64 = 'http://download.bareos.org/bareos/release/latest/windows/winbareos-13.2.2-64-bit-r2.1.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes