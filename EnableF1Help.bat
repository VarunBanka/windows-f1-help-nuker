@echo off
echo Re-enabling HelpPane functionality...

:: Restore HelpPane.exe permissions
echo Removing deny execution permissions...
icacls %WinDir%\HelpPane.exe /remove:d Everyone

:: Delete registry key
echo Removing HelpPane Debugger registry setting...
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\HelpPane.exe" /v Debugger /f

echo.
echo Help function restored. Please restart your computer to apply changes.
pause
