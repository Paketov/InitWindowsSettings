rem dism /online /Get-Features /Format:table

dism /online /disable-feature /english /norestart /featurename:Xps-Foundation-Xps-Viewer
dism /online /disable-feature /english /norestart /featurename:Windows-Defender-Default-Definitions
dism /online /disable-feature /english /norestart /featurename:Microsoft-Windows-MobilePC-LocationProvider-INF
dism /online /disable-feature /english /norestart /featurename:WorkFolders-Client
dism /online /disable-feature /english /norestart /featurename:FaxServicesClientPackage
dism /online /disable-feature /english /norestart /featurename:Printing-XPSServices-Features
dism /online /disable-feature /english /norestart /featurename:Printing-Foundation-InternetPrinting-Client
dism /online /disable-feature /english /norestart /featurename:SearchEngine-Client-Package
dism /online /disable-feature /english /norestart /featurename:Printing-Foundation-Features
dism /online /disable-feature /english /norestart /featurename:MSRDC-Infrastructure
