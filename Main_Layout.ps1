#check python version
$isPython = python -V
if($isPython){
	#Python is Present

	#Check Python Version
	$pythonVersion = python -V
	if(![Regex]::IsMatch($pythonVersion,"Python 3\.7")){
		echo "Python Version 3.7 - Compatible for Work Environment."
	}else{
		echo "Python Version not 3.7"
		# 1. Uninstall Previous Version of python run the script.
		# 2. Remove Python Path from Environment Variable
	}

}else{
	#Install Python and PIP
}

#Check pip version
$isPip = pip -V
if($isPip){
	echo "Pip Present"
}else{
	echo "Install pip"
}


# Install Robot FrameWork
# Install Robot - Selenium2Library
# Install Chrome Web Driver
# UnZip Project