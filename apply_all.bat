rem digital hell ooOO to everyone!)

cd "%~dp0"

call disable_windows_defender.bat
timeout 2

call disable_system_restore.bat
timeout 2

call remove_appx.bat
timeout 2

call disable_features.bat
timeout 2

call disable_autoupdate.bat
timeout 2

call disable_remote_assistence.bat
timeout 2

call delete_some_system_files.bat
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

call set_services.bat
timeout 2

regedit.exe /S "%~dp0SetIEUserAgent.reg"
regedit.exe /S "%~dp0PriorityControl.reg"
regedit.exe /S "%~dp0OptimDesktopSettings.reg"
regedit.exe /S "%~dp0folder_settings.reg"
regedit.exe /S "%~dp0encreese_dns_cache.reg"


call set_animations.bat
timeout 2
