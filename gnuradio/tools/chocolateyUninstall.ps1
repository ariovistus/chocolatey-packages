$packageName = 'gnuradio'
$installerType = 'EXE' 
$silentArgs = '/S' 
$file = "C:\Program Files (x86)\gnuradio\UnInstall.exe"
$validExitCodes = @(0) 

Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$file" -validExitCodes $validExitCodes
