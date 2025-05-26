import 'package:kali_on_debian/exports.dart';

void main() async {
  final isReady = await setup();
  if (!isReady) return;
  printTitle();

  await selectKaliTools80211ToInstall();
}

//TODO: add all remaining kali-tools (only hacking tools, no desktop/driver/etc)
//TODO: add menu to switch between category
//TODO: add install all, remove all and help from main menu
//TODO: implent ~ to mark tools to remove
//TODO: implement apt: flatpak: kali: to select the origin to install
//TODO: implement install by APT, FLATPAK, KALI-REPO
//TODO: implement remove by APT, FLATPAK, KALI-REPO
//TODO: implement detect packages installed and show them
