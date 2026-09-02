@echo off
rem Ace Combat 2 Launcher wrapper.
rem Launches the PowerShell + Windows Forms GUI next to this .bat file.
setlocal
set "SCRIPT_DIR=%~dp0"
start "" powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File "%SCRIPT_DIR%AceCombat2Launcher.ps1"
endlocal
