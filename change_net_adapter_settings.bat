rem Disable some protocols
powershell -Command "Disable-NetAdapterBinding -Name (Get-NetAdapter | Where Name -like "*Ethernet*")[0].Name -ComponentID ms_msclient"
powershell -Command "Disable-NetAdapterBinding -Name (Get-NetAdapter | Where Name -like "*Ethernet*")[0].Name -ComponentID ms_server"
powershell -Command "Disable-NetAdapterBinding -Name (Get-NetAdapter | Where Name -like "*Ethernet*")[0].Name -ComponentID ms_rspndr"
powershell -Command "Disable-NetAdapterBinding -Name (Get-NetAdapter | Where Name -like "*Ethernet*")[0].Name -ComponentID ms_lltdio"
powershell -Command "Disable-NetAdapterBinding -Name (Get-NetAdapter | Where Name -like "*Ethernet*")[0].Name -ComponentID ms_lldp"
powershell -Command "Disable-NetAdapterBinding -Name (Get-NetAdapter | Where Name -like "*Ethernet*")[0].Name -ComponentID ms_implat"
powershell -Command "Disable-NetAdapterBinding -Name (Get-NetAdapter | Where Name -like "*Ethernet*")[0].Name -ComponentID ms_pacer"

rem Disable NetBIOS
powershell -Command "((gwmi win32_networkadapterconfiguration) | Where DefaultIPGateway -Like "192.*").settcpipnetbios(2)"
