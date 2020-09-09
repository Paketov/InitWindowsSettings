reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 1 /f
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /f /v "Start" /t REG_DWORD /d 4
