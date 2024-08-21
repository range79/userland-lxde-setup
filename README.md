# UserLAnd LXDE Kurulum Script'i

Bu script, UserLAnd kullanıcılarının Android cihazlarda LXDE masaüstü ortamını kurmalarına yardımcı olur.

## Kullanım

1. **Sisteminizi güncelleyiniz:**
    ```bash
    sudo apt update && sudo apt upgrade
    ```

2. **Git'i indirin:**
    ```bash
    sudo apt install git
    ```

3. **Script'i indirin:**
    ```bash
    git clone https://github.com/range79/userland-lxde-setup.git
    ```

4. **Script'in bulunduğu dizine gidin:**
    ```bash
    cd userland-lxde-setup
    ```

5. **Script'i çalıştırın:**
    ```bash
    bash lxde-setup.sh
    ```

6. **X Server'ı yapılandırın:**
    - UserLAnd uygulamasını açın ve `XSDL` uygulamasını yükleyin.
    - `XSDL`'yi başlatın ve port numarasını not alın.

7. **Port numarasını script'e girin:**
    - Script çalıştırıldığında sizden XSDL port numarasını girmenizi isteyecektir. Port numarasını doğru bir şekilde girin.

## Script Açıklaması

- **deinstall.sh**: LXDE masaüstü ortamının kurulumu için kullanılan ana script. X Server yapılandırması ve LXDE'nin başlatılması işlemlerini otomatikleştirir.

## Gereksinimler

- **Ubuntu** veya Ubuntu tabanlı bir dağıtım.
- **UserLAnd** uygulaması yüklü ve çalışır durumda.
- **XSDL** uygulaması yüklü ve çalışır durumda.
- **`sudo`** yetkileri.

## Sürüm Değişiklik Günlüğü

- **1.0.0-test** - Bu sürüm, script'in temel işlevselliğini test etmek amacıyla yayımlanmıştır. Kurulum ve başlatma işlemlerinin doğru çalışıp çalışmadığını kontrol etmek için kullanılmalıdır.

- **1.0.1** - Bu sürümde, hataları düzeltmeye çalıştım ve düzeltim bence.

- **1.1.0** - Bu sürümde, XSDL indirdiğinizi size sormak için fonksiyon yazdım.

## İletişim

- **GitHub:** [@range79](https://github.com/range79)
- **Telegram:** [@Onlyrange](https://t.me/Onlyrange)

## Lisans

Bu script [MIT Lisansı](https://opensource.org/licenses/MIT) altında lisanslanmıştır.
