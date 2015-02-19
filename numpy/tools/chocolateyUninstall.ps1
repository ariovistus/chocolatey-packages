$packageName = 'numpy'
$installerType = 'EXE' 
$file = "C:\Python27\Removenumpy.exe"
$notSoSilentArgs = '-u C:\Python27\numpy-wininst.log'
$validExitCodes = @(0) 

Uninstall-ChocolateyPackage "$packageName" "$installerType" "$notSoSilentArgs" "$file" -validExitCodes $validExitCodes

