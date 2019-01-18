reg ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /f /v "CpuPriorityClass" /t REG_DWORD /d 1
reg ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskhostex.exe\PerfOptions" /f /v "CpuPriorityClass" /t REG_DWORD /d 1
reg ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskhost.exe\PerfOptions" /f /v "CpuPriorityClass" /t REG_DWORD /d 1
reg ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe\PerfOptions" /f /v "CpuPriorityClass" /t REG_DWORD /d 8
reg ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe\PerfOptions" /f /v "CpuPriorityClass" /t REG_DWORD /d 8

reg ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /f /v "DisablePagingExecutive" /t REG_DWORD /d 1
reg ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /f /v "LargeSystemCache" /t REG_DWORD /d 1
rem echo %~nx1