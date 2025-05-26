import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliTool80211Enum {
  aircrack_ng,
  airgeddon,
  asleap,
  bully,
  cowpatty,
  eapmd5pass,
  fern_wifi_cracker,
  freeradius_wpe,
  hashcat,
  hostapd_wpe,
  iw,
  kismet,
  macchanger,
  mdk3,
  mdk4,
  pixiewps,
  reaver,
  wifi_honey,
  wifite,
}

Map<KaliTool80211Enum, String> _kaliTool80211Map = {
  KaliTool80211Enum.aircrack_ng: 'aircrack-ng',
  KaliTool80211Enum.airgeddon: 'airgeddon',
  KaliTool80211Enum.asleap: 'asleap',
  KaliTool80211Enum.bully: 'bully',
  KaliTool80211Enum.cowpatty: 'cowpatty',
  KaliTool80211Enum.eapmd5pass: 'eapmd5pass',
  KaliTool80211Enum.fern_wifi_cracker: 'fern-wifi-cracker',
  KaliTool80211Enum.freeradius_wpe: 'freeradius-wpe',
  KaliTool80211Enum.hashcat: 'hashcat',
  KaliTool80211Enum.hostapd_wpe: 'hostapd-wpe',
  KaliTool80211Enum.iw: 'iw',
  KaliTool80211Enum.kismet: 'kismet',
  KaliTool80211Enum.macchanger: 'macchanger',
  KaliTool80211Enum.mdk3: 'mdk3',
  KaliTool80211Enum.mdk4: 'mdk4',
  KaliTool80211Enum.pixiewps: 'pixiewps',
  KaliTool80211Enum.reaver: 'reaver',
  KaliTool80211Enum.wifi_honey: 'wifi-honey',
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

Future<ToolSelectionResult> selectKaliTools80211ToInstall() =>
    selectToolsToInstall<KaliTool80211Enum>(
      groupName: 'kali-tools-802-11',
      values: KaliTool80211Enum.values,
      packageNameGetter: (e) => e.package,
    );
