
rem Delete one drive
cd /D "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\1*"
if %errorlevel% == 0 OneDriveSetup.exe  /uninstall
cd /D "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\2*"
if %errorlevel% == 0 OneDriveSetup.exe  /uninstall
