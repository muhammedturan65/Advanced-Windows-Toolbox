# Advanced Windows Toolbox / Gelişmiş Windows Araç Kutusu

[English](#english) | [Türkçe](#türkçe)

---

<a name="english"></a>

## 🇬🇧 English

### Advanced Windows Toolbox v2.0 (Batch Script)

A powerful, menu-driven batch script for advanced Windows users, system administrators, and power users. It is designed to automate and simplify complex system maintenance, cleanup, and troubleshooting tasks from a single, easy-to-navigate interface.

### 🚨 WARNING: RUN AS ADMINISTRATOR 🚨

This script is powerful and performs destructive operations such as deleting system cache files, browser data, and Windows Event Logs.

* **You MUST run this script with administrative privileges.** (Right-click -> "Run as administrator").
* Use this tool at your own risk. The author is not responsible for any data loss or system damage that may result from its use.
* It is highly recommended to review the code before executing it.

### ✨ Features

This toolbox consolidates many common administrative tasks into one place.

#### 1. Ultra-Comprehensive System Cleanup
* **Classic Temp Files:** Cleans `%systemroot%\Temp` and user `%TEMP%` folders.
* **Prefetch:** Clears the prefetch cache.
* **Recycle Bin:** Empties the Recycle Bin.
* **Windows Caches:** Cleans Windows Update `SoftwareDistribution` and Delivery Optimization caches.
* **Error Reports:** Clears Windows Error Reporting logs.
* **DNS Cache:** Flushes the DNS resolver cache.
* **Thumbnail Cache:** Cleans the user's thumbnail cache (restarts `explorer.exe`).
* **Microsoft Store:** Resets the Microsoft Store cache (`wsreset.exe`).
* **GPU Caches:** Cleans NVIDIA Shader Caches.
* **Browser Caches:** Cleans caches for Chrome, Edge, and Firefox.
* **Event Logs:** **(Warning)** Clears ALL Windows Event Logs (System, Application, Security, etc.).

#### 2. Network & Connection Tools
* **Full Network Reset:** Performs a complete network stack reset (flushes DNS, releases/renews IP, resets Winsock).
* **Show Wi-Fi Passwords:** Lists all saved Wi-Fi profiles on the system and their corresponding passwords in plain text.

#### 3. System Health & Repair
* **Repair System Files:** Runs both `DISM /Online /Cleanup-Image /RestoreHealth` and `SFC /scannow` to find and repair Windows system file corruption.
* **Check Disk (CHKDSK):** Schedules a comprehensive disk check (`chkdsk /f /r`) for the C: drive on the next system restart.

#### 4. Quick Tools & Info
* **Quick System Info:** Displays your computer name, active username, IPv4 address(es), and MAC address(es).
* **Kill Task:** Allows you to force-terminate a running process by its executable name (e.g., `chrome.exe`).
* **Create "God Mode":** Creates the special "God Mode" shortcut folder on your desktop, giving you access to all Control Panel settings in one place.

#### 5. Power Plan & Backup
* **Set Power Plan:** Instantly switch between "Balanced" and "High Performance" power plans.
* **Quick Backup (Robocopy):** Executes a `robocopy` command to mirror a source folder to a destination. **(Requires configuration)**.

### ⚙️ How to Use

1.  Download the `.bat` file (e.g., `Advanced_Toolbox.bat`).
2.  (Optional but Recommended) Open the file in a text editor like Notepad++ or VS Code to review the commands.
3.  **CRITICAL:** Right-click the file and select **"Run as administrator"**.
4.  A menu will appear. Type the number corresponding to your choice and press **Enter**.
5.  Follow the on-screen prompts for each sub-menu or tool.

### 🔧 Configuration (For Backup)

Before using the **Quick Backup** feature (Option 5 -> 3), you **must** configure it first:

1.  Right-click the `.bat` file and choose "Edit" (or open it in a text editor).
2.  Scroll down to the `:BACKUP` section.
3.  Modify the `SOURCE` and `DESTINATION` variables:

    ```batch
    :: --------- SETTINGS ---------
    :: EDIT THESE TWO LINES TO MATCH YOUR SETUP:
    set SOURCE="C:\Users\YOUR_USERNAME\Documents"
    set DESTINATION="D:\Backups\Documents"
    :: ----------------------------
    ```

4.  Save the file and exit.

### 📜 License

This project is licensed under the MIT License.

---

<a name="türkçe"></a>

## 🇹🇷 Türkçe

### Gelişmiş Windows Araç Kutusu v2.0 (Batch Betiği)

Gelişmiş Windows kullanıcıları, sistem yöneticileri ve uzman kullanıcılar için hazırlanmış, menü kontrollü güçlü bir batch betiğidir. Karmaşık sistem bakımı, temizlik ve sorun giderme görevlerini tek ve gezinmesi kolay bir arayüzden otomatikleştirmek ve basitleştirmek için tasarlanmıştır.

### 🚨 UYARI: YÖNETİCİ OLARAK ÇALIŞTIRIN 🚨

Bu betik güçlüdür ve sistem önbellek dosyalarını, tarayıcı verilerini ve Windows Olay Günlüklerini silme gibi yıkıcı işlemler gerçekleştirir.

* **Bu betiği mutlaka yönetici yetkileriyle çalıştırmalısınız.** (Sağ tık -> "Yönetici olarak çalıştır").
* Bu aracı kullanmanın riski size aittir. Yazar, kullanımından kaynaklanabilecek herhangi bir veri kaybı veya sistem hasarından sorumlu değildir.
* Çalıştırmadan önce kodu gözden geçirmeniz önemle tavsiye edilir.

### ✨ Özellikler

Bu araç kutusu, birçok yaygın yönetim görevini tek bir yerde toplar.

#### 1. Ultra Kapsamlı Sistem Temizliği
* **Klasik Geçici Dosyalar:** `%systemroot%\Temp` ve kullanıcı `%TEMP%` klasörlerini temizler.
* **Prefetch:** Önbellek dosyalarını temizler.
* **Geri Dönüşüm Kutusu:** Geri Dönüşüm Kutusu'nu boşaltır.
* **Windows Önbellekleri:** Windows Update `SoftwareDistribution` ve Delivery Optimization (Teslim İyileştirme) önbelleklerini temizler.
* **Hata Raporları:** Windows Hata Raporlama günlüklerini temizler.
* **DNS Önbelleği:** DNS çözümleyici önbelleğini temizler (`ipconfig /flushdns`).
* **Küçük Resim Önbelleği:** Kullanıcının küçük resim önbelleğini temizler (`explorer.exe` yeniden başlatılır).
* **Microsoft Store:** Microsoft Store önbelleğini sıfırlar (`wsreset.exe`).
* **GPU Önbellekleri:** NVIDIA Shader Önbelleklerini temizler.
* **Tarayıcı Önbellekleri:** Chrome, Edge ve Firefox için önbellekleri temizler.
* **Olay Günlükleri:** **(Uyarı)** TÜM Windows Olay Günlüklerini (Sistem, Uygulama, Güvenlik vb.) temizler.

#### 2. Ağ ve Bağlantı Araçları
* **Tam Ağ Sıfırlama:** Eksiksiz bir ağ yığını sıfırlaması gerçekleştirir (DNS temizler, IP serbest bırakır/yeniler, Winsock sıfırlar).
* **Wi-Fi Şifrelerini Göster:** Sistemde kayıtlı tüm Wi-Fi profillerini ve bunlara karşılık gelen parolaları düz metin olarak listeler.

#### 3. Sistem Sağlığı ve Onarım
* **Sistem Dosyalarını Onar:** Windows sistem dosyası bozulmalarını bulmak ve onarmak için hem `DISM /Online /Cleanup-Image /RestoreHealth` hem de `SFC /scannow` komutlarını çalıştırır.
* **Diski Kontrol Et (CHKDSK):** Bir sonraki sistem yeniden başlatmasında C: sürücüsü için kapsamlı bir disk denetimi (`chkdsk /f /r`) planlar.

#### 4. Hızlı Araçlar ve Bilgi
* **Hızlı Sistem Bilgisi:** Bilgisayar adınızı, aktif kullanıcı adınızı, IPv4 adres(ler)inizi ve MAC adres(ler)inizi görüntüler.
* **Görevi Sonlandır:** Çalışan bir işlemi yürütülebilir dosya adına göre (örn: `chrome.exe`) zorla sonlandırmanıza olanak tanır.
* **"God Mode" Oluştur:** Tüm Denetim Masası ayarlarına tek bir yerden erişmenizi sağlayan özel "God Mode" (Tanrı Modu) kısayol klasörünü masaüstünüzde oluşturur.

#### 5. Güç Planı ve Yedekleme
* **Güç Planını Ayarla:** "Dengeli" ve "Yüksek Performans" güç planları arasında anında geçiş yapın.
* **Hızlı Yedekleme (Robocopy):** Bir kaynak klasörü bir hedefe yansıtmak için bir `robocopy` komutu çalıştırır. **(Yapılandırma gerektirir)**.

### ⚙️ Nasıl Kullanılır

1.  `.bat` dosyasını indirin (örn: `Gelis_AracKutusu.bat`).
2.  (İsteğe bağlı ancak önerilir) Komutları gözden geçirmek için dosyayı Notepad++ veya VS Code gibi bir metin düzenleyicide açın.
3.  **ÇOK ÖNEMLİ:** Dosyaya sağ tıklayın ve **"Yönetici olarak çalıştır"** seçeneğini seçin.
4.  Bir menü görünecektir. Seçiminize karşılık gelen sayıyı yazın ve **Enter**'a basın.
5.  Her bir alt menü veya araç için ekrandaki komutları izleyin.

### 🔧 Yapılandırma (Yedekleme İçin)

**Hızlı Yedekleme** özelliğini (Seçenek 5 -> 3) kullanmadan önce **mutlaka** yapılandırmanız gerekir:

1.  `.bat` dosyasına sağ tıklayın ve "Düzenle" seçeneğini seçin (veya bir metin düzenleyicide açın).
2.  Dosyada `:YEDEKLEME` bölümüne gidin.
3.  `KAYNAK` (SOURCE) ve `HEDEF` (DESTINATION) değişkenlerini değiştirin:

    ```batch
    :: --------- AYARLAR ---------
    :: BU IKI SATIRI KENDINIZE GORE DUZENLEYIN:
    set KAYNAK="C:\Users\KULLANICI_ADINIZ\Documents"
    set HEDEF="D:\Yedeklerim\Belgeler"
    :: ---------------------------
    ```

4.  Dosyayı kaydedin ve çıkın.

### 📜 Lisans

Bu proje MIT Lisansı altında lisanslanmıştır.
