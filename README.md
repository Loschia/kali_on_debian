# kali_on_debian

> A safe and modular way to install Kali Linux tools on any Debian-based system.
> 
> **Easily install Kali Linux hacking tools on Debian-based systems without breaking your setup.**

![GitHub last commit](https://img.shields.io/github/last-commit/Loschia/kali_on_debian)
![License](https://img.shields.io/github/license/Loschia/kali_on_debian)

---

## 🚀 Overview

`kali_on_debian` is a command-line tool that allows you to install Kali Linux hacking tools **selectively** on any Debian-based distribution (Debian, Ubuntu, Pop!_OS, etc.), **without replacing your desktop environment or altering your core system**.

It provides an **interactive terminal UI** that helps you choose what to install, where to install it from (APT, Flatpak, or Kali’s official repositories), and manages everything for you with minimal risk.

You can use the latest compiled version directly (`kali_on_debian.sh`) or run the Dart source code yourself.

---

## ⚙️ How to Install

### 🔁 Option 1 — Use Precompiled Script

1. Download the `kali_on_debian.sh` file from the root of the repository or [latest release](https://github.com/Loschia/kali_on_debian/releases).
   ```bash
   wget https://raw.githubusercontent.com/Loschia/kali_on_debian/main/kali_on_debian.sh
   ```
3. Make it executable:
   ```bash
   chmod +x kali_on_debian.sh
   ```
4. Run with sudo:
   ```bash
   sudo ./kali_on_debian.sh
   ```
✅ This is the easiest and recommended way. The .sh file is always generated from the latest commit.


### 🧬 Option 2: Clone the repository and run it manually
```bash
git clone https://github.com/Loschia/kali_on_debian.git
cd kali_on_debian
sudo dart run bin/main.dart
```

> **Important:** The script must be executed with `sudo` or as `root`. It requires full access to install packages and modify sources.

---

## ✅ Features
✅ Interactive selection of tools by category (e.g. 802.11, Bluetooth, etc.)

✅ Supports APT, Flatpak, and Kali official packages

✅ Non-invasive: does not replace or alter your existing desktop environment

✅ CLI interface with help, batch selection, and tool descriptions

✅ Each .sh release is a compiled version of the latest commit

✅ Clean, isolated installation process

✅ Written in Dart for clarity and modularity

---

## 🔒 Disclaimer
> This project is for **educational and legitimate penetration testing purposes** only.

You are responsible for your own actions. The author is **not liable for any damage or misuse**. Use this software ethically and responsibly.

## 📦 Package Sources
| Source        | Description                              |
| ------------- | ---------------------------------------- |
| **APT**       | Official Debian repositories (required)  |
| **Flatpak**   | Installed by the script if not available |
| **Kali repo** | Installed by the script if not available |

**APT is mandatory and must be functional for the script to work correctly. Flatpak and the Kali repository are added with this script. APT, Flatpak and Kali repo are used only if the user explicitly selects tools from those sources during the interactive session**

---

## 📌 Roadmap / Current Status
The project is under active development. Here's what's currently implemented:

### ✔ Completed Features
- Interactive CLI for selecting `kali-tools-802-11`, `kali-tools-bluetooth`, `kali-tools-crypto-stego`, `kali-tools-database`, `kali-tools-detect`, `kali-tools-exploitation` and `kali-tools-forensics`
- Package mapping, validation, and menu interface
- Support for selection via ranges, help screen, “select all”, and “remove all”
- Script compilation into `kali_on_debian.sh`
- Interactive CLI for:
  - `kali-tools-802-11` ✅ (fully implemented)
  - `kali-tools-bluetooth` ⚠️ (logic ready, not visible yet)
  - `kali-tools-crypto-stego` ⚠️ (logic ready, not visible yet)
  - `kali-tools-database` ⚠️ (logic ready, not visible yet)
  - `kali-tools-detect` ⚠️ (logic ready, not visible yet)
  - `kali-tools-exploitation` ⚠️ (logic ready, not visible yet)
  - `kali-tools-forensics` ⚠️ (logic ready, not visible yet)

### 🔧 In Progress
- APT tool installation support
- Flatpak tool installation support
- Kali tool installation support
- More tool categories (web, exploitation, recon, etc.)
- Persistent configuration and saved selections

> Every `kali_on_debian.sh` you download is automatically compiled from the latest commit, so you can use it directly without needing to compile it yourself.

---

## 💡 Contribution & Feedback
Contributions, feedback, and issues are welcome!
- Found a bug? Open an issue
- Want to contribute? Fork the repo and submit a PR
- Suggestions for improvement? Open a discussion

---

## 🧪 Tested On
- ✅ Debian 12
- ✅ Ubuntu 22.04
- ⏳ More distributions coming soon...

---

## 📜 License
This project is licensed under the MIT License.

---

Made with 🧠 and ☕ by [@Loschia](https://github.com/Loschia)