@echo off
setlocal enabledelayedexpansion

:: ===================================================================
:: 1. ADMINISTRATOR PRIVILEGE CHECK
:: ===================================================================
net session >nul 2>&1
if %errorlevel% NEQ 0 (
    cls
    echo  [ERROR] Administrator privileges are required for this tool.
    echo  Please right-click the .bat file and select "Run as administrator".
    echo.
    pause
    exit
)

:: ===================================================================
:: 2. MAIN MENU
:: ===================================================================
:MENU
cls
color 0B
title Advanced Windows Toolbox v2.0 - [ADMINISTRATOR]

echo.
echo    ========================================================
echo                 ADVANCED WINDOWS TOOLBOX v2.0
echo    ========================================================
echo.
echo    Please select an operation:
echo.
echo    [1] Ultra-Comprehensive System Cleanup
echo    [2] Network & Connection Tools
echo    [3] System Health & Repair
echo    [4] Quick Tools & Info
echo    [5] Power Plan & Backup
echo.
echo    [0] EXIT
echo.
echo    ========================================================
echo.

set /p choice=Your choice (0-5): 

if "%choice%"=="1" goto CLEANUP_ULTRA
if "%choice%"=="2" goto MENU_NET
if "%choice%"=="3" goto MENU_HEALTH
if "%choice%"=="4" goto MENU_QUICK_TOOLS
if "%choice%"=="5" goto MENU_POWER_BACKUP
if "%choice%"=="0" goto :EOF

echo Invalid selection. Press any key to try again.
pause
goto MENU

:: ===================================================================
:: 1. ULTRA-COMPREHENSIVE CLEANUP
:: ===================================================================
:CLEANUP_ULTRA
cls
title Ultra Cleanup
echo  [CAUTION] This process will close browsers (Chrome, Edge, Firefox)
echo  and will permanently delete many cache files (browser, system, nvidia, etc.)!
echo.
set /p confirm=Do you want to continue? (Y/N): 
if /i NOT "%confirm%"=="Y" goto MENU
cls

echo [+] Stopping services and programs...
net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1
taskkill /f /im chrome.exe >nul 2>&1
taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im firefox.exe >nul 2>&1
taskkill /f /im explorer.exe >nul 2>&1

echo [+] Cleaning classic Temp files (Temp, Prefetch)...
del /f /s /q %systemroot%\Temp\*.* 2>nul
for /d %%i in ("%systemroot%\Temp\*") do rd /s /q "%%i" 2>nul
del /f /s /q %TEMP%\*.* 2>nul
for /d %%i in ("%TEMP%\*") do rd /s /q "%%i" 2>nul
del /f /s /q %systemroot%\Prefetch\*.* 2>nul

echo [+] Emptying Recycle Bin...
Powershell.exe -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue"

echo [+] Cleaning Windows Update & Delivery Optimization caches...
del /f /s /q %systemroot%\SoftwareDistribution\Download\*.* 2>nul
del /f /s /q %WINDIR%\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Cache\*.* 2>nul

echo [+] Cleaning Error Reporting logs...
del /f /s /q %PROGRAMDATA%\Microsoft\Windows\WER\*.* 2>nul

echo [+] Flushing DNS Cache...
ipconfig /flushdns

echo [+] Cleaning Thumbnail Cache...
del /f /s /q /a:h %USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_*.db 2>nul

echo [+] Resetting Microsoft Store Cache...
wsreset.exe -q >nul 2>&1

echo [+] Cleaning NVIDIA Shader Caches...
del /f /s /q %PROGRAMDATA%\NVIDIA\Corporation\NV_Cache\*.* 2>nul
del /f /s /q %USERPROFILE%\AppData\Local\NVIDIA\GLCache\*.* 2>nul

echo [+] Cleaning Google Chrome Cache...
rd /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Cache" 2>nul
rd /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Code Cache" 2>nul

echo [+] Cleaning Microsoft Edge Cache...
rd /s /q "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\Cache" 2>nul
rd /s /q "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\Code Cache" 2>nul

echo [+] Cleaning Mozilla Firefox Caches...
for /d %%p in ("%APPDATA%\Mozilla\Firefox\Profiles\*.*") do (
    if exist "%%p\cache2" rd /s /q "%%p\cache2" 2>nul
    if exist "%%p\shader-cache" rd /s /q "%%p\shader-cache" 2>nul
)

echo [+] Cleaning Windows Event Logs...
for /f "tokens=*" %%a in ('wevtutil el') do (
    echo  - Clearing %%a log...
    wevtutil cl "%%a" >nul 2>&1
)

echo [+] Restarting services and Explorer...
start explorer.exe
net start wuauserv >nul 2>&1
net start bits >nul 2>&1

echo.
echo  -------------------------------------------------
echo   ULTRA-COMPREHENSIVE CLEANUP COMPLETED.
echo  -------------------------------------------------
echo.
pause
goto MENU

:: ===================================================================
:: 2. NETWORK & CONNECTION TOOLS
:: ===================================================================
:MENU_NET
cls
title Network & Connection Tools
echo.
echo    [1] Reset Network Connection (DNS, IP, Winsock)
echo    [2] Show Saved Wi-Fi Passwords
echo    [0] Main Menu
echo.
set /p choice_net=Your choice: 
if "%choice_net%"=="1" goto NET_RESET
if "%choice_net%"=="2" goto WIFI_PASS
if "%choice_net%"=="0" goto MENU
goto MENU_NET

:NET_RESET
cls
title Network Reset
echo [+] Flushing DNS Cache...
ipconfig /flushdns
echo [+] Releasing IP address...
ipconfig /release
echo [+] Renewing IP address...
ipconfig /renew
echo [+] Registering DNS...
ipconfig /registerdns
echo [+] Resetting Winsock catalog...
netsh winsock reset
echo.
echo  [INFO] Restart your computer for all changes to take effect.
echo.
pause
goto MENU_NET

:WIFI_PASS
cls
title Saved Wi-Fi Passwords
echo Listing all saved Wi-Fi profiles and passwords:
echo.
echo    ========================================================
echo.
for /f "tokens=2 delims=:" %%a in ('netsh wlan show profiles') do (
    set "profile=%%a"
    set "profile=!profile:~1!"
    
    for /f "tokens=2 delims=:" %%b in ('netsh wlan show profile name^="!profile!" key^=clear ^| findstr /i "Key Content"') do (
        set "password=%%b"
        set "password=!password:~1!"
        echo  SSID (NETWORK NAME): !profile!
        echo  PASSWORD           : !password!
        echo  -----------------------------------
    )
)
echo.
echo    ========================================================
echo.
pause
goto MENU_NET

:: ===================================================================
:: 3. SYSTEM HEALTH & REPAIR
:: ===================================================================
:MENU_HEALTH
cls
title System Health & Repair
echo.
echo    [1] Repair System Files (SFC & DISM)
echo    [2] Check Disk (CHKDSK - Requires restart)
echo    [0] Main Menu
echo.
set /p choice_health=Your choice: 
if "%choice_health%"=="1" goto SYSTEM_CHECK
if "%choice_health%"=="2" goto CHKDSK
if "%choice_health%"=="0" goto MENU
goto MENU_HEALTH

:SYSTEM_CHECK
cls
title SFC & DISM
echo.
echo  [INFO] This process will scan and repair system files.
echo  An internet connection is required and it may take a long time.
echo.
set /p confirm=Do you want to continue? (Y/N): 
if /i NOT "%confirm%"=="Y" goto MENU_HEALTH
cls
echo [+] Repairing system image (DISM)...
Dism /Online /Cleanup-Image /RestoreHealth
echo.
echo [+] Checking system files (SFC)...
sfc /scannow
echo.
echo  -------------------------------------------------
echo   All checks and repairs are complete.
echo  -------------------------------------------------
echo.
pause
goto MENU_HEALTH

:CHKDSK
cls
title Disk Check (chkdsk)
echo  [WARNING] This process will scan drive C: for errors
echo  and attempt to repair them.
echo.
echo  The operation will be scheduled to run on the
echo  next computer restart.
echo.
set /p confirm=Do you want to schedule CHKDSK for drive C:? (Y/N): 
if /i NOT "%confirm%"=="Y" goto MENU_HEALTH

chkdsk C: /f /r
echo.
echo  [INFO] The operation has been scheduled for the next restart.
echo  If you wish to cancel, use the command 'chkntfs /x c:'
echo.
pause
goto MENU_HEALTH

:: ===================================================================
:: 4. QUICK TOOLS & INFO
:: ===================================================================
:MENU_QUICK_TOOLS
cls
title Quick Tools & Info
echo.
echo    [1] Quick System Info
echo    [2] Kill Task (Force-close program)
echo    [3] Create 'God Mode' Folder on Desktop
echo    [0] Main Menu
echo.
set /p choice_quick=Your choice: 
if "%choice_quick%"=="1" goto INFO
if "%choice_quick%"=="2" goto TASK_KILL
if "%choice_quick%"=="3" goto GODMODE
if "%choice_quick%"=="0" goto MENU
goto MENU_QUICK_TOOLS

:INFO
cls
title Quick System Info
echo.
echo  --- Computer Name ---
echo  %COMPUTERNAME%
echo.
echo  --- Active User ---
echo  %USERNAME%
echo.
echo  --- IP Address ---
ipconfig | findstr /i "IPv4"
echo.
echo  --- MAC Address ---
ipconfig /all | findstr /i "Physical Address"
echo.
echo.
pause
goto MENU_QUICK_TOOLS

:TASK_KILL
cls
title Kill Task
echo.
set /p program=Enter the program name to terminate (e.g., chrome.exe): 
if "%program%"=="" goto MENU_QUICK_TOOLS
echo.
echo [+] Attempting to terminate task %program%...
taskkill /f /im %program% /t >nul 2>&1
if !errorlevel! EQU 0 (
    echo  %program% successfully terminated.
) else (
    echo  [ERROR] %program% not found or could not be terminated.
)
echo.
pause
goto MENU_QUICK_TOOLS

:GODMODE
cls
title God Mode Creator
echo.
echo  A folder named "God Mode" containing all
echo  Control Panel items will be created on your Desktop.
echo.
set /p confirm=Create it? (Y/N): 
if /i NOT "%confirm%"=="Y" goto MENU_QUICK_TOOLS

mkdir "%USERPROFILE%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" 2>nul
if exist "%USERPROFILE%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" (
    echo  [SUCCESS] God Mode folder created on your desktop.
) else (
    echo  [ERROR] Folder could not be created (Maybe it already exists?).
)
echo.
pause
goto MENU_QUICK_TOOLS

:: ===================================================================
:: 5. POWER PLAN & BACKUP
:: ===================================================================
:MENU_POWER_BACKUP
cls
title Power Plan & Backup
echo.
echo    [1] Set Power Plan to 'Balanced'
echo    [2] Set Power Plan to 'High Performance'
echo    [3] Quick Backup (Robocopy)
echo    [0] Main Menu
echo.
set /p choice_power=Your choice: 
if "%choice_power%"=="1" goto POWER_BALANCED
if "%choice_power%"=="2" goto POWER_HIGH
if "%choice_power%"=="3" goto BACKUP
if "%choice_power%"=="0" goto MENU
goto MENU_POWER_BACKUP

:POWER_BALANCED
cls
title Power Plan: Balanced
echo  Setting power plan to 'Balanced'...
:: Standard GUID for Balanced plan
powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e
echo  Operation complete.
pause
goto MENU_POWER_BACKUP

:POWER_HIGH
cls
title Power Plan: High Performance
echo  Setting power plan to 'High Performance'...
:: Standard GUID for High Performance plan
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
echo  Operation complete.
pause
goto MENU_POWER_BACKUP

:BACKUP
cls
title Quick Backup (Robocopy)
echo.
:: --------- SETTINGS ---------
:: EDIT THESE TWO LINES TO MATCH YOUR SETUP:
set SOURCE="C:\Users\YOUR_USERNAME\Documents"
set DESTINATION="D:\Backups\Documents"
:: ----------------------------
echo  Source: %SOURCE%
echo  Destination: %DESTINATION%
echo.
set /p confirm=Do you want to start the backup? (Y/N): 
if /i NOT "%confirm%"=="Y" goto MENU_POWER_BACKUP
echo.
echo Backup started...
robocopy %SOURCE% %DESTINATION% /MIR /E /R:3 /W:5
echo.
echo  -------------------------------
echo   Backup completed.
echo  -------------------------------
echo.
pause
goto MENU_POWER_BACKUP
