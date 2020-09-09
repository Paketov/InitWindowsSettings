reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WdBoot" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WdFilter" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WdNisDrv" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\wpcfltr" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\NcbService" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\TermService" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /f /v "Start" /t REG_DWORD /d 4


rem reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\mpsdrv" /f /v "Start" /t REG_DWORD /d 4
rem HKLM\System\CurrentControlSet\Services\mpsdrv 3


reg DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v OneDrive


rem schtasks /change /tn "\Microsoft\Windows\Location\Notifications" /disable

schtasks /change /tn "\Microsoft\Windows\Location\Notifications" /disable
schtasks /change /tn "\Microsoft\Windows\Bluetooth\UninstallDeviceTask" /disable
schtasks /change /tn "\Microsoft\Windows\Defrag\ScheduledDefrag" /disable
schtasks /change /tn "\Microsoft\Windows\Windows Media Sharing\UpdateLibrary" /disable
schtasks /delete /tn "\Microsoft\Windows\WS\WSTask" /f
schtasks /change /tn "\Microsoft\Windows\WS\Badge Update" /disable
schtasks /delete /tn "\Microsoft\Windows\SkyDrive\Idle Sync Maintenance Task" /f
schtasks /delete /tn "\Microsoft\Windows\SkyDrive\Routine Maintenance Task" /f
schtasks /change /tn "\Microsoft\Windows\WS\Sync Licenses" /disable
schtasks /change /tn "\OneDrive Standalone Update Task-S-1-5-21-2639420576-3807461381-4281191069-1001" /disable
schtasks /change /tn "\OneDrive Standalone Update Task-S-1-5-21-3584436694-1427438242-999380117-1001" /disable
