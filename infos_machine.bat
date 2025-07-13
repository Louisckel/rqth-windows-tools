@echo off
setlocal enabledelayedexpansion
set filename=%USERPROFILE%\Desktop\infos_machine.txt
echo Nom de l'ordinateur : %COMPUTERNAME% > "!filename!"
echo Adresse IP locale : >> "!filename!"
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr /c:"IPv4"') do echo %%A>>"!filename!"
exit