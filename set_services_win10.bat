reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WdBoot" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WdFilter" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WdNisDrv" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\wpcfltr" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\NcbService" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\TermService" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /f /v "Start" /t REG_DWORD /d 4
reg ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /f /v "AllowTelemetry" /t REG_DWORD /d 0
reg ADD "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /f /v "AllowTelemetry" /t REG_DWORD /d 0
reg ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v "AllowTelemetry" /t REG_DWORD /d 0
reg ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f /v "BingSearchEnabled" /t REG_DWORD /d 0
reg ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f /v "CortanaConsent" /t REG_DWORD /d 0
reg ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v "DisableWebSearch" /t REG_DWORD /d 1
reg ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f /v "DisabledByGroupPolicy" /t REG_DWORD /d 1
reg ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /f /v "Disabled" /t REG_DWORD /d 1

reg ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "EnableSmartScreen" /t REG_DWORD /d 0
reg ADD "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /f /v "EnabledV9" /t REG_DWORD /d 0
reg ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "EnableActivityFeed" /t REG_DWORD /d 0
reg ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "PublishUserActivities" /t REG_DWORD /d 0
reg ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v "UploadUserActivities" /t REG_DWORD /d 0
reg ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /f /v "Value"  /t REG_SZ /d  "Deny"
reg ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /f /v "SensorPermissionState" /t REG_DWORD /d 0
reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" /f /v "Status" /t REG_DWORD /d 0
reg ADD "HKLM\SYSTEM\Maps" /f /v "AutoUpdateEnabled" /t REG_DWORD /d 0
reg ADD "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /f /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0
reg ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d 1

rem reg ADD "HKLM\SYSTEM\CurrentControlSet\Services\mpsdrv" /f /v "Start" /t REG_DWORD /d 4
rem HKLM\System\CurrentControlSet\Services\mpsdrv 3


reg DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v OneDrive


rem schtasks /change /tn "\Microsoft\Windows\Location\Notifications" /disable

schtasks /change /tn "\Microsoft\Windows\Location\Notifications" /disable
schtasks /change /tn "\Microsoft\Windows\Bluetooth\UninstallDeviceTask" /disable
schtasks /change /tn "\Microsoft\Windows\Defrag\ScheduledDefrag" /disable
schtasks /change /tn "\Microsoft\Windows\Windows Media Sharing\UpdateLibrary" /disable
schtasks /delete /tn "\Microsoft\Windows\WS\WSTask" /f
schtasks /change /tn "\Microsoft\Windows\WS\Badge Update" /disable
schtasks /delete /tn "\Microsoft\Windows\SkyDrive\Idle Sync Maintenance Task" /f
schtasks /delete /tn "\Microsoft\Windows\SkyDrive\Routine Maintenance Task" /f
schtasks /change /tn "\Microsoft\Windows\WS\Sync Licenses" /disable
schtasks /change /tn "\OneDrive Standalone Update Task-S-1-5-21-2639420576-3807461381-4281191069-1001" /disable
schtasks /change /tn "\OneDrive Standalone Update Task-S-1-5-21-3584436694-1427438242-999380117-1001" /disable
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /disable
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks /change /tn "\Microsoft\Windows\Feedback\Siuf\DmClient" /disable
schtasks /change /tn "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /disable
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
