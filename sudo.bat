@echo off

set t=%1
set t2="%t:"=%"

for /f "tokens=1,* delims= " %%a in ("%*") do set ALL_BUT_FIRST=%%b

IF "%ALL_BUT_FIRST%"=="" (
	set t3=
) ELSE (
	set t3=%ALL_BUT_FIRST:"=" ^&chr(34)^& "%
)

echo Set objShell = CreateObject("Shell.Application") > %temp%\sudo.vbs
echo objShell.ShellExecute %t2%, "%t3%", "", "runas" >> %temp%\sudo.vbs
cscript %temp%\sudo.vbs
