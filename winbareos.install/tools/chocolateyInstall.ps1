$packageName = 'winbareos.install'
$installerType = 'exe'
$url = 'http://download.bareos.org/bareos/release/14.2/windows/winbareos-14.2.2.postvista-32-bit-r16.1.exe'
$url64 = 'http://download.bareos.org/bareos/release/14.2/windows/winbareos-14.2.2.postvista-64-bit-r16.1.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes