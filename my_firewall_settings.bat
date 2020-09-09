rem netsh advfirewall set currentprofile firewallpolicy blockinbound,blockoutbound
netsh advfirewall set currentprofile settings remotemanagement disable

set c="%cd%"

rem Protocols
netsh advfirewall firewall add rule name="%random%%random%" dir=in action=block protocol=icmpv4

rem Programs
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%ProgramFiles(x86)%\Windows Media Player\wmplayer.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%ProgramFiles%\Windows Media Player\wmplayer.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%SystemRoot%\System32\CloudExperienceHostBroker.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%SystemRoot%\System32\smartscreen.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%SystemRoot%\System32\RuntimeBroker.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%SystemRoot%\System32\ApplicationFrameHost.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%SystemRoot%\System32\SecurityHealthHost.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%USERPROFILE%\AppData\Local\Microsoft\OneDrive\OneDrive.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%USERPROFILE%\AppData\Local\Microsoft\OneDrive\OneDriveStandaloneUpdater.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%SystemRoot%\System32\BackgroundTransferHost.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%SystemRoot%\System32\SecurityHealthSystray.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%SystemRoot%\System32\compattelrunner.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%SystemRoot%\System32\SgrmBroker.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%SystemRoot%\System32\SecurityHealthHost.exe"
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%ProgramFiles%\Windows Defender\MpCmdRun.exe"

rem Services
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program=%SystemRoot%\system32\svchost.exe service=DoSvc
netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program=%SystemRoot%\system32\svchost.exe service=DsmSvc

rem Apps
cd /D "%SystemRoot%\SystemApps\Microsoft.Windows.StartMenuExperienceHost_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\StartMenuExperienceHost.exe"

cd /D "%SystemRoot%\SystemApps\Microsoft.Windows.Cortana_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\SearchUI.exe"

cd /D "%ProgramFiles%\WindowsApps\Microsoft.Windows.Photos_*x64*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\Microsoft.Photos.exe"

cd /D "%SystemRoot%\SystemApps\ShellExperienceHost_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\ShellExperienceHost.exe"

cd /D "%SystemRoot%\SystemApps\InputApp_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\WindowsInternal.ComposableShell.Experiences.TextInput.InputApp.exe"

cd /D "%SystemRoot%\SystemApps\Microsoft.AccountsControl_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\AccountsControlHost.exe"

cd /D "%SystemRoot%\SystemApps\Microsoft.LockApp_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\LockApp.exe"

cd /D "%SystemRoot%\SystemApps\Microsoft.Windows.SecHealthUI_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\SecHealthUI.exe"

cd /D "%SystemRoot%\SystemApps\ParentalControls_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\WpcUapApp.exe"

cd /D "%SystemRoot%\SystemApps\Microsoft.BioEnrollment_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\BioEnrollmentHost.exe"

cd /D "%SystemRoot%\SystemApps\microsoft.windows.narratorquickstart_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\NarratorQuickStart.exe"

cd /D "%SystemRoot%\SystemApps\Microsoft.Windows.AppRep.ChxApp_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\CHXSmartScreen.exe"

cd /D "%SystemRoot%\SystemApps\Microsoft.LockApp_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\LockApp.exe"

cd /D "%SystemRoot%\SystemApps\Microsoft.Windows.SecHealthUI_*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\SecHealthUI.exe"


cd /D "%ProgramFiles%\WindowsApps\Microsoft.ZuneVideo_*x64*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\Video.UI.exe"

cd /D "%ProgramFiles%\WindowsApps\Microsoft.ZuneMusic_*x64*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\Music.UI.exe"

cd /D "%ProgramFiles%\WindowsApps\Microsoft.Windows.Photos_*x64*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\Microsoft.Photos.exe"

cd /D "%ProgramFiles%\WindowsApps\Microsoft.MSPaint_*x64*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\PaintStudio.View.exe"

cd /D "%ProgramFiles%\WindowsApps\Microsoft.WindowsStore_*x64*"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\WinStore.App.exe"

rem Visual Studio

cd /D "%ProgramFiles(x86)%\Microsoft Visual Studio\20??\Community\Common7\IDE"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\PerfWatson2.exe"

cd /D "%ProgramFiles(x86)%\Microsoft Visual Studio\20??\Community\Common7\ServiceHub\Hosts\ServiceHub.Host.CLR.x86"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\ServiceHub.VSDetouredHost.exe"

cd /D "%ProgramFiles(x86)%\Microsoft Visual Studio\20??\Community\Common7\ServiceHub\Hosts\ServiceHub.Host.CLR.x86"
if %errorlevel% == 0 netsh advfirewall firewall add rule name="%random%%random%" dir=out action=block program="%cd%\ServiceHub.IdentityHost.exe"


cd /D %c%




