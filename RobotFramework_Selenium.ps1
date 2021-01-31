
#Install Python and pip
$url = "https://www.python.org/ftp/python/3.7.6/python-3.7.6-amd64.exe"

$chromeWebDriverUrl = "https://chromedriver.storage.googleapis.com/89.0.4389.23/chromedriver_win32.zip"
$baseDir = "D:\Automation"

#UnZip Function
function UnZip(){
	param([string]$zipfile, [string]$outpath)
	echo 'Extracting File...'
    #[System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
    Expand-Archive -LiteralPath $zipfile -DestinationPath $baseDir
    echo 'Extraction Completed...'
}

#Install Robot FrameWork
pip install robotframework

#Install robot-Selanium2Library
pip install robotframework-selenium2library


#Install Chrome Web Driver
$Url = "https://chromedriver.storage.googleapis.com/89.0.4389.23/chromedriver_win32.zip"
Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $baseDir

UnZip "D:\Automation\chromedriver_win32.zip" "D:\Automation\ChromeDriver"

$machinePath = [System.Environment]::GetEnvironmentVariable("path","Machine")
$chromeDriverPath = $baseDir+"\chromedriver"
$SystemPath = $machinePath + ";" +$chromeDriverPath
[Environment]::SetEnvironmentVariable("Path", $SystemPath, "Machine")


#UnZip Folder
UnZip "D:\Automation\ProjectFolder.zip" "D:\Automation"