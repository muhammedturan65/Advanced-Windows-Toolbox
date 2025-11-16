# Advanced Windows Toolbox v5.0 / Gelişmiş Windows Araç Kutusu v5.0

[English](#english) | [Türkçe](#türkçe)

---

<a name="english"></a>

## 🇬🇧 English

### Advanced Windows Toolbox v5.0

A powerful, menu-driven, dual-language batch script for Windows power-users, developers, and system administrators. This tool consolidates a massive array of system cleanup, repair, privacy, and tweaking tasks into a single, easy-to-use interface.

It is inspired by the functionality of tools like "Windows Repair Toolbox" and "privacy.sexy" but implemented entirely as a native Windows batch script (with PowerShell for advanced tasks) that requires no installation.

### 🚨 VERY IMPORTANT: READ BEFORE USE 🚨

This is an extremely powerful tool designed for **expert users**.

* **1. MUST RUN AS ADMINISTRATOR:** This script requires the highest privileges to perform its tasks. Right-click the `.bat` file and select **"Run as administrator"**.
* **2. USE AT YOUR OWN RISK:** This tool makes significant changes to your system, including:
    * Deleting system cache files.
    * Modifying system services (Telemetry, DiagTrack).
    * Editing the Windows Registry (Privacy, Tweaks).
    * **Permanently removing** built-in Windows applications (Bloatware).
    * Modifying your `hosts` file to block ads.
* **3. NOT EASILY REVERSIBLE:** Many actions, especially "Debloating" and "Privacy" tweaks, are not easily undone.
* **4. BACKUP YOUR DATA:** Before running aggressive options, ensure you have a system restore point or a full backup.

The author is not responsible for any data loss or system damage. **Review the code before executing** if you are unsure about any function.

### ✨ Features (v5.0)

The script is organized into 8 main categories, each with its own sub-menu.

#### [1] Comprehensive System Cleanup
* Cleans all user and system `Temp` files.
* Clears `Prefetch` cache.
* Empties the Recycle Bin.
* Clears Windows Update, Delivery Optimization, and Error Reporting caches.
* Flushes the DNS cache.
* Resets Microsoft Store and NVIDIA/GPU caches.
* Clears all major browser caches (Chrome, Edge, Firefox).
* **(Aggressive)** Clears all Windows Event Logs.

#### [2] System Health & Repair
* **Repair System Files:** Runs both `DISM /RestoreHealth` and `SFC /scannow`.
* **Check Disk (CHKDSK):** Schedules a disk check on the next restart.
* **Defender Quick Scan:** Initiates a quick antivirus scan.
* **Reset Print Spooler:** Fixes stuck print jobs.
* **Open System Restore:** Launches the System Restore wizard.
* **Open Reliability Monitor:** Launches the Reliability Monitor to check for system errors.

#### [3] Network Tools
* **Reset Network Stack:** Flushes DNS, resets IP, and resets Winsock.
* **Hard Reset Network Adapters:** Reinstalls all network adapters (requires restart).
* **Show Saved Wi-Fi Passwords:** Lists all saved Wi-Fi SSIDs and passwords.
* **Block Trackers & Ads (Hosts File):** Downloads and appends the popular StevenBlack `hosts` file to block ads and trackers system-wide.

#### [4] Privacy & Debloating
* **Privacy Settings:**
    * Disables core Telemetry services (DiagTrack).
    * Disables Advertising ID and Location Tracking.
* **Windows Debloater:**
    * Remove **All Bloatware** (Aggressive).
    * Remove individual apps like **Xbox**, **Cortana**, **Phone Link**, **Mixed Reality**, **Solitaire**, and **Zune/Groove**.

#### [5] System Tools & Tweaks
* **Manage Power Plan:** Switch between "Balanced" and "High Performance".
* **Manage Hibernation:** Enable or Disable (and delete `hiberfil.sys`).
* **Manage Windows Features:** Install .NET 3.5 or install/disable Hyper-V.
* **Reset Windows Search Index:** Fixes a broken search bar.
* **Create 'God Mode' Folder:** Creates the master control panel shortcut.
* **Manage Hidden Files:** Show or hide hidden files and file extensions.
* **Rebuild Icon Cache:** Fixes broken or incorrect icons.
* **Launchers:** Quickly open Task Manager and Event Viewer.

#### [6] Reporting & Info
* **Quick System Info:** Displays PC name, user, IP, and MAC Address.
* **Generate Battery Report:** (Laptops only) Creates a detailed HTML battery health report.
* **List & Export Installed Programs:** Creates a `.txt` file on your desktop with a list of all installed (WMIC) programs.

#### [7S] Software & Process Management
* **Update All Apps (Winget):** Runs `winget upgrade --all` to update all your installed applications.
* **Kill Task:** Force-terminates a process by its name (e.g., `chrome.exe`).

#### [8] Backup
* **Quick Backup (Robocopy):** Mirrors a source folder to a destination. **Requires manual configuration.**

### ⚙️ How to Use

1.  Download the `.bat` file (e.g., `Advanced_Toolbox_v5_DUAL.bat`).
2.  (Optional but Recommended) Open the file in a text editor to review the commands.
3.  **CRITICAL:** Right-click the file and select **"Run as administrator"**.
4.  At the first prompt, choose your language (**English** or **Türkçe**).
5.  The main menu will appear. Type the number corresponding to your choice and press **Enter**.
6.  Follow the on-screen prompts for each sub-menu or tool.

### 🔧 Configuration (For Backup)

The **Quick Backup** feature (Option 8) will **not** work until you configure it.

1.  Right-click the `.bat` file and choose "Edit" (or open it in a text editor).
2.  Scroll down to the `:MENU_BACKUP` section.
3.  Modify the `KAYNAK` (Source) and `HEDEF` (Destination) variables:

    ```batch
    :: --------- AYARLAR ---------
    :: --------- SETTINGS ---------
    set KAYNAK="C:\Users\YOUR_USERNAME\Documents"
    set HEDEF="D:\Backups\Documents"
    :: ---------------------------
    ```

4.  Save the file and exit.

### 📜 License

This project is licensed under the MIT License.

---

<a name="türkçe"></a>

## 🇹🇷 Türkçe

### Gelişmiş Windows Araç Kutusu v5.0

Windows uzman kullanıcıları, geliştiriciler ve sistem yöneticileri için tasarlanmış, menü kontrollü, çift dilli, güçlü bir batch betiğidir. Bu araç, sistem temizliği, onarımı, gizlilik ayarları ve ince ayar görevlerini tek ve kullanımı kolay bir arayüzde birleştirir.

"Windows Repair Toolbox" ve "privacy.sexy" gibi araçların işlevselliğinden esinlenilmiştir, ancak herhangi bir kurulum gerektirmeyen, (gelişmiş görevler için PowerShell kullanan) tamamen yerel bir Windows batch betiği olarak uygulanmıştır.

### 🚨 ÇOK ÖNEMLİ: KULLANMADAN ÖNCE OKUYUN 🚨

Bu, **uzman kullanıcılar** için tasarlanmış son derece güçlü bir araçtır.

* **1. YÖNETİCİ OLARAK ÇALIŞTIRILMALIDIR:** Bu betik, görevlerini yerine getirmek için en yüksek ayrıcalıklara ihtiyaç duyar. `.bat` dosyasına sağ tıklayın ve **"Yönetici olarak çalıştır"** seçeneğini seçin.
* **2. RİSK SİZE AİTTİR:** Bu araç, sisteminizde aşağıdakiler de dahil olmak üzere önemli değişiklikler yapar:
    * Sistem önbellek dosyalarını silme.
    * Sistem hizmetlerini değiştirme (Telemetri, DiagTrack).
    * Windows Kayıt Defteri'ni düzenleme (Gizlilik, İnce Ayarlar).
    * Gömülü Windows uygulamalarını **kalıcı olarak kaldırma** (Bloatware).
    * Reklamları engellemek için `hosts` dosyanızı değiştirme.
* **3. KOLAYCA GERİ ALINAMAZ:** Başta "Debloat" ve "Gizlilik" ayarları olmak üzere birçok eylem kolayca geri alınamaz.
* **4. VERİLERİNİZİ YEDEKLEYİN:** Agresif seçenekleri çalıştırmadan önce bir sistem geri yükleme noktanızın veya tam bir yedeğinizin olduğundan emin olun.

Yazar, herhangi bir veri kaybı veya sistem hasarından sorumlu değildir. Herhangi bir işlevden emin değilseniz **çalıştırmadan önce kodu inceleyin**.

### ✨ Özellikler (v5.0)

Betik, her biri kendi alt menüsüne sahip 8 ana kategoriye ayrılmıştır.

#### [1] Kapsamlı Sistem Temizliği
* Tüm kullanıcı ve sistem `Temp` dosyalarını temizler.
* `Prefetch` önbelleğini temizler.
* Geri Dönüşüm Kutusu'nu boşaltır.
* Windows Update, Teslim İyileştirme ve Hata Raporlama önbelleklerini temizler.
* DNS önbelleğini temizler (Flushes DNS).
* Microsoft Store ve NVIDIA/GPU önbelleklerini sıfırlar.
* Tüm büyük tarayıcı önbelleklerini (Chrome, Edge, Firefox) temizler.
* **(Agresif)** Tüm Windows Olay Günlüklerini temizler.

#### [2] Sistem Sağlığı ve Onarım
* **Sistem Dosyalarını Onar:** Hem `DISM /RestoreHealth` hem de `SFC /scannow` komutlarını çalıştırır.
* **Diski Kontrol Et (CHKDSK):** Bir sonraki yeniden başlatmada bir disk denetimi planlar.
* **Defender Hızlı Tarama:** Hızlı bir antivirüs taraması başlatır.
* **Yazdırma Biriktiricisini Sıfırla:** Takılı kalmış yazdırma işlerini düzeltir.
* **Sistem Geri Yükleme'yi Aç:** Sistem Geri Yükleme sihirbazını başlatır.
* **Güvenilirlik İzleyicisi'ni Aç:** Sistem hatalarını kontrol etmek için Güvenilirlik İzleyicisi'ni başlatır.

#### [3] Ağ Araçları
* **Ağ Yığınını Sıfırla:** DNS'i temizler, IP'yi sıfırlar ve Winsock'u sıfırlar.
* **Ağ Bağdaştırıcılarını Sert Sıfırla:** Tüm ağ bağdaştırıcılarını yeniden yükler (yeniden başlatma gerekir).
* **Kayıtlı Wi-Fi Şifrelerini Göster:** Kayıtlı tüm Wi-Fi SSID'lerini ve şifrelerini listeler.
* **İzleyicileri & Reklamları Engelle (Hosts Dosyası):** Popüler StevenBlack `hosts` dosyasını indirir ve sistem genelinde reklamları/izleyicileri engellemek için ekler.

#### [4] Gizlilik ve Debloat (Bloatware Kaldırma)
* **Gizlilik Ayarları:**
    * Çekirdek Telemetri hizmetlerini (DiagTrack) devre dışı bırakır.
    * Reklam Kimliğini ve Konum Takibini devre dışı bırakır.
* **Windows Debloater (Bloatware Kaldırıcı):**
    * **TÜM Bloatware'leri Kaldır** (Agresif).
    * **Xbox**, **Cortana**, **Telefon Bağlantısı**, **Karma Gerçeklik**, **Solitaire** ve **Zune/Groove** gibi uygulamaları tek tek kaldırın.

#### [5] Sistem Araçları ve İnce Ayarlar
* **Güç Planını Yönet:** "Dengeli" ve "Yüksek Performans" arasında geçiş yapın.
* **Hazırda Bekleme Modunu Yönet:** Etkinleştirin veya devre dışı bırakın (`hiberfil.sys` dosyasını silin).
* **Windows Özelliklerini Yönet:** .NET 3.5 yükleyin veya Hyper-V'yi yükleyin/devre dışı bırakın.
* **Windows Arama Dizinini Sıfırla:** Bozuk bir arama çubuğunu düzeltir.
* **'God Mode' Klasörü Oluştur:** Ana denetim masası kısayolunu oluşturur.
* **Gizli Dosyaları Yönet:** Gizli dosyaları ve dosya uzantılarını gösterin veya gizleyin.
* **Simge Önbelleğini Yeniden Oluştur:** Bozuk veya yanlış simgeleri düzeltir.
* **Başlatıcılar:** Görev Yöneticisi'ni ve Olay Görüntüleyicisi'ni hızla açın.

#### [6] Raporlama ve Bilgi
* **Hızlı Sistem Bilgisi:** PC adı, kullanıcı, IP ve MAC Adresini görüntüler.
* **Pil Raporu Oluştur:** (Yalnızca Laptoplar) Ayrıntılı bir HTML pil sağlığı raporu oluşturur.
* **Yüklü Programları Listele ve Dışa Aktar:** Masaüstünüze tüm yüklü (WMIC) programların bir listesini içeren bir `.txt` dosyası oluşturur.

#### [7] Yazılım ve İşlem Yönetimi
* **Tüm Uygulamaları Güncelle (Winget):** `winget upgrade --all` komutunu çalıştırarak yüklü tüm uygulamalarınızı günceller.
* **Görevi Sonlandır:** Bir işlemi adına göre (örn: `chrome.exe`) zorla sonlandırır.

#### [8] Yedekleme
* **Hızlı Yedekleme (Robocopy):** Bir kaynak klasörü bir hedefe yansıtır. **Manuel yapılandırma gerektirir.**

### ⚙️ Nasıl Kullanılır

1.  `.bat` dosyasını indirin (örn: `Advanced_Toolbox_v5_DUAL.bat`).
2.  (İsteğe bağlı ancak önerilir) Komutları gözden geçirmek için dosyayı bir metin düzenleyicide açın.
3.  **ÇOK ÖNEMLİ:** Dosyaya sağ tıklayın ve **"Yönetici olarak çalıştır"** seçeneğini seçin.
4.  İlk istemde dilinizi seçin (**English** veya **Türkçe**).
5.  Ana menü görünecektir. Seçiminize karşılık gelen sayıyı yazın ve **Enter**'a basın.
6.  Her bir alt menü veya araç için ekrandaki komutları izleyin.

### 🔧 Yapılandırma (Yedekleme İçin)

**Hızlı Yedekleme** özelliği (Seçenek 8), siz yapılandırana kadar çalışmayacaktır.

1.  `.bat` dosyasına sağ tıklayın ve "Düzenle" seçeneğini seçin (veya bir metin düzenleyicide açın).
2.  Dosyada `:MENU_BACKUP` bölümüne gidin.
3.  `KAYNAK` ve `HEDEF` değişkenlerini değiştirin:

    ```batch
    :: --------- AYARLAR ---------
    :: --------- SETTINGS ---------
    set KAYNAK="C:\Users\KULLANICI_ADINIZ\Documents"
    set HEDEF="D:\Yedeklerim\Belgeler"
    :: ---------------------------
    ```

4.  Dosyayı kaydedin ve çıkın.

### 📜 Lisans

Bu proje MIT Lisansı altında lisanslanmıştır.
