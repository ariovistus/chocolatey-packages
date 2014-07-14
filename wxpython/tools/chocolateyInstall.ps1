$packageName = 'wxpython'
$installerType = 'EXE' 
$url = 'http://downloads.sourceforge.net/wxpython/wxPython3.0-win32-3.0.0.0-py27.exe' 
$silentArgs = '/SILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

