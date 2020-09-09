rem S-1-1-0 - Everyone

takeown /F "%SystemRoot%\temp" /R /D Y
icacls "%SystemRoot%\temp" /t /grant *S-1-1-0:(OI)(CI)F



takeown /F "%SystemRoot%\Performance" /R /D Y
icacls "%SystemRoot%\Performance" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "%SystemRoot%\Performance"


takeown /F "%SystemRoot%\system32\mobsync.exe"
icacls "%SystemRoot%\system32\mobsync.exe" /grant *S-1-1-0:F
rename "%SystemRoot%\system32\mobsync.exe" _mobsync.exe

takeown /F "%SystemRoot%\SysWOW64\mobsync.exe"
icacls "%SystemRoot%\SysWOW64\mobsync.exe" /grant *S-1-1-0:F
rename "%SystemRoot%\SysWOW64\mobsync.exe" _mobsync.exe

takeown /F "%SystemRoot%\splwow64.exe"
icacls "%SystemRoot%\splwow64.exe" /grant *S-1-1-0:F
rename "%SystemRoot%\splwow64.exe" _splwow64.exe

takeown /F "%SystemRoot%\system32\CompatTelRunner.exe"
icacls "%SystemRoot%\system32\CompatTelRunner.exe" /grant *S-1-1-0:F
rename "%SystemRoot%\system32\CompatTelRunner.exe" _CompatTelRunner.exe


rmdir /Q /S "%SystemDrive%\ProgramData\Microsoft\Windows\GameExplorer"
rmdir /Q /S "%SystemDrive%\ProgramData\Microsoft\Windows\LocationService"
rmdir /Q /S "%SystemDrive%\ProgramData\Microsoft\Windows\Ringtones"
rmdir /Q /S "%SystemDrive%\PerfLogs"
