# disPic_project1
---
📌 **Kodun Amacı Nedir?**  
Bu kod, **EasyPIC Fusion v7** kartında **dsPIC33EP512MU810** mikrodenetleyicisinin PORTG'sine bağlı LED'leri sırayla yakıp söndürmeyi sağlar.

🔹 **Tüm LED'ler sırayla yanar.**  
🔹 **Kısa bir süre tamamı açık kalır.**  
🔹 **LED'ler sırayla söner.**  
🔹 **Bu döngü sürekli tekrar eder.**  

---

### Kullanılan Ayarlar Tablosu  

| **Kategori**           | **Ayar**                                      | **Açıklama** |
|------------------------|----------------------------------------------|--------------|
| **Oscillator Ayarları** | Primary Oscillator Mode | XT Crystal Oscillator Mode seçili, uygun. |
|                        | PLL Lock Wait | Etkin, doğru tercih. |
|                        | Clock Switching Modes | "Both Clock Switching and Fail-safe Clock Monitor are disabled". Saat kaynağı değişmeyecekse uygun, güvenlik için Fail-safe açılabilir. |
|                        | **Sistem Saat Frekansı** | **140 MHz** olarak ayarlanmış. Yüksek performans için uygun. |
| **Watchdog Timer**     | WDT (Watchdog Timer) | Devre dışı (disabled). Kilitlenmeleri önlemek için açılabilir. |
| **JTAG ve Debug**      | JTAG | Devre dışı (disabled), gereksiz yer tüketimini önler. |
|                        | ICD Communication Channel | PGEC1 ve PGED1 olarak ayarlanmış, EasyPIC Fusion v7 için uygun. |

