choco python cheetah lxml
$packageName = 'gnuradio'
$installerType = 'EXE' 
$url = 'http://files.ettus.com/binaries/gnuradio/gnuradio_v3.7.3/gnuradio_3.7.3_Win32.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 


Install-ChocolateyPath "C:\Program Files (x86)\gnuradio\bin" "Machine"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

