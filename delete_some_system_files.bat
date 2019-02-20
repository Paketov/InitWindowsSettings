rem S-1-1-0 - Everyone

takeown /F "%SystemRoot%\temp" /R /D Y
icacls "%SystemRoot%\temp" /t /grant *S-1-1-0:(OI)(CI)F

takeown /F "%SystemRoot%\filemanager" /R /D Y
icacls "%SystemRoot%\filemanager" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "%SystemRoot%\filemanager"

takeown /F "%SystemRoot%\Performance" /R /D Y
icacls "%SystemRoot%\Performance" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "%SystemRoot%\Performance"

takeown /F "%SystemRoot%\WinStore" /R /D Y
icacls "%SystemRoot%\WinStore" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "%SystemRoot%\WinStore"

takeown /F "%SystemRoot%\Camera" /R /D Y
icacls "%SystemRoot%\Camera" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "%SystemRoot%\Camera"

takeown /F "%SystemDrive%\Program Files (x86)\Windows Defender" /R /D Y
icacls "%SystemDrive%\Program Files (x86)\Windows Defender" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "%SystemDrive%\Program Files (x86)\Windows Defender"

takeown /F "%SystemDrive%\Program Files\Windows Defender" /R /D Y
icacls "%SystemDrive%\Program Files\Windows Defender" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "%SystemDrive%\Program Files\Windows Defender"

takeown /F "%SystemDrive%\ProgramData\Microsoft\Windows Defender" /R /D Y
icacls "%SystemDrive%\ProgramData\Microsoft\Windows Defender" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "%SystemDrive%\ProgramData\Microsoft\Windows Defender"

takeown /F "%SystemRoot%\system32\mobsync.exe"
icacls "%SystemRoot%\system32\mobsync.exe" /grant *S-1-1-0:F
rename "%SystemRoot%\system32\mobsync.exe" _mobsync.exe

takeown /F "%SystemRoot%\SysWOW64\mobsync.exe"
icacls "%SystemRoot%\SysWOW64\mobsync.exe" /grant *S-1-1-0:F
rename "%SystemRoot%\SysWOW64\mobsync.exe" _mobsync.exe

takeown /F "%SystemRoot%\system32\SkyDrive.exe"
icacls "%SystemRoot%\system32\SkyDrive.exe" /grant *S-1-1-0:F
rename "%SystemRoot%\system32\SkyDrive.exe" _SkyDrive.exe


takeown /F "%SystemRoot%\splwow64.exe"
icacls "%SystemRoot%\splwow64.exe" /grant *S-1-1-0:F
rename "%SystemRoot%\splwow64.exe" _splwow64.exe

rmdir /Q /S "%SystemDrive%\ProgramData\Microsoft\Windows\GameExplorer"
rmdir /Q /S "%SystemDrive%\ProgramData\Microsoft\Windows\LocationService"
rmdir /Q /S "%SystemDrive%\ProgramData\Microsoft\Windows\Ringtones"
rmdir /Q /S "%SystemDrive%\PerfLogs"

del "%SystemDrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\FileManager"
