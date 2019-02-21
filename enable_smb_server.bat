rem Run this file and SMB can works as server again!)

reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /f /v "Start" /t REG_DWORD /d 2

reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\srv" /f /v "Start" /t REG_DWORD /d 2
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\srv2" /f /v "Start" /t REG_DWORD /d 2
