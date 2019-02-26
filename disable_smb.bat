cd "%~dp0"

netsh advfirewall firewall delete rule name="Allow_SMB"
netsh advfirewall firewall delete rule name="Allow_SMB2"

reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\lmhosts" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /f /v "Start" /t REG_DWORD /d 4

reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\srv" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\srv2" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\srvnet" /f /v "Start" /t REG_DWORD /d 4

reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb10" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb20" /f /v "Start" /t REG_DWORD /d 4

reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\NetBIOS" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\NetBT" /f /v "Start" /t REG_DWORD /d 4

schtasks /change /tn "\Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /disable
schtasks /change /tn "\Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /disable

call change_net_adapter_settings.bat

