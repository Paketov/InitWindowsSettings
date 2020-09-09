powershell -Command "Get-AppxProvisionedPackage -online | Where-Object {$_.name -notlike '*Microsoft.MSPaint*'} | Where-Object {$_.name -notlike '*Microsoft.ZuneVideo*'} | Where-Object {$_.name -notlike '*Microsoft.ZuneMusic*'} | Where-Object {$_.name -notlike '*Microsoft.WindowsStore*'} | Where-Object {$_.name -notlike '*Microsoft.WindowsCalculator*'} | Where-Object {$_.name -notlike '*Microsoft.Windows.Photos*'} | Where-Object {$_.name -notlike '*Microsoft.DesktopAppInstaller*'} | Remove-AppxProvisionedPackage -online"
powershell -Command "Get-AppxPackage | Where-Object {$_.name -notlike '*Microsoft.MSPaint*'} | Where-Object {$_.name -notlike '*Microsoft.ZuneVideo*'} | Where-Object {$_.name -notlike '*Microsoft.ZuneMusic*'} | Where-Object {$_.name -notlike '*Microsoft.WindowsStore*'} | Where-Object {$_.name -notlike '*Microsoft.WindowsCalculator*'} | Where-Object {$_.name -notlike '*Microsoft.Windows.Photos*'} | Where-Object {$_.name -notlike '*Microsoft.DesktopAppInstaller*'} | Remove-AppxPackage"

taskkill /f /im MicrosoftEdgeCP.exe
taskkill /f /im MicrosoftEdge.exe

set c="%cd%"
cd /D "%SystemRoot%\SystemApps\Microsoft.MicrosoftEdge_*"
set r=%errorlevel%
set t="%cd%"
cd /D %c%
if %r% == 0 takeown /F %t% /R /D Y
if %r% == 0 icacls %t% /t /grant *S-1-1-0:(OI)(CI)F
if %r% == 0 rmdir /Q /S %t%

cd /D "%SystemRoot%\SystemApps\Microsoft.MicrosoftEdgeDevToolsClient_*"
set r=%errorlevel%
set t="%cd%"
cd /D %c%
if %r% == 0 takeown /F %t% /R /D Y
if %r% == 0 icacls %t% /t /grant *S-1-1-0:(OI)(CI)F
if %r% == 0 rmdir /Q /S %t%
