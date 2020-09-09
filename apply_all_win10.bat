
cd /D "%~dp0"

call disable_windows_defender.bat
timeout 2

call disable_system_restore.bat
timeout 2

call remove_appx_win10.bat
timeout 2

call disable_features.bat
timeout 2

call disable_autoupdate.bat
timeout 2

call disable_remote_assistence.bat
timeout 2

call delete_some_system_files_win10.bat
timeout 2


call install_hosts_list.bat
timeout 2

call my_firewall_settings.bat
timeout 2

call set_animations.bat
timeout 2

call set_boot_params.bat
timeout 2

call set_default_priority.bat
timeout 2

call set_services_win10.bat
timeout 2

regedit.exe /S "%~dp0SetIEUserAgent.reg"
regedit.exe /S "%~dp0PriorityControl.reg"
regedit.exe /S "%~dp0OptimDesktopSettings.reg"
regedit.exe /S "%~dp0folder_settings.reg"
regedit.exe /S "%~dp0encreese_dns_cache.reg"


call set_animations.bat
timeout 2

call change_net_adapter_settings.bat
timeout 2

call disable_time_sync.bat
timeout 2

call set_powercfg.bat
timeout 2

call delete_programs.bat
timeout 2

fsutil usn deletejournal /d c:


