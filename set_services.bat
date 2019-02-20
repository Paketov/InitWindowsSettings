reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /f /v "Start" /t REG_DWORD /d 4
rem Here SMB blocked
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\wscsvc" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WdBoot" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WdFilter" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WdNisDrv" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\wpcfltr" /f /v "Start" /t REG_DWORD /d 4
rem Here SMB blocked
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\lmhosts" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\NcbService" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\TermService" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /f /v "Start" /t REG_DWORD /d 4
rem Here SMB blocked
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /f /v "Start" /t REG_DWORD /d 4

rem Here SMB blocked(block this fucking dangerous protocol)
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\srv" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\srv2" /f /v "Start" /t REG_DWORD /d 4

reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb10" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb20" /f /v "Start" /t REG_DWORD /d 4

reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\NetBIOS" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\NetBT" /f /v "Start" /t REG_DWORD /d 4


reg DELETE "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc" /f
reg DELETE "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /f

rem schtasks /change /tn "\Microsoft\Windows\Location\Notifications" /disable

schtasks /delete /tn "\Microsoft\Windows\Location\Notifications" /f
schtasks /change /tn "\Microsoft\Windows\Bluetooth\UninstallDeviceTask" /disable
schtasks /change /tn "\Microsoft\Windows\Defrag\ScheduledDefrag" /disable
schtasks /delete /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /f
schtasks /change /tn "\Microsoft\Windows\Windows Media Sharing\UpdateLibrary" /disable
schtasks /delete /tn "\Microsoft\Windows\WS\WSTask" /f
schtasks /delete /tn "\Microsoft\Windows\WS\Badge Update" /f

rem Here SMB blocked
schtasks /change /tn "\Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /disable
schtasks /change /tn "\Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /disable

schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
schtasks /delete /tn "\Microsoft\Windows\SkyDrive\Idle Sync Maintenance Task" /f
schtasks /delete /tn "\Microsoft\Windows\SkyDrive\Routine Maintenance Task" /f
schtasks /delete /tn "\Microsoft\Windows\WS\Sync Licenses" /f

