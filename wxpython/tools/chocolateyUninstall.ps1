$packageName = 'wxpython'
$installerType = 'EXE' 
$silentArgs = '/SILENT' 
$file = "C:\tools\python2-x86_32\Lib\site-packages\wx-3.0-msw\unins000.exe"
$validExitCodes = @(0) 

Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$file" -validExitCodes $validExitCodes
