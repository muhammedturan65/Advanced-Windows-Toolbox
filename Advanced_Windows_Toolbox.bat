@echo off
setlocal enabledelayedexpansion

:: ===================================================================
:: 1. YONETICI YETKI KONTROLU
:: ===================================================================
net session >nul 2>&1
if %errorlevel% NEQ 0 (
    cls
    echo  [ERROR] Administrator privileges are required for this tool.
    echo  Lutfen .bat dosyasina sag tiklayip "Yonetici olarak calistir" secin.
    echo.
    echo  Please right-click the .bat file and select "Run as administrator".
    echo.
    pause
    exit
)

:: ===================================================================
:: 2. DIL SECIMI
:: ===================================================================
:LANG_SELECT
cls
echo    ========================================================
echo               Welcome / Hos geldiniz
echo    ========================================================
echo.
echo    [1] English
echo    [2] Turkce
echo.
set /p lang_choice=Select language / Dil secin (1-2): 

if "%lang_choice%"=="1" goto SET_LANG_EN
if "%lang_choice%"=="2" goto SET_LANG_TR

echo Invalid selection. / Gecersiz secim.
pause
goto LANG_SELECT

:: ===================================================================
:: 3. DIL DEGISKENLERI - INGILIZCE
:: ===================================================================
:SET_LANG_EN
set "LANG_YES=Y"
set "LANG_CONFIRM_PROMPT=(Y/N):"
set "LANG_CHOICE_PROMPT=Your choice:"
set "LANG_INVALID_CHOICE=Invalid selection. Press any key to try again."
set "LANG_BACK_TO_MENU=[0] Back to Main Menu"
set "LANG_BACK_TO_SUBMENU=[0] Back"
set "LANG_PLEASE_RESTART=Please RESTART your computer for all changes to take effect!"
set "LANG_OPERATION_COMPLETE=Operation complete."
set "LANG_OPERATION_SCHEDULED=Operation scheduled for next restart."
set "LANG_CONTINUE_PROMPT=Do you want to continue?"
set "LANG_EXPLORER_RESTART_MSG=Explorer will be restarted to apply changes."

:: Ana Menu
set "v5_title=Advanced Windows Toolbox v5.0 - [ADMINISTRATOR]"
set "main_menu_title=Please select a category:"
set "main_opt1=[1] Comprehensive System Cleanup"
set "main_opt2=[2] System Health ^& Repair"
set "main_opt3=[3] Network Tools"
set "main_opt4=[4] Privacy ^& Debloating"
set "main_opt5=[5] System Tools ^& Tweaks"
set "main_opt6=[6] Reporting ^& Info"
set "main_opt7=[7] Software ^& Process Management"
set "main_opt8=[8] Backup"
set "main_opt0=[0] EXIT"

:: 1. Temizlik (Degisiklik yok)
set "cleanup_title=Ultra Cleanup"
set "cleanup_warn1=[CAUTION] This process will close browsers (Chrome, Edge, Firefox)"
set "cleanup_warn2=and will permanently delete many cache files!"
set "cleanup_msg_stop=Stopping services and programs..."
set "cleanup_msg_temp=Cleaning Temp Files (System ^& User)..."
set "cleanup_msg_prefetch=Cleaning Prefetch..."
set "cleanup_msg_recycle=Emptying Recycle Bin..."
set "cleanup_msg_update=Cleaning Windows Update ^& Delivery Optimization caches..."
set "cleanup_msg_error=Cleaning Error Reports..."
set "cleanup_msg_dns=Flushing DNS Cache..."
set "cleanup_msg_thumb=Cleaning Thumbnail Cache..."
set "cleanup_msg_store=Resetting Microsoft Store Cache..."
set "cleanup_msg_gpu=Cleaning NVIDIA/GPU Caches..."
set "cleanup_msg_browser=Cleaning Browser Caches (Chrome, Edge, Firefox)..."
set "cleanup_msg_event=Cleaning Windows Event Logs..."
set "cleanup_msg_restart=Restarting services and Explorer..."
set "cleanup_msg_complete=--- ULTRA CLEANUP COMPLETED ---"

:: 2. Saglik
set "health_title=System Health ^& Repair"
set "health_opt1=[1] Repair System Files (SFC ^& DISM)"
set "health_opt2=[2] Check Disk (CHKDSK - Requires restart)"
set "health_opt3=[3] Start Windows Defender Quick Scan"
set "health_opt4=[4] Reset Print Spooler (Clear stuck jobs)"
set "health_opt5=[5] Open System Restore"
set "health_opt6=[6] Open Reliability Monitor"
set "sfc_dism_title=SFC ^& DISM"
set "sfc_dism_info=[INFO] This will scan and repair system files. (May take a long time)"
set "sfc_dism_msg_dism=Repairing system image (DISM)..."
set "sfc_dism_msg_sfc=Checking system files (SFC)..."
set "sfc_dism_msg_complete=--- Checks and repairs are complete ---"
set "chkdsk_title=Disk Check (chkdsk)"
set "chkdsk_info=[WARNING] This will schedule a scan for C: drive on the next restart."
set "chkdsk_prompt=Schedule CHKDSK for C:?"
set "defender_title=Windows Defender Scan"
set "defender_info=Starting a Windows Defender Quick Scan..."
set "defender_complete=--- Defender Quick Scan finished ---"
set "print_title=Reset Print Spooler"
set "print_info=This will stop the printer service and delete all stuck print jobs."
set "print_msg_stop=Stopping Print Spooler service..."
set "print_msg_clear=Deleting stuck print jobs..."
set "print_msg_start=Starting Print Spooler service..."
set "print_msg_complete=--- Print Spooler has been reset ---"
set "sys_restore_title=System Restore"
set "sys_restore_info=Opening System Properties (Protection)..."
set "reliability_title=Reliability Monitor"
set "reliability_info=Opening Reliability Monitor..."

:: 3. Ag
set "net_title=Network Tools"
set "net_opt1=[1] Reset Network Stack (DNS, IP, Winsock)"
set "net_opt2=[2] Hard Reset Network Adapters (Requires restart)"
set "net_opt3=[3] Show Saved Wi-Fi Passwords"
set "net_opt4=[4] Block Trackers ^& Ads (Modifies Hosts File)"
set "net_reset_title=Network Reset"
set "net_reset_msg_dns=Flushing DNS Cache..."
set "net_reset_msg_ip=Releasing/Renewing IP..."
set "net_reset_msg_winsock=Resetting Winsock catalog..."
set "net_reset_complete=--- Network Stack Reset. Restart computer if issues persist ---"
set "net_hard_title=Hard Reset Network Adapters"
set "net_hard_warn1=[WARNING] This will uninstall and reinstall ALL network adapters."
set "net_hard_warn2=Your computer will need to RESTART to complete the process."
set "net_hard_complete=--- Adapters reset. Please RESTART your computer now! ---"
set "wifi_title=Saved Wi-Fi Passwords"
set "wifi_info=Listing all saved Wi-Fi profiles and passwords:"
set "wifi_ssid=SSID (NETWORK NAME):"
set "wifi_pass=PASSWORD           :"
set "hosts_title=Block Trackers ^& Ads (Hosts File)"
set "hosts_info1=[WARNING] This will download the StevenBlack 'unified' hosts file"
set "hosts_info2=and append it to your system's hosts file. This is not easily reversible."
set "hosts_msg_download=Downloading hosts file from StevenBlack..."
set "hosts_msg_append=Appending new rules to C:\Windows\System32\drivers\etc\hosts..."
set "hosts_msg_flush=Flushing DNS cache..."
set "hosts_msg_complete=--- Hosts file updated successfully ---"
set "hosts_msg_fail=--- FAILED to download hosts file. No changes made ---"

:: 4. Gizlilik ve Debloat
set "privacy_title=Privacy ^& Debloating"
set "privacy_opt1=[1] Privacy Settings (Disable Telemetry, Ad ID)"
set "privacy_opt2=[2] Remove Windows Bloatware (Debloat)"
set "privacy_privacy_title=Privacy Settings"
set "privacy_opt_telemetry=[1] Disable Telemetry Services"
set "privacy_opt_ad_id=[2] Disable Advertising ID ^& Location Tracking"
set "privacy_opt_telemetry_en=[3] Enable Telemetry Services (Default)"
set "privacy_msg_telemetry_off=--- Telemetry Services (DiagTrack, dmwappushservice) disabled ---"
set "privacy_msg_telemetry_on=--- Telemetry Services set to default (Auto) ---"
set "privacy_msg_ad_id_off=--- Advertising ID, Location, and other trackers disabled ---"
set "debloat_title=Windows Debloater"
set "debloat_info=This will permanently remove built-in Windows apps."
set "debloat_warn=This action is NOT easily reversible."
set "debloat_opt1=[1] Remove ALL Bloatware (Aggressive)"
set "debloat_opt2=[2] Remove Xbox Apps"
set "debloat_opt3=[3] Remove Cortana"
set "debloat_opt4=[4] Remove 'Your Phone' / 'Phone Link' App"
set "debloat_opt5=[5] Remove Mixed Reality Portal"
set "debloat_opt6=[6] Remove Solitaire Collection"
set "debloat_opt7=[7] Remove Zune ^& Groove Music"
set "debloat_msg_removing=Removing"
set "debloat_msg_complete=--- Debloat operation finished ---"

:: 5. Ince Ayarlar
set "tweaks_title=System Tools ^& Tweaks"
set "tweaks_opt1=[1] Manage Power Plan (Balanced/High Performance)"
set "tweaks_opt2=[2] Manage Hibernation (On/Off)"
set "tweaks_opt3=[3] Manage Windows Features (Install .NET 3.5 / Hyper-V)"
set "tweaks_opt4=[4] Reset Windows Search Index"
set "tweaks_opt5=[5] Create 'God Mode' Folder on Desktop"
set "tweaks_opt6=[6] Manage Hidden Files (Show/Hide)"
set "tweaks_opt7=[7] Manage File Extensions (Show/Hide)"
set "tweaks_opt8=[8] Rebuild Icon Cache"
set "tweaks_opt9=[9] Launch Task Manager"
set "tweaks_opt10=[10] Launch Event Viewer"
set "power_title=Power Plan Settings"
set "power_opt1=[1] Set to 'Balanced'"
set "power_opt2=[2] Set to 'High Performance'"
set "power_msg_balanced=--- Power Plan set to 'Balanced' ---"
set "power_msg_high=--- Power Plan set to 'High Performance' ---"
set "hiber_title=Toggle Hibernation"
set "hiber_opt1=[1] Disable Hibernation (Frees disk space)"
set "hiber_opt2=[2] Enable Hibernation"
set "hiber_msg_off=--- Hibernation is OFF. hiberfil.sys deleted ---"
set "hiber_msg_on=--- Hibernation is ON ---"
set "feature_title=Manage Windows Features"
set "feature_opt1=[1] Install .NET Framework 3.5 (Requires Internet)"
set "feature_opt2=[2] Install Hyper-V"
set "feature_opt3=[3] Disable Hyper-V"
set "feature_msg_net35=Installing .NET Framework 3.5..."
set "feature_msg_net35_comp=--- .NET 3.5 installation complete ---"
set "feature_msg_hv_on=Installing Hyper-V..."
set "feature_msg_hv_on_comp=--- Hyper-V installed. Restart required ---"
set "feature_msg_hv_off=Disabling Hyper-V..."
set "feature_msg_hv_off_comp=--- Hyper-V disabled. Restart required ---"
set "search_title=Reset Windows Search Index"
set "search_info=This will stop/start the Windows Search service and reset the index."
set "search_msg_stop=Stopping Windows Search service..."
set "search_msg_reset=Resetting index..."
set "search_msg_start=Starting Windows Search service..."
set "search_msg_complete=--- Search Index reset. It will take time to rebuild ---"
set "godmode_title=God Mode Creator"
set "godmode_info=A 'God Mode' folder will be created on your Desktop."
set "godmode_prompt=Create it?"
set "godmode_msg_complete=--- God Mode folder created on Desktop ---"
set "hidden_title=Manage Hidden Files"
set "hidden_opt1=[1] Show Hidden Files"
set "hidden_opt2=[2] Hide Hidden Files"
set "hidden_msg_show=--- Hidden files are now VISIBLE. ---"
set "hidden_msg_hide=--- Hidden files are now HIDDEN. ---"
set "ext_title=Manage File Extensions"
set "ext_opt1=[1] Show File Extensions"
set "ext_opt2=[2] Hide File Extensions"
set "ext_msg_show=--- File extensions are now VISIBLE. ---"
set "ext_msg_hide=--- File extensions are now HIDDEN. ---"
set "icon_cache_title=Rebuild Icon Cache"
set "icon_cache_info=This will fix broken icons by clearing the icon cache."
set "icon_cache_msg_stop=Stopping Explorer..."
set "icon_cache_msg_clear=Clearing icon cache..."
set "icon_cache_msg_start=Restarting Explorer..."
set "icon_cache_msg_complete=--- Icon cache has been rebuilt ---"
set "taskmgr_info=Opening Task Manager..."
set "eventvwr_info=Opening Event Viewer..."

:: 6. Raporlama
set "report_title=Reporting ^& Info"
set "report_opt1=[1] Quick System Info"
set "report_opt2=[2] Generate Battery Report (Laptops)"
set "report_opt3=[3] List ^& Export Installed Programs"
set "info_title=Quick System Info"
set "info_pc_name=--- Computer Name ---"
set "info_user=--- Active User ---"
set "info_ip=--- IP Address ---"
set "info_mac=--- MAC Address ---"
set "battery_title=Generate Battery Report"
set "battery_info=Generating battery health report..."
set "battery_file=battery_report.html"
set "battery_complete=--- Report saved to Desktop: battery_report.html ---"
set "battery_open=Opening the file..."
set "list_prog_title=List ^& Export Installed Programs"
set "list_prog_info=Generating list of installed programs... (This may take a minute)"
set "list_prog_file=Installed_Programs.txt"
set "list_prog_header1=Program List"
set "list_prog_header2============="
set "list_prog_complete=--- List saved to Desktop: Installed_Programs.txt ---"
set "list_prog_open=Opening the file..."

:: 7. Yazilim
set "software_title=Software ^& Process Management"
set "software_opt1=[1] Update All Apps (Winget)"
set "software_opt2=[2] Kill Task (Force-close program)"
set "winget_title=Update All Apps (Winget)"
set "winget_info1=Attempting to upgrade all packages using Winget..."
set "winget_info2=This will download and install updates for all supported apps."
set "wingat_complete=--- Winget update process finished ---"
set "kill_title=Kill Task"
set "kill_prompt=Enter the program name to terminate (e.g., chrome.exe):"
set "kill_msg_attempt=Attempting to terminate task"
set "kill_msg_success=successfully terminated."
set "kill_msg_fail=[ERROR] not found or could not be terminated."

:: 8. Yedekleme
set "backup_title=Quick Backup (Robocopy)"
set "backup_source=Source:"
set "backup_dest=Destination:"
set "backup_prompt=Do you want to start the backup?"
set "backup_msg_start=Backup started..."
set "backup_msg_complete=--- Backup completed ---"

goto MENU_MAIN
:: SON INGILIZCE DEGISKENLER ::

:: ===================================================================
:: 4. DIL DEGISKENLERI - TURKCE
:: ===================================================================
:SET_LANG_TR
set "LANG_YES=E"
set "LANG_CONFIRM_PROMPT=(E/H):"
set "LANG_CHOICE_PROMPT=Seciminiz:"
set "LANG_INVALID_CHOICE=Gecersiz secim. Tekrar denemek icin bir tusa basin."
set "LANG_BACK_TO_MENU=[0] Ana Menu'ye Don"
set "LANG_BACK_TO_SUBMENU=[0] Geri"
set "LANG_PLEASE_RESTART=Tum degisikliklerin uygulanmasi icin lutfen bilgisayari YENIDEN BASLATIN!"
set "LANG_OPERATION_COMPLETE=Islem tamamlandi."
set "LANG_OPERATION_SCHEDULED=Islem bir sonraki yeniden baslatma icin planlandi."
set "LANG_CONTINUE_PROMPT=Devam etmek istiyor musunuz?"
set "LANG_EXPLORER_RESTART_MSG=Degisiklikleri uygulamak icin Explorer yeniden baslatilacak."

:: Ana Menu
set "v5_title=Gelişmiş Windows Araç Kutusu v5.0 - [YÖNETİCİ]"
set "main_menu_title=Lütfen bir kategori seçin:"
set "main_opt1=[1] Kapsamlı Sistem Temizliği"
set "main_opt2=[2] Sistem Sağlığı ve Onarım"
set "main_opt3=[3] Ağ Araçları"
set "main_opt4=[4] Gizlilik ve Debloat (Bloatware Kaldirma)"
set "main_opt5=[5] Sistem Araçları ve İnce Ayarlar"
set "main_opt6=[6] Raporlama ve Bilgi"
set "main_opt7=[7] Yazılım ve İşlem Yönetimi"
set "main_opt8=[8] Yedekleme"
set "main_opt0=[0] ÇIKIŞ"

:: 1. Temizlik (Degisiklik yok)
set "cleanup_title=Ultra Temizlik"
set "cleanup_warn1=[DİKKAT] Bu işlem tarayıcıları (Chrome, Edge, Firefox) kapatacak"
set "cleanup_warn2=ve birçok önbellek dosyasını kalıcı olarak silecek!"
set "cleanup_msg_stop=Hizmetler ve programlar durduruluyor..."
set "cleanup_msg_temp=Geçici Dosyalar temizleniyor (Sistem ve Kullanıcı)..."
set "cleanup_msg_prefetch=Prefetch temizleniyor..."
set "cleanup_msg_recycle=Çöp Kutusu boşaltılıyor..."
set "cleanup_msg_update=Windows Update ve Teslim İyileştirme önbellekleri..."
set "cleanup_msg_error=Hata Raporları temizleniyor..."
set "cleanup_msg_dns=DNS Önbelleği temizleniyor..."
set "cleanup_msg_thumb=Küçük Resim Önbelleği temizleniyor..."
set "cleanup_msg_store=Microsoft Store Önbelleği sıfırlanıyor..."
set "cleanup_msg_gpu=NVIDIA/GPU Önbellekleri temizleniyor..."
set "cleanup_msg_browser=Tarayıcı Önbellekleri temizleniyor (Chrome, Edge, Firefox)..."
set "cleanup_msg_event=Windows Olay Günlükleri temizleniyor..."
set "cleanup_msg_restart=Hizmetler ve Explorer yeniden başlatılıyor..."
set "cleanup_msg_complete=--- ULTRA TEMİZLİK TAMAMLANDI ---"

:: 2. Saglik
set "health_title=Sistem Sağlığı ve Onarım"
set "health_opt1=[1] Sistem Dosyalarını Onar (SFC ^& DISM)"
set "health_opt2=[2] Diski Kontrol Et (CHKDSK - Yeniden başlatma gerekir)"
set "health_opt3=[3] Windows Defender Hızlı Taramasını Başlat"
set "health_opt4=[4] Yazdırma Biriktiricisini Sıfırla (Takılı işleri temizle)"
set "health_opt5=[5] Sistem Geri Yükleme'yi Aç"
set "health_opt6=[6] Güvenilirlik İzleyicisi'ni Aç"
set "sfc_dism_title=SFC ^& DISM"
set "sfc_dism_info=[BİLGİ] Sistem dosyaları taranacak ve onarılacak. (Uzun sürebilir)"
set "sfc_dism_msg_dism=Sistem imajı onarılıyor (DISM)..."
set "sfc_dism_msg_sfc=Sistem dosyaları kontrol ediliyor (SFC)..."
set "sfc_dism_msg_complete=--- Kontroller ve onarımlar tamamlandı ---"
set "chkdsk_title=Disk Kontrolü (chkdsk)"
set "chkdsk_info=[UYARI] C: sürücüsü için bir sonraki yeniden başlatmada tarama planlanacak."
set "chkdsk_prompt=C: için CHKDSK planlansın mı?"
set "defender_title=Windows Defender Taraması"
set "defender_info=Windows Defender Hızlı Taraması başlatılıyor..."
set "defender_complete=--- Defender Hızlı Taraması tamamlandı ---"
set "print_title=Yazdırma Biriktiricisini Sıfırla"
set "print_info=Bu işlem yazıcı hizmetini durduracak ve takılı kalan tüm işleri silecek."
set "print_msg_stop=Yazdırma Biriktiricisi hizmeti durduruluyor..."
set "print_msg_clear=Takılı yazdırma işleri siliniyor..."
set "print_msg_start=Yazdırma Biriktiricisi hizmeti başlatılıyor..."
set "print_msg_complete=--- Yazdırma Biriktiricisi sıfırlandı ---"
set "sys_restore_title=Sistem Geri Yükleme"
set "sys_restore_info=Sistem Özellikleri (Koruma) açılıyor..."
set "reliability_title=Güvenilirlik İzleyicisi"
set "reliability_info=Güvenilirlik İzleyicisi açılıyor..."

:: 3. Ag
set "net_title=Ağ Araçları"
set "net_opt1=[1] Ağ Yığınını Sıfırla (DNS, IP, Winsock)"
set "net_opt2=[2] Ağ Bağdaştırıcılarını Sert Sıfırla (Yeniden başlatma gerekir)"
set "net_opt3=[3] Kayıtlı Wi-Fi Şifrelerini Göster"
set "net_opt4=[4] İzleyicileri ^& Reklamları Engelle (Hosts Dosyasını Değiştirir)"
set "net_reset_title=Ağ Sıfırlama"
set "net_reset_msg_dns=DNS Önbelleği temizleniyor..."
set "net_reset_msg_ip=IP serbest bırakılıyor/yenileniyor..."
set "net_reset_msg_winsock=Winsock katalogu sıfırlanıyor..."
set "net_reset_complete=--- Ağ Yığını Sıfırlandı. Sorun devam ederse yeniden başlatın ---"
set "net_hard_title=Ağ Bağdaştırıcılarını Sert Sıfırla"
set "net_hard_warn1=[UYARI] Bu, TÜM ağ bağdaştırıcılarını kaldıracak ve yeniden yükleyecektir."
set "net_hard_warn2=İşlemi tamamlamak için bilgisayarınızın YENİDEN BAŞLATILMASI gerekir."
set "net_hard_complete=--- Bağdaştırıcılar sıfırlandı. Lütfen şimdi bilgisayarı YENİDEN BAŞLATIN! ---"
set "wifi_title=Kayıtlı Wi-Fi Şifreleri"
set "wifi_info=Kayıtlı tüm Wi-Fi profilleri ve şifreleri listeleniyor:"
set "wifi_ssid=AĞ ADI (SSID):"
set "wifi_pass=ŞİFRE         :"
set "hosts_title=İzleyicileri ^& Reklamları Engelle (Hosts Dosyası)"
set "hosts_info1=[UYARI] Bu işlem, StevenBlack 'birleşik' hosts dosyasını indirecek"
set "hosts_info2=ve sisteminizin hosts dosyasına ekleyecektir. Bu işlem kolayca geri alınamaz."
set "hosts_msg_download=Hosts dosyası StevenBlack'ten indiriliyor..."
set "hosts_msg_append=Yeni kurallar C:\Windows\System32\drivers\etc\hosts dosyasina ekleniyor..."
set "hosts_msg_flush=DNS önbelleği temizleniyor..."
set "hosts_msg_complete=--- Hosts dosyası başarıyla güncellendi ---"
set "hosts_msg_fail=--- Hosts dosyası İNDİRİLEMEDİ. Değişiklik yapılmadı ---"

:: 4. Gizlilik ve Debloat
set "privacy_title=Gizlilik ^& Debloat"
set "privacy_opt1=[1] Gizlilik Ayarları (Telemetri, Reklam ID Kapat)"
set "privacy_opt2=[2] Windows Bloatware Kaldır (Debloat)"
set "privacy_privacy_title=Gizlilik Ayarları"
set "privacy_opt_telemetry=[1] Telemetri Hizmetlerini Devre Dışı Bırak"
set "privacy_opt_ad_id=[2] Reklam ID ^& Konum Takibini Kapat"
set "privacy_opt_telemetry_en=[3] Telemetri Hizmetlerini Etkinleştir (Varsayılan)"
set "privacy_msg_telemetry_off=--- Telemetri Hizmetleri (DiagTrack, dmwappushservice) devre dışı bırakıldı ---"
set "privacy_msg_telemetry_on=--- Telemetri Hizmetleri varsayılana (Otomatik) ayarlandı ---"
set "privacy_msg_ad_id_off=--- Reklam ID, Konum ve diğer izleyiciler devre dışı bırakıldı ---"
set "debloat_title=Windows Bloatware Kaldırıcı"
set "debloat_info=Bu işlem, gömülü Windows uygulamalarını kalıcı olarak kaldıracaktır."
set "debloat_warn=Bu işlem kolayca GERİ ALINAMAZ."
set "debloat_opt1=[1] TÜM Bloatware Uygulamalarını Kaldır (Agresif)"
set "debloat_opt2=[2] Xbox Uygulamalarını Kaldır"
set "debloat_opt3=[3] Cortana'yı Kaldır"
set "debloat_opt4=[4] 'Telefonunuz' / 'Telefon Bağlantısı' Uygulamasını Kaldır"
set "debloat_opt5=[5] Karma Gerçeklik Portalı'nı Kaldır"
set "debloat_opt6=[6] Solitaire Collection'ı Kaldır"
set "debloat_opt7=[7] Zune ^& Groove Music'i Kaldır"
set "debloat_msg_removing=Kaldırılıyor"
set "debloat_msg_complete=--- Debloat işlemi tamamlandı ---"

:: 5. Ince Ayarlar
set "tweaks_title=Sistem Araçları ve İnce Ayarlar"
set "tweaks_opt1=[1] Güç Planını Yönet (Dengeli/Yüksek Performans)"
set "tweaks_opt2=[2] Hazırda Bekleme Modunu Yönet (Aç/Kapat)"
set "tweaks_opt3=[3] Windows Özelliklerini Yönet (NET 3.5 / Hyper-V Yükle)"
set "tweaks_opt4=[4] Windows Arama Dizinini Sıfırla"
set "tweaks_opt5=[5] Masaüstüne 'God Mode' Klasörü Oluştur"
set "tweaks_opt6=[6] Gizli Dosyaları Yönet (Göster/Gizle)"
set "tweaks_opt7=[7] Dosya Uzantılarını Yönet (Göster/Gizle)"
set "tweaks_opt8=[8] Simge Önbelleğini Yeniden Oluştur"
set "tweaks_opt9=[9] Görev Yöneticisi'ni Başlat"
set "tweaks_opt10=[10] Olay Görüntüleyicisi'ni Başlat"
set "power_title=Güç Planı Ayarları"
set "power_opt1=[1] 'Dengeli' Olarak Ayarla"
set "power_opt2=[2] 'Yüksek Performans' Olarak Ayarla"
set "power_msg_balanced=--- Güç Planı 'Dengeli' olarak ayarlandı ---"
set "power_msg_high=--- Güç Planı 'Yüksek Performans' olarak ayarlandı ---"
set "hiber_title=Hazırda Bekleme Modu"
set "hiber_opt1=[1] Hazırda Bekleme'yi Kapat (Disk alanı açar)"
set "hiber_opt2=[2] Hazırda Bekleme'yi Aç"
set "hiber_msg_off=--- Hazırda Bekleme KAPALI. hiberfil.sys silindi ---"
set "hiber_msg_on=--- Hazırda Bekleme AÇIK ---"
set "feature_title=Windows Özelliklerini Yönet"
set "feature_opt1=[1] .NET Framework 3.5 Yükle (İnternet gerekir)"
set "feature_opt2=[2] Hyper-V Yükle"
set "feature_opt3=[3] Hyper-V Kaldır"
set "feature_msg_net35=NET Framework 3.5 yükleniyor..."
set "feature_msg_net35_comp=--- .NET 3.5 yüklemesi tamamlandı ---"
set "feature_msg_hv_on=Hyper-V yükleniyor..."
set "feature_msg_hv_on_comp=--- Hyper-V yüklendi. Yeniden başlatma gerekli ---"
set "feature_msg_hv_off=Hyper-V kaldırılıyor..."
set "feature_msg_hv_off_comp=--- Hyper-V kaldırıldı. Yeniden başlatma gerekli ---"
set "search_title=Windows Arama Dizinini Sıfırla"
set "search_info=Bu, Windows Arama hizmetini durdurup/başlatacak ve dizini sıfırlayacak."
set "search_msg_stop=Windows Arama hizmeti durduruluyor..."
set "search_msg_reset=Dizin sıfırlanıyor..."
set "search_msg_start=Windows Arama hizmeti başlatılıyor..."
set "search_msg_complete=--- Arama Dizini sıfırlandı. Yeniden oluşturulması zaman alacak ---"
set "godmode_title=God Mode Oluşturucu"
set "godmode_info=Masaüstünüzde 'God Mode' adında bir klasör oluşturulacak."
set "godmode_prompt=Oluşturulsun mu?"
set "godmode_msg_complete=--- God Mode klasörü Masaüstünde oluşturuldu ---"
set "hidden_title=Gizli Dosyaları Yönet"
set "hidden_opt1=[1] Gizli Dosyaları Göster"
set "hidden_opt2=[2] Gizli Dosyaları Gizle"
set "hidden_msg_show=--- Gizli dosyalar artık GÖRÜNÜR. ---"
set "hidden_msg_hide=--- Gizli dosyalar artık GİZLİ. ---"
set "ext_title=Dosya Uzantılarını Yönet"
set "ext_opt1=[1] Dosya Uzantılarını Göster"
set "ext_opt2=[2] Dosya Uzantılarını Gizle"
set "ext_msg_show=--- Dosya uzantıları artık GÖRÜNÜR. ---"
set "ext_msg_hide=--- Dosya uzantıları artık GİZLİ. ---"
set "icon_cache_title=Simge Önbelleğini Yeniden Oluştur"
set "icon_cache_info=Bu, simge önbelleğini temizleyerek bozuk simgeleri düzeltecektir."
set "icon_cache_msg_stop=Explorer durduruluyor..."
set "icon_cache_msg_clear=Simge önbelleği temizleniyor..."
set "icon_cache_msg_start=Explorer yeniden başlatılıyor..."
set "icon_cache_msg_complete=--- Simge önbelleği yeniden oluşturuldu ---"
set "taskmgr_info=Görev Yöneticisi açılıyor..."
set "eventvwr_info=Olay Görüntüleyicisi açılıyor..."

:: 6. Raporlama
set "report_title=Raporlama ve Bilgi"
set "report_opt1=[1] Hızlı Sistem Bilgisi"
set "report_opt2=[2] Pil Raporu Oluştur (Laptoplar için)"
set "report_opt3=[3] Yüklü Programları Listele ^& Dışa Aktar"
set "info_title=Hızlı Sistem Bilgisi"
set "info_pc_name=--- Bilgisayar Adı ---"
set "info_user=--- Aktif Kullanıcı ---"
set "info_ip=--- IP Adresi ---"
set "info_mac=--- MAC Adresi ---"
set "battery_title=Pil Raporu Oluştur"
set "battery_info=Pil sağlığı raporu oluşturuluyor..."
set "battery_file=pil_raporu.html"
set "battery_complete=--- Rapor Masaüstüne kaydedildi: pil_raporu.html ---"
set "battery_open=Dosya açılıyor..."
set "list_prog_title=Yüklü Programları Listele ^& Dışa Aktar"
set "list_prog_info=Yüklü programlar listesi oluşturuluyor... (Bu bir dakika sürebilir)"
set "list_prog_file=Yuklu_Programlar.txt"
set "list_prog_header1=Program Listesi"
set "list_prog_header2================"
set "list_prog_complete=--- Liste Masaüstüne kaydedildi: Yuklu_Programlar.txt ---"
set "list_prog_open=Dosya açılıyor..."

:: 7. Yazilim
set "software_title=Yazılım ve İşlem Yönetimi"
set "software_opt1=[1] Tüm Uygulamaları Güncelle (Winget)"
set "software_opt2=[2] Görevi Sonlandır (Program Kapatmaya Zorla)"
set "winget_title=Tüm Uygulamaları Güncelle (Winget)"
set "winget_info1=Winget kullanarak tüm paketler güncellenmeye çalışılıyor..."
set "winget_info2=Bu, desteklenen tüm uygulamalar için güncellemeleri indirip yükleyecektir."
set "wingat_complete=--- Winget güncelleme işlemi tamamlandı ---"
set "kill_title=Görev Sonlandırıcı"
set "kill_prompt=Sonlandırmak istediğiniz program (Örn: chrome.exe):"
set "kill_msg_attempt=görevi sonlandırılmaya çalışılıyor..."
set "kill_msg_success=başarıyla sonlandırıldı."
set "kill_msg_fail=[HATA] bulunamadı veya sonlandırılamadı."

:: 8. Yedekleme
set "backup_title=Hızlı Yedekleme (Robocopy)"
set "backup_source=Kaynak:"
set "backup_dest=Hedef:"
set "backup_prompt=Yedeklemeyi başlatmak istiyor musunuz?"
set "backup_msg_start=Yedekleme başlatıldı..."
set "backup_msg_complete=--- Yedekleme tamamlandı ---"

goto MENU_MAIN
:: SON TURKCE DEGISKENLER ::


:: ===================================================================
::
::              EVRENSEL KOMUT MERKEZI
::        (Buradan itibaren kod dil bagimsizdir)
::
:: ===================================================================

:: ===================================================================
:: ANA MENU
:: ===================================================================
:MENU_MAIN
cls
title %v5_title%
echo.
echo    ========================================================
echo                 %v5_title%
echo    ========================================================
echo.
echo    %main_menu_title%
echo.
echo    %main_opt1%
echo    %main_opt2%
echo    %main_opt3%
echo    %main_opt4%
echo    %main_opt5%
echo    %main_opt6%
echo    %main_opt7%
echo    %main_opt8%
echo.
echo    %main_opt0%
echo.
echo    ========================================================
echo.

set /p choice=%LANG_CHOICE_PROMPT% 

if "%choice%"=="1" goto CLEANUP_ULTRA
if "%choice%"=="2" goto MENU_HEALTH
if "%choice%"=="3" goto MENU_NET
if "%choice%"=="4" goto MENU_PRIVACY
if "%choice%"=="5" goto MENU_TWEAKS
if "%choice%"=="6" goto MENU_REPORTING
if "%choice%"=="7" goto MENU_SOFTWARE
if "%choice%"=="8" goto MENU_BACKUP
if "%choice%"=="0" goto :EOF

echo %LANG_INVALID_CHOICE%
pause
goto MENU_MAIN

:: ===================================================================
:: 1. KAPSAMLI TEMIZLIK
:: ===================================================================
:CLEANUP_ULTRA
cls
title %cleanup_title%
echo  %cleanup_warn1%
echo  %cleanup_warn2%
echo.
set /p confirm=%LANG_CONTINUE_PROMPT% %LANG_CONFIRM_PROMPT%
if /i NOT "%confirm%"=="%LANG_YES%" goto MENU_MAIN
cls
echo [+] %cleanup_msg_stop%
net stop wuauserv >nul 2>&1 & net stop bits >nul 2>&1
taskkill /f /im chrome.exe >nul 2>&1 & taskkill /f /im msedge.exe >nul 2>&1 & taskkill /f /im firefox.exe >nul 2>&1 & taskkill /f /im explorer.exe >nul 2>&1
echo [+] %cleanup_msg_temp%
del /f /s /q %systemroot%\Temp\*.* 2>nul & for /d %%i in ("%systemroot%\Temp\*") do rd /s /q "%%i" 2>nul
del /f /s /q %TEMP%\*.* 2>nul & for /d %%i in ("%TEMP%\*") do rd /s /q "%%i" 2>nul
echo [+] %cleanup_msg_prefetch%
del /f /s /q %systemroot%\Prefetch\*.* 2>nul
echo [+] %cleanup_msg_recycle%
Powershell.exe -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue"
echo [+] %cleanup_msg_update%
del /f /s /q %systemroot%\SoftwareDistribution\Download\*.* 2>nul
del /f /s /q %WINDIR%\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Cache\*.* 2>nul
echo [+] %cleanup_msg_error%
del /f /s /q %PROGRAMDATA%\Microsoft\Windows\WER\*.* 2>nul
echo [+] %cleanup_msg_dns%
ipconfig /flushdns
echo [+] %cleanup_msg_thumb%
del /f /s /q /a:h %USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_*.db 2>nul
echo [+] %cleanup_msg_store%
wsreset.exe -q >nul 2>&1
echo [+] %cleanup_msg_gpu%
del /f /s /q %PROGRAMDATA%\NVIDIA\Corporation\NV_Cache\*.* 2>nul
del /f /s /q %USERPROFILE%\AppData\Local\NVIDIA\GLCache\*.* 2>nul
echo [+] %cleanup_msg_browser%
rd /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Cache" 2>nul
rd /s /q "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\Cache" 2>nul
for /d %%p in ("%APPDATA%\Mozilla\Firefox\Profiles\*.*") do ( if exist "%%p\cache2" rd /s /q "%%p\cache2" 2>nul )
echo [+] %cleanup_msg_event%
for /f "tokens=*" %%a in ('wevtutil el') do ( wevtutil cl "%%a" >nul 2>&1 )
echo [+] %cleanup_msg_restart%
start explorer.exe & net start wuauserv >nul 2>&1 & net start bits >nul 2>&1
echo. & echo  %cleanup_msg_complete% & echo.
pause
goto MENU_MAIN

:: ===================================================================
:: 2. SISTEM SAGLIGI VE ONARIM
:: ===================================================================
:MENU_HEALTH
cls
title %health_title%
echo.
echo    %health_opt1%
echo    %health_opt2%
echo    %health_opt3%
echo    %health_opt4%
echo    %health_opt5%
echo    %health_opt6%
echo    %LANG_BACK_TO_MENU%
echo.
set /p choice_health=%LANG_CHOICE_PROMPT% 
if "%choice_health%"=="1" goto SYSTEM_CHECK
if "%choice_health%"=="2" goto CHKDSK
if "%choice_health%"=="3" goto DEFENDER_SCAN
if "%choice_health%"=="4" goto PRINT_RESET
if "%choice_health%"=="5" goto SYSTEM_RESTORE
if "%choice_health%"=="6" goto RELIABILITY_MONITOR
if "%choice_health%"=="0" goto MENU_MAIN
goto MENU_HEALTH

:SYSTEM_CHECK
cls & title %sfc_dism_title%
echo  %sfc_dism_info%
set /p confirm=%LANG_CONTINUE_PROMPT% %LANG_CONFIRM_PROMPT% 
if /i NOT "%confirm%"=="%LANG_YES%" goto MENU_HEALTH
cls
echo [+] %sfc_dism_msg_dism%
Dism /Online /Cleanup-Image /RestoreHealth
echo.
echo [+] %sfc_dism_msg_sfc%
sfc /scannow
echo. & echo  %sfc_dism_msg_complete% & echo.
pause
goto MENU_HEALTH

:CHKDSK
cls & title %chkdsk_title%
echo  %chkdsk_info%
set /p confirm=%chkdsk_prompt% %LANG_CONFIRM_PROMPT%
if /i NOT "%confirm%"=="%LANG_YES%" goto MENU_HEALTH
chkdsk C: /f /r
echo. & echo  %LANG_OPERATION_SCHEDULED% & echo.
pause
goto MENU_HEALTH

:DEFENDER_SCAN
cls & title %defender_title%
echo [+] %defender_info%
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
echo. & echo  %defender_complete% & echo.
pause
goto MENU_HEALTH

:PRINT_RESET
cls & title %print_title%
echo %print_info%
set /p confirm=%LANG_CONTINUE_PROMPT% %LANG_CONFIRM_PROMPT%
if /i NOT "%confirm%"=="%LANG_YES%" goto MENU_HEALTH
cls
echo [+] %print_msg_stop%
net stop spooler
echo [+] %print_msg_clear%
del /F /S /Q %systemroot%\System32\spool\PRINTERS\*.* 2>nul
echo [+] %print_msg_start%
net start spooler
echo. & echo  %print_msg_complete% & echo.
pause
goto MENU_HEALTH

:SYSTEM_RESTORE
cls & title %sys_restore_title%
echo [+] %sys_restore_info%
systempropertiesprotection.exe
echo. & echo  %LANG_OPERATION_COMPLETE% & echo.
pause
goto MENU_HEALTH

:RELIABILITY_MONITOR
cls & title %reliability_title%
echo [+] %reliability_info%
perfmon /rel
echo. & echo  %LANG_OPERATION_COMPLETE% & echo.
pause
goto MENU_HEALTH

:: ===================================================================
:: 3. AG ARACLARI
:: ===================================================================
:MENU_NET
cls
title %net_title%
echo.
echo    %net_opt1%
echo    %net_opt2%
echo    %net_opt3%
echo    %net_opt4%
echo    %LANG_BACK_TO_MENU%
echo.
set /p choice_net=%LANG_CHOICE_PROMPT% 
if "%choice_net%"=="1" goto NET_RESET
if "%choice_net%"=="2" goto NET_HARD_RESET
if "%choice_net%"=="3" goto WIFI_PASS
if "%choice_net%"=="4" goto HOSTS_BLOCK
if "%choice_net%"=="0" goto MENU_MAIN
goto MENU_NET

:NET_RESET
cls & title %net_reset_title%
echo [+] %net_reset_msg_dns%
ipconfig /flushdns
echo [+] %net_reset_msg_ip%
ipconfig /release >nul 2>&1 & ipconfig /renew >nul 2>&1
echo [+] %net_reset_msg_winsock%
netsh winsock reset
echo. & echo  %net_reset_complete% & echo.
pause
goto MENU_NET

:NET_HARD_RESET
cls & title %net_hard_title%
echo %net_hard_warn1%
echo %net_hard_warn2%
set /p confirm=%LANG_CONTINUE_PROMPT% %LANG_CONFIRM_PROMPT% 
if /i NOT "%confirm%"=="%LANG_YES%" goto MENU_NET
netcfg -d >nul 2>&1
echo. & echo  %net_hard_complete% & echo.
pause
goto MENU_NET

:WIFI_PASS
cls & title %wifi_title%
echo %wifi_info%
echo. & echo    ======================================================== & echo.
for /f "tokens=2 delims=:" %%a in ('netsh wlan show profiles') do (
    set "profile=%%a" & set "profile=!profile:~1!"
    for /f "tokens=2 delims=:" %%b in ('netsh wlan show profile name^="!profile!" key^=clear ^| findstr /i "Key Content"') do (
        set "password=%%b" & set "password=!password:~1!"
        echo  %wifi_ssid% !profile!
        echo  %wifi_pass% !password!
        echo  -----------------------------------
    )
)
echo. & echo    ======================================================== & echo.
pause
goto MENU_NET

:HOSTS_BLOCK
cls & title %hosts_title%
echo %hosts_info1%
echo %hosts_info2%
echo.
set /p confirm=%LANG_CONTINUE_PROMPT% %LANG_CONFIRM_PROMPT% 
if /i NOT "%confirm%"=="%LANG_YES%" goto MENU_NET
cls
echo [+] %hosts_msg_download%
curl -o "%TEMP%\hosts_downloaded" "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"
if %errorlevel% NEQ 0 (
    echo. & echo  %hosts_msg_fail% & echo.
    pause
    goto MENU_NET
)
echo [+] %hosts_msg_append%
type "%TEMP%\hosts_downloaded" >> C:\Windows\System32\drivers\etc\hosts
del "%TEMP%\hosts_downloaded"
echo [+] %hosts_msg_flush%
ipconfig /flushdns
echo. & echo  %hosts_msg_complete% & echo.
pause
goto MENU_NET

:: ===================================================================
:: 4. GIZLILIK VE DEBLOAT
:: ===================================================================
:MENU_PRIVACY
cls
title %privacy_title%
echo.
echo    %privacy_opt1%
echo    %privacy_opt2%
echo    %LANG_BACK_TO_MENU%
echo.
set /p choice_privacy=%LANG_CHOICE_PROMPT% 
if "%choice_privacy%"=="1" goto MENU_PRIVACY_SETTINGS
if "%choice_privacy%"=="2" goto MENU_DEBLOAT
if "%choice_privacy%"=="0" goto MENU_MAIN
goto MENU_PRIVACY

:MENU_PRIVACY_SETTINGS
cls & title %privacy_privacy_title%
echo. & echo    %privacy_opt_telemetry% & echo    %privacy_opt_ad_id% & echo    %privacy_opt_telemetry_en% & echo    %LANG_BACK_TO_SUBMENU% & echo.
set /p choice_priv_set=%LANG_CHOICE_PROMPT%
if "%choice_priv_set%"=="1" goto PRIVACY_TELEMETRY_OFF
if "%choice_priv_set%"=="2" goto PRIVACY_AD_ID_OFF
if "%choice_priv_set%"=="3" goto PRIVACY_TELEMETRY_ON
if "%choice_priv_set%"=="0" goto MENU_PRIVACY
goto MENU_PRIVACY_SETTINGS
:PRIVACY_TELEMETRY_OFF
sc config DiagTrack start= disabled >nul 2>&1
sc config dmwappushservice start= disabled >nul 2>&1
echo  %privacy_msg_telemetry_off% & pause & goto MENU_PRIVACY_SETTINGS
:PRIVACY_TELEMETRY_ON
sc config DiagTrack start= auto >nul 2>&1
sc config dmwappushservice start= auto >nul 2>&1
echo  %privacy_msg_telemetry_on% & pause & goto MENU_PRIVACY_SETTINGS
:PRIVACY_AD_ID_OFF
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ADLX_Privacy\AllowAdvertisingId" /v value /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Control Panel\International\User Profile" /v HttpAcceptLanguageOptOut /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{BFA794E4-F964-4FDB-90F6-51056B0E4B1F}" /v Value /t REG_SZ /d "Deny" /f >nul
echo  %privacy_msg_ad_id_off% & pause & goto MENU_PRIVACY_SETTINGS

:MENU_DEBLOAT
cls & title %debloat_title%
echo %debloat_info%
echo %debloat_warn%
echo.
echo    %debloat_opt1%
echo    %debloat_opt2%
echo    %debloat_opt3%
echo    %debloat_opt4%
echo    %debloat_opt5%
echo    %debloat_opt6%
echo    %debloat_opt7%
echo    %LANG_BACK_TO_SUBMENU%
echo.
set /p choice_debloat=%LANG_CHOICE_PROMPT%
if "%choice_debloat%"=="1" goto DEBLOAT_ALL
if "%choice_debloat%"=="2" goto DEBLOAT_XBOX
if "%choice_debloat%"=="3" goto DEBLOAT_CORTANA
if "%choice_debloat%"=="4" goto DEBLOAT_YOURPHONE
if "%choice_debloat%"=="5" goto DEBLOAT_MIXEDREALITY
if "%choice_debloat%"=="6" goto DEBLOAT_SOLITAIRE
if "%choice_debloat%"=="7" goto DEBLOAT_ZUNE
if "%choice_debloat%"=="0" goto MENU_PRIVACY
goto MENU_DEBLOAT

:DEBLOAT_XBOX
echo [+] %debloat_msg_removing% Xbox...
Powershell.exe -Command "Get-AppxPackage *xboxapp* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *XboxGameOverlay* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *XboxGamingOverlay* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *XboxSpeechToTextOverlay* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage"
echo. & echo  %LANG_OPERATION_COMPLETE% & pause & goto MENU_DEBLOAT
:DEBLOAT_CORTANA
echo [+] %debloat_msg_removing% Cortana...
Powershell.exe -Command "Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage"
echo. & echo  %LANG_OPERATION_COMPLETE% & pause & goto MENU_DEBLOAT
:DEBLOAT_YOURPHONE
echo [+] %debloat_msg_removing% Your Phone / Phone Link...
Powershell.exe -Command "Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage"
echo. & echo  %LANG_OPERATION_COMPLETE% & pause & goto MENU_DEBLOAT
:DEBLOAT_MIXEDREALITY
echo [+] %debloat_msg_removing% Mixed Reality Portal...
Powershell.exe -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
echo. & echo  %LANG_OPERATION_COMPLETE% & pause & goto MENU_DEBLOAT
:DEBLOAT_SOLITAIRE
echo [+] %debloat_msg_removing% Solitaire Collection...
Powershell.exe -Command "Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
echo. & echo  %LANG_OPERATION_COMPLETE% & pause & goto MENU_DEBLOAT
:DEBLOAT_ZUNE
echo [+] %debloat_msg_removing% Zune / Groove...
Powershell.exe -Command "Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage"
echo. & echo  %LANG_OPERATION_COMPLETE% & pause & goto MENU_DEBLOAT
:DEBLOAT_ALL
echo [+] %debloat_msg_removing% ALL Bloatware...
Powershell.exe -Command "Get-AppxPackage *3DBuilder* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.Office.OneNote* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.People* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.Windows.Photos* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.WindowsCalculator* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.Xbox* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
Powershell.exe -Command "Get-AppxPackage *Microsoft.Zune* | Remove-AppxPackage"
echo. & echo  %debloat_msg_complete% & echo.
pause
goto MENU_DEBLOAT

:: ===================================================================
:: 5. SISTEM ARACLARI VE INCE AYARLAR
:: ===================================================================
:MENU_TWEAKS
cls
title %tweaks_title%
echo.
echo    %tweaks_opt1%
echo    %tweaks_opt2%
echo    %tweaks_opt3%
echo    %tweaks_opt4%
echo    %tweaks_opt5%
echo    %tweaks_opt6%
echo    %tweaks_opt7%
echo    %tweaks_opt8%
echo    %tweaks_opt9%
echo    %tweaks_opt10%
echo    %LANG_BACK_TO_MENU%
echo.
set /p choice_tweaks=%LANG_CHOICE_PROMPT% 
if "%choice_tweaks%"=="1" goto MENU_POWER
if "%choice_tweaks%"=="2" goto MENU_HIBERNATION
if "%choice_tweaks%"=="3" goto MENU_FEATURES
if "%choice_tweaks%"=="4" goto SEARCH_RESET
if "%choice_tweaks%"=="5" goto GODMODE
if "%choice_tweaks%"=="6" goto MENU_HIDDEN_FILES
if "%choice_tweaks%"=="7" goto MENU_EXTENSIONS
if "%choice_tweaks%"=="8" goto ICON_CACHE_RESET
if "%choice_tweaks%"=="9" goto LAUNCH_TASKMGR
if "%choice_tweaks%"=="10" goto LAUNCH_EVENTVWR
if "%choice_tweaks%"=="0" goto MENU_MAIN
goto MENU_TWEAKS

:MENU_POWER
cls & title %power_title%
echo. & echo    %power_opt1% & echo    %power_opt2% & echo    %LANG_BACK_TO_SUBMENU% & echo.
set /p choice_power=%LANG_CHOICE_PROMPT%
if "%choice_power%"=="1" goto POWER_BALANCED
if "%choice_power%"=="2" goto POWER_HIGH
if "%choice_power%"=="0" goto MENU_TWEAKS
goto MENU_POWER
:POWER_BALANCED
powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e
echo  %power_msg_balanced% & pause & goto MENU_POWER
:POWER_HIGH
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
echo  %power_msg_high% & pause & goto MENU_POWER

:MENU_HIBERNATION
cls & title %hiber_title%
echo. & echo    %hiber_opt1% & echo    %hiber_opt2% & echo    %LANG_BACK_TO_SUBMENU% & echo.
set /p choice_hiber=%LANG_CHOICE_PROMPT%
if "%choice_hiber%"=="1" goto HIBER_OFF
if "%choice_hiber%"=="2" goto HIBER_ON
if "%choice_hiber%"=="0" goto MENU_TWEAKS
goto MENU_HIBERNATION
:HIBER_OFF
powercfg -h off
echo  %hiber_msg_off% & pause & goto MENU_HIBERNATION
:HIBER_ON
powercfg -h on
echo  %hiber_msg_on% & pause & goto MENU_HIBERNATION

:MENU_FEATURES
cls & title %feature_title%
echo. & echo    %feature_opt1% & echo    %feature_opt2% & echo    %feature_opt3% & echo    %LANG_BACK_TO_SUBMENU% & echo.
set /p choice_feat=%LANG_CHOICE_PROMPT%
if "%choice_feat%"=="1" goto FEAT_NET35
if "%choice_feat%"=="2" goto FEAT_HYPERV_ON
if "%choice_feat%"=="3" goto FEAT_HYPERV_OFF
if "%choice_feat%"=="0" goto MENU_TWEAKS
goto MENU_FEATURES
:FEAT_NET35
echo [+] %feature_msg_net35%
Dism /online /Enable-Feature /FeatureName:NetFx3 /All
echo  %feature_msg_net35_comp% & pause & goto MENU_FEATURES
:FEAT_HYPERV_ON
echo [+] %feature_msg_hv_on%
Dism /online /Enable-Feature /FeatureName:Microsoft-Hyper-V /All
echo  %feature_msg_hv_on_comp% & pause & goto MENU_FEATURES
:FEAT_HYPERV_OFF
echo [+] %feature_msg_hv_off%
Dism /online /Disable-Feature /FeatureName:Microsoft-Hyper-V /All
echo  %feature_msg_hv_off_comp% & pause & goto MENU_FEATURES

:SEARCH_RESET
cls & title %search_title%
echo %search_info%
set /p confirm=%LANG_CONTINUE_PROMPT% %LANG_CONFIRM_PROMPT%
if /i NOT "%confirm%"=="%LANG_YES%" goto MENU_TWEAKS
cls
echo [+] %search_msg_stop%
net stop WSearch
echo [+] %search_msg_reset%
reg add "HKLM\SOFTWARE\Microsoft\Windows Search" /v SetupCompletedSuccessfully /t REG_DWORD /d 0 /f >nul 2>&1
echo [+] %search_msg_start%
net start WSearch
echo. & echo  %search_msg_complete% & echo.
pause
goto MENU_TWEAKS

:GODMODE
cls & title %godmode_title%
echo  %godmode_info%
set /p confirm=%godmode_prompt% %LANG_CONFIRM_PROMPT%
if /i NOT "%confirm%"=="%LANG_YES%" goto MENU_TWEAKS
mkdir "%USERPROFILE%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" 2>nul
echo. & echo  %godmode_msg_complete% & echo.
pause
goto MENU_TWEAKS

:MENU_HIDDEN_FILES
cls & title %hidden_title%
echo. & echo    %hidden_opt1% & echo    %hidden_opt2% & echo    %LANG_BACK_TO_SUBMENU% & echo.
set /p choice_hidden=%LANG_CHOICE_PROMPT%
if "%choice_hidden%"=="1" goto HIDDEN_FILES_SHOW
if "%choice_hidden%"=="2" goto HIDDEN_FILES_HIDE
if "%choice_hidden%"=="0" goto MENU_TWEAKS
goto MENU_HIDDEN_FILES
:HIDDEN_FILES_SHOW
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t REG_DWORD /d 1 /f >nul
echo  %hidden_msg_show% & goto REFRESH_EXPLORER
:HIDDEN_FILES_HIDE
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 2 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t REG_DWORD /d 0 /f >nul
echo  %hidden_msg_hide% & goto REFRESH_EXPLORER

:MENU_EXTENSIONS
cls & title %ext_title%
echo. & echo    %ext_opt1% & echo    %ext_opt2% & echo    %LANG_BACK_TO_SUBMENU% & echo.
set /p choice_ext=%LANG_CHOICE_PROMPT%
if "%choice_ext%"=="1" goto EXTENSIONS_SHOW
if "%choice_ext%"=="2" goto EXTENSIONS_HIDE
if "%choice_ext%"=="0" goto MENU_TWEAKS
goto MENU_EXTENSIONS
:EXTENSIONS_SHOW
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f >nul
echo  %ext_msg_show% & goto REFRESH_EXPLORER
:EXTENSIONS_HIDE
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 1 /f >nul
echo  %ext_msg_hide% & goto REFRESH_EXPLORER

:ICON_CACHE_RESET
cls & title %icon_cache_title%
echo %icon_cache_info%
set /p confirm=%LANG_CONTINUE_PROMPT% %LANG_CONFIRM_PROMPT%
if /i NOT "%confirm%"=="%LANG_YES%" goto MENU_TWEAKS
cls
echo [+] %icon_cache_msg_stop%
taskkill /f /im explorer.exe >nul
echo [+] %icon_cache_msg_clear%
del /a /f "%USERPROFILE%\AppData\Local\IconCache.db" 2>nul
echo [+] %icon_cache_msg_start%
start explorer.exe
echo. & echo  %icon_cache_msg_complete% & echo.
pause
goto MENU_TWEAKS

:LAUNCH_TASKMGR
cls & title %taskmgr_info%
echo [+] %taskmgr_info%
taskmgr
echo. & echo  %LANG_OPERATION_COMPLETE% & echo.
pause
goto MENU_TWEAKS

:LAUNCH_EVENTVWR
cls & title %eventvwr_info%
echo [+] %eventvwr_info%
eventvwr.msc
echo. & echo  %LANG_OPERATION_COMPLETE% & echo.
pause
goto MENU_TWEAKS

:: Explorer'i yeniden baslatan ortak bolum
:REFRESH_EXPLORER
echo.
echo %LANG_EXPLORER_RESTART_MSG%
taskkill /f /im explorer.exe >nul
start explorer.exe
pause
goto MENU_TWEAKS

:: ===================================================================
:: 6. RAPORLAMA VE BILGI
:: ===================================================================
:MENU_REPORTING
cls
title %report_title%
echo.
echo    %report_opt1%
echo    %report_opt2%
echo    %report_opt3%
echo    %LANG_BACK_TO_MENU%
echo.
set /p choice_report=%LANG_CHOICE_PROMPT% 
if "%choice_report%"=="1" goto INFO
if "%choice_report%"=="2" goto BATTERY_REPORT
if "%choice_report%"=="3" goto LIST_PROGRAMS
if "%choice_report%"=="0" goto MENU_MAIN
goto MENU_REPORTING

:INFO
cls & title %info_title%
echo. & echo  %info_pc_name% & echo  %COMPUTERNAME%
echo. & echo  %info_user% & echo  %USERNAME%
echo. & echo  %info_ip% & ipconfig | findstr /i "IPv4"
echo. & echo  %info_mac% & ipconfig /all | findstr /i "Physical Address"
echo. & echo.
pause
goto MENU_REPORTING

:BATTERY_REPORT
cls & title %battery_title%
echo [+] %battery_info%
set "reportfile=%USERPROFILE%\Desktop\%battery_file%"
powercfg /batteryreport /output "%reportfile%" >nul 2>&1
echo. & echo  %battery_complete% & echo.
echo %battery_open%
start "" "%reportfile%"
pause
goto MENU_REPORTING

:LIST_PROGRAMS
cls & title %list_prog_title%
set "listfile=%USERPROFILE%\Desktop\%list_prog_file%"
echo [+] %list_prog_info%
( echo %list_prog_header1% & echo %list_prog_header2% & wmic product get name,version ) > "%listfile%"
echo. & echo  %list_prog_complete% & echo.
echo %list_prog_open%
notepad.exe "%listfile%"
pause
goto MENU_REPORTING

:: ===================================================================
:: 7. YAZILIM VE ISLEM YONETIMI
:: ===================================================================
:MENU_SOFTWARE
cls
title %software_title%
echo.
echo    %software_opt1%
echo    %software_opt2%
echo    %LANG_BACK_TO_MENU%
echo.
set /p choice_software=%LANG_CHOICE_PROMPT% 
if "%choice_software%"=="1" goto WINGET_UPDATE
if "%choice_software%"=="2" goto TASK_KILL
if "%choice_software%"=="0" goto MENU_MAIN
goto MENU_SOFTWARE

:WINGET_UPDATE
cls & title %winget_title%
echo [+] %winget_info1%
echo %winget_info2%
echo.
winget upgrade --all --accept-package-agreements --accept-source-agreements
echo. & echo  %wingat_complete% & echo.
pause
goto MENU_SOFTWARE

:TASK_KILL
cls & title %kill_title%
echo.
set /p program=%kill_prompt%
if "%program%"=="" goto MENU_SOFTWARE
echo. & echo [+] %kill_msg_attempt% %program%...
taskkill /f /im %program% /t >nul 2>&1
if !errorlevel! EQU 0 ( echo  %program% %kill_msg_success% ) else ( echo  %kill_msg_fail% %program% )
echo. & pause
goto MENU_SOFTWARE

:: ===================================================================
:: 8. YEDEKLEME
:: ===================================================================
:MENU_BACKUP
cls
title %backup_title%
echo.
:: --------- AYARLAR ---------
:: --------- SETTINGS ---------
set KAYNAK="C:\Users\YOUR_USERNAME\Documents"
set HEDEF="D:\Backups\Documents"
:: ---------------------------
echo  %backup_source% %KAYNAK%
echo  %backup_dest%  %HEDEF%
echo.
set /p confirm=%backup_prompt% %LANG_CONFIRM_PROMPT%
if /i NOT "%confirm%"=="%LANG_YES%" goto MENU_MAIN
echo.
echo %backup_msg_start%
robocopy %KAYNAK% %HEDEF% /MIR /E /R:3 /W:5
echo. & echo  %backup_msg_complete% & echo.
pause
goto MENU_MAIN
