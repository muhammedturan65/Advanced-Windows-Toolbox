# Advanced Windows Toolbox v10.0 (PowerShell GUI)

[English](#english) | [Türkçe](#türkçe)

---

<a name="english"></a>

## 🇬🇧 English

### Advanced Windows Toolbox v10.0 (PowerShell GUI)

A powerful, single-file, dual-language GUI application built in PowerShell for advanced Windows users, system administrators, and IT professionals. It consolidates a massive array of system cleanup, repair, privacy, and management tasks into one clean, easy-to-use, and installation-free interface.

This tool is inspired by the functionality of applications like *Windows Repair Toolbox* and *privacy.sexy*, but is implemented as a 100% native PowerShell script that leverages Windows Forms.

### 🎨 Screenshot



### 🚨 CRITICAL: HOW TO RUN (Must Read!) 🚨

This application requires **two files** to be in the **same folder** and **must be run as Administrator**. Follow these steps precisely to avoid errors (like character encoding or "Point" errors).

#### Step 1: Save the Main Script (`Toolbox_GUI_v10.ps1`)

1.  Copy the entire PowerShell (`.ps1`) code.
2.  Open **Notepad**.
3.  Paste the code.
4.  Go to **File > Save As...**
5.  Set "Save as type:" to **"All Files (\*.\*)"**.
6.  Set the "File name:" to `Toolbox_GUI_v10.ps1`.
7.  **THIS IS THE MOST IMPORTANT STEP:** Set "Encoding:" to **"UTF-8 with BOM"**. This is required for correct display of languages and icons (emoji).

    

8.  Click **Save**.

#### Step 2: Save the Launcher (`RUN_TOOLBOX.bat`)

1.  Open a **new** Notepad window.
2.  Copy and paste the `.bat` launcher code (the small 30-line code block).
3.  Go to **File > Save As...**
4.  Set "Save as type:" to **"All Files (\*.\*)"**.
5.  Set the "File name:" to `RUN_TOOLBOX.bat`.
6.  Save this file in the **exact same folder** as `Toolbox_GUI_v10.ps1`.

#### Step 3: Run the Application!

You are now ready. To start the toolbox:

* **DO NOT** right-click the `.ps1` file.
* **DO** double-click the `RUN_TOOLBOX.bat` file.

This launcher will automatically:
1.  Request Administrator (UAC) privileges.
2.  Force PowerShell to read the `.ps1` file using the correct UTF-8 encoding.
3.  Launch the GUI application.

### ⚠️ WARNINGS ⚠️

* **Administrator Required:** The tool is designed to run as Administrator. Many functions (SFC, DISM, Registry Tweaks, Service Management) will fail without it. The `.bat` launcher handles this for you.
* **Use At Your Own Risk:** This is a powerful tool for professionals. Actions like **Debloating** (removing core apps) and modifying **Privacy Settings** are not easily reversible.
* **Create a Restore Point:** It is *highly recommended* to use **"Category 2 > Create System Restore Point"** before performing any aggressive actions like debloating or cleaning.

### ✨ Features (v10.0)

The interface is organized into logical groups for ease of use.

#### 1. Onarım ve Bakım (Repair & Maintenance)
* **🧹 Comprehensive Cleanup:** The "Ultra Cleanup" script. Clears all system/user temp files, prefetch, browser caches (Chrome/Edge/Firefox), Windows Update cache, event logs, and more.
* **🩺 System Health & Repair:**
    * Create System Restore Point.
    * Run `SFC /scannow` and `DISM /RestoreHealth` (in new windows, to prevent GUI freezing).
    * Start a Windows Defender quick scan.
    * Reset a stuck print spooler.
    * Launch System Restore & Reliability Monitor.
* **💾 Disk Tools:**
    * Launch graphical Disk Cleanup, Disk Management, and Drive Optimizer (Defrag).
    * Schedule `CHKDSK` on the next reboot.

#### 2. Ayarlar ve Güvenlik (Settings & Security)
* **🛠️ System Tools & Tweaks:**
    * Manage Services (SysMain, Windows Update, Fax).
    * Manage Power Plans (Balanced/High Performance).
    * Manage Hibernation (On/Off).
    * Manage Windows Features (Install .NET 3.5 / Hyper-V).
    * Reset Windows Search Index & Rebuild Icon Cache.
    * Show/Hide Hidden Files and File Extensions.
    * Launch Task Manager, Event Viewer, and create "God Mode" folder.
* **🔒 Privacy & Debloating:**
    * **Privacy:** Disable Telemetry services and Advertising ID.
    * **Debloat:** A checklist to permanently remove built-in bloatware like Xbox, Cortana, Phone Link, Mixed Reality, Solitaire, and more.
* **🌐 Network Tools:**
    * Reset the entire network stack (DNS, IP, Winsock).
    * Hard-reset network adapters (reinstalls drivers).
    * Show all saved Wi-Fi passwords in the log.
    * Block ads & trackers system-wide by appending the StevenBlack `hosts` file.

#### 3. Uygulamalar ve Raporlar (Tools & Reporting)
* **📦 Software Management:**
    * **Install:** A `winget` installer for common apps (7-Zip, Notepad++, WizTree, etc.).
    * **Uninstall:** A `WMIC`-based uninstaller.
    * **Update:** Run `winget upgrade --all` to update all apps.
    * **Kill Task:** A simple prompt to force-kill a running process.
* **📊 Reporting & Info:**
    * Get quick system info (PC Name, User, IP) in the log.
    * Generate and open full `systeminfo`, `battery`, `startup program`, and `installed program` reports on your desktop.
* **🗂️ Backup (Robocopy):**
    * A simple GUI for `Robocopy /MIR` to mirror a source folder (like Documents) to a backup destination.

### 📜 License

This project is licensed under the MIT License.

---

<a name="türkçe"></a>

## 🇹🇷 Türkçe

### Gelişmiş Windows Araç Kutusu v10.0 (PowerShell GUI)

Gelişmiş Windows kullanıcıları, sistem yöneticileri ve BT profesyonelleri için PowerShell ile oluşturulmuş, güçlü, tek dosyalı, çift dilli bir GUI uygulamasıdır. Sistem temizliği, onarımı, gizlilik ve yönetim görevlerinin çok büyük bir kısmını tek bir temiz, kullanımı kolay ve kurulum gerektirmeyen arayüzde birleştirir.

Bu araç, *Windows Repair Toolbox* ve *privacy.sexy* gibi uygulamaların işlevselliğinden esinlenmiştir, ancak Windows Forms kullanan %100 yerel bir PowerShell betiği olarak uygulanmıştır.

### 🎨 Ekran Görüntüsü

[Gelişmiş Windows Araç Kutusu v10.0 karanlık mod GUI]

### 🚨 ÇOK ÖNEMLİ: NASIL ÇALIŞTIRILIR (Mutlaka Okuyun!) 🚨

Bu uygulamanın çalışması için **aynı klasörde iki dosya** bulunmalı ve **Yönetici olarak** çalıştırılmalıdır. Hatalardan (karakter kodlaması veya "Point" hataları gibi) kaçınmak için bu adımları tam olarak izleyin.

#### Adım 1: Ana Betiği Kaydedin (`Toolbox_GUI_v10.ps1`)

1.  PowerShell (`.ps1`) kodunun tamamını kopyalayın.
2.  **Not Defteri**'ni (Notepad) açın.
3.  Kodu yapıştırın.
4.  **Dosya > Farklı Kaydet...** menüsüne gidin.
5.  "Kayıt türü:" seçeneğini **"Tüm Dosyalar (\*.\*)"** olarak değiştirin.
6.  "Dosya adı:" kısmına `Toolbox_GUI_v10.ps1` yazın.
7.  **EN ÖNEMLİ ADIM:** "Kodlama:" açılır listesinden **"BOM ile UTF-8"** (veya "UTF-8 with BOM") seçeneğini seçin. Bu, dillerin ve simgelerin (emoji) doğru görüntülenmesi için gereklidir.
8.  **Kaydet**'e tıklayın.

#### Adım 2: Başlatıcıyı Kaydedin (`RUN_TOOLBOX.bat`)

1.  **Yeni** bir Not Defteri penceresi açın.
2.  `.bat` başlatıcı kodunu (küçük, 30 satırlık kod bloğu) kopyalayıp yapıştırın.
3.  **Dosya > Farklı Kaydet...** menüsüne gidin.
4.  "Kayıt türü:" seçeneğini **"Tüm Dosyalar (\*.\*)"** olarak değiştirin.
5.  "Dosya adı:" kısmına `RUN_TOOLBOX.bat` yazın.
6.  Bu dosyayı, `Toolbox_GUI_v10.ps1` dosyasının bulunduğu **aynı klasöre** kaydedin.

#### Adım 3: Uygulamayı Çalıştırın!

Artık hazırsınız. Araç kutusunu başlatmak için:

* `.ps1` dosyasına sağ **tıklamayın**.
* `RUN_TOOLBOX.bat` dosyasına **çift tıklayın**.

Bu başlatıcı otomatik olarak:
1.  Yönetici (UAC) ayrıcalıkları isteyecektir.
2.  PowerShell'i `.ps1` dosyasını doğru UTF-8 kodlamasıyla okumaya zorlayacaktır.
3.  GUI uygulamasını başlatacaktır.

### ⚠️ UYARILAR ⚠️

* **Yönetici Gerekli:** Araç, Yönetici olarak çalışmak üzere tasarlanmıştır. Birçok işlev (SFC, DISM, Kayıt Defteri Ayarları, Hizmet Yönetimi) bu olmadan başarısız olur. `.bat` başlatıcısı bunu sizin için halleder.
* **Risk Size Aittir:** Bu, profesyoneller için güçlü bir araçtır. **Debloat** (çekirdek uygulamaları kaldırma) ve **Gizlilik Ayarları** gibi eylemler kolayca geri alınamaz.
* **Geri Yükleme Noktası Oluşturun:** Debloat veya temizlik gibi agresif eylemleri gerçekleştirmeden önce **"Kategori 2 > Sistem Geri Yükleme Noktası Oluştur"** özelliğini kullanmanız *şiddetle* tavsiye edilir.

### ✨ Özellikler (v10.0)

Arayüz, kullanım kolaylığı için mantıksal gruplara ayrılmıştır.

#### 1. Onarım ve Bakım
* **🧹 Kapsamlı Sistem Temizliği:** "Ultra Temizlik" betiği. Tüm sistem/kullanıcı geçici dosyalarını, prefetch'i, tarayıcı önbelleklerini (Chrome/Edge/Firefox), Windows Update önbelleğini, olay günlüklerini ve daha fazlasını temizler.
* **🩺 Sistem Sağlığı ve Onarım:**
    * Sistem Geri Yükleme Noktası oluşturun.
    * `SFC /scannow` ve `DISM /RestoreHealth` çalıştırın (GUI'nin donmasını önlemek için yeni pencerelerde).
    * Windows Defender hızlı taraması başlatın.
    * Takılı kalmış yazdırma biriktiricisini sıfırlayın.
    * Sistem Geri Yükleme ve Güvenilirlik İzleyicisi'ni başlatın.
* **💾 Disk Araçları:**
    * Grafik arayüzlü Disk Temizleme, Disk Yönetimi ve Sürücü İyileştirici'yi (Defrag) başlatın.
    * Bir sonraki yeniden başlatma için `CHKDSK` planlayın.

#### 2. Ayarlar ve Güvenlik
* **🛠️ Sistem Araçları ve İnce Ayarlar:**
    * Hizmetleri Yönet (SysMain, Windows Update, Faks).
    * Güç Planlarını Yönet (Dengeli/Yüksek Performans).
    * Hazırda Bekleme Modunu Yönet (Aç/Kapat).
    * Windows Özelliklerini Yönet (Install .NET 3.5 / Hyper-V).
    * Windows Arama Dizinini Sıfırla ve Simge Önbelleğini Yeniden Oluştur.
    * Gizli Dosyaları ve Dosya Uzantılarını Göster/Gizle.
    * Görev Yöneticisi, Olay Görüntüleyicisi'ni başlatın ve "God Mode" klasörü oluşturun.
* **🔒 Gizlilik ve Debloat:**
    * **Gizlilik:** Telemetri hizmetlerini ve Reklam Kimliğini devre dışı bırakın.
    * **Debloat:** Xbox, Cortana, Telefon Bağlantısı, Karma Gerçeklik, Solitaire ve daha fazlası gibi gömülü bloatware'leri kalıcı olarak kaldırmak için bir kontrol listesi.
* **🌐 Ağ Araçları:**
    * Tüm ağ yığınını sıfırlayın (DNS, IP, Winsock).
    * Ağ bağdaştırıcılarını sert sıfırlayın (sürücüleri yeniden yükler).
    * Kaydedilen tüm Wi-Fi şifrelerini günlükte gösterin.
    * StevenBlack `hosts` dosyasını ekleyerek sistem genelinde reklamları ve izleyicileri engelleyin.

#### 3. Uygulamalar ve Raporlar
* **📦 Yazılım Yönetimi:**
    * **Kur:** Yaygın uygulamalar (7-Zip, Notepad++, WizTree, vb.) için bir `winget` yükleyici.
    * **Kaldır:** `WMIC` tabanlı bir program kaldırıcı.
    * **Güncelle:** Tüm uygulamalarınızı güncellemek için `winget upgrade --all` komutunu çalıştırın.
    * **Sonlandır:** Çalışan bir işlemi adına göre zorla sonlandırmak için basit bir istem.
* **📊 Raporlama ve Bilgi:**
    * Günlük panelinde hızlı sistem bilgisi (PC Adı, Kullanıcı, IP) alın.
    * Masaüstünüzde tam `systeminfo`, `pil`, `başlangıç programı` ve `yüklü program` raporları oluşturun ve açın.
* **🗂️ Yedekleme (Robocopy):**
    * Bir kaynak klasörü (Belgeler gibi) bir yedek hedefe yansıtmak (mirror) için basit bir `Robocopy /MIR` arayüzü.

### 📜 Lisans

Bu proje MIT Lisansı altında lisanslanmıştır.
