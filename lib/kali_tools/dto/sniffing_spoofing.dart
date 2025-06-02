import 'package:kali_on_debian/services/select_tools_to_install.dart';

enum KaliToolsSniffingSpoofingEnum {
  above,
  bettercap,
  darkstat,
  dnschef,
  driftnet,
  dsniff,
  ettercapGraphicalEttercapTextOnly,
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

Map<KaliToolsSniffingSpoofingEnum, String> _kaliToolsSniffingSpoofingMap = {
  KaliToolsSniffingSpoofingEnum.above: 'above',
  KaliToolsSniffingSpoofingEnum.bettercap: 'bettercap',
  KaliToolsSniffingSpoofingEnum.darkstat: 'darkstat',
  KaliToolsSniffingSpoofingEnum.dnschef: 'dnschef',
  KaliToolsSniffingSpoofingEnum.driftnet: 'driftnet',
  KaliToolsSniffingSpoofingEnum.dsniff: 'dsniff',
  KaliToolsSniffingSpoofingEnum.ettercapGraphicalEttercapTextOnly:
      'ettercap-graphical | ettercap-text-only',
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

extension KaliToolsSniffingSpoofingEnumExt on KaliToolsSniffingSpoofingEnum {
  String get package {
    switch (this) {
      default:
        return _kaliToolsSniffingSpoofingMap[this]!;
    }
  }
}

Future<void> selectKaliToolsSniffingSpoofingToInstall() =>
    selectToolsToInstall<KaliToolsSniffingSpoofingEnum>(
      groupName: 'kali-tools-sniffing-spoofing',
      values: KaliToolsSniffingSpoofingEnum.values,
      packageNameGetter: (e) => e.package,
    );
