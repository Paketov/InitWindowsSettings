rem S-1-1-0 - Everyone

takeown /F "C:\windows\temp" /R /D Y
icacls "C:\windows\temp" /t /grant *S-1-1-0:(OI)(CI)F

takeown /F "C:\windows\filemanager" /R /D Y
icacls "C:\windows\filemanager" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "C:\windows\filemanager"

takeown /F "C:\windows\Performance" /R /D Y
icacls "C:\windows\Performance" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "C:\windows\Performance"

takeown /F "C:\windows\WinStore" /R /D Y
icacls "C:\windows\WinStore" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "C:\windows\WinStore"

takeown /F "C:\windows\Camera" /R /D Y
icacls "C:\windows\Camera" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "C:\windows\Camera"

takeown /F "C:\Program Files (x86)\Windows Defender" /R /D Y
icacls "C:\Program Files (x86)\Windows Defender" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "C:\Program Files (x86)\Windows Defender"

takeown /F "C:\Program Files\Windows Defender" /R /D Y
icacls "C:\Program Files\Windows Defender" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "C:\Program Files\Windows Defender"

takeown /F "C:\ProgramData\Microsoft\Windows Defender" /R /D Y
icacls "C:\ProgramData\Microsoft\Windows Defender" /t /grant *S-1-1-0:(OI)(CI)F
rmdir /Q /S "C:\ProgramData\Microsoft\Windows Defender"

takeown /F "C:\windows\system32\mobsync.exe"
icacls "C:\windows\system32\mobsync.exe" /grant *S-1-1-0:F
rename "C:\windows\system32\mobsync.exe" _mobsync.exe

takeown /F "C:\windows\SysWOW64\mobsync.exe"
icacls "C:\windows\SysWOW64\mobsync.exe" /grant *S-1-1-0:F
rename "C:\windows\SysWOW64\mobsync.exe" _mobsync.exe

takeown /F "C:\windows\system32\SkyDrive.exe"
icacls "C:\windows\system32\SkyDrive.exe" /grant *S-1-1-0:F
rename "C:\windows\system32\SkyDrive.exe" _SkyDrive.exe


takeown /F "C:\windows\splwow64.exe"
icacls "C:\windows\splwow64.exe" /grant *S-1-1-0:F
rename "C:\windows\splwow64.exe" _splwow64.exe

rmdir /Q /S "C:\ProgramData\Microsoft\Windows\GameExplorer"
rmdir /Q /S "C:\ProgramData\Microsoft\Windows\LocationService"
rmdir /Q /S "C:\ProgramData\Microsoft\Windows\Ringtones"
rmdir /Q /S "C:\PerfLogs"

del C:\ProgramData\Microsoft\Windows\Start Menu\Programs\FileManager
