import 'package:kali_on_debian/services/select_tools_to_install.dart';

/// Provides a predefined list of Kali sniffing-spoofing-related tools and a selector to install them interactively.
///
/// The enum `KaliToolsSniffingSpoofingEnum` defines supported packages.
enum KaliToolsSniffingSpoofingEnum {
  above,
  bettercap,
  darkstat,
  dnschef,
  driftnet,
  dsniff,
  ettercapGraphical,
  ettercapTextOnly,
  ferretSidejack,
  fiked,
  hamsterSidejack,
  hexinject,
  isrEvilgrade,
  macchanger,
  mitmproxy,
  netsniffNg,
  rebind,
  responder,
  sniffjoke,
  sslsniff,
  sslsplit,
  tcpflow,
  tcpreplay,
  wifiHoney,
  wireshark,
  yersinia,
}

/// The map `_kaliToolsSniffingSpoofingMap` associates each enum with its corresponding package name.
Map<KaliToolsSniffingSpoofingEnum, String> _kaliToolsSniffingSpoofingMap = {
  KaliToolsSniffingSpoofingEnum.above: 'above',
  KaliToolsSniffingSpoofingEnum.bettercap: 'bettercap',
  KaliToolsSniffingSpoofingEnum.darkstat: 'darkstat',
  KaliToolsSniffingSpoofingEnum.dnschef: 'dnschef',
  KaliToolsSniffingSpoofingEnum.driftnet: 'driftnet',
  KaliToolsSniffingSpoofingEnum.dsniff: 'dsniff',
  KaliToolsSniffingSpoofingEnum.ettercapGraphical: 'ettercap-graphical',
  KaliToolsSniffingSpoofingEnum.ettercapTextOnly: 'ettercap-text-only',
  KaliToolsSniffingSpoofingEnum.ferretSidejack: 'ferret-sidejack',
  KaliToolsSniffingSpoofingEnum.fiked: 'fiked',
  KaliToolsSniffingSpoofingEnum.hamsterSidejack: 'hamster-sidejack',
  KaliToolsSniffingSpoofingEnum.hexinject: 'hexinject',
  KaliToolsSniffingSpoofingEnum.isrEvilgrade: 'isr-evilgrade',
  KaliToolsSniffingSpoofingEnum.macchanger: 'macchanger',
  KaliToolsSniffingSpoofingEnum.mitmproxy: 'mitmproxy',
  KaliToolsSniffingSpoofingEnum.netsniffNg: 'netsniff-ng',
  KaliToolsSniffingSpoofingEnum.rebind: 'rebind',
  KaliToolsSniffingSpoofingEnum.responder: 'responder',
  KaliToolsSniffingSpoofingEnum.sniffjoke: 'sniffjoke',
  KaliToolsSniffingSpoofingEnum.sslsniff: 'sslsniff',
  KaliToolsSniffingSpoofingEnum.sslsplit: 'sslsplit',
  KaliToolsSniffingSpoofingEnum.tcpflow: 'tcpflow',
  KaliToolsSniffingSpoofingEnum.tcpreplay: 'tcpreplay',
  KaliToolsSniffingSpoofingEnum.wifiHoney: 'wifi-honey',
  KaliToolsSniffingSpoofingEnum.wireshark: 'wireshark',
  KaliToolsSniffingSpoofingEnum.yersinia: 'yersinia',
};

/// The extension `KaliToolsSniffingSpoofingEnumExt` exposes the resolved package name via the package getter.
extension KaliToolsSniffingSpoofingEnumExt on KaliToolsSniffingSpoofingEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsSniffingSpoofingMap[this]!;
    }
  }
}

/// Call `selectKaliToolsSniffingSpoofingToInstall()` to prompt the user to select one or more tools to install from the `kali-tools-sniffing-spoofing` group. Uses `selectToolsToInstall()` with enum values and package names.
Future<void> selectKaliToolsSniffingSpoofingToInstall() =>
    selectToolsToInstall<KaliToolsSniffingSpoofingEnum>(
      groupName: 'kali-tools-sniffing-spoofing',
      values: KaliToolsSniffingSpoofingEnum.values,
      packageNameGetter: (e) => e.package,
    );
