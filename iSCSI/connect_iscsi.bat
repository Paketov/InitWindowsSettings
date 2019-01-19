netsh advfirewall firewall delete rule name="Allow_iSCSI"
netsh advfirewall firewall add rule name="Allow_iSCSI" dir=out action=allow protocol=TCP remoteport=3260

sc config "MSiSCSI" start=auto
sc start "MSiSCSI"
timeout 7
powershell -Command "New-IscsiTargetPortal -TargetPortalAddress %1"
powershell -Command "Get-IscsiTarget | Connect-IscsiTarget"
