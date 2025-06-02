import 'package:kali_on_debian/services/select_tools_to_install.dart';

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

extension KaliTool80211Ext on KaliTool80211Enum {
  String get package {
    switch (this) {
      default:
        return _kaliTool80211Map[this]!;
    }
  }
}

Future<void> selectKaliTools80211ToInstall() => selectToolsToInstall<KaliTool80211Enum>(
  groupName: 'kali-tools-802-11',
  values: KaliTool80211Enum.values,
  packageNameGetter: (e) => e.package,
);
