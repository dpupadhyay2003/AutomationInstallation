#Install Python and pip
$url = "https://www.python.org/ftp/python/3.7.6/python-3.7.6-amd64.exe"
$output = "D:/tmp/python-3.7.6-amd64.exe"

$chromeWebDriverUrl = "https://chromedriver.storage.googleapis.com/89.0.4389.23/chromedriver_win32.zip"
$baseDir = "D:\Automation"

if (Test-Path $output) {
    Write-Host "Script exists - skipping installation"
    return;
}

New-Item -ItemType Directory -Force -Path D:/tmp

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -OutFile $output


& $output /passive InstallAllUsers=1 PrependPath=1 Include_test=0 
