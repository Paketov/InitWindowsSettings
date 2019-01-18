powershell -Command "Get-AppxProvisionedPackage -online | Remove-AppxProvisionedPackage -online"
powershell -Command "Get-AppxPackage | Remove-AppxPackage"
