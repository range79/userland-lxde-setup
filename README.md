
[![Türkçe README'ye Gitmak İçin Tıkla](https://img.shields.io/badge/Readme-Türkçe-blue?style=for-the-badge&logo=markdown)](README-TR.md)

# UserLAnd LXDE Setup Script

This script helps **UserLAnd** users install the **LXDE** desktop environment on their Android devices.

### Features  
- Supports Arch Linux and Ubuntu  
- System update and basic package installation  
- Checks if XSDL app is installed  
- Language selection: Turkish and English  
- Modular and easy to manage structure  
- Prevents redundant installations on already configured systems

### Installation Steps

1. **System Update**  
Ubuntu:  
```bash
sudo apt update && sudo apt upgrade
````

Arch Linux:

```bash
sudo pacman -Syu --noconfirm
```

2. **Install Git**
   Ubuntu:

```bash
sudo apt install git
```

Arch Linux:

```bash
sudo pacman -S git
```

3. **Clone the Script**

```bash
git clone https://github.com/range79/userland-lxde-setup.git
```

4. **Run the Script**

```bash
cd userland-lxde-setup
bash deinstall.sh
```

5. **X Server Setup**

* Open UserLAnd app and install the XSDL app.
* Launch XSDL and note the port number.
* When running the script, you will be asked to enter this port number.

### Requirements

* UserLAnd app must be installed and running.
* XSDL app must be installed and running.
* Sudo privileges are required.

### Changelog

* 2.0.0: Modular structure, Arch Linux support, English language option added
* 1.2.0: Disabled auto updates, removed unnecessary port queries
* 1.1.0: Added XSDL installation check
* 1.0.1: Bug fixes and optimizations
* 1.0.0-test: Basic functionality tested and released

### Contact

* GitHub: [@range79](https://github.com/range79)
* Telegram: [@Onlyrange](https://t.me/Onlyrange)

### License

This script is licensed under the [MIT License](LICENSE).


