reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /f /v "VisualFXSetting" /t REG_DWORD /d 3
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAnimations" /t REG_DWORD /d 0
reg ADD "HKCU\Control Panel\Desktop\WindowMetrics" /f /v "MinAnimate" /t REG_SZ /d "0"
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ThemeManager" /f /v "ThemeActive" /t REG_SZ /d "0"
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "ListviewAlphaSelect" /t REG_DWORD /d 0
reg ADD "HKCU\Software\Microsoft\Windows\DWM" /f /v "ColorizationOpaqueBlend" /t REG_DWORD /d 0
reg ADD "HKCU\Control Panel\Desktop" /f /v "UserPreferencesMask" /t REG_BINARY /d 9032078010000000


net stop themes
net start themes
