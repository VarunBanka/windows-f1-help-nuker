@echo off
echo Disabling F1 Help functionality...

:: Kill HelpPane if it's running
echo Attempting to terminate HelpPane.exe...
taskkill /f /im HelpPane.exe >nul 2>&1

:: Take ownership and deny execution of HelpPane.exe
echo Taking ownership and disabling HelpPane.exe...
takeown /f %WinDir%\HelpPane.exe >nul
icacls %WinDir%\HelpPane.exe /deny Everyone:(X)

:: Add registry key to prevent HelpPane from launching
echo Modifying registry to disable HelpPane.exe...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\HelpPane.exe" /v Debugger /t REG_SZ /d null_null.exe /f

echo.
echo All steps completed. Please restart your computer to apply changes.
pause
