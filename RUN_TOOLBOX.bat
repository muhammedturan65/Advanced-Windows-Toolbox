@echo off
setlocal

:: ===================================================================
:: YÖNETICI HAKKI ISTE VE POWERSHELL BETIGINI ÇALIŞTIR (v10 Sürümü)
:: ===================================================================

:: 1. Yönetici hakları var mı kontrol et
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

:: 2. Hata kodu 0'dan farklıysa (Yönetici değilse), UAC istemiyle kendini yeniden başlat
if '%errorlevel%' NEQ '0' (
    echo Yonetici haklari isteniyor...
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit
)

:: 3. Yönetici hakları alındı. Konsol başlığını ayarla ve karakter setini UTF-8 yap.
title Advanced Toolbox (Yonetici)
chcp 65001 > nul

:: 4. PowerShell'i çalıştır ve dosyayı UTF-8 olarak okumaya zorla.
powershell -ExecutionPolicy Bypass -Command "$PSDefaultParameterValues['*:Encoding'] = 'utf8'; & '%~dp0Toolbox_GUI_v10.ps1'"

:: 5. Betik bittiğinde pencereyi açık tut (hata ayıklama için)
echo.
echo Betik penceresi kapandi. Cikmak icin bir tusa basin.
pause > nul
endlocal
exit
