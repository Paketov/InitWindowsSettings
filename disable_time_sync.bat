rem for disable use "NoSync", for enable "NTP"

net stop W32Time

reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\W32Time" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\W32Time\Parameters" /f /v "Type" /t REG_SZ /d "NoSync"
