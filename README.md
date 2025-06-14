# kali_on_debian

> A safe and modular way to install Kali Linux tools on any Debian-based system.
> 
> **Easily install Kali Linux hacking tools on Debian-based systems without breaking your setup.**

![Version](https://img.shields.io/github/v/tag/Loschia/kali_on_debian?label=version&sort=semver)
![GitHub last commit](https://img.shields.io/github/last-commit/Loschia/kali_on_debian)
![License](https://img.shields.io/github/license/Loschia/kali_on_debian)

---

## 🚀 Overview

`kali_on_debian` is a command-line tool that allows you to install Kali Linux hacking tools **selectively** on any Debian-based distribution (Debian, Ubuntu, etc.), **without replacing your desktop environment or altering your core system**.

It provides an **interactive terminal UI** that helps you choose what to install, where to install it from (APT or Kali’s official repositories), and manages everything for you with minimal risk.

You can use the latest compiled version directly (`kali_on_debian.sh`) or run the Dart source code yourself.

**Note:**
Some packages appear in multiple groups, similar to how Kali Linux repositories are structured. Certain groups may seem small because they include other subgroups within them (for example, `kali-tools-wireless` contains `kali-tools-802-11`, `kali-tools-bluetooth`, `kali-tools-rfid`, and `kali-tools-sdr`). In such cases, I decided not to include the nested subgroups separately. Therefore, groups like wireless do not list their contained subgroups such as 802.11, bluetooth, and others.

This script clear your console. If you do not want to clear your console, open a new tab for this script.

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

✅ Supports APT and Kali official packages

✅ Non-invasive: does not replace or alter your existing desktop environment

✅ CLI interface with help, batch selection, and tool version from APT and/or Kali repo

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
| **Kali repo** | Installed by the script if not available |

**APT is mandatory and must be functional for the script to work correctly. Kali repository are added with this script. You can choose whether to install packages from Debian APT or Kali repositories, but only one source can be used per command input. If you want to mix sources, run separate commands.**

---

## 📌 Roadmap / Current Status
The project is under active development. Here's what's currently implemented:

### ✔ Completed Features
- Interactive CLI for selecting for all kali-tools category
- Package mapping, validation, and menu interface
- Support for selection via ranges, help screen, “select all”, and “remove all”
- Script compiled latest version: `kali_on_debian.sh`
- Interactive CLI for `kali-tools-*` ✅ (fully implemented)
- Option to choose installation via Debian or Kali packages ✅

### 🔧 In Progress
- Adding other group packages to implement all kali kacking tools

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
- ⏳ More distributions coming soon... (feel free to report compatibility!)

---

## 📜 License
This project is licensed under the MIT License.

---

Made with 🧠 and ☕ by [@Loschia](https://github.com/Loschia)