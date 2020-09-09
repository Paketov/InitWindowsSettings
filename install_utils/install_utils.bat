
copy /Y "%~dp0curl.exe" "%SystemRoot%\curl.exe"
copy /Y "%~dp0curl-ca-bundle.crt" "%SystemRoot%\curl-ca-bundle.crt"
netsh advfirewall firewall add rule name="Allow_cURL" dir=out action=allow program="%SystemRoot%\curl.exe"

copy /Y "%~dp0dd.exe" "%SystemRoot%\dd.exe"
copy /Y "%~dp0tcpdump.exe" "%SystemRoot%\tcpdump.exe"
copy /Y "%~dp0procexp64.exe" "%SystemRoot%\procexp64.exe"
