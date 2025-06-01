import 'package:kali_on_debian/kali_tools/select_tools_to_install.dart';

enum KaliToolsSniffingSpoofingEnum {
  above,
  bettercap,
  darkstat,
  dnschef,
  driftnet,
  dsniff,
  ettercap_graphical_ettercap_text_only,
  ferret_sidejack,
  fiked,
  hamster_sidejack,
  hexinject,
  isr_evilgrade,
  macchanger,
  mitmproxy,
  netsniff_ng,
  rebind,
  responder,
  sniffjoke,
  sslsniff,
  sslsplit,
  tcpflow,
  tcpreplay,
  wifi_honey,
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
  KaliToolsSniffingSpoofingEnum.ettercap_graphical_ettercap_text_only:
      'ettercap-graphical | ettercap-text-only',
  KaliToolsSniffingSpoofingEnum.ferret_sidejack: 'ferret-sidejack',
  KaliToolsSniffingSpoofingEnum.fiked: 'fiked',
  KaliToolsSniffingSpoofingEnum.hamster_sidejack: 'hamster-sidejack',
  KaliToolsSniffingSpoofingEnum.hexinject: 'hexinject',
  KaliToolsSniffingSpoofingEnum.isr_evilgrade: 'isr-evilgrade',
  KaliToolsSniffingSpoofingEnum.macchanger: 'macchanger',
  KaliToolsSniffingSpoofingEnum.mitmproxy: 'mitmproxy',
  KaliToolsSniffingSpoofingEnum.netsniff_ng: 'netsniff-ng',
  KaliToolsSniffingSpoofingEnum.rebind: 'rebind',
  KaliToolsSniffingSpoofingEnum.responder: 'responder',
  KaliToolsSniffingSpoofingEnum.sniffjoke: 'sniffjoke',
  KaliToolsSniffingSpoofingEnum.sslsniff: 'sslsniff',
  KaliToolsSniffingSpoofingEnum.sslsplit: 'sslsplit',
  KaliToolsSniffingSpoofingEnum.tcpflow: 'tcpflow',
  KaliToolsSniffingSpoofingEnum.tcpreplay: 'tcpreplay',
  KaliToolsSniffingSpoofingEnum.wifi_honey: 'wifi-honey',
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

Future<ToolSelectionResult> selectKaliToolsSniffingSpoofingToInstall() =>
    selectToolsToInstall<KaliToolsSniffingSpoofingEnum>(
      groupName: 'kali-tools-sniffing-spoofing',
      values: KaliToolsSniffingSpoofingEnum.values,
      packageNameGetter: (e) => e.package,
    );
