
bcdedit /set {globalsettings} custom:16000067 true
bcdedit /set {globalsettings} custom:16000069 true
bcdedit /set {default} bootmenupolicy legacy
bcdedit /set {current} recoveryenabled No

Dism.exe /online /Cleanup-Image /StartComponentCleanup
Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase
Dism.exe /online /Cleanup-Image /SPSuperseded
fsutil usn deletejournal /d c:
fsutil behavior set disable8dot3 1
powercfg -h off
