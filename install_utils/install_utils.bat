
copy /Y "%~dp0curl.exe" "%SystemRoot%\curl.exe"
netsh advfirewall firewall add rule name="Allow_cURL" dir=out action=allow program="%SystemRoot%\curl.exe"

copy /Y "%~dp0dd.exe" "%SystemRoot%\dd.exe"
copy /Y "%~dp0tcpdump.exe" "%SystemRoot%\tcpdump.exe"