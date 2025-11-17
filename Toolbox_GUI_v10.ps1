# ===================================================================
# GEREKLI .NET KÜTÜPHANELERINI YÜKLE
# ===================================================================
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName Microsoft.VisualBasic # InputBox için
[System.Windows.Forms.Application]::EnableVisualStyles()

# ===================================================================
# DIL DESTEGI VE TÜM METINLER (v9 DÜZELTMESI)
# ===================================================================
$global:AllStrings = @{
    "EN" = @{
        # Genel
        "main_title" = "Advanced Windows Toolbox v9.0 (GUI)"
        "lang_select_title" = "Select Language"
        "warn_admin" = "WARNING: This tool makes powerful system changes. Ensure you are running 'As Administrator'."
        "status_welcome" = "Welcome to the dual-language GUI. Please select an option."
        "status_select_action" = "Please select an action from the menu."
        "status_running" = "Working..."
        "status_complete" = "Operation complete."
        "status_cancelled" = "Cancelled by user."
        "status_failed" = "FAILED."
        "btn_exit" = "[0] EXIT"
        "btn_run" = "RUN"
        "btn_close" = "Close"
        "confirm_title" = "Confirmation"
        "confirm_aggressive" = "This is an aggressive and not easily reversible action. Are you sure you want to continue?"
        "error_title" = "Error"
        "error_details" = "An unexpected error occurred:"
        
        # Ana Menü Butonları
        "btn_cat1" = "[1] Comprehensive Cleanup"
        "btn_cat2" = "[2] System Health & Repair"
        "btn_cat3" = "[3] Network Tools"
        "btn_cat4" = "[4] Privacy & Debloating"
        "btn_cat5" = "[5] Software Management"
        "btn_cat6" = "[6] System Tools & Tweaks"
        "btn_cat7" = "[7] Disk Tools"
        "btn_cat8" = "[8] Reporting & Info"
        "btn_cat9" = "[9] Backup"

        # ... (Kategori 1, 2, 3, 4, 5, 7, 8, 9 metinleri değişmedi) ...
        # 1. Temizlik
        "cleanup_title" = "1. Comprehensive System Cleanup"
        "cleanup_run_btn" = "START CLEANUP (Aggressive)"
        "cleanup_log_start" = "--- ULTRA CLEANUP STARTED ---"
        "cleanup_log_services_stop" = "Stopping services (Windows Update, BITS)..."
        "cleanup_log_procs_stop" = "Stopping browsers and Explorer..."
        "cleanup_log_temp_sys" = "Cleaning System Temp..."
        "cleanup_log_temp_user" = "Cleaning User Temp..."
        "cleanup_log_prefetch" = "Cleaning Prefetch..."
        "cleanup_log_recycle" = "Emptying Recycle Bin..."
        "cleanup_log_update" = "Cleaning Update & Delivery Optimization caches..."
        "cleanup_log_error" = "Cleaning Error Reports..."
        "cleanup_log_dns" = "Flushing DNS Cache..."
        "cleanup_log_thumb" = "Cleaning Thumbnail Cache..."
        "cleanup_log_store" = "Resetting Microsoft Store Cache..."
        "cleanup_log_gpu" = "Cleaning NVIDIA/GPU Caches..."
        "cleanup_log_browser" = "Cleaning Browser Caches (Chrome, Edge, Firefox)..."
        "cleanup_log_event" = "Cleaning Windows Event Logs (This may take a moment)..."
        "cleanup_log_event_clearing" = "  > Clearing"
        "cleanup_log_services_start" = "Restarting services and Explorer..."
        "cleanup_log_complete" = "--- ULTRA CLEANUP COMPLETED ---"
        
        # 2. Saglik
        "health_title" = "2. System Health & Repair"
        "health_btn_rp" = "Create System Restore Point"
        "health_btn_sfc" = "Repair System Files (SFC & DISM)"
        "health_btn_defender" = "Start Defender Quick Scan"
        "health_btn_print" = "Reset Print Spooler"
        "health_btn_restore" = "Open System Restore"
        "health_btn_reliability" = "Open Reliability Monitor"
        "health_rp_prompt" = "Enter a name for the restore point:"
        "health_rp_default" = "Toolbox_Backup"
        "health_rp_creating" = "Creating a new System Restore Point..."
        "health_rp_success" = "SUCCESS: Restore Point created."
        "health_rp_fail" = "FAILED to create Restore Point. (Is System Protection turned on?)"
        "health_sfc_start" = "SFC & DISM Started (This will take a long time)..."
        "health_sfc_dism" = "Step 1/2: Running DISM RestoreHealth..."
        "health_sfc_dism_comp" = "DISM complete."
        "health_sfc_sfc" = "Step 2/2: Running SFC /scannow..."
        "health_sfc_sfc_comp" = "SFC complete."
        "health_sfc_comp" = "Repair process finished."
        "health_sfc_new_window" = "Operations started in new windows."
        "health_scan_start" = "Starting Defender Quick Scan..."
        "health_scan_comp" = "Quick Scan finished."
        "health_print_start" = "Resetting Print Spooler..."
        "health_print_stop" = "Service stopped."
        "health_print_clear" = "Queue cleared."
        "health_print_start_svc" = "Service started. Operation complete."
        "health_restore_open" = "Opening System Restore..."
        "health_reliability_open" = "Opening Reliability Monitor..."

        # 3. Ag
        "net_title" = "3. Network Tools"
        "net_btn_stack" = "Reset Network Stack (DNS, IP, Winsock)"
        "net_btn_hard_reset" = "Hard Reset Network Adapters"
        "net_btn_wifi" = "Show Saved Wi-Fi Passwords"
        "net_btn_hosts" = "Block Trackers & Ads (Hosts)"
        "net_stack_start" = "Resetting Network Stack..."
        "net_stack_dns" = "DNS Cache flushed."
        "net_stack_ip" = "IP renewed."
        "net_stack_winsock" = "Winsock reset."
        "net_stack_comp" = "Complete. Restart if issues persist."
        "net_hard_start" = "Hard-Resetting Network Adapters..."
        "net_hard_comp" = "All adapters uninstalled."
        "net_hard_restart" = "PLEASE RESTART YOUR COMPUTER NOW!"
        "net_wifi_start" = "Scanning for Wi-Fi profiles..."
        "net_wifi_ssid" = "NETWORK"
        "net_wifi_pass" = "PASSWORD"
        "net_wifi_comp" = "--- Scan Complete ---"
        "net_hosts_start" = "Downloading Hosts file (StevenBlack)..."
        "net_hosts_dl" = "File downloaded."
        "net_hosts_append" = "Hosts file updated."
        "net_hosts_dns" = "DNS Cache flushed."
        "net_hosts_fail" = "ERROR: Could not download/write hosts file."
        
        # 4. Gizlilik
        "privacy_title" = "4. Privacy & Debloating"
        "privacy_tab_privacy" = "Privacy Settings"
        "privacy_tab_debloat" = "Debloater"
        "privacy_btn_telemetry_off" = "Disable Telemetry Services"
        "privacy_btn_ad_id_off" = "Disable Ad ID & Location Tracking"
        "privacy_btn_telemetry_on" = "Enable Telemetry (Default)"
        "privacy_log_telemetry_off" = "Telemetry services disabled."
        "privacy_log_telemetry_on" = "Telemetry services set to default."
        "privacy_log_ad_id_off" = "Advertising ID disabled."
        "debloat_btn_run" = "Remove Selected (Irreversible)"
        "debloat_app_xbox" = "Xbox (All)"
        "debloat_app_cortana" = "Cortana"
        "debloat_app_phone" = "Phone Link"
        "debloat_app_mixed" = "Mixed Reality"
        "debloat_app_solitaire" = "Solitaire"
        "debloat_app_zune" = "Zune / Groove"
        "debloat_app_all" = "ALL (Aggressive)"
        "debloat_log_removing" = "Removing"
        "debloat_log_comp_item" = "operation complete."
        "debloat_log_comp_all" = "Debloat complete."
        
        # 5. Yazilim
        "sw_title" = "5. Software Management"
        "sw_btn_install" = "Install Common Software (Winget)"
        "sw_btn_uninstall" = "Uninstall Software (WMIC)"
        "sw_btn_update" = "Update All Apps (Winget)"
        "sw_btn_kill" = "Kill Task"
        "sw_install_combo" = "Select a program to install..."
        "sw_install_btn" = "Install"
        "sw_install_log" = "Installing"
        "sw_install_comp" = "Installation complete."
        "sw_install_fail" = "ERROR: Install failed."
        "sw_install_new_window" = "Installation started in a new window."
        "sw_uninstall_prompt" = "Enter the name (or partial name) of the program to uninstall:"
        "sw_uninstall_eg" = "e.g., Skype"
        "sw_uninstall_log" = "Searching and uninstalling"
        "sw_uninstall_found" = "Uninstalling"
        "sw_uninstall_comp" = "Operation complete."
        "sw_uninstall_fail" = "No matching program found (WMIC)."
        "sw_uninstall_new_window" = "Uninstall process started in a new window."
        "sw_update_log" = "Updating all apps with Winget..."
        "sw_update_comp" = "Update complete."
        "sw_update_fail" = "ERROR: Winget failed."
        "sw_update_new_window" = "Update process started in a new window."
        "sw_kill_prompt" = "Enter the process name to kill (e.g., chrome.exe):"
        "sw_kill_eg" = "notepad.exe"
        "sw_kill_log" = "process terminated."
        
        # 6. Ince Ayarlar (YENİDEN YAZILDI)
        "tweaks_title" = "6. System Tools & Tweaks"
        "tweaks_btn_services" = "Manage Windows Services"
        "tweaks_btn_power" = "Manage Power Plan"
        "tweaks_btn_hibernate" = "Manage Hibernation"
        "tweaks_btn_features" = "Manage Windows Features"
        "tweaks_btn_search" = "Reset Windows Search Index"
        "tweaks_btn_godmode" = "Create 'God Mode' Folder"
        "tweaks_btn_icon" = "Rebuild Icon Cache"
        "tweaks_btn_taskmgr" = "Open Task Manager"
        "tweaks_btn_eventvwr" = "Open Event Viewer"
        "tweaks_btn_hidden_on" = "Show Hidden Files"
        "tweaks_btn_hidden_off" = "Hide Hidden Files"
        "tweaks_btn_ext_on" = "Show File Extensions"
        "tweaks_btn_ext_off" = "Hide File Extensions"
        "tweaks_log_hidden_on" = "Hidden files are now VISIBLE."
        "tweaks_log_hidden_off" = "Hidden files are now HIDDEN."
        "tweaks_log_ext_on" = "File extensions are now VISIBLE."
        "tweaks_log_ext_off" = "File extensions are now HIDDEN."
        "tweaks_log_explorer" = "Explorer restarted to apply changes."
        "tweaks_log_icon" = "Icon cache cleared and Explorer restarted."
        "tweaks_log_search" = "Search index reset. It will take time to rebuild."
        "tweaks_log_godmode" = "'God Mode' folder created on Desktop."
        
        # 6 (Alt Menüler)
        "svc_title" = "Manage Windows Services"
        "svc_btn_sysmain_off" = "Disable SysMain/Superfetch (for SSDs)"
        "svc_btn_sysmain_on" = "Enable SysMain/Superfetch (Default)"
        "svc_btn_wu_off" = "Temporarily STOP Windows Update"
        "svc_btn_wu_on" = "Temporarily START Windows Update"
        "svc_btn_fax_off" = "Disable Fax Service"
        "pwr_title" = "Manage Power Plan"
        "pwr_btn_balanced" = "Balanced (Recommended)"
        "pwr_btn_high" = "High Performance"
        "hib_title" = "Manage Hibernation"
        "hib_btn_off" = "Disable (Frees Disk Space)"
        "hib_btn_on" = "Enable"
        "feat_title" = "Manage Windows Features"
        "feat_btn_net35" = "Install .NET 3.5 (Needs Internet)"
        "feat_btn_hyperv_on" = "Install Hyper-V"
        "feat_btn_hyperv_off" = "Remove Hyper-V"
        "feat_log_net35" = "Installing .NET 3.5... (New window)"
        "feat_log_hyperv_on" = "Installing Hyper-V... (New window)"
        "feat_log_hyperv_off" = "Removing Hyper-V... (New window)"
        
        # 7. Disk
        "disk_title" = "7. Disk Tools"
        "disk_btn_cleanup" = "Open Disk Cleanup"
        "disk_btn_mgmt" = "Open Disk Management"
        "disk_btn_defrag" = "Open Drive Optimizer"
        "disk_btn_chkdsk" = "Check Disk (CHKDSK)"
        "disk_chkdsk_confirm" = "Schedule a disk check (CHKDSK) for C: drive on the next restart?"
        "disk_chkdsk_log" = "Operation scheduled for the next restart."
        
        # 8. Raporlama
        "report_title" = "8. Reporting & Info"
        "report_btn_quick" = "Quick System Info (Side Panel)"
        "report_btn_sysinfo" = "Full System Report (Desktop)"
        "report_btn_battery" = "Battery Report (Desktop)"
        "report_btn_startup" = "Startup Programs (Desktop)"
        "report_btn_programs" = "Installed Programs (Desktop)"
        "report_log_quick_pc" = "--- Computer Name ---"
        "report_log_quick_user" = "--- Active User ---"
        "report_log_quick_ip" = "--- IP Address ---"
        "report_log_sysinfo" = "Generating full system report..."
        "report_log_battery" = "Generating battery report..."
        "report_log_startup" = "Listing startup programs..."
        "report_log_programs" = "Listing installed programs (This may take a while)..."
        "report_log_file" = "Report saved to Desktop:"
        "report_log_open" = "Opening file..."
        
        # 9. Yedekleme
        "backup_title" = "9. Quick Backup (Robocopy)"
        "backup_lbl_source" = "Source:"
        "backup_lbl_dest" = "Destination:"
        "backup_run_btn" = "START BACKUP (Robocopy Mirror)"
        "backup_run_btn_running" = "Backing up..."
        "backup_error_path" = "Source or Destination folder not found!"
        "backup_complete" = "Backup started in a new window."
    };
    "TR" = @{
        # Genel
        "main_title" = "Gelişmiş Windows Araç Kutusu v9.0 (GUI)"
        "lang_select_title" = "Dil Seçin"
        "warn_admin" = "UYARI: Bu araç güçlü sistem değişiklikleri yapar. 'Yönetici Olarak' çalıştırdığınızdan emin olun."
        "status_welcome" = "Çift dilli GUI'ye hoş geldiniz. Lütfen bir seçenek seçin."
        "status_select_action" = "Lütfen menüden bir eylem seçin."
        "status_running" = "Çalışıyor..."
        "status_complete" = "İşlem tamamlandı."
        "status_cancelled" = "Kullanıcı tarafından iptal edildi."
        "status_failed" = "BAŞARISIZ OLDU."
        "btn_exit" = "[0] ÇIKIŞ"
        "btn_run" = "ÇALIŞTIR"
        "btn_close" = "Kapat"
        "confirm_title" = "Onay"
        "confirm_aggressive" = "Bu, agresif ve kolayca geri alınamayan bir işlemdir. Devam etmek istediğinize emin misiniz?"
        "error_title" = "Hata"
        "error_details" = "Beklenmeyen bir hata oluştu:"

        # Ana Menü Butonları
        "btn_cat1" = "[1] Kapsamlı Sistem Temizliği"
        "btn_cat2" = "[2] Sistem Sağlığı ve Onarım"
        "btn_cat3" = "[3] Ağ Araçları"
        "btn_cat4" = "[4] Gizlilik ve Debloat"
        "btn_cat5" = "[5] Yazılım Yönetimi"
        "btn_cat6" = "[6] Sistem Araçları ve İnce Ayarlar"
        "btn_cat7" = "[7] Disk Araçları"
        "btn_cat8" = "[8] Raporlama ve Bilgi"
        "btn_cat9" = "[9] Yedekleme"

        # 1. Temizlik
        "cleanup_title" = "1. Kapsamlı Sistem Temizliği"
        "cleanup_run_btn" = "TEMİZLİĞİ BAŞLAT (Agresif)"
        "cleanup_log_start" = "--- ULTRA TEMİZLİK BAŞLATILDI ---"
        "cleanup_log_services_stop" = "Hizmetler durduruluyor (Windows Update, BITS)..."
        "cleanup_log_procs_stop" = "Tarayıcılar ve Explorer durduruluyor..."
        "cleanup_log_temp_sys" = "Sistem Geçici Dosyaları (Temp) temizleniyor..."
        "cleanup_log_temp_user" = "Kullanıcı Geçici Dosyaları (Temp) temizleniyor..."
        "cleanup_log_prefetch" = "Prefetch temizleniyor..."
        "cleanup_log_recycle" = "Çöp Kutusu boşaltılıyor..."
        "cleanup_log_update" = "Update ve Teslim İyileştirme önbellekleri temizleniyor..."
        "cleanup_log_error" = "Hata Raporları temizleniyor..."
        "cleanup_log_dns" = "DNS Önbelleği temizleniyor..."
        "cleanup_log_thumb" = "Küçük Resim (Thumbnail) Önbelleği temizleniyor..."
        "cleanup_log_store" = "Microsoft Store Önbelleği sıfırlanıyor..."
        "cleanup_log_gpu" = "NVIDIA/GPU Önbellekleri temizleniyor..."
        "cleanup_log_browser" = "Tarayıcı Önbellekleri (Chrome, Edge, Firefox) temizleniyor..."
        "cleanup_log_event" = "Windows Olay Günlükleri temizleniyor (Bu biraz zaman alabilir)..."
        "cleanup_log_event_clearing" = "  > Temizleniyor"
        "cleanup_log_services_start" = "Hizmetler ve Explorer yeniden başlatılıyor..."
        "cleanup_log_complete" = "--- ULTRA TEMİZLİK TAMAMLANDI ---"

        # 2. Saglik
        "health_title" = "2. Sistem Sağlığı ve Onarım"
        "health_btn_rp" = "Sistem Geri Yükleme Noktası OLUŞTUR"
        "health_btn_sfc" = "Sistem Dosyalarını Onar (SFC & DISM)"
        "health_btn_defender" = "Defender Hızlı Taramasını Başlat"
        "health_btn_print" = "Yazdırma Biriktiricisini Sıfırla"
        "health_btn_restore" = "Sistem Geri Yükleme'yi AÇ"
        "health_btn_reliability" = "Güvenilirlik İzleyicisi'ni AÇ"
        "health_rp_prompt" = "Geri yükleme noktası için bir ad girin:"
        "health_rp_default" = "Toolbox_Yedegi"
        "health_rp_creating" = "Yeni bir Sistem Geri Yükleme Noktası oluşturuluyor..."
        "health_rp_success" = "BAŞARILI: Geri Yükleme Noktası oluşturuldu."
        "health_rp_fail" = "HATA: Geri yükleme noktası oluşturulamadı. (Sistem Koruması açık mı?)"
        "health_sfc_start" = "SFC & DISM Başlatıldı (Bu işlem çok uzun sürebilir)..."
        "health_sfc_dism" = "Adım 1/2: DISM RestoreHealth çalıştırılıyor..."
        "health_sfc_dism_comp" = "DISM tamamlandı."
        "health_sfc_sfc" = "Adım 2/2: SFC /scannow çalıştırılıyor..."
        "health_sfc_sfc_comp" = "SFC tamamlandı."
        "health_sfc_comp" = "Onarım işlemi tamamlandı."
        "health_sfc_new_window" = "İşlemler yeni pencerelerde başlatıldı."
        "health_scan_start" = "Defender Hızlı Taraması başlatılıyor..."
        "health_scan_comp" = "Hızlı Tarama tamamlandı."
        "health_print_start" = "Yazdırma Biriktiricisi sıfırlanıyor..."
        "health_print_stop" = "Hizmet durduruldu."
        "health_print_clear" = "Kuyruk temizlendi."
        "health_print_start_svc" = "Hizmet başlatıldı. İşlem tamam."
        "health_restore_open" = "Sistem Geri Yükleme açılıyor..."
        "health_reliability_open" = "Güvenilirlik İzleyicisi açılıyor..."
        
        # 3. Ag
        "net_title" = "3. Ağ Araçları"
        "net_btn_stack" = "Ağ Yığınını Sıfırla (DNS, IP, Winsock)"
        "net_btn_hard_reset" = "Ağ Bağdaştırıcılarını Sert Sıfırla"
        "net_btn_wifi" = "Kayıtlı Wi-Fi Şifrelerini Göster"
        "net_btn_hosts" = "Reklam/İzleyici Engelle (Hosts)"
        "net_stack_start" = "Ağ Yığını sıfırlanıyor..."
        "net_stack_dns" = "DNS Önbelleği temizlendi."
        "net_stack_ip" = "IP adresi yenilendi."
        "net_stack_winsock" = "Winsock sıfırlandı."
        "net_stack_comp" = "Tamamlandı. Gerekirse bilgisayarı yeniden başlatın."
        "net_hard_start" = "Ağ Bağdaştırıcıları Sert Sıfırlanıyor..."
        "net_hard_comp" = "Tüm bağdaştırıcılar kaldırıldı."
        "net_hard_restart" = "LÜTFEN BİLGİSAYARI YENİDEN BAŞLATIN!"
        "net_wifi_start" = "Kayıtlı Wi-Fi profilleri taranıyor..."
        "net_wifi_ssid" = "AĞ"
        "net_wifi_pass" = "ŞİFRE"
        "net_wifi_comp" = "--- Tarama Tamamlandı ---"
        "net_hosts_start" = "Hosts dosyası indirme (StevenBlack)..."
        "net_hosts_dl" = "Dosya indirildi."
        "net_hosts_append" = "Hosts dosyası güncellendi."
        "net_hosts_dns" = "DNS Önbelleği temizlendi."
        "net_hosts_fail" = "HATA: Hosts dosyası indirilemedi/yazılamadı."
        
        # 4. Gizlilik
        "privacy_title" = "4. Gizlilik ve Debloat"
        "privacy_tab_privacy" = "Gizlilik Ayarları"
        "privacy_tab_debloat" = "Bloatware Kaldırıcı"
        "privacy_btn_telemetry_off" = "Telemetri Hizmetlerini KAPAT"
        "privacy_btn_ad_id_off" = "Reklam ID ve Konum Takibini KAPAT"
        "privacy_btn_telemetry_on" = "Telemetriyi AÇ (Varsayılan)"
        "privacy_log_telemetry_off" = "Telemetri hizmetleri devre dışı bırakıldı."
        "privacy_log_telemetry_on" = "Telemetri hizmetleri varsayılana ayarlandı."
        "privacy_log_ad_id_off" = "Reklam ID kapatıldı."
        "debloat_btn_run" = "Seçilenleri Kaldır (Geri Alınamaz)"
        "debloat_app_xbox" = "Xbox (Tümü)"
        "debloat_app_cortana" = "Cortana"
        "debloat_app_phone" = "Telefon Bağlantısı"
        "debloat_app_mixed" = "Karma Gerçeklik"
        "debloat_app_solitaire" = "Solitaire"
        "debloat_app_zune" = "Zune / Groove"
        "debloat_app_all" = "TÜMÜ (Agresif)"
        "debloat_log_removing" = "kaldırılıyor..."
        "debloat_log_comp_item" = "için işlem tamamlandı."
        "debloat_log_comp_all" = "Debloat tamamlandı."
        
        # 5. Yazilim
        "sw_title" = "5. Yazılım Yönetimi"
        "sw_btn_install" = "Yaygın Yazılımları Kur (Winget)"
        "sw_btn_uninstall" = "Yazılım Kaldır (WMIC)"
        "sw_btn_update" = "Tüm Uygulamaları Güncelle (Winget)"
        "sw_btn_kill" = "Görevi Sonlandır"
        "sw_install_combo" = "Kurmak için bir program seçin..."
        "sw_install_btn" = "Kur"
        "sw_install_log" = "kuruluyor..."
        "sw_install_comp" = "Kurulum tamamlandı."
        "sw_install_fail" = "HATA: Kurulum başarısız."
        "sw_install_new_window" = "Kurulum yeni pencerede başlatıldı."
        "sw_uninstall_prompt" = "Kaldırılacak programın adını (veya bir kısmını) girin:"
        "sw_uninstall_eg" = "Örn: Skype"
        "sw_uninstall_log" = "aranıyor ve kaldırılıyor..."
        "sw_uninstall_found" = "kaldırılıyor..."
        "sw_uninstall_comp" = "İşlem tamamlandı."
        "sw_uninstall_fail" = "Eşleşen program bulunamadı (WMIC)."
        "sw_uninstall_new_window" = "Kaldırma işlemi yeni pencerede başlatıldı."
        "sw_update_log" = "Winget ile tüm uygulamalar güncelleniyor..."
        "sw_update_comp" = "Güncelleme tamamlandı."
        "sw_update_fail" = "HATA: Winget başarısız."
        "sw_update_new_window" = "Güncelleme işlemi yeni pencerede başlatıldı."
        "sw_kill_prompt" = "Sonlandırılacak işlem adını girin (örn: chrome.exe):"
        "sw_kill_eg" = "notepad.exe"
        "sw_kill_log" = "işlemi sonlandırıldı."
        
        # 6. Ince Ayarlar (YENİDEN YAZILDI)
        "tweaks_title" = "6. Sistem Araçları ve İnce Ayarlar"
        "tweaks_btn_services" = "Windows Hizmetlerini Yönet"
        "tweaks_btn_power" = "Güç Planını Yönet"
        "tweaks_btn_hibernate" = "Hazırda Bekleme Modunu Yönet"
        "tweaks_btn_features" = "Windows Özelliklerini Yönet"
        "tweaks_btn_search" = "Windows Arama Dizinini Sıfırla"
        "tweaks_btn_godmode" = "'God Mode' Klasörü Oluştur"
        "tweaks_btn_icon" = "Simge Önbelleğini Yeniden Oluştur"
        "tweaks_btn_taskmgr" = "Görev Yöneticisi'ni Aç"
        "tweaks_btn_eventvwr" = "Olay Görüntüleyicisi'ni Aç"
        "tweaks_btn_hidden_on" = "Gizli Dosyaları GÖSTER"
        "tweaks_btn_hidden_off" = "Gizli Dosyaları GİZLE"
        "tweaks_btn_ext_on" = "Dosya Uzantılarını GÖSTER"
        "tweaks_btn_ext_off" = "Dosya Uzantılarını GİZLE"
        "tweaks_log_hidden_on" = "Gizli dosyalar artık GÖRÜNÜR."
        "tweaks_log_hidden_off" = "Gizli dosyalar artık GİZLİ."
        "tweaks_log_ext_on" = "Dosya uzantıları artık GÖRÜNÜR."
        "tweaks_log_ext_off" = "Dosya uzantıları artık GİZLİ."
        "tweaks_log_explorer" = "Değişikliklerin uygulanması için Explorer yeniden başlatıldı."
        "tweaks_log_icon" = "Simge önbelleği temizlendi ve Explorer yeniden başlatıldı."
        "tweaks_log_search" = "Arama dizini sıfırlandı. Yeniden oluşturulması zaman alacak."
        "tweaks_log_godmode" = "Masaüstüne 'God Mode' klasörü oluşturuldu."
        
        # 6 (Alt Menüler)
        "svc_title" = "Windows Hizmetlerini Yönet"
        "svc_btn_sysmain_off" = "SysMain/Superfetch'i KAPAT (SSD için)"
        "svc_btn_sysmain_on" = "SysMain/Superfetch'i AÇ (Varsayılan)"
        "svc_btn_wu_off" = "Windows Update Hizmetini DURDUR"
        "svc_btn_wu_on" = "Windows Update Hizmetini BAŞLAT"
        "svc_btn_fax_off" = "Faks Hizmetini KAPAT"
        "pwr_title" = "Güç Planını Yönet"
        "pwr_btn_balanced" = "Dengeli (Önerilen)"
        "pwr_btn_high" = "Yüksek Performans"
        "hib_title" = "Hazırda Bekleme Modunu Yönet"
        "hib_btn_off" = "KAPAT (Disk Alanı Açar)"
        "hib_btn_on" = "AÇ"
        "feat_title" = "Windows Özelliklerini Yönet"
        "feat_btn_net35" = ".NET 3.5 Yükle (İnternet Gerekir)"
        "feat_btn_hyperv_on" = "Hyper-V Yükle"
        "feat_btn_hyperv_off" = "Hyper-V Kaldır"
        "feat_log_net35" = ".NET 3.5 kurulumu yeni pencerede başlatıldı..."
        "feat_log_hyperv_on" = "Hyper-V kurulumu yeni pencerede başlatıldı..."
        "feat_log_hyperv_off" = "Hyper-V kaldırma işlemi yeni pencerede başlatıldı..."

        # 7. Disk
        "disk_title" = "7. Disk Araçları"
        "disk_btn_cleanup" = "Disk Temizleme'yi Aç"
        "disk_btn_mgmt" = "Disk Yönetimi'ni Aç"
        "disk_btn_defrag" = "Sürücü İyileştirici'yi Aç"
        "disk_btn_chkdsk" = "Diski Kontrol Et (CHKDSK)"
        "disk_chkdsk_confirm" = "C: sürücüsü için bir sonraki yeniden başlatmada disk kontrolü (CHKDSK) planlanacak. Devam edilsin mi?"
        "disk_chkdsk_log" = "İşlem bir sonraki yeniden başlatma için planlandı."
        
        # 8. Raporlama
        "report_title" = "8. Raporlama ve Bilgi"
        "report_btn_quick" = "Hızlı Sistem Bilgisi (Yanda)"
        "report_btn_sysinfo" = "Tam Sistem Raporu (Masaüstü)"
        "report_btn_battery" = "Pil Raporu (Masaüstü)"
        "report_btn_startup" = "Başlangıç Programları (Masaüstü)"
        "report_btn_programs" = "Yüklü Programlar (Masaüstü)"
        "report_log_quick_pc" = "--- Bilgisayar Adı ---"
        "report_log_quick_user" = "--- Aktif Kullanıcı ---"
        "report_log_quick_ip" = "--- IP Adresi ---"
        "report_log_sysinfo" = "Tam sistem raporu oluşturuluyor..."
        "report_log_battery" = "Pil raporu oluşturuluyor..."
        "report_log_startup" = "Başlangıç programları listeleniyor..."
        "report_log_programs" = "Yüklü programlar listeleniyor (Bu uzun sürebilir)..."
        "report_log_file" = "Rapor Masaüstüne kaydedildi:"
        "report_log_open" = "Dosya açılıyor..."
        
        # 9. Yedekleme
        "backup_title" = "9. Hızlı Yedekleme (Robocopy)"
        "backup_lbl_source" = "Kaynak (Source):"
        "backup_lbl_dest" = "Hedef (Destination):"
        "backup_run_btn" = "YEDEKLEMEYİ BAŞLAT (Robocopy Mirror)"
        "backup_run_btn_running" = "Yedekleniyor..."
        "backup_error_path" = "Kaynak veya Hedef klasör bulunamadı!"
        "backup_complete" = "Yedekleme yeni bir pencerede başlatıldı."
    }
}

# Global değişkenler
$global:lang = "EN" # Varsayılan
$global:strings = $null
$global:mainForm = $null
$global:bgColor = [System.Drawing.Color]::FromArgb(45, 45, 48)
$global:fgColor = [System.Drawing.Color]::White
$global:logBgColor = [System.Drawing.Color]::FromArgb(30, 30, 30)
$global:successColor = [System.Drawing.Color]::LawnGreen
$global:warnColor = [System.Drawing.Color]::Orange
$global:errorColor = [System.Drawing.Color]::LightCoral
$global:infoColor = [System.Drawing.Color]::Cyan

# ===================================================================
# YARDIMCI PENCERE/FONKSIYONLAR
# ===================================================================

# Standart Buton Stili
function New-StyledButton {
    param ([string]$Text, [int]$X, [int]$Y, [int]$Width = 240, [int]$Height = 40)
    $button = New-Object System.Windows.Forms.Button
    $button.Text = $Text
    $button.Location = New-Object System.Drawing.Point($X, $Y)
    $button.Size = New-Object System.Drawing.Size($Width, $Height)
    $button.Font = New-Object System.Drawing.Font("Segoe UI", 10)
    $button.BackColor = [System.Drawing.Color]::FromArgb(63, 63, 70)
    $button.ForeColor = $global:fgColor
    $button.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $button.FlatAppearance.BorderSize = 0
    return $button
}

# Standart Pencere Stili
function New-StyledForm {
    param ([string]$Title, [int]$Width, [int]$Height)
    $form = New-Object System.Windows.Forms.Form
    $form.Text = $Title
    $form.Size = New-Object System.Drawing.Size($Width, $Height)
    $form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
    $form.MaximizeBox = $false
    $form.MinimizeBox = $false
    $form.BackColor = $global:bgColor
    $form.StartPosition = "CenterScreen"
    if ($global:mainForm -ne $null) {
        $form.StartPosition = "CenterParent"
    }
    return $form
}

# Standart Günlük (Log) Kutusu Stili
function New-LogBox {
    param ([int]$X, [int]$Y, [int]$Width, [int]$Height)
    $logBox = New-Object System.Windows.Forms.RichTextBox
    $logBox.Location = New-Object System.Drawing.Point($X, $Y)
    $logBox.Size = New-Object System.Drawing.Size($Width, $Height)
    $logBox.ReadOnly = $true
    $logBox.BackColor = $global:logBgColor
    $logBox.ForeColor = $global:fgColor
    $logBox.Font = New-Object System.Drawing.Font("Consolas", 10)
    $logBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
    return $logBox
}

# Günlük Kutusuna Yazma
function Write-Log {
    param (
        [System.Windows.Forms.RichTextBox]$logBox,
        [string]$message,
        [System.Drawing.Color]$color = $global:fgColor
    )
    $timestamp = (Get-Date).ToString("HH:mm:ss")
    $logBox.SelectionStart = $logBox.TextLength
    $logBox.SelectionColor = $global:infoColor
    $logBox.AppendText("[$timestamp] ")
    
    $logBox.SelectionStart = $logBox.TextLength
    $logBox.SelectionColor = $color
    $logBox.AppendText("$message`n")
    
    $logBox.ScrollToCaret()
    [System.Windows.Forms.Application]::DoEvents()
}

# Explorer'i Yeniden Baslat
function Start-Explorer {
    Start-Process -FilePath "explorer.exe"
}

# Hata Yakalama Fonksiyonu
function Show-Error {
    param ([System.Management.Automation.ErrorRecord]$ErrorRecord)
    
    $lineNumber = $ErrorRecord.InvocationInfo.ScriptLineNumber
    $message = $ErrorRecord.Exception.Message
    $fullError = $ErrorRecord.ToString()

    $errorMessage = @"
$($global:strings.error_details)

Message: $message
Line: $lineNumber

(Full details: $fullError)
"@
    [System.Windows.Forms.MessageBox]::Show($errorMessage, $global:strings.error_title, "OK", "Error")
}

# Onay Kutusu
function Show-ConfirmBox {
    param ([string]$Message, [string]$Title)
    $result = [System.Windows.Forms.MessageBox]::Show($Message, $Title, "YesNo", "Warning")
    return $result -eq "Yes"
}

# Mesaj Kutusu
function Show-MsgBox {
    param ([string]$Message, [string]$Title, [System.Windows.Forms.MessageBoxIcon]$Icon = "Information")
    [System.Windows.Forms.MessageBox]::Show($Message, $Title, "OK", $Icon)
}

# Uzun süren işlemleri yeni pencerede çalıştır
function Start-New-Console-Process {
    param ([string]$Command, [string]$Arguments)
    Start-Process "cmd.exe" -ArgumentList "/K $Command $Arguments" -Verb RunAs
}

# ===================================================================
# KATEGORI 1: KAPSAMLI SISTEM TEMIZLIGI
# (Fonksiyon değişmedi, öncekiyle aynı)
# ===================================================================
function Show-Cleanup-Window {
    $cleanupForm = New-StyledForm $global:strings.cleanup_title 600 450
    $logBox = New-LogBox 20 20 540 300
    Write-Log -logBox $logBox -message $global:strings.status_select_action -color $global:warnColor

    $btnRunCleanup = New-StyledButton $global:strings.cleanup_run_btn 20 340 540 50
    $btnRunCleanup.BackColor = $global:errorColor
    $btnRunCleanup.Font = New-Object System.Drawing.Font("Segoe UI", 10, [System.Drawing.FontStyle]::Bold)

    $btnRunCleanup.Add_Click({
        try {
            if (-not (Show-ConfirmBox $global:strings.confirm_aggressive $global:strings.confirm_title)) {
                Write-Log -logBox $logBox -message $global:strings.status_cancelled -color $global:warnColor; return
            }
            
            $btnRunCleanup.Enabled = $false; $btnRunCleanup.Text = $global:strings.status_running; $logBox.Clear()
            Write-Log -logBox $logBox -message $global:strings.cleanup_log_start -color $global:warnColor
            
            Write-Log -logBox $logBox -message $global:strings.cleanup_log_services_stop
            Stop-Service -Name "wuauserv" -Force -ErrorAction SilentlyContinue
            Stop-Service -Name "BITS" -Force -ErrorAction SilentlyContinue
            
            Write-Log -logBox $logBox -message $global:strings.cleanup_log_procs_stop
            "chrome", "msedge", "firefox", "explorer" | ForEach-Object { Stop-Process -Name $_ -Force -ErrorAction SilentlyContinue }
            
            Write-Log -logBox $logBox -message $global:strings.cleanup_log_temp_sys
            Remove-Item -Path "$env:windir\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
            
            Write-Log -logBox $logBox -message $global:strings.cleanup_log_temp_user
            Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
            
            Write-Log -logBox $logBox -message $global:strings.cleanup_log_prefetch
            Remove-Item -Path "$env:windir\Prefetch\*" -Recurse -Force -ErrorAction SilentlyContinue

            Write-Log -logBox $logBox -message $global:strings.cleanup_log_recycle
            Clear-RecycleBin -Force -ErrorAction SilentlyContinue
            
            Write-Log -logBox $logBox -message $global:strings.cleanup_log_update
            Remove-Item -Path "$env:windir\SoftwareDistribution\Download\*" -Recurse -Force -ErrorAction SilentlyContinue
            Remove-Item -Path "$env:windir\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue

            Write-Log -logBox $logBox -message $global:strings.cleanup_log_error
            Remove-Item -Path "$env:ProgramData\Microsoft\Windows\WER\*" -Recurse -Force -ErrorAction SilentlyContinue

            Write-Log -logBox $logBox -message $global:strings.cleanup_log_dns
            Clear-DnsClientCache

            Write-Log -logBox $logBox -message $global:strings.cleanup_log_thumb
            Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\Explorer\thumbcache_*.db" -Force -ErrorAction SilentlyContinue

            Write-Log -logBox $logBox -message $global:strings.cleanup_log_store
            Start-Process "wsreset.exe" -ArgumentList "-q" -Wait -ErrorAction SilentlyContinue

            Write-Log -logBox $logBox -message $global:strings.cleanup_log_gpu
            Remove-Item -Path "$env:ProgramData\NVIDIA\Corporation\NV_Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
            Remove-Item -Path "$env:LOCALAPPDATA\NVIDIA\GLCache\*" -Recurse -Force -ErrorAction SilentlyContinue

            Write-Log -logBox $logBox -message $global:strings.cleanup_log_browser
            Remove-Item -Path "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
            Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
            Get-ChildItem -Path "$env:APPDATA\Mozilla\Firefox\Profiles\*" -Filter "cache2" -Directory | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
            
            Write-Log -logBox $logBox -message $global:strings.cleanup_log_event -color $global:warnColor
            $logs = Get-WinEvent -ListLog * -ErrorAction SilentlyContinue | Where-Object { $_.RecordCount -gt 0 -and $_.LogName -notlike "Microsoft-Windows-LiveId*"}
            foreach ($log in $logs) {
                Write-Log -logBox $logBox -message "$($global:strings.cleanup_log_event_clearing) $($log.LogName)..."
                Clear-EventLog -LogName $log.LogName -ErrorAction SilentlyContinue
            }
        } catch {
            Show-Error -ErrorRecord $_
        } finally {
            Write-Log -logBox $logBox -message $global:strings.cleanup_log_services_start
            Start-Explorer
            Start-Service -Name "wuauserv" -ErrorAction SilentlyContinue
            Start-Service -Name "BITS" -ErrorAction SilentlyContinue
            
            Write-Log -logBox $logBox -message $global:strings.cleanup_log_complete -color $global:successColor
            
            $btnRunCleanup.Enabled = $true
            $btnRunCleanup.Text = $global:strings.cleanup_run_btn
        }
    })

    $cleanupForm.Controls.Add($logBox)
    $cleanupForm.Controls.Add($btnRunCleanup)
    [void]$cleanupForm.ShowDialog($global:mainForm)
}

# ===================================================================
# KATEGORI 2: SISTEM SAGLIGI VE ONARIM
# (Fonksiyon değişmedi, öncekiyle aynı)
# ===================================================================
function Show-Health-Window {
    $healthForm = New-StyledForm $global:strings.health_title 700 350
    $logBox = New-LogBox 270 20 400 270
    Write-Log -logBox $logBox -message $global:strings.status_select_action -color $global:infoColor

    $btnCreateRP = New-StyledButton $global:strings.health_btn_rp 20 20
    $btnRunSFC = New-StyledButton $global:strings.health_btn_sfc 20 70
    $btnRunDefender = New-StyledButton $global:strings.health_btn_defender 20 120
    $btnResetPrint = New-StyledButton $global:strings.health_btn_print 20 170
    $btnOpenRestore = New-StyledButton $global:strings.health_btn_restore 20 220
    $btnOpenReliability = New-StyledButton $global:strings.health_btn_reliability 20 270

    $btnCreateRP.Add_Click({
        try {
            $rpName = [Microsoft.VisualBasic.Interaction]::InputBox($global:strings.health_rp_prompt, $global:strings.health_btn_rp, $global:strings.health_rp_default)
            if ([string]::IsNullOrWhiteSpace($rpName)) { Write-Log -logBox $logBox -message $global:strings.status_cancelled -color $global:warnColor; return }
            
            Write-Log -logBox $logBox -message $global:strings.health_rp_creating -color $global:infoColor
            Checkpoint-Computer -Description $rpName -ErrorAction Stop
            Write-Log -logBox $logBox -message $global:strings.health_rp_success -color $global:successColor
        } catch { Show-Error -ErrorRecord $_ }
    })

    $btnRunSFC.Add_Click({
        try {
            Write-Log -logBox $logBox -message $global:strings.health_sfc_start -color $global:warnColor
            Write-Log -logBox $logBox -message $global:strings.health_sfc_dism
            Start-New-Console-Process "Dism.exe" "/Online /Cleanup-Image /RestoreHealth"
            Write-Log -logBox $logBox -message $global:strings.health_sfc_sfc
            Start-New-Console-Process "sfc.exe" "/scannow"
            Write-Log -logBox $logBox -message $global:strings.health_sfc_new_window -color $global:infoColor
        } catch { Show-Error -ErrorRecord $_ }
    })
    
    $btnRunDefender.Add_Click({
        try {
            Write-Log -logBox $logBox -message $global:strings.health_scan_start -color $global:infoColor
            Start-MpScan -ScanType QuickScan -ErrorAction Stop
            Write-Log -logBox $logBox -message $global:strings.health_scan_comp -color $global:successColor
        } catch { Show-Error -ErrorRecord $_ }
    })

    $btnResetPrint.Add_Click({
        try {
            Write-Log -logBox $logBox -message $global:strings.health_print_start -color $global:infoColor
            Stop-Service -Name "spooler" -Force -ErrorAction Stop
            Write-Log -logBox $logBox -message $global:strings.health_print_stop
            Remove-Item -Path "$env:windir\System32\spool\PRINTERS\*.shd" -Force -ErrorAction SilentlyContinue
            Remove-Item -Path "$env:windir\System32\spool\PRINTERS\*.spl" -Force -ErrorAction SilentlyContinue
            Write-Log -logBox $logBox -message $global:strings.health_print_clear
            Start-Service -Name "spooler" -ErrorAction Stop
            Write-Log -logBox $logBox -message $global:strings.health_print_start_svc -color $global:successColor
        } catch { Show-Error -ErrorRecord $_ }
    })

    $btnOpenRestore.Add_Click({ try { Write-Log -logBox $logBox -message $global:strings.health_restore_open; systempropertiesprotection.exe } catch { Show-Error -ErrorRecord $_ }})
    $btnOpenReliability.Add_Click({ try { Write-Log -logBox $logBox -message $global:strings.health_reliability_open; perfmon.exe /rel } catch { Show-Error -ErrorRecord $_ }})

    $healthForm.Controls.AddRange(@($logBox, $btnCreateRP, $btnRunSFC, $btnRunDefender, $btnResetPrint, $btnOpenRestore, $btnOpenReliability))
    [void]$healthForm.ShowDialog($global:mainForm)
}

# ===================================================================
# KATEGORI 3: AG ARACLARI
# (Fonksiyon değişmedi, öncekiyle aynı)
# ===================================================================
function Show-Network-Window {
    $netForm = New-StyledForm $global:strings.net_title 700 300
    $logBox = New-LogBox 270 20 400 220
    Write-Log -logBox $logBox -message $global:strings.status_select_action -color $global:infoColor

    $btnResetStack = New-StyledButton $global:strings.net_btn_stack 20 20
    $btnHardReset = New-StyledButton $global:strings.net_btn_hard_reset 20 70
    $btnShowWifi = New-StyledButton $global:strings.net_btn_wifi 20 120
    $btnBlockAds = New-StyledButton $global:strings.net_btn_hosts 20 170

    $btnResetStack.Add_Click({
        try {
            Write-Log -logBox $logBox -message $global:strings.net_stack_start -color $global:infoColor
            Clear-DnsClientCache
            Write-Log -logBox $logBox -message $global:strings.net_stack_dns
            ipconfig /release | Out-Null
            ipconfig /renew | Out-Null
            Write-Log -logBox $logBox -message $global:strings.net_stack_ip
            netsh winsock reset | Out-Null
            Write-Log -logBox $logBox -message $global:strings.net_stack_winsock
            Write-Log -logBox $logBox -message $global:strings.net_stack_comp -color $global:successColor
        } catch { Show-Error -ErrorRecord $_ }
    })

    $btnHardReset.Add_Click({
        try {
            Write-Log -logBox $logBox -message $global:strings.net_hard_start -color $global:warnColor
            netcfg -d | Out-Null
            Write-Log -logBox $logBox -message $global:strings.net_hard_comp
            Write-Log -logBox $logBox -message $global:strings.net_hard_restart -color $global:errorColor
        } catch { Show-Error -ErrorRecord $_ }
    })

    $btnShowWifi.Add_Click({
        try {
            Write-Log -logBox $logBox -message $global:strings.net_wifi_start -color $global:infoColor
            $profiles = (netsh wlan show profiles) | Select-String -Pattern ":\s(.*)" | ForEach-Object { $_.Matches[0].Groups[1].Value }
            foreach ($profile in $profiles) {
                $key = (netsh wlan show profile name="$profile" key=clear) | Select-String -Pattern "Key Content\s+:\s(.*)"
                if ($key) {
                    $password = $key.Matches[0].Groups[1].Value
                    Write-Log -logBox $logBox -message "$($global:strings.net_wifi_ssid): $profile" -color $global:infoColor
                    Write-Log -logBox $logBox -message "$($global:strings.net_wifi_pass): $password" -color $global:successColor
                }
            }
            Write-Log -logBox $logBox -message $global:strings.net_wifi_comp
        } catch { Show-Error -ErrorRecord $_ }
    })

    $btnBlockAds.Add_Click({
        try {
            if (-not (Show-ConfirmBox $global:strings.confirm_aggressive $global:strings.confirm_title)) { Write-Log -logBox $logBox -message $global:strings.status_cancelled -color $global:warnColor; return }
            Write-Log -logBox $logBox -message $global:strings.net_hosts_start -color $global:infoColor
            $hostsFile = "C:\Windows\System32\drivers\etc\hosts"
            $url = "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"
            $download = Invoke-WebRequest -Uri $url -ErrorAction Stop
            Write-Log -logBox $logBox -message $global:strings.net_hosts_dl
            $download.Content | Out-File -FilePath $hostsFile -Encoding ASCII -Append
            Write-Log -logBox $logBox -message $global:strings.net_hosts_append
            Clear-DnsClientCache
            Write-Log -logBox $logBox -message $global:strings.net_hosts_dns -color $global:successColor
        } catch { Show-Error -ErrorRecord $_ }
    })

    $netForm.Controls.AddRange(@($logBox, $btnResetStack, $btnHardReset, $btnShowWifi, $btnBlockAds))
    [void]$netForm.ShowDialog($global:mainForm)
}

# ===================================================================
# KATEGORI 4: GIZLILIK VE DEBLOAT
# (Fonksiyon değişmedi, öncekiyle aynı)
# ===================================================================
function Show-Privacy-Window {
    $privacyForm = New-StyledForm $global:strings.privacy_title 600 480
    $logBox = New-LogBox 20 220 540 200
    Write-Log -logBox $logBox -message $global:strings.status_select_action -color $global:infoColor
    
    $tabs = New-Object System.Windows.Forms.TabControl; $tabs.Location = New-Object System.Drawing.Point(20, 20); $tabs.Size = New-Object System.Drawing.Size(540, 190)
    $tabPrivacy = New-Object System.Windows.Forms.TabPage; $tabPrivacy.Text = $global:strings.privacy_tab_privacy; $tabPrivacy.BackColor = $global:bgColor
    $tabDebloat = New-Object System.Windows.Forms.TabPage; $tabDebloat.Text = $global:strings.privacy_tab_debloat; $tabDebloat.BackColor = $global:bgColor

    # --- Gizlilik Sekmesi ---
    $btnDisableTelemetry = New-StyledButton $global:strings.privacy_btn_telemetry_off 20 20
    $btnDisableAdID = New-StyledButton $global:strings.privacy_btn_ad_id_off 20 70
    $btnEnableTelemetry = New-StyledButton $global:strings.privacy_btn_telemetry_on 280 20
    
    $btnDisableTelemetry.Add_Click({ try { sc.exe config DiagTrack start= disabled > $null; sc.exe config dmwappushservice start= disabled > $null; Write-Log -logBox $logBox -message $global:strings.privacy_log_telemetry_off -color $global:successColor } catch { Show-Error -ErrorRecord $_ }})
    $btnEnableTelemetry.Add_Click({ try { sc.exe config DiagTrack start= auto > $null; sc.exe config dmwappushservice start= auto > $null; Write-Log -logBox $logBox -message $global:strings.privacy_log_telemetry_on -color $global:successColor } catch { Show-Error -ErrorRecord $_ }})
    $btnDisableAdID.Add_Click({ try { Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" -Name "Enabled" -Value 0 -ErrorAction SilentlyContinue; Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\ADLX_Privacy\AllowAdvertisingId" -Name "value" -Value 0 -ErrorAction SilentlyContinue; Write-Log -logBox $logBox -message $global:strings.privacy_log_ad_id_off -color $global:successColor } catch { Show-Error -ErrorRecord $_ }})
    
    $tabPrivacy.Controls.AddRange(@($btnDisableTelemetry, $btnDisableAdID, $btnEnableTelemetry))

    # --- Debloat Sekmesi ---
    $debloatList = New-Object System.Windows.Forms.CheckedListBox; $debloatList.Location = New-Object System.Drawing.Point(20, 20); $debloatList.Size = New-Object System.Drawing.Size(240, 120); $debloatList.BackColor = $global:logBgColor; $debloatList.ForeColor = $global:fgColor; $debloatList.BorderStyle = [System.Windows.Forms.BorderStyle]::None
    [void]$debloatList.Items.Add($global:strings.debloat_app_xbox, $false); [void]$debloatList.Items.Add($global:strings.debloat_app_cortana, $false); [void]$debloatList.Items.Add($global:strings.debloat_app_phone, $false); [void]$debloatList.Items.Add($global:strings.debloat_app_mixed, $false); [void]$debloatList.Items.Add($global:strings.debloat_app_solitaire, $false); [void]$debloatList.Items.Add($global:strings.debloat_app_zune, $false); [void]$debloatList.Items.Add($global:strings.debloat_app_all, $false)
    
    $btnRunDebloat = New-StyledButton $global:strings.debloat_btn_run 280 20 220 120; $btnRunDebloat.BackColor = $global:errorColor; $btnRunDebloat.Font = New-Object System.Drawing.Font("Segoe UI", 10, [System.Drawing.FontStyle]::Bold)
    
    $btnRunDebloat.Add_Click({
        try {
            if (-not (Show-ConfirmBox $global:strings.confirm_aggressive $global:strings.confirm_title)) { Write-Log -logBox $logBox -message $global:strings.status_cancelled -color $global:warnColor; return }

            $appsToRemove = @{
                $global:strings.debloat_app_xbox = "*xbox*"; $global:strings.debloat_app_cortana = "*Microsoft.549981C3F5F10*"; $global:strings.debloat_app_phone = "*Microsoft.YourPhone*"; $global:strings.debloat_app_mixed = "*Microsoft.MixedReality.Portal*"; $global:strings.debloat_app_solitaire = "*Microsoft.MicrosoftSolitaireCollection*"; $global:strings.debloat_app_zune = "*Microsoft.Zune*"
            }
            $allApps = "*3DBuilder*", "*Microsoft3DViewer*", "*WindowsAlarms*", "*WindowsCamera*", "*GetHelp*", "*Getstarted*", "*WindowsMaps*", "*Messaging*", "*Office.OneNote*", "*People*", "*Windows.Photos*", "*SkypeApp*", "*WindowsSoundRecorder*", "*WindowsFeedbackHub*", "*WindowsCalculator*"

            foreach ($item in $debloatList.CheckedItems) {
                Write-Log -logBox $logBox -message "$($item) $($global:strings.debloat_log_removing)" -color $global:warnColor
                if ($item -eq $global:strings.debloat_app_all) {
                    foreach ($key in $appsToRemove.Keys) { Get-AppxPackage $appsToRemove[$key] | Remove-AppxPackage -ErrorAction SilentlyContinue }
                    foreach ($app in $allApps) { Get-AppxPackage $app | Remove-AppxPackage -ErrorAction SilentlyContinue }
                } elseif ($appsToRemove.ContainsKey($item)) {
                    Get-AppxPackage $appsToRemove[$item] | Remove-AppxPackage -ErrorAction SilentlyContinue
                }
                Write-Log -logBox $logBox -message "$($item) $($global:strings.debloat_log_comp_item)" -color $global:successColor
            }
            Write-Log -logBox $logBox -message $global:strings.debloat_log_comp_all -color $global:successColor
        } catch { Show-Error -ErrorRecord $_ }
    })

    $tabDebloat.Controls.AddRange(@($debloatList, $btnRunDebloat))
    $tabs.Controls.AddRange(@($tabPrivacy, $tabDebloat))
    $privacyForm.Controls.AddRange(@($tabs, $logBox))
    [void]$privacyForm.ShowDialog($global:mainForm)
}

# ===================================================================
# KATEGORI 5: YAZILIM YÖNETIMI
# (Fonksiyon değişmedi, öncekiyle aynı)
# ===================================================================
function Show-Software-Window {
    $softwareForm = New-StyledForm $global:strings.sw_title 700 300
    $logBox = New-LogBox 270 20 400 220
    Write-Log -logBox $logBox -message $global:strings.status_select_action -color $global:infoColor

    $btnInstall = New-StyledButton $global:strings.sw_btn_install 20 20
    $btnUninstall = New-StyledButton $global:strings.sw_btn_uninstall 20 70
    $btnUpdateAll = New-StyledButton $global:strings.sw_btn_update 20 120
    $btnKillTask = New-StyledButton $global:strings.sw_btn_kill 20 170

    $btnInstall.Add_Click({
        try {
            $softwareForm.Controls.RemoveByKey("installCombo"); $softwareForm.Controls.RemoveByKey("installBtn")
            
            $combo = New-Object System.Windows.Forms.ComboBox; $combo.Name = "installCombo"; $combo.Location = New-Object System.Drawing.Point(270, 20); $combo.Size = New-Object System.Drawing.Size(280, 40); $combo.Items.AddRange(@("7zip.7zip", "Notepad++.Notepad++", "Microsoft.Sysinternals", "WizTree.WizTree", "RevoUninstaller.RevoUninstaller")); $combo.Text = $global:strings.sw_install_combo
            
            $btnInstallNow = New-StyledButton $global:strings.sw_install_btn 560 20 110 26; $btnInstallNow.Name = "installBtn"
            $btnInstallNow.Add_Click({
                try {
                    if ($combo.SelectedItem) {
                        Write-Log -logBox $logBox -message "$($combo.SelectedItem) $($global:strings.sw_install_log)" -color $global:infoColor
                        Start-New-Console-Process "winget" "install --id $($combo.SelectedItem) -e --accept-package-agreements --accept-source-agreements"
                        Write-Log -logBox $logBox -message $global:strings.sw_install_new_window -color $global:successColor
                    }
                } catch { Show-Error -ErrorRecord $_ }
            })
            $softwareForm.Controls.AddRange(@($combo, $btnInstallNow))
            $logBox.Location = New-Object System.Drawing.Point(270, 70); $logBox.Size = New-Object System.Drawing.Size(400, 170)
        } catch { Show-Error -ErrorRecord $_ }
    })

    $btnUninstall.Add_Click({
        try {
            $progName = [Microsoft.VisualBasic.Interaction]::InputBox($global:strings.sw_uninstall_prompt, $global:strings.sw_btn_uninstall, $global:strings.sw_uninstall_eg)
            if ([string]::IsNullOrWhiteSpace($progName)) { Write-Log -logBox $logBox -message $global:strings.status_cancelled -color $global:warnColor; return }
            
            Write-Log -logBox $logBox -message "'$($progName)' $($global:strings.sw_uninstall_log)" -color $global:infoColor
            $cmd = "wmic product where ""name like '%%$progName%%'"" call uninstall"
            Start-New-Console-Process "cmd.exe" "/C $cmd"
            Write-Log -logBox $logBox -message $global:strings.sw_uninstall_new_window -color $global:successColor
        } catch { Show-Error -ErrorRecord $_ }
    })

    $btnUpdateAll.Add_Click({
        try {
            Write-Log -logBox $logBox -message $global:strings.sw_update_log -color $global:infoColor
            Start-New-Console-Process "winget" "upgrade --all --accept-package-agreements --accept-source-agreements"
            Write-Log -logBox $logBox -message $global:strings.sw_update_new_window -color $global:successColor
        } catch { Show-Error -ErrorRecord $_ }
    })

    $btnKillTask.Add_Click({
        try {
            $procName = [Microsoft.VisualBasic.Interaction]::InputBox($global:strings.sw_kill_prompt, $global:strings.sw_btn_kill, $global:strings.sw_kill_eg)
            if ([string]::IsNullOrWhiteSpace($procName)) { Write-Log -logBox $logBox -message $global:strings.status_cancelled -color $global:warnColor; return }
            $procName = $procName.Replace(".exe", "")
            Stop-Process -Name $procName -Force -ErrorAction SilentlyContinue
            Write-Log -logBox $logBox -message "'$($procName)' $($global:strings.sw_kill_log)" -color $global:successColor
        } catch { Show-Error -ErrorRecord $_ }
    })

    $softwareForm.Controls.AddRange(@($logBox, $btnInstall, $btnUninstall, $btnUpdateAll, $btnKillTask))
    [void]$softwareForm.ShowDialog($global:mainForm)
}

# ===================================================================
# KATEGORI 6: SISTEM ARACLARI VE INCE AYARLAR (YENİDEN YAZILDI)
# ===================================================================
function Show-Tweaks-Window {
    $tweaksForm = New-StyledForm $global:strings.tweaks_title 800 350
    $logBox = New-LogBox 20 220 740 100
    Write-Log -logBox $logBox -message $global:strings.status_select_action -color $global:infoColor

    $col1=20; $col2=270; $col3=520
    $row1=20; $row2=70; $row3=120; $row4=170
    
    $btnServices = New-StyledButton $global:strings.tweaks_btn_services $col1 $row1
    $btnPower = New-StyledButton $global:strings.tweaks_btn_power $col1 $row2
    $btnHibernation = New-StyledButton $global:strings.tweaks_btn_hibernate $col1 $row3
    
    $btnFeatures = New-StyledButton $global:strings.tweaks_btn_features $col2 $row1
    $btnResetSearch = New-StyledButton $global:strings.tweaks_btn_search $col2 $row2
    $btnIconCache = New-StyledButton $global:strings.tweaks_btn_icon $col2 $row3
    
    $btnTaskMgr = New-StyledButton $global:strings.tweaks_btn_taskmgr $col3 $row1
    $btnEventVwr = New-StyledButton $global:strings.tweaks_btn_eventvwr $col3 $row2
    $btnGodMode = New-StyledButton $global:strings.tweaks_btn_godmode $col3 $row3
    
    # --- YENİ BUTONLAR ---
    # CheckBox'lar yerine basit butonlar
    $btnHiddenOn = New-StyledButton $global:strings.tweaks_btn_hidden_on $col1 $row4 115 40 # Daha küçük
    $btnHiddenOff = New-StyledButton $global:strings.tweaks_btn_hidden_off ($col1 + 125) $row4 115 40
    
    $btnExtOn = New-StyledButton $global:strings.tweaks_btn_ext_on $col2 $row4 115 40
    $btnExtOff = New-StyledButton $global:strings.tweaks_btn_ext_off ($col2 + 125) $row4 115 40
    
    # --- BUTON EYLEMLERİ ---
    $btnHiddenOn.Add_Click({
        try {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Value 1
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSuperHidden" -Value 1
            Write-Log -logBox $logBox -message $global:strings.tweaks_log_hidden_on -color $global:successColor
            Stop-Process -Name "explorer" -Force; Start-Explorer
            Write-Log -logBox $logBox -message $global:strings.tweaks_log_explorer
        } catch { Show-Error -ErrorRecord $_ }
    })
    $btnHiddenOff.Add_Click({
        try {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Value 2
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSuperHidden" -Value 0
            Write-Log -logBox $logBox -message $global:strings.tweaks_log_hidden_off -color $global:successColor
            Stop-Process -Name "explorer" -Force; Start-Explorer
            Write-Log -logBox $logBox -message $global:strings.tweaks_log_explorer
        } catch { Show-Error -ErrorRecord $_ }
    })
    $btnExtOn.Add_Click({
        try {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Value 0
            Write-Log -logBox $logBox -message $global:strings.tweaks_log_ext_on -color $global:successColor
            Stop-Process -Name "explorer" -Force; Start-Explorer
            Write-Log -logBox $logBox -message $global:strings.tweaks_log_explorer
        } catch { Show-Error -ErrorRecord $_ }
    })
    $btnExtOff.Add_Click({
        try {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Value 1
            Write-Log -logBox $logBox -message $global:strings.tweaks_log_ext_off -color $global:successColor
            Stop-Process -Name "explorer" -Force; Start-Explorer
            Write-Log -logBox $logBox -message $global:strings.tweaks_log_explorer
        } catch { Show-Error -ErrorRecord $_ }
    })

    # Diğer Buton Eylemleri
    $btnIconCache.Add_Click({ try { Stop-Process -Name "explorer" -Force -ErrorAction SilentlyContinue; Remove-Item -Path "$env:LOCALAPPDATA\IconCache.db" -Force -ErrorAction SilentlyContinue; Start-Explorer; Write-Log -logBox $logBox -message $global:strings.tweaks_log_icon -color $global:successColor } catch { Show-Error -ErrorRecord $_ }})
    $btnResetSearch.Add_Click({ try { net.exe stop WSearch; Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows Search" -Name "SetupCompletedSuccessfully" -Value 0; net.exe start WSearch; Write-Log -logBox $logBox -message $global:strings.tweaks_log_search -color $global:successColor } catch { Show-Error -ErrorRecord $_ }})
    $btnTaskMgr.Add_Click({ try { taskmgr.exe } catch { Show-Error -ErrorRecord $_ }})
    $btnEventVwr.Add_Click({ try { eventvwr.msc } catch { Show-Error -ErrorRecord $_ }})
    $btnGodMode.Add_Click({ try { New-Item -Path "$env:USERPROFILE\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" -ItemType Directory -ErrorAction SilentlyContinue; Write-Log -logBox $logBox -message $global:strings.tweaks_log_godmode -color $global:successColor } catch { Show-Error -ErrorRecord $_ }})
    
    $btnServices.Add_Click({ try { Show-SubMenu-Services $tweaksForm $logBox } catch { Show-Error -ErrorRecord $_ }})
    $btnPower.Add_Click({ try { Show-SubMenu-Power $tweaksForm $logBox } catch { Show-Error -ErrorRecord $_ }})
    $btnHibernation.Add_Click({ try { Show-SubMenu-Hibernation $tweaksForm $logBox } catch { Show-Error -ErrorRecord $_ }})
    $btnFeatures.Add_Click({ try { Show-SubMenu-Features $tweaksForm $logBox } catch { Show-Error -ErrorRecord $_ }})
    
    $tweaksForm.Controls.AddRange(@($btnTaskMgr, $btnEventVwr, $btnGodMode, $btnServices, $btnPower, $btnHibernation, $btnFeatures, $btnResetSearch, $btnIconCache, $btnHiddenOn, $btnHiddenOff, $btnExtOn, $btnExtOff, $logBox))
    [void]$tweaksForm.ShowDialog($global:mainForm)
}

# --- Ince Ayar Alt Pencereleri ---
function Show-SubMenu-Services { param($parentForm, $logBox)
    $form = New-StyledForm $global:strings.svc_title 300 350; $form.StartPosition = "CenterParent"
    $btn1 = New-StyledButton $global:strings.svc_btn_sysmain_off 20 20; $btn1.Add_Click({ try { sc.exe config SysMain start= disabled; sc.exe stop SysMain; $logBox.Clear(); Write-Log $logBox $global:strings.service_msg_sysmain_off -color $global:successColor } catch { Show-Error -ErrorRecord $_ }}); $form.Controls.Add($btn1)
    $btn2 = New-StyledButton $global:strings.svc_btn_sysmain_on 20 70; $btn2.Add_Click({ try { sc.exe config SysMain start= auto; sc.exe start SysMain; $logBox.Clear(); Write-Log $logBox $global:strings.service_msg_sysmain_on -color $global:successColor } catch { Show-Error -ErrorRecord $_ }}); $form.Controls.Add($btn2)
    $btn3 = New-StyledButton $global:strings.svc_btn_wu_off 20 120; $btn3.Add_Click({ try { sc.exe stop wuauserv; $logBox.Clear(); Write-Log $logBox $global:strings.service_msg_wuauserv_off -color $global:successColor } catch { Show-Error -ErrorRecord $_ }}); $form.Controls.Add($btn3)
    $btn4 = New-StyledButton $global:strings.svc_btn_wu_on 20 170; $btn4.Add_Click({ try { sc.exe start wuauserv; $logBox.Clear(); Write-Log $logBox $global:strings.service_msg_wuauserv_on -color $global:successColor } catch { Show-Error -ErrorRecord $_ }}); $form.Controls.Add($btn4)
    $btn5 = New-StyledButton $global:strings.svc_btn_fax_off 20 220; $btn5.Add_Click({ try { sc.exe config Fax start= disabled; sc.exe stop Fax; $logBox.Clear(); Write-Log $logBox $global:strings.service_msg_fax_off -color $global:successColor } catch { Show-Error -ErrorRecord $_ }}); $form.Controls.Add($btn5)
    [void]$form.ShowDialog($parentForm)
}
function Show-SubMenu-Power { param($parentForm, $logBox)
    $form = New-StyledForm $global:strings.pwr_title 300 200; $form.StartPosition = "CenterParent"
    $btn1 = New-StyledButton $global:strings.pwr_btn_balanced 20 20; $btn1.Add_Click({ try { powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e; $logBox.Clear(); Write-Log $logBox $global:strings.power_msg_balanced -color $global:successColor } catch { Show-Error -ErrorRecord $_ }}); $form.Controls.Add($btn1)
    $btn2 = New-StyledButton $global:strings.pwr_btn_high 20 70; $btn2.Add_Click({ try { powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c; $logBox.Clear(); Write-Log $logBox $global:strings.power_msg_high -color $global:successColor } catch { Show-Error -ErrorRecord $_ }}); $form.Controls.Add($btn2)
    [void]$form.ShowDialog($parentForm)
}
function Show-SubMenu-Hibernation { param($parentForm, $logBox)
    $form = New-StyledForm $global:strings.hib_title 300 200; $form.StartPosition = "CenterParent"
    $btn1 = New-StyledButton $global:strings.hib_btn_off 20 20; $btn1.Add_Click({ try { powercfg -h off; $logBox.Clear(); Write-Log $logBox $global:strings.hiber_msg_off -color $global:successColor } catch { Show-Error -ErrorRecord $_ }}); $form.Controls.Add($btn1)
    $btn2 = New-StyledButton $global:strings.hib_btn_on 20 70; $btn2.Add_Click({ try { powercfg -h on; $logBox.Clear(); Write-Log $logBox $global:strings.hiber_msg_on -color $global:successColor } catch { Show-Error -ErrorRecord $_ }}); $form.Controls.Add($btn2)
    [void]$form.ShowDialog($parentForm)
}
function Show-SubMenu-Features { param($parentForm, $logBox)
    $form = New-StyledForm $global:strings.feat_title 300 250; $form.StartPosition = "CenterParent"
    $btn1 = New-StyledButton $global:strings.feat_btn_net35 20 20; $btn1.Add_Click({ try { $logBox.Clear(); Write-Log $logBox $global:strings.feat_log_net35 -color $global:infoColor; Start-New-Console-Process "Dism.exe" "/online /Enable-Feature /FeatureName:NetFx3 /All" } catch { Show-Error -ErrorRecord $_ }}); $form.Controls.Add($btn1)
    $btn2 = New-StyledButton $global:strings.feat_btn_hyperv_on 20 70; $btn2.Add_Click({ try { $logBox.Clear(); Write-Log $logBox $global:strings.feat_log_hyperv_on -color $global:infoColor; Start-New-Console-Process "Dism.exe" "/online /Enable-Feature /FeatureName:Microsoft-Hyper-V /All" } catch { Show-Error -ErrorRecord $_ }}); $form.Controls.Add($btn2)
    $btn3 = New-StyledButton $global:strings.feat_btn_hyperv_off 20 120; $btn3.Add_Click({ try { $logBox.Clear(); Write-Log $logBox $global:strings.feat_log_hyperv_off -color $global:infoColor; Start-New-Console-Process "Dism.exe" "/online /Disable-Feature /FeatureName:Microsoft-Hyper-V /All" } catch { Show-Error -ErrorRecord $_ }}); $form.Controls.Add($btn3)
    [void]$form.ShowDialog($parentForm)
}

# ===================================================================
# KATEGORI 7: DISK ARACLARI
# (Fonksiyon değişmedi, öncekiyle aynı)
# ===================================================================
function Show-Disk-Window {
    $diskForm = New-StyledForm $global:strings.disk_title 300 300
    
    $btnCleanup = New-StyledButton $global:strings.disk_btn_cleanup 20 20
    $btnMgmt = New-StyledButton $global:strings.disk_btn_mgmt 20 70
    $btnDefrag = New-StyledButton $global:strings.disk_btn_defrag 20 120
    $btnChkDsk = New-StyledButton $global:strings.disk_btn_chkdsk 20 170
    
    $btnCleanup.Add_Click({ try { cleanmgr.exe } catch { Show-Error -ErrorRecord $_ }})
    $btnMgmt.Add_Click({ try { diskmgmt.msc } catch { Show-Error -ErrorRecord $_ }})
    $btnDefrag.Add_Click({ try { dfrgui.exe } catch { Show-Error -ErrorRecord $_ }})
    $btnChkDsk.Add_Click({
        try {
            if (Show-ConfirmBox $global:strings.disk_chkdsk_confirm $global:strings.disk_btn_chkdsk) {
                chkdsk.exe C: /f /r
                Show-MsgBox $global:strings.disk_chkdsk_log $global:strings.status_complete
            }
        } catch { Show-Error -ErrorRecord $_ }
    })

    $diskForm.Controls.AddRange(@($btnCleanup, $btnMgmt, $btnDefrag, $btnChkDsk))
    [void]$diskForm.ShowDialog($global:mainForm)
}

# ===================================================================
# KATEGORI 8: RAPORLAMA VE BILGI
# (Fonksiyon değişmedi, öncekiyle aynı - Pil Raporu düzeltmesi dahil)
# ===================================================================
function Show-Reporting-Window {
    $reportForm = New-StyledForm $global:strings.report_title 700 350
    $logBox = New-LogBox 270 20 400 270
    Write-Log -logBox $logBox -message $global:strings.status_select_action -color $global:infoColor

    $btnQuickInfo = New-StyledButton $global:strings.report_btn_quick 20 20
    $btnSysInfo = New-StyledButton $global:strings.report_btn_sysinfo 20 70
    $btnBattery = New-StyledButton $global:strings.report_btn_battery 20 120
    $btnStartup = New-StyledButton $global:strings.report_btn_startup 20 170
    $btnPrograms = New-StyledButton $global:strings.report_btn_programs 20 220

    $desktop = [Environment]::GetFolderPath("Desktop")

    $btnQuickInfo.Add_Click({
        try {
            $logBox.Clear()
            Write-Log -logBox $logBox -message $global:strings.report_log_quick_pc -color $global:infoColor
            Write-Log -logBox $logBox -message $env:COMPUTERNAME
            Write-Log -logBox $logBox -message $global:strings.report_log_quick_user -color $global:infoColor
            Write-Log -logBox $logBox -message $env:USERNAME
            Write-Log -logBox $logBox -message $global:strings.report_log_quick_ip -color $global:infoColor
            Get-NetIPAddress -AddressFamily IPv4 -ErrorAction SilentlyContinue | ForEach-Object { Write-Log -logBox $logBox -message $_.IPAddress }
        } catch { Show-Error -ErrorRecord $_ }
    })
    
    $btnSysInfo.Add_Click({
        try {
            $file = "$desktop\System_Info.txt"; Write-Log -logBox $logBox -message $global:strings.report_log_sysinfo -color $global:infoColor
            systeminfo | Out-File -FilePath $file; Write-Log -logBox $logBox -message "$($global:strings.report_log_file) $file" -color $global:successColor
            Invoke-Item $file
        } catch { Show-Error -ErrorRecord $_ }
    })
    
    $btnBattery.Add_Click({
        try {
            $file = "$desktop\Battery_Report.html"
            Write-Log -logBox $logBox -message $global:strings.report_log_battery -color $global:infoColor
            
            Start-Process "powercfg.exe" -ArgumentList "/batteryreport /output `"$file`"" -Wait -NoNewWindow -ErrorAction Stop
            
            if (Test-Path $file) {
                Write-Log -logBox $logBox -message "$($global:strings.report_log_file) $file" -color $global:successColor
                Invoke-Item $file
            } else {
                Write-Log -logBox $logBox -message "$($global:strings.status_failed): Pil raporu oluşturulamadı." -color $global:errorColor
            }
        } catch { Show-Error -ErrorRecord $_ }
    })
    
    $btnStartup.Add_Click({
        try {
            $file = "$desktop\Startup_Programs.txt"; Write-Log -logBox $logBox -message $global:strings.report_log_startup -color $global:infoColor
            Get-CimInstance -ClassName Win32_StartupCommand | Select-Object Name, Command, Location | Out-File -FilePath $file; Write-Log -logBox $logBox -message "$($global:strings.report_log_file) $file" -color $global:successColor
            Invoke-Item $file
        } catch { Show-Error -ErrorRecord $_ }
    })
    
    $btnPrograms.Add_Click({
        try {
            $file = "$desktop\Installed_Programs.txt"; Write-Log -logBox $logBox -message $global:strings.report_log_programs -color $global:infoColor
            Get-CimInstance -ClassName Win32_Product | Select-Object Name, Version | Out-File -FilePath $file; Write-Log -logBox $logBox -message "$($global:strings.report_log_file) $file" -color $global:successColor
            Invoke-Item $file
        } catch { Show-Error -ErrorRecord $_ }
    })

    $reportForm.Controls.AddRange(@($logBox, $btnQuickInfo, $btnSysInfo, $btnBattery, $btnStartup, $btnPrograms))
    [void]$reportForm.ShowDialog($global:mainForm)
}

# ===================================================================
# KATEGORI 9: YEDEKLENME
# (Fonksiyon değişmedi, öncekiyle aynı)
# ===================================================================
function Show-Backup-Window {
    $backupForm = New-StyledForm $global:strings.backup_title 600 250
    
    $lblSource = New-Object System.Windows.Forms.Label; $lblSource.Text = $global:strings.backup_lbl_source; $lblSource.Location = New-Object System.Drawing.Point(20, 25); $lblSource.ForeColor = $global:fgColor; $lblSource.AutoSize = $true
    $txtSource = New-Object System.Windows.Forms.TextBox; $txtSource.Location = New-Object System.Drawing.Point(150, 20); $txtSource.Size = New-Object System.Drawing.Size(410, 20); $txtSource.Text = "C:\Users\$env:USERNAME\Documents"
    
    $lblDest = New-Object System.Windows.Forms.Label; $lblDest.Text = $global:strings.backup_lbl_dest; $lblDest.Location = New-Object System.Drawing.Point(20, 75); $lblDest.ForeColor = $global:fgColor; $lblDest.AutoSize = $true
    $txtDest = New-Object System.Windows.Forms.TextBox; $txtDest.Location = New-Object System.Drawing.Point(150, 70); $txtDest.Size = New-Object System.Drawing.Size(410, 20); $txtDest.Text = "D:\Backups\Documents"

    $btnRunBackup = New-StyledButton $global:strings.backup_run_btn 20 130 540 50
    $btnRunBackup.BackColor = [System.Drawing.Color]::FromArgb(0, 122, 204)
    $btnRunBackup.Font = New-Object System.Drawing.Font("Segoe UI", 10, [System.Drawing.FontStyle]::Bold)
    
    $btnRunBackup.Add_Click({
        try {
            $source = $txtSource.Text
            $dest = $txtDest.Text
            if ((-not [System.IO.Directory]::Exists($source)) -or (-not [System.IO.Directory]::Exists($dest))) {
                Show-MsgBox $global:strings.backup_error_path $global:strings.error_title "Error"; return
            }
            Start-New-Console-Process "robocopy.exe" """$source"" ""$dest"" /MIR /E /R:3 /W:5"
            Show-MsgBox $global:strings.backup_complete $global:strings.status_complete
        } catch { Show-Error -ErrorRecord $_ }
    })

    $backupForm.Controls.AddRange(@($lblSource, $txtSource, $lblDest, $txtDest, $btnRunBackup))
    [void]$backupForm.ShowDialog($global:mainForm)
}


# ===================================================================
# ===================================================================
# UYGULAMA BAŞLANGIÇ NOKTALARI
# ===================================================================
# ===================================================================

# 1. DIL SECIM PENCERESI
function Show-Language-Selection {
    $langForm = New-StyledForm "Select Language / Dil Seçin" 400 200
    
    $lblTitle = New-Object System.Windows.Forms.Label; $lblTitle.Text = "Please select your language: / Lütfen dilinizi seçin:"; $lblTitle.Location = New-Object System.Drawing.Point(40, 30); $lblTitle.AutoSize = $true; $lblTitle.ForeColor = $global:fgColor; $lblTitle.Font = New-Object System.Drawing.Font("Segoe UI", 12)
    
    $btnEN = New-StyledButton "English" 40 80 150 50
    $btnTR = New-StyledButton "Türkçe" 210 80 150 50
    
    $btnEN.Add_Click({ $global:lang = "EN"; $langForm.Close() })
    $btnTR.Add_Click({ $global:lang = "TR"; $langForm.Close() })
    
    $langForm.Controls.AddRange(@($lblTitle, $btnEN, $btnTR))
    $langForm.AcceptButton = $btnEN
    [void]$langForm.ShowDialog()
}

# 2. ANA PENCERE
function Show-Main-Window {
    $global:mainForm = New-StyledForm $global:strings.main_title 800 480
    
    $col1_X = 20; $col2_X = 270; $col3_X = 520
    $row1_Y = 30; $row2_Y = 80; $row3_Y = 130; $row4_Y = 180; $row5_Y = 230
    $row6_Y = 320; $row7_Y = 360

    $btnCleanup = New-StyledButton $global:strings.btn_cat1 $col1_X $row1_Y
    $btnPrivacy = New-StyledButton $global:strings.btn_cat4 $col1_X $row2_Y
    $btnDiskTools = New-StyledButton $global:strings.btn_cat7 $col1_X $row3_Y
    
    $btnHealth = New-StyledButton $global:strings.btn_cat2 $col2_X $row1_Y
    $btnSoftware = New-StyledButton $global:strings.btn_cat5 $col2_X $row2_Y
    $btnReporting = New-StyledButton $global:strings.btn_cat8 $col2_X $row3_Y
    $btnBackup = New-StyledButton $global:strings.btn_cat9 $col2_X $row4_Y

    $btnNetwork = New-StyledButton $global:strings.btn_cat3 $col3_X $row1_Y
    $btnTweaks = New-StyledButton $global:strings.btn_cat6 $col3_X $row2_Y
    $btnClose = New-StyledButton $global:strings.btn_exit $col3_X $row4_Y
    $btnClose.BackColor = $global:errorColor

    $btnCleanup.Add_Click({ try { Show-Cleanup-Window } catch { Show-Error -ErrorRecord $_ }})
    $btnHealth.Add_Click({ try { Show-Health-Window } catch { Show-Error -ErrorRecord $_ }})
    $btnNetwork.Add_Click({ try { Show-Network-Window } catch { Show-Error -ErrorRecord $_ }})
    $btnPrivacy.Add_Click({ try { Show-Privacy-Window } catch { Show-Error -ErrorRecord $_ }})
    $btnSoftware.Add_Click({ try { Show-Software-Window } catch { Show-Error -ErrorRecord $_ }})
    $btnTweaks.Add_Click({ try { Show-Tweaks-Window } catch { Show-Error -ErrorRecord $_ }})
    $btnDiskTools.Add_Click({ try { Show-Disk-Window } catch { Show-Error -ErrorRecord $_ }})
    $btnReporting.Add_Click({ try { Show-Reporting-Window } catch { Show-Error -ErrorRecord $_ }})
    $btnBackup.Add_Click({ try { Show-Backup-Window } catch { Show-Error -ErrorRecord $_ }})
    $btnClose.Add_Click({ $global:mainForm.Close() })

    # Durum Çubuğu
    $statusBar = New-Object System.Windows.Forms.Label; $statusBar.Text = $global:strings.status_welcome; $statusBar.Location = New-Object System.Drawing.Point(20, $row6_Y); $statusBar.AutoSize = $true; $statusBar.ForeColor = $global:fgColor
    $warnBar = New-Object System.Windows.Forms.Label; $warnBar.Text = $global:strings.warn_admin; $warnBar.Location = New-Object System.Drawing.Point(20, $row7_Y); $warnBar.AutoSize = $true; $warnBar.ForeColor = $global:warnColor

    $global:mainForm.Controls.AddRange(@($btnCleanup, $btnHealth, $btnNetwork, $btnPrivacy, $btnSoftware, $btnTweaks, $btnDiskTools, $btnReporting, $btnBackup, $btnClose, $statusBar, $warnBar))
    [void]$global:mainForm.ShowDialog()
}

# ===================================================================
# UYGULAMAYI BAŞLAT
# ===================================================================

# 1. Dili seçtir
Show-Language-Selection

# 2. Seçilen dile göre ana metinleri ayarla
$global:strings = $global:AllStrings[$global:lang]

# 3. Ana programı çalıştır
Show-Main-Window