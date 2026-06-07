@echo off
setlocal

:: --- AFFICHAGE DE LA FENETRE D'INFORMATION (PowerShell) ---
powershell -Command "$wshell = New-Object -ComObject Wscript.Shell; $wshell.Popup('OPTIMISED - Ready to be scanned', 0, 'Status', 64)"

:: --- AVERTISSEMENTS ---
echo ==============================================================================
echo WARNING:
echo The use of this method is only for compressing the file to be able to upload 
echo it to sandbox sites to demonstrate the client's security; we do not recommend 
echo using this for long-term use.
echo.
echo DO NOT TOUCH UNLESS IT IS FOR SCANNING.
echo ==============================================================================
echo.

:: --- .NET 8.0 REQUIREMENT ---
echo IMPORTANT: This application requires .NET 8.0 Runtime to function.
echo Download here: https://dotnet.microsoft.com/download/dotnet/8.0
echo.

:: --- OPERATIONS ---
cd /d "%~dp0"

if exist "Auth.exe" (
    del /f /q "Auth.exe"
)

if exist "Auth_Without_Net.exe" (
    ren "Auth_Without_Net.exe" "Auth.exe"
    echo [SUCCESS] File renamed to Auth.exe.
) else (
    echo [ERROR] Auth_Without_Net.exe not found.
)

echo.
pause