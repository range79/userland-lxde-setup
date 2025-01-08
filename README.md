# UserLAnd LXDE Kurulum Script'i

Bu script, **UserLAnd** kullanıcılarının Android cihazlarda **LXDE** masaüstü ortamını kurmalarına yardımcı olur.

## 1. Sistem Güncellemesi

**Ubuntu:**
```bash
sudo apt update && sudo apt upgrade
```
**Arch:**
```bash
 sudo pacman -Syu --noconfirm
```

## 2. Git Kurulumu

**Ubuntu:**
```bash
sudo apt install git
```

**Arch Linux:**
```bash
sudo pacman -S git
```

## 3. Script'in İndirilmesi

```bash
git clone https://github.com/range79/userland-lxde-setup.git
```

## 4. Script'in Çalıştırılması

1. **Script'in Bulunduğu Dizine Gidin:**
    ```bash
    cd userland-lxde-setup
    ```
2. **Script'i Başlatın:**
    ```bash
    bash deinstall.sh
    ```

## 5. X Server Yapılandırması

- **UserLAnd** uygulamasını açın ve **XSDL** uygulamasını yükleyin.
- **XSDL**'yi başlatın ve port numarasını not alın.
- Script çalıştırıldığında sizden XSDL port numarasını girmenizi isteyecektir. Port numarasını doğru bir şekilde girin.

## Gereksinimler

- **UserLAnd** uygulaması yüklü ve çalışır durumda olmalıdır.
- **XSDL** uygulaması yüklü ve çalışır durumda olmalıdır.
- **sudo** yetkileri gereklidir.

## Sürüm Değişiklik Günlüğü

### 1.0.0-test
- Script'in temel işlevselliğini test etmek amacıyla yayımlandı.

### 1.0.1
- Hatalar giderildi ve kurulum işlemleri optimize edildi.

### 1.1.0
- XSDL indirilip indirilmediğini kontrol eden bir fonksiyon eklendi.

### 1.2.0
- Script her çalıştırıldığında otomatik güncellemenin önüne geçildi.
- Gereksiz port sorgusu kaldırıldı.
- Daha önce kurulmuş sistemlerde gereksiz tekrar kurulum yapılmasının önüne geçildi.

### 2.0.0
- Fonksiyonlar dosyalara bölündü, böylece yönetim kolaylaştırıldı.
- **Arch Linux** desteği eklendi.

## İletişim

- **GitHub:** [@range79](https://github.com/range79)
- **Telegram:** [@Onlyrange](https://t.me/Onlyrange)

## Lisans

Bu script, [MIT Lisansı](https://opensource.org/licenses/MIT) altında lisanslanmıştır.

