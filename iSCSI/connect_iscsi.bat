sc config "MSiSCSI" start=auto
sc start "MSiSCSI"
timeout 7
powershell -Command "New-IscsiTargetPortal -TargetPortalAddress %1"
powershell -Command "Get-IscsiTarget | Connect-IscsiTarget"
