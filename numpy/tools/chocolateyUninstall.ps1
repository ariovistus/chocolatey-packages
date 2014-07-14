$packageName = 'wxpython'
$installerType = 'EXE' 
$file = "C:\tools\python2-x86_32\Removenumpy.exe"
$notSoSilentArgs = '-u C:\tools\python2-x86_32\numpy-wininst.log'
$validExitCodes = @(0) 

Uninstall-ChocolateyPackage "$packageName" "$installerType" "$notSoSilentArgs" "$file" -validExitCodes $validExitCodes

