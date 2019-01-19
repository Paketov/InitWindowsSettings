sc config "MSiSCSI" start=auto
sc start "MSiSCSI"
timeout 7
powershell -Command "Get-IscsiSession | Unregister-IscsiSession"
powershell -Command "Get-IscsiTarget | Disconnect-IscsiTarget -Confirm:$false"
powershell -Command "Get-IscsiTargetPortal | Remove-IscsiTargetPortal -Confirm:$false"
sc config "MSiSCSI" start=demand
sc stop "MSiSCSI"

netsh advfirewall firewall delete rule name="Allow_iSCSI"
