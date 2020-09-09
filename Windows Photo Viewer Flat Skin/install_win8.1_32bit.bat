rem S-1-1-0 - Everyone


takeown /F "C:\Program Files\Windows Photo Viewer\PhotoViewer.dll"
icacls "C:\Program Files\Windows Photo Viewer\PhotoViewer.dll" /grant *S-1-1-0:F
copy /Y "%~dp0Windows 8.1 32 bit\Program Files\Windows Photo Viewer\PhotoViewer.dll" "C:\Program Files\Windows Photo Viewer\PhotoViewer.dll"
