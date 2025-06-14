
[![Go to English README](https://img.shields.io/badge/Readme-English-blue?style=for-the-badge&logo=markdown)](README.md)

# UserLAnd LXDE Kurulum Script

Bu script, **UserLAnd** kullanıcılarının Android cihazlarında **LXDE** masaüstü ortamını kurmalarına yardımcı olur.

### Özellikler
- Arch Linux ve Ubuntu desteği  
- Sistem güncelleme ve temel paket kurulumu  
- XSDL uygulamasının kurulu olup olmadığını kontrol eder  
- Türkçe ve İngilizce dil seçeneği  
- Modüler ve kolay yönetilebilir yapı  
- Daha önce kurulmuş sistemlerde gereksiz tekrar kurulum önlenir

### Kurulum Adımları

1. **Sistem Güncellemesi**  
Ubuntu:  
```bash
sudo apt update && sudo apt upgrade
````

Arch Linux:

```bash
sudo pacman -Syu --noconfirm
```

2. **Git Kurulumu**
   Ubuntu:

```bash
sudo apt install git
```

Arch Linux:

```bash
sudo pacman -S git
```

3. **Script'in İndirilmesi**

```bash
git clone https://github.com/range79/userland-lxde-setup.git
```

4. **Script'in Çalıştırılması**

```bash
cd userland-lxde-setup
bash deinstall.sh
```

5. **X Server Yapılandırması**

* UserLAnd uygulamasını açın ve XSDL uygulamasını yükleyin.
* XSDL’yi başlatın ve port numarasını not edin.
* Script çalışırken sizden bu port numarasını girmeniz istenecektir.

### Gereksinimler

* UserLAnd uygulaması yüklü ve çalışıyor olmalıdır.
* XSDL uygulaması yüklü ve çalışıyor olmalıdır.
* Sudo yetkilerine sahip olunmalıdır.

### Sürüm Notları
* 1.0.0-test: Temel fonksiyonlar test edildi ve yayınlandı
* 1.0.1: Hatalar giderildi, optimizasyon yapıldı
* 1.1.0: XSDL uygulaması kontrolü eklendi
* 1.2.0: Otomatik güncellemeler kapatıldı, gereksiz port sorguları kaldırıldı
* 2.0.0: Modüler yapı ve Arch Linux desteği eklendi, İngilizce dil seçeneği eklendi

### İletişim

* GitHub: [@range79](https://github.com/range79)
* Telegram: [@Onlyrange](https://t.me/Onlyrange)

### Lisans

Bu script [MIT Lisansı](LICENSE) ile lisanslanmıştır.

