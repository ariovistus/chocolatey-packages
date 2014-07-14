Function Get-RedirectedUrl {

    Param (
            [Parameter(Mandatory=$true)]
            [String]$URL
          )

        $request = [System.Net.WebRequest]::Create($url)
        $request.AllowAutoRedirect=$false
        $response=$request.GetResponse()

        If ($response.StatusCode -eq "Found")
        {
            $response.GetResponseHeader("Location")
        }
}

$url = "http://sourceforge.net/projects/numpy/files/NumPy/1.8.1/numpy-1.8.1-win32-superpack-python2.7.exe/download"
$url = Get-RedirectedUrl -URL $url
$packageName = 'numpy'
$installerType = 'EXE' 
$silentArgs = '/SILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

