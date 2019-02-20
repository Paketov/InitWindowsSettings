rem Run this file and SMB works again!)

netsh advfirewall firewall delete rule name="Allow_SMB"
netsh advfirewall firewall delete rule name="Allow_SMB2"
netsh advfirewall firewall add rule name="Allow_SMB" dir=out action=allow protocol=TCP remoteport=445
netsh advfirewall firewall add rule name="Allow_SMB2" dir=out action=allow protocol=TCP remoteport=139

reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /f /v "Start" /t REG_DWORD /d 2
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\lmhosts" /f /v "Start" /t REG_DWORD /d 2

reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\NetBIOS" /f /v "Start" /t REG_DWORD /d 2
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\NetBT" /f /v "Start" /t REG_DWORD /d 2

reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb" /f /v "Start" /t REG_DWORD /d 2
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb10" /f /v "Start" /t REG_DWORD /d 2
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb20" /f /v "Start" /t REG_DWORD /d 2

schtasks /change /tn "\Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /enable
schtasks /change /tn "\Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /enable
