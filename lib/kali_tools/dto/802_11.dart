import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali 802.11-related tools and a selector to install them interactively.
///
/// The enum `KaliTool80211Enum` defines supported packages.
enum KaliTool80211Enum {
  aircrackNg,
  airgeddon,
  asleap,
  bully,
  cowpatty,
  eapmd5pass,
  fernWifiCracker,
  freeradiusWpe,
  hashcat,
  hostapdWpe,
  iw,
  kismet,
  macchanger,
  mdk3,
  mdk4,
  pixiewps,
  reaver,
  wifiHoney,
  wifite,
}

/// The map `_kaliTool80211Map` associates each enum with its corresponding package name.
Map<KaliTool80211Enum, String> _kaliTool80211Map = {
  KaliTool80211Enum.aircrackNg: 'aircrack-ng',
  KaliTool80211Enum.airgeddon: 'airgeddon',
  KaliTool80211Enum.asleap: 'asleap',
  KaliTool80211Enum.bully: 'bully',
  KaliTool80211Enum.cowpatty: 'cowpatty',
  KaliTool80211Enum.eapmd5pass: 'eapmd5pass',
  KaliTool80211Enum.fernWifiCracker: 'fern-wifi-cracker',
  KaliTool80211Enum.freeradiusWpe: 'freeradius-wpe',
  KaliTool80211Enum.hashcat: 'hashcat',
  KaliTool80211Enum.hostapdWpe: 'hostapd-wpe',
  KaliTool80211Enum.iw: 'iw',
  KaliTool80211Enum.kismet: 'kismet',
  KaliTool80211Enum.macchanger: 'macchanger',
  KaliTool80211Enum.mdk3: 'mdk3',
  KaliTool80211Enum.mdk4: 'mdk4',
  KaliTool80211Enum.pixiewps: 'pixiewps',
  KaliTool80211Enum.reaver: 'reaver',
  KaliTool80211Enum.wifiHoney: 'wifi-honey',
  KaliTool80211Enum.wifite: 'wifite',
};

/// The extension `KaliToolsWirelessEnumExt` exposes the resolved package name via the package getter.
extension KaliTool80211Ext on KaliTool80211Enum {
  String get package {
    switch (this) {
      default:
        return _kaliTool80211Map[this]!;
    }
  }
}

/// Call `selectKaliTools80211ToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-802-11` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliTools80211ToInstall() => selectToolsToInstall<KaliTool80211Enum>(
  groupName: 'kali-tools-802-11',
  values: KaliTool80211Enum.values,
  packageNameGetter: (e) => e.package,
);
