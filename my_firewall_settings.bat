netsh advfirewall set currentprofile firewallpolicy blockinbound,blockoutbound
netsh advfirewall set currentprofile settings remotemanagement disable
netsh advfirewall firewall add rule name="All ICMP V4" dir=in action=block protocol=icmpv4
netsh advfirewall firewall add rule name="__windows_media_player_86" dir=out action=block program="%ProgramFiles(x86)%\Windows Media Player\wmplayer.exe"
netsh advfirewall firewall add rule name="__windows_media_player_64" dir=out action=block program="%ProgramFiles%\Windows Media Player\wmplayer.exe"
