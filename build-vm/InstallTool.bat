if not exist "C:\Tools" mkdir "C:\Tools"
echo "Downloading Eclipse and workspace"

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://www.dropbox.com/s/1hhdk6dimsv57bd/workspace.zip?dl=1','C:\Tools\workspace.zip');"

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object -com shell.application).namespace('C:\').CopyHere((new-object -com shell.application).namespace('C:\Tools\workspace.zip').Items(),16)"

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://www.dropbox.com/s/8ngnvkt6trm4t3s/eclipse.zip?dl=1','C:\Tools\Eclipse.zip');"

echo "Extracting eclipse"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object -com shell.application).namespace('C:\').CopyHere((new-object -com shell.application).namespace('C:\Tools\Eclipse.zip').Items(),16)"

echo "downloading text files to desktop"
@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=0B3F7juy-6KttaDJ3aWlfekpiRnM', '%USERPROFILE%\Desktop\Installation.txt')"
@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=0B3F7juy-6KttQlFsLWliSm9xcWs', '%USERPROFILE%\Desktop\License.txt')"
@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=0B3F7juy-6KttTkh2RUd4ZDVUNGc', '%USERPROFILE%\Desktop\Readme.txt')"

if not exist "%USERPROFILE%\Desktop\Tools" mkdir "%USERPROFILE%\Desktop\Binaries of Yoda"
if not exist "%USERPROFILE%\Desktop\Tools" mkdir "%USERPROFILE%\Desktop\Binaries of Yoda\GEF-ALL-3.9.0M7"
if not exist "%USERPROFILE%\Desktop\Tools" mkdir "%USERPROFILE%\Desktop\Binaries of Yoda\GEF-draw2d-sdk-3.8.2"

echo "downloading binary files to desktop"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-YODA/raw/master/binaries/Yoda_1.0.0.jar','%USERPROFILE%\Desktop\Binaries of Yoda\Yoda_1.0.0.jar');"

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-YODA/raw/master/binaries/others/GEF-ALL-3.9.0M7.zip','%USERPROFILE%\Downloads\GEF-ALL-3.9.0M7.zip');"

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-YODA/raw/master/binaries/others/GEF-draw2d-sdk-3.8.2.zip','%USERPROFILE%\Downloads\GEF-draw2d-sdk-3.8.2.zip');"

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object -com shell.application).namespace('%USERPROFILE%\Desktop\Binaries of Yoda\GEF-ALL-3.9.0M7').CopyHere((new-object -com shell.application).namespace('%USERPROFILE%\Downloads\GEF-ALL-3.9.0M7.zip').Items(),16)"

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object -com shell.application).namespace('%USERPROFILE%\Desktop\Binaries of Yoda\GEF-draw2d-sdk-3.8.2').CopyHere((new-object -com shell.application).namespace('%USERPROFILE%\Downloads\GEF-draw2d-sdk-3.8.2.zip').Items(),16)"

@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%USERPROFILE%\Desktop\eclipse.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "C:\eclipse\eclipse.exe" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs

echo "Adding eclipse to startup"
copy %USERPROFILE%\Desktop\eclipse.lnk %PROGRAMDATA%\Microsoft\Windows\"Start Menu"\Programs\Startup

@echo off

(echo [InternetShortcut]
echo URL=https://www.youtube.com/watch?v=DyDgJBkvIBE
echo IconIndex=0) >"%userprofile%\desktop\Yoda Demo Video.url"
